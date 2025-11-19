uint64_t sub_24ADDA6DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24ADDA724()
{
  result = qword_27EFA9C80;
  if (!qword_27EFA9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9C80);
  }

  return result;
}

unint64_t sub_24ADDA7BC()
{
  result = qword_27EFA9C98;
  if (!qword_27EFA9C98)
  {
    type metadata accessor for DistanceFromUser();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9C98);
  }

  return result;
}

void sub_24ADDA83C()
{
  sub_24ADDA8C8();
  if (v0 <= 0x3F)
  {
    sub_24ADDA920();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADDA8C8()
{
  if (!qword_27EFA9CB0)
  {
    sub_24ADD83C4();
    v0 = sub_24AE08638();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA9CB0);
    }
  }
}

void sub_24ADDA920()
{
  if (!qword_27EFA9CB8)
  {
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA9CB8);
    }
  }
}

uint64_t _s6HandleV4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6HandleV4KindOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::String_optional __swiftcall DistanceFromUser.ETA.formatted()()
{
  v1 = sub_24AE097A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24AE098D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24AE098B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_24AE09928();
  v45 = *(v47 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24AE09938();
  v48 = *(v18 - 8);
  v49 = v18;
  v19 = *(v48 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = *(v0 + 8);
  v22 = *(v0 + 16);
  v43 = v21;
  v44 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24AE09968();
  v24 = 0;
  v25 = 0;
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9CC8, &qword_24AE0F8A8);
    v42 = v22;
    v26 = sub_24AE09908();
    v38 = v1;
    v27 = *(v26 - 8);
    v41 = v11;
    v28 = v7;
    v29 = *(v27 + 72);
    v30 = *(v27 + 80);
    v40 = v12;
    v31 = swift_allocObject();
    v39 = v6;
    v32 = v31;
    *(v31 + 16) = xmmword_24AE0F2F0;
    sub_24AE098E8();
    sub_24AE098F8();
    sub_24ADDB9BC(v32);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_24AE09918();
    v33 = v46;
    sub_24AE098A8();
    v34 = v38;
    (*(v2 + 104))(v5, *MEMORY[0x277D84680], v38);
    sub_24AE098C8();
    (*(v2 + 8))(v5, v34);
    v35 = v44;
    sub_24AE08578();

    (*(v28 + 8))(v10, v39);
    (*(v40 + 8))(v33, v41);
    (*(v45 + 8))(v17, v47);
    sub_24ADDC0B0(&qword_27EFA9CD0, MEMORY[0x277CC9FF0]);
    v36 = v49;
    sub_24AE09948();
    (*(v48 + 8))(v35, v36);
    v24 = v50;
    v25 = v51;
  }

  result.value._object = v25;
  result.value._countAndFlagsBits = v24;
  return result;
}

uint64_t DistanceFromUser.ETA.systemImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (*v1)
    {
      if (qword_27EFA8718 != -1)
      {
        swift_once();
      }

      v4 = &qword_27EFAA0F8;
    }

    else
    {
      if (qword_27EFA8738 != -1)
      {
        swift_once();
      }

      v4 = &qword_27EFAA198;
    }
  }

  else if (v3 == 2)
  {
    if (qword_27EFA8710 != -1)
    {
      swift_once();
    }

    v4 = &qword_27EFAA0D0;
  }

  else if (v3 == 3)
  {
    if (qword_27EFA8700 != -1)
    {
      swift_once();
    }

    v4 = &qword_27EFAA080;
  }

  else
  {
    if (qword_27EFA8720 != -1)
    {
      swift_once();
    }

    v4 = &qword_27EFAA120;
  }

  v6 = *v4;
  v5 = v4[1];
  v8 = v4[2];
  v7 = v4[3];
  v9 = *(v4 + 32);
  v10 = *(v4 + 33);
  sub_24AE08288();
  result = sub_24AE08288();
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 33) = v10;
  return result;
}

uint64_t DistanceFromUser.ETA.duration.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

_BYTE *DistanceFromUser.ETA.init(transport:duration:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t DistanceFromUser.ETA.Transport.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t static DistanceFromUser.ETA.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v6 = a1 + 8;
  v4 = *(a1 + 1);
  v5 = *(v6 + 1);
  return sub_24AE09978();
}

uint64_t DistanceFromUser.ETA.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x24C231780](*v0);

  return sub_24AE09988();
}

uint64_t DistanceFromUser.ETA.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  sub_24AE09988();
  return sub_24AE09868();
}

uint64_t sub_24ADDB314(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v6 = a1 + 8;
  v4 = *(a1 + 1);
  v5 = *(v6 + 1);
  return sub_24AE09978();
}

uint64_t sub_24ADDB338()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  sub_24AE09988();
  return sub_24AE09868();
}

uint64_t sub_24ADDB39C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x24C231780](*v0);

  return sub_24AE09988();
}

uint64_t sub_24ADDB3F0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  sub_24AE09988();
  return sub_24AE09868();
}

uint64_t sub_24ADDB450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9D10, &qword_24AE0F9E8);
    v3 = sub_24AE094C8();
    v4 = 0;
    v54 = v3 + 56;
    v47 = v1;
    v48 = a1 + 32;
    v46 = v3;
    while (1)
    {
      v49 = v4;
      v5 = (v48 + 48 * v4);
      v7 = *v5;
      v6 = v5[1];
      v8 = *(v5 + 16);
      v10 = v5[3];
      v9 = v5[4];
      v11 = v5[5];
      v12 = *(v3 + 40);
      sub_24AE09838();
      sub_24AE08288();
      sub_24AE08288();
      sub_24AE08288();
      v55 = v7;
      v57 = v6;
      sub_24AE09048();
      v53 = v8;
      MEMORY[0x24C231780](v8);
      v50 = v10;
      v52 = v9;
      sub_24AE09048();
      v58 = v11;
      v13 = *(v11 + 16);
      MEMORY[0x24C231780](v13);
      if (v13)
      {
        v14 = (v11 + 64);
        do
        {
          v15 = *(v14 - 4);
          v16 = *(v14 - 3);
          v17 = *(v14 - 16);
          v19 = *(v14 - 1);
          v18 = *v14;
          sub_24AE08288();
          sub_24AE08288();
          sub_24AE09048();
          MEMORY[0x24C231780](v17);
          sub_24AE09048();

          v14 += 5;
          --v13;
        }

        while (v13);
      }

      result = sub_24AE09868();
      v51 = ~(-1 << *(v3 + 32));
      v21 = result & v51;
      v22 = (result & v51) >> 6;
      v23 = *(v54 + 8 * v22);
      v24 = 1 << (result & v51);
      v56 = *(v3 + 48);
      if ((v24 & v23) != 0)
      {
        do
        {
          v25 = v56 + 48 * v21;
          result = *v25;
          v26 = *(v25 + 16);
          v27 = *(v25 + 24);
          v28 = *(v25 + 32);
          v29 = *(v25 + 40);
          v30 = *v25 == v55 && *(v25 + 8) == v57;
          if (v30 || (result = sub_24AE097C8(), (result & 1) != 0))
          {
            if (v26 == v53)
            {
              v31 = v27 == v50 && v28 == v52;
              if (v31 || (result = sub_24AE097C8(), (result & 1) != 0))
              {
                v32 = *(v29 + 16);
                if (v32 == *(v58 + 16))
                {
                  if (!v32 || v29 == v58)
                  {
LABEL_3:

                    v3 = v46;
                    v1 = v47;
                    goto LABEL_4;
                  }

                  v33 = 0;
                  while (1)
                  {
                    result = *(v29 + v33 + 32);
                    v34 = *(v29 + v33 + 48);
                    v35 = *(v29 + v33 + 56);
                    v36 = *(v29 + v33 + 64);
                    v37 = *(v58 + v33 + 48);
                    v38 = *(v58 + v33 + 56);
                    v39 = *(v58 + v33 + 64);
                    if (result != *(v58 + v33 + 32) || *(v29 + v33 + 40) != *(v58 + v33 + 40))
                    {
                      result = sub_24AE097C8();
                      if ((result & 1) == 0)
                      {
                        break;
                      }
                    }

                    if (v34 != v37)
                    {
                      break;
                    }

                    if (v35 != v38 || v36 != v39)
                    {
                      result = sub_24AE097C8();
                      if ((result & 1) == 0)
                      {
                        break;
                      }
                    }

                    v33 += 40;
                    if (!--v32)
                    {
                      goto LABEL_3;
                    }
                  }
                }
              }
            }
          }

          v21 = (v21 + 1) & v51;
          v22 = v21 >> 6;
          v23 = *(v54 + 8 * (v21 >> 6));
          v24 = 1 << v21;
        }

        while ((v23 & (1 << v21)) != 0);
        v3 = v46;
        v1 = v47;
        v56 = *(v46 + 48);
      }

      *(v54 + 8 * v22) = v23 | v24;
      v42 = v56 + 48 * v21;
      *v42 = v55;
      *(v42 + 8) = v57;
      *(v42 + 16) = v53;
      *(v42 + 24) = v50;
      *(v42 + 32) = v52;
      *(v42 + 40) = v58;
      v43 = *(v3 + 16);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        break;
      }

      *(v3 + 16) = v45;
LABEL_4:
      v4 = v49 + 1;
      if (v49 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_24ADDB864(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24AE094C8();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      v13 = *(v5 + 40);
      sub_24AE09838();
      MEMORY[0x24C231780](v12);
      result = sub_24AE09868();
      v15 = ~(-1 << *(v5 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v7 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v5 + 48);
      if ((v19 & v18) != 0)
      {
        while (*(v20 + v16) != v12)
        {
          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v7 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if (((1 << v16) & v18) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v17) = v19 | v18;
        *(v20 + v16) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24ADDB9BC(uint64_t a1)
{
  v2 = sub_24AE09908();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9CE8, &qword_24AE0F9D0);
    v10 = sub_24AE094C8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_24ADDC0B0(&qword_27EFA9CF0, MEMORY[0x277CC9FC8]);
      v18 = sub_24AE08EA8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_24ADDC0B0(&qword_27EFA9CF8, MEMORY[0x277CC9FC8]);
          v25 = sub_24AE08EF8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_24ADDBCE0()
{
  result = qword_27EFA9CD8;
  if (!qword_27EFA9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9CD8);
  }

  return result;
}

unint64_t sub_24ADDBD38()
{
  result = qword_27EFA9CE0;
  if (!qword_27EFA9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9CE0);
  }

  return result;
}

uint64_t _s3ETAVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && a1[24])
  {
    return (*a1 + 252);
  }

  v3 = *a1;
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s3ETAVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_24ADDBE5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_24AE094C8();
    v6 = 0;
    v28 = v5 + 56;
    v25 = v3;
    v26 = a1 + 32;
    while (1)
    {
      v7 = (v26 + 16 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v5 + 40);
      sub_24AE09838();
      sub_24AE08288();
      v29 = v8;
      MEMORY[0x24C230FB0](v8, v9);
      sub_24AE09048();

      result = sub_24AE09868();
      v12 = ~(-1 << *(v5 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v28 + 8 * v14);
      v16 = 1 << (result & v12);
      if ((v16 & v15) != 0)
      {
        v27 = v6;
        v17 = v5;
        v18 = (*(v5 + 48) + 16 * v13);
        v20 = *v18;
        v19 = v18[1];
        sub_24AE08288();
        MEMORY[0x24C230FB0](v20, v19);
        MEMORY[0x24C230FB0](v29, v9);

        v3 = v25;
        v5 = v17;
        v6 = v27;
      }

      else
      {
        *(v28 + 8 * v14) = v16 | v15;
        v21 = (*(v5 + 48) + 16 * v13);
        *v21 = v29;
        v21[1] = v9;
        v22 = *(v5 + 16);
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v24;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24ADDC0B0(unint64_t *a1, void (*a2)(uint64_t))
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

void static FindMyUserDefaults.Key<>.showDebugLocationTimestamp.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x800000024AE134C0;
  *(a1 + 16) = 1;
}

uint64_t FindMyRelativeDate.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE088E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FindMyRelativeDate.date.setter(uint64_t a1)
{
  v3 = sub_24AE088E8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FindMyRelativeDate.recencyKey.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FindMyRelativeDate() + 20));
  v4 = v3[5];
  v6 = v3[3];
  v20 = v3[4];
  v5 = v20;
  v21 = v4;
  v7 = v3[7];
  v8 = v3[5];
  v22 = v3[6];
  v23 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v18 = v3[2];
  v10 = v18;
  v19 = v9;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = v3[7];
  a1[6] = v22;
  a1[7] = v14;
  a1[4] = v5;
  a1[5] = v8;
  a1[2] = v10;
  a1[3] = v6;
  *a1 = v13;
  a1[1] = v11;
  return sub_24ADDC298(v17, &v16);
}

__n128 FindMyRelativeDate.recencyKey.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for FindMyRelativeDate() + 20));
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[3];
  v13[2] = v3[2];
  v13[3] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  sub_24ADDC350(v13);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

__n128 FindMyRelativeDate.init(date:recencyKey:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24AE088E8();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for FindMyRelativeDate() + 20);
  v8 = *(a2 + 80);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v8;
  v9 = *(a2 + 112);
  *(v7 + 96) = *(a2 + 96);
  *(v7 + 112) = v9;
  v10 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v10;
  result = *(a2 + 32);
  v12 = *(a2 + 48);
  *(v7 + 32) = result;
  *(v7 + 48) = v12;
  return result;
}

BOOL FindMyRelativeDate.isFresh(comparedTo:)()
{
  sub_24AE08878();
  v2 = v1;
  v3 = (v0 + *(type metadata accessor for FindMyRelativeDate() + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_24AE09958();
  sub_24AE09958();
  return v2 < v7 / 1.0e18 + v6;
}

BOOL FindMyRelativeDate.isNew(comparedTo:)()
{
  sub_24AE08878();
  v2 = v1;
  v3 = v0 + *(type metadata accessor for FindMyRelativeDate() + 20);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = sub_24AE09958();
  sub_24AE09958();
  return v2 < v7 / 1.0e18 + v6;
}

BOOL FindMyRelativeDate.isOld(comparedTo:)()
{
  sub_24AE08878();
  v2 = v1;
  v3 = v0 + *(type metadata accessor for FindMyRelativeDate() + 20);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = sub_24AE09958();
  sub_24AE09958();
  return v7 / 1.0e18 + v6 < v2;
}

double FindMyRelativeDate.forceNowRecencyKey()@<D0>(uint64_t a1@<X8>)
{
  sub_24ADDC708(v1, a1);
  v3 = (a1 + *(type metadata accessor for FindMyRelativeDate() + 20));
  v4 = v3[5];
  v5 = v3[3];
  v24 = v3[4];
  v25 = v4;
  v6 = v3[5];
  v7 = v3[7];
  v26 = v3[6];
  v27 = v7;
  v8 = v3[1];
  v9 = v3[3];
  v22 = v3[2];
  v23 = v9;
  v10 = v3[1];
  v21[0] = *v3;
  v21[1] = v10;
  v40 = v24;
  v41 = v6;
  v11 = v3[7];
  v42 = v26;
  v43 = v11;
  v36 = v21[0];
  v37 = v8;
  v38 = v22;
  v39 = v5;
  sub_24ADDC298(v21, v29);
  FindMyRelativeDate.RecencyKey.forceNowLabels()(v29);
  v28[4] = v40;
  v28[5] = v41;
  v28[6] = v42;
  v28[7] = v43;
  v28[0] = v36;
  v28[1] = v37;
  v28[2] = v38;
  v28[3] = v39;
  sub_24ADDC350(v28);
  v12 = v3[5];
  v40 = v3[4];
  v41 = v12;
  v13 = v3[7];
  v42 = v3[6];
  v43 = v13;
  v14 = v3[1];
  v36 = *v3;
  v37 = v14;
  v15 = v3[3];
  v38 = v3[2];
  v39 = v15;
  sub_24ADDC350(&v36);
  v16 = v33;
  v3[4] = v32;
  v3[5] = v16;
  v17 = v35;
  v3[6] = v34;
  v3[7] = v17;
  v18 = v29[1];
  *v3 = v29[0];
  v3[1] = v18;
  result = *&v30;
  v20 = v31;
  v3[2] = v30;
  v3[3] = v20;
  return result;
}

uint64_t sub_24ADDC708(uint64_t a1, uint64_t a2)
{
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  (*(*(MyRelativeDate - 8) + 16))(a2, a1, MyRelativeDate);
  return a2;
}

__n128 FindMyRelativeDate.RecencyKey.forceNowLabels()@<Q0>(uint64_t a1@<X8>)
{
  v63 = *(v1 + 16);
  v64 = *v1;
  v61 = *(v1 + 40);
  v62 = *(v1 + 32);
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v3 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v6 = objc_opt_self();
    sub_24AE08288();
    v5 = [v6 mainBundle];
    v4 = 0;
  }

  v7 = v4;
  v8 = sub_24AE08F88();
  v9 = sub_24AE08F88();
  v10 = [v5 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_24AE08FB8();
  v59 = v12;
  v60 = v11;

  v13 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v14 = v13;
    v15 = v14;
  }

  else
  {
    v16 = objc_opt_self();
    sub_24AE08288();
    v15 = [v16 mainBundle];
    v14 = 0;
  }

  v17 = v14;
  v18 = sub_24AE08F88();
  v19 = sub_24AE08F88();
  v20 = [v15 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_24AE08FB8();
  v57 = v22;
  v58 = v21;

  v23 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v24 = v23;
    v25 = v24;
  }

  else
  {
    v26 = objc_opt_self();
    sub_24AE08288();
    v25 = [v26 mainBundle];
    v24 = 0;
  }

  v27 = v24;
  v28 = sub_24AE08F88();
  v29 = sub_24AE08F88();
  v30 = [v25 localizedStringForKey:v28 value:0 table:v29];

  v56 = sub_24AE08FB8();
  v32 = v31;

  v33 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v34 = v33;
    v35 = v34;
  }

  else
  {
    v36 = objc_opt_self();
    sub_24AE08288();
    v35 = [v36 mainBundle];
    v34 = 0;
  }

  v37 = v34;
  v38 = sub_24AE08F88();
  v39 = sub_24AE08F88();
  v40 = [v35 localizedStringForKey:v38 value:0 table:v39];

  v41 = sub_24AE08FB8();
  v43 = v42;

  v44 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v45 = v44;
    v46 = v45;
  }

  else
  {
    v47 = objc_opt_self();
    sub_24AE08288();
    v46 = [v47 mainBundle];
    v45 = 0;
  }

  v48 = v45;
  v49 = sub_24AE08F88();
  v50 = sub_24AE08F88();
  v51 = [v46 localizedStringForKey:v49 value:0 table:v50];

  v52 = sub_24AE08FB8();
  v54 = v53;

  result = v64;
  *a1 = v64;
  *(a1 + 16) = v63;
  *(a1 + 32) = v62;
  *(a1 + 40) = v61;
  *(a1 + 48) = v60;
  *(a1 + 56) = v59;
  *(a1 + 64) = v58;
  *(a1 + 72) = v57;
  *(a1 + 80) = v56;
  *(a1 + 88) = v32;
  *(a1 + 96) = v41;
  *(a1 + 104) = v43;
  *(a1 + 112) = v52;
  *(a1 + 120) = v54;
  return result;
}

uint64_t FindMyRelativeDate.forcePastDatesOnly(now:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24AE088E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ADDC708(v2, a2);
  if (sub_24AE088A8())
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  (*(v6 + 16))(v9, v10, v5);
  return (*(v6 + 40))(a2, v9, v5);
}

uint64_t FindMyRelativeDate.RecencyKey.showRecentKey(for:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (qword_27EFA8620 != -1)
  {
    swift_once();
  }

  if (byte_27EFA8CF0 == 1)
  {
    v3 = qword_27EFA8CE8;
    v4 = sub_24AE08F88();
    LOBYTE(v3) = [v3 BOOLForKey_];

    if (v3)
    {
      return 0;
    }
  }

  else
  {
  }

  return sub_24AE09968();
}

uint64_t FindMyRelativeDate.RecencyKey.localizedString(for:)(uint64_t a1)
{
  v3 = sub_24AE08798();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v12 = v1[6];
  v11 = v1[7];
  v13 = v1[8];
  v14 = v1[9];
  v15 = v1[11];
  v30 = v1[10];
  v31 = v13;
  v29 = v15;
  v16 = v1[12];
  v25[1] = v1[13];
  v26 = v16;
  v17 = v1[14];
  v27 = v1[15];
  v28 = v17;
  (*(v4 + 16))(v25 - v9, a1, v3);
  sub_24AE08778();
  sub_24ADDF8F0(&qword_27EFA9D98, MEMORY[0x277CC9188]);
  v18 = sub_24AE08EF8();
  v19 = *(v4 + 8);
  v19(v8, v3);
  if (v18)
  {
    v19(v10, v3);
  }

  else
  {
    sub_24AE08748();
    v20 = sub_24AE08EF8();
    v19(v8, v3);
    if (v20)
    {
      v19(v10, v3);
      v12 = v31;
    }

    else
    {
      sub_24AE08788();
      v21 = sub_24AE08EF8();
      v19(v8, v3);
      if (v21)
      {
        v19(v10, v3);
        v12 = v30;
      }

      else
      {
        sub_24AE08768();
        v22 = sub_24AE08EF8();
        v19(v8, v3);
        if (v22)
        {
          v19(v10, v3);
          v12 = v26;
        }

        else
        {
          sub_24AE08758();
          v23 = sub_24AE08EF8();
          v19(v8, v3);
          v19(v10, v3);
          if (v23)
          {
            v12 = v28;
          }
        }
      }
    }
  }

  sub_24AE08288();
  return v12;
}

void static FindMyRelativeDate.RecencyKey.now(recencyDuration:isNewDuration:isOldDuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v8 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v9 = v8;
    v10 = v9;
  }

  else
  {
    v11 = objc_opt_self();
    sub_24AE08288();
    v10 = [v11 mainBundle];
    v9 = 0;
  }

  v12 = v9;
  v13 = sub_24AE08F88();
  v14 = sub_24AE08F88();
  v15 = [v10 localizedStringForKey:v13 value:0 table:v14];

  v16 = sub_24AE08FB8();
  v64 = v17;
  v65 = v16;

  v18 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v19 = v18;
    v20 = v19;
  }

  else
  {
    v21 = objc_opt_self();
    sub_24AE08288();
    v20 = [v21 mainBundle];
    v19 = 0;
  }

  v22 = v19;
  v23 = sub_24AE08F88();
  v24 = sub_24AE08F88();
  v25 = [v20 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_24AE08FB8();
  v62 = v27;
  v63 = v26;

  v28 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v29 = v28;
    v30 = v29;
  }

  else
  {
    v31 = objc_opt_self();
    sub_24AE08288();
    v30 = [v31 mainBundle];
    v29 = 0;
  }

  v32 = v29;
  v33 = sub_24AE08F88();
  v34 = sub_24AE08F88();
  v35 = [v30 localizedStringForKey:v33 value:0 table:v34];

  v36 = sub_24AE08FB8();
  v60 = v37;
  v61 = v36;

  v38 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v39 = v38;
    v40 = v39;
  }

  else
  {
    v41 = objc_opt_self();
    sub_24AE08288();
    v40 = [v41 mainBundle];
    v39 = 0;
  }

  v42 = v39;
  v43 = sub_24AE08F88();
  v44 = sub_24AE08F88();
  v45 = [v40 0x278FFEE54];

  v46 = sub_24AE08FB8();
  v48 = v47;

  v49 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v50 = v49;
    v51 = v50;
  }

  else
  {
    v52 = objc_opt_self();
    sub_24AE08288();
    v51 = [v52 mainBundle];
    v50 = 0;
  }

  v53 = v50;
  v54 = sub_24AE08F88();
  v55 = sub_24AE08F88();
  v56 = [v51 0x278FFEE54];

  v57 = sub_24AE08FB8();
  v59 = v58;

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  a7[6] = v65;
  a7[7] = v64;
  a7[8] = v63;
  a7[9] = v62;
  a7[10] = v61;
  a7[11] = v60;
  a7[12] = v46;
  a7[13] = v48;
  a7[14] = v57;
  a7[15] = v59;
}

unint64_t sub_24ADDD720()
{
  v1 = *v0;
  v2 = 0x4479636E65636572;
  v3 = 0xD000000000000018;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6F6C61646E617473;
  if (v1 != 4)
  {
    v4 = 0x6D6574497473696CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x727544646C4F7369;
  if (v1 != 2)
  {
    v5 = 0x4C6E776F6E6B6E75;
  }

  if (*v0)
  {
    v2 = 0x72754477654E7369;
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

uint64_t sub_24ADDD86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ADDFB2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ADDD894(uint64_t a1)
{
  v2 = sub_24ADDF69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADDD8D0(uint64_t a1)
{
  v2 = sub_24ADDF69C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FindMyRelativeDate.RecencyKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9DA0, &qword_24AE0FA00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v25 = v1[3];
  v26 = v10;
  v11 = v1[4];
  v23 = v1[5];
  v24 = v11;
  v12 = v1[6];
  v22[9] = v1[7];
  v22[10] = v12;
  v13 = v1[8];
  v22[7] = v1[9];
  v22[8] = v13;
  v14 = v1[11];
  v22[5] = v1[10];
  v22[6] = v14;
  v15 = v1[13];
  v22[3] = v1[12];
  v22[4] = v15;
  v16 = v1[15];
  v22[1] = v1[14];
  v22[2] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADDF69C();
  sub_24AE09888();
  v28 = v9;
  v29 = v8;
  v30 = 0;
  v18 = v27;
  sub_24AE09768();
  if (v18)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = v23;
  v19 = v24;
  v28 = v26;
  v29 = v25;
  v30 = 1;
  sub_24AE09768();
  v28 = v19;
  v29 = v20;
  v30 = 2;
  sub_24AE09768();
  LOBYTE(v28) = 3;
  sub_24AE09748();
  LOBYTE(v28) = 4;
  sub_24AE09748();
  LOBYTE(v28) = 5;
  sub_24AE09748();
  LOBYTE(v28) = 6;
  sub_24AE09748();
  LOBYTE(v28) = 7;
  sub_24AE09748();
  return (*(v4 + 8))(v7, v3);
}

uint64_t FindMyRelativeDate.RecencyKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[13];
  v17 = v0[12];
  v11 = v0[14];
  v12 = v0[15];
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t FindMyRelativeDate.RecencyKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v14 = v0[9];
  v15 = v0[11];
  v10 = v0[12];
  v16 = v0[10];
  v17 = v0[13];
  v11 = v0[14];
  v12 = v0[15];
  sub_24AE09838();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t FindMyRelativeDate.RecencyKey.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9DB0, &qword_24AE0FA08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_24ADDF69C();
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v56);
  }

  v12 = v6;
  LOBYTE(v57[0]) = 0;
  v13 = v5;
  sub_24AE096E8();
  v14 = v64;
  v15 = v65;
  LOBYTE(v57[0]) = 1;
  sub_24AE096E8();
  v55 = v14;
  v16 = v64;
  v17 = v65;
  LOBYTE(v57[0]) = 2;
  sub_24AE096E8();
  *&v54 = v16;
  *(&v54 + 1) = v17;
  v18 = v64;
  v19 = v65;
  LOBYTE(v64) = 3;
  v50 = sub_24AE096C8();
  v51 = v19;
  v53 = v20;
  LOBYTE(v64) = 4;
  v21 = sub_24AE096C8();
  v52 = v22;
  v23 = v21;
  LOBYTE(v64) = 5;
  v49 = 0;
  v46 = sub_24AE096C8();
  v47 = v23;
  v48 = v18;
  v25 = v24;
  LOBYTE(v64) = 6;
  v26 = sub_24AE096C8();
  v28 = v27;
  v45 = v26;
  v79 = 7;
  v44 = sub_24AE096C8();
  v49 = 0;
  v30 = v29;
  (*(v12 + 8))(v9, v13);
  *&v57[0] = v55;
  *(&v57[0] + 1) = v15;
  v31 = v28;
  v43 = v28;
  v33 = v53;
  v32 = v54;
  v57[1] = v54;
  *&v58 = v48;
  *(&v58 + 1) = v51;
  *&v59 = v50;
  *(&v59 + 1) = v53;
  v34 = v52;
  *&v60 = v47;
  *(&v60 + 1) = v52;
  *&v61 = v46;
  *(&v61 + 1) = v25;
  v35 = v44;
  *&v62 = v45;
  *(&v62 + 1) = v31;
  *&v63 = v44;
  *(&v63 + 1) = v30;
  v36 = v57[0];
  v37 = v54;
  v38 = v59;
  a2[2] = v58;
  a2[3] = v38;
  *a2 = v36;
  a2[1] = v37;
  v39 = v60;
  v40 = v61;
  v41 = v63;
  a2[6] = v62;
  a2[7] = v41;
  a2[4] = v39;
  a2[5] = v40;
  sub_24ADDC298(v57, &v64);
  __swift_destroy_boxed_opaque_existential_0(v56);
  v64 = v55;
  v65 = v15;
  v66 = __PAIR128__(*(&v54 + 1), v32);
  v67 = v48;
  v68 = v51;
  v69 = v50;
  v70 = v33;
  v71 = v47;
  v72 = v34;
  v73 = v46;
  v74 = v25;
  v75 = v45;
  v76 = v43;
  v77 = v35;
  v78 = v30;
  return sub_24ADDC350(&v64);
}

uint64_t sub_24ADDE2B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v14 = v0[11];
  v15 = v0[10];
  v16 = v0[13];
  v17 = v0[12];
  v11 = v0[14];
  v12 = v0[15];
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t sub_24ADDE39C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v14 = v0[9];
  v15 = v0[11];
  v10 = v0[12];
  v16 = v0[10];
  v17 = v0[13];
  v11 = v0[14];
  v12 = v0[15];
  sub_24AE09838();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t FindMyRelativeDate.hash(into:)()
{
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
  sub_24AE08EB8();
  v1 = (v0 + *(type metadata accessor for FindMyRelativeDate() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v14 = v1[11];
  v15 = v1[13];
  v18 = v1[14];
  v16 = v1[12];
  v17 = v1[15];
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t FindMyRelativeDate.hashValue.getter()
{
  sub_24AE09838();
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
  sub_24AE08EB8();
  v1 = (v0 + *(type metadata accessor for FindMyRelativeDate() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[11];
  v15 = v1[13];
  v16 = v1[12];
  v17 = v1[15];
  v18 = v1[14];
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

uint64_t sub_24ADDE740(uint64_t a1, uint64_t a2)
{
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
  sub_24AE08EB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v13 = v4[8];
  v14 = v4[9];
  v15 = v4[10];
  v17 = v4[11];
  v18 = v4[13];
  v21 = v4[14];
  v19 = v4[12];
  v20 = v4[15];
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();

  return sub_24AE09048();
}

uint64_t sub_24ADDE88C(uint64_t a1, uint64_t a2)
{
  sub_24AE09838();
  sub_24AE088E8();
  sub_24ADDF8F0(&qword_27EFA9DB8, MEMORY[0x277CC9578]);
  sub_24AE08EB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v13 = v4[8];
  v14 = v4[9];
  v15 = v4[10];
  v16 = v4[11];
  v18 = v4[13];
  v19 = v4[12];
  v20 = v4[15];
  v21 = v4[14];
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09988();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09048();
  return sub_24AE09868();
}

void static FindMyRelativeDate.RecencyKey.live(recencyDuration:isNewDuration:isOldDuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v8 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v9 = v8;
    v10 = v9;
  }

  else
  {
    v11 = objc_opt_self();
    sub_24AE08288();
    v10 = [v11 mainBundle];
    v9 = 0;
  }

  v12 = v9;
  v13 = sub_24AE08F88();
  v14 = sub_24AE08F88();
  v15 = [v10 localizedStringForKey:v13 value:0 table:v14];

  v16 = sub_24AE08FB8();
  v64 = v17;
  v65 = v16;

  v18 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v19 = v18;
    v20 = v19;
  }

  else
  {
    v21 = objc_opt_self();
    sub_24AE08288();
    v20 = [v21 mainBundle];
    v19 = 0;
  }

  v22 = v19;
  v23 = sub_24AE08F88();
  v24 = sub_24AE08F88();
  v25 = [v20 localizedStringForKey:v23 value:0 table:v24];

  v26 = sub_24AE08FB8();
  v62 = v27;
  v63 = v26;

  v28 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v29 = v28;
    v30 = v29;
  }

  else
  {
    v31 = objc_opt_self();
    sub_24AE08288();
    v30 = [v31 mainBundle];
    v29 = 0;
  }

  v32 = v29;
  v33 = sub_24AE08F88();
  v34 = sub_24AE08F88();
  v35 = [v30 localizedStringForKey:v33 value:0 table:v34];

  v36 = sub_24AE08FB8();
  v60 = v37;
  v61 = v36;

  v38 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v39 = v38;
    v40 = v39;
  }

  else
  {
    v41 = objc_opt_self();
    sub_24AE08288();
    v40 = [v41 mainBundle];
    v39 = 0;
  }

  v42 = v39;
  v43 = sub_24AE08F88();
  v44 = sub_24AE08F88();
  v45 = [v40 0x278FFEE54];

  v46 = sub_24AE08FB8();
  v48 = v47;

  v49 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v50 = v49;
    v51 = v50;
  }

  else
  {
    v52 = objc_opt_self();
    sub_24AE08288();
    v51 = [v52 mainBundle];
    v50 = 0;
  }

  v53 = v50;
  v54 = sub_24AE08F88();
  v55 = sub_24AE08F88();
  v56 = [v51 0x278FFEE54];

  v57 = sub_24AE08FB8();
  v59 = v58;

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  a7[6] = v65;
  a7[7] = v64;
  a7[8] = v63;
  a7[9] = v62;
  a7[10] = v61;
  a7[11] = v60;
  a7[12] = v46;
  a7[13] = v48;
  a7[14] = v57;
  a7[15] = v59;
}

double sub_24ADDEF04()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v56 = v9;
  v57 = v8;

  v10 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v11 = v10;
    v12 = v11;
  }

  else
  {
    v13 = objc_opt_self();
    sub_24AE08288();
    v12 = [v13 mainBundle];
    v11 = 0;
  }

  v14 = v11;
  v15 = sub_24AE08F88();
  v16 = sub_24AE08F88();
  v17 = [v12 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_24AE08FB8();
  v54 = v19;
  v55 = v18;

  v20 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v21 = v20;
    v22 = v21;
  }

  else
  {
    v23 = objc_opt_self();
    sub_24AE08288();
    v22 = [v23 mainBundle];
    v21 = 0;
  }

  v24 = v21;
  v25 = sub_24AE08F88();
  v26 = sub_24AE08F88();
  v27 = [v22 localizedStringForKey:v25 value:0 table:v26];

  v28 = sub_24AE08FB8();
  v30 = v29;

  v31 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v32 = v31;
    v33 = v32;
  }

  else
  {
    v34 = objc_opt_self();
    sub_24AE08288();
    v33 = [v34 mainBundle];
    v32 = 0;
  }

  v35 = v32;
  v36 = sub_24AE08F88();
  v37 = sub_24AE08F88();
  v38 = [v33 localizedStringForKey:v36 value:0 table:v37];

  v39 = sub_24AE08FB8();
  v41 = v40;

  v42 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v43 = v42;
    v44 = v43;
  }

  else
  {
    v45 = objc_opt_self();
    sub_24AE08288();
    v44 = [v45 mainBundle];
    v43 = 0;
  }

  v46 = v43;
  v47 = sub_24AE08F88();
  v48 = sub_24AE08F88();
  v49 = [v44 localizedStringForKey:v47 value:0 table:v48];

  v50 = sub_24AE08FB8();
  v52 = v51;

  result = -3.3178167e-146;
  xmmword_27EFA9D18 = xmmword_24AE0F9F0;
  unk_27EFA9D28 = 0u;
  xmmword_27EFA9D38 = 0u;
  qword_27EFA9D48 = v57;
  unk_27EFA9D50 = v56;
  *&xmmword_27EFA9D58 = v55;
  *(&xmmword_27EFA9D58 + 1) = v54;
  qword_27EFA9D68 = v28;
  unk_27EFA9D70 = v30;
  *&xmmword_27EFA9D78 = v39;
  *(&xmmword_27EFA9D78 + 1) = v41;
  qword_27EFA9D88 = v50;
  unk_27EFA9D90 = v52;
  return result;
}

uint64_t static FindMyRelativeDate.RecencyKey.alwaysNow.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27EFA8680 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_27EFA9D58;
  v2 = *&qword_27EFA9D68;
  v11[4] = xmmword_27EFA9D58;
  v11[5] = *&qword_27EFA9D68;
  v3 = xmmword_27EFA9D78;
  v4 = *&qword_27EFA9D88;
  v11[6] = xmmword_27EFA9D78;
  v11[7] = *&qword_27EFA9D88;
  v5 = unk_27EFA9D28;
  v11[0] = xmmword_27EFA9D18;
  v11[1] = unk_27EFA9D28;
  v6 = xmmword_27EFA9D38;
  v7 = *&qword_27EFA9D48;
  v11[2] = xmmword_27EFA9D38;
  v11[3] = *&qword_27EFA9D48;
  *a1 = xmmword_27EFA9D18;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_24ADDC298(v11, &v10);
}

uint64_t _s10FindMyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v33 = a1[7];
  v34 = a1[6];
  v32 = a1[8];
  v31 = a1[9];
  v27 = a1[11];
  v28 = a1[10];
  v23 = a1[13];
  v24 = a1[12];
  v19 = a1[15];
  v20 = a1[14];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  v14 = a2[7];
  v29 = a2[9];
  v30 = a2[8];
  v25 = a2[11];
  v26 = a2[10];
  v21 = a2[13];
  v22 = a2[12];
  v17 = a2[15];
  v18 = a2[14];
  if ((sub_24AE09978() & 1) == 0 || (sub_24AE09978() & 1) == 0 || (sub_24AE09978() & 1) == 0 || (v34 != v15 || v33 != v14) && (sub_24AE097C8() & 1) == 0 || (v32 != v30 || v31 != v29) && (sub_24AE097C8() & 1) == 0 || (v28 != v26 || v27 != v25) && (sub_24AE097C8() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  if (v20 == v18 && v19 == v17)
  {
    return 1;
  }

  return sub_24AE097C8();
}

unint64_t sub_24ADDF69C()
{
  result = qword_27EFA9DA8;
  if (!qword_27EFA9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DA8);
  }

  return result;
}

uint64_t _s10FindMyCore0aB12RelativeDateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_24AE088C8())
  {
    MyRelativeDate = type metadata accessor for FindMyRelativeDate();
    v5 = (a1 + *(MyRelativeDate + 20));
    v6 = v5[5];
    v7 = v5[3];
    v44 = v5[4];
    v45 = v6;
    v8 = v5[5];
    v9 = v5[7];
    v46 = v5[6];
    v47 = v9;
    v10 = v5[1];
    v11 = v5[3];
    v42 = v5[2];
    v43 = v11;
    v12 = v5[1];
    v41[0] = *v5;
    v41[1] = v12;
    v37 = v44;
    v38 = v8;
    v13 = v5[7];
    v39 = v46;
    v40 = v13;
    v35 = v42;
    v36 = v7;
    v33 = v41[0];
    v34 = v10;
    v14 = (a2 + *(MyRelativeDate + 20));
    v15 = v14[5];
    v16 = v14[7];
    v53 = v14[6];
    v54 = v16;
    v17 = v14[5];
    v18 = v14[3];
    v51 = v14[4];
    v52 = v17;
    v19 = v14[1];
    v20 = v14[3];
    v49 = v14[2];
    v50 = v20;
    v21 = v14[1];
    v48[0] = *v14;
    v48[1] = v21;
    v29 = v51;
    v30 = v15;
    v22 = v14[7];
    v31 = v53;
    v32 = v22;
    v25 = v48[0];
    v26 = v19;
    v27 = v49;
    v28 = v18;
    sub_24ADDC298(v41, v56);
    sub_24ADDC298(v48, v56);
    MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 = _s10FindMyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0(&v33, &v25);
    v55[4] = v29;
    v55[5] = v30;
    v55[6] = v31;
    v55[7] = v32;
    v55[0] = v25;
    v55[1] = v26;
    v55[2] = v27;
    v55[3] = v28;
    sub_24ADDC350(v55);
    v56[4] = v37;
    v56[5] = v38;
    v56[6] = v39;
    v56[7] = v40;
    v56[0] = v33;
    v56[1] = v34;
    v56[2] = v35;
    v56[3] = v36;
    sub_24ADDC350(v56);
  }

  else
  {
    MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 = 0;
  }

  return MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 & 1;
}

unint64_t sub_24ADDF854()
{
  result = qword_27EFA9DC0;
  if (!qword_27EFA9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DC0);
  }

  return result;
}

uint64_t sub_24ADDF8F0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_24ADDF95C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ADDF9A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24ADDFA28()
{
  result = qword_27EFA9DD0;
  if (!qword_27EFA9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DD0);
  }

  return result;
}

unint64_t sub_24ADDFA80()
{
  result = qword_27EFA9DD8;
  if (!qword_27EFA9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DD8);
  }

  return result;
}

unint64_t sub_24ADDFAD8()
{
  result = qword_27EFA9DE0;
  if (!qword_27EFA9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DE0);
  }

  return result;
}

uint64_t sub_24ADDFB2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4479636E65636572 && a2 == 0xEF6E6F6974617275;
  if (v4 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72754477654E7369 && a2 == 0xED00006E6F697461 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544646C4F7369 && a2 == 0xED00006E6F697461 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C6E776F6E6B6E75 && a2 == 0xEC0000006C656261 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6C61646E617473 && a2 == 0xEF6C6562614C656ELL || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6574497473696CLL && a2 == 0xED00006C6562614CLL || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024AE136F0 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024AE13710 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24AE097C8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

FindMyCore::LiteContact __swiftcall LiteContact.init(_:)(CNContact a1)
{
  v3 = v1;
  v4 = [(objc_class *)a1.super.isa identifier];
  v5 = sub_24AE08FB8();
  v7 = v6;

  v3->super.isa = v5;
  v3[1].super.isa = v7;
  v3[2].super.isa = a1.super.isa;
  result.rawValue.super.isa = v10;
  result.identifier._object = v9;
  result.identifier._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_24ADDFE60()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "LiteContact(");
  MEMORY[0x24C230FB0](v1, v2);
  MEMORY[0x24C230FB0](41, 0xE100000000000000);
  return v4[0];
}

uint64_t static LiteContact.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  sub_24ADDFF38();
  return sub_24AE09418() & 1;
}

unint64_t sub_24ADDFF38()
{
  result = qword_27EFA9DE8;
  if (!qword_27EFA9DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFA9DE8);
  }

  return result;
}

uint64_t LiteContact.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE09048();
  return sub_24AE09428();
}

uint64_t LiteContact.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE0018()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE0078()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE09048();
  return sub_24AE09428();
}

uint64_t sub_24ADE00AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09428();
  return sub_24AE09868();
}

unint64_t sub_24ADE010C()
{
  result = qword_27EFA9DF0;
  if (!qword_27EFA9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DF0);
  }

  return result;
}

uint64_t sub_24ADE0160(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24AE097C8() & 1) == 0)
  {
    return 0;
  }

  sub_24ADDFF38();
  return sub_24AE09418() & 1;
}

uint64_t Location.distance(from:)(void *a1)
{
  [*v1 distanceFromLocation_];
  v2 = [objc_opt_self() meters];
  sub_24ADD51D0(0, &qword_27EFA9C38, 0x277CCAE20);

  return sub_24AE085E8();
}

void Location.mutableCoordinate.setter(double a1, double a2)
{
  v3 = v2;
  v30 = a2;
  v5 = sub_24AE088E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  [*v3 altitude];
  v12 = v11;
  [v10 horizontalAccuracy];
  v14 = v13;
  [v10 verticalAccuracy];
  v16 = v15;
  [v10 course];
  v18 = v17;
  [v10 courseAccuracy];
  v20 = v19;
  [v10 speed];
  v22 = v21;
  [v10 speedAccuracy];
  v24 = v23;
  v25 = [v10 timestamp];
  sub_24AE088D8();

  v26 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v27 = sub_24AE08898();
  v28 = [v26 initWithCoordinate:v27 altitude:a1 horizontalAccuracy:v30 verticalAccuracy:v12 course:v14 courseAccuracy:v16 speed:v18 speedAccuracy:v20 timestamp:{v22, v24}];

  (*(v6 + 8))(v9, v5);
  *v3 = v28;
}

void (*Location.mutableCoordinate.modify(void *a1))(uint64_t a1)
{
  a1[2] = v1;
  [*v1 coordinate];
  *a1 = v3;
  a1[1] = v4;
  return sub_24ADE0558;
}

void Location.mutableHorizontalAccuracy.setter(double a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_24AE088E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  [*v2 coordinate];
  v10 = v9;
  v12 = v11;
  [v8 altitude];
  v14 = v13;
  [v8 verticalAccuracy];
  v16 = v15;
  [v8 course];
  v18 = v17;
  [v8 courseAccuracy];
  v20 = v19;
  [v8 speed];
  v22 = v21;
  [v8 speedAccuracy];
  v24 = v23;
  v25 = [v8 timestamp];
  sub_24AE088D8();

  v26 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v27 = sub_24AE08898();
  v28 = [v26 initWithCoordinate:v27 altitude:v10 horizontalAccuracy:v12 verticalAccuracy:v14 course:v30 courseAccuracy:v16 speed:v18 speedAccuracy:v20 timestamp:{v22, v24}];

  (*(v4 + 8))(v7, v3);
  *v2 = v28;
}

void (*Location.mutableHorizontalAccuracy.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [*v1 horizontalAccuracy];
  *a1 = v3;
  return sub_24ADE07E4;
}

void sub_24ADE0810()
{
  v1 = [*v0 timestamp];
  sub_24AE088D8();
}

void sub_24ADE0870(id *a1)
{
  v1 = [*a1 timestamp];
  sub_24AE088D8();
}

void sub_24ADE08D0(uint64_t a1)
{
  v2 = sub_24AE088E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  Location.mutableTimestamp.setter(v5);
}

void Location.mutableTimestamp.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24AE088E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  [*v2 coordinate];
  v32 = v10;
  v12 = v11;
  [v9 altitude];
  v14 = v13;
  [v9 horizontalAccuracy];
  v16 = v15;
  [v9 verticalAccuracy];
  v18 = v17;
  [v9 course];
  v20 = v19;
  [v9 courseAccuracy];
  v22 = v21;
  [v9 speed];
  v24 = v23;
  [v9 speedAccuracy];
  v26 = v25;
  (*(v5 + 16))(v8, a1, v4);
  v27 = objc_allocWithZone(MEMORY[0x277CE41F8]);
  v28 = sub_24AE08898();
  v29 = [v27 initWithCoordinate:v28 altitude:v32 horizontalAccuracy:v12 verticalAccuracy:v14 course:v16 courseAccuracy:v18 speed:v20 speedAccuracy:v22 timestamp:{v24, v26}];

  v30 = *(v5 + 8);
  v30(a1, v4);
  v30(v8, v4);

  *v2 = v29;
}

void (*Location.mutableTimestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_24AE088E8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = [*v1 timestamp];
  sub_24AE088D8();

  return sub_24ADE0CF8;
}

void sub_24ADE0CF8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    Location.mutableTimestamp.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    Location.mutableTimestamp.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static Location.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24ADD51D0(0, &qword_27EFA9DE8, 0x277D82BB8);
  return sub_24AE09418() & 1;
}

uint64_t Location.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE0E68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_24ADD51D0(0, &qword_27EFA9DE8, 0x277D82BB8);
  return sub_24AE09418() & 1;
}

uint64_t sub_24ADE0EBC()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t sub_24ADE0F24()
{
  v1 = *v0;
  sub_24AE09838();
  sub_24AE09428();
  return sub_24AE09868();
}

uint64_t Location.debugDescription.getter()
{
  v1 = sub_24AE088E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_24AE094E8();
  MEMORY[0x24C230FB0](0x6E6F697461636F4CLL, 0xEA00000000002228);
  [v6 coordinate];
  sub_24AE09308();
  MEMORY[0x24C230FB0](2239522, 0xE300000000000000);
  [v6 coordinate];
  sub_24AE09308();
  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  [v6 horizontalAccuracy];
  sub_24AE09308();
  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  v7 = [v6 timestamp];
  sub_24AE088D8();

  sub_24ADE1170();
  v8 = sub_24AE09788();
  MEMORY[0x24C230FB0](v8);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C230FB0](10530, 0xE200000000000000);
  return v10[0];
}

unint64_t sub_24ADE1170()
{
  result = qword_27EFA9DF8;
  if (!qword_27EFA9DF8)
  {
    sub_24AE088E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9DF8);
  }

  return result;
}

uint64_t GeoHashable.coarseGeoHash.getter(uint64_t a1, uint64_t a2)
{
  v4 = round((*(a2 + 8))() * 100.0) / 100.0;
  v5 = round((*(a2 + 16))(a1, a2) * 100.0) / 100.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D839F8];
  v8 = MEMORY[0x277D83A80];
  *(v6 + 16) = xmmword_24AE0F2F0;
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v5;

  return MEMORY[0x28211E920](0x2B255F66322E2B25, 0xEB0000000066322ELL, v6);
}

uint64_t GeoHashable.mediumGeoHash.getter(uint64_t a1, uint64_t a2)
{
  v4 = round((*(a2 + 8))() * 1000.0) / 1000.0;
  v5 = round((*(a2 + 16))(a1, a2) * 1000.0) / 1000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D839F8];
  *(v6 + 16) = xmmword_24AE0FDC0;
  v8 = MEMORY[0x277D83A80];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v5;
  v9 = (*(a2 + 24))(a1, a2);
  if (v9 >= 5.0)
  {
    if (v9 >= 10.0)
    {
      v10 = 25;
      v11 = 50;
      v12 = 100;
      v13 = 1000;
      if (v9 < 250.0)
      {
        v13 = 250;
      }

      if (v9 >= 100.0)
      {
        v12 = v13;
      }

      if (v9 >= 50.0)
      {
        v11 = v12;
      }

      if (v9 >= 25.0)
      {
        v10 = v11;
      }
    }

    else
    {
      v10 = 10;
    }
  }

  else
  {
    v10 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v6 + 136) = MEMORY[0x277D83B88];
  *(v6 + 144) = v14;
  *(v6 + 112) = v10;

  return MEMORY[0x28211E920](0x2B255F66332E2B25, 0xEE0064255F66332ELL, v6);
}

uint64_t GeoHashable.geoHash.getter(uint64_t a1, uint64_t a2)
{
  v4 = round((*(a2 + 8))() * 10000.0) / 10000.0;
  v5 = round((*(a2 + 16))(a1, a2) * 10000.0) / 10000.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA88A0, &unk_24AE0A2E0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D839F8];
  *(v6 + 16) = xmmword_24AE0FDC0;
  v8 = MEMORY[0x277D83A80];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v4;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v5;
  v9 = (*(a2 + 24))(a1, a2);
  if (v9 >= 5.0)
  {
    if (v9 >= 10.0)
    {
      v10 = 25;
      v11 = 50;
      v12 = 100;
      v13 = 1000;
      if (v9 < 250.0)
      {
        v13 = 250;
      }

      if (v9 >= 100.0)
      {
        v12 = v13;
      }

      if (v9 >= 50.0)
      {
        v11 = v12;
      }

      if (v9 >= 25.0)
      {
        v10 = v11;
      }
    }

    else
    {
      v10 = 10;
    }
  }

  else
  {
    v10 = 5;
  }

  v14 = MEMORY[0x277D83C10];
  *(v6 + 136) = MEMORY[0x277D83B88];
  *(v6 + 144) = v14;
  *(v6 + 112) = v10;

  return MEMORY[0x28211E920](0x2B255F66342E2B25, 0xEE0064255F66342ELL, v6);
}

unint64_t sub_24ADE16C8()
{
  result = qword_27EFA9E00;
  if (!qword_27EFA9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9E00);
  }

  return result;
}

uint64_t sub_24ADE171C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24ADE1764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ADE17F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_24AE09398();
  if (!v26)
  {
    return sub_24AE091F8();
  }

  v48 = v26;
  v52 = sub_24AE095B8();
  v39 = sub_24AE095C8();
  sub_24AE09598();
  result = sub_24AE09388();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_24AE093B8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_24AE095A8();
      result = sub_24AE093A8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OrganizedListWithMappings.init(values:enabledSections:enabledSortingDescriptors:tag:search:)@<X0>(Swift::OpaquePointer a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = sub_24AE091F8();
  swift_getAssociatedTypeWitness();
  type metadata accessor for OrganizedListSectionedValues();
  a9[1] = sub_24AE091F8();
  a9[2] = sub_24AE091F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v19 = sub_24AE091F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = sub_24AD9FFCC(v19, AssociatedTypeWitness, a7, AssociatedConformanceWitness);

  a9[3] = v21;
  v32 = sub_24AE091F8();
  v22 = sub_24AE091F8();
  v23 = sub_24AE091F8();
  v24 = *(a15 + 24);
  v25 = type metadata accessor for OrganizedListWithMappings();
  v26 = a9 + v25[24];
  v24(v32, v22, v23, a8, a15);
  *(a9 + v25[25]) = a2;
  *(a9 + v25[26]) = a3;
  v27 = v25[27];
  v28 = swift_getAssociatedTypeWitness();
  v29 = *(v28 - 8);
  (*(v29 + 16))(a9 + v27, a4, v28);
  v30 = (a9 + v25[28]);
  *v30 = a5;
  v30[1] = a6;
  OrganizedListWithMappings.reloadData(_:)(a1);

  return (*(v29 + 8))(a4, v28);
}

uint64_t sub_24ADE1EDC()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_24AE094F8();
  v4 = *(AssociatedConformanceWitness + 16);
  v5 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_24AE09378();
}

uint64_t OrganizedListSortableSort.sortDescriptor.getter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v5 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5(KeyPath, AssociatedTypeWitness, a1, a2);
}

uint64_t OrganizedListEmptyStorageMappings.init(rawValues:filteredSections:filteredValues:)()
{
}

uint64_t sub_24ADE21B8()
{
  v1 = *v0;
  v2 = sub_24AE08288();
  OrganizedListWithMappings.reloadData(_:)(v2);
}

uint64_t OrganizedListWithMappings.tag.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1 + 112));
  v6 = *v4;
  v5 = v4[1];
  v7 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v14 = *(a1 + 108);
    v15 = *(a1 + 56);
    v16 = *(a1 + 16);
    v17 = swift_getAssociatedTypeWitness();
    v18 = *(*(v17 - 8) + 16);

    return v18(a2, v2 + v14, v17);
  }
}

uint64_t sub_24ADE2334@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + a2 - 64);
  v7 = *(a1 + a2 - 48);
  v8 = *(a1 + a2 - 32);
  v9 = *(a1 + a2 - 16);
  v4 = type metadata accessor for OrganizedListWithMappings();
  return OrganizedListWithMappings.tag.getter(v4, a3);
}

uint64_t sub_24ADE2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 64);
  v8 = *(a3 + a4 - 48);
  v9 = *(a3 + a4 - 32);
  v10 = *(a3 + a4 - 16);
  v5 = type metadata accessor for OrganizedListWithMappings();
  return sub_24ADE4714(a1, v5);
}

uint64_t OrganizedListWithMappings.tag.setter(uint64_t a1, uint64_t a2)
{
  sub_24ADE4714(a1, a2);
  v4 = *(a2 + 56);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 8);

  return v7(a1, AssociatedTypeWitness);
}

void (*OrganizedListWithMappings.tag.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 56);
  v9 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[2] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v7[3] = v11;
  v12 = *(v11 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v7[5] = v13;
  OrganizedListWithMappings.tag.getter(a2, v13);
  return sub_24ADE258C;
}

void sub_24ADE258C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_24ADE467C(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_24ADE467C((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OrganizedListWithMappings.search.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 112));
  v3 = *v2;
  v4 = v2[1];
  sub_24AE08288();
  return v3;
}

uint64_t sub_24ADE26B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 + a3 - 64);
  v9 = *(a2 + a3 - 48);
  v10 = *(a2 + a3 - 32);
  v11 = *(a2 + a3 - 16);
  v5 = (a1 + *(type metadata accessor for OrganizedListWithMappings() + 112));
  v6 = v5[1];
  *a4 = *v5;
  a4[1] = v6;
  return sub_24AE08288();
}

uint64_t sub_24ADE2710(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + a4;
  v5 = *a1;
  v6 = a1[1];
  sub_24AE08288();
  v9 = *(v4 - 64);
  v10 = *(v4 - 48);
  v11 = *(v4 - 32);
  v12 = *(v4 - 16);
  v7 = type metadata accessor for OrganizedListWithMappings();
  return OrganizedListWithMappings.search.setter(v5, v6, v7);
}

uint64_t OrganizedListWithMappings.search.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 112));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;

  return sub_24ADE21B8();
}

void *(*OrganizedListWithMappings.search.modify(void *a1, uint64_t a2))(void *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  result = sub_24ADE2804;
  v4 = v2 + *(a2 + 112);
  return result;
}

void *sub_24ADE2804(void *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = result;
    v2 = *result;
    v3 = v4[1];
    return sub_24ADE21B8();
  }

  return result;
}

uint64_t sub_24ADE2830()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_24AE094F8();
  swift_getAssociatedConformanceWitness();
  v2 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_24AE09378();
}

Swift::Void __swiftcall OrganizedListWithMappings.reloadData(_:)(Swift::OpaquePointer a1)
{
  rawValue = a1._rawValue;
  v2 = v1;
  v76 = *(v1 + 24);
  v71 = *(v76 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](a1._rawValue);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7.i64[0] = v6;
  v7.i64[1] = v8;
  v80 = v7;
  v9 = *(v5 + 48);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_checkMetadataState();
  sub_24AE094F8();
  v13 = *(v2 + 72);
  v14.i64[0] = v9;
  v73 = v14;
  v137 = v78;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v2;
  v16 = *(v2 + 32);
  v133 = v80;
  v134 = v16;
  v17 = *(v2 + 56);
  v79 = v16;
  v80 = v17;
  *&v16 = vdupq_laneq_s64(v17, 1).u64[0];
  v18 = v13;
  v75 = v13;
  *(&v16 + 1) = v13;
  v135 = vzip1q_s64(v73, v17);
  v136 = v16;
  v19 = *(AssociatedConformanceWitness + 8);
  v140 = sub_24AE09148();
  v127 = v6;
  v20 = v76;
  v128 = v76;
  v129 = v79;
  v74 = v9;
  v130 = v9;
  v131 = v80;
  v132 = v18;
  KeyPath = swift_getKeyPath();
  v122 = v79;
  v121[2] = v20;
  v123 = v9;
  v124 = v80;
  v125 = v18;
  v126 = KeyPath;
  v22 = sub_24AE09258();
  v23 = sub_24AE08698();
  v73.i64[0] = v23;
  WitnessTable = swift_getWitnessTable();
  v64 = sub_24ADE17F8(sub_24ADE4748, v121, v22, v23, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);

  v26 = v78;
  v140 = rawValue;
  v114 = v6;
  v115 = v20;
  v116 = v79;
  v118 = v80;
  v28 = v74;
  v27 = v75;
  v117 = v74;
  v119 = v75;
  v120 = v78;
  v72 = v6;
  v29 = sub_24AE09258();
  sub_24AE08288();
  swift_getWitnessTable();
  v140 = sub_24AE09588();
  v107 = v6;
  v108 = v20;
  v109 = v79;
  v111 = v80;
  v110 = v28;
  v30 = v28;
  v112 = v27;
  v113 = v26;
  v31 = sub_24AE09588();
  v65 = 0;
  v139 = v64;
  v140 = v31;
  sub_24AE09258();
  v66 = MEMORY[0x277D83970];
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v68 = v32;
  v33 = sub_24AE09128();

  v140 = v33;
  v73.i64[0] = v33;
  v34 = v75;
  v35 = v76;
  v100 = v72;
  v101 = v76;
  v102 = v79;
  v104 = v80;
  v103 = v30;
  v105 = v75;
  v106 = v78;
  v36 = v72;
  swift_getAssociatedTypeWitness();
  v37 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_24AE08288();
  v67 = v29;
  v38 = sub_24AE08E48();
  v140 = v38;
  v94 = v36;
  v95 = v35;
  v39 = v35;
  v96 = v79;
  v98 = v80;
  v40 = v74;
  v97 = v74;
  v99 = v34;
  v41 = v34;
  sub_24AE08E38();
  sub_24AE08288();
  swift_getWitnessTable();
  v42 = sub_24AE09168();

  v140 = v42;
  v43 = v72;
  v87 = v72;
  v88 = v39;
  v89 = v79;
  v91 = v80;
  v90 = v40;
  v92 = v41;
  v93 = v38;
  sub_24AE09258();
  v44 = v43;
  type metadata accessor for OrganizedListSectionedValues();
  swift_getWitnessTable();
  v45 = sub_24AE09138();

  v46 = rawValue;
  v47 = v78;
  v48 = *v78;
  sub_24AE08288();

  *v47 = v46;
  v49 = *(v47 + 1);
  v66 = v45;
  sub_24AE08288();

  *(v47 + 1) = v45;
  v50 = *(v47 + 2);
  v51 = v73.i64[0];
  sub_24AE08288();

  *(v47 + 2) = v51;
  v139 = v51;
  v52 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v53 = sub_24AE091F8();
  v54 = swift_getAssociatedConformanceWitness();
  v55 = sub_24AD9FFCC(v53, v52, v44, v54);

  v138 = v55;
  v56 = v75;
  v57 = v76;
  v81 = v44;
  v82 = v76;
  v83 = v79;
  v84 = v74;
  v85 = v80;
  v86 = v75;
  sub_24AE08E58();
  sub_24AE09158();
  v58 = v140;
  v59 = *(v47 + 3);

  *(v47 + 3) = v58;
  v60 = *(v56 + 24);
  v61 = sub_24AE08288();
  v62 = v70;
  v60(v61, v66, v73.i64[0], v57, v56);
  (*(v71 + 40))(&v47[*(v69 + 96)], v62, v57);
}

uint64_t sub_24ADE3258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for OrganizedListWithMappings() + 104));
  swift_getAssociatedTypeWitness();
  v3 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_24AE08288();
  v4 = sub_24AE09358();

  return v4 & 1;
}

uint64_t sub_24ADE3348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 64);
  v4 = *(a2 + a3 - 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return OrganizedListSortableSort.sortDescriptor.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_24ADE33DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (a2 + *(type metadata accessor for OrganizedListWithMappings() + 112));
  v8 = *v7;
  v9 = v7[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = *(a5 + 8);
    sub_24AE08288();
    v12 = v11(v8, v9, a3, a5);
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t sub_24ADE34B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a6;
  v23 = a7;
  v24 = a2;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v22 - v17;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = v22;
  v30 = v23;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v19 = type metadata accessor for OrganizedListWithMappings();
  OrganizedListWithMappings.tag.getter(v19, v18);
  v20 = (*(a8 + 24))(v18, a3, a8);
  (*(v15 + 8))(v18, AssociatedTypeWitness);
  return v20 & 1;
}

uint64_t sub_24ADE3614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 + *(type metadata accessor for OrganizedListWithMappings() + 100));
  v9 = *(a6 + 24);
  v10 = sub_24AE08288();
  v9(v10, a3, a6);
}

uint64_t sub_24ADE36C8()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 64);
  v2 = swift_checkMetadataState();
  v3 = v1(v2, AssociatedConformanceWitness);
  v5 = v4;
  if (v3 == v1(v2, AssociatedConformanceWitness) && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_24AE097C8();
  }

  return v8 & 1;
}

uint64_t sub_24ADE37F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v14 - v7;
  sub_24AE09258();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_24AE08E88();
  v10 = v15;
  if (v15)
  {
    (*(v5 + 16))(v8, a1, AssociatedTypeWitness);
    (*(v5 + 32))(a2, v8, AssociatedTypeWitness);
    v11 = type metadata accessor for OrganizedListSectionedValues();
    *(a2 + *(v11 + 36)) = v10;
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for OrganizedListSectionedValues();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_24ADE39F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24AE09438();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_24AE09508();
  v11 = *(a3 - 8);
  (*(v11 + 16))(v8, a2, a3);
  (*(v11 + 56))(v8, 0, 1, a3);
  swift_getAssociatedConformanceWitness();
  sub_24AE08E58();
  return sub_24AE08E98();
}

uint64_t static OrganizedListSectionedValues<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24AE08EF8() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for OrganizedListSectionedValues() + 36);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_24AE09278();
}

uint64_t sub_24ADE3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  return static OrganizedListSectionedValues<>.== infix(_:_:)(a1, a2);
}

uint64_t OrganizedListSectionedValues<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  sub_24AE08EB8();
  v5 = *(v2 + *(a2 + 36));
  v6 = *(a2 + 24);

  return sub_24AE09268();
}

uint64_t OrganizedListSectionedValues<>.hashValue.getter(uint64_t a1)
{
  sub_24AE09838();
  v3 = *(a1 + 16);
  sub_24AE08EB8();
  v4 = *(v1 + *(a1 + 36));
  v5 = *(a1 + 24);
  sub_24AE09268();
  return sub_24AE09868();
}

uint64_t sub_24ADE3D2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return OrganizedListSectionedValues<>.hashValue.getter(a1);
}

uint64_t sub_24ADE3D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  return OrganizedListSectionedValues<>.hash(into:)(a1, a2);
}

uint64_t static OrganizedListWithMappings<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((sub_24AE09278() & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = a1[1];
  v7 = a2[1];
  swift_getAssociatedTypeWitness();
  type metadata accessor for OrganizedListSectionedValues();
  v29 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  if ((sub_24AE09278() & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = a1[2];
  v9 = a2[2];
  if ((sub_24AE09278() & 1) == 0)
  {
    goto LABEL_12;
  }

  v28 = a1[3];
  v10 = a2[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((sub_24AE08E78() & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = type metadata accessor for OrganizedListWithMappings();
  v12 = v11[24];
  if ((sub_24AE08EF8() & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = v11[25];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if ((sub_24AE09338() & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = v11[26];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  swift_getAssociatedTypeWitness();
  v19 = *(swift_getAssociatedConformanceWitness() + 16);
  if ((sub_24AE09338() & 1) == 0)
  {
    goto LABEL_12;
  }

  swift_getAssociatedTypeWitness();
  v20 = v11[27];
  v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  if (sub_24AE08EF8())
  {
    v22 = v11[28];
    v23 = *(a1 + v22);
    v24 = *(a1 + v22 + 8);
    v25 = (a2 + v22);
    if (v23 == *v25 && v24 == v25[1])
    {
      v26 = 1;
    }

    else
    {
      v26 = sub_24AE097C8();
    }
  }

  else
  {
LABEL_12:
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_24ADE40BC(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v5 = *(a4 - 16);
  v4 = *(a4 - 8);
  v7 = a3[2];
  v6 = a3[3];
  v8 = a3[4];
  v9 = a3[5];
  v10 = a3[6];
  v11 = a3[7];
  v14 = a3[9];
  v13 = a3[8];
  return static OrganizedListWithMappings<>.== infix(_:_:)(a1, a2) & 1;
}

uint64_t OrganizedListWithMappings<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(a2 + 16);
  sub_24AE09268();
  v7 = v2[1];
  v8 = *(a2 + 40);
  swift_getAssociatedTypeWitness();
  type metadata accessor for OrganizedListSectionedValues();
  v25 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getWitnessTable();
  sub_24AE09268();
  v9 = v2[2];
  sub_24AE09268();
  v10 = v2[3];
  v11 = *(a2 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE08E68();
  v12 = *(a2 + 24);
  v13 = v2 + *(a2 + 96);
  sub_24AE08EB8();
  v14 = *(v3 + *(a2 + 100));
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_24AE09348();
  v15 = *(v3 + *(a2 + 104));
  v16 = *(a2 + 48);
  swift_getAssociatedTypeWitness();
  v17 = *(swift_getAssociatedConformanceWitness() + 16);
  sub_24AE09348();
  v18 = *(a2 + 108);
  v19 = *(a2 + 56);
  swift_getAssociatedTypeWitness();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_24AE08EB8();
  v21 = (v3 + *(a2 + 112));
  v22 = *v21;
  v23 = v21[1];
  return sub_24AE09048();
}

uint64_t OrganizedListWithMappings<>.hashValue.getter(uint64_t a1)
{
  sub_24AE09838();
  OrganizedListWithMappings<>.hash(into:)(v3, a1);
  return sub_24AE09868();
}

uint64_t sub_24ADE441C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return OrganizedListWithMappings<>.hashValue.getter(a1);
}

uint64_t sub_24ADE4428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 16);
  v4 = *(a3 - 8);
  return OrganizedListWithMappings<>.hash(into:)(a1, a2);
}

uint64_t sub_24ADE444C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3 - 16);
  v6 = *(a3 - 8);
  sub_24AE09838();
  a4(v9, a2, v6, v7);
  return sub_24AE09868();
}

uint64_t static OrganizedListWithMappings.empty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v27 = a2;
  v28 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v25 - v18;
  v26._rawValue = sub_24AE091F8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = v27;
  v22 = sub_24ADE2830();
  v23 = sub_24ADE1EDC();
  return OrganizedListWithMappings.init(values:enabledSections:enabledSortingDescriptors:tag:search:)(v26, v22, v23, v19, 0, 0xE000000000000000, a1, v21, v28, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_24ADE467C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 108);
  v6 = *(a2 + 56);
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v2 + v5, a1, AssociatedTypeWitness);

  return sub_24ADE21B8();
}

uint64_t sub_24ADE4844()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  v9 = v0[9];
  return sub_24ADE36C8() & 1;
}

uint64_t sub_24ADE48E8(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v9 = v2[8];
  v10 = v2[9];
  return sub_24ADE39F8(a1, a2, v2[2]);
}

uint64_t sub_24ADE494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t sub_24ADE4A3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_24AE09258();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ADE4AC8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_24ADE4C04(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_24ADE4DE0(void *a1)
{
  v2 = a1[2];
  result = sub_24AE09258();
  if (v4 <= 0x3F)
  {
    v5 = a1[5];
    swift_getAssociatedTypeWitness();
    type metadata accessor for OrganizedListSectionedValues();
    result = sub_24AE09258();
    if (v6 <= 0x3F)
    {
      v7 = a1[8];
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      result = sub_24AE08E58();
      if (v8 <= 0x3F)
      {
        v9 = a1[3];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          swift_getAssociatedConformanceWitness();
          swift_getAssociatedTypeWitness();
          swift_getAssociatedConformanceWitness();
          result = sub_24AE09368();
          if (v11 <= 0x3F)
          {
            v12 = a1[6];
            swift_getAssociatedTypeWitness();
            v13 = *(swift_getAssociatedConformanceWitness() + 16);
            result = sub_24AE09368();
            if (v14 <= 0x3F)
            {
              v15 = a1[7];
              result = swift_getAssociatedTypeWitness();
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_24ADE5074(int *a1, unsigned int a2, void *a3)
{
  v5 = a3[3];
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = a3[7];
  v9 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v6 + 80);
  v13 = *(v11 + 80);
  if (v7 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = v7;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + 7;
  v17 = v13 + 8;
  if (v15 >= a2)
  {
    goto LABEL_30;
  }

  v18 = ((*(*(AssociatedTypeWitness - 8) + 64) + ((v17 + ((((v16 + ((v12 + 32) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v15 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v15 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v14 & 0x80000000) != 0)
  {
    v28 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
    if (v7 == v15)
    {
      v29 = *(v6 + 48);

      return v29(v28, v7, v5);
    }

    else
    {
      v30 = *(v11 + 48);
      v31 = (v17 + ((((v16 + v28) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13;

      return v30(v31);
    }
  }

  else
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_24ADE5330(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(a4 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (v9 <= *(v12 + 84))
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((*(*(AssociatedTypeWitness - 8) + 64) + ((v15 + 8 + ((((v14 + 7 + ((v13 + 32) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v21 = 0;
    v22 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(AssociatedTypeWitness - 8) + 64) + ((v15 + 8 + ((((v14 + 7 + ((v13 + 32) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v17 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v18) = 0;
      }

      else if (v21)
      {
        *(a1 + v18) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v16 & 0x80000000) != 0)
        {
          v26 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
          if (v9 == v17)
          {
            v27 = *(v30 + 56);

            v27(v26, a2, v9, v7);
          }

          else
          {
            v28 = *(v12 + 56);
            v29 = (v15 + 8 + ((((v14 + 7 + v26) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;

            v28(v29, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *a1 = v25;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(AssociatedTypeWitness - 8) + 64) + ((v15 + 8 + ((((v14 + 7 + ((v13 + 32) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1;
  }

  if (((*(*(AssociatedTypeWitness - 8) + 64) + ((v15 + 8 + ((((v14 + 7 + ((v13 + 32) & ~v13)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v24 = ~v17 + a2;
    bzero(a1, v18);
    *a1 = v24;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      *(a1 + v18) = v23;
    }

    else
    {
      *(a1 + v18) = v23;
    }
  }

  else if (v21)
  {
    *(a1 + v18) = v23;
  }
}

__n128 PublishedLocation.init(value:priority:motionActivity:label:)@<Q0>(void *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  *a5 = *a1;
  *(a5 + 8) = v5;
  *(a5 + 9) = v6;
  v7 = *(a4 + 80);
  *(a5 + 80) = *(a4 + 64);
  *(a5 + 96) = v7;
  *(a5 + 112) = *(a4 + 96);
  v8 = *(a4 + 16);
  *(a5 + 16) = *a4;
  *(a5 + 32) = v8;
  result = *(a4 + 48);
  *(a5 + 48) = *(a4 + 32);
  *(a5 + 64) = result;
  return result;
}

uint64_t PublishedLocation.Label.description.getter()
{
  v0 = sub_24AE08718();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v5 = 2;
  sub_24ADE7D84(0, &v5, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_24AE08FE8();
}

uint64_t PublishedLocation.Priority.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x79636167656CLL;
  v3 = 0x74696C6C65746173;
  v4 = 0x6567617373656DLL;
  if (v1 != 4)
  {
    v4 = 0x726568746FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 1702259052;
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
    return v3;
  }
}

uint64_t PublishedLocation.MotionActivity.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x676E696E6E7572;
  v4 = 0x676E696C637963;
  if (v1 != 4)
  {
    v4 = 0x69746F6D6F747561;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x616E6F6974617473;
  if (v1 != 1)
  {
    v5 = 0x676E696B6C6177;
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
    return v3;
  }
}

void static FindMyUserDefaults.Key<>.showLocationTypeDebugDescription.getter(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x800000024AE134C0;
  *(a1 + 16) = 1;
}

id PublishedLocation.value.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void PublishedLocation.value.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t PublishedLocation.label.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v13 = v1[5];
  v2 = v13;
  v14 = v3;
  v15 = v1[7];
  v4 = v15;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  v6 = v1[4];
  v11 = v1[3];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_24AD9B858(v10, &v9);
}

__n128 PublishedLocation.label.setter(uint64_t a1)
{
  v3 = v1[6];
  v9[4] = v1[5];
  v9[5] = v3;
  v9[6] = v1[7];
  v4 = v1[2];
  v9[0] = v1[1];
  v9[1] = v4;
  v5 = v1[4];
  v9[2] = v1[3];
  v9[3] = v5;
  sub_24ADA6B3C(v9);
  v6 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v6;
  v1[7] = *(a1 + 96);
  v7 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v7;
  result = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = result;
  return result;
}

double PublishedLocation.timestamp.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE088E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = [v8 timestamp];
  sub_24AE088D8();

  v11 = *(v4 + 16);
  v114 = v3;
  v115 = a1;
  v11(a1, v7, v3);
  if (v9 != 2)
  {
    if (qword_27EFA8800 != -1)
    {
      swift_once();
    }

    v15 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v16 = v15;
      v17 = v16;
    }

    else
    {
      v28 = objc_opt_self();
      sub_24AE08288();
      v17 = [v28 mainBundle];
      v16 = 0;
    }

    v29 = v16;
    v30 = sub_24AE08F88();
    v31 = sub_24AE08F88();
    v32 = [v17 localizedStringForKey:v30 value:0 table:v31];

    v33 = sub_24AE08FB8();
    v112 = v34;
    v113 = v33;

    v35 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v36 = v35;
      v37 = v36;
    }

    else
    {
      v48 = objc_opt_self();
      sub_24AE08288();
      v37 = [v48 mainBundle];
      v36 = 0;
    }

    v49 = v36;
    v50 = sub_24AE08F88();
    v51 = sub_24AE08F88();
    v52 = [v37 localizedStringForKey:v50 value:0 table:v51];

    v53 = sub_24AE08FB8();
    v110 = v54;
    v111 = v53;

    v55 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v56 = v55;
      v57 = v56;
    }

    else
    {
      v68 = objc_opt_self();
      sub_24AE08288();
      v57 = [v68 mainBundle];
      v56 = 0;
    }

    v69 = v56;
    v70 = sub_24AE08F88();
    v71 = sub_24AE08F88();
    v72 = [v57 localizedStringForKey:v70 value:0 table:v71];

    v73 = sub_24AE08FB8();
    v108 = v74;
    v109 = v73;

    v75 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      sub_24AE08288();
      v76 = v75;
      v77 = v76;
    }

    else
    {
      v87 = objc_opt_self();
      sub_24AE08288();
      v77 = [v87 mainBundle];
      v76 = 0;
    }

    v88 = v76;
    v89 = sub_24AE08F88();
    v90 = sub_24AE08F88();
    v91 = [v77 localizedStringForKey:v89 value:0 table:v90];

    v83 = sub_24AE08FB8();
    v85 = v92;

    v86 = qword_27EFB76F0;
    if (qword_27EFB76F0)
    {
      goto LABEL_33;
    }

LABEL_34:
    v95 = objc_opt_self();
    sub_24AE08288();
    v94 = [v95 mainBundle];
    v93 = 0;
    goto LABEL_35;
  }

  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v12 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v13 = v12;
    v14 = v13;
  }

  else
  {
    v18 = objc_opt_self();
    sub_24AE08288();
    v14 = [v18 mainBundle];
    v13 = 0;
  }

  v19 = v13;
  v20 = sub_24AE08F88();
  v21 = sub_24AE08F88();
  v22 = [v14 localizedStringForKey:v20 value:0 table:v21];

  v23 = sub_24AE08FB8();
  v112 = v24;
  v113 = v23;

  v25 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v26 = v25;
    v27 = v26;
  }

  else
  {
    v38 = objc_opt_self();
    sub_24AE08288();
    v27 = [v38 mainBundle];
    v26 = 0;
  }

  v39 = v26;
  v40 = sub_24AE08F88();
  v41 = sub_24AE08F88();
  v42 = [v27 localizedStringForKey:v40 value:0 table:v41];

  v43 = sub_24AE08FB8();
  v110 = v44;
  v111 = v43;

  v45 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v46 = v45;
    v47 = v46;
  }

  else
  {
    v58 = objc_opt_self();
    sub_24AE08288();
    v47 = [v58 mainBundle];
    v46 = 0;
  }

  v59 = v46;
  v60 = sub_24AE08F88();
  v61 = sub_24AE08F88();
  v62 = [v47 localizedStringForKey:v60 value:0 table:v61];

  v63 = sub_24AE08FB8();
  v108 = v64;
  v109 = v63;

  v65 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v66 = v65;
    v67 = v66;
  }

  else
  {
    v78 = objc_opt_self();
    sub_24AE08288();
    v67 = [v78 mainBundle];
    v66 = 0;
  }

  v79 = v66;
  v80 = sub_24AE08F88();
  v81 = sub_24AE08F88();
  v82 = [v67 localizedStringForKey:v80 value:0 table:v81];

  v83 = sub_24AE08FB8();
  v85 = v84;

  v86 = qword_27EFB76F0;
  if (!qword_27EFB76F0)
  {
    goto LABEL_34;
  }

LABEL_33:
  sub_24AE08288();
  v93 = v86;
  v94 = v93;
LABEL_35:
  v96 = v93;
  v97 = sub_24AE08F88();
  v98 = sub_24AE08F88();
  v99 = [v94 localizedStringForKey:v97 value:0 table:v98];

  v100 = sub_24AE08FB8();
  v102 = v101;

  (*(v4 + 8))(v7, v114);

  v103 = v115 + *(type metadata accessor for FindMyRelativeDate() + 20);
  *v103 = xmmword_24AE10280;
  *(v103 + 16) = xmmword_24AE10290;
  result = 8.00837452e-116;
  *(v103 + 32) = xmmword_24AE102A0;
  v105 = v112;
  *(v103 + 48) = v113;
  *(v103 + 56) = v105;
  v106 = v110;
  *(v103 + 64) = v111;
  *(v103 + 72) = v106;
  v107 = v108;
  *(v103 + 80) = v109;
  *(v103 + 88) = v107;
  *(v103 + 96) = v83;
  *(v103 + 104) = v85;
  *(v103 + 112) = v100;
  *(v103 + 120) = v102;
  return result;
}

uint64_t PublishedLocation.showPulseAnimationEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AE088E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8) == 2)
  {
    v8 = *v1;
    v13 = v5;
    v9 = [v8 timestamp];
    sub_24AE088D8();

    sub_24AE09958();
    sub_24AE09958();
    sub_24AE08888();
    (*(v13 + 8))(v7, v3);
    return (*(v13 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v11 = *(v5 + 56);

    return v11(a1, 1, 1, v3);
  }
}

uint64_t PublishedLocation.extraInfo.getter()
{
  v1 = *(v0 + 8);
  if (qword_27EFA8620 != -1)
  {
    swift_once();
  }

  if (byte_27EFA8CF0 == 1)
  {
    v2 = qword_27EFA8CE8;
    v3 = sub_24AE08F88();
    LOBYTE(v2) = [v2 BOOLForKey_];

    if (v2)
    {
      v4 = sub_24AE08FF8();
      MEMORY[0x24C230FB0](v4);

      sub_24AE08288();
      MEMORY[0x24C230FB0](41, 0xE100000000000000);

      return 0x203A677562656428;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t PublishedLocation.Priority.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1 == 3)
  {
    if (qword_27EFA86F8 != -1)
    {
      swift_once();
    }

    v4 = qword_27EFAA058;
    v3 = unk_27EFAA060;
    v6 = qword_27EFAA068;
    v5 = unk_27EFAA070;
    v7 = word_27EFAA078 | (HIBYTE(word_27EFAA078) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  return result;
}

FindMyCore::PublishedLocation::Priority_optional __swiftcall PublishedLocation.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24AE09668();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ADE68BC()
{
  *v0;
  *v0;
  *v0;
  sub_24AE09048();
}

void sub_24ADE69B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x79636167656CLL;
  v5 = 0xE900000000000065;
  v6 = 0x74696C6C65746173;
  v7 = 0xE700000000000000;
  v8 = 0x6567617373656DLL;
  if (v2 != 4)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x800000024AE12D70;
  v10 = 0xD000000000000012;
  if (v2 != 1)
  {
    v10 = 1702259052;
    v9 = 0xE400000000000000;
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
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t PublishedLocation.MotionActivity.symbol.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      if (qword_27EFA8708 != -1)
      {
        swift_once();
      }

      v9 = &qword_27EFAA0A8;
    }

    else if (v3 == 4)
    {
      if (qword_27EFA8710 != -1)
      {
        swift_once();
      }

      v9 = &qword_27EFAA0D0;
    }

    else
    {
      if (qword_27EFA8718 != -1)
      {
        swift_once();
      }

      v9 = &qword_27EFAA0F8;
    }

    v4 = *v9;
    v5 = v9[1];
    v6 = v9[2];
    v7 = v9[3];
    v8 = *(v9 + 32) | (*(v9 + 33) << 8);
    sub_24AE08288();
    result = sub_24AE08288();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

FindMyCore::PublishedLocation::MotionActivity_optional __swiftcall PublishedLocation.MotionActivity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24AE09668();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24ADE6C24()
{
  *v0;
  *v0;
  *v0;
  sub_24AE09048();
}

void sub_24ADE6D30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x676E696E6E7572;
  v7 = 0xE700000000000000;
  v8 = 0x676E696C637963;
  if (v2 != 4)
  {
    v8 = 0x69746F6D6F747561;
    v7 = 0xEA00000000006576;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000007972;
  v10 = 0x616E6F6974617473;
  if (v2 != 1)
  {
    v10 = 0x676E696B6C6177;
    v9 = 0xE700000000000000;
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
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

double sub_24ADE6DF8()
{
  result = 0.0;
  xmmword_27EFA9E58 = 0u;
  xmmword_27EFA9E68 = 0u;
  xmmword_27EFA9E38 = 0u;
  xmmword_27EFA9E48 = 0u;
  xmmword_27EFA9E18 = 0u;
  xmmword_27EFA9E28 = 0u;
  xmmword_27EFA9E08 = 0u;
  return result;
}

uint64_t static PublishedLocation.Label.empty.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27EFA8688 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = xmmword_27EFA9E48;
  v2 = xmmword_27EFA9E58;
  v10[4] = xmmword_27EFA9E48;
  v10[5] = xmmword_27EFA9E58;
  v3 = xmmword_27EFA9E68;
  v10[6] = xmmword_27EFA9E68;
  v4 = xmmword_27EFA9E18;
  v10[0] = xmmword_27EFA9E08;
  v10[1] = xmmword_27EFA9E18;
  v6 = xmmword_27EFA9E28;
  v5 = xmmword_27EFA9E38;
  v10[2] = xmmword_27EFA9E28;
  v10[3] = xmmword_27EFA9E38;
  *a1 = xmmword_27EFA9E08;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  return sub_24AD9B858(v10, &v9);
}

void sub_24ADE6EB8()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9E78 = v8;
  unk_27EFA9E80 = v10;
}

uint64_t static PublishedLocation.Label.noLocationLabel.getter()
{
  if (qword_27EFA8690 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFA9E78;
  sub_24AE08288();
  return v0;
}

uint64_t sub_24ADE7074()
{
  v0 = sub_24AE08948();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24AE086E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24AE08718();
  __swift_allocate_value_buffer(v9, qword_27EFA9E88);
  __swift_project_value_buffer(v9, qword_27EFA9E88);
  sub_24AE08F08();
  *v6 = type metadata accessor for ModelsModule();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9120], v2);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE7288()
{
  v0 = sub_24AE08948();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24AE086E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24AE08718();
  __swift_allocate_value_buffer(v9, qword_27EFA9EA0);
  __swift_project_value_buffer(v9, qword_27EFA9EA0);
  sub_24AE08F08();
  *v6 = type metadata accessor for ModelsModule();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9120], v2);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE749C()
{
  v0 = sub_24AE08948();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24AE086E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24AE08718();
  __swift_allocate_value_buffer(v9, qword_27EFA9EB8);
  __swift_project_value_buffer(v9, qword_27EFA9EB8);
  sub_24AE08F08();
  *v6 = type metadata accessor for ModelsModule();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9120], v2);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE76B0()
{
  v0 = sub_24AE08948();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24AE086E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24AE08718();
  __swift_allocate_value_buffer(v9, qword_27EFA9ED0);
  __swift_project_value_buffer(v9, qword_27EFA9ED0);
  sub_24AE08F08();
  *v6 = type metadata accessor for ModelsModule();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9120], v2);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE78C4()
{
  v0 = sub_24AE08948();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24AE086E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24AE08718();
  __swift_allocate_value_buffer(v9, qword_27EFA9EE8);
  __swift_project_value_buffer(v9, qword_27EFA9EE8);
  sub_24AE08F08();
  *v6 = type metadata accessor for ModelsModule();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9120], v2);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE7AD8()
{
  v0 = sub_24AE08948();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24AE086E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24AE08F78();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_24AE08718();
  __swift_allocate_value_buffer(v9, qword_27EFA9F00);
  __swift_project_value_buffer(v9, qword_27EFA9F00);
  sub_24AE08F08();
  *v6 = type metadata accessor for ModelsModule();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9120], v2);
  sub_24AE08938();
  return sub_24AE08728();
}

uint64_t sub_24ADE7CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_24AE08718();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_24ADE7D84@<X0>(char a1@<W0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = v3[2];
  v15 = v3[3];
  if (a1)
  {
    if (v15)
    {
      v16 = v3[3];
      sub_24AE08288();
      sub_24AE086D8();
      v17 = sub_24AE08718();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v11, 0, 1, v17);
      return (*(v18 + 32))(a3, v11, v17);
    }

    v25 = sub_24AE08718();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v11, 1, 1, v25);
    if (qword_27EFA8698 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v25, qword_27EFA9E88);
    (*(v26 + 16))(a3, v27, v25);
    result = (*(v26 + 48))(v11, 1, v25);
    if (result != 1)
    {
      v28 = v11;
      return sub_24AD92BE4(v28, &qword_27EFA8D98, &qword_24AE0B490);
    }

    return result;
  }

  v21 = *v3;
  v20 = v3[1];
  v22 = *a2;
  if (!*a2)
  {
    v29 = v3[1];
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v23 = v3[6];
  v24 = v3[1];
  if (v22 != 1)
  {
    if (!v20)
    {
      if (v3[9])
      {
        v30 = v3[8];
        v31 = v3[9];
LABEL_19:
        sub_24AE08288();
        goto LABEL_21;
      }

      goto LABEL_18;
    }

LABEL_21:
    sub_24AE08288();
    sub_24AE086D8();
    v33 = sub_24AE08718();
    v34 = *(v33 - 8);
    (*(v34 + 56))(v13, 0, 1, v33);
    return (*(v34 + 32))(a3, v13, v33);
  }

  if (v20)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v3[7])
  {
    goto LABEL_19;
  }

LABEL_20:
  v32 = v3[3];
  sub_24AE08288();
  if (v15)
  {
    goto LABEL_21;
  }

  v35 = sub_24AE08718();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v13, 1, 1, v35);
  v37 = qword_27EFA8698;
  sub_24AE08288();
  if (v37 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v35, qword_27EFA9E88);
  (*(v36 + 16))(a3, v38, v35);
  result = (*(v36 + 48))(v13, 1, v35);
  if (result != 1)
  {
    v28 = v13;
    return sub_24AD92BE4(v28, &qword_27EFA8D98, &qword_24AE0B490);
  }

  return result;
}

uint64_t sub_24ADE81F8(char *a1, uint64_t a2, char a3, _BYTE *a4)
{
  v46 = a2;
  v8 = sub_24AE08718();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v43 - v17;
  v20 = v4[2];
  v19 = v4[3];
  if (a3)
  {
    if (v19)
    {
      v21 = v4[3];
      sub_24AE08288();
      sub_24AE086D8();
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    (*(v47 + 56))(a1, v22, 1, v8);
    if (qword_27EFA86C0 != -1)
    {
      swift_once();
    }

    v28 = qword_27EFA9F00;
LABEL_14:
    v29 = __swift_project_value_buffer(v8, v28);
    v30 = v46;
    v31 = *(v47 + 16);

    return v31(v30, v29, v8);
  }

  v23 = *v4;
  v24 = v4[1];
  v25 = v4[12];
  v44 = v4[13];
  v45 = v23;
  if (*a4)
  {
    v26 = v4[11];
    v43[1] = v25;
    if (v26)
    {
      v27 = v4[10];
    }

    else
    {
      if (v4[9])
      {
        v33 = v4[8];
      }

      else if (v4[7])
      {
        v34 = v4[6];
      }

      else if (!v19)
      {
        v35 = *(v47 + 56);
        v35(v43 - v17, 1, 1, v8);
LABEL_27:
        sub_24AD92B7C(v18, v16, &qword_27EFA8D98, &qword_24AE0B490);
        if ((*(v47 + 48))(v16, 1, v8) == 1)
        {
          sub_24AD92BE4(v16, &qword_27EFA8D98, &qword_24AE0B490);
          if (!v24)
          {
            if (!v44)
            {
              v37 = 1;
              goto LABEL_35;
            }

            sub_24AE08288();
          }

          sub_24AE08288();
          sub_24AE086D8();
          v37 = 0;
LABEL_35:
          v35(a1, v37, 1, v8);
          if (qword_27EFA8698 != -1)
          {
            swift_once();
          }

          v38 = __swift_project_value_buffer(v8, qword_27EFA9E88);
          (*(v47 + 16))(v46, v38, v8);
          return sub_24AD92BE4(v18, &qword_27EFA8D98, &qword_24AE0B490);
        }

        v36 = *(v47 + 32);
        v36(v11, v16, v8);
        if (!v24)
        {
          if (!v44)
          {
            v39 = 1;
            goto LABEL_41;
          }

          sub_24AE08288();
        }

        sub_24AE08288();
        sub_24AE086D8();
        v39 = 0;
LABEL_41:
        sub_24AD92BE4(v18, &qword_27EFA8D98, &qword_24AE0B490);
        v35(a1, v39, 1, v8);
        return (v36)(v46, v11, v8);
      }

      sub_24AE08288();
    }

    sub_24AE08288();
    sub_24AE086D8();
    v35 = *(v47 + 56);
    v35(v18, 0, 1, v8);
    goto LABEL_27;
  }

  if (!v19)
  {
    if (!v24)
    {
      if (!v44)
      {
        v40 = 1;
        goto LABEL_45;
      }

      sub_24AE08288();
    }

    sub_24AE08288();
    sub_24AE086D8();
    v40 = 0;
LABEL_45:
    (*(v47 + 56))(a1, v40, 1, v8);
    if (qword_27EFA8698 != -1)
    {
      swift_once();
    }

    v28 = qword_27EFA9E88;
    goto LABEL_14;
  }

  if (!v24)
  {
    if (!v44)
    {
      if (!v4[5])
      {
        (*(v47 + 56))(a1, 1, 1, v8);
        sub_24AE08288();
        goto LABEL_52;
      }

      v41 = v4[4];
      v42 = v4[5];
    }

    sub_24AE08288();
  }

  sub_24AE08288();
  sub_24AE08288();
  sub_24AE086D8();
  (*(v47 + 56))(a1, 0, 1, v8);
LABEL_52:

  return sub_24AE086D8();
}

uint64_t PublishedLocation.Label.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v11 = v0[4];
  v12 = v0[6];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[9];
  v13 = v0[10];
  v7 = v0[11];
  v14 = v0[12];
  v8 = v0[13];
  if (v0[1])
  {
    v9 = *v0;
    sub_24AE09858();
    sub_24AE09048();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24AE09858();
    if (v2)
    {
LABEL_3:
      sub_24AE09858();
      sub_24AE09048();
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  sub_24AE09858();
  if (v3)
  {
LABEL_4:
    sub_24AE09858();
    sub_24AE09048();
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  sub_24AE09858();
  if (v5)
  {
LABEL_5:
    sub_24AE09858();
    sub_24AE09048();
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_24AE09858();
  if (v6)
  {
LABEL_6:
    sub_24AE09858();
    sub_24AE09048();
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_16:
    sub_24AE09858();
    if (v8)
    {
      goto LABEL_8;
    }

    return sub_24AE09858();
  }

LABEL_15:
  sub_24AE09858();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_24AE09858();
  sub_24AE09048();
  if (!v8)
  {
    return sub_24AE09858();
  }

LABEL_8:
  sub_24AE09858();

  return sub_24AE09048();
}

uint64_t PublishedLocation.Label.hashValue.getter()
{
  sub_24AE09838();
  PublishedLocation.Label.hash(into:)();
  return sub_24AE09868();
}

uint64_t sub_24ADE8A58()
{
  sub_24AE09838();
  PublishedLocation.Label.hash(into:)();
  return sub_24AE09868();
}

uint64_t sub_24ADE8A9C()
{
  sub_24AE09838();
  PublishedLocation.Label.hash(into:)();
  return sub_24AE09868();
}

uint64_t PublishedLocation.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  sub_24AE09428();
  sub_24AE09048();

  sub_24AE09048();

  return PublishedLocation.Label.hash(into:)();
}

uint64_t PublishedLocation.hashValue.getter()
{
  sub_24AE09838();
  PublishedLocation.hash(into:)();
  return sub_24AE09868();
}

uint64_t sub_24ADE8D64()
{
  sub_24AE09838();
  PublishedLocation.hash(into:)();
  return sub_24AE09868();
}

uint64_t sub_24ADE8DA8()
{
  sub_24AE09838();
  PublishedLocation.hash(into:)();
  return sub_24AE09868();
}

uint64_t PublishedLocation.debugDescription.getter()
{
  v1 = sub_24AE08718();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 9);
  v9 = *(v0 + 6);
  v49 = *(v0 + 5);
  v50 = v9;
  v51 = *(v0 + 7);
  v10 = *(v0 + 2);
  v45 = *(v0 + 1);
  v46 = v10;
  v11 = *(v0 + 4);
  v47 = *(v0 + 3);
  v48 = v11;
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  sub_24AD9B858(&v45, v43);
  sub_24AE094E8();
  v44 = v36;
  MEMORY[0x24C230FB0](0xD000000000000013, 0x800000024AE13730);
  v12 = 0xE600000000000000;
  v13 = 0x79636167656CLL;
  v14 = 0xE900000000000065;
  v15 = 0x74696C6C65746173;
  v16 = 0xE700000000000000;
  v17 = 0x6567617373656DLL;
  if (v7 != 4)
  {
    v17 = 0x726568746FLL;
    v16 = 0xE500000000000000;
  }

  if (v7 != 3)
  {
    v15 = v17;
    v14 = v16;
  }

  v18 = 0x800000024AE12D70;
  v19 = 1702259052;
  if (v7 == 1)
  {
    v19 = 0xD000000000000012;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  if (v7)
  {
    v13 = v19;
    v12 = v18;
  }

  if (v7 <= 2)
  {
    v20 = v13;
  }

  else
  {
    v20 = v15;
  }

  if (v7 <= 2)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  MEMORY[0x24C230FB0](v20, v21);

  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  v22 = 0xE700000000000000;
  v23 = 0x6E776F6E6B6E75;
  v24 = 0xE700000000000000;
  v25 = 0x676E696E6E7572;
  v26 = 0xE700000000000000;
  v27 = 0x676E696C637963;
  if (v8 != 4)
  {
    v27 = 0x69746F6D6F747561;
    v26 = 0xEA00000000006576;
  }

  if (v8 != 3)
  {
    v25 = v27;
    v24 = v26;
  }

  v28 = 0xEA00000000007972;
  v29 = 0x616E6F6974617473;
  if (v8 != 1)
  {
    v29 = 0x676E696B6C6177;
    v28 = 0xE700000000000000;
  }

  if (v8)
  {
    v23 = v29;
    v22 = v28;
  }

  if (v8 <= 2)
  {
    v30 = v23;
  }

  else
  {
    v30 = v25;
  }

  if (v8 <= 2)
  {
    v31 = v22;
  }

  else
  {
    v31 = v24;
  }

  MEMORY[0x24C230FB0](v30, v31);

  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v35 = 2;
  sub_24ADE7D84(0, &v35, v5);
  v43[3] = v39;
  v43[4] = v40;
  v43[5] = v41;
  v43[6] = v42;
  v43[0] = v36;
  v43[1] = v37;
  v43[2] = v38;
  sub_24ADA6B3C(v43);
  sub_24AE095D8();
  (*(v2 + 8))(v5, v1);
  MEMORY[0x24C230FB0](2239778, 0xE300000000000000);
  *&v36 = v6;
  v32 = Location.debugDescription.getter();
  MEMORY[0x24C230FB0](v32);

  MEMORY[0x24C230FB0](34, 0xE100000000000000);
  return v44;
}

uint64_t static PublishedLocation.Label.twoComponentsInfo(_:isLocating:isAbleToPerformLocate:forceNowRecencyKey:maxLength:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4, char a5, int a6, char *a7)
{
  v70 = a6;
  v76 = a2;
  v73 = a1;
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  v12 = *(*(MyRelativeDate - 8) + 64);
  MEMORY[0x28223BE20](MyRelativeDate);
  v14 = &v69[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for RelativeDateOrString();
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = *(v74 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v69[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v71 = &v69[-v20];
  v72 = sub_24AE08718();
  v21 = *(v72 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v72);
  v24 = &v69[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a3[5];
  v113 = a3[4];
  v114 = v25;
  v26 = a3[7];
  v115 = a3[6];
  v116 = v26;
  v27 = a3[1];
  v110[0] = *a3;
  v110[1] = v27;
  v28 = a3[3];
  v111 = a3[2];
  v112 = v28;
  v29 = *a7;
  v121 = v113;
  v122 = v25;
  v123 = v115;
  v124 = v26;
  v117 = v110[0];
  v118 = v27;
  v119 = v111;
  v120 = v28;
  if (sub_24ADA5794(&v117) == 1)
  {
    if (a4)
    {
      v30 = v72;
      if (a5)
      {
        v31 = v75;
        if (qword_27EFA86A0 != -1)
        {
          swift_once();
        }

        v32 = qword_27EFA9EA0;
LABEL_20:
        v67 = __swift_project_value_buffer(v30, v32);
        v68 = v73;
        (*(v21 + 16))(v73, v67, v30);
        (*(v21 + 56))(v68, 0, 1, v30);
        v57 = *(v74 + 56);
        v58 = v76;
        v59 = 1;
        return v57(v58, v59, 1, v31);
      }
    }

    else
    {
      v30 = v72;
      if (a5)
      {
        if (qword_27EFA86A8 != -1)
        {
          swift_once();
        }

        v52 = __swift_project_value_buffer(v30, qword_27EFA9EB8);
        v53 = *(v21 + 16);
        v54 = v73;
        v53(v73, v52, v30);
        (*(v21 + 56))(v54, 0, 1, v30);
        if (qword_27EFA86B0 != -1)
        {
          swift_once();
        }

        v55 = __swift_project_value_buffer(v30, qword_27EFA9ED0);
        v56 = v76;
        v53(v76, v55, v30);
        v31 = v75;
        swift_storeEnumTagMultiPayload();
        v57 = *(v74 + 56);
        v58 = v56;
        v59 = 0;
        return v57(v58, v59, 1, v31);
      }
    }

    v31 = v75;
    if (qword_27EFA86B8 != -1)
    {
      swift_once();
    }

    v32 = qword_27EFA9EE8;
    goto LABEL_20;
  }

  v97 = v122;
  v98 = v123;
  v99 = v124;
  v93 = v118;
  v94 = v119;
  v95 = v120;
  v96 = v121;
  v33 = v117;
  sub_24AD92B7C(v110, &v101, &qword_27EFA9F18, &unk_24AE102B0);
  sub_24AD9B858(&v118, &v101);
  [v33 horizontalAccuracy];
  LOBYTE(v101) = v29;
  sub_24ADE7D84(v34 > 200.0, &v101, v24);
  v109[4] = v97;
  v109[5] = v98;
  v109[6] = v99;
  v109[0] = v93;
  v109[1] = v94;
  v109[2] = v95;
  v109[3] = v96;
  sub_24ADA6B3C(v109);
  if (v70)
  {
    v81 = v121;
    v82 = v122;
    v83 = v123;
    v84 = v124;
    v77 = v117;
    v78 = v118;
    v79 = v119;
    v80 = v120;
    PublishedLocation.timestamp.getter(v14);
    sub_24ADDC708(v14, v19);
    v35 = &v19[*(MyRelativeDate + 20)];
    v36 = v35[5];
    v37 = v35[3];
    v88 = v35[4];
    v89 = v36;
    v38 = v35[5];
    v39 = v35[7];
    v90 = v35[6];
    v91 = v39;
    v40 = v35[1];
    v41 = v35[3];
    v86 = v35[2];
    v87 = v41;
    v42 = v35[1];
    v85[0] = *v35;
    v85[1] = v42;
    v105 = v88;
    v106 = v38;
    v43 = v35[7];
    v107 = v90;
    v108 = v43;
    v101 = v85[0];
    v102 = v40;
    v103 = v86;
    v104 = v37;
    sub_24ADDC298(v85, &v93);
    FindMyRelativeDate.RecencyKey.forceNowLabels()(&v93);
    sub_24AD92BE4(v110, &qword_27EFA9F18, &unk_24AE102B0);
    sub_24ADEACB8(v14);
    v92[4] = v105;
    v92[5] = v106;
    v92[6] = v107;
    v92[7] = v108;
    v92[0] = v101;
    v92[1] = v102;
    v92[2] = v103;
    v92[3] = v104;
    sub_24ADDC350(v92);
    v44 = v35[5];
    v105 = v35[4];
    v106 = v44;
    v45 = v35[7];
    v107 = v35[6];
    v108 = v45;
    v46 = v35[1];
    v101 = *v35;
    v102 = v46;
    v47 = v35[3];
    v103 = v35[2];
    v104 = v47;
    sub_24ADDC350(&v101);
    v48 = v98;
    v35[4] = v97;
    v35[5] = v48;
    v49 = v100;
    v35[6] = v99;
    v35[7] = v49;
    v50 = v94;
    *v35 = v93;
    v35[1] = v50;
    v51 = v96;
    v35[2] = v95;
    v35[3] = v51;
  }

  else
  {
    v105 = v121;
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v101 = v117;
    v102 = v118;
    v103 = v119;
    v104 = v120;
    PublishedLocation.timestamp.getter(v19);
    sub_24AD92BE4(v110, &qword_27EFA9F18, &unk_24AE102B0);
  }

  v60 = v75;
  swift_storeEnumTagMultiPayload();
  v61 = v71;
  sub_24ADEAC54(v19, v71);
  v62 = v73;
  v63 = v24;
  v64 = v72;
  (*(v21 + 32))(v73, v63, v72);
  (*(v21 + 56))(v62, 0, 1, v64);
  v65 = v76;
  sub_24ADEAC54(v61, v76);
  return (*(v74 + 56))(v65, 0, 1, v60);
}

uint64_t static PublishedLocation.Label.threeComponentsInfo(_:isLocating:isAbleToPerformLocate:forceNowRecencyKey:detailLevel:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, char a5, char a6, int a7, char *a8)
{
  v79 = a7;
  v85 = a3;
  v82 = a2;
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  v13 = *(*(MyRelativeDate - 8) + 64);
  MEMORY[0x28223BE20](MyRelativeDate);
  v78 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RelativeDateOrString();
  v83 = *(v15 - 8);
  v84 = v15;
  v16 = *(v83 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v81 = &v76 - v19;
  v20 = sub_24AE08718();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v76 - v27;
  v29 = a4[5];
  v122 = a4[4];
  v123 = v29;
  v30 = a4[7];
  v124 = a4[6];
  v125 = v30;
  v31 = a4[1];
  v119[0] = *a4;
  v119[1] = v31;
  v32 = a4[3];
  v120 = a4[2];
  v121 = v32;
  v33 = *a8;
  v130 = v122;
  v131 = v29;
  v132 = v124;
  v133 = v30;
  v126 = v119[0];
  v127 = v31;
  v128 = v120;
  v129 = v32;
  if (sub_24ADA5794(&v126) == 1)
  {
    v34 = *(v21 + 56);
    v34(a1, 1, 1, v20);
    if (a5 & 1) != 0 && (a6)
    {
      if (qword_27EFA86A0 != -1)
      {
        swift_once();
      }

      v35 = __swift_project_value_buffer(v20, qword_27EFA9EA0);
      v36 = v82;
      (*(v21 + 16))(v82, v35, v20);
      v34(v36, 0, 1, v20);
      return (*(v83 + 56))(v85, 1, 1, v84);
    }

    else
    {
      if (a6)
      {
        if (qword_27EFA86A8 != -1)
        {
          swift_once();
        }

        v60 = __swift_project_value_buffer(v20, qword_27EFA9EB8);
        v61 = *(v21 + 16);
        v62 = v82;
        v61(v82, v60, v20);
        v34(v62, 0, 1, v20);
        if (qword_27EFA86B0 != -1)
        {
          swift_once();
        }

        v63 = __swift_project_value_buffer(v20, qword_27EFA9ED0);
        v64 = v85;
        v61(v85, v63, v20);
        v65 = v84;
        swift_storeEnumTagMultiPayload();
        v66 = *(v83 + 56);
        v67 = v64;
        v68 = 0;
      }

      else
      {
        v65 = v84;
        if (qword_27EFA86B8 != -1)
        {
          swift_once();
        }

        v74 = __swift_project_value_buffer(v20, qword_27EFA9EE8);
        v75 = v82;
        (*(v21 + 16))(v82, v74, v20);
        v34(v75, 0, 1, v20);
        v66 = *(v83 + 56);
        v67 = v85;
        v68 = 1;
      }

      return v66(v67, v68, 1, v65);
    }
  }

  else
  {
    v106 = v131;
    v107 = v132;
    v108 = v133;
    v102 = v127;
    v103 = v128;
    v104 = v129;
    v105 = v130;
    v38 = v126;
    sub_24AD92B7C(v119, &v110, &qword_27EFA9F18, &unk_24AE102B0);
    sub_24AD9B858(&v127, &v110);
    [v38 horizontalAccuracy];
    LOBYTE(v110) = v33;
    sub_24ADE81F8(v28, v24, v39 > 200.0, &v110);
    v118[4] = v106;
    v118[5] = v107;
    v118[6] = v108;
    v118[0] = v102;
    v118[1] = v103;
    v118[2] = v104;
    v118[3] = v105;
    sub_24ADA6B3C(v118);
    v40 = v28;
    if (v79)
    {
      v90 = v130;
      v91 = v131;
      v92 = v132;
      v93 = v133;
      v86 = v126;
      v87 = v127;
      v88 = v128;
      v89 = v129;
      v41 = v78;
      PublishedLocation.timestamp.getter(v78);
      v42 = v80;
      sub_24ADDC708(v41, v80);
      v43 = (v42 + *(MyRelativeDate + 20));
      v44 = v43[5];
      v45 = v43[3];
      v97 = v43[4];
      v98 = v44;
      v46 = v43[5];
      v47 = v43[7];
      v99 = v43[6];
      v100 = v47;
      v48 = v43[1];
      v49 = v43[3];
      v95 = v43[2];
      v96 = v49;
      v50 = v43[1];
      v94[0] = *v43;
      v94[1] = v50;
      v114 = v97;
      v115 = v46;
      v51 = v43[7];
      v116 = v99;
      v117 = v51;
      v110 = v94[0];
      v111 = v48;
      v112 = v95;
      v113 = v45;
      sub_24ADDC298(v94, &v102);
      FindMyRelativeDate.RecencyKey.forceNowLabels()(&v102);
      sub_24AD92BE4(v119, &qword_27EFA9F18, &unk_24AE102B0);
      sub_24ADEACB8(v41);
      v101[4] = v114;
      v101[5] = v115;
      v101[6] = v116;
      v101[7] = v117;
      v101[0] = v110;
      v101[1] = v111;
      v101[2] = v112;
      v101[3] = v113;
      sub_24ADDC350(v101);
      v52 = v43[5];
      v114 = v43[4];
      v115 = v52;
      v53 = v43[7];
      v116 = v43[6];
      v117 = v53;
      v54 = v43[1];
      v110 = *v43;
      v111 = v54;
      v55 = v43[3];
      v112 = v43[2];
      v113 = v55;
      sub_24ADDC350(&v110);
      v56 = v107;
      v43[4] = v106;
      v43[5] = v56;
      v57 = v109;
      v43[6] = v108;
      v43[7] = v57;
      v58 = v103;
      *v43 = v102;
      v43[1] = v58;
      v59 = v105;
      v43[2] = v104;
      v43[3] = v59;
    }

    else
    {
      v114 = v130;
      v115 = v131;
      v116 = v132;
      v117 = v133;
      v110 = v126;
      v111 = v127;
      v112 = v128;
      v113 = v129;
      v42 = v80;
      PublishedLocation.timestamp.getter(v80);
      sub_24AD92BE4(v119, &qword_27EFA9F18, &unk_24AE102B0);
    }

    v69 = v84;
    swift_storeEnumTagMultiPayload();
    v70 = v42;
    v71 = v81;
    sub_24ADEAC54(v70, v81);
    sub_24ADD0C6C(v40, a1);
    v72 = v82;
    (*(v21 + 32))(v82, v24, v20);
    (*(v21 + 56))(v72, 0, 1, v20);
    v73 = v85;
    sub_24ADEAC54(v71, v85);
    return (*(v83 + 56))(v73, 0, 1, v69);
  }
}

uint64_t PublishedLocation.Label.DetailLevel.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t PublishedLocation.Label.Length.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t _s10FindMyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v79 = a1[10];
  v13 = a1[11];
  v12 = a1[12];
  v81 = a1[13];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  v78 = a2[12];
  v80 = a2[13];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v72 = a2[6];
      v75 = a2[7];
      v62 = a1[11];
      v63 = a2[11];
      v68 = a1[4];
      v70 = a1[12];
      v64 = a2[4];
      v66 = a2[5];
      v25 = a2[10];
      v26 = a1[8];
      v27 = a1[9];
      v60 = a2[2];
      v61 = a1[2];
      v28 = a2[8];
      v29 = a1[7];
      v30 = a1[5];
      v31 = sub_24AE097C8();
      v7 = v30;
      v18 = v72;
      v20 = v75;
      v10 = v29;
      v21 = v28;
      v15 = v60;
      v4 = v61;
      v11 = v27;
      v9 = v26;
      v22 = v25;
      v19 = v66;
      v5 = v68;
      v12 = v70;
      v13 = v62;
      v24 = v63;
      v16 = v64;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v73 = v18;
      v76 = v20;
      v69 = v5;
      v71 = v12;
      v65 = v16;
      v67 = v19;
      v32 = v22;
      v33 = v9;
      v34 = v11;
      v35 = v23;
      v36 = v21;
      v37 = v10;
      v38 = v7;
      v39 = sub_24AE097C8();
      v7 = v38;
      v18 = v73;
      v20 = v76;
      v10 = v37;
      v21 = v36;
      v23 = v35;
      v11 = v34;
      v9 = v33;
      v16 = v65;
      v22 = v32;
      v19 = v67;
      v5 = v69;
      v12 = v71;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v7 != v19)
    {
      v74 = v18;
      v77 = v20;
      v40 = v12;
      v41 = v22;
      v42 = v9;
      v43 = v11;
      v44 = v23;
      v45 = v21;
      v46 = v10;
      v47 = sub_24AE097C8();
      v18 = v74;
      v20 = v77;
      v10 = v46;
      v21 = v45;
      v23 = v44;
      v11 = v43;
      v9 = v42;
      v22 = v41;
      v12 = v40;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v10)
  {
    if (!v20)
    {
      return 0;
    }

    if (v8 != v18 || v10 != v20)
    {
      v48 = v12;
      v49 = v22;
      v50 = v9;
      v51 = v11;
      v52 = v21;
      v53 = sub_24AE097C8();
      v21 = v52;
      v11 = v51;
      v9 = v50;
      v22 = v49;
      v12 = v48;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v11)
  {
    if (!v23)
    {
      return 0;
    }

    if (v9 != v21 || v11 != v23)
    {
      v54 = v12;
      v55 = v22;
      v56 = sub_24AE097C8();
      v22 = v55;
      v12 = v54;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v13)
  {
    if (!v24)
    {
      return 0;
    }

    if (v79 != v22 || v13 != v24)
    {
      v57 = v12;
      v58 = sub_24AE097C8();
      v12 = v57;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v81)
  {
    if (v80 && (v12 == v78 && v81 == v80 || (sub_24AE097C8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v80)
  {
    return 1;
  }

  return 0;
}

uint64_t _s10FindMyCore17PublishedLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a1 + 96);
  v39 = *(a1 + 80);
  v40 = v5;
  v41 = *(a1 + 112);
  v6 = *(a1 + 32);
  v35 = *(a1 + 16);
  v36 = v6;
  v7 = *(a1 + 64);
  v37 = *(a1 + 48);
  v38 = v7;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *(a2 + 96);
  v46 = *(a2 + 80);
  v47 = v11;
  v48 = *(a2 + 112);
  v12 = *(a2 + 32);
  v42 = *(a2 + 16);
  v43 = v12;
  v13 = *(a2 + 64);
  v44 = *(a2 + 48);
  v45 = v13;
  sub_24ADDFF38();
  v14 = v2;
  v15 = v8;
  v16 = sub_24AE09418();

  if (v16 & 1) != 0 && (sub_24ADF69B0(v3, v9) & 1) != 0 && (sub_24ADF6B80(v4, v10))
  {
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    v23 = v46;
    v24 = v47;
    v25 = v48;
    v19 = v42;
    v20 = v43;
    v21 = v44;
    v22 = v45;
    MyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0 = _s10FindMyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0(&v26, &v19);
    v33[4] = v23;
    v33[5] = v24;
    v33[6] = v25;
    v33[0] = v19;
    v33[1] = v20;
    v33[2] = v21;
    v33[3] = v22;
    sub_24AD9B858(&v35, v34);
    sub_24AD9B858(&v42, v34);
    sub_24ADA6B3C(v33);
    v34[4] = v30;
    v34[5] = v31;
    v34[6] = v32;
    v34[0] = v26;
    v34[1] = v27;
    v34[2] = v28;
    v34[3] = v29;
    sub_24ADA6B3C(v34);
  }

  else
  {
    MyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0 = 0;
  }

  return MyCore17PublishedLocationV5LabelV2eeoiySbAE_AEtFZ_0 & 1;
}

uint64_t sub_24ADEAC54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelativeDateOrString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADEACB8(uint64_t a1)
{
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  (*(*(MyRelativeDate - 8) + 8))(a1, MyRelativeDate);
  return a1;
}

unint64_t sub_24ADEAD18()
{
  result = qword_27EFA9F20;
  if (!qword_27EFA9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F20);
  }

  return result;
}

unint64_t sub_24ADEAD70()
{
  result = qword_27EFA9F28;
  if (!qword_27EFA9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F28);
  }

  return result;
}

unint64_t sub_24ADEADC8()
{
  result = qword_27EFA9F30;
  if (!qword_27EFA9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F30);
  }

  return result;
}

unint64_t sub_24ADEAE20()
{
  result = qword_27EFA9F38;
  if (!qword_27EFA9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F38);
  }

  return result;
}

unint64_t sub_24ADEAE78()
{
  result = qword_27EFA9F40;
  if (!qword_27EFA9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F40);
  }

  return result;
}

unint64_t sub_24ADEAED0()
{
  result = qword_27EFA9F48;
  if (!qword_27EFA9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9F48);
  }

  return result;
}

uint64_t sub_24ADEAF24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_24ADEAF6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ADEAFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_24ADEB058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s10FindMyCore20RelativeDateOrStringO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_24AE08718();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  v8 = *(*(MyRelativeDate - 8) + 64);
  MEMORY[0x28223BE20](MyRelativeDate);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RelativeDateOrString();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9F60, "TX");
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v48 - v20;
  v22 = *(v19 + 56);
  sub_24ADEB6E0(a1, &v48 - v20);
  sub_24ADEB6E0(v51, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_24ADEB6E0(v21, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = &v21[v22];
      v26 = v50;
      sub_24ADEB80C(v25, v50);
      if (sub_24AE088C8())
      {
        v27 = &v16[*(MyRelativeDate + 20)];
        v28 = *(v27 + 5);
        v29 = *(v27 + 3);
        v72 = *(v27 + 4);
        v73 = v28;
        v30 = *(v27 + 5);
        v31 = *(v27 + 7);
        v74 = *(v27 + 6);
        v75 = v31;
        v32 = *(v27 + 1);
        v69[0] = *v27;
        v69[1] = v32;
        v33 = *(v27 + 3);
        v35 = *v27;
        v34 = *(v27 + 1);
        v70 = *(v27 + 2);
        v71 = v33;
        v65 = v72;
        v66 = v30;
        v36 = *(v27 + 7);
        v67 = v74;
        v68 = v36;
        v63 = v70;
        v64 = v29;
        v61 = v35;
        v62 = v34;
        v37 = (v26 + *(MyRelativeDate + 20));
        v38 = v37[5];
        v39 = v37[3];
        v79 = v37[4];
        v80 = v38;
        v40 = v37[5];
        v41 = v37[7];
        v81 = v37[6];
        v82 = v41;
        v42 = v37[1];
        v43 = v37[3];
        v77 = v37[2];
        v78 = v43;
        v44 = v37[1];
        v76[0] = *v37;
        v76[1] = v44;
        v57 = v79;
        v58 = v40;
        v45 = v37[7];
        v59 = v81;
        v60 = v45;
        v53 = v76[0];
        v54 = v42;
        v55 = v77;
        v56 = v39;
        sub_24ADDC298(v69, v52);
        sub_24ADDC298(v76, v52);
        MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0 = _s10FindMyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0(&v61, &v53);
        sub_24ADEB7AC(v26, type metadata accessor for FindMyRelativeDate);
        v83[4] = v57;
        v83[5] = v58;
        v83[6] = v59;
        v83[7] = v60;
        v83[0] = v53;
        v83[1] = v54;
        v83[2] = v55;
        v83[3] = v56;
        sub_24ADDC350(v83);
        v84[4] = v65;
        v84[5] = v66;
        v84[6] = v67;
        v84[7] = v68;
        v84[0] = v61;
        v84[1] = v62;
        v84[2] = v63;
        v84[3] = v64;
        sub_24ADDC350(v84);
        if (MyCore0aB12RelativeDateV10RecencyKeyV2eeoiySbAE_AEtFZ_0)
        {
          sub_24ADEB7AC(v16, type metadata accessor for FindMyRelativeDate);
          sub_24ADEB7AC(v21, type metadata accessor for RelativeDateOrString);
          v23 = 1;
          return v23 & 1;
        }
      }

      else
      {
        sub_24ADEB7AC(v26, type metadata accessor for FindMyRelativeDate);
      }

      sub_24ADEB7AC(v16, type metadata accessor for FindMyRelativeDate);
      sub_24ADEB7AC(v21, type metadata accessor for RelativeDateOrString);
LABEL_13:
      v23 = 0;
      return v23 & 1;
    }

    sub_24ADEB7AC(v16, type metadata accessor for FindMyRelativeDate);
LABEL_7:
    sub_24ADEB744(v21);
    goto LABEL_13;
  }

  sub_24ADEB6E0(v21, v14);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v14, v3);
    goto LABEL_7;
  }

  (*(v4 + 32))(v7, &v21[v22], v3);
  v23 = MEMORY[0x24C230640](v14, v7);
  v24 = *(v4 + 8);
  v24(v7, v3);
  v24(v14, v3);
  sub_24ADEB7AC(v21, type metadata accessor for RelativeDateOrString);
  return v23 & 1;
}

uint64_t type metadata accessor for RelativeDateOrString()
{
  result = qword_27EFA9F50;
  if (!qword_27EFA9F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADEB66C()
{
  result = type metadata accessor for FindMyRelativeDate();
  if (v1 <= 0x3F)
  {
    result = sub_24AE08718();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24ADEB6E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelativeDateOrString();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADEB744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9F60, "TX");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADEB7AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ADEB80C(uint64_t a1, uint64_t a2)
{
  MyRelativeDate = type metadata accessor for FindMyRelativeDate();
  (*(*(MyRelativeDate - 8) + 32))(a2, a1, MyRelativeDate);
  return a2;
}

uint64_t Symbol.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24AE08288();
  return v1;
}

uint64_t Symbol.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Symbol.systemSymbol.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_24AE08288();
  return v1;
}

uint64_t Symbol.systemSymbol.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Symbol.Color.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t Symbol.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  return MEMORY[0x24C231780](v6);
}

uint64_t Symbol.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  MEMORY[0x24C231780](v6);
  return sub_24AE09868();
}

uint64_t sub_24ADEBBFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  MEMORY[0x24C231780](v6);
  return sub_24AE09868();
}

uint64_t sub_24ADEBC94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  return MEMORY[0x24C231780](v6);
}

uint64_t sub_24ADEBCFC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  sub_24AE09838();
  sub_24AE09048();
  sub_24AE09048();
  sub_24AE09858();
  MEMORY[0x24C231780](v6);
  return sub_24AE09868();
}

void sub_24ADEBD94()
{
  qword_27EFA9F68 = 0;
  unk_27EFA9F70 = 0xE000000000000000;
  qword_27EFA9F78 = 0;
  unk_27EFA9F80 = 0xE000000000000000;
  word_27EFA9F88 = 256;
}

uint64_t static Symbol.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86C8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFA9F70;
  v2 = qword_27EFA9F78;
  v3 = unk_27EFA9F80;
  v4 = word_27EFA9F88;
  v5 = HIBYTE(word_27EFA9F88);
  *a1 = qword_27EFA9F68;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEBE48()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9F90 = v8;
  *algn_27EFA9F98 = v10;
  qword_27EFA9FA0 = 0x796D646E6966;
  unk_27EFA9FA8 = 0xE600000000000000;
  word_27EFA9FB0 = 256;
}

uint64_t static Symbol.findmy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86D0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFA9F98;
  v2 = qword_27EFA9FA0;
  v3 = unk_27EFA9FA8;
  v4 = word_27EFA9FB0;
  v5 = HIBYTE(word_27EFA9FB0);
  *a1 = qword_27EFA9F90;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC04C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9FB8 = v8;
  unk_27EFA9FC0 = v10;
  qword_27EFA9FC8 = 0x662E656C63726963;
  unk_27EFA9FD0 = 0xEB000000006C6C69;
  word_27EFA9FD8 = 1536;
}

uint64_t static Symbol.notification.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86D8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFA9FC0;
  v2 = qword_27EFA9FC8;
  v3 = unk_27EFA9FD0;
  v4 = word_27EFA9FD8;
  v5 = HIBYTE(word_27EFA9FD8);
  *a1 = qword_27EFA9FB8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC25C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFA9FE0 = v8;
  *algn_27EFA9FE8 = v10;
  qword_27EFA9FF0 = 1918989427;
  unk_27EFA9FF8 = 0xE400000000000000;
  word_27EFAA000 = 513;
}

uint64_t static Symbol.favorite.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86E0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFA9FE8;
  v2 = qword_27EFA9FF0;
  v3 = unk_27EFA9FF8;
  v4 = word_27EFAA000;
  v5 = HIBYTE(word_27EFAA000);
  *a1 = qword_27EFA9FE0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC45C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA008 = v8;
  unk_27EFAA010 = v10;
  qword_27EFAA018 = 0x72656D6974;
  unk_27EFAA020 = 0xE500000000000000;
  word_27EFAA028 = 769;
}

uint64_t static Symbol.temporary.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86E8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA010;
  v2 = qword_27EFAA018;
  v3 = unk_27EFAA020;
  v4 = word_27EFAA028;
  v5 = HIBYTE(word_27EFAA028);
  *a1 = qword_27EFAA008;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC660()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA030 = v8;
  *algn_27EFAA038 = v10;
  qword_27EFAA040 = 0x616C732E6C6C6562;
  unk_27EFAA048 = 0xEA00000000006873;
  word_27EFAA050 = 2049;
}

uint64_t static Symbol.mute.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86F0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA038;
  v2 = qword_27EFAA040;
  v3 = unk_27EFAA048;
  v4 = word_27EFAA050;
  v5 = HIBYTE(word_27EFAA050);
  *a1 = qword_27EFAA030;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEC86C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA058 = v8;
  unk_27EFAA060 = v10;
  qword_27EFAA068 = 0xD000000000000010;
  unk_27EFAA070 = 0x800000024AE13C80;
  word_27EFAA078 = 1;
}

uint64_t static Symbol.satellite.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA86F8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA060;
  v2 = qword_27EFAA068;
  v3 = unk_27EFAA070;
  v4 = word_27EFAA078;
  v5 = HIBYTE(word_27EFAA078);
  *a1 = qword_27EFAA058;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADECA80()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA080 = v8;
  *algn_27EFAA088 = v10;
  qword_27EFAA090 = 0x772E657275676966;
  unk_27EFAA098 = 0xEB000000006B6C61;
  word_27EFAA0A0 = 2561;
}

uint64_t static Symbol.walking.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8700 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA088;
  v2 = qword_27EFAA090;
  v3 = unk_27EFAA098;
  v4 = word_27EFAA0A0;
  v5 = HIBYTE(word_27EFAA0A0);
  *a1 = qword_27EFAA080;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADECC90()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA0A8 = v8;
  unk_27EFAA0B0 = v10;
  qword_27EFAA0B8 = 0x722E657275676966;
  unk_27EFAA0C0 = 0xEA00000000006E75;
  word_27EFAA0C8 = 2561;
}

uint64_t static Symbol.running.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8708 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA0B0;
  v2 = qword_27EFAA0B8;
  v3 = unk_27EFAA0C0;
  v4 = word_27EFAA0C8;
  v5 = HIBYTE(word_27EFAA0C8);
  *a1 = qword_27EFAA0A8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADECE9C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA0D0 = v8;
  *algn_27EFAA0D8 = v10;
  qword_27EFAA0E0 = 0x656C6379636962;
  unk_27EFAA0E8 = 0xE700000000000000;
  word_27EFAA0F0 = 2561;
}

uint64_t static Symbol.cycling.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8710 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA0D8;
  v2 = qword_27EFAA0E0;
  v3 = unk_27EFAA0E8;
  v4 = word_27EFAA0F0;
  v5 = HIBYTE(word_27EFAA0F0);
  *a1 = qword_27EFAA0D0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED0A4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA0F8 = v8;
  unk_27EFAA100 = v10;
  qword_27EFAA108 = 7496035;
  unk_27EFAA110 = 0xE300000000000000;
  word_27EFAA118 = 2561;
}

uint64_t static Symbol.automotive.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8718 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA100;
  v2 = qword_27EFAA108;
  v3 = unk_27EFAA110;
  v4 = word_27EFAA118;
  v5 = HIBYTE(word_27EFAA118);
  *a1 = qword_27EFAA0F8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED2A4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA120 = v8;
  *algn_27EFAA128 = v10;
  qword_27EFAA130 = 1835102836;
  unk_27EFAA138 = 0xE400000000000000;
  word_27EFAA140 = 2561;
}

uint64_t static Symbol.transit.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8720 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA128;
  v2 = qword_27EFAA130;
  v3 = unk_27EFAA138;
  v4 = word_27EFAA140;
  v5 = HIBYTE(word_27EFAA140);
  *a1 = qword_27EFAA120;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED4A4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA148 = v8;
  unk_27EFAA150 = v10;
  qword_27EFAA158 = 0x632E6E6F73726570;
  unk_27EFAA160 = 0xEB00000000706F72;
  word_27EFAA168 = 1281;
}

uint64_t static Symbol.contact.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8728 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA150;
  v2 = qword_27EFAA158;
  v3 = unk_27EFAA160;
  v4 = word_27EFAA168;
  v5 = HIBYTE(word_27EFAA168);
  *a1 = qword_27EFAA148;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED6B4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA170 = v8;
  *algn_27EFAA178 = v10;
  qword_27EFAA180 = 1868983913;
  unk_27EFAA188 = 0xE400000000000000;
  word_27EFAA190 = 769;
}

uint64_t static Symbol.info.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8730 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA178;
  v2 = qword_27EFAA180;
  v3 = unk_27EFAA188;
  v4 = word_27EFAA190;
  v5 = HIBYTE(word_27EFAA190);
  *a1 = qword_27EFAA170;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADED8B4()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA198 = v8;
  unk_27EFAA1A0 = v10;
  qword_27EFAA1A8 = 0xD000000000000020;
  unk_27EFAA1B0 = 0x800000024AE13D40;
  word_27EFAA1B8 = 1025;
}

uint64_t static Symbol.directions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8738 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA1A0;
  v2 = qword_27EFAA1A8;
  v3 = unk_27EFAA1B0;
  v4 = word_27EFAA1B8;
  v5 = HIBYTE(word_27EFAA1B8);
  *a1 = qword_27EFAA198;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEDACC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA1C0 = v8;
  *algn_27EFAA1C8 = v10;
  qword_27EFAA1D0 = 0xD000000000000018;
  unk_27EFAA1D8 = 0x800000024AE13B40;
  word_27EFAA1E0 = 1024;
}

uint64_t static Symbol.locationSlash.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8740 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA1C8;
  v2 = qword_27EFAA1D0;
  v3 = unk_27EFAA1D8;
  v4 = word_27EFAA1E0;
  v5 = HIBYTE(word_27EFAA1E0);
  *a1 = qword_27EFAA1C0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEDCDC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA1E8 = v8;
  unk_27EFAA1F0 = v10;
  qword_27EFAA1F8 = 0xD000000000000017;
  unk_27EFAA200 = 0x800000024AE13AF0;
  word_27EFAA208 = 2560;
}

uint64_t static Symbol.batteryChargingFull.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8748 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA1F0;
  v2 = qword_27EFAA1F8;
  v3 = unk_27EFAA200;
  v4 = word_27EFAA208;
  v5 = HIBYTE(word_27EFAA208);
  *a1 = qword_27EFAA1E8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEDEEC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA210 = v8;
  *algn_27EFAA218 = v10;
  qword_27EFAA220 = 0xD000000000000011;
  unk_27EFAA228 = 0x800000024AE13AA0;
  word_27EFAA230 = 2560;
}

uint64_t static Symbol.batteryCharging.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8750 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA218;
  v2 = qword_27EFAA220;
  v3 = unk_27EFAA228;
  v4 = word_27EFAA230;
  v5 = HIBYTE(word_27EFAA230);
  *a1 = qword_27EFAA210;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE0FC()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA238 = v8;
  unk_27EFAA240 = v10;
  qword_27EFAA248 = 0xD000000000000011;
  unk_27EFAA250 = 0x800000024AE13A50;
  word_27EFAA258 = 2560;
}

uint64_t static Symbol.batteryThreeQuarters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8758 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA240;
  v2 = qword_27EFAA248;
  v3 = unk_27EFAA250;
  v4 = word_27EFAA258;
  v5 = HIBYTE(word_27EFAA258);
  *a1 = qword_27EFAA238;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE30C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA260 = v8;
  *algn_27EFAA268 = v10;
  qword_27EFAA270 = 0xD000000000000011;
  unk_27EFAA278 = 0x800000024AE13A00;
  word_27EFAA280 = 2560;
}

uint64_t static Symbol.batteryHalf.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8760 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA268;
  v2 = qword_27EFAA270;
  v3 = unk_27EFAA278;
  v4 = word_27EFAA280;
  v5 = HIBYTE(word_27EFAA280);
  *a1 = qword_27EFAA260;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE51C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA288 = v8;
  unk_27EFAA290 = v10;
  qword_27EFAA298 = 0xD000000000000011;
  unk_27EFAA2A0 = 0x800000024AE13990;
  word_27EFAA2A8 = 2560;
}

uint64_t static Symbol.batteryQuarter.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8768 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA290;
  v2 = qword_27EFAA298;
  v3 = unk_27EFAA2A0;
  v4 = word_27EFAA2A8;
  v5 = HIBYTE(word_27EFAA2A8);
  *a1 = qword_27EFAA288;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE72C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA2B0 = v8;
  *algn_27EFAA2B8 = v10;
  qword_27EFAA2C0 = 0xD000000000000011;
  unk_27EFAA2C8 = 0x800000024AE13990;
  word_27EFAA2D0 = 768;
}

uint64_t static Symbol.batteryLow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8770 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA2B8;
  v2 = qword_27EFAA2C0;
  v3 = unk_27EFAA2C8;
  v4 = word_27EFAA2D0;
  v5 = HIBYTE(word_27EFAA2D0);
  *a1 = qword_27EFAA2B0;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEE93C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA2D8 = v8;
  unk_27EFAA2E0 = v10;
  qword_27EFAA2E8 = 0xD000000000000010;
  unk_27EFAA2F0 = 0x800000024AE13950;
  word_27EFAA2F8 = 1536;
}

uint64_t static Symbol.batteryVeryLow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8778 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA2E0;
  v2 = qword_27EFAA2E8;
  v3 = unk_27EFAA2F0;
  v4 = word_27EFAA2F8;
  v5 = HIBYTE(word_27EFAA2F8);
  *a1 = qword_27EFAA2D8;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEEB4C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA300 = v8;
  *algn_27EFAA308 = v10;
  qword_27EFAA310 = 2036427888;
  unk_27EFAA318 = 0xE400000000000000;
  word_27EFAA320 = 1793;
}

uint64_t static Symbol.sound.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8780 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA308;
  v2 = qword_27EFAA310;
  v3 = unk_27EFAA318;
  v4 = word_27EFAA320;
  v5 = HIBYTE(word_27EFAA320);
  *a1 = qword_27EFAA300;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEED4C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA328 = v8;
  unk_27EFAA330 = v10;
  strcpy(&qword_27EFAA338, "questionmark");
  unk_27EFAA345 = 0;
  unk_27EFAA346 = -5120;
  word_27EFAA348 = 769;
}

uint64_t static Symbol.questionMark.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8788 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_27EFAA330;
  v2 = qword_27EFAA338;
  v3 = unk_27EFAA340;
  v4 = word_27EFAA348;
  v5 = HIBYTE(word_27EFAA348);
  *a1 = qword_27EFAA328;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEEF5C()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA350 = v8;
  *algn_27EFAA358 = v10;
  qword_27EFAA360 = 0x74616D616C637865;
  unk_27EFAA368 = 0xEF6B72616D6E6F69;
  word_27EFAA370 = 769;
}

uint64_t static Symbol.exclamationMark.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8790 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_27EFAA358;
  v2 = qword_27EFAA360;
  v3 = unk_27EFAA368;
  v4 = word_27EFAA370;
  v5 = HIBYTE(word_27EFAA370);
  *a1 = qword_27EFAA350;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 33) = v5;
  sub_24AE08288();

  return sub_24AE08288();
}

void sub_24ADEF170()
{
  if (qword_27EFA8800 != -1)
  {
    swift_once();
  }

  v0 = qword_27EFB76F0;
  if (qword_27EFB76F0)
  {
    sub_24AE08288();
    v1 = v0;
    v2 = v1;
  }

  else
  {
    v3 = objc_opt_self();
    sub_24AE08288();
    v2 = [v3 mainBundle];
    v1 = 0;
  }

  v4 = v1;
  v5 = sub_24AE08F88();
  v6 = sub_24AE08F88();
  v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_24AE08FB8();
  v10 = v9;

  qword_27EFAA378 = v8;
  unk_27EFAA380 = v10;
  qword_27EFAA388 = 0x322E6E6F73726570;
  unk_27EFAA390 = 0xE800000000000000;
  word_27EFAA398 = 2305;
}