uint64_t sub_252CEAF6C(uint64_t result, uint64_t *a2)
{
  v28 = result;
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 136);
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      memcpy(__dst, v6 - 104, 0x1F8uLL);
      v8 = *(v6 - 56);
      v52 = *(v6 - 72);
      v53 = v8;
      v9 = *(v6 - 24);
      v54 = *(v6 - 40);
      v55 = v9;
      v10 = *(v6 - 88);
      v50 = *(v6 - 104);
      v51 = v10;
      v11 = __dst[24];
      v12 = __dst[12];
      v13 = *v6;
      v45 = v6[1];
      v44 = v13;
      v14 = v6[2];
      v15 = v6[3];
      v16 = v6[4];
      v49 = *(v6 + 10);
      v48 = v16;
      v47 = v15;
      v46 = v14;
      memcpy(__src, v6 + 6, sizeof(__src));
      if (*(__dst[24] + 16))
      {
        sub_2529353AC(__dst, v42);
        sub_2529353AC(__dst, v42);
      }

      else
      {
        sub_2529353AC(__dst, v42);
        sub_2529353AC(__dst, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2529F82C4(0, 1, 1, v11);
        }

        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v11 = sub_2529F82C4((v17 > 1), v18 + 1, 1, v11);
        }

        *(v11 + 2) = v18 + 1;
        v11[v18 + 32] = v28;
      }

      if (BYTE4(__dst[48]) == 1)
      {
        sub_252935408(__dst);
      }

      else
      {
        v12 = __dst[12];
        v19 = *a2;

        v21 = sub_252C75848(v20);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2529F8278(0, v12[2] + 1, 1, v12);
        }

        v23 = v12[2];
        v22 = v12[3];
        if (v23 >= v22 >> 1)
        {
          v12 = sub_2529F8278((v22 > 1), v23 + 1, 1, v12);
        }

        sub_252935408(__dst);
        v12[2] = v23 + 1;
        v12[v23 + 4] = v21;
      }

      v38 = v52;
      v39 = v53;
      v40 = v54;
      v41 = v55;
      v36 = v50;
      v37 = v51;
      v30 = v44;
      v31 = v45;
      v35 = v49;
      v33 = v47;
      v34 = v48;
      v32 = v46;
      memcpy(v42, __src, 0x130uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7FB0(0, *(v7 + 2) + 1, 1, v7);
      }

      v25 = *(v7 + 2);
      v24 = *(v7 + 3);
      if (v25 >= v24 >> 1)
      {
        v7 = sub_2529F7FB0((v24 > 1), v25 + 1, 1, v7);
      }

      ++v5;
      *(v7 + 2) = v25 + 1;
      v26 = &v7[504 * v25];
      *(v26 + 2) = v36;
      *(v26 + 3) = v37;
      *(v26 + 4) = v38;
      *(v26 + 5) = v39;
      *(v26 + 6) = v40;
      *(v26 + 7) = v41;
      *(v26 + 16) = v12;
      *(v26 + 152) = v31;
      *(v26 + 136) = v30;
      *(v26 + 200) = v34;
      *(v26 + 184) = v33;
      *(v26 + 168) = v32;
      *(v26 + 27) = v35;
      *(v26 + 28) = v11;
      result = memcpy(v26 + 232, v42, 0x130uLL);
      v6 = (v6 + 504);
      if (v4 == v5)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_25:

    *v27 = v7;
  }

  return result;
}

uint64_t sub_252CEB304@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_252E34804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v20, v1, sizeof(v20));
  result = sub_252D05090();
  v9 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v10 = 0;
    v18 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = a1;
    v17 = 0x8000000252E7BB10;
    v11 = (v4 + 8);
    while (v10 < *(v9 + 16))
    {
      (*(v4 + 16))(v7, v18 + *(v4 + 72) * v10, v3);
      v13 = sub_252E347F4();
      if (v14)
      {
        if (v13 == 0xD000000000000012 && v14 == v17)
        {

LABEL_10:

          v15._countAndFlagsBits = sub_252E347E4();
          AttributeSemantic.init(rawValue:)(v15);
          return (*v11)(v7, v3);
        }

        v12 = sub_252E37DB4();

        if (v12)
        {
          goto LABEL_10;
        }
      }

      ++v10;
      result = (*v11)(v7, v3);
      if (v19 == v10)
      {

        a1 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    *a1 = 66;
  }

  return result;
}

uint64_t sub_252CEB53C@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545578, &qword_252E5B600);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v69 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v73 = &v69 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v77 = &v69 - v17;
  v18 = sub_252E34804();
  v81 = *(v18 - 8);
  v19 = *(v81 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v78 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v76 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v69 - v24;
  memcpy(v83, v2, sizeof(v83));
  memcpy(v82, v2, sizeof(v82));
  v26 = sub_252D05090();
  memcpy(v82, v2, sizeof(v82));
  v27 = v82;
  if (sub_252D057E4(v26))
  {

    v29 = 56;
    goto LABEL_3;
  }

  v71 = v9;
  v72 = v12;
  v30 = *(v26 + 16);
  v74 = a2;
  v80 = v18;
  if (v30)
  {
    v70 = a1;
    a2 = 0;
    a1 = v26 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v79 = 0x8000000252E74CB0;
    v31 = (v81 + 8);
    do
    {
      if (a2 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_73;
      }

      (*(v81 + 16))(v25, a1 + *(v81 + 72) * a2, v18);
      v27 = v25;
      v33 = sub_252E347F4();
      if (v34)
      {
        if (v33 == 0xD000000000000013 && v34 == v79)
        {

LABEL_13:

          v35._countAndFlagsBits = sub_252E347E4();
          StateSemantic.init(rawValue:)(v35);
          return (*v31)(v25, v80);
        }

        v27 = v34;
        v32 = sub_252E37DB4();

        if (v32)
        {
          goto LABEL_13;
        }
      }

      ++a2;
      v18 = v80;
      (*v31)(v25, v80);
    }

    while (v30 != a2);

    a2 = v74;
    a1 = v70;
  }

  else
  {
  }

  v36 = sub_252E34D84();
  v37 = v77;
  if (v36)
  {
    v38 = sub_252E350C4();
    v39 = *(v38 - 8);
    v40 = *(v39 + 56);
    v40(v37, 1, 1, v38);
    if (sub_252E34F24())
    {
      v41 = v75;
      sub_252E350B4();

      sub_25293847C(v37, &qword_27F545578, &qword_252E5B600);
      sub_25293DDF0(v41, v37, &qword_27F545578, &qword_252E5B600);
    }

    else
    {
      if (sub_252E34F34())
      {
        sub_252E34A04();
        if (v82[0])
        {
          v62 = v73;
          sub_252E350B4();

          sub_25293847C(v37, &qword_27F545578, &qword_252E5B600);
        }

        else
        {
          sub_25293847C(v37, &qword_27F545578, &qword_252E5B600);

          v66 = v73;
          v40(v73, 1, 1, v38);
          v62 = v66;
        }

        v43 = v71;
        v42 = v72;
        sub_25293DDF0(v62, v37, &qword_27F545578, &qword_252E5B600);
LABEL_60:
        sub_25293DDF0(v37, v42, &qword_27F545578, &qword_252E5B600);
        if ((*(v39 + 48))(v42, 1, v38) != 1)
        {
          sub_252938414(v42, v43, &qword_27F545578, &qword_252E5B600);
          v68 = (*(v39 + 88))(v43, v38);
          if (v68 == *MEMORY[0x277D5F008])
          {
            v67 = 1;
            goto LABEL_64;
          }

          if (v68 == *MEMORY[0x277D5F000])
          {
            *v74 = 0;
            return sub_25293847C(v42, &qword_27F545578, &qword_252E5B600);
          }

          (*(v39 + 8))(v43, v38);
        }

        v67 = 77;
LABEL_64:
        *v74 = v67;
        return sub_25293847C(v42, &qword_27F545578, &qword_252E5B600);
      }
    }

    v43 = v71;
    v42 = v72;
    goto LABEL_60;
  }

  sub_252E34644();
  v44 = sub_252E359F4();

  if (!*(v44 + 16))
  {
    goto LABEL_31;
  }

  v45 = sub_252A44A10(1701667182, 0xE400000000000000);
  if ((v46 & 1) == 0)
  {
    goto LABEL_31;
  }

  v27 = *(*(v44 + 56) + 8 * v45);

  if (v27 >> 62)
  {
    goto LABEL_75;
  }

  if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_24:
  if ((v27 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v47 = *(v27 + 32);
  }

  v48 = sub_252E35924();

  if (!v48)
  {
    while (1)
    {
LABEL_32:
      result = sub_252E34D54();
      if (!result)
      {
        goto LABEL_56;
      }

      v53 = result;
      memcpy(v82, v83, sizeof(v82));
      v27 = v82;
      v79 = v53;
      v54 = sub_252D05090();
      v55 = v54;
      v56 = *(v54 + 16);
      if (!v56)
      {
        break;
      }

      a2 = 0;
      a1 = v54 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v52 = (v81 + 8);
      while (a2 < *(v55 + 16))
      {
        v27 = v78;
        (*(v81 + 16))(v78, a1 + *(v81 + 72) * a2, v18);
        v58 = sub_252E347F4();
        if (v59)
        {
          if (v58 == 0xD000000000000013 && v59 == 0x8000000252E74CB0)
          {

LABEL_42:

            v60 = v78;
            goto LABEL_43;
          }

          v27 = v59;
          v57 = sub_252E37DB4();

          if (v57)
          {
            goto LABEL_42;
          }
        }

        ++a2;
        v18 = v80;
        (*v52)(v78, v80);
        if (v56 == a2)
        {
          goto LABEL_55;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_24;
      }

LABEL_31:
    }

LABEL_55:

    a2 = v74;
LABEL_56:
    v29 = 77;
LABEL_3:
    *a2 = v29;
    return result;
  }

  v49 = sub_252E34734();
  if (!v49)
  {

    goto LABEL_32;
  }

  v27 = v49;
  v50 = sub_252E358F4();

  v51 = *(v50 + 16);
  if (!v51)
  {

    goto LABEL_31;
  }

  v79 = v48;
  v70 = a1;
  a2 = 0;
  a1 = v50 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v52 = (v81 + 8);
  while (1)
  {
    if (a2 >= *(v50 + 16))
    {
      goto LABEL_74;
    }

    v27 = v76;
    (*(v81 + 16))(v76, a1 + *(v81 + 72) * a2, v18);
    v64 = sub_252E347F4();
    if (!v65)
    {
      goto LABEL_48;
    }

    if (v64 == 0xD000000000000013 && v65 == 0x8000000252E74CB0)
    {
      break;
    }

    v27 = v65;
    v63 = sub_252E37DB4();

    if (v63)
    {
      goto LABEL_54;
    }

LABEL_48:
    ++a2;
    v18 = v80;
    (*v52)(v76, v80);
    if (v51 == a2)
    {

      a2 = v74;
      goto LABEL_32;
    }
  }

LABEL_54:

  v60 = v76;
LABEL_43:
  v61._countAndFlagsBits = sub_252E347E4();
  StateSemantic.init(rawValue:)(v61);

  return (*v52)(v60, v80);
}

uint64_t sub_252CEBF68@<X0>(_WORD *a1@<X8>)
{
  v3 = sub_252E34804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v20, v1, sizeof(v20));
  result = sub_252D05090();
  v9 = result;
  v19 = *(result + 16);
  if (v19)
  {
    v10 = 0;
    v18 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = a1;
    v17 = 0x8000000252E7BAF0;
    v11 = (v4 + 8);
    while (v10 < *(v9 + 16))
    {
      (*(v4 + 16))(v7, v18 + *(v4 + 72) * v10, v3);
      v13 = sub_252E347F4();
      if (v14)
      {
        if (v13 == 0xD000000000000011 && v14 == v17)
        {

LABEL_10:

          v15._countAndFlagsBits = sub_252E347E4();
          HueSemantic.init(rawValue:)(v15);
          return (*v11)(v7, v3);
        }

        v12 = sub_252E37DB4();

        if (v12)
        {
          goto LABEL_10;
        }
      }

      ++v10;
      result = (*v11)(v7, v3);
      if (v19 == v10)
      {

        a1 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    *a1 = 709;
  }

  return result;
}

uint64_t sub_252CEC1A0(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      if (v2 >> 62)
      {
        goto LABEL_26;
      }

      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_11;
      }

LABEL_27:
      v11 = MEMORY[0x277D84F90];
LABEL_28:

      return v11;
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_25;
    }

    if (*(v4 + 8 * v1++))
    {

      MEMORY[0x2530AD700](v7);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v16;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_252E378C4();
  v9 = result;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_11:
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v10, v2);
      }

      else
      {
        v12 = *(v2 + 8 * v10 + 32);
      }

      v13 = sub_252D0661C(v12);
      if (*(v13 + 16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2529F8278(0, v11[2] + 1, 1, v11);
        }

        v15 = v11[2];
        v14 = v11[3];
        if (v15 >= v14 >> 1)
        {
          v11 = sub_2529F8278((v14 > 1), v15 + 1, 1, v11);
        }

        v11[2] = v15 + 1;
        v11[v15 + 4] = v13;
      }

      else
      {
      }

      ++v10;
    }

    while (v9 != v10);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_252CEC3C0()
{
  if (sub_252E34EC4())
  {
    v0 = sub_252E34FD4();
  }

  else if (sub_252E34EE4())
  {
    v0 = sub_252E34DC4();
  }

  else
  {
    if (!sub_252E34ED4())
    {
      return 0;
    }

    v0 = sub_252E35314();
  }

  v1 = v0;

  return v1;
}

uint64_t sub_252CEC448@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545598, &qword_252E5B618);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v59 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v61 = v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v60 = v58 - v10;
  MEMORY[0x28223BE20](v9);
  v62 = v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A0, &qword_252E5B620);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v58 - v17;
  v19 = sub_252E34EF4();
  v63 = a1;
  if (v19)
  {
    v20 = v19;
    v21 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      goto LABEL_24;
    }

    v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      while (1)
      {
        v23 = 0;
        while ((v20 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v23, v20);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            sub_252E345B4();

            v26 = sub_252E345C4();
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v18, 1, v26) == 1)
            {
LABEL_15:
              v28 = 4;
              goto LABEL_16;
            }

            sub_252938414(v18, v16, &qword_27F5455A0, &qword_252E5B620);
            v29 = (*(v27 + 88))(v16, v26);
            if (v29 == *MEMORY[0x277D5E3B8])
            {
              *v64 = 0;
            }

            else
            {
              if (v29 != *MEMORY[0x277D5E3C0])
              {
                (*(v27 + 8))(v16, v26);
                goto LABEL_15;
              }

              v28 = 1;
LABEL_16:
              *v64 = v28;
            }

            v30 = &qword_27F5455A0;
            v31 = &qword_252E5B620;
            v32 = v18;
            return sub_25293847C(v32, v30, v31);
          }

LABEL_8:
          sub_252E349D4();
          if (v66)
          {
            goto LABEL_14;
          }

          ++v23;
          if (v25 == v22)
          {
            goto LABEL_25;
          }
        }

        if (v23 < *(v21 + 16))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v22 = sub_252E378C4();
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      v24 = *(v20 + 8 * v23 + 32);

      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_25:
  }

  v33 = sub_252E34ED4();
  if (!v33)
  {
    goto LABEL_65;
  }

  v34 = v33;
  v35 = sub_252E35304();
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v66 = MEMORY[0x277D84F90];
  if (v36 >> 62)
  {
LABEL_52:
    v37 = sub_252E378C4();
    if (v37)
    {
      goto LABEL_32;
    }

LABEL_53:
    v39 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_53;
  }

LABEL_32:
  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v58[1] = v34;
  do
  {
    v34 = v38;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v34, v36);
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v34 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v40 = *(v36 + 8 * v34 + 32);

        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      sub_252E349D4();
      if (v65)
      {
        break;
      }

LABEL_35:
      ++v34;
      if (v38 == v37)
      {
        goto LABEL_54;
      }
    }

    v41 = sub_252E34DD4();

    if (!v41)
    {
      goto LABEL_35;
    }

    MEMORY[0x2530AD700](v42);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v39 = v66;
  }

  while (v38 != v37);
LABEL_54:

  if (v39 >> 62)
  {
    result = sub_252E378C4();
    v45 = v62;
    if (!result)
    {
      goto LABEL_64;
    }

LABEL_56:
    if ((v39 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](0, v39);
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v46 = *(v39 + 32);
    }

    sub_252E34C84();

    v47 = sub_252E34C94();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v45, 1, v47) != 1)
    {
      v49 = v60;
      sub_252938414(v45, v60, &qword_27F545598, &qword_252E5B618);
      v50 = (*(v48 + 88))(v49, v47);
      if (v50 == *MEMORY[0x277D5E770])
      {
        goto LABEL_70;
      }

      if (v50 == *MEMORY[0x277D5E778])
      {
        goto LABEL_74;
      }

      (*(v48 + 8))(v60, v47);
    }

    goto LABEL_76;
  }

  v45 = v62;
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

LABEL_64:

LABEL_65:
  result = sub_252E34EC4();
  if (result)
  {
    if (sub_252E34FE4() && (v51 = sub_252E34DD4(), , v51))
    {
      v45 = v61;
      sub_252E34C84();

      v52 = sub_252E34C94();
      v53 = *(v52 - 8);
      if ((*(v53 + 48))(v45, 1, v52) != 1)
      {
        v54 = v59;
        sub_252938414(v45, v59, &qword_27F545598, &qword_252E5B618);
        v55 = (*(v53 + 88))(v54, v52);
        if (v55 == *MEMORY[0x277D5E770])
        {
LABEL_70:
          v56 = 3;
          goto LABEL_77;
        }

        if (v55 == *MEMORY[0x277D5E778])
        {
LABEL_74:
          v56 = 2;
          goto LABEL_77;
        }

        (*(v53 + 8))(v54, v52);
      }
    }

    else
    {

      v57 = sub_252E34C94();
      v45 = v61;
      (*(*(v57 - 8) + 56))(v61, 1, 1, v57);
    }

LABEL_76:
    v56 = 4;
LABEL_77:
    *v64 = v56;
    v30 = &qword_27F545598;
    v31 = &qword_252E5B618;
    v32 = v45;
    return sub_25293847C(v32, v30, v31);
  }

  else
  {
    *v64 = 4;
  }

  return result;
}

uint64_t sub_252CECC58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_252E34F14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545580, &qword_252E5B608);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545588, &qword_252E5B610);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v37 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v33[-v18];
  result = sub_252E34EC4();
  if (!result)
  {
    goto LABEL_12;
  }

  v35 = v6;
  v21 = sub_252E34FE4();
  v36 = a1;
  if (v21 && (v22 = sub_252E34A24(), , v22))
  {
    sub_252E34F04();
  }

  else
  {
    (*(v3 + 56))(v19, 1, 1, v2);
  }

  (*(v3 + 104))(v17, *MEMORY[0x277D5EBF0], v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v23 = *(v7 + 48);
  sub_252938414(v19, v10, &qword_27F545588, &qword_252E5B610);
  sub_252938414(v17, &v10[v23], &qword_27F545588, &qword_252E5B610);
  v24 = *(v3 + 48);
  if (v24(v10, 1, v2) == 1)
  {

    sub_25293847C(v17, &qword_27F545588, &qword_252E5B610);
    sub_25293847C(v19, &qword_27F545588, &qword_252E5B610);
    v25 = v24(&v10[v23], 1, v2);
    a1 = v36;
    if (v25 == 1)
    {
      result = sub_25293847C(v10, &qword_27F545588, &qword_252E5B610);
LABEL_14:
      v29 = 0;
      v28 = 1;
      v27 = 2;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v26 = v37;
  sub_252938414(v10, v37, &qword_27F545588, &qword_252E5B610);
  if (v24(&v10[v23], 1, v2) == 1)
  {

    sub_25293847C(v17, &qword_27F545588, &qword_252E5B610);
    sub_25293847C(v19, &qword_27F545588, &qword_252E5B610);
    (*(v3 + 8))(v26, v2);
    a1 = v36;
LABEL_11:
    result = sub_25293847C(v10, &qword_27F545580, &qword_252E5B608);
    goto LABEL_12;
  }

  v30 = &v10[v23];
  v31 = v35;
  (*(v3 + 32))(v35, v30, v2);
  sub_252D07DD4(&qword_27F545590, MEMORY[0x277D5EC70]);
  v34 = sub_252E36EF4();

  v32 = *(v3 + 8);
  v32(v31, v2);
  sub_25293847C(v17, &qword_27F545588, &qword_252E5B610);
  sub_25293847C(v19, &qword_27F545588, &qword_252E5B610);
  v32(v26, v2);
  result = sub_25293847C(v10, &qword_27F545588, &qword_252E5B610);
  a1 = v36;
  if (v34)
  {
    goto LABEL_14;
  }

LABEL_12:
  v27 = 0;
  v28 = 0;
  v29 = 1;
LABEL_15:
  *a1 = v27;
  *(a1 + 8) = v28;
  *(a1 + 9) = v29;
  return result;
}

uint64_t sub_252CED168@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_252E346B4();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_25:
    v7 = sub_252E378C4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_26:
    v31 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_3:
  v8 = 0;
  v31 = MEMORY[0x277D84F90];
  v27 = a2;
  do
  {
    a2 = v8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](a2, a1);
        v8 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(a1 + 8 * a2 + 32);

        v8 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      if (sub_252E349C4())
      {
        break;
      }

LABEL_6:
      ++a2;
      if (v8 == v7)
      {
        a2 = v27;
        goto LABEL_27;
      }
    }

    v10 = sub_252E349F4();
    v12 = v11;

    if (!v12)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_2529F7A80(0, *(v31 + 2) + 1, 1, v31);
    }

    v15 = *(v31 + 2);
    v14 = *(v31 + 3);
    if (v15 >= v14 >> 1)
    {
      v31 = sub_2529F7A80((v14 > 1), v15 + 1, 1, v31);
    }

    v16 = v31;
    *(v31 + 2) = v15 + 1;
    v17 = &v16[16 * v15];
    *(v17 + 4) = v10;
    *(v17 + 5) = v12;
    a2 = v27;
  }

  while (v8 != v7);
LABEL_27:
  v19 = v28;
  v18 = v29;
  v20 = v30;
  (*(v29 + 104))(v28, *MEMORY[0x277D5E468], v30);
  v21 = sub_252E346A4();
  v23 = v22;
  v24 = (*(v18 + 8))(v19, v20);
  v32[0] = v21;
  v32[1] = v23;
  MEMORY[0x28223BE20](v24);
  *(&v27 - 2) = v32;
  LOBYTE(v21) = sub_2529ED970(sub_25296A724, (&v27 - 4), v31);

  if (v21)
  {
    v26 = 4;
  }

  else
  {
    v26 = 5;
  }

  *a2 = v26;
  return result;
}

unint64_t sub_252CED470(unint64_t result)
{
  v1 = result;
  v9 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      if (sub_252E349C4() && (sub_252E34A04(), , v8))
      {

        MEMORY[0x2530AD700](v6);
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();

        v4 = v9;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_252CED5E8(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v74 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v79);
  v76 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v77 = v74 - v12;
  v1[208] = 0;
  sub_252E35554();
  v13 = v89;
  v78 = v8;
  if (v89)
  {
    memcpy(v87, v1, sizeof(v87));
    memcpy(v86, v1, sizeof(v86));
    sub_2529353AC(v87, v85);
    sub_252CEB304(v84);
    memcpy(v88, v86, sizeof(v88));
    sub_252935408(v88);
    v14 = v84[0];
    v75 = v7;
    if (v84[0] != 66)
    {
      v15 = v87[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2529F82EC(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_2529F82EC((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v15[v17 + 32] = v14;
      *(v2 + 10) = v15;
    }

    memcpy(v85, v2, sizeof(v85));
    memcpy(v84, v2, sizeof(v84));
    sub_2529353AC(v85, v83);
    sub_252CEB53C(v13, v82);
    memcpy(v86, v84, sizeof(v86));
    sub_252935408(v86);
    v18 = v82[0];
    if (LOBYTE(v82[0]) != 77)
    {
      v19 = v85[24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2529F82C4(0, *(v19 + 2) + 1, 1, v19);
      }

      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_2529F82C4((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v19[v21 + 32] = v18;
      *(v2 + 24) = v19;
    }

    if (sub_252E34D54())
    {
      if (*(v85[10] + 16) || (memcpy(v83, v2, sizeof(v83)), memcpy(v82, v2, sizeof(v82)), sub_2529353AC(v83, v80), sub_252CEB304(&v81), memcpy(v84, v82, sizeof(v84)), sub_252935408(v84), v22 = v81, v81 == 66))
      {
      }

      else
      {
        v23 = v83[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2529F82EC(0, *(v23 + 2) + 1, 1, v23);
        }

        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v25 >= v24 >> 1)
        {
          v23 = sub_2529F82EC((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 2) = v25 + 1;
        v23[v25 + 32] = v22;
        *(v2 + 10) = v23;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252E3C3C0;
    *(v26 + 32) = sub_252E34D54();
    *(v26 + 40) = v13;

    v27 = sub_252CEC1A0(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v28 = *(v27 + 16);
    if (v28)
    {
      v74[1] = v3;
      v29 = 32;
      do
      {
        v30 = *(v27 + v29);
        if (*(v30 + 16))
        {
          v31 = *(v2 + 12);
          v32 = *(v27 + v29);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_2529F8278(0, v31[2] + 1, 1, v31);
          }

          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            v31 = sub_2529F8278((v33 > 1), v34 + 1, 1, v31);
          }

          v31[2] = v34 + 1;
          v31[v34 + 4] = v30;
          *(v2 + 12) = v31;
        }

        v29 += 8;
        --v28;
      }

      while (v28);
    }

    v8 = v78;
    v7 = v75;
  }

  if (sub_252E35534())
  {
    memcpy(v87, v2, sizeof(v87));
    memcpy(v86, v2, sizeof(v86));
    sub_2529353AC(v87, v88);
    sub_252CEE320(v7);
    memcpy(v88, v86, sizeof(v88));
    sub_252935408(v88);
    v35 = v79;
    if ((*(v8 + 48))(v7, 1, v79) == 1)
    {
      sub_25293847C(v7, &qword_27F541AF8, &qword_252E419F8);
    }

    else
    {
      v36 = v87[32];
      v37 = v7;
      v38 = *(v8 + 32);
      v39 = v77;
      v38(v77, v37, v35);
      (*(v8 + 16))(v76, v39, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_2529F8C44(0, *(v36 + 2) + 1, 1, v36);
      }

      v41 = *(v36 + 2);
      v40 = *(v36 + 3);
      if (v41 >= v40 >> 1)
      {
        v36 = sub_2529F8C44(v40 > 1, v41 + 1, 1, v36);
      }

      *(v36 + 2) = v41 + 1;
      v43 = v78;
      v42 = v79;
      v38(&v36[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v78 + 72) * v41], v76, v79);
      *(v2 + 32) = v36;
      memcpy(v85, v2, sizeof(v85));
      memcpy(v84, v2, sizeof(v84));
      sub_2529353AC(v85, v83);
      v44 = v77;
      v45 = sub_252CEEFBC();
      memcpy(v86, v84, sizeof(v86));
      sub_252935408(v86);
      if (*(v45 + 16))
      {
        v46 = v85[12];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_2529F8278(0, v46[2] + 1, 1, v46);
        }

        v47 = v78;
        v49 = v46[2];
        v48 = v46[3];
        if (v49 >= v48 >> 1)
        {
          v46 = sub_2529F8278((v48 > 1), v49 + 1, 1, v46);
        }

        (*(v47 + 8))(v77, v79);
        v46[2] = v49 + 1;
        v46[v49 + 4] = v45;
        *(v2 + 12) = v46;
      }

      else
      {
        (*(v43 + 8))(v44, v42);
      }
    }

    memcpy(v83, v2, sizeof(v83));
    memcpy(v86, v2, sizeof(v86));
    sub_2529353AC(v83, v85);
    sub_252CEF084(v85);
    memcpy(v84, v86, sizeof(v84));
    sub_252935408(v84);
    v2[64] = v85[0];
    memcpy(v85, v2, sizeof(v85));
    memcpy(v82, v2, sizeof(v82));
    sub_2529353AC(v85, v86);
    sub_252CEF454(v80);

    memcpy(v86, v82, sizeof(v86));
    sub_252935408(v86);
    v2[25] = v80[0];
  }

  v50 = sub_252E35544();
  if (v50)
  {
    v51 = v50;
    memcpy(v85, v2, sizeof(v85));
    memcpy(v88, v2, sizeof(v88));
    sub_2529353AC(v85, v87);
    v52 = sub_252CEC3C0();
    memcpy(v86, v88, sizeof(v86));
    sub_252935408(v86);

    *(v2 + 2) = v52;
    memcpy(v87, v2, sizeof(v87));
    memcpy(v84, v2, sizeof(v84));
    sub_2529353AC(v87, v88);
    sub_252CEC448(v51, v83);

    memcpy(v88, v84, sizeof(v88));
    sub_252935408(v88);
    v2[40] = v83[0];
  }

  v53 = sub_2529FE74C(&unk_2864A5D90);
  sub_252A01B34(&unk_2864A5DB0);
  v54 = *(v2 + 12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_85:
    v54 = sub_2529F8278(0, v54[2] + 1, 1, v54);
  }

  v56 = v54[2];
  v55 = v54[3];
  if (v56 >= v55 >> 1)
  {
    v54 = sub_2529F8278((v55 > 1), v56 + 1, 1, v54);
  }

  v54[2] = v56 + 1;
  v54[v56 + 4] = v53;
  *(v2 + 12) = v54;
  memcpy(v88, v2, sizeof(v88));
  memcpy(v87, v2, sizeof(v87));
  sub_2529353AC(v88, v86);
  v57 = sub_252E35524();
  v58 = MEMORY[0x277D84F90];
  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
  }

  sub_252CED168(v59, &v89);

  memcpy(v86, v87, sizeof(v86));
  sub_252935408(v86);
  if (v89 != 5)
  {
    v60 = v88[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v60 = sub_2529F8B34(0, *(v60 + 2) + 1, 1, v60);
    }

    v62 = *(v60 + 2);
    v61 = *(v60 + 3);
    if (v62 >= v61 >> 1)
    {
      v60 = sub_2529F8B34((v61 > 1), v62 + 1, 1, v60);
    }

    *(v60 + 2) = v62 + 1;
    v60[v62 + 32] = 4;
    *(v2 + 4) = v60;
  }

  memcpy(v85, v2, sizeof(v85));
  memcpy(v84, v2, sizeof(v84));
  sub_2529353AC(v85, v83);
  v63 = sub_252E35524();
  if (v63)
  {
    v64 = v63;
  }

  else
  {
    v64 = v58;
  }

  v65 = sub_252CED470(v64);

  memcpy(v83, v84, sizeof(v83));
  sub_252935408(v83);
  v66 = sub_252E35524();
  if (v66)
  {
    v67 = v66;
    v82[0] = v58;
    v68 = v66 & 0xFFFFFFFFFFFFFF8;
    if (v66 >> 62)
    {
      v69 = sub_252E378C4();
      v79 = v65;
      if (v69)
      {
LABEL_68:
        v54 = 0;
        v53 = MEMORY[0x277D84F90];
        do
        {
          v78 = v53;
          v70 = v54;
          while (1)
          {
            if ((v67 & 0xC000000000000001) != 0)
            {
              v53 = MEMORY[0x2530ADF00](v70, v67);
              v54 = (v70 + 1);
              if (__OFADD__(v70, 1))
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v70 >= *(v68 + 16))
              {
                goto LABEL_84;
              }

              v53 = *(v67 + 8 * v70 + 32);

              v54 = (v70 + 1);
              if (__OFADD__(v70, 1))
              {
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }
            }

            sub_252E349D4();

            if (v80[0])
            {
              break;
            }

            ++v70;
            if (v54 == v69)
            {
              v53 = v78;
              goto LABEL_88;
            }
          }

          MEMORY[0x2530AD700](v71);
          if (*((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v72 = *((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v53 = v82[0];
        }

        while (v54 != v69);
        goto LABEL_88;
      }
    }

    else
    {
      v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v79 = v65;
      if (v69)
      {
        goto LABEL_68;
      }
    }

    v53 = MEMORY[0x277D84F90];
LABEL_88:

    v82[0] = v53;
    sub_25297AE00(v79);
    sub_252CDF97C(v82[0]);
  }
}

uint64_t sub_252CEE320@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v1 = sub_252E34D04();
  v2 = *(v1 - 8);
  v95 = v1;
  v96 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v91 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455B8, &qword_252E5B630);
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455C0, &qword_252E5B638);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v92 = v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v98 = v89 - v12;
  MEMORY[0x28223BE20](v11);
  v99 = v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A8, &qword_252E5B628);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v89 - v19;
  v21 = sub_252E34CC4();
  v97 = *(v21 - 8);
  v22 = *(v97 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v89 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v89 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = v89 - v32;
  sub_252E34644();
  sub_252E351C4();
  sub_252E34E24();

  if (v102 != 0.0)
  {
    if (sub_252E351B4())
    {
      v34 = sub_252E351A4();
      if (v34)
      {
        v35 = v34;
        sub_252E34CB4();
        v36 = v97;
        if ((*(v97 + 48))(v20, 1, v21) == 1)
        {
          sub_25293847C(v20, &qword_27F5455A8, &qword_252E5B628);

          sub_252E34644();

          sub_252E34D44();
          sub_252E34E24();

          v38 = v98;
          v37 = v99;
          if (v102 == 0.0 || (v39 = sub_252E34D34(), v41 = v40, , (v41 & 1) != 0))
          {
            v42 = 0.0;
            v43 = 1;
          }

          else
          {
            v43 = 0;
            v42 = v39;
          }
        }

        else
        {
          v53 = *(v36 + 32);
          v53(v33, v20, v21);
          v53(v31, v33, v21);
          v54 = (*(v36 + 88))(v31, v21);
          v38 = v98;
          if (v54 == *MEMORY[0x277D5E7D8])
          {
            v43 = 0;
            v42 = 12.0;
          }

          else if (v54 == *MEMORY[0x277D5E7F8])
          {
            v43 = 0;
            v42 = 1000.0;
          }

          else if (v54 == *MEMORY[0x277D5E798])
          {
            v43 = 0;
            v42 = 50.0;
          }

          else if (v54 == *MEMORY[0x277D5E7E8])
          {
            v43 = 0;
            v42 = 100.0;
          }

          else
          {
            (*(v97 + 8))(v31, v21);
            v42 = 0.0;
            v43 = 1;
          }

          v37 = v99;
        }

        sub_252E34644();

        sub_252E34D24();
        sub_252E34E24();

        if (v102 == 0.0)
        {
        }

        else
        {
          v89[1] = v35;
          v90 = v42;
          LODWORD(v97) = v43;
          sub_252E34CF4();
          v71 = v95;
          v70 = v96;
          (*(v96 + 104))(v38, *MEMORY[0x277D5E880], v95);
          (*(v70 + 56))(v38, 0, 1, v71);
          v72 = *(v93 + 48);
          v73 = v37;
          v74 = v94;
          sub_252938414(v73, v94, &qword_27F5455C0, &qword_252E5B638);
          v93 = v72;
          v75 = v71;
          sub_252938414(v38, v74 + v72, &qword_27F5455C0, &qword_252E5B638);
          v76 = *(v70 + 48);
          if (v76(v74, 1, v75) == 1)
          {

            sub_25293847C(v38, &qword_27F5455C0, &qword_252E5B638);
            sub_25293847C(v99, &qword_27F5455C0, &qword_252E5B638);
            v77 = v76(v74 + v93, 1, v75);
            LOBYTE(v43) = v97;
            v42 = v90;
            if (v77 == 1)
            {
              sub_25293847C(v74, &qword_27F5455C0, &qword_252E5B638);
              v48 = 0;
              goto LABEL_12;
            }
          }

          else
          {
            v78 = v92;
            sub_252938414(v74, v92, &qword_27F5455C0, &qword_252E5B638);
            v79 = v93;
            if (v76(v74 + v93, 1, v75) != 1)
            {
              v81 = v96;
              v82 = v74 + v79;
              v83 = v91;
              (*(v96 + 32))(v91, v82, v75);
              sub_252D07DD4(&qword_27F5455C8, MEMORY[0x277D5E888]);
              v84 = v75;
              v85 = sub_252E36EF4();

              v86 = *(v81 + 8);
              v86(v83, v84);
              sub_25293847C(v98, &qword_27F5455C0, &qword_252E5B638);
              sub_25293847C(v99, &qword_27F5455C0, &qword_252E5B638);
              v86(v78, v84);
              sub_25293847C(v74, &qword_27F5455C0, &qword_252E5B638);
              if (v85)
              {
                v48 = 0;
              }

              else
              {
                v48 = 4;
              }

              v49 = v100;
              LOBYTE(v43) = v97;
              v42 = v90;
LABEL_55:
              if (v48)
              {
                v80 = v43;
              }

              else
              {
                v80 = 0;
              }

              if ((v80 & 1) == 0)
              {
                goto LABEL_68;
              }

LABEL_59:
              v50 = 1;
              goto LABEL_69;
            }

            sub_25293847C(v98, &qword_27F5455C0, &qword_252E5B638);
            sub_25293847C(v99, &qword_27F5455C0, &qword_252E5B638);
            (*(v96 + 8))(v78, v75);
            LOBYTE(v43) = v97;
            v42 = v90;
          }

          sub_25293847C(v74, &qword_27F5455B8, &qword_252E5B630);
        }

        v48 = 4;
        v49 = v100;
        goto LABEL_55;
      }
    }

    goto LABEL_14;
  }

  sub_252E34644();
  sub_252E34D44();
  sub_252E34E24();

  if (v102 == 0.0)
  {
    sub_252E34644();
    sub_252E34D24();
    sub_252E34E24();

    if (v102 != 0.0)
    {
      sub_252E34D14();
      if (!v51)
      {
LABEL_14:

        goto LABEL_15;
      }

      v52 = sub_252E34AC4();

      if ((v52 & 0x100000000) != 0)
      {
        goto LABEL_15;
      }

      LOBYTE(v43) = 0;
      v47 = *&v52;
      goto LABEL_11;
    }

    sub_252E34644();
    sub_252E35024();
    sub_252E34E24();

    if (v102 != 0.0)
    {
      v55 = sub_252E35014();
      if ((v56 & 1) == 0)
      {
        v60 = v55;
        v61 = sub_252E35004();
        v63 = v62;
        v64 = v61;
        v65 = sub_252E34FF4();
        v67 = v66;

        LOBYTE(v43) = 0;
        v68 = v65;
        v69 = 0.0;
        if (v67)
        {
          v68 = 0.0;
        }

        if ((v63 & 1) == 0)
        {
          v69 = v64;
        }

        v47 = v68 + v69 / v60;
        goto LABEL_11;
      }
    }

    sub_252E34CB4();
    v57 = v97;
    if ((*(v97 + 48))(v18, 1, v21) == 1)
    {
      sub_25293847C(v18, &qword_27F5455A8, &qword_252E5B628);
      goto LABEL_15;
    }

    v58 = *(v57 + 32);
    v58(v28, v18, v21);
    v58(v25, v28, v21);
    v59 = (*(v57 + 88))(v25, v21);
    if (v59 != *MEMORY[0x277D5E7D8])
    {
      v49 = v100;
      if (v59 == *MEMORY[0x277D5E7F8])
      {
        LOBYTE(v43) = 0;
        v42 = 1000.0;
        v48 = 4;
        goto LABEL_68;
      }

      if (v59 == *MEMORY[0x277D5E798])
      {
        LOBYTE(v43) = 0;
        v48 = 4;
        v42 = 50.0;
        goto LABEL_68;
      }

      if (v59 == *MEMORY[0x277D5E7E8])
      {
        LOBYTE(v43) = 0;
        v48 = 4;
        v42 = 100.0;
        goto LABEL_68;
      }

      (*(v57 + 8))(v25, v21);
      goto LABEL_59;
    }

    LOBYTE(v43) = 0;
    v48 = 4;
    v42 = 12.0;
LABEL_12:
    v49 = v100;
LABEL_68:
    v102 = v42;
    v103 = v43;
    v101 = v48;
    sub_252AD617C();
    sub_252E35824();
    v50 = 0;
    goto LABEL_69;
  }

  v44 = sub_252E34D34();
  v46 = v45;

  if ((v46 & 1) == 0)
  {
    LOBYTE(v43) = 0;
    v47 = v44;
LABEL_11:
    v42 = v47;
    v48 = 4;
    goto LABEL_12;
  }

LABEL_15:
  v50 = 1;
  v49 = v100;
LABEL_69:
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  return (*(*(v87 - 8) + 56))(v49, v50, 1, v87);
}

uint64_t sub_252CEEFBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  sub_252E35814();
  result = MEMORY[0x277D84FA0];
  if (v2 != 4)
  {
    v3 = MEMORY[0x277D84FA0];
    if (v2 - 1 > 2)
    {
      v1 = sub_2529FE74C(&unk_2864A5D30);
      swift_arrayDestroy();
      return v1;
    }

    else
    {
      sub_252DA6CD0(&v2, 0xD000000000000019, 0x8000000252E64DA0);

      return v3;
    }
  }

  return result;
}

uint64_t sub_252CEF084@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A8, &qword_252E5B628);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_252E34CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_252E34CB4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_25293847C(v5, &qword_27F5455A8, &qword_252E5B628);
    v18 = 4;
  }

  else
  {
    v26 = v11;
    v27 = a1;
    (*(v7 + 32))(v16, v5, v6);
    v19 = *MEMORY[0x277D5E7B0];
    v25 = *(v7 + 104);
    v25(v14, v19, v6);
    sub_252D07DD4(&qword_27F5455B0, MEMORY[0x277D5E808]);
    sub_252E371F4();
    sub_252E371F4();
    if (v30 == v28 && v31 == v29)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_252E37DB4();
    }

    v21 = *(v7 + 8);
    v21(v14, v6);

    if (v20)
    {
      result = (v21)(v16, v6);
      v18 = 2;
    }

    else
    {
      v22 = v26;
      v25(v26, *MEMORY[0x277D5E7B8], v6);
      sub_252E371F4();
      sub_252E371F4();
      if (v30 == v28 && v31 == v29)
      {
        v21(v22, v6);
        v21(v16, v6);

        v18 = 1;
      }

      else
      {
        v23 = sub_252E37DB4();
        v21(v22, v6);
        v21(v16, v6);

        if (v23)
        {
          v18 = 1;
        }

        else
        {
          v18 = 4;
        }
      }
    }

    a1 = v27;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_252CEF454@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A8, &qword_252E5B628);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_252E34CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_252E34CB4();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_25293847C(v5, &qword_27F5455A8, &qword_252E5B628);
    v18 = 3;
  }

  else
  {
    v26 = v11;
    v27 = a1;
    (*(v7 + 32))(v16, v5, v6);
    v19 = *MEMORY[0x277D5E7C8];
    v25 = *(v7 + 104);
    v25(v14, v19, v6);
    sub_252D07DD4(&qword_27F5455B0, MEMORY[0x277D5E808]);
    sub_252E371F4();
    sub_252E371F4();
    if (v30 == v28 && v31 == v29)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_252E37DB4();
    }

    v21 = *(v7 + 8);
    v21(v14, v6);

    if (v20)
    {
      result = (v21)(v16, v6);
      v18 = 0;
    }

    else
    {
      v22 = v26;
      v25(v26, *MEMORY[0x277D5E7D0], v6);
      sub_252E371F4();
      sub_252E371F4();
      if (v30 == v28 && v31 == v29)
      {
        v21(v22, v6);
        v21(v16, v6);

        v18 = 2;
      }

      else
      {
        v23 = sub_252E37DB4();
        v21(v22, v6);
        v21(v16, v6);

        if (v23)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }
      }
    }

    a1 = v27;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_252CEF824(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v92 - v6;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v99 = *(v107 - 8);
  v7 = *(v99 + 64);
  v8 = MEMORY[0x28223BE20](v107);
  v104 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v92 - v10;
  *(v1 + 208) = 0;
  v103 = (v1 + 208);
  sub_252E35724();
  v11 = v117;
  v95 = v3;
  if (!v117)
  {
    goto LABEL_28;
  }

  memcpy(v115, v1, sizeof(v115));
  memcpy(v114, v1, 0x1F8uLL);
  sub_2529353AC(v115, v113);
  sub_252CEB304(v112);
  memcpy(v116, v114, sizeof(v116));
  sub_252935408(v116);
  v12 = v112[0];
  if (LOBYTE(v112[0]) != 66)
  {
    v13 = v115[10];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_2529F82EC(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_2529F82EC((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v13[v15 + 32] = v12;
    *(v2 + 10) = v13;
  }

  memcpy(v113, v2, sizeof(v113));
  memcpy(v112, v2, sizeof(v112));
  sub_2529353AC(v113, v111);
  sub_252CEB53C(v11, v109);
  memcpy(v114, v112, 0x1F8uLL);
  sub_252935408(v114);
  v16 = v109[0];
  if (LOBYTE(v109[0]) != 77)
  {
    v17 = v113[24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2529F82C4(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_2529F82C4((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v17[v19 + 32] = v16;
    *(v2 + 24) = v17;
  }

  if (sub_252E34D54())
  {
    if (!*(v113[10] + 16))
    {
      memcpy(v111, v2, sizeof(v111));
      memcpy(v109, v2, sizeof(v109));
      sub_2529353AC(v111, v108);
      sub_252CEB304(&v110);
      memcpy(v112, v109, sizeof(v112));
      sub_252935408(v112);
      LOBYTE(v20) = v110;
      if (v110 != 66)
      {
        v32 = v111[10];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_49;
        }

        goto LABEL_136;
      }
    }
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C3C0;
    *(v21 + 32) = sub_252E34D54();
    *(v21 + 40) = v11;

    v22 = sub_252CEC1A0(v21);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = 32;
      do
      {
        v25 = *(v22 + v24);
        if (*(v25 + 16))
        {
          v26 = *(v2 + 12);
          v27 = *(v22 + v24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2529F8278(0, v26[2] + 1, 1, v26);
          }

          v29 = v26[2];
          v28 = v26[3];
          if (v29 >= v28 >> 1)
          {
            v26 = sub_2529F8278((v28 > 1), v29 + 1, 1, v26);
          }

          v26[2] = v29 + 1;
          v26[v29 + 4] = v25;
          *(v2 + 12) = v26;
        }

        v24 += 8;
        --v23;
      }

      while (v23);
    }

LABEL_28:
    v30 = sub_252E356F4();
    v31 = MEMORY[0x277D84F90];
    if (!v30)
    {
      goto LABEL_92;
    }

    v32 = v30;
    v33 = sub_252E34EB4();
    if (!v33)
    {

      goto LABEL_92;
    }

    v34 = v33;
    v116[0] = v31;
    v11 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v33 >> 62)
    {
LABEL_54:
      v35 = sub_252E378C4();
      v93 = v32;
      if (!v35)
      {
LABEL_55:
        v98 = MEMORY[0x277D84F90];
        goto LABEL_56;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v93 = v32;
      if (!v35)
      {
        goto LABEL_55;
      }
    }

    v36 = 0;
    v98 = MEMORY[0x277D84F90];
    do
    {
      v37 = v36;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2530ADF00](v37, v34);
          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v37 >= *(v11 + 16))
          {
            goto LABEL_53;
          }

          v32 = *(v34 + 8 * v37 + 32);

          v36 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        sub_252E349D4();

        if (v115[0])
        {
          break;
        }

        ++v37;
        if (v36 == v35)
        {
          goto LABEL_56;
        }
      }

      MEMORY[0x2530AD700](v38);
      if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v39 = *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      v32 = v116;
      sub_252E372D4();
      v98 = v116[0];
    }

    while (v36 != v35);
LABEL_56:

    v20 = v98;
    v42 = v98 >> 62 ? sub_252E378C4() : *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v105;
    v44 = v107;
    if (!v42)
    {
      break;
    }

    v102 = v42 - 1;
    if (v42 >= 1)
    {
      v45 = 0;
      v46 = (v99 + 48);
      v100 = (v99 + 32);
      v101 = v20 & 0xC000000000000001;
      v94 = "HomeAutomationSwingMode";
      v96 = (v99 + 8);
      v97 = (v99 + 16);
      if ((v20 & 0xC000000000000001) == 0)
      {
        goto LABEL_62;
      }

LABEL_61:
      MEMORY[0x2530ADF00](v45, v20);
      while (1)
      {
        memcpy(v115, v2, sizeof(v115));
        memcpy(v114, v2, 0x1F8uLL);
        sub_2529353AC(v115, v113);
        sub_252CF0864(v43);
        memcpy(v116, v114, sizeof(v116));
        sub_252935408(v116);
        if ((*v46)(v43, 1, v44) == 1)
        {
          sub_25293847C(v43, &qword_27F541AF8, &qword_252E419F8);
          goto LABEL_81;
        }

        v48 = v115[32];
        v49 = *v100;
        v50 = v106;
        (*v100)(v106, v43, v44);
        (*v97)(v104, v50, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_2529F8C44(0, *(v48 + 2) + 1, 1, v48);
        }

        v52 = *(v48 + 2);
        v51 = *(v48 + 3);
        v20 = v98;
        if (v52 >= v51 >> 1)
        {
          v48 = sub_2529F8C44(v51 > 1, v52 + 1, 1, v48);
        }

        *(v48 + 2) = v52 + 1;
        v53 = v107;
        v49(&v48[((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v52], v104, v107);
        *(v2 + 32) = v48;
        memcpy(v114, v2, 0x1F8uLL);
        sub_2529353AC(v114, v113);
        sub_252E35814();
        if (LOBYTE(v113[0]) == 4)
        {
          sub_252935408(v114);
          v54 = MEMORY[0x277D84FA0];
          if (!*(MEMORY[0x277D84FA0] + 16))
          {
            goto LABEL_80;
          }
        }

        else
        {
          v112[0] = MEMORY[0x277D84FA0];
          if (LOBYTE(v113[0]) - 1 >= 3)
          {
            v54 = sub_2529FE74C(&unk_2864A5D30);
            swift_arrayDestroy();
            sub_252935408(v114);
            if (!*(v54 + 16))
            {
LABEL_80:
              (*v96)(v106, v53);

              goto LABEL_81;
            }
          }

          else
          {
            sub_252DA6CD0(v113, 0xD000000000000019, v94 | 0x8000000000000000);

            sub_252935408(v114);
            v54 = v112[0];
            if (!*(v112[0] + 16))
            {
              goto LABEL_80;
            }
          }
        }

        v55 = *&v114[6];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2529F8278(0, v55[2] + 1, 1, v55);
        }

        v57 = v55[2];
        v56 = v55[3];
        if (v57 >= v56 >> 1)
        {
          v55 = sub_2529F8278((v56 > 1), v57 + 1, 1, v55);
        }

        (*v96)(v106, v107);
        v55[2] = v57 + 1;
        v55[v57 + 4] = v54;
        *(v2 + 12) = v55;
LABEL_81:
        v58 = *(v2 + 25);
        *&v114[12] = *(v2 + 24);
        v59 = v2[11];
        v114[10] = v2[10];
        v114[11] = v59;
        v60 = v2[7];
        v114[6] = v2[6];
        v114[7] = v60;
        v61 = v2[8];
        v114[9] = v2[9];
        v114[8] = v61;
        v62 = v2[3];
        v114[2] = v2[2];
        v114[3] = v62;
        v63 = v2[4];
        v114[5] = v2[5];
        v114[4] = v63;
        v64 = *v2;
        v114[1] = v2[1];
        v114[0] = v64;
        memcpy(&v114[13], v103, 0x128uLL);
        *(&v114[12] + 1) = v58;

        v65 = sub_252E35414();
        sub_252D0607C(v65, v113);

        v66 = v113[0];
        if (LOBYTE(v113[0]) == 4)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_2529F8C68(0, *(v58 + 2) + 1, 1, v58);
          }

          v68 = *(v58 + 2);
          v67 = *(v58 + 3);
          if (v68 >= v67 >> 1)
          {
            v58 = sub_2529F8C68((v67 > 1), v68 + 1, 1, v58);
          }

          *(v58 + 2) = v68 + 1;
          v58[v68 + 32] = v66;
          *(v2 + 25) = v58;
        }

        v43 = v105;
        v44 = v107;
        if (v102 == v45)
        {
          goto LABEL_91;
        }

        ++v45;
        if (v101)
        {
          goto LABEL_61;
        }

LABEL_62:
        v47 = *(v20 + 8 * v45 + 32);
      }
    }

    __break(1u);
LABEL_136:
    v32 = sub_2529F82EC(0, *(v32 + 2) + 1, 1, v32);
LABEL_49:
    v41 = *(v32 + 2);
    v40 = *(v32 + 3);
    if (v41 >= v40 >> 1)
    {
      v32 = sub_2529F82EC((v40 > 1), v41 + 1, 1, v32);
    }

    *(v32 + 2) = v41 + 1;
    v32[v41 + 32] = v20;
    *(v2 + 10) = v32;
  }

LABEL_91:

  v31 = MEMORY[0x277D84F90];
LABEL_92:
  v69 = sub_252E35714();
  if (v69)
  {
    v70 = v69;
    memcpy(v113, v2, sizeof(v113));
    memcpy(v116, v2, sizeof(v116));
    sub_2529353AC(v113, v115);
    v71 = sub_252CEC3C0();
    memcpy(v114, v116, 0x1F8uLL);
    sub_252935408(v114);

    *(v2 + 2) = v71;
    memcpy(v115, v2, sizeof(v115));
    memcpy(v112, v2, sizeof(v112));
    sub_2529353AC(v115, v116);
    sub_252CEC448(v70, v111);

    memcpy(v116, v112, sizeof(v116));
    sub_252935408(v116);
    *(v2 + 40) = v111[0];
  }

  v72 = sub_2529FE74C(&unk_2864A5DC0);
  sub_252A01B34(&unk_2864A5DE0);
  v73 = *(v2 + 12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_129:
    v73 = sub_2529F8278(0, v73[2] + 1, 1, v73);
  }

  v75 = v73[2];
  v74 = v73[3];
  if (v75 >= v74 >> 1)
  {
    v73 = sub_2529F8278((v74 > 1), v75 + 1, 1, v73);
  }

  v73[2] = v75 + 1;
  v73[v75 + 4] = v72;
  *(v2 + 12) = v73;
  memcpy(v116, v2, sizeof(v116));
  memcpy(v115, v2, sizeof(v115));
  sub_2529353AC(v116, v114);
  v76 = sub_252E35704();
  if (v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = v31;
  }

  sub_252CED168(v77, &v117);

  memcpy(v114, v115, 0x1F8uLL);
  sub_252935408(v114);
  if (v117 != 5)
  {
    v78 = v116[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_2529F8B34(0, *(v78 + 2) + 1, 1, v78);
    }

    v80 = *(v78 + 2);
    v79 = *(v78 + 3);
    if (v80 >= v79 >> 1)
    {
      v78 = sub_2529F8B34((v79 > 1), v80 + 1, 1, v78);
    }

    *(v78 + 2) = v80 + 1;
    v78[v80 + 32] = 4;
    *(v2 + 4) = v78;
  }

  memcpy(v113, v2, sizeof(v113));
  memcpy(v112, v2, sizeof(v112));
  sub_2529353AC(v113, v111);
  v81 = sub_252E35704();
  if (v81)
  {
    v82 = v81;
  }

  else
  {
    v82 = v31;
  }

  v83 = sub_252CED470(v82);

  memcpy(v111, v112, sizeof(v111));
  sub_252935408(v111);
  v84 = sub_252E35704();
  if (!v84)
  {
  }

  v85 = v84;
  v109[0] = v31;
  v86 = v84 & 0xFFFFFFFFFFFFFF8;
  if (v84 >> 62)
  {
    v87 = sub_252E378C4();
    v107 = v83;
    if (v87)
    {
      goto LABEL_112;
    }

    goto LABEL_131;
  }

  v87 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v107 = v83;
  if (!v87)
  {
LABEL_131:
    v72 = MEMORY[0x277D84F90];
    goto LABEL_132;
  }

LABEL_112:
  v73 = 0;
  v72 = MEMORY[0x277D84F90];
  do
  {
    v106 = v72;
    v88 = v73;
    while (1)
    {
      if ((v85 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x2530ADF00](v88, v85);
        v73 = (v88 + 1);
        if (__OFADD__(v88, 1))
        {
          goto LABEL_127;
        }
      }

      else
      {
        if (v88 >= *(v86 + 16))
        {
          goto LABEL_128;
        }

        v72 = *(v85 + 8 * v88 + 32);

        v73 = (v88 + 1);
        if (__OFADD__(v88, 1))
        {
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }

      sub_252E349D4();

      v31 = v108[0];
      if (v108[0])
      {
        break;
      }

      ++v88;
      if (v73 == v87)
      {
        v72 = v106;
        goto LABEL_132;
      }
    }

    MEMORY[0x2530AD700](v89);
    if (*((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v90 = *((v109[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v72 = v109[0];
  }

  while (v73 != v87);
LABEL_132:

  v109[0] = v72;
  sub_25297AE00(v107);
  sub_252CDF97C(v109[0]);
}

uint64_t sub_252CF0864@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455D0, &unk_252E5B640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_252E35114();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  memcpy(v39, v1, sizeof(v39));
  sub_252E34644();
  sub_252E35454();
  sub_252E34E24();

  if (v37[0])
  {
    memcpy(v37, v39, sizeof(v37));
    sub_252D05C24(v36);
  }

  v34 = v11;
  v35 = v7;
  if (!sub_252E35424())
  {
    goto LABEL_6;
  }

  memcpy(v37, v39, sizeof(v37));
  sub_252CEE320(v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {

    sub_25293847C(v17, &qword_27F541AF8, &qword_252E419F8);
LABEL_6:
    v21 = 0;
    v22 = 1;
    goto LABEL_8;
  }

  sub_252E35834();

  v23 = v37[0];
  v22 = LOBYTE(v37[1]);
  (*(v20 + 8))(v17, v19);
  v21 = v23;
LABEL_8:
  if (sub_252E35414())
  {
    sub_252E34644();
  }

  sub_252E35124();
  sub_252E34E24();

  if (v37[0])
  {
    sub_252E35104();

    v24 = v35;
    if ((*(v35 + 48))(v5, 1, v6) == 1)
    {
      sub_25293847C(v5, &qword_27F5455D0, &unk_252E5B640);
      v25 = 4;
    }

    else
    {
      v26 = *(v24 + 32);
      v26(v13, v5, v6);
      v27 = v34;
      v26(v34, v13, v6);
      v28 = (*(v24 + 88))(v27, v6);
      if (v28 == *MEMORY[0x277D5F078])
      {
        v25 = 3;
      }

      else if (v28 == *MEMORY[0x277D5F068])
      {
        v25 = 1;
      }

      else if (v28 == *MEMORY[0x277D5F070])
      {
        v25 = 2;
      }

      else
      {
        (*(v35 + 8))(v27, v6);
        v25 = 4;
      }
    }
  }

  else
  {
    if (sub_252E35414())
    {
      sub_252E34644();
    }

    sub_252E350D4();
    sub_252E34E24();

    if (!v37[0])
    {
      if (v22)
      {
        goto LABEL_22;
      }

      v37[0] = v21;
      LOBYTE(v37[1]) = 0;
      v25 = 4;
      goto LABEL_24;
    }

    memcpy(v37, v39, sizeof(v37));

    sub_252D0607C(v29, &v38);

    v25 = v38;
  }

  if (v22)
  {
LABEL_22:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
    return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
  }

  v37[0] = v21;
  LOBYTE(v37[1]) = 0;
LABEL_24:
  v38 = v25;
  sub_252AD617C();
  v31 = v36;
  sub_252E35824();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
}

uint64_t HomeAutomationIntent.getMeasurementUnit(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  if (a1)
  {
    v6 = sub_252E35414();
  }

  else
  {
    v6 = 0;
  }

  sub_252D0607C(v6, a2);
}

uint64_t sub_252CF0EC8(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x28223BE20](a1);
  sub_252E34E64();
  v3 = v122;
  if (!v122)
  {
    goto LABEL_77;
  }

  memcpy(v120, v1, sizeof(v120));
  memcpy(__dst, v1, sizeof(__dst));
  sub_2529353AC(v120, v118);
  sub_252CEB304(__src);
  memcpy(v121, __dst, sizeof(v121));
  sub_252935408(v121);
  LOBYTE(v4) = __src[0];
  v58 = v3;
  if (__src[0] != 66)
  {
    v5 = v120[10];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_55:
      v5 = sub_2529F82EC(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_2529F82EC((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v5[v7 + 32] = v4;
    *(v2 + 80) = v5;
    v3 = v58;
  }

  memcpy(v118, v2, sizeof(v118));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(v118, v116);
  sub_252CEB53C(v3, v115);
  memcpy(__dst, __src, sizeof(__dst));
  sub_252935408(__dst);
  v8 = v115[0];
  if (v115[0] != 77)
  {
    v9 = v118[24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2529F82C4(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_2529F82C4((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = v8;
    *(v2 + 192) = v9;
    v3 = v58;
  }

  if (sub_252E34D54())
  {
    memcpy(v116, v2, sizeof(v116));
    memcpy(v115, v2, sizeof(v115));
    sub_2529353AC(v116, v114);
    sub_252CEB304(v113);
    memcpy(__src, v115, sizeof(__src));
    sub_252935408(__src);
    v12 = v113[0];
    if (v113[0] == 66)
    {
    }

    else
    {
      v13 = v116[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2529F82EC(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_2529F82EC((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v13[v15 + 32] = v12;
      *(v2 + 80) = v13;
      v3 = v58;
    }
  }

  memcpy(v114, v2, sizeof(v114));
  memcpy(v113, v2, sizeof(v113));
  sub_2529353AC(v114, &v107);
  sub_252CF2510(&v107);
  memcpy(v115, v113, sizeof(v115));
  sub_252935408(v115);
  *(v2 + 8) = v107;
  memcpy(v116, v2, sizeof(v116));
  memcpy(v113, v2, sizeof(v113));
  sub_2529353AC(v116, &v107);
  v16 = sub_252CF276C();
  memcpy(__src, v113, sizeof(__src));
  sub_252935408(__src);

  *(v2 + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252E3C3C0;
  *(v17 + 32) = sub_252E34D54();
  *(v17 + 40) = v3;

  v18 = sub_252CEC1A0(v17);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = v18 + 32;
    do
    {
      v21 = *v20;
      if (*(*v20 + 16))
      {
        v22 = *(v2 + 96);
        v23 = *v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2529F8278(0, v22[2] + 1, 1, v22);
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_2529F8278((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        v22[v25 + 4] = v21;
        *(v2 + 96) = v22;
      }

      v20 += 8;
      --v19;
    }

    while (v19);
  }

  if (!sub_252E34D84())
  {
LABEL_76:

    goto LABEL_77;
  }

  v26 = sub_252E34F44();

  if (!v26)
  {
LABEL_52:

    goto LABEL_77;
  }

  v5 = v26;
  v27 = sub_252E34EB4();
  if (!v27)
  {

    goto LABEL_52;
  }

  v28 = v27;
  *v113 = MEMORY[0x277D84F90];
  v4 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v27 >> 62)
  {
    v29 = sub_252E378C4();
    if (v29)
    {
LABEL_35:
      v30 = 0;
      v57 = MEMORY[0x277D84F90];
      do
      {
        v31 = v2;
        v2 = v30;
        while (1)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x2530ADF00](v2, v28);
            v30 = (v2 + 1);
            if (__OFADD__(v2, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (v2 >= *(v4 + 16))
            {
              goto LABEL_54;
            }

            v5 = *(v28 + 8 * v2 + 32);

            v30 = (v2 + 1);
            if (__OFADD__(v2, 1))
            {
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }
          }

          sub_252E349D4();

          if (v107)
          {
            break;
          }

          ++v2;
          if (v30 == v29)
          {
            v2 = v31;
            goto LABEL_58;
          }
        }

        MEMORY[0x2530AD700](v32);
        if (*((*v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((*v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        v5 = v113;
        sub_252E372D4();
        v57 = *v113;
        v2 = v31;
      }

      while (v30 != v29);
      goto LABEL_58;
    }
  }

  else
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_35;
    }
  }

  v57 = MEMORY[0x277D84F90];
LABEL_58:

  v34 = v57;
  if (v57 >> 62)
  {
    result = sub_252E378C4();
  }

  else
  {
    result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result)
  {
    v105 = result - 1;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v36 = 0;
    v104 = *v2;
    v103 = *(v2 + 8);
    v102 = *(v2 + 9);
    v37 = *(v2 + 10);
    v101 = *(v2 + 16);
    v100 = *(v2 + 24);
    v99 = *(v2 + 25);
    v98 = *(v2 + 26);
    v97 = *(v2 + 32);
    v96 = *(v2 + 40);
    v95 = *(v2 + 48);
    v94 = *(v2 + 64);
    v92 = *(v2 + 88);
    v93 = *(v2 + 72);
    v90 = *(v2 + 120);
    v91 = *(v2 + 104);
    v88 = *(v2 + 152);
    v89 = *(v2 + 136);
    v86 = *(v2 + 184);
    v87 = *(v2 + 168);
    v85 = *(v2 + 208);
    v84 = *(v2 + 209);
    v83 = *(v2 + 216);
    v82 = *(v2 + 232);
    v81 = *(v2 + 240);
    v79 = *(v2 + 264);
    v80 = *(v2 + 256);
    v78 = *(v2 + 272);
    v76 = *(v2 + 289);
    v77 = *(v2 + 288);
    v74 = *(v2 + 304);
    v75 = *(v2 + 296);
    v73 = *(v2 + 312);
    v71 = *(v2 + 328);
    v72 = *(v2 + 320);
    v69 = *(v2 + 352);
    v70 = *(v2 + 336);
    v68 = *(v2 + 368);
    v66 = *(v2 + 385);
    v67 = *(v2 + 384);
    v64 = *(v2 + 387);
    v65 = *(v2 + 386);
    v63 = *(v2 + 488);
    v112 = *(v2 + 480);
    v38 = *(v2 + 388);
    v39 = *(v2 + 448);
    v109 = *(v2 + 432);
    v110 = v39;
    v111 = *(v2 + 464);
    v40 = *(v2 + 416);
    v107 = *(v2 + 400);
    v108 = v40;
    v61 = *(v2 + 389);
    v62 = v38;
    v59 = *(v2 + 496);
    v60 = *(v2 + 392);
    if ((v57 & 0xC000000000000001) == 0)
    {
      goto LABEL_64;
    }

LABEL_63:
    MEMORY[0x2530ADF00](v36, v34);
    while (1)
    {
      v106[2] = v82;
      v106[1] = v76;
      *&v113[480] = v112;
      v113[232] = v82;
      v113[289] = v76;
      v42 = v2;
      v43 = *(v2 + 200);
      v106[8] = v37;
      *&v113[432] = v109;
      *&v113[448] = v110;
      *&v113[464] = v111;
      *&v113[400] = v107;
      *&v113[416] = v108;
      *v113 = v104;
      v113[8] = v103;
      v113[9] = v102;
      v113[10] = v37;
      *&v113[16] = v101;
      v113[24] = v100;
      v113[25] = v99;
      v113[26] = v98;
      *&v113[32] = v97;
      v113[40] = v96;
      *&v113[48] = v95;
      v113[64] = v94;
      *&v113[72] = v93;
      *&v113[88] = v92;
      *&v113[104] = v91;
      *&v113[120] = v90;
      *&v113[136] = v89;
      *&v113[152] = v88;
      *&v113[168] = v87;
      *&v113[184] = v86;
      *&v113[200] = v43;
      v113[208] = v85;
      v113[209] = v84;
      *&v113[216] = v83;
      *&v113[240] = v81;
      *&v113[256] = v80;
      *&v113[264] = v79;
      *&v113[272] = v78;
      v113[288] = v77;
      *&v113[296] = v75;
      *&v113[304] = v74;
      v113[312] = v73;
      *&v113[320] = v72;
      *&v113[328] = v71;
      *&v113[336] = v70;
      *&v113[352] = v69;
      *&v113[368] = v68;
      v113[384] = v67;
      v113[385] = v66;
      v113[386] = v65;
      v113[387] = v64;
      v113[388] = v62;
      v113[389] = v61;
      *&v113[392] = v60;
      *&v113[488] = v63;
      *&v113[496] = v59;
      v44 = sub_252E35414();
      sub_252D0607C(v44, v106);

      v45 = v106[0];
      if (v106[0] == 4)
      {

        v2 = v42;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_2529F8C68(0, *(v43 + 2) + 1, 1, v43);
        }

        v47 = *(v43 + 2);
        v46 = *(v43 + 3);
        if (v47 >= v46 >> 1)
        {
          v43 = sub_2529F8C68((v46 > 1), v47 + 1, 1, v43);
        }

        *(v43 + 2) = v47 + 1;
        v43[v47 + 32] = v45;
        v42[25] = v43;
        v2 = v42;
        v34 = v57;
      }

      if (v105 == v36)
      {
        break;
      }

      ++v36;
      if ((v57 & 0xC000000000000001) != 0)
      {
        goto LABEL_63;
      }

LABEL_64:
      v41 = *(v34 + 8 * v36 + 32);
    }

    goto LABEL_76;
  }

LABEL_77:
  result = sub_252E34E54();
  if (!result)
  {
    return result;
  }

  v48 = result;
  v121[0] = MEMORY[0x277D84F90];
  v49 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
LABEL_98:
    v50 = sub_252E378C4();
    if (v50)
    {
LABEL_80:
      v51 = 0;
      v52 = MEMORY[0x277D84F90];
      do
      {
        v53 = v51;
        while (1)
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v53, v48);
            v51 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (v53 >= *(v49 + 16))
            {
              goto LABEL_97;
            }

            v54 = *(v48 + 8 * v53 + 32);

            v51 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }
          }

          sub_252E349D4();

          if (v120[0])
          {
            break;
          }

          ++v53;
          if (v51 == v50)
          {
            goto LABEL_100;
          }
        }

        MEMORY[0x2530AD700](v55);
        if (*((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v56 = *((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v52 = v121[0];
      }

      while (v51 != v50);
      goto LABEL_100;
    }
  }

  else
  {
    v50 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v50)
    {
      goto LABEL_80;
    }
  }

  v52 = MEMORY[0x277D84F90];
LABEL_100:

  sub_252CDF97C(v52);
}

uint64_t sub_252CF1B58()
{
  v1 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  result = sub_252A15CE0();
  if (result & 1) != 0 || (memcpy(v6, v0, sizeof(v6)), result = sub_252A0E1E8(), (result))
  {
    v3 = 3;
  }

  else
  {
    memcpy(v6, v0, sizeof(v6));
    result = sub_252AB5058();
    if (result & 1) != 0 && (v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(), sub_252929E74((v4 + 368), v6), , v5 = sub_252C92828(v6), result = __swift_destroy_boxed_opaque_existential_1(v6), (v5))
    {
      v3 = 8;
    }

    else
    {
      v3 = 1;
    }
  }

  v1[208] = v3;
  v1[384] = 10;
  return result;
}

uint64_t sub_252CF1C30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_252E34CE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v56[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455E0, &qword_252E5B660);
  v8 = *(*(v66 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v66);
  v63 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v56[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455E8, &qword_252E5B668);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v59 = &v56[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v56[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v65 = &v56[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v56[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v56[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v56[-v27];
  if (sub_252E34D64())
  {
    sub_252E349F4();
    if (v29)
    {
      v58 = a1;
      v62 = a2;
      sub_252E34CD4();
      (*(v5 + 104))(v26, *MEMORY[0x277D5E868], v4);
      (*(v5 + 56))(v26, 0, 1, v4);
      v30 = v5;
      v31 = *(v66 + 48);
      sub_252938414(v28, v12, &qword_27F5455E8, &qword_252E5B668);
      sub_252938414(v26, &v12[v31], &qword_27F5455E8, &qword_252E5B668);
      v61 = v30;
      v32 = *(v30 + 48);
      if (v32(v12, 1, v4) == 1)
      {

        sub_25293847C(v26, &qword_27F5455E8, &qword_252E5B668);
        sub_25293847C(v28, &qword_27F5455E8, &qword_252E5B668);
        v33 = v32(&v12[v31], 1, v4);
        v5 = v61;
        a2 = v62;
        if (v33 == 1)
        {
          v34 = v12;
LABEL_16:
          result = sub_25293847C(v34, &qword_27F5455E8, &qword_252E5B668);
          v45 = 0;
          goto LABEL_32;
        }

        goto LABEL_9;
      }

      sub_252938414(v12, v23, &qword_27F5455E8, &qword_252E5B668);
      if (v32(&v12[v31], 1, v4) == 1)
      {

        sub_25293847C(v26, &qword_27F5455E8, &qword_252E5B668);
        sub_25293847C(v28, &qword_27F5455E8, &qword_252E5B668);
        v5 = v61;
        (*(v61 + 8))(v23, v4);
        a2 = v62;
LABEL_9:
        sub_25293847C(v12, &qword_27F5455E0, &qword_252E5B660);
        goto LABEL_10;
      }

      v49 = v60;
      v50 = v61;
      (*(v61 + 32))(v60, &v12[v31], v4);
      sub_252D07DD4(&qword_27F5455F0, MEMORY[0x277D5E870]);
      v57 = sub_252E36EF4();

      v51 = *(v50 + 8);
      v51(v49, v4);
      sub_25293847C(v26, &qword_27F5455E8, &qword_252E5B668);
      sub_25293847C(v28, &qword_27F5455E8, &qword_252E5B668);
      v51(v23, v4);
      v5 = v61;
      result = sub_25293847C(v12, &qword_27F5455E8, &qword_252E5B668);
      a2 = v62;
      if (v57)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

LABEL_10:
  if (!sub_252E34D84())
  {
    goto LABEL_21;
  }

  v35 = sub_252E34F34();

  if (!v35)
  {
    goto LABEL_21;
  }

  sub_252E349F4();
  if (v36)
  {
    v62 = a2;
    v37 = v65;
    sub_252E34CD4();
    v38 = v64;
    (*(v5 + 104))(v64, *MEMORY[0x277D5E868], v4);
    (*(v5 + 56))(v38, 0, 1, v4);
    v39 = v5;
    v40 = *(v66 + 48);
    v41 = v63;
    sub_252938414(v37, v63, &qword_27F5455E8, &qword_252E5B668);
    sub_252938414(v38, &v41[v40], &qword_27F5455E8, &qword_252E5B668);
    v61 = v39;
    v42 = *(v39 + 48);
    if (v42(v41, 1, v4) == 1)
    {

      sub_25293847C(v38, &qword_27F5455E8, &qword_252E5B668);
      sub_25293847C(v37, &qword_27F5455E8, &qword_252E5B668);
      v43 = v42(&v41[v40], 1, v4);
      a2 = v62;
      if (v43 == 1)
      {
        v34 = v41;
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    v46 = v59;
    sub_252938414(v41, v59, &qword_27F5455E8, &qword_252E5B668);
    if (v42(&v41[v40], 1, v4) == 1)
    {

      sub_25293847C(v64, &qword_27F5455E8, &qword_252E5B668);
      sub_25293847C(v65, &qword_27F5455E8, &qword_252E5B668);
      (*(v61 + 8))(v46, v4);
      a2 = v62;
LABEL_20:
      sub_25293847C(v41, &qword_27F5455E0, &qword_252E5B660);
      goto LABEL_21;
    }

    v52 = v60;
    v53 = v61;
    (*(v61 + 32))(v60, &v41[v40], v4);
    sub_252D07DD4(&qword_27F5455F0, MEMORY[0x277D5E870]);
    v54 = sub_252E36EF4();

    v55 = *(v53 + 8);
    v55(v52, v4);
    sub_25293847C(v64, &qword_27F5455E8, &qword_252E5B668);
    sub_25293847C(v65, &qword_27F5455E8, &qword_252E5B668);
    v55(v46, v4);
    result = sub_25293847C(v41, &qword_27F5455E8, &qword_252E5B668);
    a2 = v62;
    if ((v54 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v45 = 0;
    goto LABEL_32;
  }

LABEL_21:
  sub_252E34D74();
  if (v47)
  {
  }

  else
  {
    result = sub_252E34D84();
    if (!result || (v48 = sub_252E34F24(), result = , !v48))
    {
      v45 = 2;
      goto LABEL_32;
    }
  }

  v45 = 1;
LABEL_32:
  *a2 = v45;
  return result;
}

uint64_t sub_252CF2510@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455D8, &qword_252E5B658);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_252E351E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  result = sub_252E34D84();
  if (!result)
  {
    goto LABEL_6;
  }

  if (!sub_252E34F74())
  {

    goto LABEL_6;
  }

  sub_252E351D4();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_25293847C(v5, &qword_27F5455D8, &qword_252E5B658);
LABEL_6:
    v15 = 3;
LABEL_7:
    *a1 = v15;
    return result;
  }

  v16 = *(v7 + 32);
  v16(v13, v5, v6);
  v16(v11, v13, v6);
  result = (*(v7 + 88))(v11, v6);
  if (result == *MEMORY[0x277D5F138])
  {
    v15 = 1;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x277D5F130])
  {
    *a1 = 0;
  }

  else
  {
    *a1 = 3;
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_252CF276C()
{
  if (!sub_252E34D84())
  {
LABEL_5:
    if (sub_252E34D84())
    {
      if (sub_252E34F54())
      {
        v1 = sub_252E34FD4();

        return v1;
      }
    }

    return 0;
  }

  if (!sub_252E34F64())
  {

    goto LABEL_5;
  }

  memcpy(__dst, v0, sizeof(__dst));
  v1 = sub_252CEC3C0();

  return v1;
}

uint64_t sub_252CF2854(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  sub_252CDF97C(v1);
  v3[208] = 3;
  v3[384] = 17;
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v3, 0x1F8uLL);
  sub_2529353AC(__dst, v70);
  sub_252E34E64();
  v4 = sub_252CF2D4C(v67[0]);

  memcpy(v70, __src, 0x1F8uLL);
  sub_252935408(v70);
  v3[389] = v4 & 1;
  result = *v3;
  v6 = *(*v3 + 16);
  if (v6)
  {

    v30 = v6 - 1;
    v31 = MEMORY[0x277D84F90];
    for (i = v7; ; i += 504)
    {
      memcpy(v65, (i + 32), sizeof(v65));
      v9 = *(i + 208);
      v62 = *(i + 192);
      v63 = v9;
      v64 = *(i + 224);
      v10 = *(i + 144);
      v58 = *(i + 128);
      v59 = v10;
      v11 = *(i + 176);
      v60 = *(i + 160);
      v61 = v11;
      v12 = *(i + 80);
      v54 = *(i + 64);
      v55 = v12;
      v13 = *(i + 112);
      v56 = *(i + 96);
      v57 = v13;
      v14 = *(i + 48);
      v52 = *(i + 32);
      v53 = v14;
      v15 = *(i + 369);
      v49 = *(i + 353);
      v50 = v15;
      v51[0] = *(i + 385);
      *(v51 + 15) = *(i + 400);
      v16 = *(i + 289);
      v17 = *(i + 321);
      v18 = *(i + 337);
      v46 = *(i + 305);
      v47 = v17;
      v48 = v18;
      v19 = *(i + 257);
      v20 = *(i + 273);
      v42 = *(i + 241);
      v43 = v19;
      v44 = v20;
      v45 = v16;
      v21 = *&v65[385];
      v22 = *(i + 502);
      v38 = *(i + 486);
      v39 = v22;
      v40 = *(i + 518);
      v41 = *(i + 534);
      v23 = *(i + 438);
      v34 = *(i + 422);
      v35 = v23;
      v24 = *(i + 470);
      v36 = *(i + 454);
      v37 = v24;
      memcpy(v66, v3, sizeof(v66));
      memcpy(v33, v3, 0x1F8uLL);
      sub_2529353AC(v65, v32);
      sub_2529353AC(v65, v32);
      sub_2529353AC(v66, v32);
      sub_252E34E64();
      v25 = sub_252CF2D4C(v32[0]);

      memcpy(v67, v33, sizeof(v67));
      sub_252935408(v67);
      __src[9] = v61;
      __src[10] = v62;
      __src[11] = v63;
      __src[12] = v64;
      __src[5] = v57;
      __src[6] = v58;
      __src[7] = v59;
      __src[8] = v60;
      __src[1] = v53;
      __src[2] = v54;
      __src[3] = v55;
      __src[4] = v56;
      __src[0] = v52;
      LOBYTE(__src[13]) = 3;
      *(&__src[21] + 1) = v50;
      *(&__src[22] + 1) = v51[0];
      __src[23] = *(v51 + 15);
      *(&__src[17] + 1) = v46;
      *(&__src[18] + 1) = v47;
      *(&__src[19] + 1) = v48;
      *(&__src[20] + 1) = v49;
      *(&__src[13] + 1) = v42;
      *(&__src[14] + 1) = v43;
      *(&__src[15] + 1) = v44;
      *(&__src[16] + 1) = v45;
      LOBYTE(__src[24]) = 17;
      v29 = v21;
      *(&__src[24] + 1) = v21;
      BYTE5(__src[24]) = v25 & 1;
      *(&__src[28] + 6) = v38;
      *(&__src[29] + 6) = v39;
      *(&__src[30] + 6) = v40;
      WORD3(__src[31]) = v41;
      *(&__src[24] + 6) = v34;
      *(&__src[25] + 6) = v35;
      *(&__src[26] + 6) = v36;
      *(&__src[27] + 6) = v37;
      sub_2529353AC(__src, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2529F7FB0(0, *(v31 + 2) + 1, 1, v31);
      }

      v27 = *(v31 + 2);
      v26 = *(v31 + 3);
      if (v27 >= v26 >> 1)
      {
        v31 = sub_2529F7FB0((v26 > 1), v27 + 1, 1, v31);
      }

      sub_252935408(v65);
      v33[10] = v62;
      v33[11] = v63;
      v33[12] = v64;
      v33[6] = v58;
      v33[7] = v59;
      v33[8] = v60;
      v33[9] = v61;
      v33[2] = v54;
      v33[3] = v55;
      v33[4] = v56;
      v33[5] = v57;
      v33[0] = v52;
      v33[1] = v53;
      LOBYTE(v33[13]) = 3;
      *(&v33[21] + 1) = v50;
      *(&v33[22] + 1) = v51[0];
      v33[23] = *(v51 + 15);
      *(&v33[17] + 1) = v46;
      *(&v33[18] + 1) = v47;
      *(&v33[19] + 1) = v48;
      *(&v33[20] + 1) = v49;
      *(&v33[13] + 1) = v42;
      *(&v33[14] + 1) = v43;
      *(&v33[15] + 1) = v44;
      *(&v33[16] + 1) = v45;
      LOBYTE(v33[24]) = 17;
      *(&v33[24] + 1) = v29;
      BYTE5(v33[24]) = v25 & 1;
      *(&v33[28] + 6) = v38;
      *(&v33[29] + 6) = v39;
      *(&v33[30] + 6) = v40;
      WORD3(v33[31]) = v41;
      *(&v33[24] + 6) = v34;
      *(&v33[25] + 6) = v35;
      *(&v33[26] + 6) = v36;
      *(&v33[27] + 6) = v37;
      sub_252935408(v33);
      *(v31 + 2) = v27 + 1;
      memcpy(&v31[504 * v27 + 32], __src, 0x1F8uLL);
      if (!v30)
      {
        break;
      }

      --v30;
    }

    v28 = *v3;
    *v3 = v31;
  }

  return result;
}

uint64_t sub_252CF2D4C(uint64_t a1)
{
  v2 = sub_252E350F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455F8, &qword_252E5B670);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545600, &unk_252E5B678);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - v18;
  MEMORY[0x28223BE20](v17);
  v22 = &v32 - v21;
  if (a1)
  {
    v33 = v6;
    v34 = v20;
    swift_retain_n();
    if (sub_252E34A54())
    {
      sub_252E350E4();
    }

    else
    {
      (*(v3 + 56))(v22, 1, 1, v2);
    }

    v24 = sub_252E34A54();

    v35 = v22;
    if (v24)
    {
      sub_252E350E4();
    }

    else
    {
      (*(v3 + 56))(v19, 1, 1, v2);
    }

    (*(v3 + 104))(v16, *MEMORY[0x277D5F050], v2);
    (*(v3 + 56))(v16, 0, 1, v2);
    v25 = *(v7 + 48);
    sub_252938414(v19, v10, &qword_27F545600, &unk_252E5B678);
    sub_252938414(v16, &v10[v25], &qword_27F545600, &unk_252E5B678);
    v26 = *(v3 + 48);
    if (v26(v10, 1, v2) == 1)
    {

      sub_25293847C(v16, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v19, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v35, &qword_27F545600, &unk_252E5B678);
      if (v26(&v10[v25], 1, v2) == 1)
      {
        sub_25293847C(v10, &qword_27F545600, &unk_252E5B678);
        v23 = 1;
        return v23 & 1;
      }
    }

    else
    {
      v27 = v34;
      sub_252938414(v10, v34, &qword_27F545600, &unk_252E5B678);
      if (v26(&v10[v25], 1, v2) != 1)
      {
        v28 = v33;
        (*(v3 + 32))(v33, &v10[v25], v2);
        sub_252D07DD4(&qword_27F545608, MEMORY[0x277D5F058]);
        v29 = v27;
        v23 = sub_252E36EF4();

        v30 = *(v3 + 8);
        v30(v28, v2);
        sub_25293847C(v16, &qword_27F545600, &unk_252E5B678);
        sub_25293847C(v19, &qword_27F545600, &unk_252E5B678);
        sub_25293847C(v35, &qword_27F545600, &unk_252E5B678);
        v30(v29, v2);
        sub_25293847C(v10, &qword_27F545600, &unk_252E5B678);
        return v23 & 1;
      }

      sub_25293847C(v16, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v19, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v35, &qword_27F545600, &unk_252E5B678);
      (*(v3 + 8))(v27, v2);
    }

    sub_25293847C(v10, &qword_27F5455F8, &qword_252E5B670);
    v23 = 0;
    return v23 & 1;
  }

  v23 = 0;
  return v23 & 1;
}

unint64_t sub_252CF32BC()
{
  v1 = v0;
  sub_252E34504();
  v2 = v44;
  if (v44)
  {
    memcpy(__dst, v0, sizeof(__dst));
    memcpy(__src, v0, sizeof(__src));
    sub_2529353AC(__dst, v40);
    sub_252CEB304(v39);
    memcpy(v43, __src, sizeof(v43));
    sub_252935408(v43);
    v3 = v39[0];
    if (v39[0] != 66)
    {
      v4 = __dst[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F82EC(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_2529F82EC((v5 > 1), v6 + 1, 1, v4);
      }

      *(v4 + 2) = v6 + 1;
      v4[v6 + 32] = v3;
      v1[10] = v4;
    }

    memcpy(v40, v1, sizeof(v40));
    memcpy(v39, v1, sizeof(v39));
    sub_2529353AC(v40, v38);
    sub_252CEB53C(v2, v37);
    memcpy(__src, v39, sizeof(__src));
    sub_252935408(__src);
    v7 = v37[0];
    if (v37[0] != 77)
    {
      v8 = v40[24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F82C4(0, *(v8 + 2) + 1, 1, v8);
      }

      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      if (v10 >= v9 >> 1)
      {
        v8 = sub_2529F82C4((v9 > 1), v10 + 1, 1, v8);
      }

      *(v8 + 2) = v10 + 1;
      v8[v10 + 32] = v7;
      v1[24] = v8;
    }

    if (sub_252E34D54())
    {
      memcpy(v38, v1, sizeof(v38));
      memcpy(v37, v1, sizeof(v37));
      sub_2529353AC(v38, v36);
      sub_252CEB304(&v35);
      memcpy(v39, v37, sizeof(v39));
      sub_252935408(v39);
      v11 = v35;
      if (v35 == 66)
      {
      }

      else
      {
        v12 = v38[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2529F82EC(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        if (v14 >= v13 >> 1)
        {
          v12 = sub_2529F82EC((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v14 + 1;
        v12[v14 + 32] = v11;
        v1[10] = v12;
      }
    }

    memcpy(v38, v1, sizeof(v38));
    memcpy(v37, v1, sizeof(v37));
    sub_2529353AC(v38, v36);
    sub_252CF2510(v36);
    memcpy(v39, v37, sizeof(v39));
    sub_252935408(v39);
    *(v1 + 8) = v36[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_252E3C3C0;
    *(v15 + 32) = sub_252E34D54();
    *(v15 + 40) = v2;

    v16 = sub_252CEC1A0(v15);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 32;
      do
      {
        v19 = *(v16 + v18);
        if (*(v19 + 16))
        {
          v20 = v1[12];
          v21 = *(v16 + v18);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2529F8278(0, v20[2] + 1, 1, v20);
          }

          v23 = v20[2];
          v22 = v20[3];
          if (v23 >= v22 >> 1)
          {
            v20 = sub_2529F8278((v22 > 1), v23 + 1, 1, v20);
          }

          v20[2] = v23 + 1;
          v20[v23 + 4] = v19;
          v1[12] = v20;
        }

        v18 += 8;
        --v17;
      }

      while (v17);
    }
  }

  result = sub_252E344F4();
  if (result)
  {
    v25 = result;
    v43[0] = MEMORY[0x277D84F90];
    v26 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_52:
      v27 = sub_252E378C4();
      if (v27)
      {
LABEL_35:
        v28 = 0;
        v29 = MEMORY[0x277D84F90];
        do
        {
          v34 = v29;
          v30 = v28;
          while (1)
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v30, v25);
              v28 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v30 >= *(v26 + 16))
              {
                goto LABEL_51;
              }

              v31 = *(v25 + 8 * v30 + 32);

              v28 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            sub_252E349D4();

            if (__dst[0])
            {
              break;
            }

            ++v30;
            if (v28 == v27)
            {
              v29 = v34;
              goto LABEL_54;
            }
          }

          MEMORY[0x2530AD700](v32);
          if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v29 = v43[0];
        }

        while (v28 != v27);
        goto LABEL_54;
      }
    }

    else
    {
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        goto LABEL_35;
      }
    }

    v29 = MEMORY[0x277D84F90];
LABEL_54:

    sub_252CDF97C(v29);
  }

  return result;
}

uint64_t sub_252CF38DC(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = v189;
  memcpy(v199, v1, sizeof(v199));
  memcpy(v198, v1, sizeof(v198));
  sub_2529353AC(v199, v200);
  sub_252CF555C(v3, v197);
  memcpy(v200, v198, 0x1F8uLL);
  sub_252935408(v200);
  LOBYTE(v5) = v197[0];
  v182 = v1;
  v183 = v3;
  if (LOBYTE(v197[0]) > 2u)
  {
    if (LOBYTE(v197[0]) != 3 && LOBYTE(v197[0]) != 4)
    {
      goto LABEL_34;
    }
  }

  else if (LOBYTE(v197[0]) > 1u)
  {

    goto LABEL_9;
  }

  v6 = sub_252E37DB4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v7 = *(sub_252B680FC() + 72);

  if (v7 != 1 || (v8 = *(sub_252B680FC() + 120), , , !v8))
  {
LABEL_16:
    v19 = v199[4];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_17;
    }

    goto LABEL_190;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D90);

  v10 = sub_252E36AC4();
  v11 = sub_252E374C4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v198[0] = v13;
    *v12 = 136315138;
    v14 = type metadata accessor for HomeFilter();
    v15 = MEMORY[0x2530AD730](v8, v14);
    v17 = sub_252BE2CE0(v15, v16, v198);
    v2 = v182;

    *(v12 + 4) = v17;
    _os_log_impl(&dword_252917000, v10, v11, "All quantifier with disambiguation candidates: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v18 = v13;
    v3 = v183;
    MEMORY[0x2530AED00](v18, -1, -1);
    MEMORY[0x2530AED00](v12, -1, -1);
  }

  *(v2 + 304) = v8;
LABEL_34:
  while (1)
  {
    memcpy(v197, v2, sizeof(v197));
    memcpy(v196, v2, sizeof(v196));
    sub_2529353AC(v197, v198);
    sub_252CF5B00(v3, v195);
    memcpy(v198, v196, sizeof(v198));
    sub_252935408(v198);
    LODWORD(v5) = *(v4 + 3072);
    if (v5 == 21)
    {
      break;
    }

    v19 = v197[11];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_192:
      v19 = sub_2529F82D8(0, *(v19 + 16) + 1, 1, v19);
    }

    v33 = *(v19 + 16);
    v32 = *(v19 + 24);
    if (v33 >= v32 >> 1)
    {
      v19 = sub_2529F82D8((v32 > 1), v33 + 1, 1, v19);
    }

    v34 = v197[0];
    *(v19 + 16) = v33 + 1;
    *(v19 + v33 + 32) = v5;
    *(v2 + 88) = v19;
    v35 = *(v34 + 16);
    if (!v35)
    {
      v19 = MEMORY[0x277D84F90];
LABEL_52:

      v2 = v182;
      v3 = v183;
      *v182 = v19;
      break;
    }

    v2 = 0;
    v36 = (v34 + 128);
    v19 = MEMORY[0x277D84F90];
    while (v2 < *(v34 + 16))
    {
      memcpy(v196, v36 - 6, sizeof(v196));
      v37 = v196[11];
      *(v4 + 2080) = *(v36 - 4);
      *(v4 + 2096) = *(v36 - 3);
      *(v4 + 2112) = *(v36 - 2);
      v193[10] = *(v36 - 2);
      *(v4 + 2048) = *(v36 - 6);
      *(v4 + 2064) = *(v36 - 5);
      memcpy(v194, v36, 0x198uLL);
      sub_2529353AC(v196, v195);
      sub_2529353AC(v196, v195);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2529F82D8(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_2529F82D8((v38 > 1), v39 + 1, 1, v37);
      }

      sub_252935408(v196);
      *(v37 + 2) = v39 + 1;
      v37[v39 + 32] = v5;
      *(v4 + 1536) = *(v4 + 2048);
      *(v4 + 1568) = *(v4 + 2080);
      *(v4 + 1584) = *(v4 + 2096);
      *(v4 + 1600) = *(v4 + 2112);
      v192[10] = v193[10];
      *(v4 + 1552) = *(v4 + 2064);
      memcpy(v195, v194, 0x198uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2529F7FB0(0, *(v19 + 16) + 1, 1, v19);
      }

      v41 = *(v19 + 16);
      v40 = *(v19 + 24);
      if (v41 >= v40 >> 1)
      {
        v19 = sub_2529F7FB0((v40 > 1), v41 + 1, 1, v19);
      }

      ++v2;
      *(v19 + 16) = v41 + 1;
      v42 = v19 + 504 * v41;
      v43 = *(v4 + 1552);
      *(v42 + 32) = *(v4 + 1536);
      *(v42 + 48) = v43;
      v44 = *(v4 + 1568);
      v45 = *(v4 + 1600);
      v46 = v192[10];
      *(v42 + 80) = *(v4 + 1584);
      *(v42 + 96) = v45;
      *(v42 + 64) = v44;
      *(v42 + 112) = v46;
      *(v42 + 120) = v37;
      memcpy((v42 + 128), v195, 0x198uLL);
      v36 = (v36 + 504);
      if (v35 == v2)
      {
        goto LABEL_52;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      v19 = sub_2529F8B34(0, *(v19 + 16) + 1, 1, v19);
LABEL_17:
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_2529F8B34((v20 > 1), v21 + 1, 1, v19);
      }

      v22 = v199[0];
      *(v19 + 16) = v21 + 1;
      *(v19 + v21 + 32) = v5;
      *(v2 + 32) = v19;
      v23 = *(v22 + 16);
      if (!v23)
      {
        break;
      }

      v2 = 0;
      v24 = (v22 + 72);
      v19 = MEMORY[0x277D84F90];
      while (v2 < *(v22 + 16))
      {
        memcpy(v198, v24 - 40, sizeof(v198));
        v25 = v198[4];
        *(v4 + 3072) = *(v24 - 40);
        *(v4 + 3088) = *(v24 - 24);
        memcpy(v196, v24, 0x1D0uLL);
        sub_2529353AC(v198, v197);
        sub_2529353AC(v198, v197);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2529F8B34(0, *(v25 + 2) + 1, 1, v25);
        }

        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v27 >= v26 >> 1)
        {
          v25 = sub_2529F8B34((v26 > 1), v27 + 1, 1, v25);
        }

        sub_252935408(v198);
        *(v25 + 2) = v27 + 1;
        v25[v27 + 32] = v5;
        *(v4 + 2560) = *(v4 + 3072);
        *(v4 + 2576) = *(v4 + 3088);
        memcpy(v197, v196, 0x1D0uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2529F7FB0(0, *(v19 + 16) + 1, 1, v19);
        }

        v29 = *(v19 + 16);
        v28 = *(v19 + 24);
        if (v29 >= v28 >> 1)
        {
          v19 = sub_2529F7FB0((v28 > 1), v29 + 1, 1, v19);
        }

        ++v2;
        *(v19 + 16) = v29 + 1;
        v30 = v19 + 504 * v29;
        v31 = *(v4 + 2576);
        *(v30 + 32) = *(v4 + 2560);
        *(v30 + 48) = v31;
        *(v30 + 64) = v25;
        memcpy((v30 + 72), v197, 0x1D0uLL);
        v24 += 504;
        if (v23 == v2)
        {
          goto LABEL_33;
        }
      }

LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
    }

    v19 = MEMORY[0x277D84F90];
LABEL_33:

    v2 = v182;
    v3 = v183;
    *v182 = v19;
  }

  memcpy(v195, v2, sizeof(v195));
  memcpy(v194, v2, 0x1F8uLL);
  sub_2529353AC(v195, v196);
  sub_252CF6614(v193);
  memcpy(v196, v194, sizeof(v196));
  sub_252935408(v196);
  LODWORD(v5) = *(v4 + 2048);
  if (v5 != 66)
  {
    v47 = v195[10];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_2529F82EC(0, *(v47 + 2) + 1, 1, v47);
    }

    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_2529F82EC((v48 > 1), v49 + 1, 1, v47);
    }

    v50 = v195[0];
    *(v47 + 2) = v49 + 1;
    v47[v49 + 32] = v5;
    *(v2 + 80) = v47;
    v51 = *(v50 + 16);
    if (v51)
    {
      v2 = 0;
      v52 = (v50 + 120);
      v19 = MEMORY[0x277D84F90];
      do
      {
        if (v2 >= *(v50 + 16))
        {
          goto LABEL_185;
        }

        memcpy(v194, v52 - 88, 0x1F8uLL);
        v53 = v194[10];
        *(v4 + 1040) = *(v52 - 72);
        *(v4 + 1056) = *(v52 - 56);
        *(v4 + 1072) = *(v52 - 40);
        *(v4 + 1088) = *(v52 - 24);
        *(v4 + 1024) = *(v52 - 88);
        memcpy(v192, v52, 0x1A0uLL);
        sub_2529353AC(v194, v193);
        sub_2529353AC(v194, v193);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_2529F82EC(0, *(v53 + 2) + 1, 1, v53);
        }

        v55 = *(v53 + 2);
        v54 = *(v53 + 3);
        if (v55 >= v54 >> 1)
        {
          v53 = sub_2529F82EC((v54 > 1), v55 + 1, 1, v53);
        }

        sub_252935408(v194);
        *(v53 + 2) = v55 + 1;
        v53[v55 + 32] = v5;
        v56 = *(v4 + 1040);
        *(v4 + 512) = *(v4 + 1024);
        *(v4 + 528) = v56;
        v57 = *(v4 + 1072);
        *(v4 + 544) = *(v4 + 1056);
        *(v4 + 560) = v57;
        *(v4 + 576) = *(v4 + 1088);
        memcpy(v193, v192, 0x1A0uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2529F7FB0(0, *(v19 + 16) + 1, 1, v19);
        }

        v59 = *(v19 + 16);
        v58 = *(v19 + 24);
        if (v59 >= v58 >> 1)
        {
          v19 = sub_2529F7FB0((v58 > 1), v59 + 1, 1, v19);
        }

        ++v2;
        *(v19 + 16) = v59 + 1;
        v60 = v19 + 504 * v59;
        *(v60 + 32) = *(v4 + 512);
        v61 = *(v4 + 528);
        v62 = *(v4 + 544);
        v63 = *(v4 + 576);
        *(v60 + 80) = *(v4 + 560);
        *(v60 + 96) = v63;
        *(v60 + 48) = v61;
        *(v60 + 64) = v62;
        *(v60 + 112) = v53;
        memcpy((v60 + 120), v193, 0x1A0uLL);
        v52 += 504;
      }

      while (v51 != v2);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v2 = v182;
    v3 = v183;
    *v182 = v19;
  }

  memcpy(v193, v2, 0x1F8uLL);
  memcpy(v192, v2, 0x1F8uLL);
  sub_2529353AC(v193, v194);
  v64 = sub_252CF68D0();
  memcpy(v194, v192, 0x1F8uLL);
  sub_252935408(v194);
  if (v64 != 2)
  {
    v65 = v193[0];
    LOBYTE(v5) = v64 & 1;
    *(v2 + 387) = v64 & 1;
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = 0;
      v19 = MEMORY[0x277D84F90];
      v2 = v65;
      do
      {
        if (v67 >= *(v65 + 16))
        {
          goto LABEL_186;
        }

        memcpy(v192, (v2 + 32), 0x1F8uLL);
        memcpy(__dst, (v2 + 32), 0x183uLL);
        *(v4 + 64) = *(v2 + 484);
        *(v4 + 80) = *(v2 + 500);
        *(v4 + 96) = *(v2 + 516);
        LODWORD(v189[14]) = *(v2 + 532);
        *v4 = *(v2 + 420);
        *(v4 + 16) = *(v2 + 436);
        *(v4 + 32) = *(v2 + 452);
        *(v4 + 48) = *(v2 + 468);
        sub_2529353AC(v192, v191);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2529F7FB0(0, *(v19 + 16) + 1, 1, v19);
        }

        v69 = *(v19 + 16);
        v68 = *(v19 + 24);
        if (v69 >= v68 >> 1)
        {
          v19 = sub_2529F7FB0((v68 > 1), v69 + 1, 1, v19);
        }

        ++v67;
        *(v19 + 16) = v69 + 1;
        v70 = v19 + 504 * v69;
        memcpy((v70 + 32), __dst, 0x183uLL);
        *(v70 + 419) = v5;
        v71 = *(v4 + 48);
        v73 = *v4;
        v72 = *(v4 + 16);
        *(v70 + 452) = *(v4 + 32);
        *(v70 + 468) = v71;
        *(v70 + 420) = v73;
        *(v70 + 436) = v72;
        v75 = *(v4 + 80);
        v74 = *(v4 + 96);
        v76 = *(v4 + 64);
        *(v70 + 532) = v189[14];
        *(v70 + 500) = v75;
        *(v70 + 516) = v74;
        *(v70 + 484) = v76;
        v2 += 504;
      }

      while (v66 != v67);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v2 = v182;
    v3 = v183;
    *v182 = v19;
  }

  memcpy(v191, v2, 0x1F8uLL);
  memcpy(__dst, v2, 0x1F8uLL);
  sub_2529353AC(v191, v192);
  v77 = sub_252CF6D5C(v3);
  memcpy(v192, __dst, 0x1F8uLL);
  sub_252935408(v192);
  v78 = *(sub_252B680FC() + 72);

  if (v78 == 1)
  {
    v79 = *(sub_252B680FC() + 112);

    if ((v79 & 1) == 0)
    {
      goto LABEL_156;
    }
  }

  v19 = 0;
  v81 = sub_252D06E64(v80, sub_252D071AC, sub_252D071AC);

  v172 = sub_252D06E64(v77, sub_252D06FD4, sub_252D06FD4);

  v82 = 0;
  v83 = v81 + 64;
  v84 = 1 << *(v81 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v4 = v85 & *(v81 + 64);
  v86 = (v84 + 63) >> 6;
  v179 = v81 + 64;
  v180 = v81;
  v178 = v86;
  if (v4)
  {
    goto LABEL_92;
  }

  while (1)
  {
LABEL_93:
    v5 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    if (v5 >= v86)
    {
      break;
    }

    v4 = *(v83 + 8 * v5);
    ++v82;
    if (v4)
    {
      while (1)
      {
        v87 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v88 = v87 | (v5 << 6);
        v89 = (*(v81 + 48) + 16 * v88);
        v91 = *v89;
        v90 = v89[1];
        v92 = *(*(v81 + 56) + 8 * v88);
        v93 = v2;
        v94 = *v2;
        v95 = *(v94 + 16);
        if (v95)
        {
          _s7BuilderCMa_1();

          v96 = v95 - 1;
          v19 = 32;
          v97 = MEMORY[0x277D84F90];
          while (1)
          {
            memcpy(__src, (v94 + v19), sizeof(__src));
            swift_allocObject();
            sub_252E1E238();
            memcpy(v185, __src, sizeof(v185));
            sub_2529353AC(__src, v184);
            sub_252E1EBE8(v185);

            sub_252E1E4F8(v186);

            sub_252CFD198(v92);
            memcpy(v188, v186, sizeof(v188));
            sub_252935408(v188);
            memcpy(v186, v189, sizeof(v186));
            memcpy(__dst, v189, 0x1F8uLL);
            sub_2529353AC(__dst, v185);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = sub_2529F7FB0(0, *(v97 + 2) + 1, 1, v97);
            }

            v99 = *(v97 + 2);
            v98 = *(v97 + 3);
            if (v99 >= v98 >> 1)
            {
              v97 = sub_2529F7FB0((v98 > 1), v99 + 1, 1, v97);
            }

            sub_252935408(__src);
            memcpy(v185, v186, sizeof(v185));
            sub_252935408(v185);
            *(v97 + 2) = v99 + 1;
            memcpy(&v97[504 * v99 + 32], __dst, 0x1F8uLL);
            if (!v96)
            {
              break;
            }

            --v96;
            v19 += 504;
          }

          v2 = v182;
          *v182 = v97;
          v82 = v5;
          v83 = v179;
          v81 = v180;
          v86 = v178;
          if (!v4)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v19 = v90;

          sub_252CF8794(v100);

          v82 = v5;
          v2 = v93;
          if (!v4)
          {
            goto LABEL_93;
          }
        }

LABEL_92:
        v5 = v82;
      }
    }
  }

  v101 = 0;
  v102 = v172 + 64;
  v103 = 1 << *(v172 + 32);
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  else
  {
    v104 = -1;
  }

  v5 = v104 & *(v172 + 64);
  v105 = (v103 + 63) >> 6;
  v169 = v105;
  if (v5)
  {
    goto LABEL_110;
  }

  do
  {
LABEL_111:
    v106 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      goto LABEL_183;
    }

    if (v106 >= v105)
    {

      v147 = sub_252DF93D8(*v2);

      *v2 = v147;
      return result;
    }

    v5 = *(v102 + 8 * v106);
    ++v101;
  }

  while (!v5);
  while (1)
  {
    v170 = v106;
    v107 = __clz(__rbit64(v5)) | (v106 << 6);
    v108 = (*(v172 + 48) + 16 * v107);
    v109 = *v108;
    v4 = v108[1];
    v110 = *(*(v172 + 56) + 8 * v107);

    v112 = sub_252D078FC(v111);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v171 = (v5 - 1) & v5;
    v113 = sub_252E36AD4();
    __swift_project_value_buffer(v113, qword_27F544CB8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0x2065646F4ELL;
    __dst[1] = 0xE500000000000000;
    MEMORY[0x2530AD570](v109, v4);
    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E92FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5408A0, &qword_252E3DF08);
    sub_252D07C78();
    v114 = sub_252E36E54();
    MEMORY[0x2530AD570](v114);

    v19 = __dst[1];
    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000077, 0x8000000252E92DE0);

    v5 = v112 + 64;
    v181 = v4;
    v175 = *(*v2 + 16);
    if (v175)
    {
      break;
    }

    v4 = 0;
    v130 = 1 << *(v112 + 32);
    v131 = *(v112 + 64);
    if (v130 < 64)
    {
      v132 = ~(-1 << v130);
    }

    else
    {
      v132 = -1;
    }

    v133 = v132 & v131;
    v134 = (v130 + 63) >> 6;
    v135 = MEMORY[0x277D84F90];
    if ((v132 & v131) == 0)
    {
      goto LABEL_141;
    }

    do
    {
      v177 = v135;
LABEL_145:
      v137 = (v4 << 9) | (8 * __clz(__rbit64(v133)));
      v138 = *(v112 + 48) + v137;
      v139 = *v138;
      v140 = *(v138 + 4);
      v141 = *(*(v112 + 56) + v137);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;

      sub_252E379F4();

      __dst[0] = 0x2070756F7247;
      __dst[1] = 0xE600000000000000;
      LODWORD(v189[0]) = v139;
      BYTE4(v189[0]) = v140;
      v142 = sub_252E36F94();
      MEMORY[0x2530AD570](v142);

      MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E93010);
      v143 = sub_252E34804();
      v144 = MEMORY[0x2530AD730](v141, v143);
      MEMORY[0x2530AD570](v144);

      sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000077, 0x8000000252E92DE0);

      v145 = *v2;
      memcpy(&__dst[1], (v2 + 8), 0x1F0uLL);
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();
      __dst[0] = v145;
      sub_252E1EBE8(__dst);

      sub_252E1E4F8(__src);

      sub_252CFD198(v141);

      memcpy(v188, __src, sizeof(v188));
      sub_252935408(v188);
      memcpy(__src, v189, sizeof(__src));
      memcpy(__dst, v189, 0x1F8uLL);
      sub_2529353AC(__dst, v186);
      v135 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = sub_2529F7FB0(0, *(v177 + 2) + 1, 1, v177);
      }

      v19 = *(v135 + 2);
      v146 = *(v135 + 3);
      if (v19 >= v146 >> 1)
      {
        v135 = sub_2529F7FB0((v146 > 1), v19 + 1, 1, v135);
      }

      v133 &= v133 - 1;
      memcpy(v186, __src, sizeof(v186));
      sub_252935408(v186);
      *(v135 + 2) = v19 + 1;
      memcpy(&v135[504 * v19 + 32], __dst, 0x1F8uLL);
    }

    while (v133);
    while (1)
    {
LABEL_141:
      v136 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_181;
      }

      if (v136 >= v134)
      {
        break;
      }

      v133 = *(v5 + 8 * v136);
      ++v4;
      if (v133)
      {
        v177 = v135;
        v4 = v136;
        goto LABEL_145;
      }
    }

    *v2 = v135;
LABEL_152:
    v101 = v170;
    v5 = v171;
    v105 = v169;
    v102 = v172 + 64;
    if (!v171)
    {
      goto LABEL_111;
    }

LABEL_110:
    v106 = v101;
  }

  v115 = 0;
  v174 = *v2 + 32;
  v19 = MEMORY[0x277D84F90];
  v173 = *v2;
LABEL_118:
  memcpy(__dst, (v174 + 504 * v115), 0x1F8uLL);
  v176 = v115 + 1;
  v116 = 1 << *(v112 + 32);
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  else
  {
    v117 = -1;
  }

  v77 = v117 & *(v112 + 64);
  sub_2529353AC(__dst, v189);

  v118 = 0;
  if (v77)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v119 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      break;
    }

    if (v119 >= ((v116 + 63) >> 6))
    {
      sub_252935408(__dst);

      v115 = v176;
      if (v176 == v175)
      {

        *v2 = v19;
        goto LABEL_152;
      }

      if (v176 >= *(v173 + 16))
      {
        goto LABEL_180;
      }

      goto LABEL_118;
    }

    v77 = *(v5 + 8 * v119);
    ++v118;
    if (v77)
    {
      v118 = v119;
      do
      {
LABEL_126:
        v120 = (v118 << 9) | (8 * __clz(__rbit64(v77)));
        v121 = *(v112 + 48) + v120;
        v122 = *v121;
        v123 = *(v121 + 4);
        v124 = *(*(v112 + 56) + v120);
        v189[0] = 0;
        v189[1] = 0xE000000000000000;

        sub_252E379F4();

        v189[0] = 0x2070756F7247;
        v189[1] = 0xE600000000000000;
        v188[0] = v122;
        LOBYTE(v188[1]) = v123;
        v125 = sub_252E36F94();
        MEMORY[0x2530AD570](v125);

        MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E93010);
        v126 = sub_252E34804();
        v127 = MEMORY[0x2530AD730](v124, v126);
        MEMORY[0x2530AD570](v127);

        sub_252CC3D90(v189[0], v189[1], 0xD000000000000077, 0x8000000252E92DE0);

        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        memcpy(v189, __dst, 0x1F8uLL);
        sub_252E1EBE8(v189);

        sub_252E1E4F8(v186);

        v4 = v181;
        v2 = v182;
        sub_252CFD198(v124);

        memcpy(__src, v186, sizeof(__src));
        sub_252935408(__src);
        memcpy(v186, v188, sizeof(v186));
        memcpy(v189, v188, 0x1F8uLL);
        sub_2529353AC(v189, v185);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2529F7FB0(0, *(v19 + 16) + 1, 1, v19);
        }

        v129 = *(v19 + 16);
        v128 = *(v19 + 24);
        if (v129 >= v128 >> 1)
        {
          v19 = sub_2529F7FB0((v128 > 1), v129 + 1, 1, v19);
        }

        v77 &= v77 - 1;
        memcpy(v185, v186, sizeof(v185));
        sub_252935408(v185);
        *(v19 + 16) = v129 + 1;
        memcpy((v19 + 504 * v129 + 32), v189, 0x1F8uLL);
      }

      while (v77);
      continue;
    }
  }

  __break(1u);
LABEL_156:
  if (qword_27F53F4F8 != -1)
  {
LABEL_194:
    swift_once();
  }

  v149 = sub_252E36AD4();
  __swift_project_value_buffer(v149, qword_27F544D90);
  sub_252CC4A5C(0xD00000000000004ELL, 0x8000000252E93030, 0, 0xD000000000000077, 0x8000000252E92DE0);
  v5 = v77 + 64;
  v150 = 1 << *(v77 + 32);
  v151 = -1;
  if (v150 < 64)
  {
    v151 = ~(-1 << v150);
  }

  v2 = v151 & *(v77 + 64);
  v4 = (v150 + 63) >> 6;

  v152 = 0;
  v183 = 0;
  v19 = MEMORY[0x277D84F90];
  while (v2)
  {
LABEL_166:
    v154 = (v152 << 9) | (8 * __clz(__rbit64(v2)));
    v155 = *(*(v77 + 56) + v154);
    v156 = *(v155 + 16);
    v157 = *(v19 + 16);
    v158 = v157 + v156;
    if (__OFADD__(v157, v156))
    {
      goto LABEL_188;
    }

    v159 = *(*(v77 + 56) + v154);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v158 > *(v19 + 24) >> 1)
    {
      if (v157 <= v158)
      {
        v161 = v157 + v156;
      }

      else
      {
        v161 = v157;
      }

      v19 = sub_2529F85CC(isUniquelyReferenced_nonNull_native, v161, 1, v19);
    }

    v2 &= v2 - 1;
    if (*(v155 + 16))
    {
      v162 = (*(v19 + 24) >> 1) - *(v19 + 16);
      v163 = *(sub_252E34804() - 8);
      if (v162 < v156)
      {
        __break(1u);
        goto LABEL_192;
      }

      v164 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v165 = *(v163 + 72);
      swift_arrayInitWithCopy();

      if (v156)
      {
        v166 = *(v19 + 16);
        v167 = __OFADD__(v166, v156);
        v168 = v166 + v156;
        if (v167)
        {
          __break(1u);
          goto LABEL_194;
        }

        *(v19 + 16) = v168;
      }
    }

    else
    {

      if (v156)
      {
        goto LABEL_189;
      }
    }
  }

  while (1)
  {
    v153 = v152 + 1;
    if (__OFADD__(v152, 1))
    {
      goto LABEL_187;
    }

    if (v153 >= v4)
    {
      break;
    }

    v2 = *(v5 + 8 * v153);
    ++v152;
    if (v2)
    {
      v152 = v153;
      goto LABEL_166;
    }
  }

  sub_252CF7A04(v19);
}

uint64_t sub_252CF555C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34[-v5];
  v7 = sub_252E34544();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v36 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v37 = &v34[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34[-v15];
  v17 = sub_252E34E84();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v34[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v34[-v23];
  v38 = a1;
  if (sub_252E34A14())
  {
    sub_252E34E74();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      sub_25293847C(v16, &qword_27F545548, &qword_252E5B5D8);
    }

    else
    {
      (*(v18 + 32))(v24, v16, v17);
      (*(v18 + 104))(v22, *MEMORY[0x277D5EA28], v17);
      sub_252D07DD4(&qword_27F545560, MEMORY[0x277D5EA60]);
      sub_252E371F4();
      sub_252E371F4();
      if (v42 == v40 && v43 == v41)
      {

        v30 = *(v18 + 8);
        v30(v22, v17);
        v30(v24, v17);

        goto LABEL_13;
      }

      v35 = sub_252E37DB4();

      v33 = *(v18 + 8);
      v33(v22, v17);
      v33(v24, v17);

      if (v35)
      {
        goto LABEL_17;
      }
    }
  }

  sub_252E34534();
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v27 = v37;
    (*(v8 + 32))(v37, v6, v7);
    v28 = v36;
    (*(v8 + 104))(v36, *MEMORY[0x277D5E230], v7);
    sub_252D07DD4(&qword_27F545558, MEMORY[0x277D5E248]);
    sub_252E371F4();
    sub_252E371F4();
    if (v42 != v40 || v43 != v41)
    {
      v31 = sub_252E37DB4();
      v32 = *(v8 + 8);
      v32(v28, v7);
      v32(v27, v7);

      if ((v31 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_17:
      v26 = 2;
      goto LABEL_18;
    }

    v29 = *(v8 + 8);
    v29(v28, v7);
    v29(v27, v7);

LABEL_13:

    goto LABEL_17;
  }

  result = sub_25293847C(v6, &qword_27F540288, &qword_252E41DE0);
LABEL_6:
  v26 = 5;
LABEL_18:
  *v39 = v26;
  return result;
}

uint64_t sub_252CF5B00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = sub_252E34544();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v80 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C20, &unk_252E5B5E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v73[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v73[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v76 = &v73[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x28223BE20](v17);
  v83 = &v73[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v79 = &v73[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v77 = &v73[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v84 = &v73[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v85 = &v73[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v73[-v30];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v73[-v33];
  MEMORY[0x28223BE20](v32);
  v36 = &v73[-v35];
  v92 = a1;
  sub_252E34534();
  v37 = *MEMORY[0x277D5E238];
  v38 = v4[13];
  v91 = v4 + 13;
  v89 = v38;
  v38(v34, v37, v3);
  v39 = v4[7];
  v90 = v4 + 7;
  v88 = v39;
  v39(v34, 0, 1, v3);
  v82 = v7;
  v40 = *(v7 + 48);
  sub_252938414(v36, v14, &qword_27F540288, &qword_252E41DE0);
  sub_252938414(v34, &v14[v40], &qword_27F540288, &qword_252E41DE0);
  v87 = v4;
  v41 = v4[6];
  if (v41(v14, 1, v3) != 1)
  {
    sub_252938414(v14, v31, &qword_27F540288, &qword_252E41DE0);
    if (v41(&v14[v40], 1, v3) != 1)
    {
      v55 = v87;
      v56 = v87[4];
      v75 = v41;
      v57 = v80;
      v56(v80, &v14[v40], v3);
      sub_252D07DD4(&qword_27F541C28, MEMORY[0x277D5E248]);
      v74 = sub_252E36EF4();
      v58 = v55[1];
      v59 = v57;
      v41 = v75;
      v58(v59, v3);
      sub_25293847C(v34, &qword_27F540288, &qword_252E41DE0);
      sub_25293847C(v36, &qword_27F540288, &qword_252E41DE0);
      v58(v31, v3);
      result = sub_25293847C(v14, &qword_27F540288, &qword_252E41DE0);
      if (v74)
      {
        v43 = 2;
        goto LABEL_26;
      }

LABEL_7:
      v44 = v85;
      sub_252E34534();
      v45 = v84;
      v89(v84, *MEMORY[0x277D5E240], v3);
      v88(v45, 0, 1, v3);
      v46 = v81;
      v47 = v82;
      v48 = *(v82 + 48);
      sub_252938414(v44, v81, &qword_27F540288, &qword_252E41DE0);
      sub_252938414(v45, &v46[v48], &qword_27F540288, &qword_252E41DE0);
      if (v41(v46, 1, v3) == 1)
      {
        sub_25293847C(v45, &qword_27F540288, &qword_252E41DE0);
        sub_25293847C(v44, &qword_27F540288, &qword_252E41DE0);
        v49 = v41(&v46[v48], 1, v3);
        v50 = v83;
        if (v49 == 1)
        {
          result = sub_25293847C(v46, &qword_27F540288, &qword_252E41DE0);
          v43 = 3;
          goto LABEL_26;
        }
      }

      else
      {
        v51 = v77;
        sub_252938414(v46, v77, &qword_27F540288, &qword_252E41DE0);
        if (v41(&v46[v48], 1, v3) != 1)
        {
          v61 = v87;
          v62 = v80;
          (v87[4])(v80, &v46[v48], v3);
          sub_252D07DD4(&qword_27F541C28, MEMORY[0x277D5E248]);
          LODWORD(v75) = sub_252E36EF4();
          v63 = v41;
          v64 = v46;
          v65 = v61[1];
          v65(v62, v3);
          sub_25293847C(v84, &qword_27F540288, &qword_252E41DE0);
          sub_25293847C(v85, &qword_27F540288, &qword_252E41DE0);
          v65(v51, v3);
          v66 = v64;
          v41 = v63;
          result = sub_25293847C(v66, &qword_27F540288, &qword_252E41DE0);
          v50 = v83;
          v52 = v79;
          if (v75)
          {
            v43 = 3;
            goto LABEL_26;
          }

LABEL_13:
          sub_252E34534();
          v89(v50, *MEMORY[0x277D5E230], v3);
          v88(v50, 0, 1, v3);
          v53 = *(v47 + 48);
          v54 = v78;
          sub_252938414(v52, v78, &qword_27F540288, &qword_252E41DE0);
          sub_252938414(v50, &v54[v53], &qword_27F540288, &qword_252E41DE0);
          if (v41(v54, 1, v3) == 1)
          {
            sub_25293847C(v50, &qword_27F540288, &qword_252E41DE0);
            sub_25293847C(v52, &qword_27F540288, &qword_252E41DE0);
            if (v41(&v54[v53], 1, v3) == 1)
            {
              result = sub_25293847C(v54, &qword_27F540288, &qword_252E41DE0);
LABEL_25:
              v43 = 0;
              goto LABEL_26;
            }
          }

          else
          {
            v60 = v76;
            sub_252938414(v54, v76, &qword_27F540288, &qword_252E41DE0);
            if (v41(&v54[v53], 1, v3) != 1)
            {
              v67 = v52;
              v68 = v87;
              v69 = &v54[v53];
              v70 = v80;
              (v87[4])(v80, v69, v3);
              sub_252D07DD4(&qword_27F541C28, MEMORY[0x277D5E248]);
              v71 = sub_252E36EF4();
              v72 = v68[1];
              v72(v70, v3);
              sub_25293847C(v50, &qword_27F540288, &qword_252E41DE0);
              sub_25293847C(v67, &qword_27F540288, &qword_252E41DE0);
              v72(v60, v3);
              result = sub_25293847C(v54, &qword_27F540288, &qword_252E41DE0);
              if (v71)
              {
                goto LABEL_25;
              }

LABEL_21:
              v43 = 21;
              goto LABEL_26;
            }

            sub_25293847C(v50, &qword_27F540288, &qword_252E41DE0);
            sub_25293847C(v52, &qword_27F540288, &qword_252E41DE0);
            (v87[1])(v60, v3);
          }

          result = sub_25293847C(v54, &qword_27F541C20, &unk_252E5B5E0);
          goto LABEL_21;
        }

        sub_25293847C(v84, &qword_27F540288, &qword_252E41DE0);
        sub_25293847C(v85, &qword_27F540288, &qword_252E41DE0);
        (v87[1])(v51, v3);
        v50 = v83;
      }

      sub_25293847C(v46, &qword_27F541C20, &unk_252E5B5E0);
      v52 = v79;
      goto LABEL_13;
    }

    sub_25293847C(v34, &qword_27F540288, &qword_252E41DE0);
    sub_25293847C(v36, &qword_27F540288, &qword_252E41DE0);
    (v87[1])(v31, v3);
LABEL_6:
    sub_25293847C(v14, &qword_27F541C20, &unk_252E5B5E0);
    goto LABEL_7;
  }

  sub_25293847C(v34, &qword_27F540288, &qword_252E41DE0);
  sub_25293847C(v36, &qword_27F540288, &qword_252E41DE0);
  if (v41(&v14[v40], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  result = sub_25293847C(v14, &qword_27F540288, &qword_252E41DE0);
  v43 = 2;
LABEL_26:
  *v86 = v43;
  return result;
}

uint64_t sub_252CF6614@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_252E34804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  memcpy(v30, v1, sizeof(v30));
  result = sub_252D05234();
  v15 = result;
  v29 = *(result + 16);
  if (v29)
  {
    v24 = v11;
    v25 = v13;
    v26 = a1;
    v16 = 0;
    v28 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = 0x8000000252E7BB10;
    while (v16 < *(v15 + 16))
    {
      (*(v4 + 16))(v8, v28 + *(v4 + 72) * v16, v3);
      v18 = sub_252E347F4();
      if (v19)
      {
        if (v18 == 0xD000000000000012 && v19 == v27)
        {

LABEL_10:

          v20 = *(v4 + 32);
          v21 = v24;
          v20(v24, v8, v3);
          v22 = v25;
          v20(v25, v21, v3);
          v23._countAndFlagsBits = sub_252E347E4();
          AttributeSemantic.init(rawValue:)(v23);
          return (*(v4 + 8))(v22, v3);
        }

        v17 = sub_252E37DB4();

        if (v17)
        {
          goto LABEL_10;
        }
      }

      ++v16;
      result = (*(v4 + 8))(v8, v3);
      if (v29 == v16)
      {

        a1 = v26;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    *a1 = 66;
  }

  return result;
}

uint64_t sub_252CF68D0()
{
  v0 = sub_252E34E84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545540, &qword_252E5B5D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  if (sub_252E34A14())
  {
    sub_252E34E74();
  }

  else
  {
    (*(v1 + 56))(v17, 1, 1, v0);
  }

  (*(v1 + 104))(v15, *MEMORY[0x277D5EA58], v0);
  (*(v1 + 56))(v15, 0, 1, v0);
  v18 = *(v4 + 48);
  sub_252938414(v17, v7, &qword_27F545548, &qword_252E5B5D8);
  sub_252938414(v15, &v7[v18], &qword_27F545548, &qword_252E5B5D8);
  v19 = *(v1 + 48);
  if (v19(v7, 1, v0) == 1)
  {
    sub_25293847C(v15, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v17, &qword_27F545548, &qword_252E5B5D8);
    if (v19(&v7[v18], 1, v0) == 1)
    {
      sub_25293847C(v7, &qword_27F545548, &qword_252E5B5D8);
      return 1;
    }

    goto LABEL_9;
  }

  sub_252938414(v7, v12, &qword_27F545548, &qword_252E5B5D8);
  if (v19(&v7[v18], 1, v0) == 1)
  {
    sub_25293847C(v15, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v17, &qword_27F545548, &qword_252E5B5D8);
    (*(v1 + 8))(v12, v0);
LABEL_9:
    sub_25293847C(v7, &qword_27F545540, &qword_252E5B5D0);
    return 2;
  }

  v21 = v25;
  (*(v1 + 32))(v25, &v7[v18], v0);
  sub_252D07DD4(&qword_27F545550, MEMORY[0x277D5EA60]);
  v22 = sub_252E36EF4();
  v23 = *(v1 + 8);
  v23(v21, v0);
  sub_25293847C(v15, &qword_27F545548, &qword_252E5B5D8);
  sub_25293847C(v17, &qword_27F545548, &qword_252E5B5D8);
  v23(v12, v0);
  sub_25293847C(v7, &qword_27F545548, &qword_252E5B5D8);
  if (v22)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_252CF6D5C(uint64_t a1)
{
  v77 = sub_252E36CA4();
  v2 = *(v77 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v77);
  v76 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_252E36D04();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v75);
  v74 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_252E32E84();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252E34644();
  v12 = sub_252E359F4();
  if (!*(v12 + 16) || (v13 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v14 & 1) == 0))
  {

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v54 = sub_252E36AD4();
    __swift_project_value_buffer(v54, qword_27F544D90);
    aBlock = 0;
    v83 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E933D0);
    v88 = a1;
    sub_252E34554();
    sub_252E37AE4();
    sub_252CC3D90(aBlock, v83, 0xD000000000000077, 0x8000000252E92DE0);

    v16 = sub_252CC7674(MEMORY[0x277D84F90]);

    return v16;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = sub_252CC7674(MEMORY[0x277D84F90]);
  if (v15 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_43:

    return v16;
  }

LABEL_5:
  v78 = v16;
  v55[1] = v11;
  if (result >= 1)
  {
    v18 = 0;
    v70 = 0x8000000252E72DC0;
    v71 = v15 & 0xC000000000000001;
    v61 = (v8 + 8);
    v60 = "No names attributes from ";
    v59 = " name of the usoValue ";
    v19 = "Checking for RVC: ";
    v65 = ". Setting random string: ";
    v69 = &v84;
    v68 = (v2 + 8);
    v67 = (v5 + 8);
    v62 = "fiers for node: ";
    v57 = 0x8000000252E934E0;
    v56 = "sFromEntitySpans ";
    v58 = "rUserEntityNames(_:)";
    v66 = xmmword_252E41C50;
    v20 = &unk_2814B0000;
    v72 = result;
    v73 = v15;
    v79 = "Checking for RVC: ";
    while (1)
    {
      if (v71)
      {
        v24 = MEMORY[0x2530ADF00](v18, v15);
      }

      else
      {
        v24 = *(v15 + 8 * v18 + 32);
      }

      v25 = sub_252E358E4();
      if (v26)
      {
        v27 = v25;
        v28 = v26;
      }

      else
      {
        v29 = v63;
        sub_252E32E74();
        v27 = sub_252E32E24();
        v28 = v30;
        (*v61)(v29, v64);
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_27F544D90);
        aBlock = 0;
        v83 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000026, v60 | 0x8000000000000000);
        v88 = v24;
        sub_252E35944();
        sub_252E37AE4();
        MEMORY[0x2530AD570](0xD000000000000019, v59 | 0x8000000000000000);
        MEMORY[0x2530AD570](v27, v28);
        sub_252CC4050(aBlock, v83, 0xD000000000000077, v19 | 0x8000000000000000, 0xD000000000000034, v65 | 0x8000000000000000, 1645);
      }

      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v32 = v20[440];
      v80 = v27;
      v81 = v28;
      if (v32)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v32 = sub_252D7EAE8();
        v33 = v20[440];
        v20[440] = v32;

        sub_252D7E92C();
      }

      sub_252E37614();
      v34 = *(v32 + 16);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      *(v35 + 24) = v66;
      *(v35 + 40) = v70;
      *(v35 + 48) = sub_252979724;
      *(v35 + 56) = 0;
      v86 = sub_252990E7C;
      v87 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v84 = sub_252AD686C;
      v85 = &block_descriptor_21;
      v36 = _Block_copy(&aBlock);

      v37 = v74;
      sub_252E36CD4();
      v88 = MEMORY[0x277D84F90];
      sub_252D07DD4(qword_2814B0298, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529905D0();
      v39 = v76;
      v38 = v77;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v37, v39, v36);
      _Block_release(v36);
      (*v68)(v39, v38);
      (*v67)(v37, v75);

      if (qword_27F53F220 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v40 = qword_27F5407C0;
      v15 = v73;
      if (qword_27F5407C0)
      {
      }

      else
      {
        v41 = type metadata accessor for ApplicationContext();
        v42 = *(v41 + 48);
        v43 = *(v41 + 52);
        swift_allocObject();
        v40 = sub_252978E58();
        qword_27F5407C0 = v40;
      }

      v20 = &unk_2814B0000;
      sub_252E37614();
      sub_252929E74((v40 + 288), &aBlock);

      v44 = v85;
      v45 = v86;
      __swift_project_boxed_opaque_existential_1(&aBlock, v85);
      v46 = (*(v45 + 11))(v44, v45);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v46)
      {
        v19 = v79;
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v47 = sub_252E36AD4();
        __swift_project_value_buffer(v47, qword_27F544D90);
        sub_252CC3D90(0xD000000000000027, v62 | 0x8000000000000000, 0xD000000000000077, v19 | 0x8000000000000000);
        sub_252E35914();
        sub_252E34B04();
        v48 = sub_252E34AE4();

        v49 = sub_252E35934();
        v21 = sub_252A491E4(v48, v49, v80, v81);

        if (*(v21 + 16))
        {
          aBlock = 0;
          v83 = 0xE000000000000000;

          sub_252E379F4();

          aBlock = 0xD000000000000021;
          v83 = v57;
          v88 = *(v21 + 16);
          v50 = sub_252E37D94();
          MEMORY[0x2530AD570](v50);

          sub_252CC3D90(aBlock, v83, 0xD000000000000077, v19 | 0x8000000000000000);

          v51 = *(v21 + 16);

          if (!v51)
          {
            goto LABEL_35;
          }
        }

        else
        {

          sub_252CC4050(0xD000000000000044, v56 | 0x8000000000000000, 0xD000000000000077, v19 | 0x8000000000000000, 0xD000000000000034, v65 | 0x8000000000000000, 1657);
          v21 = sub_252E358F4();
          if (!*(v21 + 16))
          {
LABEL_35:

            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v52 = sub_252E36AD4();
            __swift_project_value_buffer(v52, qword_27F544D90);
            aBlock = 0;
            v83 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000020, v58 | 0x8000000000000000);
            v88 = v24;
            sub_252E35944();
            sub_252E37AE4();
            v53 = v79;
            sub_252CC4050(aBlock, v83, 0xD000000000000077, v79 | 0x8000000000000000, 0xD000000000000034, v65 | 0x8000000000000000, 1670);
            v19 = v53;

            goto LABEL_9;
          }
        }
      }

      else
      {
        v21 = sub_252E358F4();
        v19 = v79;
        if (!*(v21 + 16))
        {
          goto LABEL_35;
        }
      }

      v22 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v22;
      sub_2529FB7A0(v21, v80, v81, isUniquelyReferenced_nonNull_native);

      v78 = aBlock;
LABEL_9:
      if (v72 == ++v18)
      {

        return v78;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CF7A04(uint64_t a1)
{
  v2 = v1;
  v84 = sub_252E34804();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34874();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252B680FC();
  v13 = *(v12 + 104);
  v14 = *(v12 + 112);

  if ((v14 & 1) == 0)
  {
    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        memcpy(v89, v2, sizeof(v89));
        memcpy(v88, v2, sizeof(v88));
        (*(v8 + 104))(v11, *MEMORY[0x277D5E508], v7);
        sub_2529353AC(v89, v87);
        v67 = sub_252D02830(a1, v11);
        v69 = v68;
        (*(v8 + 8))(v11, v7);
        memcpy(v90, v88, 0x1F8uLL);
        result = sub_252935408(v90);
        if (v69)
        {
          v70 = v89[6];
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v71 = sub_252E36AD4();
          __swift_project_value_buffer(v71, qword_27F544D90);
          v88[0] = 0;
          v88[1] = 0xE000000000000000;
          sub_252E379F4();

          v88[0] = 0xD00000000000002FLL;
          v88[1] = 0x8000000252E931A0;
          MEMORY[0x2530AD570](v67, v69);
          sub_252CC4A5C(v88[0], v88[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v70 + 16) + 1, 1, v70);
            v70 = result;
          }

          v73 = *(v70 + 16);
          v72 = *(v70 + 24);
          if (v73 >= v72 >> 1)
          {
            result = sub_2529F7A80((v72 > 1), v73 + 1, 1, v70);
            v70 = result;
          }

          *(v70 + 16) = v73 + 1;
          v74 = v70 + 16 * v73;
          *(v74 + 32) = v67;
          *(v74 + 40) = v69;
          v2[6] = v70;
        }
      }

      else if (v13 == 2)
      {
        memcpy(v89, v2, sizeof(v89));
        memcpy(v88, v2, sizeof(v88));
        (*(v8 + 104))(v11, *MEMORY[0x277D5E530], v7);
        sub_2529353AC(v89, v87);
        v33 = sub_252D02830(a1, v11);
        v35 = v34;
        (*(v8 + 8))(v11, v7);
        memcpy(v90, v88, 0x1F8uLL);
        result = sub_252935408(v90);
        if (v35)
        {
          v36 = v89[28];
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v37 = sub_252E36AD4();
          __swift_project_value_buffer(v37, qword_27F544D90);
          v88[0] = 0;
          v88[1] = 0xE000000000000000;
          sub_252E379F4();

          v88[0] = 0xD00000000000002FLL;
          v88[1] = 0x8000000252E93170;
          MEMORY[0x2530AD570](v33, v35);
          sub_252CC4A5C(v88[0], v88[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v36 + 16) + 1, 1, v36);
            v36 = result;
          }

          v39 = *(v36 + 16);
          v38 = *(v36 + 24);
          if (v39 >= v38 >> 1)
          {
            result = sub_2529F7A80((v38 > 1), v39 + 1, 1, v36);
            v36 = result;
          }

          *(v36 + 16) = v39 + 1;
          v40 = v36 + 16 * v39;
          *(v40 + 32) = v33;
          *(v40 + 40) = v35;
          v2[28] = v36;
        }
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          memcpy(v89, v2, sizeof(v89));
          memcpy(v88, v2, sizeof(v88));
          (*(v8 + 104))(v11, *MEMORY[0x277D5E528], v7);
          sub_2529353AC(v89, v87);
          v41 = sub_252D02830(a1, v11);
          v43 = v42;
          (*(v8 + 8))(v11, v7);
          memcpy(v90, v88, 0x1F8uLL);
          result = sub_252935408(v90);
          if (v43)
          {
            v44 = v89[13];
            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v45 = sub_252E36AD4();
            __swift_project_value_buffer(v45, qword_27F544D90);
            v88[0] = 0;
            v88[1] = 0xE000000000000000;
            sub_252E379F4();

            v88[0] = 0xD00000000000002FLL;
            v88[1] = 0x8000000252E93140;
            MEMORY[0x2530AD570](v41, v43);
            sub_252CC4A5C(v88[0], v88[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_2529F7A80(0, *(v44 + 16) + 1, 1, v44);
              v44 = result;
            }

            v47 = *(v44 + 16);
            v46 = *(v44 + 24);
            if (v47 >= v46 >> 1)
            {
              result = sub_2529F7A80((v46 > 1), v47 + 1, 1, v44);
              v44 = result;
            }

            *(v44 + 16) = v47 + 1;
            v48 = v44 + 16 * v47;
            *(v48 + 32) = v41;
            *(v48 + 40) = v43;
            v2[13] = v44;
          }

          break;
        case 5:
          v49 = sub_252D01B8C(a1);
          v90[0] = v50;
          sub_25297BA5C(v49);
          v51 = v90[0];
          v52 = *(v90[0] + 16);
          if (v52)
          {
            v79 = v2;
            v90[0] = MEMORY[0x277D84F90];
            sub_2529AA3A0(0, v52, 0);
            v53 = v90[0];
            v55 = *(v4 + 16);
            v54 = v4 + 16;
            v56 = *(v54 + 64);
            v78 = v51;
            v57 = v51 + ((v56 + 32) & ~v56);
            v80 = *(v54 + 56);
            v81 = v55;
            v82 = v54;
            v58 = (v54 - 8);
            do
            {
              v59 = v83;
              v60 = v84;
              v81(v83, v57, v84);
              v61 = sub_252E347E4();
              v63 = v62;
              (*v58)(v59, v60);
              v90[0] = v53;
              v65 = *(v53 + 16);
              v64 = *(v53 + 24);
              if (v65 >= v64 >> 1)
              {
                sub_2529AA3A0((v64 > 1), v65 + 1, 1);
                v53 = v90[0];
              }

              *(v53 + 16) = v65 + 1;
              v66 = v53 + 16 * v65;
              *(v66 + 32) = v61;
              *(v66 + 40) = v63;
              v57 += v80;
              --v52;
            }

            while (v52);

            v75 = sub_252DF88E4(v53);

            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v76 = sub_252E36AD4();
            __swift_project_value_buffer(v76, qword_27F544D90);
            v90[0] = 0;
            v90[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E93080);
            v77 = MEMORY[0x2530AD730](v75, MEMORY[0x277D837D0]);
            MEMORY[0x2530AD570](v77);

            sub_252CC4A5C(v90[0], v90[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            return sub_25297A744(v75);
          }

          else
          {
          }

        case 7:
          memcpy(v89, v2, sizeof(v89));
          memcpy(v88, v2, sizeof(v88));
          v16 = *MEMORY[0x277D5E558];
          v83 = *(v8 + 104);
          (v83)(v11, v16, v7);
          sub_2529353AC(v89, v87);
          v84 = sub_252D02830(a1, v11);
          v18 = v17;
          v82 = *(v8 + 8);
          v82(v11, v7);
          memcpy(v90, v88, 0x1F8uLL);
          sub_252935408(v90);
          if (v18)
          {
            v79 = v2;
            v19 = v89[21];
            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v20 = sub_252E36AD4();
            v81 = __swift_project_value_buffer(v20, qword_27F544D90);
            v88[0] = 0;
            v88[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E93100);
            MEMORY[0x2530AD570](v84, v18);
            sub_252CC4A5C(v88[0], v88[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v19 = sub_2529F7A80(0, *(v19 + 2) + 1, 1, v19);
            }

            v22 = *(v19 + 2);
            v21 = *(v19 + 3);
            if (v22 >= v21 >> 1)
            {
              v19 = sub_2529F7A80((v21 > 1), v22 + 1, 1, v19);
            }

            *(v19 + 2) = v22 + 1;
            v23 = &v19[16 * v22];
            *(v23 + 4) = v84;
            *(v23 + 5) = v18;
            v24 = v79;
            v79[21] = v19;
            v2 = v24;
          }

          memcpy(v87, v2, sizeof(v87));
          memcpy(v86, v2, sizeof(v86));
          (v83)(v11, *MEMORY[0x277D5E548], v7);
          sub_2529353AC(v87, &v85);
          v25 = sub_252D02830(a1, v11);
          v27 = v26;
          v82(v11, v7);
          memcpy(v88, v86, sizeof(v88));
          result = sub_252935408(v88);
          if (v27)
          {
            v28 = v87[19];
            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v29 = sub_252E36AD4();
            __swift_project_value_buffer(v29, qword_27F544D90);
            v86[0] = 0;
            v86[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E930C0);
            MEMORY[0x2530AD570](v25, v27);
            sub_252CC4A5C(v86[0], v86[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_2529F7A80(0, *(v28 + 16) + 1, 1, v28);
              v28 = result;
            }

            v31 = *(v28 + 16);
            v30 = *(v28 + 24);
            if (v31 >= v30 >> 1)
            {
              result = sub_2529F7A80((v30 > 1), v31 + 1, 1, v28);
              v28 = result;
            }

            *(v28 + 16) = v31 + 1;
            v32 = v28 + 16 * v31;
            *(v32 + 32) = v25;
            *(v32 + 40) = v27;
            v2[19] = v28;
          }

          break;
      }
    }
  }

  return result;
}

uint64_t sub_252CF8794(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v610 = v4;
  v6 = v5;
  v595 = v7;
  v596 = v8;
  v613 = v2;
  v593 = sub_252E34874();
  v9 = *(v593 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v593);
  v606 = &v578 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v578 = &v578 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v579 = &v578 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v580 = &v578 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v581 = &v578 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v582 = &v578 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v583 = &v578 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v578 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v584 = &v578 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v578 - v31;
  v33 = sub_252E34804();
  v609 = *(v33 - 1);
  v34 = *(v609 + 8);
  v35 = MEMORY[0x28223BE20](v33);
  v607 = &v578 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v602 = &v578 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v611 = &v578 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v603 = &v578 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v605 = &v578 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v612 = &v578 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v597 = &v578 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v608 = &v578 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v585 = &v578 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v592 = &v578 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v591 = &v578 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v586 = &v578 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v587 = &v578 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v588 = &v578 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v589 = &v578 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  *&v590 = &v578 - v66;
  MEMORY[0x28223BE20](v65);
  v68 = &v578 - v67;
  memcpy(v690, v1, sizeof(v690));
  memcpy(v637, v1, sizeof(v637));
  sub_2529353AC(v690, v691);
  sub_252CF5B00(v6, v636);
  memcpy(v691, v637, 0x1F8uLL);
  sub_252935408(v691);
  v69 = v636[0];
  if (v636[0] != 21)
  {
    v70 = *(v3 + 11);
    if (!sub_2529A6F34(v636[0], v70))
    {
      v604 = v28;
      v75 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_2529F82D8(0, *(v70 + 2) + 1, 1, v70);
      }

      v72 = v593;
      v77 = *(v70 + 2);
      v76 = *(v70 + 3);
      if (v77 >= v76 >> 1)
      {
        v70 = sub_2529F82D8((v76 > 1), v77 + 1, 1, v70);
      }

      *(v70 + 2) = v77 + 1;
      v70[v77 + 32] = v69;
      *(v3 + 11) = v70;
      goto LABEL_28;
    }
  }

  memcpy(v636, v3, sizeof(v636));
  memcpy(v635, v3, sizeof(v635));
  sub_2529353AC(v636, v634);
  sub_252D01354(v613, v32);
  memcpy(v637, v635, sizeof(v637));
  sub_252935408(v637);
  v71 = v609;
  if ((*(v609 + 6))(v32, 1, v33) == 1)
  {
    sub_25293847C(v32, &qword_27F541D70, &unk_252E5B5A0);
    v72 = v593;
    goto LABEL_29;
  }

  (*(v71 + 4))(v68, v32, v33);
  v73._countAndFlagsBits = sub_252E347E4();
  PlaceHintSemantic.init(rawValue:)(v73);
  v74 = v635[0];
  if (LOBYTE(v635[0]) == 21)
  {
    (*(v71 + 1))(v68, v33);
    v72 = v593;
    goto LABEL_29;
  }

  v604 = v28;
  v78 = *(v3 + 11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v593;
  v75 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v78 = sub_2529F82D8(0, *(v78 + 2) + 1, 1, v78);
  }

  v81 = *(v78 + 2);
  v80 = *(v78 + 3);
  if (v81 >= v80 >> 1)
  {
    v78 = sub_2529F82D8((v80 > 1), v81 + 1, 1, v78);
  }

  *(v78 + 2) = v81 + 1;
  v78[v81 + 32] = v74;
  *(v3 + 11) = v78;
  if ((v610 & 1) == 0)
  {
    memcpy(v634, v3, sizeof(v634));
    memcpy(v633, v3, sizeof(v633));
    sub_2529353AC(v634, v632);
    sub_252D01540(v613, v68, &v638);
    memcpy(v635, v633, sizeof(v635));
    result = sub_252935408(v635);
    if (v641 != 1)
    {
      v83 = v634[40];
      if (v640)
      {
        if (!v641)
        {
          v577 = *(v609 + 1);

          v577(v68, v33);
          goto LABEL_28;
        }

        v601 = *(&v638 + 1) - v638;
        if (__OFSUB__(*(&v638 + 1), v638))
        {
LABEL_442:
          __break(1u);
          goto LABEL_443;
        }

        v84 = sub_252AD4324();
        sub_25293847C(&v638, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(&v638, &qword_27F545530, &unk_252E5B5C0);
        result = (*(v609 + 1))(v68, v33);
        if (__OFSUB__(v601, v84))
        {
LABEL_443:
          __break(1u);
          return result;
        }

        v85 = (v601 - v84) & ~((v601 - v84) >> 63);
        v86 = __OFADD__(v83, v85);
        v87 = v83 + v85;
        if (!v86)
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      v88 = v639;
      sub_25293847C(&v638, &qword_27F545530, &unk_252E5B5C0);
      result = (*(v609 + 1))(v68, v33);
      v87 = v83 + v88;
      if (__OFADD__(v83, v88))
      {
LABEL_441:
        __break(1u);
        goto LABEL_442;
      }

LABEL_27:
      *(v3 + 40) = v87;
      goto LABEL_28;
    }
  }

  (*(v609 + 1))(v68, v33);
LABEL_28:
  v9 = v75;
  v28 = v604;
LABEL_29:
  memcpy(v637, v3, sizeof(v637));
  memcpy(v636, v3, sizeof(v636));
  v89 = *MEMORY[0x277D5E508];
  v90 = v9[13];
  v91 = v606;
  v604 = (v9 + 13);
  v601 = v90;
  v90(v606, v89, v72);
  sub_2529353AC(v637, v635);
  v92 = v584;
  sub_252D02F3C(v613, v91, v584);
  v600 = v9[1];
  v600(v91, v72);
  sub_252935408(v637);
  v93 = v609;
  v598 = *(v609 + 6);
  v599 = (v609 + 48);
  v94 = v598(v92, 1, v33);
  v614 = v33;
  v594 = (v9 + 1);
  if (v94 == 1)
  {
    sub_25293847C(v92, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_58;
  }

  (*(v93 + 4))(v590, v92, v33);
  v95 = sub_252E347E4();
  v97 = v96;
  v98 = *(v3 + 6);
  v99 = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v98 = sub_2529F7A80(0, *(v98 + 2) + 1, 1, v98);
  }

  v101 = *(v98 + 2);
  v100 = *(v98 + 3);
  if (v101 >= v100 >> 1)
  {
    v98 = sub_2529F7A80((v100 > 1), v101 + 1, 1, v98);
  }

  *(v98 + 2) = v101 + 1;
  v102 = &v98[16 * v101];
  *(v102 + 4) = v95;
  *(v102 + 5) = v97;
  *(v3 + 6) = v98;
  v103 = *(v3 + 47);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v103 = sub_2529F846C(0, *(v103 + 2) + 1, 1, v103);
  }

  v28 = v99;
  v104 = v590;
  v106 = *(v103 + 2);
  v105 = *(v103 + 3);
  v72 = v593;
  if (v106 >= v105 >> 1)
  {
    v103 = sub_2529F846C((v105 > 1), v106 + 1, 1, v103);
  }

  *(v103 + 2) = v106 + 1;
  v103[v106 + 32] = 8;
  *(v3 + 47) = v103;
  v107 = v613;
  if ((v610 & 1) == 0)
  {
    memcpy(v635, v3, sizeof(v635));
    memcpy(v634, v3, sizeof(v634));
    sub_2529353AC(v635, v633);
    sub_252D01540(v107, v104, &v642);
    memcpy(v636, v634, sizeof(v636));
    result = sub_252935408(v636);
    if (v645 != 1)
    {
      v108 = v635[40];
      if (v644)
      {
        if (!v645)
        {

          goto LABEL_50;
        }

        v109 = *(&v642 + 1) - v642;
        if (__OFSUB__(*(&v642 + 1), v642))
        {
LABEL_427:
          __break(1u);
          goto LABEL_428;
        }

        v110 = sub_252AD4324();
        sub_25293847C(&v642, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v642, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v109, v110))
        {
LABEL_432:
          __break(1u);
          goto LABEL_433;
        }

        v111 = (v109 - v110) & ~((v109 - v110) >> 63);
        v86 = __OFADD__(v108, v111);
        v112 = v108 + v111;
        v107 = v613;
        v33 = v614;
        if (!v86)
        {
LABEL_49:
          *(v3 + 40) = v112;
LABEL_50:
          v104 = v590;
          goto LABEL_51;
        }

        __break(1u);
      }

      v113 = v643;
      result = sub_25293847C(&v642, &qword_27F545530, &unk_252E5B5C0);
      v112 = v108 + v113;
      if (__OFADD__(v108, v113))
      {
LABEL_413:
        __break(1u);
        goto LABEL_414;
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  memcpy(v635, v3, sizeof(v635));
  memcpy(v634, v3, sizeof(v634));
  sub_2529353AC(v635, v633);
  sub_252D02164(v107, v104, sub_252D083F0, v632);
  memcpy(v636, v634, sizeof(v636));
  sub_252935408(v636);
  v114 = v632[1];
  if (v632[1] == 1)
  {
    (*(v609 + 1))(v104, v33);
  }

  else
  {
    v115 = v632[0];
    LODWORD(v584) = LOBYTE(v632[3]);
    v116 = v632[2];
    v117 = HIDWORD(v632[2]);
    v118 = *(v3 + 59);
    v119 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 59) = v118;
    v120 = v28;
    if ((v119 & 1) == 0)
    {
      v118 = sub_2529F8360(0, *(v118 + 2) + 1, 1, v118);
      *(v3 + 59) = v118;
    }

    v122 = *(v118 + 2);
    v121 = *(v118 + 3);
    if (v122 >= v121 >> 1)
    {
      *(v3 + 59) = sub_2529F8360((v121 > 1), v122 + 1, 1, v118);
    }

    v123 = v614;
    (*(v609 + 1))(v590, v614);
    v124 = *(v3 + 59);
    *(v124 + 16) = v122 + 1;
    v125 = v124 + 32 * v122;
    *(v125 + 32) = v115;
    *(v125 + 40) = v114;
    v33 = v123;
    *(v125 + 48) = v116;
    *(v125 + 52) = v117;
    *(v125 + 56) = v584;
    *(v3 + 59) = v124;
    v28 = v120;
    v72 = v593;
  }

LABEL_58:
  memcpy(v636, v3, sizeof(v636));
  memcpy(v635, v3, sizeof(v635));
  v126 = v606;
  (v601)(v606, *MEMORY[0x277D5E528], v72);
  sub_2529353AC(v636, v634);
  sub_252D02F3C(v613, v126, v28);
  v600(v126, v72);
  sub_252935408(v636);
  if (v598(v28, 1, v33) == 1)
  {
    sub_25293847C(v28, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_82;
  }

  (*(v609 + 4))(v589, v28, v33);
  v127 = sub_252E347E4();
  v129 = v128;
  v130 = *(v3 + 13);
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v132 = v613;
  if ((v131 & 1) == 0)
  {
    v130 = sub_2529F7A80(0, *(v130 + 2) + 1, 1, v130);
  }

  v134 = *(v130 + 2);
  v133 = *(v130 + 3);
  if (v134 >= v133 >> 1)
  {
    v130 = sub_2529F7A80((v133 > 1), v134 + 1, 1, v130);
  }

  *(v130 + 2) = v134 + 1;
  v135 = &v130[16 * v134];
  *(v135 + 4) = v127;
  *(v135 + 5) = v129;
  *(v3 + 13) = v130;
  v136 = v589;
  v137 = v132;
  if ((v610 & 1) == 0)
  {
    memcpy(v634, v3, sizeof(v634));
    memcpy(v633, v3, sizeof(v633));
    sub_2529353AC(v634, v632);
    sub_252D01540(v132, v136, &v646);
    memcpy(v635, v633, sizeof(v635));
    result = sub_252935408(v635);
    if (v649 != 1)
    {
      v138 = v634[40];
      if (v648)
      {
        if (!v649)
        {

          goto LABEL_74;
        }

        v139 = *(&v646 + 1) - v646;
        if (__OFSUB__(*(&v646 + 1), v646))
        {
LABEL_428:
          __break(1u);
          goto LABEL_429;
        }

        v140 = sub_252AD4324();
        sub_25293847C(&v646, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v646, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v139, v140))
        {
LABEL_433:
          __break(1u);
          goto LABEL_434;
        }

        v141 = (v139 - v140) & ~((v139 - v140) >> 63);
        v86 = __OFADD__(v138, v141);
        v142 = v138 + v141;
        v33 = v614;
        if (v86)
        {
LABEL_437:
          __break(1u);
          goto LABEL_438;
        }

        v137 = v132;
      }

      else
      {
        v143 = v647;
        result = sub_25293847C(&v646, &qword_27F545530, &unk_252E5B5C0);
        v142 = v138 + v143;
        if (__OFADD__(v138, v143))
        {
LABEL_414:
          __break(1u);
          goto LABEL_415;
        }
      }

      *(v3 + 40) = v142;
LABEL_74:
      v136 = v589;
    }
  }

  memcpy(v634, v3, sizeof(v634));
  memcpy(v633, v3, sizeof(v633));
  sub_2529353AC(v634, v632);
  sub_252D02164(v137, v136, sub_252D083F0, v631);
  memcpy(v635, v633, sizeof(v635));
  sub_252935408(v635);
  v144 = v631[1];
  if (v631[1] == 1)
  {
    (*(v609 + 1))(v136, v33);
  }

  else
  {
    v145 = v631[0];
    v146 = v631[3];
    v147 = v631[2];
    v148 = HIDWORD(v631[2]);
    v149 = *(v3 + 55);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 55) = v149;
    if ((v150 & 1) == 0)
    {
      v149 = sub_2529F8360(0, *(v149 + 2) + 1, 1, v149);
      *(v3 + 55) = v149;
    }

    v152 = *(v149 + 2);
    v151 = *(v149 + 3);
    if (v152 >= v151 >> 1)
    {
      *(v3 + 55) = sub_2529F8360((v151 > 1), v152 + 1, 1, v149);
    }

    v153 = v614;
    (*(v609 + 1))(v589, v614);
    v154 = *(v3 + 55);
    *(v154 + 16) = v152 + 1;
    v155 = v154 + 32 * v152;
    *(v155 + 32) = v145;
    *(v155 + 40) = v144;
    v33 = v153;
    *(v155 + 48) = v147;
    *(v155 + 52) = v148;
    *(v155 + 56) = v146;
    *(v3 + 55) = v154;
    v72 = v593;
  }

LABEL_82:
  memcpy(v635, v3, sizeof(v635));
  memcpy(v634, v3, sizeof(v634));
  v156 = v606;
  *v606 = 0xD000000000000018;
  *(v156 + 8) = 0x8000000252E932F0;
  v157 = *MEMORY[0x277D5E510];
  (v601)(v156, v157, v72);
  sub_2529353AC(v635, v633);
  v158 = v583;
  sub_252D02F3C(v613, v156, v583);
  v600(v156, v72);
  sub_252935408(v635);
  v159 = v598(v158, 1, v33);
  LODWORD(v590) = v157;
  if (v159 == 1)
  {
    sub_25293847C(v158, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_107;
  }

  (*(v609 + 4))(v588, v158, v33);
  v160 = sub_252E347E4();
  v162 = v161;
  v163 = *(v3 + 14);
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v165 = v613;
  if ((v164 & 1) == 0)
  {
    v163 = sub_2529F7A80(0, *(v163 + 2) + 1, 1, v163);
  }

  v167 = *(v163 + 2);
  v166 = *(v163 + 3);
  if (v167 >= v166 >> 1)
  {
    v163 = sub_2529F7A80((v166 > 1), v167 + 1, 1, v163);
  }

  *(v163 + 2) = v167 + 1;
  v168 = &v163[16 * v167];
  *(v168 + 4) = v160;
  *(v168 + 5) = v162;
  *(v3 + 14) = v163;
  v169 = v588;
  v170 = v165;
  if ((v610 & 1) == 0)
  {
    memcpy(v633, v3, sizeof(v633));
    memcpy(v632, v3, sizeof(v632));
    sub_2529353AC(v633, v631);
    sub_252D01540(v165, v169, &v650);
    memcpy(v634, v632, sizeof(v634));
    result = sub_252935408(v634);
    if (v653 != 1)
    {
      v171 = v633[40];
      if (v652)
      {
        if (!v653)
        {

          goto LABEL_98;
        }

        v172 = *(&v650 + 1) - v650;
        if (__OFSUB__(*(&v650 + 1), v650))
        {
LABEL_429:
          __break(1u);
          goto LABEL_430;
        }

        v173 = sub_252AD4324();
        sub_25293847C(&v650, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v650, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v172, v173))
        {
LABEL_434:
          __break(1u);
          goto LABEL_435;
        }

        v174 = (v172 - v173) & ~((v172 - v173) >> 63);
        v86 = __OFADD__(v171, v174);
        v175 = v171 + v174;
        v33 = v614;
        if (v86)
        {
LABEL_438:
          __break(1u);
          goto LABEL_439;
        }

        v170 = v165;
      }

      else
      {
        v176 = v651;
        result = sub_25293847C(&v650, &qword_27F545530, &unk_252E5B5C0);
        v175 = v171 + v176;
        if (__OFADD__(v171, v176))
        {
LABEL_415:
          __break(1u);
          goto LABEL_416;
        }
      }

      *(v3 + 40) = v175;
LABEL_98:
      v169 = v588;
    }
  }

  memcpy(v633, v3, sizeof(v633));
  memcpy(v632, v3, sizeof(v632));
  sub_2529353AC(v633, v631);
  sub_252D02164(v170, v169, sub_252D083F0, v630);
  memcpy(v634, v632, sizeof(v634));
  sub_252935408(v634);
  v177 = v630[1];
  if (v630[1] == 1)
  {
    (*(v609 + 1))(v169, v33);
  }

  else
  {
    v178 = v630[0];
    v179 = v630[3];
    v180 = v630[2];
    v181 = HIDWORD(v630[2]);
    v182 = *(v3 + 56);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 56) = v182;
    if ((v183 & 1) == 0)
    {
      v182 = sub_2529F8360(0, *(v182 + 2) + 1, 1, v182);
      *(v3 + 56) = v182;
    }

    v185 = *(v182 + 2);
    v184 = *(v182 + 3);
    if (v185 >= v184 >> 1)
    {
      *(v3 + 56) = sub_2529F8360((v184 > 1), v185 + 1, 1, v182);
    }

    v186 = v614;
    (*(v609 + 1))(v588, v614);
    v187 = *(v3 + 56);
    *(v187 + 16) = v185 + 1;
    v188 = v187 + 32 * v185;
    *(v188 + 32) = v178;
    *(v188 + 40) = v177;
    v33 = v186;
    *(v188 + 48) = v180;
    *(v188 + 52) = v181;
    *(v188 + 56) = v179;
    *(v3 + 56) = v187;
    v72 = v593;
  }

  v157 = v590;
LABEL_107:
  memcpy(v634, v3, sizeof(v634));
  memcpy(v633, v3, sizeof(v633));
  v189 = v606;
  (v601)(v606, *MEMORY[0x277D5E530], v72);
  sub_2529353AC(v634, v632);
  v190 = v582;
  sub_252D02F3C(v613, v189, v582);
  v600(v189, v72);
  sub_252935408(v634);
  if (v598(v190, 1, v33) == 1)
  {
    sub_25293847C(v190, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_132;
  }

  (*(v609 + 4))(v587, v190, v33);
  v191 = sub_252E347E4();
  v193 = v192;
  v194 = *(v3 + 28);
  v195 = swift_isUniquelyReferenced_nonNull_native();
  v196 = v613;
  if ((v195 & 1) == 0)
  {
    v194 = sub_2529F7A80(0, *(v194 + 2) + 1, 1, v194);
  }

  v198 = *(v194 + 2);
  v197 = *(v194 + 3);
  if (v198 >= v197 >> 1)
  {
    v194 = sub_2529F7A80((v197 > 1), v198 + 1, 1, v194);
  }

  *(v194 + 2) = v198 + 1;
  v199 = &v194[16 * v198];
  *(v199 + 4) = v191;
  *(v199 + 5) = v193;
  *(v3 + 28) = v194;
  v200 = v587;
  v201 = v196;
  if ((v610 & 1) == 0)
  {
    memcpy(v632, v3, sizeof(v632));
    memcpy(v631, v3, sizeof(v631));
    sub_2529353AC(v632, v630);
    sub_252D01540(v196, v200, &v654);
    memcpy(v633, v631, sizeof(v633));
    result = sub_252935408(v633);
    if (v657 != 1)
    {
      v202 = v632[40];
      if (v656)
      {
        if (!v657)
        {

          goto LABEL_123;
        }

        v203 = *(&v654 + 1) - v654;
        if (__OFSUB__(*(&v654 + 1), v654))
        {
LABEL_430:
          __break(1u);
          goto LABEL_431;
        }

        v204 = sub_252AD4324();
        sub_25293847C(&v654, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v654, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v203, v204))
        {
LABEL_435:
          __break(1u);
          goto LABEL_436;
        }

        v205 = (v203 - v204) & ~((v203 - v204) >> 63);
        v86 = __OFADD__(v202, v205);
        v206 = v202 + v205;
        v33 = v614;
        if (v86)
        {
LABEL_439:
          __break(1u);
          goto LABEL_440;
        }

        v201 = v196;
      }

      else
      {
        v207 = v655;
        result = sub_25293847C(&v654, &qword_27F545530, &unk_252E5B5C0);
        v206 = v202 + v207;
        if (__OFADD__(v202, v207))
        {
LABEL_416:
          __break(1u);
          goto LABEL_417;
        }
      }

      *(v3 + 40) = v206;
LABEL_123:
      v200 = v587;
    }
  }

  memcpy(v632, v3, sizeof(v632));
  memcpy(v631, v3, sizeof(v631));
  sub_2529353AC(v632, v630);
  sub_252D02164(v201, v200, sub_252D083F0, v629);
  memcpy(v633, v631, sizeof(v633));
  sub_252935408(v633);
  v208 = v629[1];
  if (v629[1] == 1)
  {
    (*(v609 + 1))(v200, v33);
  }

  else
  {
    v209 = v629[0];
    v210 = v629[3];
    v211 = v629[2];
    v212 = HIDWORD(v629[2]);
    v213 = *(v3 + 57);
    v214 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 57) = v213;
    if ((v214 & 1) == 0)
    {
      v213 = sub_2529F8360(0, *(v213 + 2) + 1, 1, v213);
      *(v3 + 57) = v213;
    }

    v216 = *(v213 + 2);
    v215 = *(v213 + 3);
    if (v216 >= v215 >> 1)
    {
      *(v3 + 57) = sub_2529F8360((v215 > 1), v216 + 1, 1, v213);
    }

    v217 = v614;
    (*(v609 + 1))(v587, v614);
    v218 = *(v3 + 57);
    *(v218 + 16) = v216 + 1;
    v219 = v218 + 32 * v216;
    *(v219 + 32) = v209;
    *(v219 + 40) = v208;
    v33 = v217;
    *(v219 + 48) = v211;
    *(v219 + 52) = v212;
    *(v219 + 56) = v210;
    *(v3 + 57) = v218;
    v72 = v593;
  }

  v157 = v590;
LABEL_132:
  memcpy(v633, v3, sizeof(v633));
  memcpy(v632, v3, sizeof(v632));
  v220 = v606;
  *v606 = 0xD000000000000017;
  *(v220 + 8) = 0x8000000252E93310;
  (v601)(v220, v157, v72);
  sub_2529353AC(v633, v631);
  v221 = v581;
  sub_252D02F3C(v613, v220, v581);
  v600(v220, v72);
  sub_252935408(v633);
  if (v598(v221, 1, v33) == 1)
  {
    sub_25293847C(v221, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_156;
  }

  (*(v609 + 4))(v586, v221, v33);
  v222 = sub_252E347E4();
  v224 = v223;
  v225 = *(v3 + 15);
  v226 = swift_isUniquelyReferenced_nonNull_native();
  v227 = v613;
  if ((v226 & 1) == 0)
  {
    v225 = sub_2529F7A80(0, *(v225 + 2) + 1, 1, v225);
  }

  v229 = *(v225 + 2);
  v228 = *(v225 + 3);
  if (v229 >= v228 >> 1)
  {
    v225 = sub_2529F7A80((v228 > 1), v229 + 1, 1, v225);
  }

  *(v225 + 2) = v229 + 1;
  v230 = &v225[16 * v229];
  *(v230 + 4) = v222;
  *(v230 + 5) = v224;
  *(v3 + 15) = v225;
  v231 = v586;
  v232 = v227;
  if ((v610 & 1) == 0)
  {
    memcpy(v631, v3, sizeof(v631));
    memcpy(v630, v3, sizeof(v630));
    sub_2529353AC(v631, v629);
    sub_252D01540(v227, v231, &v658);
    memcpy(v632, v630, sizeof(v632));
    result = sub_252935408(v632);
    if (v661 != 1)
    {
      v233 = v631[40];
      if (v660)
      {
        if (!v661)
        {

          goto LABEL_148;
        }

        v234 = *(&v658 + 1) - v658;
        if (__OFSUB__(*(&v658 + 1), v658))
        {
LABEL_431:
          __break(1u);
          goto LABEL_432;
        }

        v235 = sub_252AD4324();
        sub_25293847C(&v658, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v658, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v234, v235))
        {
LABEL_436:
          __break(1u);
          goto LABEL_437;
        }

        v236 = (v234 - v235) & ~((v234 - v235) >> 63);
        v86 = __OFADD__(v233, v236);
        v237 = v233 + v236;
        v33 = v614;
        if (v86)
        {
LABEL_440:
          __break(1u);
          goto LABEL_441;
        }

        v232 = v227;
      }

      else
      {
        v238 = v659;
        result = sub_25293847C(&v658, &qword_27F545530, &unk_252E5B5C0);
        v237 = v233 + v238;
        if (__OFADD__(v233, v238))
        {
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
          goto LABEL_419;
        }
      }

      *(v3 + 40) = v237;
LABEL_148:
      v231 = v586;
    }
  }

  memcpy(v631, v3, sizeof(v631));
  memcpy(v630, v3, sizeof(v630));
  sub_2529353AC(v631, v629);
  sub_252D02164(v232, v231, sub_252D083F0, v628);
  memcpy(v632, v630, sizeof(v632));
  sub_252935408(v632);
  v239 = v628[1];
  if (v628[1] == 1)
  {
    (*(v609 + 1))(v231, v33);
  }

  else
  {
    v240 = v628[0];
    v241 = v628[3];
    v242 = v628[2];
    v243 = HIDWORD(v628[2]);
    v244 = *(v3 + 58);
    v245 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 58) = v244;
    if ((v245 & 1) == 0)
    {
      v244 = sub_2529F8360(0, *(v244 + 2) + 1, 1, v244);
      *(v3 + 58) = v244;
    }

    v247 = *(v244 + 2);
    v246 = *(v244 + 3);
    if (v247 >= v246 >> 1)
    {
      *(v3 + 58) = sub_2529F8360((v246 > 1), v247 + 1, 1, v244);
    }

    v248 = v614;
    (*(v609 + 1))(v586, v614);
    v249 = *(v3 + 58);
    *(v249 + 16) = v247 + 1;
    v250 = v249 + 32 * v247;
    *(v250 + 32) = v240;
    *(v250 + 40) = v239;
    v33 = v248;
    *(v250 + 48) = v242;
    *(v250 + 52) = v243;
    *(v250 + 56) = v241;
    *(v3 + 58) = v249;
    v72 = v593;
  }

LABEL_156:
  memcpy(v632, v3, sizeof(v632));
  memcpy(v631, v3, sizeof(v631));
  v251 = v606;
  (v601)(v606, *MEMORY[0x277D5E550], v72);
  sub_2529353AC(v632, v630);
  v252 = v580;
  sub_252D02F3C(v613, v251, v580);
  v600(v251, v72);
  sub_252935408(v632);
  if (v598(v252, 1, v33) == 1)
  {
    sub_25293847C(v252, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_192;
  }

  (*(v609 + 4))(v591, v252, v33);
  v253 = sub_252E347E4();
  v255 = v254;
  v256 = *(v3 + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v257 = v613;
  }

  else
  {
    v257 = v613;
    v256 = sub_2529F7A80(0, *(v256 + 2) + 1, 1, v256);
  }

  v259 = *(v256 + 2);
  v258 = *(v256 + 3);
  if (v259 >= v258 >> 1)
  {
    v256 = sub_2529F7A80((v258 > 1), v259 + 1, 1, v256);
  }

  *(v256 + 2) = v259 + 1;
  v260 = &v256[16 * v259];
  *(v260 + 4) = v253;
  *(v260 + 5) = v255;
  *(v3 + 20) = v256;
  v261 = v591;
  v262 = v257;
  if ((v610 & 1) == 0)
  {
    memcpy(v630, v3, sizeof(v630));
    memcpy(v629, v3, sizeof(v629));
    sub_2529353AC(v630, v628);
    sub_252D01540(v257, v261, &v662);
    memcpy(v631, v629, sizeof(v631));
    sub_252935408(v631);
    v263 = v663;
    v264 = v664;
    if (*(&v665 + 1))
    {
      if (*(&v665 + 1) == 1)
      {
        v262 = v613;
        v33 = v614;
        goto LABEL_185;
      }

      v590 = v665;
      v588 = *(&v662 + 1);
      v589 = v662;
      v270 = *(v3 + 45);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_410;
      }

      while (1)
      {
        v272 = *(v270 + 16);
        v271 = *(v270 + 24);
        v273 = v590;
        if (v272 >= v271 >> 1)
        {
          result = sub_2529F7A80((v271 > 1), v272 + 1, 1, v270);
          v273 = v590;
          v270 = result;
        }

        *(v270 + 16) = v272 + 1;
        *(v270 + 16 * v272 + 32) = v273;
        *(v3 + 45) = v270;
        v270 = v630[40];
        if (v264)
        {
          break;
        }

LABEL_181:
        sub_25293847C(&v662, &qword_27F545530, &unk_252E5B5C0);
        if (!__OFADD__(v270, v263))
        {
          *(v3 + 40) = v270 + v263;
          goto LABEL_183;
        }

        __break(1u);
LABEL_410:
        result = sub_2529F7A80(0, *(v270 + 16) + 1, 1, v270);
        v270 = result;
      }

      v274 = v588 - v589;
      if (__OFSUB__(v588, v589))
      {
        goto LABEL_418;
      }

      v275 = sub_252AD4324();
      sub_25293847C(&v662, &qword_27F545530, &unk_252E5B5C0);
      result = sub_25293847C(&v662, &qword_27F545530, &unk_252E5B5C0);
      v262 = v613;
      if (__OFSUB__(v274, v275))
      {
LABEL_421:
        __break(1u);
        goto LABEL_422;
      }

      v276 = (v274 - v275) & ~((v274 - v275) >> 63);
      v86 = __OFADD__(v270, v276);
      v277 = v270 + v276;
      v33 = v614;
      if (v86)
      {
LABEL_424:
        __break(1u);
        goto LABEL_425;
      }

      *(v3 + 40) = v277;
    }

    else
    {
      v265 = *(v3 + 45);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v265 = sub_2529F7A80(0, *(v265 + 2) + 1, 1, v265);
      }

      v267 = *(v265 + 2);
      v266 = *(v265 + 3);
      if (v267 >= v266 >> 1)
      {
        v265 = sub_2529F7A80((v266 > 1), v267 + 1, 1, v265);
      }

      *(v265 + 2) = v267 + 1;
      v268 = &v265[16 * v267];
      v269 = v596;
      *(v268 + 4) = v595;
      *(v268 + 5) = v269;
      *(v3 + 45) = v265;
      if ((v264 & 1) == 0)
      {
        v270 = v630[40];
        goto LABEL_181;
      }

LABEL_183:
      v262 = v613;
      v33 = v614;
    }

    v261 = v591;
  }

LABEL_185:
  memcpy(v630, v3, sizeof(v630));
  memcpy(v629, v3, sizeof(v629));
  sub_2529353AC(v630, v628);
  sub_252D02164(v262, v261, sub_252D083F0, v627);
  memcpy(v631, v629, sizeof(v631));
  sub_252935408(v631);
  v278 = *&v627[8];
  if (*&v627[8] == 1)
  {
    (*(v609 + 1))(v261, v33);
  }

  else
  {
    v279 = *v627;
    v280 = v627[24];
    v281 = v627[16];
    v282 = *&v627[20];
    v283 = *(v3 + 50);
    v284 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 50) = v283;
    if ((v284 & 1) == 0)
    {
      v283 = sub_2529F8360(0, *(v283 + 2) + 1, 1, v283);
      *(v3 + 50) = v283;
    }

    v286 = *(v283 + 2);
    v285 = *(v283 + 3);
    if (v286 >= v285 >> 1)
    {
      *(v3 + 50) = sub_2529F8360((v285 > 1), v286 + 1, 1, v283);
    }

    v287 = v614;
    (*(v609 + 1))(v591, v614);
    v288 = *(v3 + 50);
    *(v288 + 16) = v286 + 1;
    v289 = v288 + 32 * v286;
    *(v289 + 32) = v279;
    *(v289 + 40) = v278;
    v33 = v287;
    *(v289 + 48) = v281;
    *(v289 + 52) = v282;
    *(v289 + 56) = v280;
    *(v3 + 50) = v288;
    v72 = v593;
  }

LABEL_192:
  memcpy(v631, v3, sizeof(v631));
  memcpy(v630, v3, sizeof(v630));
  v290 = v606;
  (v601)(v606, *MEMORY[0x277D5E558], v72);
  sub_2529353AC(v631, v629);
  v291 = v579;
  sub_252D02F3C(v613, v290, v579);
  v600(v290, v72);
  sub_252935408(v631);
  if (v598(v291, 1, v33) == 1)
  {
    sub_25293847C(v291, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_218;
  }

  (*(v609 + 4))(v592, v291, v33);
  v292 = sub_252E347E4();
  v294 = v293;
  v295 = *(v3 + 21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v295 = sub_2529F7A80(0, *(v295 + 2) + 1, 1, v295);
  }

  v297 = *(v295 + 2);
  v296 = *(v295 + 3);
  if (v297 >= v296 >> 1)
  {
    v295 = sub_2529F7A80((v296 > 1), v297 + 1, 1, v295);
  }

  *(v295 + 2) = v297 + 1;
  v298 = &v295[16 * v297];
  *(v298 + 4) = v292;
  *(v298 + 5) = v294;
  *(v3 + 21) = v295;
  v299 = v592;
  if ((v610 & 1) == 0)
  {
    memcpy(v629, v3, sizeof(v629));
    memcpy(v628, v3, sizeof(v628));
    sub_2529353AC(v629, v627);
    sub_252D01540(v613, v299, &v666);
    memcpy(v630, v628, sizeof(v630));
    sub_252935408(v630);
    v300 = v668;
    v301 = v667;
    v302 = v670;
    if (v670)
    {
      if (v670 != 1)
      {
        *&v590 = *(&v666 + 1);
        v591 = v666;
        v303 = v669;

        sub_2529F77E0();
        v304 = *(*(v3 + 44) + 16);
        result = sub_2529F7934(v304);
        v305 = *(v3 + 44);
        *(v305 + 16) = v304 + 1;
        v306 = v305 + 16 * v304;
        *(v306 + 32) = v303;
        *(v306 + 40) = v302;
        *(v3 + 44) = v305;
        v307 = v629[40];
        if (v300)
        {
          v308 = v590 - v591;
          if (__OFSUB__(v590, v591))
          {
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
            goto LABEL_421;
          }

          v309 = sub_252AD4324();
          sub_25293847C(&v666, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v666, &qword_27F545530, &unk_252E5B5C0);
          v33 = v614;
          if (__OFSUB__(v308, v309))
          {
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }

          v310 = (v308 - v309) & ~((v308 - v309) >> 63);
          v86 = __OFADD__(v307, v310);
          v311 = v307 + v310;
          v299 = v592;
          if (v86)
          {
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
            goto LABEL_427;
          }

          *(v3 + 40) = v311;
LABEL_212:
          v72 = v593;
          goto LABEL_213;
        }

LABEL_210:
        result = sub_25293847C(&v666, &qword_27F545530, &unk_252E5B5C0);
        v299 = v592;
        if (__OFADD__(v307, v301))
        {
          __break(1u);
LABEL_412:
          __break(1u);
          goto LABEL_413;
        }

        *(v3 + 40) = v307 + v301;
        v33 = v614;
        goto LABEL_212;
      }
    }

    else
    {
      v312 = v596;

      sub_2529F77E0();
      v313 = *(*(v3 + 44) + 16);
      sub_2529F7934(v313);
      v314 = *(v3 + 44);
      *(v314 + 16) = v313 + 1;
      v315 = v314 + 16 * v313;
      *(v315 + 32) = v595;
      *(v315 + 40) = v312;
      *(v3 + 44) = v314;
      if ((v300 & 1) == 0)
      {
        v307 = v629[40];
        goto LABEL_210;
      }
    }

    v33 = v614;
    v299 = v592;
  }

LABEL_213:
  memcpy(v629, v3, sizeof(v629));
  memcpy(v628, v3, sizeof(v628));
  sub_2529353AC(v629, v627);
  sub_252D02164(v613, v299, sub_252D083F0, v626);
  memcpy(v630, v628, sizeof(v630));
  sub_252935408(v630);
  v316 = *&v626[8];
  if (*&v626[8] == 1)
  {
    (*(v609 + 1))(v299, v33);
  }

  else
  {
    v317 = *v626;
    v318 = v626[24];
    v319 = v626[16];
    v320 = *&v626[20];
    v321 = *(v3 + 52);
    v322 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 52) = v321;
    if ((v322 & 1) == 0)
    {
      v321 = sub_2529F8360(0, *(v321 + 2) + 1, 1, v321);
      *(v3 + 52) = v321;
    }

    v323 = *(v321 + 2);
    sub_2529F79B0(v323);
    v324 = v614;
    (*(v609 + 1))(v592, v614);
    v325 = *(v3 + 52);
    *(v325 + 16) = v323 + 1;
    v326 = v325 + 32 * v323;
    *(v326 + 32) = v317;
    *(v326 + 40) = v316;
    v33 = v324;
    *(v326 + 48) = v319;
    *(v326 + 52) = v320;
    *(v326 + 56) = v318;
    *(v3 + 52) = v325;
    v72 = v593;
  }

LABEL_218:
  memcpy(v630, v3, sizeof(v630));
  memcpy(v629, v3, sizeof(v629));
  v327 = v606;
  (v601)(v606, *MEMORY[0x277D5E548], v72);
  sub_2529353AC(v630, v628);
  v328 = v578;
  sub_252D02F3C(v613, v327, v578);
  v600(v327, v72);
  sub_252935408(v630);
  if (v598(v328, 1, v33) != 1)
  {
    (*(v609 + 4))(v585, v328, v33);
    v329 = sub_252E347E4();
    v331 = v330;
    v332 = *(v3 + 19);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v333 = v613;
    }

    else
    {
      v333 = v613;
      v332 = sub_2529F7A80(0, *(v332 + 2) + 1, 1, v332);
    }

    v335 = *(v332 + 2);
    v334 = *(v332 + 3);
    if (v335 >= v334 >> 1)
    {
      v332 = sub_2529F7A80((v334 > 1), v335 + 1, 1, v332);
    }

    *(v332 + 2) = v335 + 1;
    v336 = &v332[16 * v335];
    *(v336 + 4) = v329;
    *(v336 + 5) = v331;
    *(v3 + 19) = v332;
    v337 = v585;
    if (v610)
    {
      goto LABEL_238;
    }

    memcpy(v628, v3, sizeof(v628));
    memcpy(v627, v3, sizeof(v627));
    sub_2529353AC(v628, v626);
    sub_252D01540(v333, v337, &v671);
    memcpy(v629, v627, sizeof(v629));
    sub_252935408(v629);
    v338 = v673;
    v339 = v672;
    v340 = v675;
    if (v675)
    {
      if (v675 == 1)
      {
        v33 = v614;
        goto LABEL_238;
      }

      v604 = *(&v671 + 1);
      v606 = v671;
      v345 = v674;

      sub_2529F77E0();
      v346 = *(*(v3 + 43) + 16);
      result = sub_2529F7934(v346);
      v347 = *(v3 + 43);
      *(v347 + 16) = v346 + 1;
      v348 = v347 + 16 * v346;
      *(v348 + 32) = v345;
      *(v348 + 40) = v340;
      *(v3 + 43) = v347;
      v349 = v628[40];
      if (v338)
      {
        v350 = v604 - v606;
        if (!__OFSUB__(v604, v606))
        {

          v351 = sub_252AD4324();
          sub_25293847C(&v671, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v671, &qword_27F545530, &unk_252E5B5C0);
          if (!__OFSUB__(v350, v351))
          {
            v352 = (v350 - v351) & ~((v350 - v351) >> 63);
            v86 = __OFADD__(v349, v352);
            v353 = v349 + v352;
            v33 = v614;
            v337 = v585;
            if (!v86)
            {
              *(v3 + 40) = v353;
              v333 = v613;
              goto LABEL_238;
            }

            goto LABEL_426;
          }

          goto LABEL_423;
        }

        goto LABEL_420;
      }
    }

    else
    {
      v341 = v596;

      sub_2529F77E0();
      v342 = *(*(v3 + 43) + 16);
      sub_2529F7934(v342);
      v343 = *(v3 + 43);
      *(v343 + 16) = v342 + 1;
      v344 = v343 + 16 * v342;
      *(v344 + 32) = v595;
      *(v344 + 40) = v341;
      *(v3 + 43) = v343;
      if (v338)
      {

        v33 = v614;
        v337 = v585;
        goto LABEL_238;
      }

      v349 = v628[40];
    }

    result = sub_25293847C(&v671, &qword_27F545530, &unk_252E5B5C0);
    v337 = v585;
    if (!__OFADD__(v349, v339))
    {
      *(v3 + 40) = v349 + v339;
      v333 = v613;
      v33 = v614;
LABEL_238:
      memcpy(v628, v3, sizeof(v628));
      memcpy(v627, v3, sizeof(v627));
      sub_2529353AC(v628, v626);
      sub_252D02164(v333, v337, sub_252D083F0, v625);
      memcpy(v629, v627, sizeof(v629));
      sub_252935408(v629);
      v354 = v625[1];
      if (v625[1] == 1)
      {
        (*(v609 + 1))(v337, v33);
      }

      else
      {
        LODWORD(v606) = LOBYTE(v625[3]);
        v355 = v625[2];
        v356 = v625[0];
        v357 = HIDWORD(v625[2]);
        sub_2529F7864();
        v358 = v337;
        v359 = *(*(v3 + 51) + 16);
        sub_2529F79B0(v359);
        (*(v609 + 1))(v358, v614);
        v360 = *(v3 + 51);
        *(v360 + 16) = v359 + 1;
        v361 = v360 + 32 * v359;
        *(v361 + 32) = v356;
        *(v361 + 40) = v354;
        v33 = v614;
        *(v361 + 48) = v355;
        *(v361 + 52) = v357;
        *(v361 + 56) = v606;
        *(v3 + 51) = v360;
      }

      goto LABEL_241;
    }

    goto LABEL_412;
  }

  sub_25293847C(v328, &qword_27F541D70, &unk_252E5B5A0);
LABEL_241:
  v363 = sub_252D01B8C(v613);
  v364 = v362;
  if (*(v363 + 16))
  {
    v365 = *(v3 + 47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_406;
    }

    goto LABEL_243;
  }

  if (*(v362 + 16))
  {
    v365 = *(v3 + 47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v365 = sub_2529F846C(0, *(v365 + 2) + 1, 1, v365);
    }

    v366 = v609;
    v372 = *(v365 + 2);
    v371 = *(v365 + 3);
    if (v372 >= v371 >> 1)
    {
      v365 = sub_2529F846C((v371 > 1), v372 + 1, 1, v365);
    }

    *(v365 + 2) = v372 + 1;
    v369 = &v365[v372];
    for (i = 7; ; i = 6)
    {
      v369[32] = i;
      *(v3 + 47) = v365;
      v629[0] = v364;
      sub_25297BA5C(v363);
      v373 = v629[0];
      v374 = *(v629[0] + 16);
      v375 = MEMORY[0x277D84F90];
      v594 = v629[0];
      if (v374)
      {
        v629[0] = MEMORY[0x277D84F90];
        sub_2529507DC(v374);
        v377 = *(v366 + 2);
        v376 = v366 + 16;
        v604 = v377;
        v378 = v373 + ((v376[64] + 32) & ~v376[64]);
        v601 = *(v376 + 7);
        v606 = v376;
        v379 = v376 - 8;
        do
        {
          v380 = v608;
          (v604)(v608, v378, v33);
          v381 = sub_252E347E4();
          v383 = v382;
          (*v379)(v380, v33);
          v375 = v629[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA3A0(0, *(v375 + 16) + 1, 1);
            v375 = v629[0];
          }

          v385 = *(v375 + 16);
          v384 = *(v375 + 24);
          if (v385 >= v384 >> 1)
          {
            sub_2529AA3A0((v384 > 1), v385 + 1, 1);
            v375 = v629[0];
          }

          *(v375 + 16) = v385 + 1;
          v386 = v375 + 16 * v385;
          *(v386 + 32) = v381;
          *(v386 + 40) = v383;
          v378 += v601;
          --v374;
          v33 = v614;
        }

        while (v374);
        v373 = v594;
      }

      v387 = sub_252DF88E4(v375);

      sub_25297A744(v387);
      v388 = *(v373 + 16);
      v389 = v607;
      v390 = v597;
      if (!v388)
      {
LABEL_281:

        goto LABEL_282;
      }

      v606 = *(v609 + 2);
      v363 = v373 + ((v609[80] + 32) & ~v609[80]);
      v601 = *(v609 + 9);
      v608 = v609 + 16;
      v604 = v609 + 8;
      v391 = (v388 - 1);
      (v606)(v597, v363, v33);
      while (1)
      {
        if (v610)
        {
          goto LABEL_275;
        }

        memcpy(v628, v3, sizeof(v628));
        memcpy(v627, v3, sizeof(v627));
        sub_2529353AC(v628, v626);
        sub_252D01540(v613, v390, &v676);
        v364 = v679;
        memcpy(v629, v627, sizeof(v629));
        sub_252935408(v629);
        v365 = v679;
        if (v679 == 1)
        {
          goto LABEL_275;
        }

        v392 = v628[40];
        if ((v678 & 1) == 0)
        {
          break;
        }

        if (v679)
        {
          v393 = *(&v676 + 1) - v676;
          if (__OFSUB__(*(&v676 + 1), v676))
          {
            goto LABEL_397;
          }

          v394 = v33;
          v33 = v363;

          v364 = sub_252AD4324();
          v365 = &qword_27F545530;
          v363 = &unk_252E5B5C0;
          sub_25293847C(&v676, &qword_27F545530, &unk_252E5B5C0);
          sub_25293847C(&v676, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v393, v364))
          {
            goto LABEL_398;
          }

          v395 = (v393 - v364) & ~((v393 - v364) >> 63);
          v86 = __OFADD__(v392, v395);
          v396 = v392 + v395;
          if (v86)
          {
            goto LABEL_399;
          }

          *(v3 + 40) = v396;
          v390 = v597;
          v363 = v33;
          v33 = v394;
          v389 = v607;
        }

        else
        {
        }

LABEL_275:
        memcpy(v628, v3, sizeof(v628));
        memcpy(v627, v3, sizeof(v627));
        sub_2529353AC(v628, v626);
        sub_252D02164(v613, v390, sub_252D083F0, v625);
        memcpy(v629, v627, sizeof(v629));
        sub_252935408(v629);
        v397 = v625[1];
        if (v625[1] == 1)
        {
          (*v604)(v390, v33);
          if (!v391)
          {
            goto LABEL_281;
          }
        }

        else
        {
          v600 = v391;
          v398 = v625[0];
          LODWORD(v599) = LOBYTE(v625[3]);
          v399 = v625[2];
          LODWORD(v598) = HIDWORD(v625[2]);
          v400 = *(v3 + 60);
          v401 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 60) = v400;
          v402 = v363;
          if ((v401 & 1) == 0)
          {
            v400 = sub_2529F8360(0, *(v400 + 2) + 1, 1, v400);
            *(v3 + 60) = v400;
          }

          v404 = *(v400 + 2);
          v403 = *(v400 + 3);
          if (v404 >= v403 >> 1)
          {
            *(v3 + 60) = sub_2529F8360((v403 > 1), v404 + 1, 1, v400);
          }

          v390 = v597;
          v405 = v614;
          (*v604)(v597, v614);
          v406 = *(v3 + 60);
          *(v406 + 16) = v404 + 1;
          v407 = v406 + 32 * v404;
          *(v407 + 32) = v398;
          *(v407 + 40) = v397;
          *(v407 + 48) = v399;
          *(v407 + 52) = v598;
          *(v407 + 56) = v599;
          v33 = v405;
          *(v3 + 60) = v406;
          v389 = v607;
          v363 = v402;
          v391 = v600;
          if (!v600)
          {
            goto LABEL_281;
          }
        }

        v391 = (v391 - 1);
        v363 += v601;
        (v606)(v390, v363, v33);
      }

      v364 = v677;
      sub_25293847C(&v676, &qword_27F545530, &unk_252E5B5C0);
      if (!__OFADD__(v392, v364))
      {
        *(v3 + 40) = v392 + v364;
        goto LABEL_275;
      }

      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
LABEL_406:
      v365 = sub_2529F846C(0, *(v365 + 2) + 1, 1, v365);
LABEL_243:
      v366 = v609;
      v368 = *(v365 + 2);
      v367 = *(v365 + 3);
      if (v368 >= v367 >> 1)
      {
        v365 = sub_2529F846C((v367 > 1), v368 + 1, 1, v365);
      }

      *(v365 + 2) = v368 + 1;
      v369 = &v365[v368];
    }
  }

  v389 = v607;
LABEL_282:
  v608 = v3 + 264;
  memcpy(v629, v3, sizeof(v629));
  v408 = *(v613 + 16);
  v593 = v408;
  if (v408)
  {
    v409 = v609;
    v601 = (v409[80] + 32) & ~v409[80];
    v410 = v613 + v601;
    v604 = 0x8000000252E7B360;
    sub_2529353AC(v629, v628);
    v411 = v409 + 16;
    v412 = *(v409 + 2);
    v413 = *(v409 + 9);
    v414 = v411 - 8;
    v606 = v411;
    v599 = (v411 + 16);
    v415 = MEMORY[0x277D84F90];
    v600 = v412;
    (v412)(v612, v410, v614);
    while (1)
    {
      v416 = sub_252E347F4();
      if (!v417)
      {
        break;
      }

      if (v416 == 0xD00000000000001BLL && v417 == v604)
      {
      }

      else
      {
        v418 = sub_252E37DB4();

        if ((v418 & 1) == 0)
        {
          break;
        }
      }

      (v412)(v605, v612, v614);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v415 = sub_2529F85CC(0, *(v415 + 2) + 1, 1, v415);
      }

      v420 = *(v415 + 2);
      v419 = *(v415 + 3);
      if (v420 >= v419 >> 1)
      {
        v415 = sub_2529F85CC(v419 > 1, v420 + 1, 1, v415);
      }

      v421 = v614;
      (*v414)(v612, v614);
      *(v415 + 2) = v420 + 1;
      (*v599)(&v415[v601 + v420 * v413], v605, v421);
      v412 = v600;
LABEL_285:
      v410 += v413;
      if (!--v408)
      {
        sub_252935408(v629);
        v389 = v607;
        v408 = v593;
        goto LABEL_299;
      }

      (v412)(v612, v410, v614);
    }

    (*v414)(v612, v614);
    goto LABEL_285;
  }

  v415 = MEMORY[0x277D84F90];
LABEL_299:
  v422 = *(v415 + 2);
  if (v422)
  {
    v597 = &v627[289];
    v423 = *(v609 + 2);
    v601 = &v627[264];
    v424 = v609[80];
    v592 = v415;
    v425 = &v415[(v424 + 32) & ~v424];
    v605 = *(v609 + 9);
    v606 = v423;
    v612 = (v609 + 16);
    v604 = v609 + 8;
    v427 = v613;
    v426 = v614;
    v428 = v603;
    (v423)(v603, v425, v614);
    while (1)
    {
      v429._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v429);
      v430 = v628[0];
      if (LOBYTE(v628[0]) == 52)
      {
        (*v604)(v428, v426);
        goto LABEL_302;
      }

      v431 = *(v3 + 18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v431 = sub_2529F80DC(0, *(v431 + 2) + 1, 1, v431);
      }

      v433 = *(v431 + 2);
      v432 = *(v431 + 3);
      if (v433 >= v432 >> 1)
      {
        v431 = sub_2529F80DC((v432 > 1), v433 + 1, 1, v431);
      }

      *(v431 + 2) = v433 + 1;
      v431[v433 + 32] = v430;
      *(v3 + 18) = v431;
      v434 = v603;
      if ((v610 & 1) == 0)
      {
        break;
      }

LABEL_324:
      v458 = *v3;
      v459 = *(v3 + 61);
      *&v627[480] = *(v3 + 60);
      v460 = *(v3 + 4);
      *v627 = v458;
      LOBYTE(v458) = v3[10];
      *&v627[8] = v460;
      v461 = *(v3 + 2);
      v627[10] = v458;
      LOWORD(v458) = *(v3 + 12);
      *&v627[16] = v461;
      LOBYTE(v461) = v3[26];
      *&v627[24] = v458;
      v462 = *(v3 + 4);
      v627[26] = v461;
      LOBYTE(v461) = v3[40];
      *&v627[32] = v462;
      LOBYTE(v462) = v3[64];
      v627[40] = v461;
      v463 = *(v3 + 25);
      v627[64] = v462;
      LOWORD(v462) = *(v3 + 104);
      *&v627[200] = v463;
      LOBYTE(v463) = v3[232];
      *&v627[208] = v462;
      v464 = *(v3 + 32);
      v627[232] = v463;
      v465 = *(v3 + 35);
      *&v627[256] = v464;
      LOBYTE(v464) = v3[288];
      *&v627[280] = v465;
      v466 = v608;
      LOBYTE(v465) = v608[25];
      v627[288] = v464;
      LOBYTE(v464) = v3[312];
      v467 = v601;
      *(v601 + 25) = v465;
      v468 = *(v3 + 40);
      v627[312] = v464;
      v469 = *(v3 + 47);
      *&v627[320] = v468;
      *&v627[376] = v469;
      v627[384] = v3[384];
      v627[385] = v466[121];
      v627[386] = v466[122];
      v627[387] = v466[123];
      v627[388] = v466[124];
      v627[389] = v466[125];
      *&v627[392] = *(v3 + 49);
      *&v627[488] = v459;
      *&v627[496] = *(v3 + 62);
      v470 = *(v3 + 28);
      *&v627[432] = *(v3 + 27);
      *&v627[448] = v470;
      *&v627[464] = *(v3 + 29);
      v471 = *(v3 + 26);
      *&v627[400] = *(v3 + 25);
      *&v627[416] = v471;
      *&v627[48] = *(v3 + 3);
      *&v627[72] = *(v3 + 72);
      *&v627[88] = *(v3 + 88);
      *&v627[104] = *(v3 + 104);
      *&v627[120] = *(v3 + 120);
      *&v627[136] = *(v3 + 136);
      *&v627[152] = *(v3 + 152);
      *&v627[168] = *(v3 + 168);
      *&v627[184] = *(v3 + 184);
      *&v627[216] = *(v3 + 216);
      *&v627[240] = *(v3 + 15);
      *v467 = *v466;
      v467[2] = *(v466 + 2);
      v472 = *(v466 + 5);
      v467[4] = *(v466 + 4);
      v467[5] = v472;
      v467[6] = *(v466 + 6);
      memcpy(v626, v627, sizeof(v626));
      sub_2529353AC(v627, v625);
      sub_252D02164(v427, v434, sub_252D083F0, &v620);
      memcpy(v628, v626, sizeof(v628));
      sub_252935408(v628);
      v473 = v621;
      if (v621 == 1)
      {
        v426 = v614;
        (*v604)(v434, v614);
        v428 = v434;
      }

      else
      {
        v474 = v620;
        v475 = v624;
        v476 = v622;
        v477 = v623;
        v478 = *(v3 + 54);
        v479 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 54) = v478;
        v600 = v474;
        LODWORD(v599) = v476;
        LODWORD(v598) = v477;
        if ((v479 & 1) == 0)
        {
          v478 = sub_2529F8360(0, *(v478 + 2) + 1, 1, v478);
          *(v3 + 54) = v478;
        }

        v481 = *(v478 + 2);
        v480 = *(v478 + 3);
        if (v481 >= v480 >> 1)
        {
          *(v3 + 54) = sub_2529F8360((v480 > 1), v481 + 1, 1, v478);
        }

        v482 = v603;
        v483 = v614;
        (*v604)(v603, v614);
        v484 = *(v3 + 54);
        *(v484 + 16) = v481 + 1;
        v485 = v484 + 32 * v481;
        *(v485 + 32) = v600;
        *(v485 + 40) = v473;
        v428 = v482;
        v426 = v483;
        *(v485 + 48) = v599;
        *(v485 + 52) = v598;
        *(v485 + 56) = v475;
        *(v3 + 54) = v484;
        v427 = v613;
        v389 = v607;
      }

LABEL_302:
      v425 = &v605[v425];
      if (!--v422)
      {

        v408 = v593;
        goto LABEL_333;
      }

      (v606)(v428, v425, v426);
    }

    v435 = *(v3 + 61);
    *&v627[480] = *(v3 + 60);
    *v627 = *v3;
    *&v627[8] = *(v3 + 4);
    v627[10] = v3[10];
    *&v627[16] = *(v3 + 2);
    *&v627[24] = *(v3 + 12);
    v627[26] = v3[26];
    *&v627[32] = *(v3 + 4);
    v627[40] = v3[40];
    v627[64] = v3[64];
    *&v627[136] = *(v3 + 17);
    v436 = *(v3 + 25);
    *&v627[144] = v431;
    v437 = *(v3 + 104);
    *&v627[200] = v436;
    LOBYTE(v436) = v3[232];
    *&v627[208] = v437;
    v627[232] = v436;
    v438 = *(v3 + 33);
    *&v627[256] = *(v3 + 32);
    LOBYTE(v436) = v3[288];
    *&v627[264] = v438;
    v439 = v608;
    LOBYTE(v438) = v608[25];
    v627[288] = v436;
    v440 = v597;
    *v597 = v438;
    v441 = *(v3 + 38);
    *&v627[296] = *(v3 + 37);
    *&v627[304] = v441;
    v627[312] = v3[312];
    *&v627[344] = *(v3 + 43);
    v627[384] = v3[384];
    v627[385] = v439[121];
    v627[386] = v439[122];
    v627[387] = v439[123];
    v627[388] = v439[124];
    v627[389] = v439[125];
    *&v627[392] = *(v3 + 49);
    *&v627[488] = v435;
    *&v627[496] = *(v3 + 62);
    v600 = *(v3 + 40);
    *&v627[320] = v600;
    v442 = *(v3 + 28);
    *&v627[432] = *(v3 + 27);
    *&v627[448] = v442;
    *&v627[464] = *(v3 + 29);
    v443 = *(v3 + 26);
    *&v627[400] = *(v3 + 25);
    *&v627[416] = v443;
    *&v627[48] = *(v3 + 3);
    *&v627[72] = *(v3 + 72);
    *&v627[88] = *(v3 + 88);
    *&v627[104] = *(v3 + 104);
    *&v627[120] = *(v3 + 120);
    *&v627[152] = *(v3 + 152);
    *&v627[168] = *(v3 + 168);
    *&v627[184] = *(v3 + 184);
    *&v627[216] = *(v3 + 216);
    *&v627[240] = *(v3 + 15);
    *&v627[272] = *(v3 + 17);
    *(v440 + 39) = *(v439 + 4);
    v444 = *(v3 + 23);
    *&v627[352] = *(v3 + 22);
    *&v627[368] = v444;
    memcpy(v626, v627, sizeof(v626));
    sub_2529353AC(v627, v625);
    v445 = v427;
    v446 = v434;
    sub_252D01540(v427, v434, &v680);
    v447 = v684;
    memcpy(v628, v626, sizeof(v628));
    sub_252935408(v628);
    v365 = v682;
    v448 = v681;
    v363 = v684;
    if (v684)
    {
      if (v684 == 1)
      {
        v389 = v607;
        v434 = v446;
        v427 = v445;
        goto LABEL_324;
      }

      v598 = *(&v680 + 1);
      v599 = v680;
      v33 = v683;
      v594 = v447;

      sub_2529F77E0();
      v452 = *(*(v3 + 42) + 16);
      v364 = (v3 + 336);
      sub_2529F7934(v452);
      v453 = *(v3 + 42);
      *(v453 + 16) = v452 + 1;
      v454 = v453 + 16 * v452;
      *(v454 + 32) = v33;
      *(v454 + 40) = v363;
      *(v3 + 42) = v453;
      if (v365)
      {
        v455 = v598 - v599;
        if (__OFSUB__(v598, v599))
        {
          goto LABEL_400;
        }

        v364 = sub_252AD4324();
        v365 = &qword_27F545530;
        v33 = &unk_252E5B5C0;
        sub_25293847C(&v680, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(&v680, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v455, v364))
        {
          goto LABEL_401;
        }

        v456 = (v455 - v364) & ~((v455 - v364) >> 63);
        v86 = __OFADD__(v600, v456);
        v457 = v600 + v456;
        if (v86)
        {
          goto LABEL_402;
        }

        goto LABEL_322;
      }
    }

    else
    {
      v33 = v447;
      v363 = v596;

      sub_2529F77E0();
      v449 = *(*(v3 + 42) + 16);
      v364 = (v3 + 336);
      sub_2529F7934(v449);
      v450 = *(v3 + 42);
      *(v450 + 16) = v449 + 1;
      v451 = v450 + 16 * v449;
      *(v451 + 32) = v595;
      *(v451 + 40) = v363;
      *(v3 + 42) = v450;
      if (v365)
      {

LABEL_323:
        v427 = v613;
        v389 = v607;
        v434 = v603;
        goto LABEL_324;
      }
    }

    sub_25293847C(&v680, &qword_27F545530, &unk_252E5B5C0);
    v457 = v600 + v448;
    if (__OFADD__(v600, v448))
    {
      goto LABEL_395;
    }

LABEL_322:
    *(v3 + 40) = v457;
    goto LABEL_323;
  }

  v427 = v613;
LABEL_333:
  memcpy(v628, v3, sizeof(v628));
  if (v408)
  {
    v603 = v3;
    v486 = v427;
    v487 = v609;
    v606 = ((v609[80] + 32) & ~v609[80]);
    v488 = &v606[v486];
    v612 = 0x8000000252E7B340;
    sub_2529353AC(v628, v627);
    v490 = *(v487 + 2);
    v487 += 16;
    v489 = v490;
    v491 = *(v487 + 7);
    v492 = v487 - 8;
    v604 = v487 + 16;
    v493 = MEMORY[0x277D84F90];
    v605 = v487;
    v490(v611, v488, v614);
    while (1)
    {
      v494 = sub_252E347F4();
      if (!v495)
      {
        break;
      }

      if (v494 == 0xD000000000000015 && v495 == v612)
      {
      }

      else
      {
        v496 = sub_252E37DB4();

        if ((v496 & 1) == 0)
        {
          break;
        }
      }

      v489(v602, v611, v614);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v493 = sub_2529F85CC(0, v493[2] + 1, 1, v493);
      }

      v497 = v489;
      v499 = v493[2];
      v498 = v493[3];
      if (v499 >= v498 >> 1)
      {
        v500 = sub_2529F85CC(v498 > 1, v499 + 1, 1, v493);
      }

      else
      {
        v500 = v493;
      }

      v501 = v614;
      (*v492)(v611, v614);
      *(v500 + 16) = v499 + 1;
      v502 = v501;
      v493 = v500;
      (*v604)(&v606[v500 + v499 * v491], v602, v502);
      v489 = v497;
LABEL_336:
      v488 += v491;
      if (!--v408)
      {
        sub_252935408(v628);
        v427 = v613;
        v389 = v607;
        v3 = v603;
        goto LABEL_351;
      }

      v489(v611, v488, v614);
    }

    (*v492)(v611, v614);
    goto LABEL_336;
  }

  v493 = MEMORY[0x277D84F90];
LABEL_351:
  v503 = v493[2];
  v504 = v493;
  v505 = v614;
  if (v503)
  {
    v506 = *(v609 + 2);
    v604 = &v626[264];
    v605 = v506;
    v507 = (v609[80] + 32) & ~v609[80];
    v599 = v504;
    v365 = v504 + v507;
    v508 = *(v609 + 9);
    v609 += 16;
    v611 = v609 - 8;
    v612 = v508;
    (v506)(v389, v504 + v507, v614);
    while (1)
    {
      v509._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v509);
      v510 = v627[0];
      if (v627[0] == 52)
      {
        (*v611)(v389, v505);
        goto LABEL_354;
      }

      v511 = *(v3 + 17);
      v512 = swift_isUniquelyReferenced_nonNull_native();
      v606 = v503;
      if ((v512 & 1) == 0)
      {
        v511 = sub_2529F80DC(0, *(v511 + 2) + 1, 1, v511);
      }

      v514 = *(v511 + 2);
      v513 = *(v511 + 3);
      if (v514 >= v513 >> 1)
      {
        v511 = sub_2529F80DC((v513 > 1), v514 + 1, 1, v511);
      }

      *(v511 + 2) = v514 + 1;
      v511[v514 + 32] = v510;
      *(v3 + 17) = v511;
      if ((v610 & 1) == 0)
      {
        break;
      }

LABEL_375:
      v542 = *v3;
      v543 = *(v3 + 61);
      *&v626[480] = *(v3 + 60);
      v544 = *(v3 + 4);
      *v626 = v542;
      LOBYTE(v542) = v3[10];
      *&v626[8] = v544;
      v545 = *(v3 + 2);
      v626[10] = v542;
      LOWORD(v542) = *(v3 + 12);
      *&v626[16] = v545;
      LOBYTE(v545) = v3[26];
      *&v626[24] = v542;
      v546 = *(v3 + 4);
      v626[26] = v545;
      LOBYTE(v545) = v3[40];
      *&v626[32] = v546;
      LOBYTE(v546) = v3[64];
      v626[40] = v545;
      v547 = *(v3 + 25);
      v626[64] = v546;
      LOWORD(v546) = *(v3 + 104);
      *&v626[200] = v547;
      LOBYTE(v547) = v3[232];
      *&v626[208] = v546;
      v548 = *(v3 + 32);
      v626[232] = v547;
      v549 = *(v3 + 35);
      *&v626[256] = v548;
      LOBYTE(v548) = v3[288];
      *&v626[280] = v549;
      v550 = v608;
      LOBYTE(v549) = v608[25];
      v626[288] = v548;
      LOBYTE(v548) = v3[312];
      v551 = v604;
      v604[25] = v549;
      v552 = *(v3 + 40);
      v626[312] = v548;
      v553 = *(v3 + 47);
      *&v626[320] = v552;
      *&v626[376] = v553;
      v626[384] = v3[384];
      v626[385] = v550[121];
      v626[386] = v550[122];
      v626[387] = v550[123];
      v626[388] = v550[124];
      v626[389] = v550[125];
      *&v626[392] = *(v3 + 49);
      *&v626[488] = v543;
      *&v626[496] = *(v3 + 62);
      v554 = *(v3 + 28);
      *&v626[432] = *(v3 + 27);
      *&v626[448] = v554;
      *&v626[464] = *(v3 + 29);
      v555 = *(v3 + 26);
      *&v626[400] = *(v3 + 25);
      *&v626[416] = v555;
      *&v626[48] = *(v3 + 3);
      *&v626[72] = *(v3 + 72);
      *&v626[88] = *(v3 + 88);
      *&v626[104] = *(v3 + 104);
      *&v626[120] = *(v3 + 120);
      *&v626[136] = *(v3 + 136);
      *&v626[152] = *(v3 + 152);
      *&v626[168] = *(v3 + 168);
      *&v626[184] = *(v3 + 184);
      *&v626[216] = *(v3 + 216);
      *&v626[240] = *(v3 + 15);
      *v551 = *v550;
      *(v551 + 2) = *(v550 + 2);
      v556 = *(v550 + 5);
      *(v551 + 4) = *(v550 + 4);
      *(v551 + 5) = v556;
      *(v551 + 6) = *(v550 + 6);
      memcpy(v625, v626, sizeof(v625));
      sub_2529353AC(v626, &v620);
      sub_252D02164(v427, v389, sub_252D083F0, &v615);
      memcpy(v627, v625, sizeof(v627));
      sub_252935408(v627);
      v557 = v616;
      if (v616 == 1)
      {
        v505 = v614;
        (*v611)(v389, v614);
      }

      else
      {
        v558 = v615;
        v559 = v619;
        v560 = v617;
        v561 = v618;
        v562 = *(v3 + 53);
        v563 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 53) = v562;
        v603 = v558;
        LODWORD(v602) = v560;
        LODWORD(v601) = v561;
        if ((v563 & 1) == 0)
        {
          v562 = sub_2529F8360(0, *(v562 + 2) + 1, 1, v562);
          *(v3 + 53) = v562;
        }

        v565 = *(v562 + 2);
        v564 = *(v562 + 3);
        if (v565 >= v564 >> 1)
        {
          *(v3 + 53) = sub_2529F8360((v564 > 1), v565 + 1, 1, v562);
        }

        v566 = v607;
        v567 = v614;
        (*v611)(v607, v614);
        v568 = *(v3 + 53);
        *(v568 + 16) = v565 + 1;
        v569 = v568 + 32 * v565;
        v505 = v567;
        *(v569 + 32) = v603;
        *(v569 + 40) = v557;
        *(v569 + 48) = v602;
        *(v569 + 52) = v601;
        *(v569 + 56) = v559;
        v389 = v566;
        *(v3 + 53) = v568;
        v427 = v613;
      }

      v506 = v605;
      v503 = v606;
LABEL_354:
      v365 += v612;
      if (!--v503)
      {
        goto LABEL_383;
      }

      (v506)(v389, v365, v505);
    }

    v515 = *(v3 + 61);
    *&v626[480] = *(v3 + 60);
    *v626 = *v3;
    *&v626[8] = *(v3 + 4);
    v626[10] = v3[10];
    *&v626[16] = *(v3 + 2);
    *&v626[24] = *(v3 + 12);
    v626[26] = v3[26];
    *&v626[32] = *(v3 + 4);
    v626[40] = v3[40];
    v626[64] = v3[64];
    v516 = *(v3 + 104);
    *&v626[136] = v511;
    v517 = v3[232];
    *&v626[208] = v516;
    v626[232] = v517;
    v518 = *(v3 + 33);
    *&v626[256] = *(v3 + 32);
    LOBYTE(v516) = v3[288];
    *&v626[264] = v518;
    LOBYTE(v518) = v608[25];
    v626[288] = v516;
    v626[289] = v518;
    v519 = *(v3 + 38);
    *&v626[296] = *(v3 + 37);
    *&v626[304] = v519;
    v626[312] = v3[312];
    v520 = *(v3 + 40);
    *&v626[328] = *(v3 + 41);
    v626[384] = v3[384];
    v626[385] = v608[121];
    v626[386] = v608[122];
    v626[387] = v608[123];
    v626[388] = v608[124];
    v626[389] = v608[125];
    *&v626[392] = *(v3 + 49);
    *&v626[488] = v515;
    *&v626[496] = *(v3 + 62);
    *&v626[320] = v520;
    v521 = *(v3 + 28);
    *&v626[432] = *(v3 + 27);
    *&v626[448] = v521;
    *&v626[464] = *(v3 + 29);
    v522 = *(v3 + 26);
    *&v626[400] = *(v3 + 25);
    *&v626[416] = v522;
    *&v626[48] = *(v3 + 3);
    *&v626[72] = *(v3 + 72);
    *&v626[88] = *(v3 + 88);
    *&v626[104] = *(v3 + 104);
    *&v626[120] = *(v3 + 120);
    v523 = *(v3 + 10);
    *&v626[144] = *(v3 + 9);
    *&v626[160] = v523;
    v524 = *(v3 + 12);
    *&v626[176] = *(v3 + 11);
    *&v626[192] = v524;
    *&v626[216] = *(v3 + 216);
    *&v626[240] = *(v3 + 15);
    *&v626[272] = *(v3 + 17);
    v525 = *(v3 + 22);
    *&v626[336] = *(v3 + 21);
    *&v626[352] = v525;
    *&v626[368] = *(v3 + 23);
    memcpy(v625, v626, sizeof(v625));
    sub_2529353AC(v626, &v620);
    sub_252D01540(v427, v389, &v685);
    v526 = v689;
    memcpy(v627, v625, sizeof(v627));
    sub_252935408(v627);
    v363 = v687;
    v33 = v686;
    v527 = v689;
    if (v689)
    {
      if (v689 != 1)
      {
        v600 = *(&v685 + 1);
        v601 = v685;
        v602 = v520;
        v603 = v526;
        v528 = v686;
        v529 = v688;

        v530 = v608;
        sub_2529F77E0();
        v531 = *(*(v530 + 8) + 16);
        sub_2529F7934(v531);
        v364 = v529;
        v33 = v528;
        v520 = v602;
        v532 = *(v530 + 8);
        *(v532 + 16) = v531 + 1;
        v533 = v532 + 16 * v531;
        *(v533 + 32) = v364;
        *(v533 + 40) = v527;
        *(v530 + 8) = v532;
        if (v363)
        {
          v534 = v600 - v601;
          if (__OFSUB__(v600, v601))
          {
            goto LABEL_403;
          }

          v33 = v520;

          v364 = sub_252AD4324();
          sub_25293847C(&v685, &qword_27F545530, &unk_252E5B5C0);
          sub_25293847C(&v685, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v534, v364))
          {
            goto LABEL_404;
          }

          v535 = &v534[-v364] & ~(&v534[-v364] >> 63);
          v86 = __OFADD__(v520, v535);
          v536 = &v520[v535];
          if (v86)
          {
            goto LABEL_405;
          }

          goto LABEL_373;
        }

LABEL_372:
        sub_25293847C(&v685, &qword_27F545530, &unk_252E5B5C0);
        v536 = v33 + v520;
        if (__OFADD__(v520, v33))
        {
          goto LABEL_396;
        }

LABEL_373:
        *(v3 + 40) = v536;
      }
    }

    else
    {
      v603 = v526;
      v537 = v596;

      v538 = v608;
      sub_2529F77E0();
      v539 = *(*(v538 + 8) + 16);
      v364 = (v538 + 64);
      sub_2529F7934(v539);
      v540 = *(v538 + 8);
      *(v540 + 16) = v539 + 1;
      v541 = v540 + 16 * v539;
      *(v541 + 32) = v595;
      *(v541 + 40) = v537;
      *(v538 + 8) = v540;
      if ((v363 & 1) == 0)
      {
        goto LABEL_372;
      }
    }

    v427 = v613;
    v389 = v607;
    goto LABEL_375;
  }

LABEL_383:

  v570 = sub_252D02644(v427);
  if (*(v570 + 16))
  {
    sub_2529F77F8();
    v571 = *(*(v3 + 12) + 16);
    sub_2529F794C(v571);
    v572 = *(v3 + 12);
    *(v572 + 16) = v571 + 1;
    *(v572 + 8 * v571 + 32) = v570;
    *(v3 + 12) = v572;
  }

  else
  {
  }

  v573 = v596;

  sub_2529F77E0();
  v574 = *(*(v3 + 46) + 16);
  result = sub_2529F7934(v574);
  v575 = *(v3 + 46);
  *(v575 + 16) = v574 + 1;
  v576 = v575 + 16 * v574;
  *(v576 + 32) = v595;
  *(v576 + 40) = v573;
  *(v3 + 46) = v575;
  return result;
}