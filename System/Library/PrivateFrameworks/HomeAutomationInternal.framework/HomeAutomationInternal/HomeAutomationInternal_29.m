uint64_t sub_252B3A69C(__int16 *a1, __int16 *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HueSemantic.rawValue.getter();
  v4 = v3;
  if (v2 == HueSemantic.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252B3A738()
{
  v1 = *v0;
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B3A7A0()
{
  v2 = *v0;
  HueSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252B3A804()
{
  v1 = *v0;
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B3A874@<X0>(uint64_t *a1@<X8>)
{
  result = HueSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252B3A89C(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = HueSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == HueSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252B3A938(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v11 = *a2;
  v3 = HueSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == HueSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252B3A9E8(__int16 *a1, __int16 *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = HueSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == HueSemantic.rawValue.getter() && v5 == v6)
  {

    v9 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();

    v9 = v8 ^ 1;
  }

  return v9 & 1;
}

uint64_t sub_252B3AA98(__int16 *a1, __int16 *a2)
{
  v2 = *a1;
  v10 = *a2;
  v3 = HueSemantic.rawValue.getter();
  v5 = v4;
  if (v3 == HueSemantic.rawValue.getter() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252B3ABF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252B3AF48();
  v5 = sub_252B3AF9C();
  v6 = sub_252B3AFF0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252B3AC68()
{
  result = qword_27F543508;
  if (!qword_27F543508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543508);
  }

  return result;
}

unint64_t sub_252B3ACC0()
{
  result = qword_27F543510;
  if (!qword_27F543510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540928, &unk_252E3DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543510);
  }

  return result;
}

unint64_t sub_252B3AD28()
{
  result = qword_27F543518;
  if (!qword_27F543518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543518);
  }

  return result;
}

unint64_t sub_252B3AD80()
{
  result = qword_27F543520;
  if (!qword_27F543520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HueSemantic(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD3C)
  {
    goto LABEL_17;
  }

  if (a2 + 708 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 708 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 708;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 708;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 708;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2C5;
  v8 = v6 - 709;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HueSemantic(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 708 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 708 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD3C)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD3B)
  {
    v6 = ((a2 - 64828) >> 16) + 1;
    *result = a2 + 708;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 708;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_252B3AF48()
{
  result = qword_27F543528;
  if (!qword_27F543528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543528);
  }

  return result;
}

unint64_t sub_252B3AF9C()
{
  result = qword_27F543530;
  if (!qword_27F543530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543530);
  }

  return result;
}

unint64_t sub_252B3AFF0()
{
  result = qword_27F543538;
  if (!qword_27F543538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543538);
  }

  return result;
}

uint64_t sub_252B3B048@<X0>(unint64_t a1@<X8>)
{
  v2 = sub_252998BC8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v4; i = a1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v5, v3);
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_30;
      }

LABEL_7:
      v10 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      if (v10)
      {
        v11 = *(v10 + 24);
        v12 = *(v10 + 32);

        if (v12)
        {
          v13 = 6;
        }

        else if (v11 >= 1.0)
        {
          if (v11 >= 11.0)
          {
            if (v11 >= 100.0)
            {
              if (v11 >= 1000.0)
              {
                if (v11 >= 10000.0)
                {
                  v13 = 5;
                }

                else
                {
                  v13 = 4;
                }
              }

              else
              {
                v13 = 3;
              }
            }

            else
            {
              v13 = 2;
            }
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {

        v13 = 6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2529F861C(0, *(v6 + 2) + 1, 1, v6);
      }

      a1 = *(v6 + 2);
      v14 = *(v6 + 3);
      if (a1 >= v14 >> 1)
      {
        v6 = sub_2529F861C((v14 > 1), a1 + 1, 1, v6);
      }

      *(v6 + 2) = a1 + 1;
      v6[a1 + 32] = v13;
      ++v5;
      if (v9 == v4)
      {
        goto LABEL_34;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v7 = *(v3 + 8 * v5 + 32);

    v9 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v4 = sub_252E378C4();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_34:

  v15 = *(v6 + 2);
  if (!v15)
  {
    goto LABEL_37;
  }

  if (v6[32] > 5u)
  {

    v18 = 1;
LABEL_38:
    v19 = i;
LABEL_39:

    v20 = sub_252E36324();
    v21 = *(*(v20 - 8) + 56);

    return v21(v19, v18, 1, v20);
  }

  v16 = sub_252E37DB4();

  if (v16)
  {
LABEL_37:
    v18 = 1;
    goto LABEL_38;
  }

  v22 = 0;
  do
  {
    if (v22 >= *(v6 + 2))
    {
      __break(1u);
      goto LABEL_94;
    }

    v24 = v22 + 1;
    v25 = v6[v22 + 32];
    v26 = v6[32];
    v27 = 0xEA00000000007468;
    if (v25 == 5)
    {
      v28 = 0x6769724279726576;
    }

    else
    {
      v28 = 0x6E776F6E6B6E75;
    }

    if (v25 != 5)
    {
      v27 = 0xE700000000000000;
    }

    v29 = 0x746867697262;
    if (v25 == 3)
    {
      v29 = 7170404;
    }

    v30 = 0xE300000000000000;
    if (v25 != 3)
    {
      v30 = 0xE600000000000000;
    }

    if (v25 <= 4)
    {
      v28 = v29;
      v27 = v30;
    }

    v31 = 0x6B72614479726576;
    if (v25 != 1)
    {
      v31 = 1802658148;
    }

    v32 = 0xE800000000000000;
    if (v25 != 1)
    {
      v32 = 0xE400000000000000;
    }

    if (!v25)
    {
      v31 = 0x616C426863746970;
      v32 = 0xEA00000000006B63;
    }

    if (v25 <= 2)
    {
      v33 = v31;
    }

    else
    {
      v33 = v28;
    }

    if (v25 <= 2)
    {
      v34 = v32;
    }

    else
    {
      v34 = v27;
    }

    if (v6[32] <= 2u)
    {
      if (v6[32])
      {
        if (v26 == 1)
        {
          v35 = 0xE800000000000000;
          if (v33 != 0x6B72614479726576)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v35 = 0xE400000000000000;
          if (v33 != 1802658148)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        v35 = 0xEA00000000006B63;
        if (v33 != 0x616C426863746970)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v6[32] > 4u)
    {
      if (v26 == 5)
      {
        v35 = 0xEA00000000007468;
        if (v33 != 0x6769724279726576)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v35 = 0xE700000000000000;
        if (v33 != 0x6E776F6E6B6E75)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v26 == 3)
    {
      v35 = 0xE300000000000000;
      if (v33 != 7170404)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v35 = 0xE600000000000000;
      if (v33 != 0x746867697262)
      {
        goto LABEL_43;
      }
    }

    if (v34 == v35)
    {

      goto LABEL_44;
    }

LABEL_43:
    v23 = sub_252E37DB4();

    if ((v23 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_44:
    v22 = v24;
  }

  while (v15 != v24);
  if (*(v6 + 2))
  {
    v36 = v6[32];

    v19 = i;
    sub_252E37024();
    v18 = 0;
    goto LABEL_39;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_252B3B6B4()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252B3B7BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252B3B924();
  *a2 = result;
  return result;
}

void sub_252B3B7EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x616C426863746970;
  v4 = 0xEA00000000007468;
  v5 = 0x6769724279726576;
  if (v2 != 5)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = 0xE300000000000000;
  v7 = 7170404;
  if (v2 != 3)
  {
    v7 = 0x746867697262;
    v6 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6B72614479726576;
  if (v2 != 1)
  {
    v9 = 1802658148;
    v8 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA00000000006B63;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

unint64_t sub_252B3B8D0()
{
  result = qword_27F543540;
  if (!qword_27F543540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543540);
  }

  return result;
}

uint64_t sub_252B3B924()
{
  v0 = sub_252E37B74();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252B3B970@<X0>(uint64_t a1@<X8>)
{
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v3 = *(*(v102 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v102);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v105 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v83 = &v76 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v81 = &v76 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v76 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v76 - v20);
  MEMORY[0x28223BE20](v19);
  v103 = (&v76 - v22);
  v23 = sub_252E36324();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v88 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v87 = &v76 - v29;
  MEMORY[0x28223BE20](v28);
  v104 = &v76 - v30;
  result = sub_252998D84();
  v92 = *(result + 16);
  if (!v92)
  {

LABEL_19:
    sub_252E37024();
    return (*(v24 + 56))(a1, 0, 1, v23);
  }

  v84 = v18;
  v78 = v1;
  v80 = v11;
  v79 = a1;
  v32 = 0;
  v77 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v93 = (result + v77);
  v94 = result;
  v101 = v24 + 56;
  v33 = (v24 + 48);
  v86 = (v24 + 32);
  v99 = v24 + 16;
  v100 = (v24 + 8);
  v95 = v24;
  v90 = (v24 + 48);
  while (1)
  {
    if (v32 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v96 = *(v24 + 72);
    v34 = *(v24 + 16);
    v35 = v104;
    v34(v104, &v93[v96 * v32], v23);
    v36 = v103;
    v98 = v34;
    v34(v103, v35, v23);
    v37 = *(v24 + 56);
    v37(v36, 0, 1, v23);
    if (qword_27F53F2A8 != -1)
    {
      swift_once();
    }

    v38 = off_27F541CD8;
    if (*(off_27F541CD8 + 2) && (v39 = sub_252A488EC(36), (v40 & 1) != 0))
    {
      v106 = *(v38[7] + v39);
      AttributeSemantic.rawValue.getter();
      sub_252E362F4();
      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v37(v21, v41, 1, v23);
    v42 = *(v102 + 48);
    v43 = v105;
    sub_252956C1C(v36, v105);
    sub_252956C1C(v21, v43 + v42);
    v44 = v36;
    v45 = *v33;
    v46 = (*v33)(v43, 1, v23);
    v97 = v38;
    if (v46 != 1)
    {
      break;
    }

    sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v44, &qword_27F540298, &unk_252E3C270);
    v47 = *v100;
    (*v100)(v104, v23);
    if (v45(&v105[v42], 1, v23) != 1)
    {
      v89 = v45;
      v56 = v81;
      goto LABEL_22;
    }

    sub_25293847C(v105, &qword_27F540298, &unk_252E3C270);
LABEL_3:
    ++v32;
    result = v94;
    v24 = v95;
    if (v92 == v32)
    {

      a1 = v79;
      goto LABEL_19;
    }
  }

  v48 = v105;
  v49 = v21;
  v50 = v84;
  sub_252956C1C(v105, v84);
  v89 = v45;
  if (v45(v48 + v42, 1, v23) != 1)
  {
    v51 = v37;
    v52 = v87;
    (*v86)(v87, v48 + v42, v23);
    sub_252B3DE3C();
    v91 = sub_252E36EF4();
    v53 = *v100;
    (*v100)(v52, v23);
    sub_25293847C(v49, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v103, &qword_27F540298, &unk_252E3C270);
    v53(v104, v23);
    v54 = v50;
    v21 = v49;
    v53(v54, v23);
    sub_25293847C(v48, &qword_27F540298, &unk_252E3C270);
    v33 = v90;
    if ((v91 & 1) == 0)
    {
      v56 = v81;
      v37 = v51;
      v57 = v101;
      v47 = v53;
      goto LABEL_23;
    }

    goto LABEL_3;
  }

  sub_25293847C(v49, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v103, &qword_27F540298, &unk_252E3C270);
  v55 = *v100;
  (*v100)(v104, v23);
  v55(v50, v23);
  v56 = v81;
  v47 = v55;
LABEL_22:
  sub_25293847C(v105, &qword_27F540758, &unk_252E4D160);
  v57 = v101;
LABEL_23:
  v95 = v57 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;

  result = sub_252998D84();
  v94 = result;
  v58 = v83;
  v93 = *(result + 16);
  if (!v93)
  {
LABEL_39:

    v74 = v37;
    v75 = v79;
    sub_252E37024();
    return v74(v75, 0, 1, v23);
  }

  v59 = 0;
  v105 = (v94 + v77);
  v103 = v47;
  v85 = v37;
  while (v59 < *(v94 + 16))
  {
    v60 = v88;
    v61 = v98;
    v98(v88, v105, v23);
    v62 = v60;
    v37 = v85;
    v61(v56, v62, v23);
    v63 = 1;
    v37(v56, 0, 1, v23);
    v64 = v97;
    if (v97[2])
    {
      v65 = sub_252A488EC(33);
      if (v66)
      {
        v107 = *(v64[7] + v65);
        AttributeSemantic.rawValue.getter();
        sub_252E362F4();
        v63 = 0;
      }
    }

    v37(v58, v63, 1, v23);
    v67 = *(v102 + 48);
    v68 = v82;
    sub_252956C1C(v56, v82);
    sub_252956C1C(v58, v68 + v67);
    v69 = v56;
    v70 = v89;
    v71 = v89(v68, 1, v23);
    v104 = v59;
    if (v71 == 1)
    {
      sub_25293847C(v58, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v69, &qword_27F540298, &unk_252E3C270);
      v103(v88, v23);
      if (v70(v68 + v67, 1, v23) != 1)
      {
        goto LABEL_38;
      }

      result = sub_25293847C(v68, &qword_27F540298, &unk_252E3C270);
      v56 = v69;
      v58 = v83;
    }

    else
    {
      v72 = v80;
      sub_252956C1C(v68, v80);
      if (v70(v68 + v67, 1, v23) == 1)
      {
        sub_25293847C(v83, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v81, &qword_27F540298, &unk_252E3C270);
        v47(v88, v23);
        v47(v72, v23);
        v37 = v85;
LABEL_38:
        sub_25293847C(v68, &qword_27F540758, &unk_252E4D160);
        goto LABEL_39;
      }

      v73 = v87;
      (*v86)(v87, v68 + v67, v23);
      sub_252B3DE3C();
      LODWORD(v92) = sub_252E36EF4();
      v47(v73, v23);
      v58 = v83;
      sub_25293847C(v83, &qword_27F540298, &unk_252E3C270);
      v56 = v81;
      sub_25293847C(v81, &qword_27F540298, &unk_252E3C270);
      v47(v88, v23);
      v47(v72, v23);
      result = sub_25293847C(v68, &qword_27F540298, &unk_252E3C270);
      v37 = v85;
      if ((v92 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v59 = v104 + 1;
    v105 += v96;
    v47 = v103;
    if (v93 == v104 + 1)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_252B3C50C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v45 = v0;
  v8 = *(v0 + 24);
  v48 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_50;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_51:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  while (1)
  {
    v10 = 0;
    v38 = v8 & 0xFFFFFFFFFFFFFF8;
    v39 = v8 & 0xC000000000000001;
    v37 = v8 + 32;
    v40 = v5;
    v43 = v7;
    v35 = v9;
    v36 = v8;
LABEL_6:
    if (v39)
    {
      break;
    }

    if (v10 >= *(v38 + 16))
    {
      goto LABEL_49;
    }

    v11 = *(v37 + 8 * v10);

    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v33 = v8;
    v9 = sub_252E378C4();
    v8 = v33;
    if (!v9)
    {
      goto LABEL_51;
    }
  }

  v12 = MEMORY[0x2530ADF00](v10);
  v13 = __OFADD__(v10, 1);
  v14 = v10 + 1;
  if (v13)
  {
    goto LABEL_48;
  }

LABEL_9:
  v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  v41 = v12;
  v42 = v14;
  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v15 & 0xC000000000000001;

  v17 = 0;
  v44 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v47 == v17)
    {

      goto LABEL_5;
    }

    if (v46)
    {
      v5 = MEMORY[0x2530ADF00](v17, v15);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_47;
      }

      v5 = *(v15 + 8 * v17 + 32);

      if (__OFADD__(v17, 1))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    v18 = *&v5[OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue];
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (!v19 || (*(v19 + 32) & 1) != 0)
    {
      goto LABEL_12;
    }

    v20 = *(v19 + 24);
    v21 = v43;
    sub_252B3B970(v43);
    v22 = sub_252E36324();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v21, 1, v22) == 1)
    {
      sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
    }

    else
    {
      v7 = sub_252E36304();
      v27 = v26;
      (*(v23 + 8))(v21, v22);
      if (v7 == 0x69446E6F62726163 && v27 == 0xED0000656469786FLL)
      {

LABEL_31:
        v16 = v44;
        if (v20 <= 1000.0)
        {
          goto LABEL_40;
        }

        goto LABEL_12;
      }

      v7 = sub_252E37DB4();

      if (v7)
      {
        goto LABEL_31;
      }
    }

    v25 = v40;
    sub_252B3B970(v40);
    if (v24(v25, 1, v22) == 1)
    {
      sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
      v16 = v44;
      goto LABEL_12;
    }

    v28 = sub_252E36304();
    v29 = v25;
    v7 = v28;
    v31 = v30;
    (*(v23 + 8))(v29, v22);
    if (v7 == 0x6F4D6E6F62726163 && v31 == 0xEE00656469786F6ELL)
    {
      break;
    }

    v7 = sub_252E37DB4();

    v16 = v44;
    if (v7)
    {
      goto LABEL_34;
    }

LABEL_12:
    v7 = sub_252E37DB4();

    ++v17;
    if (v7)
    {
      goto LABEL_39;
    }
  }

  v16 = v44;
LABEL_34:
  if (v20 > 34.0)
  {
    goto LABEL_12;
  }

LABEL_40:

LABEL_39:

  sub_252E37A94();
  v5 = *(v48 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
LABEL_5:
  v8 = v36;
  v10 = v42;
  if (v42 != v35)
  {
    goto LABEL_6;
  }

  v32 = v48;
LABEL_52:
  type metadata accessor for HomeAutomationCarbonOxideResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v32;
  return result;
}

uint64_t sub_252B3CB9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v45 = v0;
  v8 = *(v0 + 24);
  v48 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_54;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_55:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  while (1)
  {
    v10 = 0;
    v38 = v8 & 0xFFFFFFFFFFFFFF8;
    v39 = v8 & 0xC000000000000001;
    v37 = v8 + 32;
    v40 = v5;
    v43 = v7;
    v35 = v9;
    v36 = v8;
LABEL_6:
    if (v39)
    {
      break;
    }

    if (v10 >= *(v38 + 16))
    {
      goto LABEL_53;
    }

    v11 = *(v37 + 8 * v10);

    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v33 = v8;
    v9 = sub_252E378C4();
    v8 = v33;
    if (!v9)
    {
      goto LABEL_55;
    }
  }

  v12 = MEMORY[0x2530ADF00](v10);
  v13 = __OFADD__(v10, 1);
  v14 = v10 + 1;
  if (v13)
  {
    goto LABEL_52;
  }

LABEL_9:
  v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  v41 = v12;
  v42 = v14;
  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v15 & 0xC000000000000001;

  v17 = 0;
  v44 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v47 == v17)
    {

      goto LABEL_5;
    }

    if (v46)
    {
      v5 = MEMORY[0x2530ADF00](v17, v15);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_51;
      }

      v5 = *(v15 + 8 * v17 + 32);

      if (__OFADD__(v17, 1))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v18 = *&v5[OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue];
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (!v19 || (*(v19 + 32) & 1) != 0)
    {
      goto LABEL_12;
    }

    v20 = *(v19 + 24);
    v21 = v43;
    sub_252B3B970(v43);
    v22 = sub_252E36324();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v21, 1, v22) == 1)
    {
      break;
    }

    v7 = sub_252E36304();
    v27 = v26;
    (*(v23 + 8))(v21, v22);
    if (v7 == 0x69446E6F62726163 && v27 == 0xED0000656469786FLL)
    {
    }

    else
    {
      v7 = sub_252E37DB4();

      if ((v7 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v20 <= 1000.0)
    {
      goto LABEL_34;
    }

    v16 = v44;
    if (v20 <= 2000.0)
    {
      goto LABEL_44;
    }

LABEL_12:
    v7 = sub_252E37DB4();

    ++v17;
    if (v7)
    {
      goto LABEL_43;
    }
  }

  sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
LABEL_22:
  v25 = v40;
  sub_252B3B970(v40);
  if (v24(v25, 1, v22) == 1)
  {
    sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
LABEL_34:
    v16 = v44;
    goto LABEL_12;
  }

  v28 = sub_252E36304();
  v29 = v25;
  v7 = v28;
  v31 = v30;
  (*(v23 + 8))(v29, v22);
  if (v7 != 0x6F4D6E6F62726163 || v31 != 0xEE00656469786F6ELL)
  {
    v7 = sub_252E37DB4();

    v16 = v44;
    if (v7)
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  v16 = v44;
LABEL_36:
  if (v20 <= 34.0 || v20 > 99.0)
  {
    goto LABEL_12;
  }

LABEL_44:

LABEL_43:

  sub_252E37A94();
  v5 = *(v48 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
LABEL_5:
  v8 = v36;
  v10 = v42;
  if (v42 != v35)
  {
    goto LABEL_6;
  }

  v32 = v48;
LABEL_56:
  type metadata accessor for HomeAutomationCarbonOxideResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v32;
  return result;
}

uint64_t sub_252B3D26C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v45 = v0;
  v8 = *(v0 + 24);
  v48 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_54;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_55:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  while (1)
  {
    v10 = 0;
    v38 = v8 & 0xFFFFFFFFFFFFFF8;
    v39 = v8 & 0xC000000000000001;
    v37 = v8 + 32;
    v40 = v5;
    v43 = v7;
    v35 = v9;
    v36 = v8;
LABEL_6:
    if (v39)
    {
      break;
    }

    if (v10 >= *(v38 + 16))
    {
      goto LABEL_53;
    }

    v11 = *(v37 + 8 * v10);

    v13 = __OFADD__(v10, 1);
    v14 = v10 + 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    v33 = v8;
    v9 = sub_252E378C4();
    v8 = v33;
    if (!v9)
    {
      goto LABEL_55;
    }
  }

  v12 = MEMORY[0x2530ADF00](v10);
  v13 = __OFADD__(v10, 1);
  v14 = v10 + 1;
  if (v13)
  {
    goto LABEL_52;
  }

LABEL_9:
  v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  v41 = v12;
  v42 = v14;
  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    v47 = sub_252E378C4();
  }

  else
  {
    v47 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v15 & 0xC000000000000001;

  v17 = 0;
  v44 = v15 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v47 == v17)
    {

      goto LABEL_5;
    }

    if (v46)
    {
      v5 = MEMORY[0x2530ADF00](v17, v15);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_50;
      }
    }

    else
    {
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_51;
      }

      v5 = *(v15 + 8 * v17 + 32);

      if (__OFADD__(v17, 1))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v18 = *&v5[OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue];
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    if (!v19 || (*(v19 + 32) & 1) != 0)
    {
      goto LABEL_12;
    }

    v20 = *(v19 + 24);
    v21 = v43;
    sub_252B3B970(v43);
    v22 = sub_252E36324();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v21, 1, v22) == 1)
    {
      break;
    }

    v7 = sub_252E36304();
    v27 = v26;
    (*(v23 + 8))(v21, v22);
    if (v7 == 0x69446E6F62726163 && v27 == 0xED0000656469786FLL)
    {
    }

    else
    {
      v7 = sub_252E37DB4();

      if ((v7 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v20 <= 1000.0)
    {
      goto LABEL_34;
    }

    v16 = v44;
    if (v20 > 2000.0)
    {
      goto LABEL_44;
    }

LABEL_12:
    v7 = sub_252E37DB4();

    ++v17;
    if (v7)
    {
      goto LABEL_43;
    }
  }

  sub_25293847C(v21, &qword_27F540298, &unk_252E3C270);
LABEL_22:
  v25 = v40;
  sub_252B3B970(v40);
  if (v24(v25, 1, v22) == 1)
  {
    sub_25293847C(v25, &qword_27F540298, &unk_252E3C270);
LABEL_34:
    v16 = v44;
    goto LABEL_12;
  }

  v28 = sub_252E36304();
  v29 = v25;
  v7 = v28;
  v31 = v30;
  (*(v23 + 8))(v29, v22);
  if (v7 != 0x6F4D6E6F62726163 || v31 != 0xEE00656469786F6ELL)
  {
    v7 = sub_252E37DB4();

    v16 = v44;
    if (v7)
    {
      goto LABEL_36;
    }

    goto LABEL_12;
  }

  v16 = v44;
LABEL_36:
  if (v20 <= 34.0 || v20 <= 99.0)
  {
    goto LABEL_12;
  }

LABEL_44:

LABEL_43:

  sub_252E37A94();
  v5 = *(v48 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
LABEL_5:
  v8 = v36;
  v10 = v42;
  if (v42 != v35)
  {
    goto LABEL_6;
  }

  v32 = v48;
LABEL_56:
  type metadata accessor for HomeAutomationCarbonOxideResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v32;
  return result;
}

HomeAutomationInternal::CarbonOxideType_optional __swiftcall CarbonOxideType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CarbonOxideType.rawValue.getter()
{
  v1 = 0x6F4D6E6F62726163;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69446E6F62726163;
  }
}

uint64_t sub_252B3DA10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F4D6E6F62726163;
  v4 = 0xEE00656469786F6ELL;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x69446E6F62726163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED0000656469786FLL;
  }

  v7 = 0x6F4D6E6F62726163;
  v8 = 0xEE00656469786F6ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x69446E6F62726163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED0000656469786FLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252B3DB34()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B3DBF0()
{
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252B3DC98()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252B3DD5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656469786FLL;
  v4 = 0xEE00656469786F6ELL;
  v5 = 0x6F4D6E6F62726163;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69446E6F62726163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_252B3DDD8()
{
  result = qword_27F543548;
  if (!qword_27F543548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543548);
  }

  return result;
}

unint64_t sub_252B3DE3C()
{
  result = qword_27F540760;
  if (!qword_27F540760)
  {
    sub_252E36324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540760);
  }

  return result;
}

uint64_t sub_252B3DE94()
{
  if (*(v0 + 40) != 1)
  {
    goto LABEL_14;
  }

  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 characteristic];
  v6 = [v5 service];

  if (!v6)
  {

LABEL_14:
    v39 = 0;
    return v39 & 1;
  }

  v7 = type metadata accessor for Service();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_252CD8894(v6);

  if (qword_27F53F410 != -1)
  {
    swift_once();
  }

  v10 = qword_27F575A48;
  v11 = sub_252CD941C();
  LOBYTE(v10) = sub_252DB4F4C(v11, v10);

  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v54 = v4;
  v14 = [v13 characteristic];
  v15 = [v14 characteristicType];

  v16 = sub_252E36F34();
  v18 = v17;

  v19 = sub_252DE9AAC(v16, v18);

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544D60);
  v55[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E7FD00);
  v21 = HomeAttributeType.description.getter(v19);
  MEMORY[0x2530AD570](v21);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E7FD40);
  v22 = [v13 characteristic];
  v23 = [v22 characteristicType];

  v24 = sub_252E36F34();
  v26 = v25;

  MEMORY[0x2530AD570](v24, v26);

  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E7FD60);
  v56 = [v13 targetValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543558, &unk_252E4D230);
  v27 = sub_252E36F94();
  MEMORY[0x2530AD570](v27);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006CLL, 0x8000000252E7FD80);

  v28 = [v13 characteristic];
  v29 = [v28 characteristicType];

  v30 = sub_252E36F34();
  v32 = v31;

  v33 = [v13 targetValue];
  v55[3] = swift_getObjectType();
  v55[0] = v33;
  v34 = [v13 characteristic];
  v35 = [v34 metadata];

  if (v35)
  {
    v36 = [v35 units];

    if (v36)
    {
      v37 = sub_252E36F34();
      v35 = v38;
    }

    else
    {
      v37 = 0;
      v35 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v41 = sub_252C69438(v30, v32, v55, v37, v35);

  sub_252982F10(v55);
  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E7FDF0);
  v42 = [v41 description];
  v43 = sub_252E36F34();
  v45 = v44;

  MEMORY[0x2530AD570](v43, v45);

  sub_252CC3D90(v55[0], v55[1], 0xD00000000000006CLL, 0x8000000252E7FD80);

  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v46 = *(*ControlHomeIntent.Builder.init()() + 192);
  v47 = v41;
  v48 = v46(1, v19, v41);

  v49 = (*(*v48 + 224))();

  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E7FE30);
  v56 = [v49 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v50 = sub_252E36F94();
  MEMORY[0x2530AD570](v50);

  sub_252CC3D90(v55[0], v55[1], 0xD00000000000006CLL, 0x8000000252E7FD80);

  v51 = sub_252C4E740();
  v55[0] = 0;
  v55[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v55, "Task is safe: ");
  HIBYTE(v55[1]) = -18;
  if (v51)
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (v51)
  {
    v53 = 0xE400000000000000;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v52, v53);

  sub_252CC3D90(v55[0], v55[1], 0xD00000000000006CLL, 0x8000000252E7FD80);

  v39 = v51 ^ 1;
  return v39 & 1;
}

uint64_t Action.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t Action.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_252B3E698()
{
  result = qword_27F543550;
  if (!qword_27F543550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543550);
  }

  return result;
}

void *sub_252B3E6EC()
{
  v1 = type metadata accessor for AutomateHomeIntentResponse();
  v2 = [objc_allocWithZone(v1) init];
  v3 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 5;
  [v2 setUserActivity_];
  v0[2] = v2;
  v4 = [objc_allocWithZone(v1) init];
  v5 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v4[v5] = 100;
  [v4 setUserActivity_];
  v0[3] = v4;
  v6 = [objc_allocWithZone(v1) init];
  v7 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  swift_beginAccess();
  *&v6[v7] = 101;
  [v6 setUserActivity_];
  v0[4] = v6;
  return v0;
}

void sub_252B3E81C(void *a1, void (*a2)(char *), uint64_t a3)
{
  v178 = sub_252E32E04();
  v177 = *(v178 - 8);
  v6 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v176 = v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_252E32E84();
  v180 = *(v181 - 1);
  v8 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v179 = v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36AB4();
  v183 = *(v10 - 8);
  v184 = v10;
  v11 = *(v183 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v175 = v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v13;
  MEMORY[0x28223BE20](v12);
  v185 = v167 - v14;
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_2814B09D8);
  aBlock = 0;
  v194 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = 0xD00000000000002DLL;
  v194 = 0x8000000252E7FED0;
  v16 = [a1 description];
  v17 = sub_252E36F34();
  v19 = v18;

  MEMORY[0x2530AD570](v17, v19);

  sub_252CC4A5C(aBlock, v194, 1, 0xD00000000000008BLL, 0x8000000252E7FF00);

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = qword_27F53F498;

  v22 = a1;
  if (v21 != -1)
  {
    swift_once();
  }

  v191 = v15;
  v23 = __swift_project_value_buffer(v15, qword_27F544C70);
  aBlock = 0;
  v194 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = 0xD000000000000011;
  v194 = 0x8000000252E7FF90;
  v24 = [v22 description];
  v25 = v22;
  v26 = sub_252E36F34();
  v28 = v27;

  MEMORY[0x2530AD570](v26, v28);

  sub_252CC3D90(aBlock, v194, 0xD00000000000008BLL, 0x8000000252E7FF00);

  v182 = v25;
  v29 = sub_252D30824(v25);
  if (!v29)
  {
    v66 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntentResponse()) init];
    v67 = OBJC_IVAR___AutomateHomeIntentResponse_code;
    swift_beginAccess();
    *&v66[v67] = 5;
    [v66 setUserActivity_];
    a2(v66);

    return;
  }

  v31 = v29;
  v32 = v30;
  v186 = a2;
  v187 = a3;
  v188 = v20;
  aBlock = 0;
  v194 = 0xE000000000000000;
  sub_252E379F4();

  v172 = 0xD000000000000012;
  aBlock = 0xD000000000000012;
  v194 = 0x8000000252E7FFB0;
  v33 = [v31 name];
  v34 = sub_252E36F34();
  v36 = v35;

  MEMORY[0x2530AD570](v34, v36);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E7FFD0);
  v37 = [v31 actionSets];
  v38 = sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
  v39 = sub_252E37264();

  v40 = MEMORY[0x2530AD730](v39, v38);
  v42 = v41;

  MEMORY[0x2530AD570](v40, v42);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  v189 = v31;
  v43 = [v31 isEnabled];
  v44 = v43 == 0;
  if (v43)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (v44)
  {
    v46 = 0xE500000000000000;
  }

  else
  {
    v46 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v45, v46);

  v190 = "or AutomateHome Task intent:\n";
  v173 = v23;
  sub_252CC3D90(aBlock, v194, 0xD00000000000008BLL, 0x8000000252E7FF00);

  type metadata accessor for HomeStore();
  v47 = static HomeStore.shared.getter();
  v48 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask;
  v49 = *&v32[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask];
  v50 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters;
  v51 = *&v32[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters];
  v52 = type metadata accessor for ControlHomeIntent();
  v53 = objc_allocWithZone(v52);
  v54 = v49;

  v55 = [v53 &selRef__refreshBeforeDate_completionHandler_];
  [v55 setUserTask_];
  type metadata accessor for HomeFilter();
  v56 = sub_252E37254();

  [v55 setFilters_];

  [v55 setTime_];
  v57 = v47[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v57 != 2 && (v57 & 1) == 0)
  {
    v68 = 12;
    goto LABEL_20;
  }

  v58 = [v55 filters];
  if (!v58)
  {
    v68 = 1;
LABEL_20:
    v65 = v186;
    sub_2529318DC();
    v62 = swift_allocError();
    *v69 = v68;

    goto LABEL_21;
  }

  v171 = v50;
  v59 = v58;
  v60 = sub_252E37264();

  v61 = [v55 userTask];
  v62 = HomeStore.services(matching:supporting:)(v60, v61);
  v64 = v63;

  if (v64)
  {
    v65 = v186;
LABEL_21:
    v71 = v190;
    v70 = v191;
    aBlock = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    swift_willThrowTypedImpl();
    sub_252929F10(v62, 1);
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v70, qword_27F544CE8);
    sub_252CC4050(0xD00000000000002CLL, 0x8000000252E7FFF0, 0xD00000000000008BLL, v71 | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E80020, 46);
    sub_252DB7C84();
    sub_252DB649C(0, 0, 1);

    v65(*(v192 + 24));

    return;
  }

  aBlock = 0;
  v194 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = v172;
  v194 = 0x8000000252E80040;
  v72 = type metadata accessor for Service();
  v73 = MEMORY[0x2530AD730](v62, v72);
  MEMORY[0x2530AD570](v73);

  v74 = v190;
  sub_252CC3D90(aBlock, v194, 0xD00000000000008BLL, v190 | 0x8000000000000000);

  v170 = v32;
  v169 = v62;
  v75 = sub_252B40A64(v62, v170);

  if (!(v75 >> 62))
  {
    v76 = v171;
    if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_61:
    sub_252929F10(v169, 0);

    aBlock = 0;
    v194 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD000000000000024;
    v194 = 0x8000000252E80260;
    v161 = *&v32[v48];
    v162 = [v161 description];
    v163 = sub_252E36F34();
    v165 = v164;

    MEMORY[0x2530AD570](v163, v165);

    sub_252CC4050(aBlock, v194, 0xD00000000000008BLL, v74 | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E80020, 56);

    sub_252DB7C84();
    sub_252DB649C(0, 0, 1);

    v186(*(v192 + 16));

    goto LABEL_62;
  }

  v160 = sub_252E378C4();
  v76 = v171;
  if (!v160)
  {
    goto LABEL_61;
  }

LABEL_26:
  v77 = *&v32[v48];
  v78 = *&v76[v32];
  v79 = objc_allocWithZone(v52);
  v80 = v77;

  v81 = [v79 init];
  [v81 setUserTask_];
  v82 = sub_252E37254();

  [v81 setFilters_];

  [v81 setTime_];
  v83 = [v81 filters];
  v168 = v75;
  if (v83)
  {
    v84 = v83;
    v85 = sub_252E37264();

    v86 = sub_252DD5A58(v85);
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
  }

  v87 = v189;
  v88 = sub_252C758E0(v86);

  v89 = sub_252DD6238(v88);

  v90 = v188;
  v91 = v190;
  if (v89)
  {
    aBlock = 0;
    v194 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD000000000000029;
    v194 = 0x8000000252E800A0;
    v92 = sub_2529E8734();
    MEMORY[0x2530AD570](v92);

    sub_252CC3D90(aBlock, v194, 0xD00000000000008BLL, v91 | 0x8000000000000000);

    sub_252CC3D90(v172, 0x8000000252E800D0, 0xD00000000000008BLL, v91 | 0x8000000000000000);
    if (qword_27F53F580 != -1)
    {
      swift_once();
    }

    v93 = qword_27F544F08;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    type metadata accessor for SELFPerformanceLogger();
    swift_allocObject();
    v94 = sub_252D2D190(205, 0x6E776F6E6B6E75, 0xE700000000000000);
    v95 = sub_2529E82CC(v87, v168);
    v96 = v95;
    if (v95 >> 62)
    {
      v97 = sub_252E378C4();
    }

    else
    {
      v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v171 = v94;
    if (v97)
    {

      v167[2] = v93;
      if ((v96 & 0xC000000000000001) != 0)
      {
        v98 = MEMORY[0x2530ADF00](0, v96);
        goto LABEL_38;
      }

      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v98 = *(v96 + 32);
LABEL_38:
        v99 = v98;

        aBlock = 0;
        v194 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E80110);
        v100 = [v99 uniqueIdentifier];
        v101 = v179;
        sub_252E32E64();

        sub_252B40DFC();
        v102 = v181;
        v103 = sub_252E37D94();
        MEMORY[0x2530AD570](v103);

        (*(v180 + 8))(v101, v102);
        MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E80150);
        sub_252CC4050(aBlock, v194, 0xD00000000000008BLL, v91 | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E80020, 75);

        v104 = v169;
        if (v169 >> 62)
        {
          type metadata accessor for Entity();

          v105 = sub_252E37B14();
          sub_252929F10(v104, 0);
        }

        else
        {

          sub_252E37DD4();
          type metadata accessor for Entity();
          v105 = v104;
        }

        v106 = v171;
        sub_252929F10(v104, 0);
        v107 = sub_252D3032C(v99, v105);

        if (v106)
        {
          v108 = [v182 verb];
          v109 = sub_252E36F34();
          v111 = v110;

          sub_252D2D83C(v109, v111);
        }

        sub_252E375C4();
        v112 = v185;
        sub_252E36A74();
        sub_252DB7C84();
        sub_252DB649C(0, 0, 1);

        v186(v107);

LABEL_43:
        (*(v183 + 8))(v112, v184);
        return;
      }

      __break(1u);
      goto LABEL_69;
    }

    objc_opt_self();
    v113 = swift_dynamicCastObjCClass();
    v167[1] = v89;
    v114 = *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
    if (v113)
    {
      v181 = *(v89 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
      v116 = v183;
      v115 = v184;
      v117 = *(v183 + 16);
      v118 = v175;
      v190 = v113;
      v117(v175, v185, v184);
      v119 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v120 = (v174 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
      v121 = (v120 + 15) & 0xFFFFFFFFFFFFFFF8;
      v122 = (v121 + 15) & 0xFFFFFFFFFFFFFFF8;
      v123 = ((v122 + 15) & 0xFFFFFFFFFFFFFFF8);
      v124 = swift_allocObject();
      *(v124 + 16) = sub_252B40DF0;
      *(v124 + 24) = v90;
      (*(v116 + 32))(v124 + v119, v118, v115);
      *(v124 + v120) = v171;
      *(v124 + v121) = v192;
      *(v124 + v122) = v169;
      v125 = &v123[v124];
      v126 = v187;
      *v125 = v186;
      *(v125 + 1) = v126;
      v127 = swift_allocObject();

      v128 = v190;
      *(v127 + 16) = sub_252B8DF84(v182);
      v129 = sub_252DB7C84()[5];

      v130 = v176;
      sub_252E32DF4();
      sub_252E32D44();
      v132 = v131;
      (*(v177 + 8))(v130, v178);
      v133 = v132 * 1000.0;
      if (COERCE__INT64(fabs(v132 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v133 > -9.22337204e18)
      {
        if (v133 < 9.22337204e18)
        {
          *(v129 + 16) = v133;

          v134 = qword_27F53F4E8;
          v123 = v189;
          if (v134 == -1)
          {
LABEL_51:
            __swift_project_value_buffer(v191, qword_27F544D60);
            sub_252CC3D90(0xD000000000000026, 0x8000000252E801B0, 0xD000000000000071, 0x8000000252E801E0);
            sub_252BF1D38(v128, v168, 0);

            v135 = swift_allocObject();
            v135[2] = v128;
            v135[3] = v127;
            v135[4] = sub_252B40E88;
            v135[5] = v124;
            v197 = sub_252B40F60;
            v198 = v135;
            aBlock = MEMORY[0x277D85DD0];
            v194 = 1107296256;
            v195 = sub_252BF09C4;
            v196 = &block_descriptor_20;
            v136 = _Block_copy(&aBlock);
            v137 = v123;

            [v181 addEventTriggerFromBuilder:v128 completionHandler:v136];
            _Block_release(v136);

            (*(v183 + 8))(v185, v184);

            return;
          }

LABEL_73:
          swift_once();
          goto LABEL_51;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      __break(1u);
      goto LABEL_72;
    }

    v138 = swift_allocObject();
    v139 = v187;
    v138[2] = v186;
    v138[3] = v139;
    v138[4] = v192;
    v140 = swift_allocObject();

    *(v140 + 16) = sub_252B8DF84(v182);
    v141 = sub_252DB7C84()[5];

    v142 = v176;
    sub_252E32DF4();
    sub_252E32D44();
    v144 = v143;
    (*(v177 + 8))(v142, v178);
    v145 = v144 * 1000.0;
    if (COERCE__INT64(fabs(v144 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v145 > -9.22337204e18)
    {
      if (v145 < 9.22337204e18)
      {
        v141[2] = v145;

        v146 = swift_allocObject();
        v147 = v189;
        v146[2] = v189;
        v146[3] = v140;
        v146[4] = sub_252B40E54;
        v146[5] = v138;
        v146[6] = v168;
        v146[7] = 0;
        v197 = sub_252B40E60;
        v198 = v146;
        aBlock = MEMORY[0x277D85DD0];
        v194 = 1107296256;
        v195 = sub_2529E0210;
        v196 = &block_descriptor_12;
        v148 = _Block_copy(&aBlock);
        v141 = v147;

        [v114 addTrigger:v141 completionHandler:v148];

        _Block_release(v148);

        aBlock = 0;
        v194 = 0xE000000000000000;
        sub_252E379F4();

        aBlock = v172;
        v194 = 0x8000000252E80190;
        v149 = [v141 uniqueIdentifier];
        v150 = v179;
        sub_252E32E64();

        sub_252B40DFC();
        v151 = v181;
        v152 = sub_252E37D94();
        MEMORY[0x2530AD570](v152);

        (*(v180 + 8))(v150, v151);
        sub_252CC3D90(aBlock, v194, 0xD00000000000008BLL, v190 | 0x8000000000000000);

        v114 = v169;
        if (!(v169 >> 62))
        {

          sub_252E37DD4();
          type metadata accessor for Entity();
          v153 = v114;
LABEL_57:
          v154 = v171;
          sub_252929F10(v114, 0);
          v155 = sub_252D3032C(v141, v153);

          if (v154)
          {
            v156 = [v182 verb];
            v157 = sub_252E36F34();
            v159 = v158;

            sub_252D2D83C(v157, v159);
          }

          sub_252E375C4();
          v112 = v185;
          sub_252E36A74();
          sub_252DB7C84();
          sub_252DB649C(0, 0, 1);

          v186(v155);

          goto LABEL_43;
        }

LABEL_77:
        type metadata accessor for Entity();

        v153 = sub_252E37B14();
        sub_252929F10(v114, 0);
        goto LABEL_57;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_76;
  }

  sub_252929F10(v169, 0);

  v94 = 0xD00000000000008BLL;
  sub_2529515FC(3, 6, 0xD000000000000017, 0x8000000252E80060);
  if (qword_27F53F4C0 != -1)
  {
LABEL_69:
    swift_once();
  }

  __swift_project_value_buffer(v191, qword_27F544CE8);
  sub_252CC4050(v94 - 109, 0x8000000252E80080, 0xD00000000000008BLL, v91 | 0x8000000000000000, v94 - 113, 0x8000000252E80020, 63);
  sub_252DB7C84();
  sub_252DB649C(0, 0, 1);

  v186(*(v192 + 16));

LABEL_62:
  v166 = v170;
}

uint64_t sub_252B40340(int a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(uint64_t))
{
  if (a2)
  {
    v7 = [a4 verb];
    v8 = sub_252E36F34();
    v10 = v9;

    sub_252D2D83C(v8, v10);
  }

  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  sub_252E375C4();
  sub_252E36A74();
  sub_252DB7C84();
  sub_252DB649C(0, 0, 1);

  return a5(a3);
}

void sub_252B40488(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(void))
{
  v31[1] = a4;
  v16 = sub_252E32E84();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31[0] = a3;
    v21 = qword_27F53F498;
    v22 = a1;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544C70);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_252E379F4();

    v32 = 0xD000000000000012;
    v33 = 0x8000000252E80190;
    v24 = [v22 uniqueIdentifier];
    sub_252E32E64();

    sub_252B40DFC();
    v25 = sub_252E37D94();
    MEMORY[0x2530AD570](v25);

    (*(v17 + 8))(v20, v16);
    sub_252CC3D90(v32, v33, 0xD00000000000008BLL, 0x8000000252E7FF00);

    if (a8 >> 62)
    {
      type metadata accessor for Entity();

      v30 = sub_252E37B14();

      a8 = v30;
    }

    else
    {

      sub_252E37DD4();
      type metadata accessor for Entity();
    }

    v26 = sub_252D3032C(v22, a8);

    (v31[0])(a5, a6, v26);
  }

  else
  {
    if (a2)
    {
      v27 = a2;
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v28 = sub_252E36AD4();
      __swift_project_value_buffer(v28, qword_27F544C70);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();

      v32 = 0xD00000000000001CLL;
      v33 = 0x8000000252E80290;
      swift_getErrorValue();
      v29 = sub_252E37E54();
      MEMORY[0x2530AD570](v29);

      sub_252CC4050(v32, v33, 0xD00000000000008BLL, 0x8000000252E7FF00, 0xD00000000000001ALL, 0x8000000252E80020, 92);
    }

    a9(*(a7 + 32));
  }
}

void sub_252B40850(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544C70);
    sub_252E379F4();

    swift_getErrorValue();
    v9 = sub_252E37E54();
    MEMORY[0x2530AD570](v9);

    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E80290, 0xD00000000000008BLL, 0x8000000252E7FF00, 0xD00000000000001ALL, 0x8000000252E80020, 99);

    a2(*(a4 + 32));
  }
}

uint64_t sub_252B409BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252B40A2C()
{
  type metadata accessor for AutomateHomeIntentTaskHandleDelegate();
  v0 = swift_allocObject();
  sub_252B3E6EC();
  return v0;
}

unint64_t sub_252B40A64(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_54;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v35 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v36 = OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask;
    v5 = MEMORY[0x277D84F90];
    v33 = v2;
    while (1)
    {
      if (v38)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v32);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_49;
        }

        v6 = *(v35 + 8 * v4);

        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v31 = isUniquelyReferenced_nonNull_bridgeObject;
          v2 = sub_252E378C4();
          isUniquelyReferenced_nonNull_bridgeObject = v31;
          goto LABEL_3;
        }
      }

      v8 = *(a2 + v36);
      v9 = sub_252C8F5AC(v6);

      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v3;
      }

      v11 = v10 >> 62;
      if (v10 >> 62)
      {
        v12 = sub_252E378C4();
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 = v5 >> 62;
      if (v5 >> 62)
      {
        v29 = sub_252E378C4();
        v15 = v29 + v12;
        if (__OFADD__(v29, v12))
        {
LABEL_45:
          __break(1u);
          return v3;
        }
      }

      else
      {
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v15 = v14 + v12;
        if (__OFADD__(v14, v12))
        {
          goto LABEL_45;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v41 = v12;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v13)
        {
          goto LABEL_24;
        }

        v16 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v13)
        {
LABEL_24:
          sub_252E378C4();
          goto LABEL_25;
        }

        v16 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v17 = *(v16 + 16);
LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v16 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v11)
      {
        v21 = v16;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = v21;
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          if (v41 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_5;
        }
      }

      if (((v19 >> 1) - v18) < v41)
      {
        goto LABEL_51;
      }

      v22 = v16 + 8 * v18 + 32;
      v34 = v16;
      if (v11)
      {
        if (v20 < 1)
        {
          goto LABEL_53;
        }

        sub_252B40F6C();
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543560, &unk_252E4D2A0);
          v24 = sub_2529FBD80(v40, i, v10);
          v26 = *v25;
          (v24)(v40, 0);
          *(v22 + 8 * i) = v26;
        }
      }

      else
      {
        sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
        swift_arrayInitWithCopy();
      }

      v2 = v33;
      v3 = MEMORY[0x277D84F90];
      if (v41 >= 1)
      {
        v27 = *(v34 + 16);
        v7 = __OFADD__(v27, v41);
        v28 = v27 + v41;
        if (v7)
        {
          goto LABEL_52;
        }

        *(v34 + 16) = v28;
      }

LABEL_6:
      if (v4 == v2)
      {
        return v5;
      }
    }
  }

  return v3;
}

unint64_t sub_252B40DFC()
{
  result = qword_27F5404A8;
  if (!qword_27F5404A8)
  {
    sub_252E32E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5404A8);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_252B40E88(void *a1, void *a2)
{
  v5 = *(sub_252E36AB4() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10 + 8);
  sub_252B40488(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v10));
}

unint64_t sub_252B40F6C()
{
  result = qword_27F543568;
  if (!qword_27F543568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543560, &unk_252E4D2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543568);
  }

  return result;
}

uint64_t CompletionSnippetModel.init(primaryText:secondaryText:isBooleanTrueResponse:iconConfiguration:isSuccess:punchOut:inProgress:toggleEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, unsigned __int8 a11)
{
  v50 = a8;
  v48 = a5;
  v49 = a7;
  v46 = a4;
  v47 = a6;
  v45 = a3;
  v43 = a2;
  v41 = a1;
  v51 = a10;
  v52 = a11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v12 = *(*(v54 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v54);
  v53 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v17 = *(*(v38 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v38);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v37 - v21;
  v23 = type metadata accessor for CompletionSnippetModel();
  v24 = v23[5];
  v55 = 0;
  v56 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v42 = v23[6];
  LOBYTE(v55) = 2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E330C4();
  v37 = v23[9];
  v25 = type metadata accessor for IconConfiguration();
  (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
  sub_252938414(v22, v20, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v22, &qword_27F541B50, &unk_252E47970);
  v40 = v23[10];
  v26 = sub_252E32CB4();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_252938414(v16, v53, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v16, &qword_27F540370, &qword_252E3C450);
  v55 = v41;
  v56 = v43;
  sub_252E330C4();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  (*(*(v27 - 8) + 8))(a9 + v24, v27);
  v55 = v45;
  v56 = v46;
  sub_252E330C4();
  v28 = v47;
  sub_252938414(v47, v22, &qword_27F541B50, &unk_252E47970);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  (*(*(v29 - 8) + 8))(a9 + v37, v29);
  sub_252938414(v22, v20, &qword_27F541B50, &unk_252E47970);
  sub_252E330C4();
  sub_25293847C(v22, &qword_27F541B50, &unk_252E47970);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  (*(*(v30 - 8) + 8))(a9 + v42, v30);
  LOBYTE(v55) = v48;
  sub_252E330C4();
  v31 = v23[7];
  LOBYTE(v55) = v49;
  sub_252E330C4();
  v32 = v50;
  sub_252938414(v50, v16, &qword_27F540370, &qword_252E3C450);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  (*(*(v33 - 8) + 8))(a9 + v40, v33);
  sub_252938414(v16, v53, &qword_27F540370, &qword_252E3C450);
  sub_252E330C4();
  sub_25293847C(v16, &qword_27F540370, &qword_252E3C450);
  v34 = v23[8];
  LOBYTE(v55) = v51;
  sub_252E330C4();
  v35 = v23[11];
  LOBYTE(v55) = v52;
  sub_252E330C4();
  sub_25293847C(v32, &qword_27F540370, &qword_252E3C450);
  return sub_25293847C(v28, &qword_27F541B50, &unk_252E47970);
}

uint64_t type metadata accessor for CompletionSnippetModel()
{
  result = qword_27F543598;
  if (!qword_27F543598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t CompletionSnippetModel.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v26 - v4;
  v31 = 0xD000000000000017;
  v32 = 0x8000000252E802B0;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v30, "primaryText: ");
  HIWORD(v30[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v28, v29);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v30[0], v30[1]);

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E802D0);
  v5 = type metadata accessor for CompletionSnippetModel();
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E37AE4();
  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v30[0], v30[1]);

  strcpy(v30, "isSuccess: ");
  HIDWORD(v30[1]) = -352321536;
  v7 = v5[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v28)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v28)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v30[0], v30[1]);

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v30, "inProgress: ");
  BYTE5(v30[1]) = 0;
  HIWORD(v30[1]) = -5120;
  v10 = v1 + v5[8];
  sub_252E330E4();
  if (v28)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v28)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v30[0], v30[1]);

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_252E379F4();

  v30[0] = 0x6E45656C67676F74;
  v30[1] = 0xEF203A64656C6261;
  v13 = v1 + v5[11];
  sub_252E330E4();
  if (v28)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v28)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](v30[0], v30[1]);

  v16 = v5[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  v17 = v30[1];
  if (v30[1])
  {
    v18 = v30[0];
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_252E379F4();

    v30[0] = 0xD000000000000011;
    v30[1] = 0x8000000252E77640;
    MEMORY[0x2530AD570](v18, v17);

    MEMORY[0x2530AD570](v30[0], v30[1]);
  }

  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_252E379F4();

  v30[0] = 0xD000000000000015;
  v30[1] = 0x8000000252E77620;
  v19 = v5[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  v20 = v27;
  sub_252E330E4();
  v21 = type metadata accessor for IconConfiguration();
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_25293847C(v20, &qword_27F541B50, &unk_252E47970);
  if (v22 == 1)
  {
    v23 = 0x65736C6166;
  }

  else
  {
    v23 = 1702195828;
  }

  if (v22 == 1)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v23, v24);

  MEMORY[0x2530AD570](v30[0], v30[1]);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return v31;
}

uint64_t CompletionSnippetModel.stringId.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v22 = type metadata accessor for IconConfiguration();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v26, "#primaryText: ");
  HIBYTE(v26[1]) = -18;
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570](v25[0], v25[1]);

  strcpy(v25, "#isSuccess: ");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  v9 = type metadata accessor for CompletionSnippetModel();
  v10 = v9[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v23)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v23)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](v25[0], v25[1]);

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E802F0);
  v13 = v9[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  sub_252E37AE4();
  MEMORY[0x2530AD570](v25[0], v25[1]);

  strcpy(v25, "#inProgress: ");
  HIWORD(v25[1]) = -4864;
  v14 = v1 + v9[8];
  sub_252E330E4();
  if (v23)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v23)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v15, v16);

  MEMORY[0x2530AD570](v25[0], v25[1]);

  v17 = v9[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  sub_252E330E4();
  if ((*(v6 + 48))(v5, 1, v22) == 1)
  {
    sub_25293847C(v5, &qword_27F541B50, &unk_252E47970);
  }

  else
  {
    v18 = v21;
    sub_252B42FDC(v5, v21);
    strcpy(v25, "#iconName: ");
    HIDWORD(v25[1]) = -352321536;
    sub_252E330E4();
    MEMORY[0x2530AD570](v23, v24);

    MEMORY[0x2530AD570](v25[0], v25[1]);

    sub_252B4416C(v18, type metadata accessor for IconConfiguration);
  }

  return v26[0];
}

uint64_t CompletionSnippetModel.primaryText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t (*CompletionSnippetModel.primaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t CompletionSnippetModel.secondaryText.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v2;
}

double sub_252B42114@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(type metadata accessor for CompletionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_252B4217C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(type metadata accessor for CompletionSnippetModel() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t CompletionSnippetModel.secondaryText.setter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*CompletionSnippetModel.secondaryText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CompletionSnippetModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t CompletionSnippetModel.isBooleanTrueResponse.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252B42334@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for CompletionSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_252B4239C(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CompletionSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  return sub_252E330F4();
}

uint64_t CompletionSnippetModel.isBooleanTrueResponse.setter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  return sub_252E330F4();
}

uint64_t (*CompletionSnippetModel.isBooleanTrueResponse.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CompletionSnippetModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t CompletionSnippetModel.isSuccess.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252B42544@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for CompletionSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_252B425AC(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CompletionSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t CompletionSnippetModel.isSuccess.setter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t (*CompletionSnippetModel.isSuccess.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CompletionSnippetModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t CompletionSnippetModel.inProgress.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252B42754@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for CompletionSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_252B427BC(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CompletionSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t CompletionSnippetModel.inProgress.setter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t (*CompletionSnippetModel.inProgress.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CompletionSnippetModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t CompletionSnippetModel.iconConfiguration.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  return sub_252E330E4();
}

uint64_t sub_252B42964()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  return sub_252E330E4();
}

uint64_t sub_252B429BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_252938414(a1, &v10 - v7, &qword_27F541B50, &unk_252E47970);
  sub_252938414(v8, v6, &qword_27F541B50, &unk_252E47970);
  LODWORD(a1) = *(type metadata accessor for CompletionSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  sub_252E330F4();
  return sub_25293847C(v8, &qword_27F541B50, &unk_252E47970);
}

uint64_t CompletionSnippetModel.iconConfiguration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252938414(a1, &v7 - v4, &qword_27F541B50, &unk_252E47970);
  v5 = *(type metadata accessor for CompletionSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  sub_252E330F4();
  return sub_25293847C(a1, &qword_27F541B50, &unk_252E47970);
}

uint64_t (*CompletionSnippetModel.iconConfiguration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CompletionSnippetModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t CompletionSnippetModel.punchOut.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  return sub_252E330E4();
}

uint64_t sub_252B42CA0()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  return sub_252E330E4();
}

uint64_t sub_252B42CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_252938414(a1, &v10 - v7, &qword_27F540370, &qword_252E3C450);
  sub_252938414(v8, v6, &qword_27F540370, &qword_252E3C450);
  LODWORD(a1) = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  return sub_25293847C(v8, &qword_27F540370, &qword_252E3C450);
}

uint64_t CompletionSnippetModel.punchOut.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_252938414(a1, &v7 - v4, &qword_27F540370, &qword_252E3C450);
  v5 = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  sub_252E330F4();
  return sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
}

uint64_t (*CompletionSnippetModel.punchOut.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CompletionSnippetModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t CompletionSnippetModel.toggleEnabled.getter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  return v2;
}

uint64_t sub_252B42FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B43040@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(type metadata accessor for CompletionSnippetModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  result = sub_252E330E4();
  *a1 = v4;
  return result;
}

uint64_t sub_252B430A8(char *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for CompletionSnippetModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t CompletionSnippetModel.toggleEnabled.setter()
{
  v0 = *(type metadata accessor for CompletionSnippetModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t (*CompletionSnippetModel.toggleEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for CompletionSnippetModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  *(v3 + 32) = sub_252E330D4();
  return sub_252AA9630;
}

uint64_t sub_252B43224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252B44C8C();
  *a2 = result;
  return result;
}

void sub_252B43254(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747865;
  v4 = 0x547972616D697270;
  v5 = 0xEA00000000007373;
  v6 = 0x6572676F72506E69;
  if (v2 != 6)
  {
    v6 = 0x6E45656C67676F74;
    v5 = 0xED000064656C6261;
  }

  v7 = 0xE900000000000073;
  v8 = 0x7365636375537369;
  if (v2 != 4)
  {
    v8 = 0x74754F68636E7570;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000252E67EC0;
  v10 = 0xD000000000000015;
  if (v2 != 2)
  {
    v10 = 0xD000000000000011;
    v9 = 0x8000000252E67840;
  }

  if (*v1)
  {
    v4 = 0x7261646E6F636573;
    v3 = 0xED00007478655479;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_252B43388()
{
  v1 = *v0;
  v2 = 0x547972616D697270;
  v3 = 0x6572676F72506E69;
  if (v1 != 6)
  {
    v3 = 0x6E45656C67676F74;
  }

  v4 = 0x7365636375537369;
  if (v1 != 4)
  {
    v4 = 0x74754F68636E7570;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x7261646E6F636573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252B434B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252B44C8C();
  *a1 = result;
  return result;
}

uint64_t sub_252B434E0(uint64_t a1)
{
  v2 = sub_252B44118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252B4351C(uint64_t a1)
{
  v2 = sub_252B44118();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::String __swiftcall CompletionSnippetModel.responseViewId()()
{
  v0 = 0x8000000252E79040;
  v1 = 0xD000000000000019;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t CompletionSnippetModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v76 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543570, &qword_252E4D2B0);
  v81 = *(v2 - 8);
  v82 = v2;
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v2);
  v91 = v70 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v5 = *(*(v84 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v84);
  v75 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v83 = v70 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v70 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v70 - v19;
  v21 = type metadata accessor for CompletionSnippetModel();
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 20);
  v92 = 0;
  v93 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v89 = v26;
  v78 = v27;
  sub_252E330C4();
  v28 = v21[6];
  LOBYTE(v92) = 2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
  v90 = v28;
  v79 = v29;
  sub_252E330C4();
  v30 = v21[9];
  v31 = type metadata accessor for IconConfiguration();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v77 = v31;
  v73 = v33;
  v72 = v32 + 56;
  (v33)(v20, 1, 1);
  sub_252938414(v20, v18, &qword_27F541B50, &unk_252E47970);
  v88 = v30;
  sub_252E330C4();
  v74 = v20;
  sub_25293847C(v20, &qword_27F541B50, &unk_252E47970);
  v87 = v21;
  v34 = v21[10];
  v35 = sub_252E32CB4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v38 = v36 + 56;
  v37(v11, 1, 1, v35);
  sub_252938414(v11, v83, &qword_27F540370, &qword_252E3C450);
  v86 = v25;
  v39 = v94;
  sub_252E330C4();
  v84 = v11;
  sub_25293847C(v11, &qword_27F540370, &qword_252E3C450);
  v40 = v39[4];
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_252B44118();
  v41 = v85;
  sub_252E37F74();
  if (v41)
  {
    v43 = v86;
    __swift_destroy_boxed_opaque_existential_1(v94);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    (*(*(v44 - 8) + 8))(&v43[v89], v44);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    (*(*(v45 - 8) + 8))(&v43[v90], v45);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
    (*(*(v46 - 8) + 8))(&v43[v88], v46);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    return (*(*(v47 - 8) + 8))(&v43[v34], v47);
  }

  else
  {
    v70[1] = v38;
    v71 = v37;
    v83 = v35;
    v85 = v34;
    v42 = v80;
    LOBYTE(v92) = 0;
    v92 = sub_252E37C04();
    v93 = v49;
    v50 = v86;
    sub_252E330C4();
    LOBYTE(v92) = 1;
    v51 = sub_252E37C04();
    v52 = v87;
    v53 = v51;
    v55 = v54;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    (*(*(v56 - 8) + 8))(v50 + v89, v56);
    v92 = v53;
    v93 = v55;
    sub_252E330C4();
    LOBYTE(v92) = 2;
    LOBYTE(v53) = sub_252E37C14() & 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    (*(*(v57 - 8) + 8))(v50 + v90, v57);
    LOBYTE(v92) = v53;
    sub_252E330C4();
    LOBYTE(v92) = 4;
    v58 = sub_252E37C14();
    v59 = v52[7];
    LOBYTE(v92) = v58 & 1;
    sub_252E330C4();
    LOBYTE(v92) = 7;
    v60 = sub_252E37C14();
    v61 = v52[11];
    LOBYTE(v92) = v60 & 1;
    sub_252E330C4();
    LOBYTE(v92) = 6;
    v62 = sub_252E37C14();
    v63 = v52[8];
    LOBYTE(v92) = v62 & 1;
    sub_252E330C4();
    LOBYTE(v92) = 3;
    sub_252B447F4(&qword_27F542A38, type metadata accessor for IconConfiguration);
    sub_252E37C64();
    v64 = v94;
    v65 = v81;
    v66 = v74;
    v73(v42, 0, 1, v77);
    sub_252938414(v42, v66, &qword_27F541B50, &unk_252E47970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
    sub_252E330F4();
    sub_25293847C(v42, &qword_27F541B50, &unk_252E47970);
    LOBYTE(v92) = 5;
    sub_252B447F4(&qword_27F542E18, MEMORY[0x277CC9260]);
    v67 = v75;
    v68 = v83;
    sub_252E37C64();
    v69 = v84;
    v71(v67, 0, 1, v68);
    sub_252938414(v67, v69, &qword_27F540370, &qword_252E3C450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    sub_252E330F4();
    sub_25293847C(v67, &qword_27F540370, &qword_252E3C450);
    (*(v65 + 8))(v91, v82);
    sub_252A31B70(v50, v76);
    __swift_destroy_boxed_opaque_existential_1(v64);
    return sub_252B4416C(v50, type metadata accessor for CompletionSnippetModel);
  }
}

unint64_t sub_252B44118()
{
  result = qword_27F543578;
  if (!qword_27F543578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543578);
  }

  return result;
}

uint64_t sub_252B4416C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t CompletionSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v4 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v33 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543580, &qword_252E4D2B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252B44118();
  sub_252E37F84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v35) = 0;
  v16 = v34;
  sub_252E37CF4();
  if (v16)
  {
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v30[1] = v6;
    v31 = v9;
    v34 = v11;

    v18 = type metadata accessor for CompletionSnippetModel();
    v19 = v18[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    sub_252E330E4();
    v36 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    sub_252ACE638(&qword_27F5400C8, &unk_27F541300, &qword_252E3C100);
    sub_252E37D54();

    v20 = v18[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
    sub_252E330E4();
    v36 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    sub_252ACE638(&qword_27F542E28, &qword_27F5410E8, &qword_252E403C0);
    sub_252E37D54();
    v21 = v33;
    v22 = v18[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    sub_252E330E4();
    LOBYTE(v35) = 4;
    sub_252E37D04();
    v23 = v2 + v18[11];
    sub_252E330E4();
    LOBYTE(v35) = 7;
    sub_252E37D04();
    v24 = v2 + v18[8];
    sub_252E330E4();
    LOBYTE(v35) = 6;
    sub_252E37D04();
    v25 = v18;
    v26 = v18[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
    v27 = v31;
    sub_252E330E4();
    LOBYTE(v35) = 3;
    sub_252AA8E38();
    sub_252E37D54();
    sub_25293847C(v27, &qword_27F541B50, &unk_252E47970);
    v28 = v25[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
    sub_252E330E4();
    LOBYTE(v35) = 5;
    sub_252ACE6A0();
    sub_252E37D54();
    v29 = v34;
    sub_25293847C(v21, &qword_27F540370, &qword_252E3C450);
    return (*(v29 + 8))(v14, v10);
  }
}

uint64_t sub_252B447F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252B4483C()
{
  sub_252B447F4(&qword_27F543588, type metadata accessor for CompletionSnippetModel);
  sub_252B447F4(&qword_27F543590, type metadata accessor for CompletionSnippetModel);
  return sub_252E330B4();
}

uint64_t sub_252B44904()
{
  sub_252B447F4(&qword_27F543588, type metadata accessor for CompletionSnippetModel);
  sub_252B447F4(&qword_27F543590, type metadata accessor for CompletionSnippetModel);
  return sub_252E330A4();
}

void sub_252B44A0C()
{
  sub_252930130(319, &qword_27F540118);
  if (v0 <= 0x3F)
  {
    sub_25293017C(319, &qword_27F540120, &unk_27F541300, &qword_252E3C100);
    if (v1 <= 0x3F)
    {
      sub_25293017C(319, &qword_27F542E60, &qword_27F5410E8, &qword_252E403C0);
      if (v2 <= 0x3F)
      {
        sub_252930130(319, &qword_27F540128);
        if (v3 <= 0x3F)
        {
          sub_25293017C(319, &qword_27F5435A8, &qword_27F541B50, &unk_252E47970);
          if (v4 <= 0x3F)
          {
            sub_25293017C(319, &qword_27F542E68, &qword_27F540370, &qword_252E3C450);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_252B44B88()
{
  result = qword_27F5435B0;
  if (!qword_27F5435B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5435B0);
  }

  return result;
}

unint64_t sub_252B44BE0()
{
  result = qword_27F5435B8;
  if (!qword_27F5435B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5435B8);
  }

  return result;
}

unint64_t sub_252B44C38()
{
  result = qword_27F5435C0;
  if (!qword_27F5435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5435C0);
  }

  return result;
}

uint64_t sub_252B44C8C()
{
  v0 = sub_252E37B74();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252B44CD8()
{
  v1 = v0;
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v2 = HomeFilter.Builder.init()();
  v4 = v3;
  v5 = [v1 home];
  v6 = (*(*v4 + 640))();

  v7 = [v1 room];
  v8 = (*(*v6 + 688))();

  v9 = [v1 zone];
  v10 = (*(*v8 + 656))();

  v11 = [v1 group];
  v12 = (*(*v10 + 672))();

  v13 = INHomeDeviceType.toCustom()([v1 deviceType]);
  v14 = (*(*v12 + 624))(v13);

  v15 = [v1 entityIdentifiers];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E37264();
  }

  else
  {
    v17 = 0;
  }

  v18 = (*(*v14 + 568))(v17);

  v19 = [v1 entityName];
  v20 = (*(*v18 + 584))();

  v21 = [v1 entityType];
  if (v21 >= 8)
  {
    v21 = 0;
  }

  v22 = (*(*v20 + 592))(v21);

  v23 = INHomeDeviceType.toCustom()([v1 outerDeviceType]);
  v24 = (*(*v22 + 600))(v23);

  v25 = [v1 outerDeviceName];
  v26 = (*(*v24 + 616))();

  v27 = (*(*v26 + 728))([v1 isExcludeFilter]);

  v28 = (*(*v27 + 736))([v1 hasAllQuantifier]);

  v30 = (*(*v28 + 760))(v29);

  return v30;
}

void sub_252B45218(void *a1, void *a2, uint64_t a3, void *a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v32 = sub_252E32E04();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v32);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36AD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2814B0A78);
  (*(v10 + 16))(v13, v14, v9);
  aBlock = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  aBlock = 0xD00000000000002FLL;
  v34 = 0x8000000252E805A0;
  v15 = [a1 aceId];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v19 = 0xE300000000000000;
    v17 = 7104878;
  }

  MEMORY[0x2530AD570](v17, v19);

  sub_252CC4A5C(aBlock, v34, 1, 0xD000000000000072, 0x8000000252E80390);

  (*(v10 + 8))(v13, v9);
  v36 = sub_25293F638(0, &qword_27F5435E0, 0x277D47348);
  aBlock = a1;
  v20 = a1;
  _s22HomeAutomationInternal3LogO16gradingAnalytics7commandyyp_tFZ_0(&aBlock);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v21 = sub_252DB7C84()[5];

  sub_252E32DF4();
  sub_252E32D44();
  v23 = v22;
  (*(v5 + 8))(v8, v32);
  v24 = v23 * 1000.0;
  if (COERCE__INT64(fabs(v23 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v24 < 9.22337204e18)
  {
    *(v21 + 16) = v24;

    v25 = swift_allocObject();
    v26 = v30;
    *(v25 + 16) = v29;
    *(v25 + 24) = v26;
    v37 = sub_252B4DB50;
    v38 = v25;
    aBlock = MEMORY[0x277D85DD0];
    v34 = 1107296256;
    v35 = sub_252B45814;
    v36 = &block_descriptor_11;
    v27 = _Block_copy(&aBlock);

    v28 = v26;

    [v31 sendSiriCommand:v20 completionHandler:v27];
    _Block_release(v27);
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_252B45634(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_2814B0A78);
  sub_252CC7784(0xD000000000000022, 0x8000000252E80600, 0, 0xD000000000000072, 0x8000000252E80390);
  if (a1)
  {
    swift_beginAccess();
    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    *(a3 + 16) = a1;
    *(a3 + 24) = 1;
    v9 = a1;
    sub_252927D3C(v7);
  }

  if (a2)
  {
    v10 = objc_allocWithZone(MEMORY[0x277D47350]);
    v11 = sub_252E36E24();
    v12 = [v10 initWithDictionary_];

    swift_beginAccess();
    v13 = *(a3 + 16);
    v14 = *(a3 + 24);
    *(a3 + 16) = v12;
    *(a3 + 24) = 0;
    v15 = v12;
    sub_252927D3C(v13);
    if (v15)
    {
      v17[3] = sub_25293F638(0, &qword_27F5435E8, 0x277D47350);
      v17[0] = v15;
      _s22HomeAutomationInternal3LogO16gradingAnalytics7commandyyp_tFZ_0(v17);
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  return sub_252E37614();
}

uint64_t sub_252B45814(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_252E36E44();
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v5(a2, v6);
}

void sub_252B458C0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, id *a5)
{
  v10 = *MEMORY[0x277D47DE8];
  v11 = sub_252E36F34();
  if (!a2)
  {

LABEL_9:
    if (a3 >> 62)
    {
      goto LABEL_137;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v86 = a4;
      v87 = a5;
      v16 = 0;
      a4 = a3 & 0xC000000000000001;
      v17 = a3 & 0xFFFFFFFFFFFFFF8;
      a5 = (a3 + 32);
      v18 = &off_279711000;
      v89 = a3 & 0xC000000000000001;
      v90 = a3;
      v88 = a3 & 0xFFFFFFFFFFFFFF8;
      v91 = (a3 + 32);
      while (1)
      {
        if (a4)
        {
          v19 = MEMORY[0x2530ADF00](v16, a3);
        }

        else
        {
          if (v16 >= *(v17 + 16))
          {
            goto LABEL_134;
          }

          v19 = a5[v16];
        }

        v20 = v19;
        v21 = __OFADD__(v16++, 1);
        if (v21)
        {
          break;
        }

        v22 = [v19 v18[220]];
        if (v22)
        {
          v23 = v22;
          a4 = i;
          type metadata accessor for HomeUserTaskResponse();
          v24 = sub_252E37264();

          i = v24 & 0xFFFFFFFFFFFFFF8;
          if (v24 >> 62)
          {
            v25 = sub_252E378C4();
          }

          else
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = 0;
          a3 = v24 & 0xC000000000000001;
          while (1)
          {
            if (v25 == v17)
            {

              i = a4;
              a4 = v89;
              a3 = v90;
              v17 = v88;
              a5 = v91;
              v18 = &off_279711000;
              goto LABEL_14;
            }

            if (a3)
            {
              v26 = MEMORY[0x2530ADF00](v17, v24);
            }

            else
            {
              if (v17 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v26 = *(v24 + 8 * v17 + 32);
            }

            v27 = v26;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            a5 = [v26 taskOutcome];

            ++v17;
            if (a5 == 21)
            {
LABEL_29:

              return;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v37 = 0;
          for (j = &off_279711000; ; j = &off_279711000)
          {
            if (a4)
            {
              v39 = MEMORY[0x2530ADF00](v37, a3);
              v21 = __OFADD__(v37++, 1);
              if (v21)
              {
                goto LABEL_149;
              }
            }

            else
            {
              if (v37 >= *(v17 + 16))
              {
                goto LABEL_148;
              }

              v39 = a5[v37];
              v21 = __OFADD__(v37++, 1);
              if (v21)
              {
                goto LABEL_149;
              }
            }

            v85 = v39;
            v40 = [v39 entity];
            if (!v40)
            {
              break;
            }

            v41 = v40;
            v42 = [v40 j[222]];

            if (v42 != 7)
            {
              break;
            }

            v43 = [v85 taskResponses];
            if (!v43)
            {
              break;
            }

            v44 = v43;
            type metadata accessor for HomeUserTaskResponse();
            v45 = sub_252E37264();

            if (v45 >> 62)
            {
              v46 = sub_252E378C4();
            }

            else
            {
              v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v47 = 0;
            do
            {
              if (v46 == v47)
              {

                a4 = v89;
                a3 = v90;
                v17 = v88;
                goto LABEL_81;
              }

              if ((v45 & 0xC000000000000001) != 0)
              {
                v48 = MEMORY[0x2530ADF00](v47, v45);
              }

              else
              {
                if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_142;
                }

                v48 = *(v45 + 8 * v47 + 32);
              }

              v49 = v48;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_141;
              }

              v50 = [v48 taskOutcome];

              ++v47;
            }

            while (v50 != 12);

            a4 = v89;
            a3 = v90;
            v17 = v88;
            a5 = v91;
            if (v37 == i)
            {
              return;
            }
          }

LABEL_81:

          v51 = 0;
          v52 = v91;
LABEL_82:
          if (a4)
          {
            v53 = MEMORY[0x2530ADF00](v51, a3);
            goto LABEL_86;
          }

          if (v51 < *(v17 + 16))
          {
            v53 = v52[v51];
LABEL_86:
            v54 = v53;
            v21 = __OFADD__(v51++, 1);
            if (!v21)
            {
              v55 = [v53 taskResponses];
              if (v55)
              {
                v56 = v55;
                type metadata accessor for HomeUserTaskResponse();
                v57 = sub_252E37264();

                v58 = [v54 entity];
                if (v58)
                {

                  if (v57 >> 62)
                  {
                    v59 = sub_252E378C4();
                    if (v59)
                    {
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v59)
                    {
LABEL_91:
                      v60 = 0;
                      v84 = v57 + 32;
                      do
                      {
                        if ((v57 & 0xC000000000000001) != 0)
                        {
                          v61 = MEMORY[0x2530ADF00](v60, v57);
                        }

                        else
                        {
                          if (v60 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_146;
                          }

                          v61 = *(v84 + 8 * v60);
                        }

                        v62 = v61;
                        v21 = __OFADD__(v60++, 1);
                        if (v21)
                        {
                          goto LABEL_145;
                        }

                        if (qword_27F53F730 != -1)
                        {
                          swift_once();
                        }

                        v63 = qword_27F575C40;
                        v64 = [v62 taskOutcome];
                        if (*(v63 + 16))
                        {
                          v65 = v64;
                          v66 = *(v63 + 40);
                          sub_252E37EC4();
                          MEMORY[0x2530AE390](v65);
                          v67 = sub_252E37F14();
                          v68 = -1 << *(v63 + 32);
                          v69 = v67 & ~v68;
                          if ((*(v63 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
                          {
                            v70 = ~v68;
                            while (*(*(v63 + 48) + 8 * v69) != v65)
                            {
                              v69 = (v69 + 1) & v70;
                              if (((*(v63 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
                              {
                                goto LABEL_92;
                              }
                            }

LABEL_122:

                            a4 = v89;
                            a3 = v90;
                            v17 = v88;
                            v52 = v91;
                            if (v51 != i)
                            {
                              goto LABEL_82;
                            }

                            return;
                          }
                        }

LABEL_92:
                      }

                      while (v60 != v59);
                    }
                  }
                }
              }

              v71 = [v54 taskResponses];
              if (v71)
              {
                v72 = v71;
                type metadata accessor for HomeUserTaskResponse();
                v73 = sub_252E37264();

                v74 = [v54 entity];
                if (v74)
                {

                  if (v73 >> 62)
                  {
                    v75 = sub_252E378C4();
                    if (v75)
                    {
                      goto LABEL_113;
                    }
                  }

                  else
                  {
                    v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v75)
                    {
LABEL_113:
                      v76 = 0;
                      while (v75 != v76)
                      {
                        if ((v73 & 0xC000000000000001) != 0)
                        {
                          v77 = MEMORY[0x2530ADF00](v76, v73);
                        }

                        else
                        {
                          if (v76 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_144;
                          }

                          v77 = *(v73 + 8 * v76 + 32);
                        }

                        v78 = v77;
                        if (__OFADD__(v76, 1))
                        {
                          goto LABEL_143;
                        }

                        v79 = [v77 taskOutcome];

                        ++v76;
                        if (v79 == 23)
                        {
                          v62 = v54;
                          goto LABEL_122;
                        }
                      }
                    }
                  }
                }
              }

              a4 = v86;
              a5 = v87;
              goto LABEL_127;
            }

LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
          }

          __break(1u);
          return;
        }

LABEL_14:

        if (v16 == i)
        {
          v28 = 0;
          while (1)
          {
            if (a4)
            {
              v29 = MEMORY[0x2530ADF00](v28, a3);
            }

            else
            {
              if (v28 >= *(v17 + 16))
              {
                goto LABEL_140;
              }

              v29 = a5[v28];
            }

            v20 = v29;
            v21 = __OFADD__(v28++, 1);
            if (v21)
            {
              break;
            }

            v30 = [v29 v18[220]];
            if (v30)
            {
              v31 = v30;
              a4 = i;
              type metadata accessor for HomeUserTaskResponse();
              v32 = sub_252E37264();

              if (v32 >> 62)
              {
                v33 = sub_252E378C4();
              }

              else
              {
                v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v34 = 0;
              a3 = v32 & 0xC000000000000001;
              while (v33 != v34)
              {
                if (a3)
                {
                  v35 = MEMORY[0x2530ADF00](v34, v32);
                }

                else
                {
                  if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_136;
                  }

                  v35 = *(v32 + 8 * v34 + 32);
                }

                v36 = v35;
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_135;
                }

                a5 = [v35 taskOutcome];

                ++v34;
                if (a5 == 22)
                {
                  goto LABEL_29;
                }
              }

              a4 = v89;
              a3 = v90;
              v17 = v88;
              a5 = v91;
              v18 = &off_279711000;
            }

            if (v28 == i)
            {
              goto LABEL_56;
            }
          }

          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }
      }

      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      ;
    }

LABEL_127:
    if (qword_27F53F6D0 != -1)
    {
      swift_once();
    }

    v80 = off_27F5456D0;
    if (*(off_27F5456D0 + 2))
    {
      v81 = sub_252A44A10(a4, a5);
      if (v82)
      {
        v83 = *(v80[7] + 8 * v81);
      }
    }

    return;
  }

  if (v11 == a1 && v12 == a2)
  {

    return;
  }

  v14 = sub_252E37DB4();

  if ((v14 & 1) == 0)
  {
    goto LABEL_9;
  }
}

unint64_t sub_252B4623C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = &unk_27F543608;
    v29 = v1;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v28);
      }

      else
      {
        if (v2 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = sub_2529F3704(isUniquelyReferenced_nonNull_bridgeObject);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = v3;
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v34 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        v17 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v36)
          {
            goto LABEL_44;
          }

          v18 = v12 + 8 * v14 + 32;
          v30 = v12;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_2529E6488(&qword_27F543610, v4, &unk_252E4D550);
            v19 = v4;
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v19, &unk_252E4D550);
              v21 = sub_2529FBE00(v35, i, v7);
              v23 = *v22;

              (v21)(v35, 0);
              *(v18 + 8 * i) = v23;
              v19 = v4;
            }
          }

          else
          {
            type metadata accessor for Home();
            swift_arrayInitWithCopy();
            v19 = v4;
          }

          v4 = v19;

          v1 = v29;
          v3 = v34;
          if (v36 >= 1)
          {
            v24 = *(v30 + 16);
            v6 = __OFADD__(v24, v36);
            v25 = v24 + v36;
            if (v6)
            {
              goto LABEL_45;
            }

            *(v30 + 16) = v25;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v36 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B465B0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v32 = v2;
    v2 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v4)
      {
        v6 = MEMORY[0x2530ADF00](v2, a1);
      }

      else
      {
        if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v6 = *(a1 + 8 * v2 + 32);
      }

      v7 = v6;
      v8 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v9 = [v6 isExcludeFilter];
      sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
      v10 = sub_252E37674();
      v11 = v10;
      if (v9)
      {
        v12 = sub_252E37694();

        if (v12)
        {
          v31 = 1;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v2;
    }

    while (v8 != i);
    v31 = 0;
LABEL_15:
    v13 = 0;
    while (1)
    {
      if (v4)
      {
        v14 = MEMORY[0x2530ADF00](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v2 = v14;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 entityIdentifiers];
      v17 = v16 != 0;
      if (v16)
      {

LABEL_25:
        v2 = 0;
        while (1)
        {
          if (v4)
          {
            v21 = MEMORY[0x2530ADF00](v2, a1);
          }

          else
          {
            if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v21 = *(a1 + 8 * v2 + 32);
          }

          v20 = v21;
          v22 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v23 = [v21 deviceType];
          if (qword_27F53F690 != -1)
          {
            v26 = v23;
            swift_once();
            v23 = v26;
          }

          if (!*(off_27F545690 + 2) || (sub_252A488EC(v23), (v24 & 1) == 0))
          {
            if ([v20 entityType] == 7)
            {
              v25 = [v20 groupName];
              if (v25)
              {
                v18 = v25;
                v19 = v20;
                v20 = v18;
              }

              else
              {
                v19 = [v20 outerDeviceName];
                if (!v19)
                {

                  v27 = 1;
                  LODWORD(i) = v31;
                  if (v32)
                  {
                    goto LABEL_44;
                  }

LABEL_54:
                  v28 = *(v5 + 16);
                  goto LABEL_55;
                }
              }
            }
          }

          ++v2;
          if (v22 == i)
          {
            v2 = v32;
            LODWORD(i) = v31;
            goto LABEL_53;
          }
        }
      }

      ++v13;
      if (v15 == i)
      {
        goto LABEL_25;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v17 = 0;
LABEL_53:
  v27 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
    goto LABEL_54;
  }

LABEL_44:
  v28 = sub_252E378C4();
LABEL_55:
  if (v28 > 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = i;
  }

  return v27 | v17 | v29;
}

uint64_t sub_252B468F8(uint64_t a1, void *a2)
{
  v14 = a2;
  v12 = *(a1 + 16);
  v2 = 0;
  if (v12)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v14 entityIdentifiers];
      if (v6)
      {
        v7 = v6;
        v8 = sub_252E37264();

        v13[0] = v4;
        v13[1] = v5;
        MEMORY[0x28223BE20](v9);
        v11[2] = v13;
        LOBYTE(v7) = sub_2529ED970(sub_25296A724, v11, v8);

        if (v7)
        {
          return v2;
        }
      }

      else
      {
      }

      ++v2;
      v3 += 2;
    }

    while (v12 != v2);
    return 0;
  }

  return v2;
}

void sub_252B46A48(unint64_t a1, uint64_t a2)
{
  v207 = a2;
  v218 = a1;
  v2 = sub_252E36AD4();
  v206 = *(v2 - 8);
  v3 = v206[8];
  v4 = MEMORY[0x28223BE20](v2);
  v198 = v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v192 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v192 - v10;
  MEMORY[0x28223BE20](v9);
  v209 = v192 - v12;
  v201 = sub_252E36AB4();
  v200 = *(v201 - 8);
  v13 = *(v200 + 64);
  MEMORY[0x28223BE20](v201);
  v208 = v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E32E84();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4B0 != -1)
  {
    goto LABEL_154;
  }

  while (1)
  {
    v205 = v2;
    v20 = __swift_project_value_buffer(v2, qword_27F544CB8);
    v203 = "Got error sending Ace Command: ";
    v204 = v20;
    sub_252CC3D90(0xD000000000000020, 0x8000000252E80850, 0xD000000000000072, 0x8000000252E80390);
    v21 = [objc_allocWithZone(MEMORY[0x277D47368]) init];
    sub_252E32E74();
    sub_252E32E24();
    (*(v16 + 8))(v19, v15);
    v22 = sub_252E36F04();

    [v21 setAceId_];

    v23 = sub_252E37254();
    v217 = v21;
    [v21 setIdentifiers_];

    if (qword_27F53F5A8 != -1)
    {
      swift_once();
    }

    v24 = qword_27F544F30;
    sub_252E36A94();
    sub_252E375D4();
    v199 = v24;
    sub_252E36A84();
    v25 = v218;
    if (!(v218 >> 62))
    {
      v16 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_95;
      }

      goto LABEL_6;
    }

    v16 = sub_252E378C4();
    if (!v16)
    {
LABEL_95:
      type metadata accessor for HomeStore();
      v72 = static HomeStore.shared.getter();
      v49 = HomeStore.accessories(matching:supporting:)(v25, 0);
      v74 = v73;

      if (v74)
      {
        sub_252929F10(v49, 1);
        v75 = 0xD000000000000028;
        v76 = 0x8000000252E808A0;
        v77 = v203 | 0x8000000000000000;
        v78 = 623;
LABEL_115:
        sub_252CC4050(v75, v76, 0xD000000000000072, v77, 0xD00000000000002DLL, 0x8000000252E808D0, v78);
LABEL_279:
        sub_252E375C4();
        v191 = MEMORY[0x277D84F90];
        v190 = 2;
        v189 = 21;
        v188 = v208;
        sub_252E36A74();
        (*(v200 + 8))(v188, v201);
        return;
      }

      v79 = v206[2];
      v197 = v206 + 2;
      v196 = v79;
      v79(v8, v204, v205);
      v226 = 0;
      v227 = 0xE000000000000000;
      sub_252E379F4();

      v226 = 0xD000000000000025;
      v227 = 0x8000000252E80900;
      v11 = v49 & 0xFFFFFFFFFFFFFF8;
      if (v49 >> 62)
      {
LABEL_159:
        v80 = sub_252E378C4();
        v214 = v80;
        v215 = v11;
        if (v80)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v80 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v214 = v80;
        v215 = v49 & 0xFFFFFFFFFFFFFF8;
        if (v80)
        {
LABEL_99:
          v2 = 0;
          v15 = MEMORY[0x277D84F90];
          while (1)
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x2530ADF00](v2, v49);
              v11 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_142;
              }
            }

            else
            {
              if (v2 >= *(v11 + 16))
              {
                goto LABEL_143;
              }

              v16 = *(v49 + 8 * v2 + 32);

              v11 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_142;
              }
            }

            v81 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
            v82 = type metadata accessor for Service();
            v19 = MEMORY[0x2530AD730](v81, v82);
            v84 = v83;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_2529F7A80(0, *(v15 + 16) + 1, 1, v15);
            }

            v86 = *(v15 + 16);
            v85 = *(v15 + 24);
            v16 = v86 + 1;
            if (v86 >= v85 >> 1)
            {
              v15 = sub_2529F7A80((v85 > 1), v86 + 1, 1, v15);
            }

            *(v15 + 16) = v16;
            v87 = v15 + 16 * v86;
            *(v87 + 32) = v19;
            *(v87 + 40) = v84;
            ++v2;
            v80 = v214;
            v30 = v11 == v214;
            v11 = v215;
            if (v30)
            {
              goto LABEL_161;
            }
          }
        }
      }

      v15 = MEMORY[0x277D84F90];
LABEL_161:
      v105 = MEMORY[0x2530AD730](v15, MEMORY[0x277D837D0]);
      v107 = v106;

      MEMORY[0x2530AD570](v105, v107);

      v15 = v227;
      sub_252CC3D90(v226, v227, 0xD000000000000072, v203 | 0x8000000000000000);

      v108 = v206[1];
      ++v206;
      v195 = v108;
      v108(v8, v205);
      if (!v80)
      {
        goto LABEL_251;
      }

      v8 = 0;
      v192[1] = 0;
      v220 = *(v207 + 16);
      v212 = v49 & 0xC000000000000001;
      v202 = v49 + 32;
      v216 = v207 + 32;
      v194 = "matched accessories: ";
      v193 = "Matching service:\n";
      v95 = v218;
      v213 = v49;
      while (1)
      {
LABEL_165:
        if (v212)
        {
          v109 = MEMORY[0x2530ADF00](v8, v49);
          v43 = __OFADD__(v8++, 1);
          if (v43)
          {
            goto LABEL_253;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            goto LABEL_254;
          }

          v109 = *(v202 + 8 * v8);

          v43 = __OFADD__(v8++, 1);
          if (v43)
          {
LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            v168 = sub_252E378C4();
            v220 = v11;
            v221 = v168;
            if (!v168)
            {
              goto LABEL_258;
            }

LABEL_120:
            v19 = 0;
            v97 = v15 & 0xC000000000000001;
            v2 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v97)
              {
                v16 = MEMORY[0x2530ADF00](v19, v15);
                v11 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_149;
                }
              }

              else
              {
                if (v19 >= *(v95 + 16))
                {
                  goto LABEL_150;
                }

                v16 = *(v15 + 8 * v19 + 32);

                v11 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_149;
                }
              }

              v8 = v95;
              v98 = v15;
              v99 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v100 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = sub_2529F7A80(0, *(v2 + 16) + 1, 1, v2);
              }

              v102 = *(v2 + 16);
              v101 = *(v2 + 24);
              v16 = v102 + 1;
              if (v102 >= v101 >> 1)
              {
                v2 = sub_2529F7A80((v101 > 1), v102 + 1, 1, v2);
              }

              *(v2 + 16) = v16;
              v103 = v2 + 16 * v102;
              *(v103 + 32) = v99;
              *(v103 + 40) = v100;
              ++v19;
              v15 = v98;
              v95 = v8;
              if (v11 == v221)
              {
                goto LABEL_259;
              }
            }
          }
        }

        v219 = v8;
        v221 = v109;
        if (v220)
        {
          for (i = 0; i != v220; ++i)
          {
            v16 = *(v216 + 8 * i);
            v111 = (*v109 + 336);
            v112 = *v111;
            v113 = (*v111)();
            v15 = v113;
            if (v16 == 5)
            {
              v114 = sub_2529A6C5C(3, v113);

              if (!v114)
              {
                goto LABEL_204;
              }

              v15 = (v112)(v115);
              v16 = sub_2529A6C5C(4, v15);

              if ((v16 & 1) == 0)
              {
                goto LABEL_204;
              }

              v15 = (v112)(v116);
              v117 = sub_2529A6C5C(2, v15);

              if (!v117)
              {
                goto LABEL_204;
              }

              v109 = v221;
            }

            else
            {
              v118 = *(v113 + 16);
              v119 = 32;
              v109 = v221;
              do
              {
                if (!v118)
                {

                  goto LABEL_164;
                }

                v120 = *(v113 + v119);
                v119 += 8;
                --v118;
              }

              while (v120 != v16);
            }
          }
        }

        v8 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services;
        v121 = *(v109 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
        if (v121 >> 62)
        {
          if (v121 < 0)
          {
            v140 = *(v109 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
          }

          if (sub_252E378C4() != 1)
          {
            goto LABEL_215;
          }
        }

        else if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_215;
        }

        v15 = *(v109 + v8);
        if (v15 >> 62)
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            v141 = *(v109 + v8);
          }

          if (sub_252E378C4() < 1)
          {
            goto LABEL_215;
          }
        }

        else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_215;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          v142 = MEMORY[0x2530ADF00](0, v15);
          v124 = *(v142 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
          v123 = *(v142 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

          swift_unknownObjectRelease();
          if (!v123)
          {
            goto LABEL_215;
          }
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_255;
          }

          v122 = (*(v15 + 32) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
          v123 = v122[1];
          if (!v123)
          {
LABEL_215:
            v143 = sub_252D51310(v95);
            v144 = sub_252C75958(v143);

            v145 = sub_252D51460(v207);
            v146 = sub_252C75958(v145);

            v147 = sub_2529F9A94(v146, v144);

            v210 = v147;
            if ((v147 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              sub_252E37874();
              type metadata accessor for Service();
              sub_252B4DB58(&qword_27F541EB0, type metadata accessor for Service);
              sub_252E373E4();
              v147 = v226;
              v148 = v227;
              v149 = v228;
              v95 = v229;
              v150 = v230;
            }

            else
            {
              v151 = -1 << *(v147 + 32);
              v148 = v147 + 56;
              v149 = ~v151;
              v152 = -v151;
              if (v152 < 64)
              {
                v153 = ~(-1 << v152);
              }

              else
              {
                v153 = -1;
              }

              v150 = v153 & *(v147 + 56);

              v95 = 0;
            }

            v209 = v149;
            v8 = (v149 + 64) >> 6;
            v211 = MEMORY[0x277D84F90];
LABEL_222:
            v15 = v95;
            v154 = v150;
            while (1)
            {
              if (v147 < 0)
              {
                v158 = sub_252E37904();
                if (!v158 || (v222 = v158, type metadata accessor for Service(), swift_dynamicCast(), v16 = v224, v95 = v15, v150 = v154, !v224))
                {
LABEL_240:
                  v49 = v213;
LABEL_241:
                  sub_25297DEB0();

                  v163 = [v217 identifiers];
                  v95 = v218;
                  v8 = v219;
                  if (!v163)
                  {
                    goto LABEL_284;
                  }

                  v164 = v163;
                  v165 = sub_252E37264();

                  v224 = v165;
                  sub_25297A744(v211);
                  v80 = v214;
                  v11 = v215;
                  if (v224)
                  {
                    v15 = sub_252E37254();
                  }

                  else
                  {
                    v15 = 0;
                  }

                  [v217 setIdentifiers_];

                  if (v8 == v80)
                  {
LABEL_251:
                    sub_252929F10(v49, 0);
                    goto LABEL_279;
                  }

                  goto LABEL_165;
                }
              }

              else
              {
                v156 = v15;
                v157 = v154;
                v95 = v15;
                v49 = v213;
                if (!v154)
                {
                  while (1)
                  {
                    v95 = v156 + 1;
                    if (__OFADD__(v156, 1))
                    {
                      break;
                    }

                    if (v95 >= v8)
                    {
                      goto LABEL_241;
                    }

                    v157 = *(v148 + 8 * v95);
                    ++v156;
                    if (v157)
                    {
                      goto LABEL_223;
                    }
                  }

                  __break(1u);
                  goto LABEL_253;
                }

LABEL_223:
                v150 = (v157 - 1) & v157;
                v16 = *(*(v147 + 48) + ((v95 << 9) | (8 * __clz(__rbit64(v157)))));

                if (!v16)
                {
                  goto LABEL_240;
                }
              }

              v11 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
              v155 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

              v15 = v95;
              v154 = v150;
              if (v155)
              {
                v159 = v211;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v159 = sub_2529F7A80(0, *(v159 + 2) + 1, 1, v159);
                }

                v161 = *(v159 + 2);
                v160 = *(v159 + 3);
                v16 = v161 + 1;
                if (v161 >= v160 >> 1)
                {
                  v159 = sub_2529F7A80((v160 > 1), v161 + 1, 1, v159);
                }

                *(v159 + 2) = v16;
                v211 = v159;
                v162 = &v159[16 * v161];
                *(v162 + 4) = v11;
                *(v162 + 5) = v155;
                goto LABEL_222;
              }
            }
          }

          v124 = *v122;
          v125 = v122[1];
        }

        v196(v198, v204, v205);
        v224 = 0;
        v225 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000012, v194 | 0x8000000000000000);
        v15 = *(v221 + v8);
        if (v15 >> 62)
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            v166 = *(v221 + v8);
          }

          v126 = sub_252E378C4();
        }

        else
        {
          v126 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v16 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
        if (v126 < 1)
        {
          v129 = 0;
          v128 = 0;
        }

        else if ((v15 & 0xC000000000000001) != 0)
        {
          v167 = MEMORY[0x2530ADF00](0, v15);
          v129 = *(v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v128 = *(v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

          swift_unknownObjectRelease();
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_256;
          }

          v127 = (*(v15 + 32) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          v129 = *v127;
          v128 = v127[1];
        }

        v222 = v129;
        v223 = v128;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v130 = sub_252E36F94();
        MEMORY[0x2530AD570](v130);

        MEMORY[0x2530AD570](0xD000000000000033, v193 | 0x8000000000000000);
        v131 = *(v221 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v132 = *(v221 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        MEMORY[0x2530AD570](v131, v132);

        v133 = v198;
        sub_252CC3D90(v224, v225, 0xD000000000000072, v203 | 0x8000000000000000);

        v195(v133, v205);
        v134 = [v217 identifiers];
        if (!v134)
        {
          goto LABEL_286;
        }

        v135 = v134;
        v15 = sub_252E37264();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2529F7A80(0, *(v15 + 16) + 1, 1, v15);
        }

        v137 = *(v15 + 16);
        v136 = *(v15 + 24);
        if (v137 >= v136 >> 1)
        {
          v15 = sub_2529F7A80((v136 > 1), v137 + 1, 1, v15);
        }

        *(v15 + 16) = v137 + 1;
        v138 = v15 + 16 * v137;
        *(v138 + 32) = v124;
        *(v138 + 40) = v123;
        v139 = sub_252E37254();

        [v217 setIdentifiers_];

LABEL_204:

LABEL_164:
        v8 = v219;
        if (v219 == v80)
        {
          goto LABEL_251;
        }
      }
    }

LABEL_6:
    v15 = 0;
    v220 = v25 & 0xFFFFFFFFFFFFFF8;
    v221 = v25 & 0xC000000000000001;
    v210 = v25 + 32;
    v2 = MEMORY[0x277D837D0];
    v214 = v16;
LABEL_7:
    if (v16 != v15)
    {
      break;
    }

    v15 = 0;
    v8 = &qword_27F5404D8;
    v16 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D837D0];
    do
    {
      if (v221)
      {
        v31 = MEMORY[0x2530ADF00](v15, v25);
      }

      else
      {
        if (v15 >= *(v220 + 16))
        {
          goto LABEL_137;
        }

        v31 = *(v25 + 8 * v15 + 32);
      }

      v11 = v31;
      v32 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_136;
      }

      v33 = [v31 isExcludeFilter];
      v2 = sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
      v34 = sub_252E37674();
      v35 = v34;
      v212 = v2;
      if (v33)
      {
        v2 = sub_252E37694();

        if (v2)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      v36 = [v11 entityIdentifiers];
      if (v36)
      {
        v2 = v36;
        v37 = sub_252E37264();
      }

      else
      {
        v37 = v16;
      }

      v38 = [v217 identifiers];
      if (!v38)
      {
        goto LABEL_282;
      }

      v39 = v38;
      v40 = sub_252E37264();

      v226 = v40;
      sub_25297A744(v37);
      if (v226)
      {
        v2 = sub_252E37254();
      }

      else
      {
        v2 = 0;
      }

      [v217 setIdentifiers_];

LABEL_19:
      ++v15;
      v30 = v32 == v214;
      v25 = v218;
    }

    while (!v30);
    v15 = 0;
    v8 = 0;
    v16 = v214;
    v19 = v210;
    v2 = v212;
    while (1)
    {
      if (v221)
      {
        v42 = MEMORY[0x2530ADF00](v15, v25);
        v43 = __OFADD__(v15, 1);
        v44 = v15 + 1;
        if (v43)
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (v15 >= *(v220 + 16))
        {
          goto LABEL_141;
        }

        v42 = *(v19 + 8 * v15);
        v43 = __OFADD__(v15, 1);
        v44 = v15 + 1;
        if (v43)
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }
      }

      v211 = v44;
      v213 = v42;
      v45 = [v42 isExcludeFilter];
      v41 = sub_252E37664();
      if (!v45)
      {
        v15 = v211;
LABEL_65:

        goto LABEL_37;
      }

      v46 = sub_252E37694();

      if (v46)
      {
        break;
      }

      v15 = v211;
      v41 = v213;
LABEL_37:

      v2 = v212;
      if (v15 == v16)
      {
        v90 = v209;
        v91 = v205;
        (v206[2])(v209, v204, v205);
        v226 = 0;
        v227 = 0xE000000000000000;
        sub_252E379F4();

        v226 = 0xD00000000000002ALL;
        v227 = 0x8000000252E80A00;
        v92 = [v217 identifiers];
        if (v92)
        {
          v93 = v92;
          v94 = sub_252E37264();
        }

        else
        {
          v94 = 0;
        }

        v224 = v94;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540378, &unk_252E43ED0);
        v104 = sub_252E36F94();
        MEMORY[0x2530AD570](v104);

        sub_252CC3D90(v226, v227, 0xD000000000000072, v203 | 0x8000000000000000);

        (v206[1])(v90, v91);
        goto LABEL_279;
      }
    }

    v2 = v213;
    v47 = [v217 identifiers];
    if (!v47)
    {
      goto LABEL_283;
    }

    v48 = v47;
    v49 = sub_252E37264();

    v219 = v2;
    v50 = sub_252B468F8(v49, v219);
    if (v51)
    {
      v11 = *(v49 + 16);
      goto LABEL_49;
    }

    v11 = v50;
    v16 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v15 = v49 + 16;
    v52 = *(v49 + 16);
    if (v16 == v52)
    {
LABEL_49:

      v15 = *(v49 + 16);
      if (v15 < v11)
      {
        goto LABEL_151;
      }

      if (v11 < 0)
      {
        goto LABEL_152;
      }

      v2 = v11 - v15;
      v19 = v11;
      if (__OFADD__(v15, v11 - v15))
      {
        goto LABEL_153;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v11 > *(v49 + 24) >> 1)
      {
        if (v15 <= v11)
        {
          v54 = v11;
        }

        else
        {
          v54 = v15;
        }

        v49 = sub_2529F7A80(isUniquelyReferenced_nonNull_native, v54, 1, v49);
      }

      v16 = v214;
      v19 = v49 + 32;
      v41 = v49;
      v49 += 32 + 16 * v11;
      swift_arrayDestroy();
      if (v15 == v11)
      {
        if (!v41)
        {
LABEL_64:
          v19 = v210;
          v15 = v211;
          [v217 setIdentifiers_];

          goto LABEL_65;
        }
      }

      else
      {
        memmove(v49, (v19 + 16 * v15), 16 * (v41[2] - v15));
        v55 = v41[2];
        v43 = __OFADD__(v55, v2);
        v56 = v55 - (v15 - v11);
        if (v43)
        {
          goto LABEL_158;
        }

        v41[2] = v56;
      }

      v41 = sub_252E37254();

      goto LABEL_64;
    }

    v19 = 16 * v50;
    while (2)
    {
      if (v16 < v52)
      {
        v2 = v49 + v19;
        v57 = *(v49 + v19 + 48);
        v58 = *(v49 + v19 + 56);

        v59 = [v219 entityIdentifiers];
        if (v59)
        {
          v215 = v11;
          v216 = v49;
          v60 = v59;
          v61 = sub_252E37264();

          v226 = v57;
          v227 = v58;
          MEMORY[0x28223BE20](v62);
          v191 = &v226;
          LOBYTE(v60) = sub_2529ED970(sub_25296A69C, &v189, v61);

          if (v60)
          {
            v25 = v218;
            v11 = v215;
            v49 = v216;
LABEL_68:
            ++v16;
            v15 = v49 + 16;
            v52 = *(v49 + 16);
            v19 += 16;
            if (v16 == v52)
            {
              goto LABEL_49;
            }

            continue;
          }

          v25 = v218;
          v11 = v215;
          v49 = v216;
          if (v16 != v215)
          {
LABEL_76:
            if (v11 < 0)
            {
              goto LABEL_144;
            }

            if (v11 >= *v15)
            {
              goto LABEL_145;
            }

            if (v16 >= *v15)
            {
              goto LABEL_146;
            }

            v216 = v8;
            v8 = v25;
            v63 = (v49 + 32 + 16 * v11);
            v15 = *v63;
            v64 = v63[1];
            v65 = *(v2 + 48);
            v66 = *(v2 + 56);

            v2 = v49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_252D57B88(v49);
            }

            v49 = v2;
            v67 = v2 + 16 * v11;
            v68 = *(v67 + 40);
            *(v67 + 32) = v65;
            *(v67 + 40) = v66;

            if (v16 >= *(v2 + 16))
            {
              goto LABEL_147;
            }

            v69 = v2 + v19;
            v70 = *(v2 + v19 + 56);
            *(v69 + 48) = v15;
            *(v69 + 56) = v64;

            v25 = v8;
            v8 = v216;
          }
        }

        else
        {

          if (v16 != v11)
          {
            goto LABEL_76;
          }
        }

        ++v11;
        goto LABEL_68;
      }

      break;
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    swift_once();
  }

  if (v221)
  {
    v26 = MEMORY[0x2530ADF00](v15, v25);
  }

  else
  {
    if (v15 >= *(v220 + 16))
    {
      goto LABEL_139;
    }

    v26 = *(v25 + 8 * v15 + 32);
  }

  v19 = v26;
  if (__OFADD__(v15, 1))
  {
    goto LABEL_138;
  }

  v27 = [v26 entityIdentifiers];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E37264();

    v19 = *(v29 + 16);
    v16 = v214;

    ++v15;
    if (!v19)
    {
      goto LABEL_87;
    }

    goto LABEL_7;
  }

LABEL_86:

LABEL_87:
  v15 = 0;
  while (v16 != v15)
  {
    if (v221)
    {
      v71 = MEMORY[0x2530ADF00](v15, v25);
    }

    else
    {
      if (v15 >= *(v220 + 16))
      {
        goto LABEL_148;
      }

      v71 = *(v25 + 8 * v15 + 32);
    }

    v2 = v71;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_140;
    }

    v19 = [v71 entityType];

    ++v15;
    if (v19 != 5)
    {
      goto LABEL_95;
    }
  }

  type metadata accessor for HomeStore();
  v88 = static HomeStore.shared.getter();
  v15 = HomeStore.scenes(matching:)(v25);
  v8 = v89;

  if (v8)
  {
    sub_252929F10(v15, 1);
    v75 = 0xD00000000000003ELL;
    v76 = 0x8000000252E80990;
    v77 = v203 | 0x8000000000000000;
    v78 = 594;
    goto LABEL_115;
  }

  (v206[2])(v11, v204, v205);
  v226 = 0;
  v227 = 0xE000000000000000;
  sub_252E379F4();

  v226 = 0xD00000000000002CLL;
  v227 = 0x8000000252E809D0;
  v95 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
    goto LABEL_257;
  }

  v96 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v220 = v11;
  v221 = v96;
  if (v96)
  {
    goto LABEL_120;
  }

LABEL_258:
  v2 = MEMORY[0x277D84F90];
LABEL_259:
  v169 = MEMORY[0x2530AD730](v2, MEMORY[0x277D837D0]);
  v171 = v170;

  MEMORY[0x2530AD570](v169, v171);
  v172 = v221;

  v173 = v220;
  sub_252CC3D90(v226, v227, 0xD000000000000072, v203 | 0x8000000000000000);

  (v206[1])(v173, v205);
  if (!v172)
  {
LABEL_278:
    sub_252929F10(v15, 0);
    v187 = sub_252E37254();

    [v217 setIdentifiers_];

    goto LABEL_279;
  }

  v174 = v15 & 0xC000000000000001;
  v175 = v15 + 32;
  v2 = MEMORY[0x277D84F90];
  v176 = 0;
  while (2)
  {
    while (2)
    {
      if (v174)
      {
        v185 = MEMORY[0x2530ADF00](v176, v15);
        v177 = v176 + 1;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_285;
        }

        v186 = *(v185 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v179 = *(v185 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

        swift_unknownObjectRelease();
        if (!v179)
        {
          v172 = v221;
LABEL_265:
          v176 = v177;
          if (v177 == v172)
          {
            goto LABEL_278;
          }

          continue;
        }

        v220 = v186;
        goto LABEL_268;
      }

      break;
    }

    if ((v176 & 0x8000000000000000) == 0)
    {
      if (v176 >= *(v95 + 16))
      {
        goto LABEL_281;
      }

      v177 = v176 + 1;
      v178 = (*(v175 + 8 * v176) + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      v179 = v178[1];
      if (!v179)
      {
        goto LABEL_265;
      }

      v220 = *v178;

LABEL_268:
      v180 = v95;
      v181 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_2529F7A80(0, *(v2 + 16) + 1, 1, v2);
      }

      v183 = *(v2 + 16);
      v182 = *(v2 + 24);
      if (v183 >= v182 >> 1)
      {
        v2 = sub_2529F7A80((v182 > 1), v183 + 1, 1, v2);
      }

      *(v2 + 16) = v183 + 1;
      v184 = v2 + 16 * v183;
      v172 = v221;
      *(v184 + 32) = v220;
      *(v184 + 40) = v179;
      v15 = v181;
      v95 = v180;
      if (v177 == v172)
      {
        goto LABEL_278;
      }

      v176 = v177;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_281:
  __break(1u);
LABEL_282:
  __break(1u);
LABEL_283:

  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
}

id sub_252B487CC(unint64_t a1, uint64_t a2)
{
  v6 = sub_252E32E84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v101[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v101[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v101[-v16];
  v18 = [objc_allocWithZone(MEMORY[0x277D47380]) init];
  if (!a1)
  {
    if (qword_27F53F4B0 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_5;
  }

  if (sub_252B465B0(a1))
  {
    sub_252B46A48(a1, a2);
    v20 = v19;

    return v20;
  }

  v108 = v10;
  v109 = v7;
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  v24 = __swift_project_value_buffer(v23, qword_27F544CB8);
  v106 = "Got error sending Ace Command: ";
  v107 = v24;
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E80750, 0xD000000000000072, 0x8000000252E80390);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x2530ADF00](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_90:
      v90 = v25;
      swift_once();
      v25 = v90;
      goto LABEL_35;
    }

    v26 = *(a1 + 32);
  }

  v27 = v26;
  v28 = [v26 homeName];
  v110 = v27;
  if (v28)
  {
    v29 = v28;
    [v18 setHomeName_];

    type metadata accessor for HomeStore();
    v30 = static HomeStore.shared.getter();
    v31 = sub_2529FC204(v27);

    if (!v31)
    {
      goto LABEL_22;
    }

    if ((v31 & 0xC000000000000001) != 0)
    {
      if (sub_252E378C4() == 1)
      {
        goto LABEL_15;
      }
    }

    else if (*(v31 + 16) == 1)
    {
LABEL_15:
      v32 = sub_252DA089C(v31);

      if (v32)
      {
        v33 = v6;
        v34 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
        if (v34)
        {
          v105 = v32;
          v35 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);

          sub_252E32CA4();
          v36 = sub_252E32CB4();
          v37 = *(v36 - 8);
          v38 = 0;
          if ((*(v37 + 48))(v17, 1, v36) != 1)
          {
            v38 = sub_252E32C74();
            (*(v37 + 8))(v17, v36);
          }

          [v18 setHomeIdentifier_];

          v112 = 0;
          v113 = 0xE000000000000000;
          sub_252E379F4();

          v112 = 0xD000000000000010;
          v113 = 0x8000000252E807E0;
          MEMORY[0x2530AD570](v35, v34);

          MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E80830);
          sub_252CC3D90(v112, v113, 0xD000000000000072, v106 | 0x8000000000000000);

LABEL_29:

          v6 = v33;
LABEL_32:
          v27 = v110;
          goto LABEL_33;
        }

        v6 = v33;
      }

LABEL_22:
      v39 = static HomeStore.shared.getter();
      v40 = sub_252B4623C(a1);
      v41 = sub_252C758E0(v40);

      if ((v41 & 0xC000000000000001) != 0)
      {
        if (sub_252E378C4() == 1)
        {
LABEL_24:
          v42 = sub_252DA089C(v41);

          v27 = v110;
          if (!v42)
          {
            goto LABEL_33;
          }

          v33 = v6;
          v43 = *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
          if (!v43)
          {

            v6 = v33;
            goto LABEL_32;
          }

          v44 = *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
          v45 = *(v42 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

          v105 = v44;
          sub_252E32CA4();
          v46 = sub_252E32CB4();
          v47 = *(v46 - 8);
          v48 = 0;
          if ((*(v47 + 48))(v15, 1, v46) != 1)
          {
            v48 = sub_252E32C74();
            (*(v47 + 8))(v15, v46);
          }

          [v18 setHomeIdentifier_];

          v112 = 0;
          v113 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E807E0);
          MEMORY[0x2530AD570](v105, v43);

          MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E80800);
          sub_252CC3D90(v112, v113, 0xD000000000000072, v106 | 0x8000000000000000);

          goto LABEL_29;
        }
      }

      else if (*(v41 + 16) == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    goto LABEL_22;
  }

LABEL_33:
  v2 = &off_279711000;
  v3 = v27;
  if (![v27 entityType])
  {
    goto LABEL_40;
  }

  v25 = [v27 entityType];
  if (qword_27F53F688 != -1)
  {
    goto LABEL_90;
  }

LABEL_35:
  v49 = off_27F545688;
  if (*(off_27F545688 + 2) && (v50 = sub_252A488EC(v25), (v51 & 1) != 0))
  {
    v52 = (v49[7] + 16 * v50);
    v53 = *v52;
    v54 = v52[1];

    v55 = sub_252E36F04();
  }

  else
  {
    v55 = 0;
  }

  [v18 setEntityType_];

LABEL_40:
  v56 = [v3 groupName];
  if (v56)
  {
    v57 = v56;
    [v18 setGroupName_];
  }

  v58 = [v3 zoneName];
  if (v58)
  {
    v59 = v58;
    [v18 setZoneName_];
  }

  v60 = [v3 roomName];
  if (v60)
  {
    v61 = v60;
    [v18 setRoomName_];
  }

  v62 = [v3 homeEntityName];
  if (!v62)
  {
    goto LABEL_53;
  }

  v63 = v62;
  if ([v3 v2[235]] == 7)
  {
    [v18 setServiceName_];
  }

  else
  {
    if ([v3 v2[235]] != 5)
    {

      v112 = 0;
      v113 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E80790);
      v111 = [v3 v2[235]];
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E807C0);
      sub_252CC3D90(v112, v113, 0xD000000000000072, v106 | 0x8000000000000000);

      goto LABEL_53;
    }

    [v18 setSceneName_];
  }

LABEL_53:
  if ([v3 deviceType])
  {
    v64 = [v3 deviceType];
    if (qword_27F53F690 != -1)
    {
      v91 = v64;
      swift_once();
      v64 = v91;
    }

    v65 = off_27F545690;
    if (*(off_27F545690 + 2) && (v66 = sub_252A488EC(v64), (v67 & 1) != 0))
    {
      v68 = (v65[7] + 16 * v66);
      v69 = *v68;
      v70 = v68[1];

      v71 = sub_252E36F04();
    }

    else
    {
      v71 = 0;
    }

    [v18 setServiceType_];
  }

  v72 = [v3 outerDeviceName];
  if (v72)
  {
    v73 = v72;
    [v18 setAccessoryName_];
  }

  if (*(a2 + 16) != 1)
  {
    goto LABEL_100;
  }

  v103 = v6;
  v104 = v18;
  v105 = *(a2 + 32);
  type metadata accessor for HomeStore();
  v74 = static HomeStore.shared.getter();
  v75 = HomeStore.services(matching:supporting:)(a1, 0);
  v77 = v76;

  v102 = v77;
  if ((v77 & 1) != 0 || v105 != 46)
  {
    goto LABEL_92;
  }

  if (v75 >> 62)
  {
    v78 = sub_252E378C4();
    if (v78)
    {
      goto LABEL_68;
    }

    goto LABEL_92;
  }

  v78 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v78)
  {
LABEL_92:
    sub_252929F10(v75, v102 & 1);
    if (qword_27F53F6A8 != -1)
    {
      swift_once();
    }

    v92 = off_27F5456A8;
    v18 = v104;
    if (*(off_27F5456A8 + 2))
    {
      v93 = sub_252A488EC(v105);
      v6 = v103;
      v3 = v110;
      if (v94)
      {
        v95 = (v92[7] + 16 * v93);
        v96 = *v95;
        v97 = v95[1];

        v98 = sub_252E36F04();
      }

      else
      {
        v98 = 0;
      }
    }

    else
    {
      v98 = 0;
      v6 = v103;
      v3 = v110;
    }

    [v18 setAttribute_];

LABEL_100:
    v18 = v18;
    v99 = v108;
    sub_252E32E74();
    sub_252E32E24();
    (*(v109 + 8))(v99, v6);
    v100 = sub_252E36F04();

    [v18 setAceId_];

    return v18;
  }

LABEL_68:
  v79 = 0;
  v18 = (v75 & 0xC000000000000001);
  while (v18)
  {
    v80 = MEMORY[0x2530ADF00](v79, v75);
    v81 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      goto LABEL_85;
    }

LABEL_74:
    v82 = [*(v80 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v83 = sub_252E36F34();
    v85 = v84;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v86 = off_27F546230;
    if (*(off_27F546230 + 2) && (v87 = sub_252A44A10(v83, v85), (v88 & 1) != 0))
    {
      v89 = *(v86[7] + 8 * v87);

      if (v89 == 6)
      {
        sub_252929F10(v75, 0);
        sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E80770, 0xD000000000000072, v106 | 0x8000000000000000);
        v18 = v104;
        [v104 setAttribute_];
        v6 = v103;
        v3 = v110;
        goto LABEL_100;
      }
    }

    else
    {
    }

    ++v79;
    if (v81 == v78)
    {
      goto LABEL_92;
    }
  }

  if (v79 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_86;
  }

  v80 = *(v75 + 8 * v79 + 32);

  v81 = v79 + 1;
  if (!__OFADD__(v79, 1))
  {
    goto LABEL_74;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_5:
  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544CB8);
  sub_252CC3D90(0xD000000000000039, 0x8000000252E80710, 0xD000000000000072, 0x8000000252E80390);
  return v18;
}

uint64_t sub_252B49584(unint64_t a1)
{
  v24 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_23:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v6 taskType];
    v10 = sub_252A488EC(v9);
    v12 = v4[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_21;
    }

    v16 = v11;
    if (v4[3] < v15)
    {
      sub_252DFE824(v15, 1);
      v4 = v24;
      v10 = sub_252A488EC(v9);
      if ((v16 & 1) != (v17 & 1))
      {
        break;
      }
    }

    if (v16)
    {
      v5 = (v4[7] + 8 * v10);
      MEMORY[0x2530AD700]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_252E3C130;
      *(v19 + 32) = v7;
      v4[(v18 >> 6) + 8] |= 1 << v18;
      *(v4[6] + 8 * v18) = v9;
      *(v4[7] + 8 * v18) = v19;
      v20 = v4[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_22;
      }

      v4[2] = v21;
    }

    ++v3;
    if (v8 == v2)
    {
      return v4;
    }
  }

  result = sub_252E37E24();
  __break(1u);
  return result;
}

void sub_252B497DC(void *a1)
{
  v81 = a1;
  v80 = sub_252E32E84();
  v1 = *(v80 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_252B49584(v4);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v9 = v5 + 64;
  v8 = *(v5 + 64);
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  v87 = MEMORY[0x277D84F90];
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v73 = "Got error sending Ace Command: ";
  v78 = (v1 + 8);
  v14 = &off_279711000;
  v69 = v5;
  v70 = v13;
  v68 = v5 + 64;
  if (!v12)
  {
LABEL_4:
    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(v9 + 8 * v15);
      ++v6;
      if (v12)
      {
        v6 = v15;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_8:
  while (1)
  {
    v71 = v12;
    v16 = *(*(v5 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v12)))));
    v86 = v7;
    if (!(v16 >> 62))
    {
      break;
    }

    v57 = v16;
    v58 = sub_252E378C4();
    v16 = v57;
    v17 = v58;
    v72 = v6;
    if (v58)
    {
      goto LABEL_10;
    }

LABEL_40:
    v59 = [objc_allocWithZone(MEMORY[0x277D47330]) init];
    sub_25293F638(0, &qword_27F540368, 0x277D47328);
    v60 = sub_252E37254();

    [v59 setActions_];

    [v59 setFilter_];
    v61 = v59;
    v62 = v79;
    sub_252E32E74();
    sub_252E32E24();
    (*v78)(v62, v80);
    v63 = sub_252E36F04();

    [v61 setAceId_];

    v64 = v61;
    MEMORY[0x2530AD700]();
    if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v66 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    v65 = v71;
    sub_252E372D4();

    v12 = (v65 - 1) & v65;
    v6 = v72;
    v13 = v70;
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v72 = v6;
  if (!v17)
  {
    goto LABEL_40;
  }

LABEL_10:
  if (v17 >= 1)
  {
    v75 = v16 & 0xC000000000000001;
    v18 = v16;

    v19 = v18;
    v20 = 0;
    v76 = v17;
    v77 = v18;
    while (1)
    {
      if (v75)
      {
        v21 = MEMORY[0x2530ADF00](v20, v19);
      }

      else
      {
        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = sub_252D13B74(v21);
      v25 = v24;
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        goto LABEL_20;
      }

      v27 = v26;
      v28 = v81;
      v29 = [v27 v14[203]];
      if (!v29)
      {
        break;
      }

      v30 = [v27 v14[203]];
      if (!v30)
      {

LABEL_26:
        v32 = 0;
        v34 = 0;
        goto LABEL_27;
      }

      v31 = v30;
      v32 = sub_252E36F34();
      v34 = v33;

LABEL_27:
      v40 = [v22 value];
      v41 = sub_252D13C70(v40);

      v42 = [objc_allocWithZone(MEMORY[0x277D47328]) init];
      if (v25)
      {

        v43 = sub_252E36F04();
      }

      else
      {
        v43 = 0;
      }

      v82 = v22;
      [v42 setActionType_];

      if (v34)
      {

        v44 = v32;
        v45 = sub_252E36F04();
      }

      else
      {
        v44 = v32;
        v45 = 0;
      }

      [v42 setAttribute_];

      v46 = v42;
      v47 = v79;
      sub_252E32E74();
      sub_252E32E24();
      (*v78)(v47, v80);
      v48 = sub_252E36F04();

      [v46 setAceId_];

      [v46 setValue_];
      v49 = v46;
      MEMORY[0x2530AD700]();
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v55 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v74 = v86;
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      ++v20;
      v50 = sub_252E36AD4();
      __swift_project_value_buffer(v50, qword_27F544CB8);
      v85[0] = 0;
      v85[1] = 0xE000000000000000;
      sub_252E379F4();

      v84 = v25;
      strcpy(v85, "actionType: ");
      BYTE5(v85[1]) = 0;
      HIWORD(v85[1]) = -5120;
      v83 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
      v51 = sub_252E36F94();
      MEMORY[0x2530AD570](v51);

      MEMORY[0x2530AD570](0x6269727474610A2CLL, 0xED0000203A657475);
      v83 = v44;
      v84 = v34;
      v52 = sub_252E36F94();
      MEMORY[0x2530AD570](v52);

      MEMORY[0x2530AD570](0x3A65756C61760A2CLL, 0xE900000000000020);
      v83 = v41;
      v53 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543600, &qword_252E4D548);
      v54 = sub_252E36F94();
      MEMORY[0x2530AD570](v54);

      sub_252CC3D90(v85[0], v85[1], 0xD000000000000072, v73 | 0x8000000000000000);

      v19 = v77;
      v14 = &off_279711000;
      if (v76 == v20)
      {

        v5 = v69;
        v7 = MEMORY[0x277D84F90];
        v9 = v68;
        goto LABEL_40;
      }
    }

LABEL_20:
    v35 = [v22 v14[203]];
    if (qword_27F53F6A8 != -1)
    {
      v56 = v35;
      swift_once();
      v35 = v56;
    }

    v36 = off_27F5456A8;
    if (!*(off_27F5456A8 + 2))
    {
      goto LABEL_26;
    }

    v37 = sub_252A488EC(v35);
    if ((v38 & 1) == 0)
    {
      goto LABEL_26;
    }

    v39 = (v36[7] + 16 * v37);
    v32 = *v39;
    v34 = v39[1];

    goto LABEL_27;
  }

LABEL_46:
  __break(1u);
}

id sub_252B4A004(unint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v51 = a4;
  v52 = a3;
  v57 = a1;
  v5 = sub_252E32E84();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_252E36AB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2814B0A18 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v13 = qword_2814B0A20;
    sub_252E36A94();
    sub_252E375D4();
    v56 = v13;
    sub_252E36A84();
    v14 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v58 = v12;
    v59 = v9;
    v60 = v8;
    v8 = MEMORY[0x277D84F90];
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v16 = a2 & 0xC000000000000001;
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v16)
      {
        v18 = MEMORY[0x2530ADF00](v15, a2);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_32;
        }

        v18 = *(a2 + 8 * v15 + 32);
      }

      v19 = v18;
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v12 = a2;
      v20 = [v18 attribute];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F7A6C(0, *(v8 + 16) + 1, 1, v8);
      }

      v22 = *(v8 + 16);
      v21 = *(v8 + 24);
      if (v22 >= v21 >> 1)
      {
        v8 = sub_2529F7A6C((v21 > 1), v22 + 1, 1, v8);
      }

      *(v8 + 16) = v22 + 1;
      *(v8 + 8 * v22 + 32) = v20;
      ++v15;
      a2 = v12;
      if (v9 == v14)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_17:
  v23 = sub_252B487CC(v57, v8);

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = v23;
    v27 = [v25 identifiers];
    if (v27)
    {
      v28 = v27;
      v29 = sub_252E37264();

      v30 = *(v29 + 16);

      if (!v30)
      {
        if (qword_27F53F4B0 != -1)
        {
          swift_once();
        }

        v31 = sub_252E36AD4();
        __swift_project_value_buffer(v31, qword_27F544CB8);
        sub_252CC4050(0xD000000000000027, 0x8000000252E806C0, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000001ALL, 0x8000000252E806F0, 190);
        sub_2529318DC();
        v32 = swift_allocError();
        *v33 = 15;
        v35 = v59;
        v34 = v60;
        v36 = v58;
        goto LABEL_30;
      }
    }

    else
    {
    }
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D47348]) init];
  sub_252B497DC(v23);
  sub_25293F638(0, &qword_27F540358, 0x277D47330);
  v38 = sub_252E37254();

  [v37 setActionRequests_];

  if (v51)
  {
    v39 = 7000;
  }

  else
  {
    v39 = v52;
  }

  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  [v37 setCommandTimeout_];

  v41 = v37;
  v42 = v53;
  sub_252E32E74();
  sub_252E32E24();
  (*(v54 + 8))(v42, v55);
  v43 = sub_252E36F04();

  [v41 setAceId_];

  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v44 = sub_252E36AD4();
  __swift_project_value_buffer(v44, qword_2814B09D8);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_252E379F4();

  v61 = 0xD000000000000011;
  v62 = 0x8000000252E806A0;
  v32 = v41;
  v45 = [v32 description];
  v46 = sub_252E36F34();
  v48 = v47;

  MEMORY[0x2530AD570](v46, v48);

  sub_252CC4A5C(v61, v62, 1, 0xD000000000000072, 0x8000000252E80390);

  sub_252E375C4();
  v36 = v58;
  sub_252E36A74();
  v35 = v59;
  v34 = v60;
LABEL_30:

  (*(v35 + 8))(v36, v34);
  return v32;
}

uint64_t sub_252B4A6EC(void *a1, uint64_t a2, int a3)
{
  v84 = a3;
  v85 = a2;
  v79 = a1;
  v3 = sub_252E36C84();
  v77 = *(v3 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = (v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = sub_252E36D54();
  v75 = *(v76 - 8);
  v6 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v76);
  v83 = (v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v73 = v66 - v9;
  v82 = sub_252E36CA4();
  v81 = *(v82 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_252E36D04();
  v78 = *(v80 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_252E36AB4();
  v71 = *(v72 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252E36CB4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(sub_252C38378() + 16);
  v25 = v24;

  if (!v24)
  {
    sub_252B4DAD8();
    v61 = swift_allocError();
    *v62 = 3;
    return v61;
  }

  v68 = v3;
  v26 = swift_allocObject();
  sub_252B4DAD8();
  v27 = swift_allocError();
  *v28 = 0;
  *(v26 + 2) = v27;
  v66[2] = v26 + 16;
  v26[24] = 1;
  v29 = dispatch_semaphore_create(0);
  sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  (*(v20 + 104))(v23, *MEMORY[0x277D851C0], v19);
  v70 = sub_252E375A4();
  (*(v20 + 8))(v23, v19);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v30 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v66[1] = v30;
  v69 = v18;
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_initStackObject();
  v67 = sub_252D2D190(204, 0x6E776F6E6B6E75, 0xE700000000000000);
  v31 = v79;
  v32 = sub_252AEBE50();
  sub_252DB7C84();
  v33 = v32;
  sub_252DB7138(v32);

  v34 = swift_allocObject();
  v34[2] = v31;
  v34[3] = v25;
  v34[4] = v26;
  v34[5] = v29;
  aBlock[4] = sub_252B4DB2C;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_13;
  v35 = _Block_copy(aBlock);
  v66[0] = v25;
  v79 = v31;

  v36 = v29;
  sub_252E36CD4();
  v86 = MEMORY[0x277D84F90];
  sub_252B4DB58(qword_2814B0298, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v37 = v82;
  sub_252E37824();
  v38 = v70;
  MEMORY[0x2530ADA30](0, v15, v12, v35);
  _Block_release(v35);
  (*(v81 + 8))(v12, v37);
  (*(v78 + 8))(v15, v80);

  v39 = v83;
  sub_252E36D14();
  v40 = 7000;
  if ((v84 & 1) == 0)
  {
    v40 = v85;
  }

  v41 = __OFADD__(v40, 400);
  v42 = v40 + 400;
  if (v41)
  {
    __break(1u);
    goto LABEL_24;
  }

  v35 = v26;
  v43 = v74;
  *v74 = v42;
  v44 = v77;
  v45 = v68;
  (*(v77 + 104))(v43, *MEMORY[0x277D85178], v68);
  v46 = v73;
  sub_252E36D24();
  (*(v44 + 8))(v43, v45);
  v47 = *(v75 + 8);
  v48 = v76;
  v47(v39, v76);
  sub_252E375F4();
  v47(v46, v48);
  v49 = sub_252DB7C84()[5];

  v15 = sub_252DB5924();

  v26 = v33;
  v12 = v69;
  if (!v67)
  {
    goto LABEL_32;
  }

  v50 = [v79 actionRequests];
  v51 = v50;
  if (!v50)
  {
    goto LABEL_31;
  }

  sub_25293F638(0, &qword_27F540358, 0x277D47330);
  v39 = sub_252E37264();

  if (v39 >> 62)
  {
LABEL_24:
    if (!sub_252E378C4())
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x2530ADF00](0, v39);
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_28;
    }

    v52 = *(v39 + 32);
  }

  v53 = v52;

  v54 = [v53 actions];

  if (!v54)
  {
    goto LABEL_30;
  }

  sub_25293F638(0, &qword_27F540368, 0x277D47328);
  v39 = sub_252E37264();

  if (v39 >> 62)
  {
LABEL_28:
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_17;
    }

LABEL_29:

    goto LABEL_30;
  }

  result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v39 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return result;
  }

  for (i = *(v39 + 32); ; i = MEMORY[0x2530ADF00](0, v39))
  {
    v57 = i;

    v58 = [v57 actionType];

    if (v58)
    {
      v59 = sub_252E36F34();
      v51 = v60;

      v50 = v59;
    }

    else
    {
LABEL_30:
      v50 = 0;
      v51 = 0;
    }

LABEL_31:
    sub_252D2D83C(v50, v51);

LABEL_32:
    sub_252E375C4();
    sub_252E36A74();
    if (!v26)
    {
      break;
    }

    aBlock[0] = v26;
    swift_beginAccess();
    if (v35[3])
    {
      break;
    }

    v39 = v35[2];
    if (v39)
    {
      v63 = v26;
      sub_2529904E4(v39);
      sub_252AECBCC(aBlock, v79);
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v65 = v26;
      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    if (!HIDWORD(v15))
    {
      [v26 setCommandDuration_];
      sub_252927D3C(v39);

      break;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  sub_252CC4C20(v15, 14);
  sub_252DB7C84();
  sub_252DB649C(0, 0, 1);

  (*(v71 + 8))(v12, v72);
  swift_beginAccess();
  v61 = v35[2];
  v64 = *(v35 + 24);
  sub_2529904E4(v61);

  return v61;
}

uint64_t sub_252B4B2F4(unint64_t a1)
{
  v24 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(a1 + 8 * v3 + 32);
        }

        v7 = v6;
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v9 = [v6 entity];
        v11 = sub_252A44C84(v9);
        v12 = v4[2];
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_22;
        }

        v15 = v10;
        if (v4[3] < v14)
        {
          sub_252DFEB28(v14, 1);
          v4 = v24;
          v16 = sub_252A44C84(v9);
          if ((v15 & 1) != (v17 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5435D8, &unk_252E4D528);
            result = sub_252E37E24();
            __break(1u);
            return result;
          }

          v11 = v16;
        }

        if (v15)
        {

          v5 = (v4[7] + 8 * v11);
          MEMORY[0x2530AD700]();
          if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v18 = swift_allocObject();
          *(v18 + 16) = xmmword_252E3C130;
          *(v18 + 32) = v7;
          v4[(v11 >> 6) + 8] |= 1 << v11;
          *(v4[6] + 8 * v11) = v9;
          *(v4[7] + 8 * v11) = v18;
          v19 = v4[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_23;
          }

          v4[2] = v21;
        }

        ++v3;
        if (v8 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t sub_252B4B564(uint64_t a1, unint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  if (!a1)
  {
    if (qword_27F53F4B0 != -1)
    {
      goto LABEL_75;
    }

    goto LABEL_67;
  }

  v5 = sub_252B4B2F4(v4);

  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a2 & 0xC000000000000001;
  v13 = v2;
  v68 = v5;
  v69 = v11;
  v70 = v5 + 64;
  if (v10)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v14 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_72;
    }

    if (v14 >= v11)
    {

      return v13;
    }

    v10 = *(v7 + 8 * v14);
    ++v6;
  }

  while (!v10);
  v6 = v14;
  while (1)
  {
LABEL_9:
    v73 = v10;
    v15 = (v6 << 9) | (8 * __clz(__rbit64(v10)));
    v16 = *(*(v5 + 48) + v15);
    v17 = *(*(v5 + 56) + v15);
    v82 = v2;
    v72 = v16;
    if (v16)
    {

      v18 = v16;
      v71 = sub_252D10E24();
      if (!(v17 >> 62))
      {
        goto LABEL_11;
      }
    }

    else
    {

      v71 = 0;
      if (!(v17 >> 62))
      {
LABEL_11:
        v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v74 = v6;
        if (v19)
        {
          break;
        }

        goto LABEL_60;
      }
    }

    v19 = sub_252E378C4();
    v74 = v6;
    if (v19)
    {
      break;
    }

LABEL_60:

    v58 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v59 = v71;
    v60 = sub_252E36F04();
    v61 = [v58 initWithIdentifier:0 displayString:v60];

    v62 = v61;
    [v62 setEntity_];
    type metadata accessor for HomeUserTaskResponse();
    v63 = sub_252E37254();

    [v62 setTaskResponses_];

    v64 = v62;
    MEMORY[0x2530AD700]();
    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v65 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();

    v10 = (v73 - 1) & v73;
    v13 = v83;
    v11 = v69;
    v7 = v70;
    v6 = v74;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  v80 = a2 >> 62;
  if (a2 >> 62)
  {
    v79 = sub_252E378C4();
  }

  else
  {
    v79 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v81 = v17 & 0xC000000000000001;
  v75 = v17 + 32;
  v76 = v17 & 0xFFFFFFFFFFFFFF8;
  v77 = v19;
  v78 = v17;
  while (1)
  {
    if (v81)
    {
      v21 = MEMORY[0x2530ADF00](v20, v17);
    }

    else
    {
      if (v20 >= *(v76 + 16))
      {
        goto LABEL_73;
      }

      v21 = *(v75 + 8 * v20);
    }

    v22 = v21;
    if (__OFADD__(v20++, 1))
    {
      break;
    }

    v24 = [v21 resultAttribute];
    if (v24)
    {
      v25 = v24;
      v26 = sub_252E36F34();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = sub_252D14A74(v26, v28);

    if (v79 == 1)
    {
      if (v80)
      {
        if (sub_252E378C4())
        {
LABEL_31:
          if (v12)
          {
            v31 = MEMORY[0x2530ADF00](0, a2);
          }

          else
          {
            if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v31 = *(a2 + 32);
          }

          v32 = v31;
LABEL_35:
          v30 = [v32 taskType];

          goto LABEL_47;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_46:
      v30 = 0;
    }

    else if (v80)
    {
      v30 = sub_252E378C4();
      if (v30)
      {
LABEL_37:
        v33 = 0;
        while (1)
        {
          if (v12)
          {
            v34 = MEMORY[0x2530ADF00](v33, a2);
          }

          else
          {
            if (v33 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v34 = *(a2 + 8 * v33 + 32);
          }

          v32 = v34;
          v35 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if ([v34 attribute] == v29)
          {
            goto LABEL_35;
          }

          ++v33;
          if (v35 == v30)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
        break;
      }
    }

    else
    {
      v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_37;
      }
    }

LABEL_47:
    v36 = [v22 resultValue];
    v37 = sub_252D14EA4(v36);

    v38 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v39 = sub_252E36F04();
    v40 = [v38 initWithIdentifier:0 displayString:v39];

    v41 = v40;
    [v41 setTaskType_];
    [v41 setAttribute_];
    [v41 setValue_];

    v42 = [v22 outcome];
    if (v42)
    {
      v43 = v42;
      v44 = sub_252E36F34();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v47 = sub_252D153E4(v44, v46);
    v49 = v48;

    if (v49)
    {
      v50 = 7;
    }

    else
    {
      v50 = v47;
    }

    v51 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v52 = v41;
    v53 = sub_252E36F04();
    v54 = [v51 initWithIdentifier:0 displayString:v53];

    v55 = v54;
    [v55 setTaskOutcome_];
    [v55 setUserTask_];

    v56 = v55;
    MEMORY[0x2530AD700]();
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v57 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();

    v17 = v78;
    if (v20 == v77)
    {
      v2 = MEMORY[0x277D84F90];
      v5 = v68;
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  swift_once();
LABEL_67:
  v66 = sub_252E36AD4();
  __swift_project_value_buffer(v66, qword_27F544CB8);
  sub_252CC4050(0xD000000000000040, 0x8000000252E80500, 0xD000000000000072, 0x8000000252E80390, 0xD000000000000029, 0x8000000252E80550, 374);
  return MEMORY[0x277D84F90];
}

void *sub_252B4BCB8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, id *a5)
{
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = 4;
  *(v10 + 24) = v11;
  v12 = sub_252B4EF24(a1);
  v13 = sub_25297D0C0(v12);

  sub_252B458C0(a2, a3, a1, a4, a5);
  v14 = (*(*v13 + 152))();

  v16 = (*(*v14 + 176))(v15);

  sub_252B458C0(a2, a3, a1, a4, a5);
  if (v17 == 105)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0A78);
    v19 = sub_252E36AC4();
    v20 = sub_252E374C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_252917000, v19, v20, "Setting requiresAuthentication to true. It will be handled by SiriKit", v21, 2u);
      MEMORY[0x2530AED00](v21, -1, -1);
    }

    [v16 _setRequiresAuthentication_];
  }

  return v16;
}

uint64_t sub_252B4BEB4(id a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_38;
    }

    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_39:
      v39 = qword_27F53F4B0;
      v3 = a1;
      if (v39 != -1)
      {
        swift_once();
      }

      v40 = sub_252E36AD4();
      __swift_project_value_buffer(v40, qword_27F544CB8);
      sub_252CC4050(0xD000000000000011, 0x8000000252E804E0, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000002BLL, 0x8000000252E80490, 289);
      sub_2529318DC();
      v30 = swift_allocError();
      *v41 = 0;
      goto LABEL_42;
    }

LABEL_4:
    v2 = a2;
    v3 = a1;
    v4 = [v3 commandOutcome];
    if (v4)
    {
      v5 = v4;
      v6 = sub_252E36F34();
      v8 = v7;

      v9 = [v3 actionResults];
      if (!v9)
      {
        a1 = sub_252B4B564(0, v2);
        v32 = 0;
        v11 = 0;
LABEL_46:
        v42 = sub_252B4BCB8(a1, v32, v11, v6, v8);

        return v42;
      }

      v10 = v9;
      sub_25293F638(0, &qword_27F540388, 0x277D47338);
      v11 = sub_252E37264();

      a1 = sub_252B4B564(v11, v2);
      if (!v11)
      {
        v32 = 0;
        goto LABEL_46;
      }

      v43 = a1;
      v44 = v6;
      v45 = v8;
      if (v11 >> 62)
      {
        a1 = sub_252E378C4();
        v12 = a1;
        if (!a1)
        {
LABEL_44:

          v32 = 0;
          v11 = 0;
LABEL_45:
          v8 = v45;
          a1 = v43;
          v6 = v44;
          goto LABEL_46;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_44;
        }
      }

      v13 = 0;
      v14 = *MEMORY[0x277D47DE8];
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          a1 = MEMORY[0x2530ADF00](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          a1 = *(v11 + 8 * v13 + 32);
        }

        v15 = a1;
        v16 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v35 = a1;
          v36 = a2;
          v37 = sub_252E378C4();
          a2 = v36;
          v38 = v37;
          a1 = v35;
          if (!v38)
          {
            goto LABEL_39;
          }

          goto LABEL_4;
        }

        v17 = [a1 outcome];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = sub_252E36F34();
        v21 = v20;

        v22 = sub_252E36F34();
        if (!v21)
        {
          goto LABEL_11;
        }

        if (v19 == v22 && v21 == v23)
        {

          goto LABEL_35;
        }

        v25 = sub_252E37DB4();

        if (v25)
        {

LABEL_35:
          v33 = sub_252E36F34();
          v11 = v34;
          v32 = v33;
          goto LABEL_45;
        }

LABEL_12:
        ++v13;
        if (v16 == v12)
        {
          goto LABEL_44;
        }
      }

      sub_252E36F34();
LABEL_11:

      goto LABEL_12;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544CB8);
    sub_252CC4050(0xD000000000000017, 0x8000000252E804C0, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000002BLL, 0x8000000252E80490, 294);
    sub_252B4DAD8();
    v30 = swift_allocError();
    *v31 = 2;
LABEL_42:

    return v30;
  }

  else
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544CB8);
    sub_252CC4050(0xD000000000000019, 0x8000000252E80470, 0xD000000000000072, 0x8000000252E80390, 0xD00000000000002BLL, 0x8000000252E80490, 284);
    sub_252B4DAD8();
    result = swift_allocError();
    *v28 = 1;
  }

  return result;
}

void *sub_252B4C40C(unint64_t a1, void *a2, uint64_t a3, char a4)
{
  v30 = a1;
  v7 = sub_252E36AB4();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v11 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v33 = v11;
  v34 = v10;
  sub_252E36A84();
  v12 = sub_252B680FC();
  v32 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities);
  v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities + 8);

  v14 = *(sub_252B680FC() + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);

  v15 = sub_252B680FC();
  v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);
  v31 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);

  LOBYTE(v56) = v13;
  LOBYTE(v48) = 1;
  LOBYTE(v37) = 1;
  LOBYTE(v70[0]) = 1;
  v17 = sub_252B4A6EC(a2, a3, a4 & 1);
  v18 = v17;
  if (v19)
  {
    LODWORD(v30) = v13;
    v20 = v17;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_2814B0A78);
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E80370);
    *&v48 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v56, *(&v56 + 1), 0xD000000000000072, 0x8000000252E80390, 0xD00000000000003BLL, 0x8000000252E80410, 162);

    *&v48 = v32;
    BYTE8(v48) = v30;
    *(&v48 + 9) = v70[0];
    HIDWORD(v48) = *(v70 + 3);
    *&v49 = v14;
    *(&v49 + 1) = v31;
    *(v50 + 8) = 0u;
    *(&v50[1] + 8) = 0u;
    *(&v50[2] + 8) = 0u;
    *&v50[0] = v16;
    *(&v50[3] + 1) = 0;
    LOBYTE(v51) = 1;
    *(&v51 + 1) = *v69;
    DWORD1(v51) = *&v69[3];
    v52 = 0uLL;
    *(&v51 + 1) = 0;
    LOWORD(v53) = 513;
    *(&v53 + 2) = v67;
    WORD3(v53) = v68;
    v54 = 0uLL;
    *(&v53 + 1) = 0;
    v55 = 1;
    GEOLocationCoordinate2DMake(&v48);
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v41 = v50[2];
    v42 = v50[3];
    v43 = v51;
    v44 = v52;
    v37 = v48;
    v38 = v49;
    v39 = v50[0];
    v40 = v50[1];
    v22 = v34;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v33, v34, "SendHomeKitCommand", 18, 2, &v37);
    sub_252927D3C(v18);
    v64 = v45;
    v65 = v46;
    v66 = v47;
    v60 = v41;
    v61 = v42;
    v62 = v43;
    v63 = v44;
    v56 = v37;
    v57 = v38;
    v58 = v39;
    v59 = v40;
    sub_2529765AC(&v56);
    (*(v35 + 8))(v22, v36);
  }

  else
  {
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_2814B09D8);
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v56 = 0xD00000000000001ALL;
    *(&v56 + 1) = 0x8000000252E80450;
    *&v48 = v18;
    v24 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5435C8, &unk_252E4D518);
    v25 = sub_252E36F94();
    MEMORY[0x2530AD570](v25);

    sub_252CC4A5C(v56, *(&v56 + 1), 1, 0xD000000000000072, 0x8000000252E80390);

    *&v48 = v32;
    BYTE8(v48) = v13;
    *(&v48 + 9) = v70[0];
    HIDWORD(v48) = *(v70 + 3);
    *&v49 = v14;
    *(&v49 + 1) = v31;
    *(v50 + 8) = 0u;
    *(&v50[1] + 8) = 0u;
    *(&v50[2] + 8) = 0u;
    *&v50[0] = v16;
    *(&v50[3] + 1) = 0;
    LOBYTE(v51) = 1;
    *(&v51 + 1) = *v69;
    DWORD1(v51) = *&v69[3];
    v52 = 0uLL;
    *(&v51 + 1) = 0;
    LOWORD(v53) = 513;
    *(&v53 + 2) = v67;
    WORD3(v53) = v68;
    v54 = 0uLL;
    *(&v53 + 1) = 0;
    v55 = 1;
    GEOLocationCoordinate2DMake(&v48);
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v41 = v50[2];
    v42 = v50[3];
    v43 = v51;
    v44 = v52;
    v37 = v48;
    v38 = v49;
    v39 = v50[0];
    v40 = v50[1];
    v26 = v34;
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v33, v34, "SendHomeKitCommand", 18, 2, &v37);
    v64 = v45;
    v65 = v46;
    v66 = v47;
    v60 = v41;
    v61 = v42;
    v62 = v43;
    v63 = v44;
    v56 = v37;
    v57 = v38;
    v58 = v39;
    v59 = v40;
    sub_2529765AC(&v56);
    v27 = sub_252B4BEB4(v18, v30);
    sub_252927D3C(v18);
    (*(v35 + 8))(v26, v36);
    return v27;
  }

  return v18;
}