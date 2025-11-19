unint64_t sub_249D4C7F4()
{
  result = qword_27EF1B0A0;
  if (!qword_27EF1B0A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1B0A0);
  }

  return result;
}

void sub_249D4C840(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_249D73444())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B6B8);
      v3 = sub_249D734C4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_249D73444();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x24C201690](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_249D73364();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_249D4C7F4();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_249D73374();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_249D73364();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_249D4C7F4();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_249D73374();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_249D4CBA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  v6 = sub_249D73804();
  MEMORY[0x24C201340](v6);

  MEMORY[0x24C201340](8254, 0xE200000000000000);
  v7 = a3(*(a1 + 16), a2);
  MEMORY[0x24C201340](v7);

  return 60;
}

uint64_t sub_249D4CC80()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249D4CCF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_249D4CE30(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t Logger.init(subsystem:category:)()
{
  sub_249D4D8E4(&v1);

  return sub_249D728E4();
}

{
  sub_249D4D8E4(&v1);

  return sub_249D728E4();
}

uint64_t sub_249D4D0B8()
{
  v0 = sub_249D728F4();
  __swift_allocate_value_buffer(v0, qword_27EF1B750);
  __swift_project_value_buffer(v0, qword_27EF1B750);
  return sub_249D728E4();
}

uint64_t logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF1AD08 != -1)
  {
    swift_once();
  }

  v2 = sub_249D728F4();
  v3 = __swift_project_value_buffer(v2, qword_27EF1B750);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Logger.Subsystem.init(rawValue:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 0x746C7561666564 && v3 == 0xE700000000000000;
  if (v5 || (sub_249D736A4() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = v4 == 0x726576697264 && v3 == 0xE600000000000000;
    if (v8 || (sub_249D736A4() & 1) != 0)
    {

      v7 = 1;
    }

    else if (v4 == 0x6974617669746361 && v3 == 0xEA00000000006E6FLL)
    {

      v7 = 2;
    }

    else
    {
      v9 = sub_249D736A4();

      if (v9)
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  *a2 = v7;
  return result;
}

void Logger.Subsystem.rawValue.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x726576697264;
  if (v2 != 1)
  {
    v5 = 0x6974617669746361;
    v4 = 0xEA00000000006E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_249D4D3C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726576697264;
  if (v2 != 1)
  {
    v4 = 0x6974617669746361;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726576697264;
  if (*a2 != 1)
  {
    v8 = 0x6974617669746361;
    v7 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_249D736A4();
  }

  return v11 & 1;
}

uint64_t sub_249D4D4C4()
{
  sub_249D73774();
  sub_249D73184();

  return sub_249D737A4();
}

uint64_t sub_249D4D568()
{
  sub_249D73184();
}

uint64_t sub_249D4D5F8()
{
  sub_249D73774();
  sub_249D73184();

  return sub_249D737A4();
}

void sub_249D4D69C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x726576697264;
  if (v2 != 1)
  {
    v5 = 0x6974617669746361;
    v4 = 0xEA00000000006E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Logger.Category.init(rawValue:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*a1 == 0x6E6F6D6D6F43 && a1[1] == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v4 = sub_249D736A4();

    v6 = v4 ^ 1;
  }

  *a2 = v6 & 1;
  return result;
}

uint64_t sub_249D4D798()
{
  sub_249D73774();
  sub_249D73184();
  return sub_249D737A4();
}

uint64_t sub_249D4D7FC()
{
  sub_249D73774();
  sub_249D73184();
  return sub_249D737A4();
}

uint64_t sub_249D4D848@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*a1 == 0x6E6F6D6D6F43 && a1[1] == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v4 = sub_249D736A4();

    v6 = v4 ^ 1;
  }

  *a2 = v6 & 1;
  return result;
}

void sub_249D4D8E4(void *a1@<X8>)
{
  v3 = *v1;
  if (v3 == 2)
  {
    v4 = 0xEA00000000006E6FLL;
    v5 = 0x6974617669746361;
  }

  else
  {
    if (v3 != 1)
    {
      *a1 = 0xD000000000000016;
      a1[1] = 0x8000000249D7A540;
      return;
    }

    v4 = 0xE600000000000000;
    v5 = 0x726576697264;
  }

  MEMORY[0x24C201340](46, 0xE100000000000000);
  MEMORY[0x24C201340](v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B110);
  sub_249D3B580();
  sub_249D736C4();
}

uint64_t OS_os_log.init(subsystem:category:)()
{
  sub_249D4D8E4(v3);
  v0 = v3[0];
  v1 = v3[1];

  return MEMORY[0x282200E98](v0, v1, 0x6E6F6D6D6F43, 0xE600000000000000);
}

uint64_t OS_os_log.init(subsystem:category:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_249D4D8E4(v7);
  v4 = v7[0];
  v5 = v7[1];

  return MEMORY[0x282200E98](v4, v5, v2, v3);
}

unint64_t sub_249D4DAE4()
{
  result = qword_27EF1B768;
  if (!qword_27EF1B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B768);
  }

  return result;
}

unint64_t sub_249D4DB3C()
{
  result = qword_27EF1B770;
  if (!qword_27EF1B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B770);
  }

  return result;
}

uint64_t _s9SubsystemOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9SubsystemOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s8CategoryOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s8CategoryOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t (*sub_249D4DE0C())(uint64_t a1)
{
  sub_249D4DE78();
  sub_249D72B44();
  *(swift_allocObject() + 16) = v1;
  return sub_249D4DF04;
}

unint64_t sub_249D4DE78()
{
  result = qword_27EF1B778;
  if (!qword_27EF1B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B778);
  }

  return result;
}

uint64_t sub_249D4DECC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t RBSProcessIdentity.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_249D38A20(0, &qword_27EF1B780);
  v2 = sub_249D4E0C8();
  v4 = v2;
  if (!v2)
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v5 identities];
  sub_249D38A20(0, &qword_27EF1B788);
  v8 = sub_249D73234();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  result = sub_249D73444();
  if (!result)
  {
LABEL_14:

LABEL_15:

    return 0;
  }

LABEL_8:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x24C201690](0, v8);
LABEL_11:
    v10 = v9;

    v11 = [swift_getObjCClassFromMetadata() identityForLSApplicationIdentity:v10 LSApplicationRecord:v6];

    if (v11)
    {

      return v11;
    }

    return 0;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_249D4E0C8()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = sub_249D73134();

  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v5];

  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_249D72824();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_249D4E1A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_249D72EA4();
}

uint64_t sub_249D4E264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = *a1;
  sub_249D73274();

  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = sub_249D4DF04;
  v7[5] = v6;

  result = swift_allocObject();
  *(result + 16) = sub_249D4EC20;
  *(result + 24) = v7;
  *a1 = sub_249D4ECB4;
  *(a1 + 8) = result;
  return result;
}

int8x16_t *sub_249D4E3C8(int8x16_t *result, uint64_t (*a2)(uint64_t))
{
  v2 = result[4].u64[0];
  if (v2 >> 61 == 5)
  {
    v3 = vorrq_s8(result[2], result[3]);
    v4 = *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL)) | result[4].i64[1] | result[5].i64[0] | result[1].i64[1];
    if (v2 == 0xA000000000000000 && v4 == 0)
    {
      return a2(result->i64[0]);
    }
  }

  return result;
}

uint64_t sub_249D4E440()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D4E4A0(uint64_t result, uint64_t (*a2)(void))
{
  v2 = *(result + 64);
  if (v2 >> 61 == 5)
  {
    v3 = vorrq_s8(*(result + 32), *(result + 48));
    v4 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
    if (*(result + 72) == 0 && v2 == 0xA000000000000000 && *(result + 24) == 1 && *&v4 == 0)
    {
      return a2(*result);
    }
  }

  return result;
}

void sub_249D4E540(uint64_t *a1, void (*a2)(uint64_t, void *))
{
  v2 = a1[8];
  if (!(v2 >> 61))
  {
    v5 = a1[6];
    v4 = a1[7];
    v7 = a1[4];
    v6 = a1[5];
    v8 = a1[3];
    v9 = *a1;
    v10 = v8;
    a2(v9, v8);

    sub_249D4EB4C(v8, v7, v6, v5, v4, v2);
  }
}

void sub_249D4E63C(uint64_t *a1, void (*a2)(uint64_t, void *))
{
  v2 = a1[8];
  if (v2 >> 61 == 1)
  {
    v5 = a1[6];
    v4 = a1[7];
    v7 = a1[4];
    v6 = a1[5];
    v8 = a1[3];
    v9 = *a1;
    v10 = v8;
    a2(v9, v8);

    sub_249D4EB4C(v8, v7, v6, v5, v4, v2);
  }
}

void sub_249D4E73C(void *a1, void (*a2)(void, void *))
{
  v2 = a1[8];
  if (v2 >> 61 == 2)
  {
    v4 = a1[6];
    v3 = a1[7];
    v6 = a1[4];
    v5 = a1[5];
    v7 = a1[3];
    a2(*a1, v7);

    sub_249D4EB4C(v7, v6, v5, v4, v3, v2);
  }
}

void *sub_249D4E83C(void *result)
{
  if (result[8] >> 61 == 3)
  {
    return (*(v1 + 16))(*result, result[3]);
  }

  return result;
}

uint64_t sub_249D4E8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_249D4E1A0(a6, v9);
}

uint64_t sub_249D4E938(uint64_t result, void (*a2)(uint64_t, void *, void *))
{
  v4 = *(result + 64);
  if (v4 >> 61 == 4)
  {
    v19 = v2;
    v20 = v3;
    v6 = *(result + 72);
    v7 = *(result + 80);
    v9 = *(result + 40);
    v8 = *(result + 48);
    v11 = *(result + 24);
    v10 = *(result + 32);
    v12 = *result;
    v13 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
    v14 = *(result + 56);
    v17[0] = v11;
    v17[1] = v10;
    v17[2] = v9;
    v17[3] = v8;
    v18 = v14;
    v16[0] = v4 & 0x1FFFFFFFFFFFFFFFLL;
    v16[1] = v6;
    v16[2] = v7;
    sub_249D4EB0C(v11, v10, v9, v8, v14);
    v15 = v13;

    a2(v12, v17, v16);

    return sub_249D4EB2C(v11, v10, v9, v8, v14);
  }

  return result;
}

uint64_t sub_249D4EA30()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B790);
  sub_249D72A74();
  sub_249D4EAA8();
  return swift_getWitnessTable();
}

unint64_t sub_249D4EAA8()
{
  result = qword_27EF1B798;
  if (!qword_27EF1B798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B798);
  }

  return result;
}

uint64_t sub_249D4EB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

uint64_t sub_249D4EB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

void sub_249D4EB4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, unint64_t a6)
{
  v7 = a6 >> 61;
  if ((a6 >> 61) <= 1)
  {
    if (v7 >= 2)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v7 == 2)
  {
LABEL_9:

    return;
  }

  if (v7 == 4)
  {
    sub_249D4EB2C(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_249D4EBE0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_249D4EC20(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v10 = *(a1 + 32);
  v11 = v2;
  v4 = *(a1 + 48);
  v12 = *(a1 + 64);
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v14[2] = v10;
  v14[3] = v4;
  v14[4] = *(a1 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 32);
  v13 = *(a1 + 80);
  v15 = *(a1 + 80);
  v14[0] = v9[0];
  v14[1] = v3;
  v6(v14);
  return v7(v9);
}

uint64_t (*Transaction.sceneTransitioner.getter())(uint64_t, uint64_t)
{
  sub_249D4EDC8();
  sub_249D72994();
  *(swift_allocObject() + 16) = v1;
  return sub_249D4EE90;
}

unint64_t sub_249D4EDC8()
{
  result = qword_27EF1B7A0[0];
  if (!qword_27EF1B7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF1B7A0);
  }

  return result;
}

uint64_t sub_249D4EE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

uint64_t sub_249D4EE58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t Transaction.sceneTransitioner.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_249D4EDC8();
  return sub_249D729A4();
}

void (*Transaction.sceneTransitioner.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_249D4EDC8();
  sub_249D72994();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_249D4F15C;
  *(v4 + 8) = v5;
  return sub_249D4F008;
}

void sub_249D4F008(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v2[2] = sub_249D4F158;
    v2[3] = v5;

    sub_249D729A4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v2[2] = sub_249D4F158;
    v2[3] = v6;
    sub_249D729A4();
  }

  free(v2);
}

uint64_t sub_249D4F0F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

void sub_249D4F168()
{
  sub_249D4F698(319, &qword_27EF1B828, &qword_27EF1B830);
  if (v0 <= 0x3F)
  {
    sub_249D4F698(319, &qword_27EF1B838, &qword_27EF1B840);
    if (v1 <= 0x3F)
    {
      sub_249D4F6EC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SnapshotSource();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_249D4F284(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 120) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (((((a1 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_249D4F41C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 120) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = (((((a1 & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_249D4F698(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_249D72954();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_249D4F6EC()
{
  if (!qword_27EF1B848)
  {
    sub_249D3C308();
    v0 = sub_249D73394();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF1B848);
    }
  }
}

uint64_t sub_249D4F744@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 112);
  *a1 = v2;
  a1[1] = v3;
  v4 = v2;
}

uint64_t sub_249D4F784@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_249D72B14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _SceneView();
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B880);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = *(v2 + 48);
  if (v17)
  {
    v56 = v16;
    v59 = a2;
    v60 = v14;
    v58 = v13;
    v52 = *(v2 + 56);
    v53 = v17;
    v18 = *(v2 + 64);
    v54 = *(v2 + 68);
    v55 = v18;
    v19 = *(v2 + 88);
    v63 = *(v2 + 72);
    v64 = v19;
    v65 = *(v2 + 104);
    v21 = *v2;
    v20 = *(v2 + 8);
    if (*(v2 + 16) == 1)
    {
      v22 = v17;
      sub_249D50900(&v63, &v61);
      sub_249D5095C();
    }

    else
    {
      v25 = v17;
      sub_249D50900(&v63, &v61);
      sub_249D5095C();
      sub_249D73314();
      v26 = sub_249D72DB4();
      v57 = v8;
      v27 = v9;
      v28 = a1;
      v29 = v6;
      v30 = v5;
      v31 = v26;
      sub_249D728C4();

      v5 = v30;
      v6 = v29;
      a1 = v28;
      v9 = v27;
      v8 = v57;
      sub_249D72B04();
      swift_getAtKeyPath();
      sub_249D47BF4();
      (*(v6 + 8))(v8, v5);
      v21 = v61;
      v20 = v62;
    }

    v57 = a1;
    v32 = swift_allocObject();
    *(v32 + 16) = v21;
    *(v32 + 24) = v20;
    v33 = *(v2 + 24);
    v34 = *(v2 + 32);
    if (*(v2 + 40) == 1)
    {
    }

    else
    {

      sub_249D73314();
      v51 = v5;
      v35 = sub_249D72DB4();
      sub_249D728C4();

      sub_249D72B04();
      swift_getAtKeyPath();
      sub_249D47BF4();
      (*(v6 + 8))(v8, v51);
      v33 = v61;
      v34 = v62;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    *(v36 + 24) = v34;
    type metadata accessor for _SceneView.LifetimeAssertion();
    sub_249D73074();
    v37 = swift_allocObject();
    v38 = v64;
    *(v37 + 40) = v63;
    v40 = v52;
    v39 = v53;
    *(v37 + 16) = v53;
    *(v37 + 24) = v40;
    v41 = v54;
    v42 = v55;
    *(v37 + 32) = v55;
    *(v37 + 36) = v41;
    *(v37 + 56) = v38;
    *(v37 + 72) = v65;
    *(v37 + 80) = sub_249D4DF04;
    *(v37 + 88) = v32;
    *(v37 + 96) = sub_249D509A0;
    *(v37 + 104) = v36;
    v43 = v39;
    sub_249D50900(&v63, &v61);
    type metadata accessor for Presentation();
    v44 = sub_249D73074();
    *&v11[v9[6]] = v43;
    *&v11[v9[7]] = v40;
    v45 = &v11[v9[8]];
    *v45 = v42;
    v45[4] = v41;
    v46 = &v11[v9[9]];
    v47 = v64;
    *v46 = v63;
    *(v46 + 1) = v47;
    v46[32] = v65;
    MEMORY[0x28223BE20](v44);
    *(&v51 - 2) = *(v57 + 1);
    *(&v51 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B888);
    sub_249D50B98(&qword_27EF1B890, type metadata accessor for _SceneView);
    sub_249D50A3C();
    v48 = v56;
    sub_249D72E64();

    sub_249D50B2C(v11);
    v49 = v59;
    v50 = v58;
    (*(v60 + 32))(v59, v48, v58);
    return (*(v60 + 56))(v49, 0, 1, v50);
  }

  else
  {
    v23 = *(v14 + 56);

    return v23(a2, 1, 1);
  }
}

uint64_t sub_249D4FDCC()
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_249D72984();
}

uint64_t sub_249D4FE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B888);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a2 + 112);
  swift_getKeyPath();
  v19 = v9;
  sub_249D50B98(&qword_27EF1B138, type metadata accessor for SnapshotSource);
  sub_249D72874();

  v10 = v9[3];
  if (v10)
  {
    v11 = v10;
    v12 = sub_249D3858C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_249D73514();

    v19 = v12;
    sub_249D50B98(&qword_27EF1B090, _s8ObserverCMa);
    sub_249D72874();

    Strong = swift_unknownObjectUnownedLoadStrong();
    v14 = [Strong contentState];

    if (v14 == 2)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }
  }

  else
  {
    v15 = 0.0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B8A8);
  (*(*(v16 - 8) + 16))(v8, a1, v16);
  *&v8[*(v6 + 36)] = v15;
  sub_249D50BE0(v8, a3);
}

uint64_t sub_249D50170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B850);
  v21 = *(a1 + 24);
  v8 = v21;
  v22 = v7;
  v9 = sub_249D507F8();
  v26 = v3;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  sub_249D72CE4();
  v10 = sub_249D72F54();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  (*(v4 + 16))(v6, v23 + *(a1 + 60), v3);
  sub_249D72F44();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  sub_249D5A878(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_249D5A878(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_249D503F4(uint64_t a1)
{
  v2 = sub_249D72BB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 16))(v5, a1, v2);
  sub_249D73034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B868);
  sub_249D50B98(&qword_27EF1B870, MEMORY[0x277CE0150]);
  sub_249D5087C();
  sub_249D50B98(&qword_27EF1B878, MEMORY[0x277CE12D0]);
  sub_249D73024();
}

uint64_t sub_249D50600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_249D72A84();
  v5 = sub_249D72DC4();
  v6 = sub_249D73044();
  (*(*(v6 - 8) + 16))(a2, a1, v6);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B868);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_249D50704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 4);
  v14 = *(a4 + 32);
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = swift_getKeyPath();
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = a1;
  *(a7 + 56) = a2;
  *(a7 + 64) = v12;
  *(a7 + 68) = v13;
  v15 = *a4;
  *(a7 + 88) = a4[1];
  *(a7 + 72) = v15;
  *(a7 + 104) = v14;
  *(a7 + 112) = a5;
  _s14descr285CF5A29O13ConfigurationVMa();
  return a6();
}

unint64_t sub_249D507F8()
{
  result = qword_27EF1B858;
  if (!qword_27EF1B858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B850);
    sub_249D5087C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B858);
  }

  return result;
}

unint64_t sub_249D5087C()
{
  result = qword_27EF1B860;
  if (!qword_27EF1B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B860);
  }

  return result;
}

uint64_t sub_249D50968()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D509A8()
{
  sub_249D4EB2C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

unint64_t sub_249D50A3C()
{
  result = qword_27EF1B898;
  if (!qword_27EF1B898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B888);
    sub_249D50AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B898);
  }

  return result;
}

unint64_t sub_249D50AC8()
{
  result = qword_27EF1B8A0;
  if (!qword_27EF1B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B8A0);
  }

  return result;
}

uint64_t sub_249D50B2C(uint64_t a1)
{
  v2 = type metadata accessor for _SceneView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D50B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249D50BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B888);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_249D50C68(double a1, double a2, double a3, double a4)
{
  v4 = (~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v4 || (~*&a2 & 0x7FF0000000000000) == 0 && (*&a2 & 0xFFFFFFFFFFFFFLL) != 0 || (~*&a3 & 0x7FF0000000000000) == 0 && (*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  if ((~*&a4 & 0x7FF0000000000000) != 0)
  {
    return 0;
  }

  return (*&a4 & 0xFFFFFFFFFFFFFLL) != 0;
}

id static FBSceneWorkspace.previewWorkspace()()
{
  v0 = sub_249D72854();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249D72844();
  sub_249D72834();
  (*(v1 + 8))(v3, v0);
  v4 = objc_allocWithZone(MEMORY[0x277D0AAE8]);
  v5 = sub_249D73134();

  v6 = [v4 initWithIdentifier_];

  return v6;
}

uint64_t FBSceneWorkspace.createPreviewScene<A>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_249D73134();
  v15 = [v7 sceneWithIdentifier_];

  if (v15)
  {
    return v15;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_249D5122C;
  *(v17 + 24) = v16;
  v21[4] = sub_249D399D8;
  v21[5] = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_249D514A4;
  v21[3] = &block_descriptor_2;
  v18 = _Block_copy(v21);

  v15 = [v7 createScene_];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    FBScene.setContent<A>(_:)(a3, a4, a5, a6);

    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_249D50FC4(void *a1)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_249D73134();
  [a1 setIdentifier_];

  v3 = [objc_allocWithZone(type metadata accessor for LocalSceneSpecification()) init];
  [a1 setSpecification_];

  v4 = [objc_opt_self() localIdentity];
  [a1 setClientIdentity_];

  if ([a1 respondsToSelector_])
  {
    v8[4] = sub_249D51234;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_249D51518;
    v8[3] = &block_descriptor_6;
    v5 = _Block_copy(v8);
    [a1 configureParameters_];
    _Block_release(v5);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_249D511F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D51238(void *a1)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5[4] = sub_249D51490;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_249D51518;
  v5[3] = &block_descriptor_9;
  v2 = _Block_copy(v5);

  [a1 updateSettingsWithBlock_];
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_249D5137C(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D0AD38]) init];
  v3 = [v2 mainConfiguration];

  [a1 setDisplayConfiguration_];
  v4 = sub_249D73134();
  v5 = NSSelectorFromString(v4);

  [a1 addPropagatedProperty_];
  [a1 setForeground_];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setInterfaceOrientationMode_];
  }

  return result;
}

uint64_t sub_249D514A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249D515C8()
{
  sub_249D73774();
  MEMORY[0x24C201920](0);
  return sub_249D737A4();
}

uint64_t sub_249D51634()
{
  sub_249D73774();
  MEMORY[0x24C201920](0);
  return sub_249D737A4();
}

uint64_t sub_249D5168C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_249D736A4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_249D5172C(uint64_t a1)
{
  v2 = sub_249D51B78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249D51768(uint64_t a1)
{
  v2 = sub_249D51B78();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_249D517DC(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B918);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249D51B78();
  sub_249D737B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v16;
    v11 = sub_249D73624();
    v13 = &v3[OBJC_IVAR____TtC12DrawingBoard27LocalSceneActivationContext_message];
    *v13 = v11;
    v13[1] = v14;
    v15.receiver = v3;
    v15.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v15, sel_init);
    (*(v10 + 8))(v8, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_249D519A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_249D517DC(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_249D519F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B928);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249D51B78();
  sub_249D737C4();
  sub_249D73634();
  return (*(v3 + 8))(v5, v2);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_249D51B78()
{
  result = qword_27EF1B920;
  if (!qword_27EF1B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B920);
  }

  return result;
}

unint64_t sub_249D51BE0()
{
  result = qword_27EF1B930;
  if (!qword_27EF1B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B930);
  }

  return result;
}

unint64_t sub_249D51C38()
{
  result = qword_27EF1B938;
  if (!qword_27EF1B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B938);
  }

  return result;
}

unint64_t sub_249D51C90()
{
  result = qword_27EF1B940;
  if (!qword_27EF1B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B940);
  }

  return result;
}

id sub_249D51D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [v4 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    swift_dynamicCast();
    return v8;
  }

  return result;
}

uint64_t sub_249D51DAC()
{
  v0 = sub_249D728F4();
  __swift_allocate_value_buffer(v0, qword_27EF20578);
  __swift_project_value_buffer(v0, qword_27EF20578);
  return sub_249D728E4();
}

uint64_t sub_249D51EEC(uint64_t (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249D77900;
  *(v2 + 32) = a1();
  return v2;
}

id sub_249D51F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B1A8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249D77900;
  *(v4 + 32) = a3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B190);
  v5 = sub_249D73224();

  return v5;
}

uint64_t sub_249D52024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;

  if ([v4 isValid] && (v10 = objc_msgSend(v4, sel_hostScene)) != 0)
  {
    v13[2] = sub_249D528C0;
    v13[3] = v9;
    v11 = MEMORY[0x28223BE20](v10);
    sub_249D39550(sub_249D528CC, v13);
  }

  else
  {
  }
}

uint64_t sub_249D5215C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v1();
  return sub_249D72FD4();
}

uint64_t sub_249D521EC()
{
  v1 = [v0 builderBox];
  v2 = *&v1[OBJC_IVAR____TtCCC12DrawingBoard19LocalSceneExtension17SettingsExtension17ContentBuilderBox_builder];

  return v2;
}

uint64_t sub_249D52250(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    swift_getObjectType();
    v8 = a1;

    sub_249D528D4(a3, a4);
  }

  return result;
}

uint64_t (*sub_249D52330())()
{
  if ([v0 isValid])
  {
    v1 = [v0 clientScene];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 settings];

      v4 = swift_dynamicCastObjCProtocolConditional();
      if (v4)
      {
        *(swift_allocObject() + 16) = v4;
        return sub_249D52998;
      }
    }
  }

  if (qword_27EF1AD10 != -1)
  {
    swift_once();
  }

  v6 = sub_249D728F4();
  __swift_project_value_buffer(v6, qword_27EF20578);
  v7 = sub_249D728D4();
  v8 = sub_249D73304();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_249D35000, v7, v8, "client scene is invalid or failed to retrieve settings", v9, 2u);
    MEMORY[0x24C202240](v9, -1, -1);
  }

  return sub_249D529A0;
}

uint64_t sub_249D524D0()
{
  v0 = sub_249D521EC();
  v1 = v0();

  return v1;
}

id sub_249D52528(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_249D52584(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7.receiver = a1;
  v7.super_class = a4();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v7, sel_initWithScene_, a3);
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_249D52668(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id LocalSceneExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalSceneExtension.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_249D52800(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_249D52888()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_249D528D4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LocalSceneExtension.SettingsExtension.ContentBuilderBox();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCCC12DrawingBoard19LocalSceneExtension17SettingsExtension17ContentBuilderBox_builder];
  *v7 = a1;
  *(v7 + 1) = a2;
  v9.receiver = v6;
  v9.super_class = v5;

  v8 = objc_msgSendSuper2(&v9, sel_init);
  [v2 setBuilderBox_];
}

uint64_t sub_249D52960()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_249D529E4(uint64_t a1)
{
  result = sub_249D52A0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_249D52A0C()
{
  result = qword_27EF1B978;
  if (!qword_27EF1B978)
  {
    type metadata accessor for NullSceneActivationPolicyModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B978);
  }

  return result;
}

uint64_t (*sub_249D52A78())(uint64_t a1, uint64_t a2)
{
  sub_249D52AE4();
  sub_249D72B44();
  *(swift_allocObject() + 16) = v1;
  return sub_249D509A0;
}

unint64_t sub_249D52AE4()
{
  result = qword_27EF1B980[0];
  if (!qword_27EF1B980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF1B980);
  }

  return result;
}

uint64_t sub_249D52B38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_249D52B9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_249D52BE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_249D52C54()
{
  result = sub_249D73674();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249D52CE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_249D52E68(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
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

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_249D53128(void *a1, void *a2)
{
  sub_249D733F4();
  if ((MEMORY[0x24C201580](*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FBValue();
  return sub_249D73124() & 1;
}

double sub_249D531C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  sub_249D532A8(v5, a1[2], a1[3], a1[4], v11);
  v7 = v11[3];
  a2[2] = v11[2];
  a2[3] = v7;
  v8 = v11[5];
  a2[4] = v11[4];
  a2[5] = v8;
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  a2[1] = v10;
  return result;
}

uint64_t sub_249D532A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v49 = a4;
  v52 = a1;
  v45 = a5;
  v8 = type metadata accessor for FBValue();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  v51 = *(v9 + 16);
  v51(v40 - v11, a1, v8);
  v13 = *(v9 + 80);
  v14 = (v13 + 40) & ~v13;
  v50 = v10;
  v15 = v13;
  v16 = swift_allocObject();
  v17 = a2;
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  v18 = a3;
  v42 = a3;
  *(v16 + 4) = v49;
  v19 = *(v9 + 32);
  v47 = v16;
  v48 = v19;
  v19(v16 + v14, v12, v8);
  v20 = v51;
  v51(v12, v52, v8);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 2) = v17;
  *(v21 + 3) = v18;
  v22 = v17;
  v41 = v17;
  v23 = v48;
  v24 = v49;
  *(v21 + 4) = v49;
  v23(v21 + v14, v12, v8);
  v25 = v52;
  v20(v12, v52, v8);
  v40[1] = v15;
  v26 = swift_allocObject();
  v44 = v26;
  *(v26 + 2) = v22;
  v27 = v42;
  *(v26 + 3) = v42;
  *(v26 + 4) = v24;
  v28 = v48;
  v48(v26 + v14, v12, v8);
  v51(v12, v25, v8);
  v29 = swift_allocObject();
  v43 = v29;
  v30 = v41;
  *(v29 + 2) = v41;
  *(v29 + 3) = v27;
  v31 = v49;
  *(v29 + 4) = v49;
  v28(v29 + v14, v12, v8);
  v51(v12, v52, v8);
  v32 = swift_allocObject();
  *(v32 + 2) = v30;
  *(v32 + 3) = v27;
  *(v32 + 4) = v31;
  v28(v32 + v14, v12, v8);
  v28(v12, v52, v8);
  v33 = swift_allocObject();
  *(v33 + 2) = v30;
  *(v33 + 3) = v27;
  *(v33 + 4) = v31;
  result = (v28)(v33 + v14, v12, v8);
  v35 = v45;
  v36 = v47;
  *v45 = sub_249D53EC4;
  v35[1] = v36;
  v37 = v43;
  v38 = v44;
  v35[2] = sub_249D53F4C;
  v35[3] = v38;
  v35[4] = sub_249D53FEC;
  v35[5] = v37;
  v39 = v46;
  v35[6] = sub_249D53F34;
  v35[7] = v39;
  v35[8] = sub_249D540B8;
  v35[9] = v32;
  v35[10] = sub_249D5424C;
  v35[11] = v33;
  return result;
}

uint64_t sub_249D53650(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + *(v4 + 44));
  v7[1] = a1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_249D53734()
{
  MEMORY[0x24C201340](91, 0xE100000000000000);
  sub_249D73674();
  sub_249D73694();
  MEMORY[0x24C201340](8250, 0xE200000000000000);
  sub_249D73694();
  MEMORY[0x24C201340](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_249D537E0()
{
  sub_249D73774();
  sub_249D530D0();
  return sub_249D737A4();
}

uint64_t sub_249D53828@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x277D84568];
  *a3 = a1;
  v7 = *(v5 + *v6 + 8);
  v8 = type metadata accessor for FBValue();
  v9 = *(*(v7 - 8) + 32);
  v10 = a3 + *(v8 + 44);

  return v9(v10, a2, v7);
}

uint64_t sub_249D538EC()
{
  sub_249D73774();
  sub_249D530D0();
  return sub_249D737A4();
}

uint64_t sub_249D53960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(type metadata accessor for FBValue() + 44);
  a3[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v8 = *(*(a2 - 8) + 16);

  return v8(boxed_opaque_existential_0, a1 + v6, a2);
}

uint64_t sub_249D539E4(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = type metadata accessor for FBValue();
  v4 = sub_249D73394();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v17 - v7;
  v9 = *(v3 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = (&v17 - v11);
  (*(a1 + 32))(v19, v10);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v3);
    (*(v9 + 32))(v12, v8, v3);
    v15 = sub_249D53128(v18, v12);
    (*(v9 + 8))(v12, v3);
  }

  else
  {
    v14(v8, 1, 1, v3);
    (*(v5 + 8))(v8, v4);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_249D53C20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FBValue();
  a2[3] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_0, a1, v4);
}

uint64_t sub_249D53CA0()
{
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    type metadata accessor for FBValue();
    sub_249D53650(v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_249D53D3C()
{
  v1 = *v0;
  sub_249D73774();
  v1(v3);
  return sub_249D737A4();
}

uint64_t sub_249D53DAC()
{
  v1 = *v0;
  sub_249D73774();
  v1(v3);
  return sub_249D737A4();
}

uint64_t sub_249D53E18(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = a2[3];
  v7[2] = a2[2];
  v7[3] = v3;
  v4 = a2[5];
  v7[4] = a2[4];
  v7[5] = v4;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  return v2(v7) & 1;
}

unint64_t sub_249D53E6C()
{
  result = qword_27EF1BA08;
  if (!qword_27EF1BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BA08);
  }

  return result;
}

uint64_t sub_249D53F4C(uint64_t a1)
{
  v3 = *(type metadata accessor for FBValue() - 8);
  v4 = (v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));

  return sub_249D539E4(a1, v4);
}

uint64_t sub_249D54004(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(type metadata accessor for FBValue() - 8);
  v6 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return a1(v6, v2, v3, v4);
}

uint64_t sub_249D540B8()
{
  type metadata accessor for FBValue();

  return sub_249D53CA0();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);
  v2 = (type metadata accessor for FBValue() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[13], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_249D54328@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  swift_beginAccess();
  return sub_249D56584(v1 + 16, a1);
}

uint64_t sub_249D543E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  swift_beginAccess();
  return sub_249D56584(v3 + 16, a2);
}

uint64_t sub_249D544A8(uint64_t a1)
{
  sub_249D56584(a1, v2);
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72864();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_249D54588(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 16), a2);
  return swift_endAccess();
}

uint64_t sub_249D545EC()
{
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_249D546B4()
{
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  return *(v0 + 72);
}

uint64_t sub_249D54754(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
    sub_249D72864();
  }

  return result;
}

void sub_249D5486C()
{
  v1 = v0;
  swift_getKeyPath();
  v20 = v0;
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  v2 = v0[10];
  sub_249D3C308();
  v3 = v2;
  v4 = sub_249D73374();

  if ((v4 & 1) == 0)
  {
    swift_getKeyPath();
    v20 = v1;
    sub_249D72874();

    v6 = v1[11];
    v5 = v1[12];
    v8 = v1[13];
    v7 = v1[14];
    v9 = *(v1 + 120);
    swift_getKeyPath();
    v20 = v1;
    sub_249D4EB0C(v6, v5, v8, v7, v9);
    sub_249D72874();

    v10 = v1[10];
    if (v9)
    {
      if (v9 == 1)
      {
        v11 = type metadata accessor for ActivatedPolicyModel();
        swift_allocObject();
        sub_249D4EB0C(v6, v5, v8, v7, 1u);
        v12 = v10;
        v13 = sub_249D4443C(v12, v6, v5 & 1, v8, v7);
        sub_249D4EB2C(v6, v5, v8, v7, 1u);
        v21 = v11;
        v22 = sub_249D56320(&qword_27EF1BA30, type metadata accessor for ActivatedPolicyModel);

        sub_249D4EB2C(v6, v5, v8, v7, 1u);
        v20 = v13;
      }

      else
      {
        v17 = type metadata accessor for NullSceneActivationPolicyModel();
        v18 = swift_allocObject();
        v21 = v17;
        v22 = sub_249D56320(&qword_27EF1BA40, type metadata accessor for NullSceneActivationPolicyModel);
        sub_249D4EB2C(v6, v5, v8, v7, 2u);
        v20 = v18;
      }
    }

    else
    {
      v14 = type metadata accessor for DeactivationSceneActivationPolicyModel();
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v6;
      v15[4] = v5;
      v21 = v14;
      v22 = sub_249D56320(&qword_27EF1BA38, type metadata accessor for DeactivationSceneActivationPolicyModel);
      v20 = v15;
      v16 = v10;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D72864();

    __swift_destroy_boxed_opaque_existential_1(&v20);
  }
}

id sub_249D54C20()
{
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_249D54CD0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v1 + 120);
  *(a1 + 32) = v7;
  return sub_249D4EB0C(v3, v4, v5, v6, v7);
}

id sub_249D54D8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_249D54E44(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  sub_249D3C308();
  v5 = v4;
  v6 = sub_249D73374();

  if (v6)
  {
    v9 = *(v2 + 80);
    *(v2 + 80) = a1;
    v7 = a1;
    sub_249D5486C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
    sub_249D72864();
  }
}

uint64_t sub_249D54FC0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  swift_getKeyPath();
  v23 = v1;
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  if (*(v1 + 120))
  {
    if (*(v1 + 120) == 1)
    {
      if (v6 == 1)
      {
        if (*(v1 + 96))
        {
          if (v2)
          {
            return result;
          }
        }

        else if (!(v2 & 1 | (*(v1 + 88) != v3)))
        {
          return result;
        }
      }
    }

    else if (v6 == 2 && !(v4 | v5 | v3 | v2))
    {
      return result;
    }
  }

  else if (!v6)
  {
    return result;
  }

  swift_getKeyPath();
  v23 = v1;
  sub_249D72874();

  v9 = *(v1 + 88);
  v8 = *(v1 + 96);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = *(v1 + 120);
  swift_getKeyPath();
  v23 = v1;
  sub_249D4EB0C(v9, v8, v11, v10, v12);
  sub_249D72874();

  v13 = *(v1 + 80);
  if (v12)
  {
    if (v12 == 1)
    {
      v14 = type metadata accessor for ActivatedPolicyModel();
      swift_allocObject();
      sub_249D4EB0C(v9, v8, v11, v10, 1u);
      v15 = v13;
      v16 = sub_249D4443C(v15, v9, v8 & 1, v11, v10);
      sub_249D4EB2C(v9, v8, v11, v10, 1u);
      v24 = v14;
      v25 = sub_249D56320(&qword_27EF1BA30, type metadata accessor for ActivatedPolicyModel);

      sub_249D4EB2C(v9, v8, v11, v10, 1u);
      v23 = v16;
    }

    else
    {
      v20 = type metadata accessor for NullSceneActivationPolicyModel();
      v21 = swift_allocObject();
      v24 = v20;
      v25 = sub_249D56320(&qword_27EF1BA40, type metadata accessor for NullSceneActivationPolicyModel);
      sub_249D4EB2C(v9, v8, v11, v10, 2u);
      v23 = v21;
    }
  }

  else
  {
    v17 = type metadata accessor for DeactivationSceneActivationPolicyModel();
    v18 = swift_allocObject();
    v18[2] = v13;
    v18[3] = v9;
    v18[4] = v8;
    v24 = v17;
    v25 = sub_249D56320(&qword_27EF1BA38, type metadata accessor for DeactivationSceneActivationPolicyModel);
    v23 = v18;
    v19 = v13;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_249D72864();

  return __swift_destroy_boxed_opaque_existential_1(&v23);
}

uint64_t sub_249D553B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  v4 = *(v3 + 88);
  v5 = *(v3 + 96);
  v6 = *(v3 + 104);
  v7 = *(v3 + 112);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(v3 + 120);
  *(a2 + 32) = v8;
  return sub_249D4EB0C(v4, v5, v6, v7, v8);
}

uint64_t sub_249D5546C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_249D4EB0C(v6, v1, v2, v3, v4);
  return sub_249D554C0(&v6);
}

uint64_t sub_249D554C0(__int128 *a1)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v3 = *(a1 + 32);
  v16 = *(a1 + 32);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  if (!*(v1 + 120))
  {
    if (!v3)
    {
      goto LABEL_14;
    }

LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[0] = v1;
    sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
    sub_249D72864();
    sub_249D56278(&v14);
  }

  if (v5 != 1)
  {
    if (v3 == 2 && !(v15 | BYTE8(v14) | *(&v15 + 1) | v14 | (*(&v14 + 9) << 8) | ((*(&v14 + 13) | (HIBYTE(v14) << 16)) << 40)))
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_11;
  }

  if ((*(v1 + 96) & 1) == 0)
  {
    if ((BYTE8(v14) & 1) == 0 && v4 == v14)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if ((BYTE8(v14) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = a1[1];
  *(v1 + 88) = *a1;
  *(v1 + 104) = v11;
  *(v1 + 120) = *(a1 + 32);
  sub_249D4EB0C(v4, v8, v9, v10, v5);
  sub_249D4EB2C(v4, v8, v9, v10, v5);
  v12[0] = v4;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  v13 = v5;
  sub_249D54FC0(v12);
  return sub_249D4EB2C(v4, v8, v9, v10, v5);
}

uint64_t sub_249D556CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 112);
  v7 = *(a2 + 16);
  *(a1 + 88) = *a2;
  *(a1 + 104) = v7;
  v8 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 32);
  sub_249D4EB0C(v3, v4, v5, v6, v8);
  sub_249D50900(a2, v10);
  sub_249D4EB2C(v3, v4, v5, v6, v8);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v11 = v8;
  sub_249D54FC0(v10);
  return sub_249D4EB2C(v3, v4, v5, v6, v8);
}

uint64_t sub_249D557A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    sub_249D4EDC8();
    sub_249D72994();
    v4 = swift_allocObject();
    *(v4 + 16) = v6;
    v3 = sub_249D509A0;
  }

  sub_249D55858(v3, v4);
  return sub_249D4666C(v3);
}

uint64_t sub_249D55858(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *&v8 = v2;
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  swift_beginAccess();
  sub_249D56584(v2 + 16, &v8);
  v5 = *(&v9 + 1);
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
  (*(v6 + 24))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

uint64_t sub_249D55C38()
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_249D55858(0, 0);
}

uint64_t sub_249D55CEC(void *a1, __int128 *a2)
{
  v3 = v2;
  v6 = *(a2 + 32);
  v7 = type metadata accessor for NullSceneActivationPolicyModel();
  v8 = swift_allocObject();
  *(v3 + 40) = v7;
  v9 = sub_249D56320(&qword_27EF1BA40, type metadata accessor for NullSceneActivationPolicyModel);
  *(v3 + 48) = v9;
  *(v3 + 16) = v8;
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  sub_249D728A4();
  *(v3 + 80) = a1;
  v10 = *a2;
  *(v3 + 104) = a2[1];
  *(v3 + 88) = v10;
  *(v3 + 120) = v6;
  swift_getKeyPath();
  v26 = v3;
  sub_249D56320(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  v11 = a1;
  sub_249D72874();

  v13 = *(v3 + 88);
  v12 = *(v3 + 96);
  v15 = *(v3 + 104);
  v14 = *(v3 + 112);
  if (*(v3 + 120))
  {
    if (*(v3 + 120) == 1)
    {
      v16 = type metadata accessor for ActivatedPolicyModel();
      swift_allocObject();
      v17 = v11;
      sub_249D4EB0C(v13, v12, v15, v14, 1u);
      v18 = sub_249D4443C(v17, v13, v12 & 1, v15, v14);

      v19 = v11;
      v27 = v16;
      v28 = sub_249D56320(&qword_27EF1BA30, type metadata accessor for ActivatedPolicyModel);
      sub_249D4EB2C(v13, v12, v15, v14, 1u);
      v26 = v18;
    }

    else
    {
      v23 = swift_allocObject();
      v27 = v7;
      v28 = v9;
      sub_249D4EB2C(v13, v12, v15, v14, 2u);
      v26 = v23;
      v19 = v11;
    }
  }

  else
  {
    v20 = type metadata accessor for DeactivationSceneActivationPolicyModel();
    v21 = swift_allocObject();
    v19 = v11;
    v21[2] = v11;
    v21[3] = v13;
    v21[4] = v12;
    v27 = v20;
    v28 = sub_249D56320(&qword_27EF1BA38, type metadata accessor for DeactivationSceneActivationPolicyModel);
    v26 = v21;
    v22 = v11;
    sub_249D4EB0C(v13, v12, v15, v14, 0);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_249D72864();

  __swift_destroy_boxed_opaque_existential_1(&v26);
  return v3;
}

uint64_t sub_249D56074()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_249D5663C(v0 + 56);

  sub_249D4EB2C(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  v1 = OBJC_IVAR____TtC12DrawingBoard20ApplyActivationModel___observationRegistrar;
  v2 = sub_249D728B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ApplyActivationModel()
{
  result = qword_27EF1BA18;
  if (!qword_27EF1BA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D5618C()
{
  result = sub_249D728B4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_249D56320(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_249D56584(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_249D565E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 80);
  *(v2 + 80) = v1;
  v4 = v1;
  sub_249D5486C();
}

uint64_t sub_249D5666C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D566BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D59760(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  sub_249D72874();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_249D5678C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D59760(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
  sub_249D72874();

  v5 = *(v3 + 84);
  *a2 = *(v3 + 80);
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_249D5683C(int *a1)
{
  v1 = *(a1 + 4);
  v3 = *a1;
  v4 = v1;
  return sub_249D3A75C(&v3);
}

__n128 SceneView.init(_:priority:forLayers:activationPolicy:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = *(a4 + 32);
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = swift_getKeyPath();
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a1;
  *(a5 + 56) = a2;
  *(a5 + 64) = v9;
  *(a5 + 68) = v10;
  result = *a4;
  *(a5 + 88) = *(a4 + 16);
  *(a5 + 72) = result;
  *(a5 + 104) = v11;
  return result;
}

{
  v9 = *a3;
  v10 = *(a3 + 4);
  v11 = *(a4 + 32);
  *a5 = swift_getKeyPath();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = swift_getKeyPath();
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = a1;
  *(a5 + 56) = a2;
  *(a5 + 64) = v9;
  *(a5 + 68) = v10;
  result = *a4;
  *(a5 + 88) = *(a4 + 16);
  *(a5 + 72) = result;
  *(a5 + 104) = v11;
  return result;
}

uint64_t sub_249D56A60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D59760(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_249D56B10()
{
  swift_getKeyPath();
  sub_249D59760(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72864();
}

uint64_t SceneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA48);
  MEMORY[0x28223BE20](v3);
  v5 = &v45[-v4];
  v6 = sub_249D72B14();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for _SceneView();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v45[-v13];
  v15 = *v1;
  v16 = v1[1];
  v17 = *(v1 + 16);
  v18 = v1[3];
  v53 = v1[4];
  v54 = v18;
  v19 = *(v1 + 40);
  v21 = v1[6];
  v20 = v1[7];
  v22 = *(v1 + 16);
  v23 = *(v1 + 68);
  v24 = *(v1 + 11);
  v59 = *(v1 + 9);
  v60 = v24;
  v61 = *(v1 + 104);
  if (v21)
  {
    v46 = v19;
    v47 = v20;
    v48 = v23;
    v49 = v22;
    v50 = v14;
    v51 = v3;
    v52 = a1;
    if (v17)
    {
      v25 = v21;
      sub_249D50900(&v59, &v57);
      sub_249D5095C();
    }

    else
    {
      v27 = v21;
      sub_249D50900(&v59, &v57);
      sub_249D5095C();
      sub_249D73314();
      v28 = sub_249D72DB4();
      sub_249D728C4();

      sub_249D72B04();
      swift_getAtKeyPath();
      sub_249D47BF4();
      (*(v55 + 8))(v8, v56);
      v15 = v57;
      v16 = v58;
    }

    v29 = swift_allocObject();
    *(v29 + 16) = v15;
    *(v29 + 24) = v16;
    if (v46)
    {
      v30 = v53;

      v31 = v54;
    }

    else
    {

      sub_249D73314();
      v32 = sub_249D72DB4();
      sub_249D728C4();

      sub_249D72B04();
      swift_getAtKeyPath();
      sub_249D47BF4();
      (*(v55 + 8))(v8, v56);
      v31 = v57;
      v30 = v58;
    }

    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v30;
    type metadata accessor for _SceneView.LifetimeAssertion();
    v34 = v21;
    sub_249D73074();
    v35 = swift_allocObject();
    v36 = v60;
    *(v35 + 40) = v59;
    v37 = v47;
    *(v35 + 16) = v34;
    *(v35 + 24) = v37;
    v39 = v48;
    v38 = v49;
    *(v35 + 32) = v49;
    *(v35 + 36) = v39;
    *(v35 + 56) = v36;
    *(v35 + 72) = v61;
    *(v35 + 80) = sub_249D58420;
    *(v35 + 88) = v29;
    *(v35 + 96) = sub_249D58448;
    *(v35 + 104) = v33;
    v40 = v34;
    sub_249D50900(&v59, &v57);
    type metadata accessor for Presentation();
    sub_249D73074();
    *&v12[v9[6]] = v40;
    *&v12[v9[7]] = v37;
    v41 = &v12[v9[8]];
    *v41 = v38;
    v41[4] = v39;
    v42 = &v12[v9[9]];
    v43 = v60;
    *v42 = v59;
    *(v42 + 1) = v43;
    v42[32] = v61;
    v44 = v50;
    sub_249D5853C(v12, v50);
    sub_249D585A0(v44, v5);
    swift_storeEnumTagMultiPayload();
    sub_249D59760(&qword_27EF1B890, type metadata accessor for _SceneView);
    sub_249D72CA4();

    return sub_249D50B2C(v44);
  }

  else
  {
    *v5 = sub_249D72F14();
    swift_storeEnumTagMultiPayload();
    sub_249D59760(&qword_27EF1B890, type metadata accessor for _SceneView);
    return sub_249D72CA4();
  }
}

uint64_t sub_249D5717C()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    v1(v2);
    sub_249D4666C(v1);
    v3 = *(v0 + 16);
  }

  else
  {
    v3 = 0;
  }

  sub_249D4666C(v3);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_249D571FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  type metadata accessor for Presentation();
  v18 = swift_allocObject();
  sub_249D728A4();
  v18[5] = a8;
  v18[6] = a1;
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  LODWORD(v27[0]) = a3;
  BYTE4(v27[0]) = BYTE4(a3) & 1;
  type metadata accessor for UISceneHostingViewModel();
  swift_allocObject();
  v19 = a1;

  v20 = sub_249D3B254(v19, a2, v27);

  v18[7] = v20;
  v21 = *(a4 + 16);
  v27[0] = *a4;
  v27[1] = v21;
  v28 = *(a4 + 32);
  type metadata accessor for ApplyActivationModel();
  swift_allocObject();
  v22 = v19;
  sub_249D50900(a4, v26);
  v23 = sub_249D55CEC(v22, v27);
  v18[8] = v23;
  swift_getKeyPath();
  *&v27[0] = v23;
  sub_249D59760(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);

  sub_249D72864();

  v24 = sub_249D3858C();
  [*(*&v24[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 16) addObject_];

  v25 = sub_249D3858C();
  [*(*&v25[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 24) addObject_];

  *a9 = v18;
}

uint64_t sub_249D57470@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for _SceneView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = v2 - 8;
  v69 = v2 - 8;
  MEMORY[0x28223BE20](v2 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA90);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA98);
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v70 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BAA0);
  v11 = *(v10 - 8);
  v62 = v10;
  v63 = v11;
  MEMORY[0x28223BE20](v10);
  v71 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BAA8);
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  MEMORY[0x28223BE20](v13);
  v72 = &v55 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  sub_249D73084();
  v59 = v8;
  sub_249D5F078();

  sub_249D585A0(v1, &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v58 = *(v3 + 80);
  v17 = swift_allocObject();
  sub_249D5853C(&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = &v8[*(v6 + 36)];
  *v18 = sub_249D58BD4;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v19 = *(v5 + 32);
  v68 = v1;
  v20 = *(v1 + v19);
  v77 = *(v68 + v19);
  sub_249D585A0(v68, &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_249D5853C(&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v16);
  v22 = sub_249D3C308();
  v23 = sub_249D58C4C();
  v24 = sub_249D59760(&qword_27EF1B178, sub_249D3C308);
  v25 = v20;
  v26 = v56;
  v27 = v59;
  sub_249D72EF4();

  sub_249D59214(v27);
  v28 = v69;
  v73 = *(v68 + *(v69 + 36));
  v67 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249D585A0(v68, v67);
  v57 = v4;
  v29 = swift_allocObject();
  sub_249D5853C(&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v16);
  v77 = v26;
  v78 = v22;
  v79 = v23;
  v80 = v24;
  v59 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v70;
  v32 = v60;
  sub_249D72EF4();

  v33 = v31;
  v34 = v32;
  (*(v61 + 8))(v33, v32);
  v35 = v67;
  v36 = v68;
  v37 = (v68 + *(v28 + 40));
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 4);
  LODWORD(v73) = v38;
  BYTE4(v73) = v37;
  sub_249D585A0(v68, v67);
  v39 = swift_allocObject();
  sub_249D5853C(v35, v39 + v16);
  v77 = v34;
  v78 = MEMORY[0x277D83B88];
  v79 = OpaqueTypeConformance2;
  v80 = MEMORY[0x277D83BA8];
  v70 = swift_getOpaqueTypeConformance2();
  v40 = sub_249D593A8();
  v41 = v71;
  v42 = v62;
  sub_249D72EF4();

  (*(v63 + 8))(v41, v42);
  v43 = v36;
  v44 = v36 + *(v69 + 44);
  v46 = *(v44 + 8);
  v47 = *(v44 + 16);
  v48 = *(v44 + 24);
  v49 = *(v44 + 32);
  v77 = *v44;
  v45 = v77;
  v78 = v46;
  v79 = v47;
  v80 = v48;
  v81 = v49;
  v50 = v67;
  sub_249D585A0(v43, v67);
  v51 = swift_allocObject();
  sub_249D5853C(v50, v51 + v16);
  sub_249D4EB0C(v45, v46, v47, v48, v49);
  v73 = v42;
  v74 = &type metadata for LayerTarget;
  v75 = v70;
  v76 = v40;
  swift_getOpaqueTypeConformance2();
  sub_249D5961C();
  v52 = v64;
  v53 = v72;
  sub_249D72EF4();

  sub_249D4EB2C(v77, v78, v79, v80, v81);
  return (*(v65 + 8))(v53, v52);
}

uint64_t sub_249D57BB8()
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for _SceneView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA68);
  sub_249D73084();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  sub_249D73084();
  v0 = *(v2 + 16);
  *(v2 + 16) = sub_249D59734;
  *(v2 + 24) = v2;
  sub_249D4666C(v0);
}

uint64_t sub_249D57CC4(uint64_t a1, void **a2)
{
  v2 = *a2;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  sub_249D73084();
  sub_249D5F800(v2);
}

uint64_t sub_249D57D98(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  sub_249D73084();
  if (*(*(v5 + 56) + 72) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D59760(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
    sub_249D72864();
  }
}

uint64_t sub_249D57F50(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  sub_249D73084();
  v4 = *(v11 + 56);
  v5 = *(v4 + 80);
  if (*(v4 + 84) == 1)
  {
    if (v5)
    {
      if (v2)
      {
        v6 = v3;
      }

      else
      {
        v6 = 0;
      }

      if (v6 != 1)
      {
LABEL_9:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_249D59760(&qword_27EF1B0F0, type metadata accessor for UISceneHostingViewModel);
        sub_249D72864();
      }
    }

    else
    {
      if (v2)
      {
        v10 = 0;
      }

      else
      {
        v10 = v3;
      }

      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v5 == v2)
    {
      v9 = v3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_9;
    }
  }

  *(v4 + 80) = v2;
  *(v4 + 84) = v3;
}

uint64_t sub_249D5814C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  sub_249D73084();
  v4 = a3 + *(type metadata accessor for _SceneView() + 36);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  *&v10 = *v4;
  *(&v10 + 1) = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  sub_249D4EB0C(v10, v5, v6, v7, v8);
  sub_249D554C0(&v10);
}

double keypath_getTm@<D0>(void (*a1)(void)@<X3>, _OWORD *a2@<X8>)
{
  a1();
  sub_249D72B44();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_249D58304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  a5(a1, a2);

  return sub_249D72B54();
}

uint64_t type metadata accessor for _SceneView()
{
  result = qword_27EF1BA70;
  if (!qword_27EF1BA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D583E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D58448(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_249D58484@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _SceneView.LifetimeAssertion();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_249D584E4()
{
  sub_249D4EB2C(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_249D5853C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SceneView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249D585A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _SceneView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12DrawingBoard21SceneActivationPolicyV4KindO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_249D58668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_249D586C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_249D58748()
{
  result = qword_27EF1BA50;
  if (!qword_27EF1BA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BA58);
    sub_249D59760(&qword_27EF1B890, type metadata accessor for _SceneView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BA50);
  }

  return result;
}

uint64_t sub_249D58818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA68);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_249D58950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA68);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_249D58A70()
{
  sub_249D58B60(319, &qword_27EF1BA80, type metadata accessor for Presentation);
  if (v0 <= 0x3F)
  {
    sub_249D58B60(319, &qword_27EF1BA88, type metadata accessor for _SceneView.LifetimeAssertion);
    if (v1 <= 0x3F)
    {
      sub_249D3C308();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_249D58B60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_249D73094();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_249D58BD4()
{
  type metadata accessor for _SceneView();

  return sub_249D57BB8();
}

unint64_t sub_249D58C4C()
{
  result = qword_27EF1BAC0;
  if (!qword_27EF1BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BA90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BAC8);
    sub_249D58D28();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BAC0);
  }

  return result;
}

unint64_t sub_249D58D28()
{
  result = qword_27EF1BAD0;
  if (!qword_27EF1BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BAC8);
    sub_249D58DB4();
    sub_249D591C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BAD0);
  }

  return result;
}

unint64_t sub_249D58DB4()
{
  result = qword_27EF1BAD8;
  if (!qword_27EF1BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BAE0);
    sub_249D58E40();
    sub_249D5916C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BAD8);
  }

  return result;
}

unint64_t sub_249D58E40()
{
  result = qword_27EF1BAE8;
  if (!qword_27EF1BAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BAF0);
    sub_249D58ECC();
    sub_249D59118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BAE8);
  }

  return result;
}

unint64_t sub_249D58ECC()
{
  result = qword_27EF1BAF8;
  if (!qword_27EF1BAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BB00);
    sub_249D58F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BAF8);
  }

  return result;
}

unint64_t sub_249D58F58()
{
  result = qword_27EF1BB08;
  if (!qword_27EF1BB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BB10);
    sub_249D58FE4();
    sub_249D590C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB08);
  }

  return result;
}

unint64_t sub_249D58FE4()
{
  result = qword_27EF1BB18;
  if (!qword_27EF1BB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BB20);
    sub_249D45DFC();
    sub_249D59070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB18);
  }

  return result;
}

unint64_t sub_249D59070()
{
  result = qword_27EF1BB28;
  if (!qword_27EF1BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB28);
  }

  return result;
}

unint64_t sub_249D590C4()
{
  result = qword_27EF1BB30;
  if (!qword_27EF1BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB30);
  }

  return result;
}

unint64_t sub_249D59118()
{
  result = qword_27EF1BB38;
  if (!qword_27EF1BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB38);
  }

  return result;
}

unint64_t sub_249D5916C()
{
  result = qword_27EF1BB40;
  if (!qword_27EF1BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB40);
  }

  return result;
}

unint64_t sub_249D591C0()
{
  result = qword_27EF1BB48;
  if (!qword_27EF1BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB48);
  }

  return result;
}

uint64_t sub_249D59214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D59294(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for _SceneView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_249D59328(uint64_t a1, int *a2)
{
  type metadata accessor for _SceneView();

  return sub_249D57F50(a1, a2);
}

unint64_t sub_249D593A8()
{
  result = qword_27EF1BCE0;
  if (!qword_27EF1BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BCE0);
  }

  return result;
}

uint64_t objectdestroy_20Tm()
{
  v1 = (type metadata accessor for _SceneView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BAB0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA60);

  v6 = v0 + v3 + v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BAB8);
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BA68);

  v8 = v0 + v3 + v1[11];
  sub_249D4EB2C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_249D5959C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for _SceneView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_249D5814C(a1, a2, v6);
}

unint64_t sub_249D5961C()
{
  result = qword_27EF1BB50;
  if (!qword_27EF1BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BB50);
  }

  return result;
}

uint64_t sub_249D59674(int *a1)
{
  v1 = *(a1 + 4);
  v3 = *a1;
  v4 = v1;
  return sub_249D3A75C(&v3);
}

uint64_t sub_249D59760(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249D597A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BAA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BAA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BA98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BA90);
  sub_249D3C308();
  sub_249D58C4C();
  sub_249D59760(&qword_27EF1B178, sub_249D3C308);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_249D593A8();
  swift_getOpaqueTypeConformance2();
  sub_249D5961C();
  return swift_getOpaqueTypeConformance2();
}

void SceneStack.init(_:priority:forLayers:activationPolicy:content:)(void *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = *(a3 + 4);
  v11 = *(a4 + 32);
  v16 = *a3;
  v17 = v10;
  v12 = *(a4 + 16);
  v14[0] = *a4;
  v14[1] = v12;
  v15 = v11;
  type metadata accessor for SnapshotSource();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_249D72FD4();
  *(v13 + 24) = 0;
  sub_249D728A4();
  SceneStack.init(_:priority:forLayers:activationPolicy:snapshotSource:content:)(a1, a2, &v16, v14, v13, a5, a6);
}

void SceneStack.init(_:priority:forLayers:activationPolicy:snapshotSource:content:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a3 + 4);
  v13 = *(a4 + 32);
  v18 = *a3;
  v19 = v12;
  v14 = *(a4 + 16);
  v16[0] = *a4;
  v16[1] = v14;
  v17 = v13;
  v15 = a1;
  sub_249D50704(a1, a2, &v18, v16, a5, a6, a7);
}

uint64_t SceneStack.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BB58);
  MEMORY[0x28223BE20](v23[0]);
  v24 = v23 - v4;
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B850);
  v7 = *(a1 + 24);
  v8 = sub_249D507F8();
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  sub_249D72CE4();
  sub_249D72F54();
  swift_getTupleTypeMetadata2();
  sub_249D730A4();
  swift_getWitnessTable();
  sub_249D72FC4();
  swift_getWitnessTable();
  v23[1] = sub_249D72AA4();
  v9 = sub_249D72A74();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v16 = _s14descr285CF5A29O13ConfigurationVMa();
  v17 = v24;
  sub_249D4F784(v16, v24);
  v26 = v5;
  v27 = v7;
  v28 = v2;
  sub_249D73054();
  v18 = sub_249D5A438();
  sub_249D72ED4();
  sub_249D5A570(v17);
  WitnessTable = swift_getWitnessTable();
  v29 = v18;
  v30 = WitnessTable;
  swift_getWitnessTable();
  v20 = *(v10 + 16);
  v20(v15, v13, v9);
  v21 = *(v10 + 8);
  v21(v13, v9);
  v20(v25, v15, v9);
  return (v21)(v15, v9);
}

uint64_t sub_249D59E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v20 = a1;
  v22 = a4;
  v23 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B850);
  v21 = a3;
  v25 = a3;
  v26 = sub_249D507F8();
  sub_249D72CE4();
  sub_249D72F54();
  swift_getTupleTypeMetadata2();
  sub_249D730A4();
  swift_getWitnessTable();
  v6 = sub_249D72FC4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v14 = v20;
  v15 = v21;
  *(&v19 - 4) = a2;
  *(&v19 - 3) = v15;
  *(&v19 - 2) = v14;
  sub_249D73054();
  sub_249D72FB4();
  swift_getWitnessTable();
  v16 = *(v7 + 16);
  v16(v12, v10, v6);
  v17 = *(v7 + 8);
  v17(v10, v6);
  v16(v22, v12, v6);
  v17(v12, v6);
}

void sub_249D5A14C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[2] = a3;
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B850);
  v24 = a2;
  v25 = sub_249D507F8();
  sub_249D72CE4();
  v4 = sub_249D72F54();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  sub_249D73274();
  v19[1] = sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = _s14descr285CF5A29O13ConfigurationVMa();
  sub_249D4F744(&v22);
  v13 = v22;
  v12 = v23;
  sub_249D50170(v11, v8);
  v21[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v15 = *(v5 + 16);
  v15(v10, v8, v4);
  v16 = *(v5 + 8);
  v16(v8, v4);
  v21[0] = v13;
  v21[1] = v12;
  v22 = v21;
  v15(v8, v10, v4);
  v23 = v8;
  v17 = v13;

  v20[0] = &type metadata for SnapshotView;
  v20[1] = v4;
  v19[3] = sub_249D5A824();
  v19[4] = WitnessTable;
  sub_249D62E40(&v22, 2uLL, v20);

  v16(v10, v4);
  v16(v8, v4);
  v18 = v21[0];
}

unint64_t sub_249D5A438()
{
  result = qword_27EF1BB60[0];
  if (!qword_27EF1BB60[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BB58);
    type metadata accessor for _SceneView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B888);
    sub_249D5A518();
    sub_249D50A3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF1BB60);
  }

  return result;
}

unint64_t sub_249D5A518()
{
  result = qword_27EF1B890;
  if (!qword_27EF1B890)
  {
    type metadata accessor for _SceneView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B890);
  }

  return result;
}

uint64_t sub_249D5A570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BB58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D5A624()
{
  result = _s14descr285CF5A29O13ConfigurationVMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249D5A6AC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BB58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B850);
  sub_249D507F8();
  sub_249D72CE4();
  sub_249D72F54();
  swift_getTupleTypeMetadata2();
  sub_249D730A4();
  swift_getWitnessTable();
  sub_249D72FC4();
  swift_getWitnessTable();
  sub_249D72AA4();
  sub_249D72A74();
  sub_249D5A438();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_249D5A824()
{
  result = qword_27EF1BBE8;
  if (!qword_27EF1BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BBE8);
  }

  return result;
}

uint64_t (*sub_249D5A87C())(uint64_t a1)
{
  sub_249D5BA58();
  sub_249D72B44();
  *(swift_allocObject() + 16) = v1;
  return sub_249D5BAAC;
}

double sub_249D5A920@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_249D781F0;
  return result;
}

uint64_t sub_249D5A930()
{
  sub_249D5B95C();

  return sub_249D72B44();
}

uint64_t sub_249D5A9C4(void (*a1)(void))
{
  a1();
  sub_249D72B44();
  return v2;
}

uint64_t View.sceneGeometry(update:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_249D72E54();
}

double sub_249D5AACC@<D0>(_OWORD *a1@<X8>)
{
  sub_249D5BA58();
  sub_249D72B44();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_249D5AB1C@<D0>(_OWORD *a1@<X8>)
{
  sub_249D5BA58();
  sub_249D72B44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_249D5AB6C()
{
  sub_249D5BA58();

  return sub_249D72B54();
}

uint64_t sub_249D5ABD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D5ACCC()
{
  swift_getKeyPath();
  sub_249D72E54();
}

uint64_t keypath_get_2Tm@<X0>(void (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  a1();
  result = sub_249D72B44();
  *a2 = v4;
  return result;
}

uint64_t View.sceneGeometryCoordinateSpace(_:)()
{
  swift_getKeyPath();
  sub_249D72E54();
}

double sub_249D5AEE4@<D0>(_OWORD *a1@<X8>)
{
  sub_249D5B95C();
  sub_249D72B44();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_249D5AF34@<D0>(_OWORD *a1@<X8>)
{
  sub_249D5B95C();
  sub_249D72B44();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_249D5AF84(uint64_t a1)
{
  sub_249D49880(*a1, *(a1 + 8));
  sub_249D5B95C();
  return sub_249D72B54();
}

__n128 SceneGeometry.frame.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SceneGeometry.frame.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

__n128 SceneGeometry.safeAreaInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SceneGeometry.safeAreaInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

uint64_t SceneGeometry.cornerRadius.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t SceneGeometry.interfaceOrientation.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t SceneGeometry.description.getter()
{
  v1 = *(v0 + 104);
  sub_249D734E4();
  MEMORY[0x24C201340](0x203A656D617266, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BBF0);
  v2 = sub_249D73154();
  MEMORY[0x24C201340](v2);

  MEMORY[0x24C201340](0xD000000000000011, 0x8000000249D7B350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BBF8);
  v3 = sub_249D73154();
  MEMORY[0x24C201340](v3);

  MEMORY[0x24C201340](0x5272656E726F630ALL, 0xEF203A7375696461);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC00);
  v4 = sub_249D73154();
  MEMORY[0x24C201340](v4);

  MEMORY[0x24C201340](0xD000000000000017, 0x8000000249D7B370);
  if ((v1 & 1) == 0)
  {
    v5 = BSInterfaceOrientationDescription();
    sub_249D73144();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC08);
  v6 = sub_249D73154();
  MEMORY[0x24C201340](v6);

  return 0;
}

void sub_249D5B338(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 32) & 1) == 0)
  {
    [a1 setFrame_];
  }

  if ((*(a3 + 104) & 1) == 0)
  {
    [a1 setInterfaceOrientation_];
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    if (*(a3 + 72))
    {
      v6 = a1;
      if (*(a3 + 88))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(a3 + 56);
      v7 = *(a3 + 64);
      v10 = *(a3 + 40);
      v9 = *(a3 + 48);
      v11 = a1;
      [v5 setSafeAreaInsetsPortrait_];
      if (*(a3 + 88))
      {
LABEL_12:

        return;
      }
    }

    v12 = [objc_allocWithZone(MEMORY[0x277CF0BE8]) initWithCornerRadius_];
    [v5 setCornerRadiusConfiguration_];

    goto LABEL_12;
  }
}

double static SceneGeometryCoordinateSpace.global.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_249D781F0;
  return result;
}

uint64_t static SceneGeometryCoordinateSpace.named(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

BOOL _s12DrawingBoard13SceneGeometryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v6 = *(a1 + 104);
  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      return 0;
    }

    v17 = *(a2 + 80);
    v18 = *(a1 + 80);
    result = CGRectEqualToRect(*a1, *a2);
    v8 = v17;
    v3 = v18;
    if (!result)
    {
      return result;
    }
  }

  if (v2)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }

    v19 = v3;
    v13 = v8;
    v14 = sub_249D72924();
    v8 = v13;
    v3 = v19;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v15 = v9;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if ((v6 & 1) == 0)
  {
    if (v5 == v10)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    return (v16 & 1) == 0;
  }

  return (v11 & 1) != 0;
}

uint64_t sub_249D5B60C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D5B62C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 105) = v3;
  return result;
}

uint64_t sub_249D5B684(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_249D5B6E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyySo7FBSceneC_12DrawingBoard13SceneGeometryVztYbcGGAaBHPxAaBHD1__AlA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_249D72A74();
  sub_249D5B828(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_249D5B828(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249D5B87C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D5B8D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_249D5B92C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_249D5B95C()
{
  result = qword_27EF1BC40;
  if (!qword_27EF1BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BC40);
  }

  return result;
}

unint64_t sub_249D5B9B0()
{
  result = qword_27EF1BC48;
  if (!qword_27EF1BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BC48);
  }

  return result;
}

unint64_t sub_249D5BA04()
{
  result = qword_27EF1BC50;
  if (!qword_27EF1BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BC50);
  }

  return result;
}

unint64_t sub_249D5BA58()
{
  result = qword_27EF1BC58;
  if (!qword_27EF1BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BC58);
  }

  return result;
}

uint64_t sub_249D5BAAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_249D5BB24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = *(a1 + 10);
  v35 = a1[12];
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  v17 = *(a2 + 56);
  v16 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a2 + 80);
  v20 = *(a2 + 88);
  v21 = *(a2 + 96);
  v22 = *(a2 + 104);
  v23 = *(a2 + 105);
  v61 = v7;
  v60 = *(a1 + 88);
  v59 = *(a1 + 104);
  if ((*(a1 + 105) & 1) == 0)
  {
    v58 = v18;
    v57 = v20;
    v56 = v22;
    if (v23)
    {
      return 0x5D6C696E5BLL;
    }

    v33 = v19;
    v34 = v21;
    v54 = 0;
    v55 = 0xE000000000000000;
    v32 = v16;
    if (v6)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((v13 & 1) != 0 || (v62.origin.x = v10, v62.origin.y = v9, v62.size.width = v11, v62.size.height = v12, !CGRectEqualToRect(*&v2, v62)))
    {
LABEL_15:
      *v36 = v10;
      *&v36[1] = v9;
      v37 = v11;
      v38 = v12;
      v39 = v13 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BBF0);
      v26 = sub_249D73154();
      MEMORY[0x24C201340](v26);

      MEMORY[0x24C201340](10, 0xE100000000000000);
      MEMORY[0x24C201340](0x203A656D617266, 0xE700000000000000);

      v18 = v58;
      if (v61)
      {
LABEL_16:
        if (v18)
        {
LABEL_21:
          if (v60)
          {
            if (v57)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v8 == v33)
            {
              v28 = v57;
            }

            else
            {
              v28 = 1;
            }

            if ((v28 & 1) == 0)
            {
LABEL_29:
              if (v59)
              {
                if (v56)
                {
                  return v54;
                }
              }

              else
              {
                if (v35 == *&v34)
                {
                  v30 = v56;
                }

                else
                {
                  v30 = 1;
                }

                if ((v30 & 1) == 0)
                {
                  return v54;
                }
              }

              sub_249D734E4();

              v52 = v34;
              LOBYTE(v53) = v56;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC60);
              v31 = sub_249D73154();
              MEMORY[0x24C201340](v31);

              MEMORY[0x24C201340](10, 0xE100000000000000);
              MEMORY[0x24C201340](0xD000000000000016, 0x8000000249D7B3B0);

              return v54;
            }
          }

          sub_249D734E4();

          strcpy(v36, "cornerRadius: ");
          HIBYTE(v36[1]) = -18;
          v52 = v33;
          LOBYTE(v53) = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC00);
          v29 = sub_249D73154();
          MEMORY[0x24C201340](v29);

          MEMORY[0x24C201340](10, 0xE100000000000000);
          MEMORY[0x24C201340](v36[0], v36[1]);

          goto LABEL_29;
        }

        goto LABEL_19;
      }

LABEL_13:
      if (v18)
      {
        v25 = 1;
LABEL_20:
        sub_249D734E4();

        v36[0] = v15;
        v36[1] = v14;
        v37 = v17;
        v38 = v32;
        v39 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BBF8);
        v27 = sub_249D73154();
        MEMORY[0x24C201340](v27);

        MEMORY[0x24C201340](10, 0xE100000000000000);
        MEMORY[0x24C201340](0xD000000000000010, 0x8000000249D7B390);

        goto LABEL_21;
      }

      if (sub_249D72924())
      {
        goto LABEL_21;
      }

LABEL_19:
      v25 = 0;
      goto LABEL_20;
    }

    if (v7)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v23)
  {
    return 0x3E2D205D6C696E5BLL;
  }

  *v36 = v10;
  *&v36[1] = v9;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  *v40 = *(a2 + 33);
  *&v40[3] = *(a2 + 36);
  v41 = v15;
  v42 = v14;
  v43 = v17;
  v44 = v16;
  v45 = v18;
  *v46 = *(a2 + 73);
  *&v46[3] = *(a2 + 76);
  v47 = v19;
  v48 = v20;
  *&v49[3] = *(a2 + 92);
  *v49 = *(a2 + 89);
  v50 = v21;
  v51 = v22;
  return SceneGeometry.description.getter();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_249D5C018(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_249D5C074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_249D5C0F8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void, id *), uint64_t a5, char a6)
{
  v12 = sub_249D72B14();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && a3 != 1)
  {
    sub_249D4EDC8();
    v16 = a2;
    sub_249D72994();
    v17 = v22;
    v21 = v16;
    v22 = a4;
    v17(&v22, &v21);
  }

  if (a6)
  {
    v22 = a5;
    sub_249D5E38C(a5, 1);
  }

  else
  {
    sub_249D5E38C(a5, 0);
    sub_249D73314();
    v18 = sub_249D72DB4();
    sub_249D728C4();

    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D5CCD0(a5, 0);
    (*(v13 + 8))(v15, v12);
    a5 = v22;
  }

  sub_249D5C2E4(a1, a5);
}

uint64_t sub_249D5C2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_249D5CCF4(*(a2 + 16), 0);
  v5 = sub_249D5DED8(&v16, v4 + 4, v3, a2);

  sub_249D39114();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x277D84F90];
  }

  v16 = v4;
  v6 = 0;
  sub_249D5CD7C(&v16);
  v14 = a2;
  v7 = v16;
  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v15 = *(v16 + 16);
  if (v15)
  {
    while (v15 >= 1)
    {
      v8 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x24C201690](v8, v7);
        }

        else
        {
          v9 = *(v7 + 8 * v8 + 32);
        }

        if (!*(v14 + 16))
        {
          break;
        }

        v10 = sub_249D68CA0(v9);
        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }

        ++v8;
        v6 = *(*(v14 + 56) + 96 * v10 + 64);

        v6(a1);

        if (v15 == v8)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v15 = sub_249D73444();
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_16:
  }

  return result;
}

uint64_t sub_249D5C51C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v3 = sub_249D72B14();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC68);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC70);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v6;
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v46 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v50 = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_249D5CCDC;
  *(v12 + 24) = v11;

  sub_249D5E38C(v7, v8);
  v41 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BC78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B160);
  sub_249D3C4C8(&qword_27EF1BC80, &qword_27EF1BC78);
  sub_249D3C254();
  v13 = v42;
  v14 = v47;
  sub_249D72EB4();

  v15 = swift_allocObject();
  *(v15 + 2) = sub_249D5CCDC;
  *(v15 + 3) = v11;
  *(v15 + 4) = v9;
  v16 = (v13 + *(v43 + 36));
  *v16 = sub_249D5E430;
  v16[1] = v15;
  v16[2] = 0;
  v16[3] = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v17 + 24) = v8;
  v44 = v9;
  *(v17 + 32) = v9;
  v18 = v46;
  *(v17 + 40) = v46;
  LOBYTE(v50) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_249D5E43C;
  *(v19 + 24) = v17;
  sub_249D5E38C(v7, v8);
  sub_249D5E498();
  v20 = v41;

  v21 = v20;
  sub_249D72EB4();

  sub_249D44B88(v13, &qword_27EF1BC68);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_249D5E43C;
  *(v22 + 24) = v17;
  v23 = v46;
  *(v22 + 32) = v46;
  v24 = &v14[*(v48 + 36)];
  *v24 = sub_249D5E5F8;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  if (v8 == 1)
  {
    v50 = v7;
    sub_249D5E38C(v7, 1);
    v25 = v7;
  }

  else
  {
    sub_249D5E38C(v7, 0);
    sub_249D73314();
    v26 = sub_249D72DB4();
    sub_249D728C4();

    v27 = v38;
    sub_249D72B04();
    swift_getAtKeyPath();
    sub_249D5CCD0(v7, 0);
    (*(v39 + 8))(v27, v40);
    v25 = v50;
  }

  v28 = swift_allocObject();
  *(v28 + 16) = v7;
  *(v28 + 24) = v8;
  *(v28 + 32) = v44;
  *(v28 + 40) = v23;
  v49 = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_249D5E648;
  *(v29 + 24) = v28;
  sub_249D5E38C(v7, v8);
  v30 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B3D8);
  sub_249D5E694();
  sub_249D3C4C8(&qword_27EF1BC98, &qword_27EF1B3D8);
  v31 = v45;
  v32 = v47;
  sub_249D72EB4();

  sub_249D44B88(v32, &qword_27EF1BC70);
  v33 = v49;

  v34 = swift_allocObject();
  *(v34 + 2) = sub_249D5E648;
  *(v34 + 3) = v28;
  *(v34 + 4) = v33;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BCA0);
  v36 = (v31 + *(result + 36));
  *v36 = sub_249D5E430;
  v36[1] = v34;
  v36[2] = 0;
  v36[3] = 0;
  return result;
}

void sub_249D5CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a6)
  {
    if (a7)
    {
      MEMORY[0x28223BE20](a1);
      v12[2] = v7;
      v12[3] = v8;
      v12[4] = v9;
      v13 = v10 & 1;
      v14 = v8;
      v15 = 1;
      v11 = v8;
      sub_249D39550(sub_249D5E910, v12);
    }
  }
}

void sub_249D5CC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  if (a6)
  {
    if (a7)
    {
      MEMORY[0x28223BE20](a1);
      v14[2] = v9;
      v14[3] = v10;
      v14[4] = v11;
      v15 = v12 & 1;
      v16 = v10;
      v17 = 1;
      v13 = v10;
      sub_249D39550(a8, v14);
    }
  }
}

uint64_t sub_249D5CCD0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_249D5CCF4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BCA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_249D5CD7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_249D5E02C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_249D5CDF8(v6);
  return sub_249D73524();
}

uint64_t sub_249D5CDF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_249D73654();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_249D733F4();
        v6 = sub_249D73244();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_249D5D198(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_249D5CEFC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_249D5CEFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
LABEL_5:
    v17 = v5;
    v18 = a3;
    v16 = v6;
    while (1)
    {

      v7 = sub_249D733D4();
      if (!swift_isClassType() || v7 == 0)
      {
        break;
      }

      v9 = sub_249D733D4();
      if (!swift_isClassType() || v9 == 0)
      {
        break;
      }

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      LODWORD(ObjCClassFromMetadata) = [swift_getObjCClassFromMetadata() isSubclassOfClass_];

      if (ObjCClassFromMetadata)
      {
        v12 = v9 == v7;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        if (!v4)
        {
          __break(1u);
          break;
        }

        v13 = *v5;
        *v5 = v5[1];
        v5[1] = v13;
        --v5;
        if (!__CFADD__(v6++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v5 = v17 + 1;
      v6 = v16 - 1;
      if (v18 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    sub_249D734E4();
    MEMORY[0x24C201340](0xD000000000000029, 0x8000000249D7A260);
    sub_249D733F4();
    sub_249D73564();
    result = sub_249D735B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_249D5D198(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v11 = *v6;

        v100 = sub_249D36BE0();
        if (v5)
        {
        }

        v10 = v8 + 2;
        v94 = v8;
        if (v8 + 2 < v7)
        {
          v12 = v11 + 8 * v8 + 16;
          do
          {

            v13 = sub_249D733D4();
            if (swift_isClassType())
            {
              v14 = v13 == 0;
            }

            else
            {
              v14 = 1;
            }

            if (v14)
            {
              goto LABEL_149;
            }

            v15 = sub_249D733D4();
            if (!swift_isClassType() || v15 == 0)
            {
              goto LABEL_149;
            }

            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            LOBYTE(ObjCClassFromMetadata) = [swift_getObjCClassFromMetadata() isSubclassOfClass_];

            if (ObjCClassFromMetadata)
            {
              if (((v100 ^ (v15 == v13)) & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            else if (v100)
            {
              v6 = a3;
              v8 = v94;
              goto LABEL_23;
            }

            v12 += 8;
            ++v10;
          }

          while (v7 != v10);
          v10 = v7;
        }

LABEL_22:
        v6 = a3;
        v8 = v94;
        if (v100)
        {
LABEL_23:
          if (v10 < v8)
          {
            goto LABEL_139;
          }

          if (v8 < v10)
          {
            v18 = 8 * v10 - 8;
            v19 = 8 * v8;
            v20 = v10;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *v6;
                if (!*v6)
                {
                  goto LABEL_145;
                }

                v23 = *(v22 + v19);
                *(v22 + v19) = *(v22 + v18);
                *(v22 + v18) = v23;
              }

              ++v21;
              v18 -= 8;
              v19 += 8;
            }

            while (v21 < v20);
          }
        }
      }

      v24 = v6[1];
      if (v10 < v24)
      {
        if (__OFSUB__(v10, v8))
        {
          goto LABEL_138;
        }

        if (v10 - v8 < a4)
        {
          v25 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_140;
          }

          if (v25 >= v24)
          {
            v25 = v6[1];
          }

          if (v25 < v8)
          {
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (v10 != v25)
          {
            v91 = v5;
            v92 = v9;
            v26 = *v6;
            v27 = (*v6 + 8 * v10 - 8);
            v95 = v8;
            v28 = (v8 - v10);
            v98 = v25;
            do
            {
              v99 = v27;
              v101 = v10;
              v29 = v28;
              do
              {

                v30 = sub_249D733D4();
                if (swift_isClassType())
                {
                  v31 = v30 == 0;
                }

                else
                {
                  v31 = 1;
                }

                if (v31)
                {
                  goto LABEL_149;
                }

                v32 = sub_249D733D4();
                if (!swift_isClassType() || v32 == 0)
                {
                  goto LABEL_149;
                }

                v34 = swift_getObjCClassFromMetadata();
                LODWORD(v34) = [swift_getObjCClassFromMetadata() isSubclassOfClass_];

                if (!v34 || v32 == v30)
                {
                  break;
                }

                if (!v26)
                {
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
                  while (1)
                  {
LABEL_149:
                    sub_249D734E4();
                    MEMORY[0x24C201340](0xD000000000000029, 0x8000000249D7A260);
                    sub_249D733F4();
                    sub_249D73564();
                    sub_249D735B4();
                    __break(1u);
                  }
                }

                v36 = *v27;
                *v27 = v27[1];
                v27[1] = v36;
                --v27;
              }

              while (!__CFADD__(v29++, 1));
              ++v10;
              v27 = v99 + 1;
              --v28;
            }

            while ((v101 + 1) != v98);
            v10 = v98;
            v5 = v91;
            v9 = v92;
            v6 = a3;
            v8 = v95;
          }
        }
      }

      if (v10 < v8)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_249D3CAE0(0, *(v9 + 2) + 1, 1, v9);
      }

      v39 = *(v9 + 2);
      v38 = *(v9 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v9 = sub_249D3CAE0((v38 > 1), v39 + 1, 1, v9);
      }

      *(v9 + 2) = v40;
      v41 = &v9[16 * v39];
      *(v41 + 4) = v8;
      *(v41 + 5) = v10;
      v8 = v10;
      v42 = *a1;
      if (!*a1)
      {
        goto LABEL_147;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v44 = *(v9 + 4);
            v45 = *(v9 + 5);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_78:
            if (v47)
            {
              goto LABEL_126;
            }

            v60 = &v9[16 * v40];
            v62 = *v60;
            v61 = *(v60 + 1);
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_129;
            }

            v66 = &v9[16 * v43 + 32];
            v68 = *v66;
            v67 = *(v66 + 1);
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_132;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_133;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                v43 = v40 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v70 = &v9[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_92:
          if (v65)
          {
            goto LABEL_128;
          }

          v73 = &v9[16 * v43];
          v75 = *(v73 + 4);
          v74 = *(v73 + 5);
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_131;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_99:
          v81 = v43 - 1;
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
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
            goto LABEL_141;
          }

          if (!*v6)
          {
            goto LABEL_144;
          }

          v82 = *&v9[16 * v81 + 32];
          v83 = *&v9[16 * v43 + 40];
          sub_249D5DAA0((*v6 + 8 * v82), (*v6 + 8 * *&v9[16 * v43 + 32]), (*v6 + 8 * v83), v42);
          if (v5)
          {
          }

          if (v83 < v82)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_249D5DEC4(v9);
          }

          if (v81 >= *(v9 + 2))
          {
            goto LABEL_123;
          }

          v84 = &v9[16 * v81];
          *(v84 + 4) = v82;
          *(v84 + 5) = v83;
          sub_249D5DE38(v43);
          v40 = *(v9 + 2);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v48 = &v9[16 * v40 + 32];
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_124;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_125;
        }

        v55 = &v9[16 * v40];
        v57 = *v55;
        v56 = *(v55 + 1);
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_127;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_130;
        }

        if (v59 >= v51)
        {
          v77 = &v9[16 * v43 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_134;
          }

          if (v46 < v80)
          {
            v43 = v40 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v7 = v6[1];
      if (v8 >= v7)
      {
        goto LABEL_109;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_109:
  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_148;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_142:
    v9 = sub_249D5DEC4(v9);
  }

  v85 = *(v9 + 2);
  if (v85 >= 2)
  {
    while (1)
    {
      v86 = *v6;
      if (!*v6)
      {
        goto LABEL_146;
      }

      v6 = (v85 - 1);
      v87 = *&v9[16 * v85];
      v88 = *&v9[16 * v85 + 24];
      sub_249D5DAA0((v86 + 8 * v87), (v86 + 8 * *&v9[16 * v85 + 16]), (v86 + 8 * v88), v8);
      if (v5)
      {
      }

      if (v88 < v87)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_249D5DEC4(v9);
      }

      if (v85 - 2 >= *(v9 + 2))
      {
        goto LABEL_136;
      }

      v89 = &v9[16 * v85];
      *v89 = v87;
      *(v89 + 1) = v88;
      sub_249D5DE38(v85 - 1);
      v85 = *(v9 + 2);
      v6 = a3;
      if (v85 <= 1)
      {
      }
    }
  }
}

uint64_t sub_249D5DAA0(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {

      v17 = sub_249D36BE0();
      if (v4)
      {

        v32 = &v15[-v5 + 7];
        if (&v15[-v5] >= 0)
        {
          v32 = &v15[-v5];
        }

        if (v7 < v5 || v7 >= v5 + (v32 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v33 = 8 * (v32 >> 3);
          v34 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;

      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16;
      v16 += 8;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      v7 += 8;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v38 = &v15[-v5 + 7];
    if (&v15[-v5] >= 0)
    {
      v38 = &v15[-v5];
    }

    if (v21 >= v5 && v21 < v5 + (v38 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v33 = 8 * (v38 >> 3);
    v34 = v21;
LABEL_59:
    v37 = v5;
LABEL_60:
    memmove(v34, v37, v33);
    return 1;
  }

  v42 = v5;
  v22 = -v5;
  v40 = -v5;
LABEL_28:
  v41 = v21;
  v23 = v21 - 8;
  v24 = &v15[v22];
  v6 -= 8;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v26 -= 8;
    v27 = v23;

    v28 = sub_249D36BE0();
    if (v4)
    {
      break;
    }

    v29 = v28;

    v30 = v6 + 8;
    if (v29)
    {
      v31 = v27;
      if (v30 != v41)
      {
        *v6 = *v27;
      }

      v5 = v42;
      v15 = v25;
      if (v25 <= v42 || (v21 = v31, v22 = v40, v31 <= v7))
      {
        v21 = v31;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v30 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    v6 -= 8;
    v25 = v26;
    v23 = v27;
    if (v26 <= v42)
    {
      v15 = v26;
      v21 = v41;
      v5 = v42;
      goto LABEL_53;
    }
  }

  if (v24 >= 0)
  {
    v35 = v24;
  }

  else
  {
    v35 = v24 + 7;
  }

  v36 = v35 >> 3;
  v34 = v41;
  v37 = v42;
  if (v41 < v42 || v41 >= &v42[v35 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v41, v42, 8 * v36);
    return 1;
  }

  if (v41 != v42)
  {
    v33 = 8 * v36;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_249D5DE38(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_249D5DEC4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_249D5DED8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_249D5E040(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *, uint64_t))
{
  v6 = *a1;
  v8 = *a2;
  v9 = v6;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(&v9, &v8, a3);
}

uint64_t sub_249D5E114(void (*a1)(uint64_t *, uint64_t *, void), uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(&v5, &v5, 0);
}

uint64_t sub_249D5E1E0(char *a1, char *a2, uint64_t a3, void (*a4)(char *, char *, uint64_t))
{
  v6 = *a2;
  v9 = *a1;
  v8 = v6;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(&v9, &v8, a3);
}

uint64_t sub_249D5E2B8(void (*a1)(char *, char *, void), uint64_t a2, char *a3)
{
  v5 = *a3;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a1(&v5, &v5, 0);
}

uint64_t sub_249D5E38C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_249D5E398()
{
  result = qword_27EF1B178;
  if (!qword_27EF1B178)
  {
    sub_249D3C308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1B178);
  }

  return result;
}

uint64_t sub_249D5E3F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249D5E458()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_249D5E498()
{
  result = qword_27EF1BC88;
  if (!qword_27EF1BC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BC68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BC78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B160);
    sub_249D3C4C8(&qword_27EF1BC80, &qword_27EF1BC78);
    sub_249D3C254();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BC88);
  }

  return result;
}

uint64_t sub_249D5E5C0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t objectdestroyTm_2()
{
  sub_249D5CCD0(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

unint64_t sub_249D5E694()
{
  result = qword_27EF1BC90;
  if (!qword_27EF1BC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BC70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BC68);
    sub_249D5E498();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BC90);
  }

  return result;
}

uint64_t sub_249D5E770()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_249D5E7D8()
{
  result = qword_27EF1BCB0;
  if (!qword_27EF1BCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BCA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BC70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1B3D8);
    sub_249D5E694();
    sub_249D3C4C8(&qword_27EF1BC98, &qword_27EF1B3D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BCB0);
  }

  return result;
}

double static SceneActivationPolicy.activated.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_249D786E0;
  *(a1 + 16) = nullsub_1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

double static SceneActivationPolicy.unspecified.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t static SceneActivationPolicy.activated(transitioner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 1;
}

double static SceneActivationPolicy.remainActivated.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_249D781F0;
  *(a1 + 16) = nullsub_1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

void static SceneActivationPolicy.deactivated.getter(uint64_t a1@<X8>)
{
  *a1 = nullsub_1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t static SceneActivationPolicy.deactivated(transitioner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = sub_249D39A6C;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
}

uint64_t sub_249D5EA34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D5EA6C()
{
  if (!*(v0 + 32))
  {
    return 0x6176697463616544;
  }

  if (*(v0 + 32) != 1)
  {
    return 0x6669636570736E55;
  }

  result = 0x6574617669746341;
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = sub_249D73664();
    MEMORY[0x24C201340](v2);

    MEMORY[0x24C201340](93, 0xE100000000000000);
    return 0x6574617669746341;
  }

  return result;
}

BOOL sub_249D5EB58(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    return !*(a2 + 32);
  }

  v4 = *a2;
  v3 = a2[1];
  if (*(a1 + 32) != 1)
  {
    v7 = a2[2] | a2[3] | v4 | v3;
    return v2 == 2 && v7 == 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v5 = (*a1 == v4) & ~v3;
  if ((*(a1 + 8) & 1) == 0)
  {
    LOBYTE(v3) = v5;
  }

  return v3 & 1;
}

uint64_t static SceneActivationPolicy.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v4 = *a2;
    v3 = a2[1];
    if (*(a1 + 32) == 1)
    {
      if (v2 == 1)
      {
        if (*(a1 + 8))
        {
          if (v3)
          {
            return 1;
          }
        }

        else if (!(v3 & 1 | (*a1 != v4)))
        {
          return 1;
        }
      }
    }

    else
    {
      v6 = a2[2] | a2[3] | v4 | v3;
      if (v2 == 2 && v6 == 0)
      {
        return 1;
      }
    }
  }

  else if (!*(a2 + 32))
  {
    return 1;
  }

  return 0;
}

BOOL sub_249D5EC48(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v4 = *a2;
    v3 = a2[1];
    if (*(a1 + 32) != 1)
    {
      v6 = a2[2] | a2[3] | v4 | v3;
      return v2 == 2 && v6 == 0;
    }

    if (v2 == 1)
    {
      if (*(a1 + 8))
      {
        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v3 & 1 | (*a1 != v4))
      {
        return 0;
      }

      return 1;
    }
  }

  else if (!*(a2 + 32))
  {
    return 1;
  }

  return 0;
}

double static SceneActivationPolicy.remainActivatedWithUnlimitedAttempts.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_249D781F0;
  *(a1 + 16) = nullsub_1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return result;
}

uint64_t _s12DrawingBoard21SceneActivationPolicyV15remainActivated12transitionerACySo7FBSceneC_So25FBSSceneTransitionContextCtc_tFZ_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_249D781F0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 1;
}

uint64_t SceneActivationPolicy.description.getter()
{
  if (!*(v0 + 32))
  {
    return 0x6176697463616544;
  }

  if (*(v0 + 32) != 1)
  {
    return 0x6669636570736E55;
  }

  result = 0x6574617669746341;
  if ((*(v0 + 8) & 1) == 0)
  {
    v2 = sub_249D73664();
    MEMORY[0x24C201340](v2);

    MEMORY[0x24C201340](93, 0xE100000000000000);
    return 0x6574617669746341;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249D5EE20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_249D5EE6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_249D5EEB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

double sub_249D5EEEC@<D0>(uint64_t a1@<X8>)
{
  sub_249D60468();
  sub_249D72B44();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_249D5EFA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D60420(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
  sub_249D72874();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_249D5F078()
{
  v1 = v0[7];
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  v2 = *(v1 + 88);
  swift_getKeyPath();
  *__dst = v2;
  sub_249D60420(&qword_27EF1B0B0, type metadata accessor for UIPresenterObserver);

  sub_249D72874();

  if (*(v2 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting) == 1)
  {
    swift_getKeyPath();
    *__dst = v0;
    sub_249D60420(&qword_27EF1B0B8, type metadata accessor for Presentation);
    sub_249D72874();

    v32 = v0[6];
    v3 = v32;
  }

  else
  {
    v32 = 0;
  }

  v31 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  __dst[0] = 0;
  v29 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  v38 = 0;
  v27 = swift_getKeyPath();
  v44 = 0;
  v43 = 0;
  v26 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v37 = 0;
  v24 = swift_getKeyPath();
  v36 = 0;
  v41 = 0;
  v40 = 0;
  *&__src[32] = 0;
  memset(__src, 0, 32);
  __src[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BCD0);
  sub_249D72F64();
  v21 = __dst[40];
  v22 = *&__dst[48];
  v23 = *&__dst[32];
  v20 = *__dst;
  v18 = *&__dst[16];
  v42 = __dst[40];
  v19 = sub_249D72A84();
  v17 = sub_249D72DC4();
  swift_getKeyPath();
  *__dst = v0;
  sub_249D60420(&qword_27EF1B0B8, type metadata accessor for Presentation);
  sub_249D72874();

  v4 = v0[6];
  v5 = *(v1 + 88);
  swift_getKeyPath();
  *__dst = v5;
  v6 = v4;
  sub_249D72874();

  v16 = *(v5 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting);
  v7 = swift_getKeyPath();
  v43 = 0;
  swift_getKeyPath();
  *__dst = v0;
  sub_249D72874();

  v8 = v0[6];
  v9 = *(v1 + 88);
  swift_getKeyPath();
  *__dst = v9;
  v10 = v8;
  sub_249D72874();

  v11 = *(v9 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting);
  v12 = swift_getKeyPath();
  *&__src[16] = KeyPath;
  v44 = 0;
  v13 = v0[8];
  *__src = v1;
  __src[8] = 0;
  __src[24] = 0;
  *&__src[32] = v33;
  __src[40] = 0;
  *&__src[48] = v30;
  __src[56] = 0;
  *&__src[64] = v29;
  __src[72] = 0;
  *&__src[80] = v28;
  __src[168] = 0;
  *&__src[176] = v27;
  memset(&__src[184], 0, 34);
  *&__src[224] = v31;
  __src[232] = 0;
  *&__src[240] = v26;
  __src[248] = 0;
  *&__src[256] = v25;
  *&__src[264] = 0;
  __src[272] = 0;
  *&__src[280] = v24;
  *&__src[288] = 0;
  __src[296] = 0;
  *&__src[312] = v20;
  *&__src[328] = v18;
  *&__src[304] = v32;
  *&__src[344] = v23;
  __src[352] = v21;
  *&__src[360] = v22;
  *&__src[368] = v19;
  __src[376] = v17;
  *&__src[384] = v7;
  __src[392] = 0;
  *&__src[400] = v4;
  __src[408] = v16;
  *&__src[416] = v12;
  __src[424] = 0;
  *&__src[432] = v8;
  __src[440] = v11;
  *&__src[448] = v13;
  v14 = *(v1 + 88);
  swift_getKeyPath();
  *__dst = v14;

  sub_249D72874();

  v37 = *(v14 + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BAC8);
  sub_249D58D28();
  sub_249D72EF4();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_249D6036C(__dst);
}

id sub_249D5F688()
{
  v1 = v0;
  swift_getKeyPath();
  sub_249D60420(&qword_27EF1B0B8, type metadata accessor for Presentation);
  sub_249D72874();

  v2 = *(v0 + 48);
  v3 = sub_249D3858C();

  [*(*&v3[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 16) removeObject_];
  swift_getKeyPath();
  sub_249D72874();

  v4 = *(v1 + 48);
  v5 = sub_249D3858C();

  [*(*&v5[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 24) removeObject_];
  result = sub_249D39F64();
  if (result)
  {
    [result invalidate];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_249D5F800(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_249D3C308();
  v5 = v4;
  v6 = sub_249D73374();

  if (v6)
  {
    v9 = *(v2 + 48);
    *(v2 + 48) = a1;
    v7 = a1;
    sub_249D5F97C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D60420(&qword_27EF1B0B8, type metadata accessor for Presentation);
    sub_249D72864();
  }
}

void sub_249D5F97C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_249D60420(&qword_27EF1B0B8, type metadata accessor for Presentation);
  sub_249D72874();

  v2 = *(v0 + 48);
  sub_249D3C308();
  v3 = v2;
  v4 = sub_249D73374();

  if ((v4 & 1) == 0)
  {
    v5 = sub_249D3858C();
    [*(*&v5[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 16) removeObject_];

    v6 = sub_249D3858C();
    [*(*&v6[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 24) removeObject_];

    swift_getKeyPath();
    sub_249D72874();

    sub_249D3A4E4(*(v1 + 48));
    swift_getKeyPath();
    sub_249D72874();

    sub_249D54E44(*(v1 + 48));
    swift_getKeyPath();
    sub_249D72874();

    v7 = *(v1 + 48);
    v8 = sub_249D3858C();

    [*(*&v8[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 16) addObject_];
    swift_getKeyPath();
    sub_249D72874();

    v9 = *(v1 + 48);
    v10 = sub_249D3858C();

    [*(*&v10[OBJC_IVAR____TtCE12DrawingBoardCSo7FBScene8Observer_handlers] + 24) addObject_];
  }
}

id sub_249D5FC08()
{
  swift_getKeyPath();
  sub_249D60420(&qword_27EF1B0B8, type metadata accessor for Presentation);
  sub_249D72874();

  v1 = *(v0 + 48);

  return v1;
}

id sub_249D5FCB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_249D60420(&qword_27EF1B0B8, type metadata accessor for Presentation);
  sub_249D72874();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

uint64_t sub_249D5FD9C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *a2;
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a3 + 64);
  if (v4 == *(v5 + 72))
  {
    *(v5 + 72) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_249D60420(&qword_27EF1BA28, type metadata accessor for ApplyActivationModel);
    sub_249D72864();
  }
}

uint64_t sub_249D5FF40()
{

  v1 = OBJC_IVAR____TtC12DrawingBoard12Presentation___observationRegistrar;
  v2 = sub_249D728B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for Presentation()
{
  result = qword_27EF1BCC0;
  if (!qword_27EF1BCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249D60058()
{
  result = sub_249D728B4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_249D60148()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 48);
  *(v2 + 48) = v1;
  v4 = v1;
  sub_249D5F97C();
}

uint64_t sub_249D601AC@<X0>(void *a1@<X8>)
{
  sub_249D45984();
  result = sub_249D72B24();
  *a1 = v3;
  return result;
}

uint64_t sub_249D60248@<X0>(void *a1@<X8>)
{
  result = sub_249D72AD4();
  *a1 = v3;
  return result;
}

double sub_249D602A8@<D0>(double *a1@<X8>)
{
  sub_249D45930();
  sub_249D72B24();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_249D6036C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1BAC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D60420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_249D60468()
{
  result = qword_27EF1BCD8;
  if (!qword_27EF1BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1BCD8);
  }

  return result;
}

uint64_t sub_249D604BC(uint64_t a1)
{
  sub_249D3CC68(a1, v9);
  if (v10)
  {
    type metadata accessor for LayerTarget._UILayerTarget();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget_target);
      v3 = *(v1 + OBJC_IVAR____TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget_target + 4);
      v4 = *&v8[OBJC_IVAR____TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget_target];
      v5 = v8[OBJC_IVAR____TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget_target + 4];

      if (v3 == 1)
      {
        if (v2)
        {
          if (v5)
          {
            return v4 != 0;
          }
        }

        else if (v5)
        {
          return v4 == 0;
        }
      }

      else
      {
        if (v2 == v4)
        {
          v7 = v5;
        }

        else
        {
          v7 = 1;
        }

        if ((v7 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    sub_249D39488(v9);
  }

  return 0;
}

BOOL sub_249D60614(id a1)
{
  v3 = v1 + OBJC_IVAR____TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget_target;
  v4 = *(v1 + OBJC_IVAR____TtCO12DrawingBoard11LayerTargetP33_503B1B848CE68D8EEDC1C0DE3CC3DEEF14_UILayerTarget_target);
  if (*(v3 + 4) != 1)
  {
    return [a1 type] == 1 && v4 == objc_msgSend(a1, sel_contextID);
  }

  return !v4 || [a1 type] == 3 || objc_msgSend(a1, sel_type) == 4;
}

id sub_249D60740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayerTarget._UILayerTarget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static LayerTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t LayerTarget.hash(into:)()
{
  if (*(v0 + 4) == 1)
  {
    if (*v0)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    return MEMORY[0x24C201920](v1);
  }

  else
  {
    MEMORY[0x24C201920](1);
    return sub_249D73794();
  }
}

uint64_t LayerTarget.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_249D73774();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x24C201920](v3);
  }

  else
  {
    MEMORY[0x24C201920](1);
    sub_249D73794();
  }

  return sub_249D737A4();
}

uint64_t sub_249D6088C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_249D73774();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x24C201920](v3);
  }

  else
  {
    MEMORY[0x24C201920](1);
    sub_249D73794();
  }

  return sub_249D737A4();
}

uint64_t sub_249D60908()
{
  if (*(v0 + 4) == 1)
  {
    if (*v0)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    return MEMORY[0x24C201920](v1);
  }

  else
  {
    MEMORY[0x24C201920](1);
    return sub_249D73794();
  }
}

uint64_t sub_249D60964()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_249D73774();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x24C201920](v3);
  }

  else
  {
    MEMORY[0x24C201920](1);
    sub_249D73794();
  }

  return sub_249D737A4();
}

uint64_t sub_249D609DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t LayerTarget.description.getter()
{
  if (*(v0 + 4) == 1)
  {
    if (*v0)
    {
      return 0x6472616F6279656BLL;
    }

    else
    {
      return 0x726579614C6C6C61;
    }
  }

  else
  {
    v2 = sub_249D73664();
    MEMORY[0x24C201340](v2);

    return 0x3A747865746E6F63;
  }
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LayerTarget(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LayerTarget(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_249D60B3C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D60B58(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t View.onSceneAction(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_249D72EA4();
}

uint64_t sub_249D60C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = *a1;
  sub_249D73274();

  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = sub_249D509A0;
  v7[5] = v6;

  result = swift_allocObject();
  *(result + 16) = sub_249D60F18;
  *(result + 24) = v7;
  *a1 = sub_249D60FA4;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_249D60DBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249D60DFC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BDC0);
  sub_249D72A74();
  sub_249D60E74();
  return swift_getWitnessTable();
}

unint64_t sub_249D60E74()
{
  result = qword_27EF1BDC8[0];
  if (!qword_27EF1BDC8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF1BDC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF1BDC8);
  }

  return result;
}

uint64_t sub_249D60ED8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_249D60F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(v3 + 32);
  result = (*(v3 + 16))(&v10 + 1);
  if (BYTE1(v10) == 1)
  {
    result = v7(&v10, a1, a2);
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249D60FF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249D61010(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

double sub_249D61054@<D0>(uint64_t a1@<X8>)
{
  sub_249D60468();
  sub_249D72B44();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

double sub_249D610C0@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}