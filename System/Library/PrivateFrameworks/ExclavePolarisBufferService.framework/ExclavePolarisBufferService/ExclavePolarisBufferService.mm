uint64_t PolarisMutex.__allocating_init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_mutexattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisMutex.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_mutexattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL sub_24A1D6024()
{
  swift_beginAccess();
  v1 = pthread_mutex_trylock((v0 + 16));
  swift_endAccess();
  return v1 == 0;
}

uint64_t PolarisCondition.__allocating_init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_condattr_init(&v3);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_condattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisCondition.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_condattr_init(&v3);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_condattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisCondition.wait(mutex:)(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  pthread_cond_wait((v1 + 16), (a1 + 16));
  swift_endAccess();
  return swift_endAccess();
}

uint64_t sub_24A1D629C(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  return swift_endAccess();
}

uint64_t sub_24A1D6304(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return v1;
}

uint64_t sub_24A1D6374(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
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

uint64_t sub_24A1D6504(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A1D6524(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A1D6584(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A1D65A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void sub_24A1D65F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_24A1D6654()
{
  v1 = *v0;
  sub_24A1E9B84();
  MEMORY[0x24C2133B0](v1);
  return sub_24A1E9BB4();
}

uint64_t sub_24A1D66C8()
{
  v1 = *v0;
  sub_24A1E9B84();
  MEMORY[0x24C2133B0](v1);
  return sub_24A1E9BB4();
}

uint64_t sub_24A1D6724(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = v4;
  LODWORD(v7) = a4;
  v10 = MEMORY[0x277D84F90];
  *(v4 + 72) = MEMORY[0x277D84F90];
  v11 = sub_24A1DA000(a2);
  v12 = v5;
  if (v5)
  {
    goto LABEL_7;
  }

  v13 = v11;
  v14 = sub_24A1DA0FC(a2);
  if (v13 == -1 || v14 == -1)
  {
    sub_24A1D75BC();
    v12 = swift_allocError();
    *v20 = 0;
    swift_willThrow();
LABEL_7:
    v54 = 0;
    v21 = 1;
    goto LABEL_8;
  }

  v15 = v14;
  v16 = *(a1 + 16);
  v17 = sub_24A1E60AC(a2);
  if (v17 == -1)
  {
    sub_24A1D75BC();
    v12 = swift_allocError();
    *v33 = 0;
    swift_willThrow();
    v21 = 0;
    v54 = -1;
LABEL_8:
    v57 = v12;
    MEMORY[0x24C2135D0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39950, &unk_24A1EA820);
    if (swift_dynamicCast())
    {
      MEMORY[0x24C2135C0](v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24A1EA010;
      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0xD00000000000002BLL, 0x800000024A1EB900);
      v23 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v23);

      MEMORY[0x24C2131D0](0x7265206874697720, 0xED0000203A726F72);
      sub_24A1E9A64();
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      sub_24A1E9B54();

      if ((v21 & 1) == 0)
      {
        v24 = *(a1 + 16);
        sub_24A1E631C(a2, v54);
      }

      sub_24A1D75BC();
      swift_allocError();
      v26 = 1;
    }

    else
    {
      MEMORY[0x24C2135C0](v12);
      v57 = v12;
      MEMORY[0x24C2135D0](v12);
      if (!swift_dynamicCast())
      {
        MEMORY[0x24C2135C0](v12);
        sub_24A1D75BC();
        swift_allocError();
        *v30 = 0;
        swift_willThrow();

        MEMORY[0x24C2135C0](v12);

        goto LABEL_18;
      }

      MEMORY[0x24C2135C0](v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_24A1EA010;
      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0xD00000000000002CLL, 0x800000024A1EB8D0);
      v28 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v28);

      MEMORY[0x24C2131D0](0x7265206874697720, 0xED0000203A726F72);
      sub_24A1E9A64();
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 32) = 0;
      *(v27 + 40) = 0xE000000000000000;
      sub_24A1E9B54();

      if ((v21 & 1) == 0)
      {
        v29 = *(a1 + 16);
        sub_24A1E631C(a2, v54);
      }

      sub_24A1D75BC();
      swift_allocError();
      v26 = 2;
    }

    *v25 = v26;
    swift_willThrow();

    MEMORY[0x24C2135C0](v57);
LABEL_18:
    v31 = *(v6 + 72);

    type metadata accessor for PBSReader();
    swift_deallocPartialClassInstance();
    return v6;
  }

  v50 = v15;
  v53 = v17;
  v52 = a1;
  type metadata accessor for ExclavePolarisSharedMemorySegment();
  swift_allocObject();

  v19 = sub_24A1E7194(v18);

  v34 = sub_24A1E6C20(0);
  v36 = v35;

  v37 = sub_24A1E80D4(v34, v36, v50, v13);
  *(v6 + 40) = v53;
  *(v6 + 48) = v19;
  *(v6 + 56) = v37;
  *(v6 + 16) = v52;
  *(v6 + 24) = a2;
  *(v6 + 32) = v50;
  *(v6 + 36) = v13;
  type metadata accessor for ExPBSResource();
  v38 = swift_allocObject();
  v39 = v38;
  *(v38 + 16) = v7;
  *(v38 + 24) = 0;
  v55 = v7;
  if (v7)
  {
    v51 = v38;
    type metadata accessor for ExPBSResourceSample();

    v10 = sub_24A1E99F4();
    v7 = v7;
    v40 = v10 & 0xFFFFFFFFFFFFFF8;
    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    v41 = 32;
    do
    {
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 1;
      *(v42 + 32) = 0;
      *(v42 + 40) = 0;
      *(v42 + 48) = 1;
      v43 = *(v40 + v41);
      *(v40 + v41) = v42;

      v41 += 8;
      --v7;
    }

    while (v7);
    v39 = v51;
  }

  else
  {
    v40 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  *(v40 + 16) = v55;
  *(v39 + 32) = v10;
  *(v6 + 80) = v39;
  v44 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v44);

  MEMORY[0x24C2131D0](95, 0xE100000000000000);

  v56 = *(v6 + 40);
  v45 = sub_24A1E9AC4();
  v47 = v46;

  MEMORY[0x24C2131D0](v45, v47);

  type metadata accessor for ExclavePolarisBufferServiceLog();
  v48 = swift_allocObject();
  *(v48 + 16) = 0x6564616552534250;
  *(v48 + 24) = 0xEA00000000005F72;
  *(v48 + 32) = 1;
  *(v6 + 64) = v48;
  sub_24A1E9A34();

  v58 = *(v6 + 40);
  v49 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v49);

  sub_24A1E7E74(0xD000000000000024, 0x800000024A1EB930, 0xD00000000000002FLL, 0x800000024A1EB960, 90);

  return v6;
}

uint64_t PBSReader.deinit()
{
  v1 = *(v0 + 64);

  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000020, 0x800000024A1EB7E0);
  v11 = *(v0 + 40);
  v2 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v2);

  MEMORY[0x24C2131D0](0xD000000000000012, 0x800000024A1EB810);
  v12 = *(v0 + 24);
  v3 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v3);

  sub_24A1E7E74(0, 0xE000000000000000, 0x74696E696564, 0xE600000000000000, 114);

  sub_24A1D7170();
  v4 = *(v0 + 16);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);

  return v0;
}

uint64_t PBSReader.__deallocating_deinit()
{
  PBSReader.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A1D7170()
{
  v1 = v0;
  v2 = *(v0 + 64);
  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000021, 0x800000024A1EB990);
  v3 = *(v0 + 40);
  v4 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v4);

  MEMORY[0x24C2131D0](0xD000000000000012, 0x800000024A1EB810);
  v9 = *(v0 + 24);
  v5 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v5);

  sub_24A1E7E74(0, 0xE000000000000000, 0x2870756E61656C63, 0xE900000000000029, 120);

  v6 = *(v0 + 48);
  sub_24A1E6EE0();
  v7 = *(*(v1 + 16) + 16);
  return sub_24A1E631C(v9, v3);
}

uint64_t sub_24A1D72C4(unsigned int a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *(*(v1 + 16) + 16);
  v6 = sub_24A1E6778(v4, *(v2 + 40), a1);
  v7 = *(v2 + 72);
  *(v2 + 72) = v6;

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(v2 + 56);
    while (1)
    {
      v11 = *(v6 + 4 * v9 + 32);
      v12 = *(v2 + 80);
      result = swift_beginAccess();
      v14 = *(v12 + 32);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = *(v12 + 32);

        v15 = MEMORY[0x24C213260](v9, v14);
      }

      else
      {
        if (v9 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v15 = *(v14 + 8 * v9 + 32);
      }

      if (*(v10 + 16) <= v11)
      {
        break;
      }

      ++v9;
      *(v15 + 32) = *(v10 + 32 + 16 * v11);
      *(v15 + 48) = 0;

      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:

    v17 = *(v2 + 80);
    swift_beginAccess();
    *(v17 + 24) = v8;
  }

  return result;
}

uint64_t sub_24A1D743C()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[9];
  v4 = *(v0[2] + 16);
  v5 = *(v1 + 20);

  sub_24A1E6908(v2, v5, v3);

  v6 = v1[10];
  result = swift_beginAccess();
  *(v6 + 24) = 0;
  return result;
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

unint64_t sub_24A1D75BC()
{
  result = qword_27EF39958;
  if (!qword_27EF39958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39958);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PBSReaderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PBSReaderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A1D7784()
{
  result = qword_27EF39968;
  if (!qword_27EF39968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39968);
  }

  return result;
}

uint64_t PBSWriterError.hashValue.getter()
{
  v1 = *v0;
  sub_24A1E9B84();
  MEMORY[0x24C2133B0](v1);
  return sub_24A1E9BB4();
}

uint64_t sub_24A1D7868(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v7 = v6;
  *(v6 + 80) = -1;
  type metadata accessor for ExPBSResource();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_24A1EA180;
  type metadata accessor for ExPBSResourceSample();
  v11 = sub_24A1E99F4();
  v12 = v11 & 0xFFFFFFFFFFFFFF8;
  *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 1;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x20);
  *(v12 + 32) = v13;

  *(v12 + 16) = 1;
  *(v10 + 32) = v11;
  *(v7 + 88) = v10;
  if (!a3 || !a5 || !a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_24A1EA010;
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD00000000000001DLL, 0x800000024A1EBC70);
    v26 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v26);

    MEMORY[0x24C2131D0](0xD000000000000013, 0x800000024A1EBC90);
    v27 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v27);

    MEMORY[0x24C2131D0](0x6569566D756E202CLL, 0xED0000203D207377);
    v28 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v28);

    MEMORY[0x24C2131D0](0xD00000000000002DLL, 0x800000024A1EBCB0);
    v29 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v29);

    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    sub_24A1E9B54();

    sub_24A1D8B40();
    swift_allocError();
    *v30 = 1;
    swift_willThrow();

    goto LABEL_18;
  }

  v62 = v7;
  v15 = *(a1 + 16);
  v61 = v15[2];
  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD00000000000001BLL, 0x800000024A1EBA80);
  v16 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v16);

  MEMORY[0x24C2131D0](0x7463656C6573202CLL, 0xEF2065707954726FLL);
  v17 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v17);

  MEMORY[0x24C2131D0](0xD000000000000011, 0x800000024A1EBAA0);
  v18 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v18);

  MEMORY[0x24C2131D0](0x6569566D756E202CLL, 0xEB00000000207377);
  v19 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v19);

  sub_24A1E7E74(0, 0xE000000000000000, 0xD000000000000048, 0x800000024A1EBAC0, 36);

  v20 = v15[4];
  v21 = sub_24A1DF278(v15[3], a2, a3, 1, a5, a6);
  if (v63)
  {
    v22 = v15[2];
    sub_24A1E9A34();

    v23 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v23);

    sub_24A1E7E84(0xD000000000000025, 0x800000024A1EBB10, 0xD000000000000048, 0x800000024A1EBAC0, 49);

    MEMORY[0x24C2135C0]();
    v24 = -1;
  }

  else
  {
    v24 = v21;
  }

  v31 = v15[2];
  sub_24A1E9A34();

  v32 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v32);

  MEMORY[0x24C2131D0](0xD000000000000010, 0x800000024A1EBB60);
  v33 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v33);

  sub_24A1E7E74(0xD00000000000001CLL, 0x800000024A1EBB40, 0xD000000000000048, 0x800000024A1EBAC0, 54);

  if (v24 == -1)
  {
    sub_24A1D8B40();
    v37 = swift_allocError();
    *v38 = 0;
    swift_willThrow();
    v7 = v62;
    v67 = v37;
    MEMORY[0x24C2135D0](v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39950, &unk_24A1EA820);
    if (swift_dynamicCast())
    {
      MEMORY[0x24C2135C0](v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_24A1EA010;
      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0xD00000000000002BLL, 0x800000024A1EBBB0);
      v40 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v40);

      MEMORY[0x24C2131D0](0x7265206874697720, 0xED0000203A726F72);
      sub_24A1E9A64();
      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 32) = 0;
      *(v39 + 40) = 0xE000000000000000;
      sub_24A1E9B54();

      v41 = *(a1 + 16);
      sub_24A1E5E64(a2, 0xFFu);
      sub_24A1D8B40();
      swift_allocError();
      v43 = 1;
    }

    else
    {
      MEMORY[0x24C2135C0](v37);
      v67 = v37;
      MEMORY[0x24C2135D0](v37);
      if (!swift_dynamicCast())
      {
        MEMORY[0x24C2135C0](v37);
        sub_24A1D8B40();
        swift_allocError();
        *v59 = 0;
        swift_willThrow();

        MEMORY[0x24C2135C0](v37);

        goto LABEL_18;
      }

      MEMORY[0x24C2135C0](v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_24A1EA010;
      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0xD00000000000002DLL, 0x800000024A1EBB80);
      v45 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v45);

      MEMORY[0x24C2131D0](0x7265206874697720, 0xED0000203A726F72);
      sub_24A1E9A64();
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 32) = 0;
      *(v44 + 40) = 0xE000000000000000;
      sub_24A1E9B54();

      v46 = *(a1 + 16);
      sub_24A1E5E64(a2, 0xFFu);
      sub_24A1D8B40();
      swift_allocError();
      v43 = 2;
    }

    *v42 = v43;
    swift_willThrow();

    MEMORY[0x24C2135C0](v67);
LABEL_18:
    v60 = *(v7 + 88);

    type metadata accessor for PBSWriter();
    swift_deallocPartialClassInstance();
    return v7;
  }

  type metadata accessor for ExclavePolarisSharedMemorySegment();
  swift_allocObject();

  v35 = sub_24A1E7194(v34);

  v36 = sub_24A1E6C20(1);
  v48 = v47;
  v49 = v36;

  if (!__CFADD__(a5, a6))
  {
    v51 = sub_24A1E80D4(v49, v48, a5 + a6, a3);
    *(v62 + 48) = v24;
    *(v62 + 56) = v35;
    *(v62 + 64) = v51;
    *(v62 + 16) = a1;
    *(v62 + 24) = a2;
    *(v62 + 32) = a4;
    *(v62 + 36) = a5;
    *(v62 + 40) = a6;
    *(v62 + 44) = a3;
    v52 = *(v62 + 88);
    swift_beginAccess();
    *(v52 + 24) = 1;

    v53 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v53);

    MEMORY[0x24C2131D0](95, 0xE100000000000000);

    v68 = *(v62 + 48);
    v54 = sub_24A1E9AC4();
    v56 = v55;

    MEMORY[0x24C2131D0](v54, v56);

    type metadata accessor for ExclavePolarisBufferServiceLog();
    v57 = swift_allocObject();
    *(v57 + 16) = 0x6574697257534250;
    *(v57 + 24) = 0xEA00000000005F72;
    *(v57 + 32) = 1;
    *(v62 + 72) = v57;
    sub_24A1E9A34();

    v69 = *(v62 + 48);
    v58 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v58);

    v7 = v62;
    sub_24A1E7E74(0xD000000000000025, 0x800000024A1EBBE0, 0xD000000000000055, 0x800000024A1EBC10, 99);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t PBSWriter.deinit()
{
  v1 = *(v0 + 72);

  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000020, 0x800000024A1EB9C0);
  v10 = *(v0 + 48);
  v2 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v2);

  MEMORY[0x24C2131D0](0xD000000000000012, 0x800000024A1EB810);
  v11 = *(v0 + 24);
  v3 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v3);

  sub_24A1E7E74(0, 0xE000000000000000, 0x74696E696564, 0xE600000000000000, 122);

  sub_24A1D8794();
  v4 = *(v0 + 16);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 72);

  v8 = *(v0 + 88);

  return v0;
}

uint64_t PBSWriter.__deallocating_deinit()
{
  PBSWriter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A1D8794()
{
  v1 = *(v0 + 72);
  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000021, 0x800000024A1EBCE0);
  v2 = *(v0 + 48);
  v3 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v3);

  MEMORY[0x24C2131D0](0xD000000000000012, 0x800000024A1EB810);
  v4 = *(v0 + 24);
  v5 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v5);

  sub_24A1E7E74(0, 0xE000000000000000, 0x2870756E61656C63, 0xE900000000000029, 128);

  if (*(v0 + 56))
  {
    v6 = *(v0 + 56);

    sub_24A1E6EE0();
  }

  v7 = *(*(v0 + 16) + 16);
  return sub_24A1E5E64(v4, v2);
}

uint64_t sub_24A1D88FC()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(*(v0 + 16) + 16);
  v4 = sub_24A1E6470(v2, *(v1 + 48));
  *(v1 + 80) = v4;
  v5 = *(v1 + 88);
  result = swift_beginAccess();
  v7 = *(v5 + 32);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v11 = *(v5 + 32);

    v8 = MEMORY[0x24C213260](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    v8 = *(v7 + 32);
  }

  v9 = *(v1 + 64);
  if (*(v9 + 16) > v4)
  {
    *(v8 + 32) = *(v9 + 16 * v4 + 32);
    *(v8 + 48) = 0;

    v10 = *(v1 + 88);
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24A1D89F0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 16) + 16);
  return sub_24A1E65C8(v1, v3, v2);
}

unint64_t sub_24A1D8A30()
{
  result = qword_27EF39970;
  if (!qword_27EF39970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39970);
  }

  return result;
}

unint64_t sub_24A1D8B40()
{
  result = qword_27EF39978;
  if (!qword_27EF39978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39978);
  }

  return result;
}

uint64_t ExPBSResource.__allocating_init()()
{
  type metadata accessor for ExPBSResource();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24A1EA180;
  type metadata accessor for ExPBSResourceSample();
  v1 = sub_24A1E99F4();
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = 1;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 1;
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x20);
  *(v2 + 32) = v3;

  *(v2 + 16) = 1;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t sub_24A1D8C90@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_24A1D8CDC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t ExPBSResourceSample.__allocating_init()()
{
  type metadata accessor for ExPBSResourceSample();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

uint64_t ExPBSResourceSample.flatMemory()()
{
  if (*(v0 + 48))
  {
    result = 0;
  }

  else
  {
    result = *(v0 + 32);
  }

  if (!*(v0 + 48))
  {
    v2 = *(v0 + 40);
  }

  return result;
}

uint64_t ExPBSResourceSample.readFlatMemory<A>(as:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 48))
  {
    v5 = sub_24A1E9A74();
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = 0;
    v6 = a2;
  }

  return MEMORY[0x2821FCBD0](v5, a2, v3, v4, v6);
}

void *ExPBSResourceSample.writeFlatMemory<A>(_:)(void *__src, uint64_t a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    v3 = *(*(a2 - 8) + 64);
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memcpy(*(v2 + 32), __src, v3);
    }
  }

  return __src;
}

uint64_t sub_24A1D8EEC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_24A1D8F80@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  v7 = *(v4 + 32);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = MEMORY[0x24C213260](v5, v7);

    goto LABEL_5;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 8 * v5 + 32);

LABEL_5:
    *a3 = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1D902C(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v3 = *a3;
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v5 + 32);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v5 + 32) = v6;
  if (!result || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    result = sub_24A1D95B8(v6);
    v6 = result;
    *(v5 + 32) = result;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3;
    v9 = *(v8 + 0x20);
    *(v8 + 32) = v4;
    *(v5 + 32) = v6;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1D90E8(unint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 32);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = MEMORY[0x24C213260](a1, v4);

    return v5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(v4 + 8 * a1 + 32);

    return v5;
  }

  __break(1u);
  return result;
}

void (*sub_24A1D9184(uint64_t *a1, unint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = sub_24A1D94AC();
  *(v5 + 72) = sub_24A1D926C((v5 + 32), a2);
  return sub_24A1D920C;
}

void sub_24A1D920C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_24A1D926C(unint64_t **a1, unint64_t a2))(uint64_t result)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = sub_24A1D95B8(v5);
    v5 = result;
  }

  a1[1] = v5;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    return sub_24A1D9300;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1D930C(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v2 + 32) = v5;
  if (!result || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = sub_24A1D95B8(v5);
    v5 = result;
    *(v2 + 32) = result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFF8) + 8 * a2;
    v8 = *(v7 + 0x20);
    *(v7 + 32) = a1;
    *(v2 + 32) = v5;
    swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1D93CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_24A1D942C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_24A1D9464(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t ExPBSResource.deinit()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t ExPBSResource.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24A1D95B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_24A1E9A84();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

uint64_t sub_24A1D961C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_24A1D966C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

uint64_t sub_24A1D96C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_24A1D9708(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_24A1D9764@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t getEnumTagSinglePayload for ExPBSTimestamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExPBSTimestamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ExPBSSample(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExPBSSample(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24A1D9A80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A1D9A9C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t PolarisBufferService.__allocating_init(from:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24A1D9B18(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v23 = v9[2];
  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD00000000000001BLL, 0x800000024A1EBA80);
  v10 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v10);

  MEMORY[0x24C2131D0](0x7463656C6573202CLL, 0xEF2065707954726FLL);
  v11 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v11);

  MEMORY[0x24C2131D0](0xD000000000000011, 0x800000024A1EBAA0);
  v12 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v12);

  MEMORY[0x24C2131D0](0x6569566D756E202CLL, 0xEB00000000207377);
  v13 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v13);

  sub_24A1E7E74(v26, 0xE000000000000000, 0xD000000000000048, 0x800000024A1EBAC0, 36);

  v14 = v9[4];
  v15 = sub_24A1DF278(v9[3], a1, a2, 1, a4, a5);
  if (v25)
  {
    v16 = v9[2];
    sub_24A1E9A34();

    v17 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v17);

    sub_24A1E7E84(0xD000000000000025, 0x800000024A1EBB10, 0xD000000000000048, 0x800000024A1EBAC0, 49);

    MEMORY[0x24C2135C0]();
    v18 = 255;
  }

  else
  {
    v18 = v15;
  }

  v19 = v9[2];
  sub_24A1E9A34();

  v20 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v20);

  MEMORY[0x24C2131D0](0xD000000000000010, 0x800000024A1EBB60);
  v21 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v21);

  sub_24A1E7E74(0xD00000000000001CLL, 0x800000024A1EBB40, 0xD000000000000048, 0x800000024A1EBAC0, 54);

  return v18;
}

uint64_t sub_24A1DA000(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 32);
  result = sub_24A1E024C(a1);
  if (v2)
  {
    v6 = *(v3 + 16);
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000033, 0x800000024A1EBE30);
    v7 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v7);

    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000001CLL, 0x800000024A1EBE70, 172);
    MEMORY[0x24C2135C0](v2);

    return 0xFFFFFFFFLL;
  }

  return result;
}

unint64_t sub_24A1DA0FC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 32);
  result = sub_24A1E0444(a1);
  if (v2)
  {
    v6 = *(v3 + 16);
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000033, 0x800000024A1EBE90);
    v7 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v7);

    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000001BLL, 0x800000024A1EBED0, 183);
    MEMORY[0x24C2135C0](v2);

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t PolarisBufferService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PolarisBufferService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PBSManager.__allocating_init(bufferService:writers:readers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PBSManager.init(bufferService:writers:readers:)(a1, a2, a3);
  return v6;
}

uint64_t PBSManager.init(bufferService:writers:readers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D84F90];
  v3[3] = sub_24A1DD6B4(MEMORY[0x277D84F90], &qword_27EF399D8, &qword_24A1EA5D8);
  v3[4] = sub_24A1DD6B4(v6, &qword_27EF399D8, &qword_24A1EA5D8);
  v69 = v3 + 4;
  v65 = v3;
  v3[5] = sub_24A1DD6B4(v6, &qword_27EF399D8, &qword_24A1EA5D8);
  v70 = v3 + 5;
  v3[2] = a1;
  v67 = *(a3 + 16);
  if (!v67)
  {

    v9 = MEMORY[0x277D84F90];
LABEL_22:
    v71 = v9;
    v30 = a2;
    if (!*(a2 + 16))
    {
      v34 = MEMORY[0x277D84F90];
LABEL_42:

      type metadata accessor for ExclavePolarisBufferServiceLog();
      v54 = swift_allocObject();
      *(v54 + 16) = 0x67616E614D534250;
      *(v54 + 24) = 0xEA00000000007265;
      *(v54 + 32) = 1;
      v65[6] = v54;

      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0x6820746E65696C43, 0xEB00000000207361);
      v72 = *(v71 + 2);
      v55 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v55);

      MEMORY[0x24C2131D0](0xD000000000000012, 0x800000024A1EBF40);
      v56 = MEMORY[0x277D84D38];
      v57 = MEMORY[0x24C2131F0](v71, MEMORY[0x277D84D38]);
      v59 = v58;

      MEMORY[0x24C2131D0](v57, v59);

      MEMORY[0x24C2131D0](0x20646E61202CLL, 0xE600000000000000);
      v73 = *(v34 + 2);
      v60 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v60);

      MEMORY[0x24C2131D0](0xD000000000000013, 0x800000024A1EBF60);
      v61 = MEMORY[0x24C2131F0](v34, v56);
      v63 = v62;

      MEMORY[0x24C2131D0](v61, v63);

      sub_24A1E7E74(0, 0xE000000000000000, 0xD000000000000024, 0x800000024A1EBF80, 75);

      return v65;
    }

    v31 = *(a2 + 16);
    v32 = 0;
    v33 = (a2 + 40);
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_45;
      }

      v35 = *(v33 - 1);
      v36 = *v33;
      swift_beginAccess();
      swift_retain_n();
      v37 = *v69;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v69;
      *v69 = 0x8000000000000000;
      v40 = sub_24A1DBFBC(v35);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v26 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v26)
      {
        goto LABEL_46;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v49 = v40;
      sub_24A1DCF08(&qword_27EF399D8, &qword_24A1EA5D8);
      v40 = v49;
      if ((v45 & 1) == 0)
      {
LABEL_33:
        v39[(v40 >> 6) + 8] |= 1 << v40;
        *(v39[6] + 8 * v40) = v35;
        *(v39[7] + 8 * v40) = v36;
        v50 = v39[2];
        v26 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v26)
        {
          goto LABEL_48;
        }

        v39[2] = v51;
        goto LABEL_35;
      }

LABEL_31:
      v47 = v39[7];
      v48 = *(v47 + 8 * v40);
      *(v47 + 8 * v40) = v36;

LABEL_35:
      *v69 = v39;
      swift_endAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_24A1DBEB8(0, *(v34 + 2) + 1, 1, v34);
      }

      v53 = *(v34 + 2);
      v52 = *(v34 + 3);
      if (v53 >= v52 >> 1)
      {
        v34 = sub_24A1DBEB8((v52 > 1), v53 + 1, 1, v34);
      }

      ++v32;

      *(v34 + 2) = v53 + 1;
      *&v34[8 * v53 + 32] = v35;
      v33 += 2;
      v30 = a2;
      if (v31 == v32)
      {
        goto LABEL_42;
      }
    }

    sub_24A1DC88C(v44, isUniquelyReferenced_nonNull_native, &qword_27EF399D8, &qword_24A1EA5D8);
    v40 = sub_24A1DBFBC(v35);
    if ((v45 & 1) != (v46 & 1))
    {
      goto LABEL_49;
    }

LABEL_30:
    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v7 = 0;
  v8 = (a3 + 40);
  v9 = MEMORY[0x277D84F90];
  v66 = a3;
  while (v7 < *(a3 + 16))
  {
    v11 = *(v8 - 1);
    v10 = *v8;
    swift_beginAccess();
    swift_retain_n();
    v12 = *v70;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v70;
    *v70 = 0x8000000000000000;
    v16 = sub_24A1DBFBC(v11);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_44;
    }

    v20 = v15;
    if (v14[3] >= v19)
    {
      if (v13)
      {
        if ((v15 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_24A1DCF08(&qword_27EF399D8, &qword_24A1EA5D8);
        if ((v20 & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      sub_24A1DC88C(v19, v13, &qword_27EF399D8, &qword_24A1EA5D8);
      v21 = sub_24A1DBFBC(v11);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_49;
      }

      v16 = v21;
      if ((v20 & 1) == 0)
      {
LABEL_13:
        v14[(v16 >> 6) + 8] |= 1 << v16;
        *(v14[6] + 8 * v16) = v11;
        *(v14[7] + 8 * v16) = v10;
        v25 = v14[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_47;
        }

        v14[2] = v27;
        goto LABEL_15;
      }
    }

    v23 = v14[7];
    v24 = *(v23 + 8 * v16);
    *(v23 + 8 * v16) = v10;

LABEL_15:
    *v70 = v14;
    swift_endAccess();
    a3 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24A1DBEB8(0, *(v9 + 2) + 1, 1, v9);
    }

    v29 = *(v9 + 2);
    v28 = *(v9 + 3);
    if (v29 >= v28 >> 1)
    {
      v9 = sub_24A1DBEB8((v28 > 1), v29 + 1, 1, v9);
    }

    ++v7;

    *(v9 + 2) = v29 + 1;
    *&v9[8 * v29 + 32] = v11;
    v8 += 2;
    if (v67 == v7)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_24A1E9AF4();
  __break(1u);
  return result;
}

uint64_t PBSManager.__allocating_init(bufferService:segAccess:resourceIDs:)(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PBSManager.init(bufferService:segAccess:resourceIDs:)(a1, a2, a3);
  return v6;
}

uint64_t PBSManager.init(bufferService:segAccess:resourceIDs:)(void *a1, unint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull_native = v3;
  v8 = MEMORY[0x277D84F90];
  v3[3] = sub_24A1DD6B4(MEMORY[0x277D84F90], &qword_27EF399D8, &qword_24A1EA5D8);
  v3[4] = sub_24A1DD6B4(v8, &qword_27EF399D8, &qword_24A1EA5D8);
  v43 = a3;
  v44 = v3 + 3;
  v3[5] = sub_24A1DD6B4(v8, &qword_27EF399D8, &qword_24A1EA5D8);
  v9 = *(a3 + 16);
  if (!(a2 >> 62))
  {
    if (v9 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v39 = *(a3 + 16);
      v40 = isUniquelyReferenced_nonNull_native;
      *(isUniquelyReferenced_nonNull_native + 16) = a1;
      v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }

LABEL_31:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39960, &qword_24A1EA0B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_24A1EA010;
    *(v33 + 56) = MEMORY[0x277D837D0];
    *(v33 + 32) = 0xD000000000000030;
    *(v33 + 40) = 0x800000024A1EBFB0;
    sub_24A1E9B54();

    sub_24A1DD28C();
    swift_allocError();
    *v34 = xmmword_24A1EA400;
    swift_willThrow();

    v35 = *(isUniquelyReferenced_nonNull_native + 24);

    v36 = *(isUniquelyReferenced_nonNull_native + 32);

    v37 = *(isUniquelyReferenced_nonNull_native + 40);

    type metadata accessor for PBSManager();
    swift_deallocPartialClassInstance();
    return isUniquelyReferenced_nonNull_native;
  }

LABEL_29:
  if (v9 != sub_24A1E9A84())
  {
    goto LABEL_31;
  }

  v40 = isUniquelyReferenced_nonNull_native;
  *(isUniquelyReferenced_nonNull_native + 16) = a1;
  v9 = sub_24A1E9A84();
LABEL_4:

  if (!v9)
  {
LABEL_24:

    type metadata accessor for ExclavePolarisBufferServiceLog();
    v28 = swift_allocObject();
    *(v28 + 16) = 0x67616E614D534250;
    *(v28 + 24) = 0xEA00000000007265;
    *(v28 + 32) = 1;
    isUniquelyReferenced_nonNull_native = v40;
    *(v40 + 48) = v28;

    sub_24A1E9A34();

    v29 = MEMORY[0x24C2131F0](v43, MEMORY[0x277D84D38]);
    v31 = v30;

    MEMORY[0x24C2131D0](v29, v31);

    MEMORY[0x24C2131D0](0x20746E756F63202CLL, 0xEA0000000000203DLL);
    v32 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v32);

    sub_24A1E7E74(0xD000000000000017, 0x800000024A1EBFF0, 0xD00000000000002ALL, 0x800000024A1EC010, 105);

    return isUniquelyReferenced_nonNull_native;
  }

  v10 = 0;
  v41 = a2 & 0xFFFFFFFFFFFFFF8;
  v42 = a2 & 0xC000000000000001;
  while (1)
  {
    if (v42)
    {
      v14 = MEMORY[0x24C213260](v10, a2);
    }

    else
    {
      if (v10 >= *(v41 + 16))
      {
        goto LABEL_26;
      }

      v14 = *(a2 + 8 * v10 + 32);
    }

    if (v10 >= *(v43 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v15 = a2;
    a2 = v9;
    v16 = *(v43 + 32 + 8 * v10);
    a1 = v44;
    swift_beginAccess();

    v17 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v44;
    *v44 = 0x8000000000000000;
    v19 = sub_24A1DBFBC(v16);
    v20 = v9[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_27;
    }

    a1 = v18;
    if (v9[3] < v22)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_24A1DCF08(&qword_27EF399D8, &qword_24A1EA5D8);
      if (a1)
      {
LABEL_6:
        v11 = v9[7];
        v12 = *(v11 + 8 * v19);
        *(v11 + 8 * v19) = v14;

        goto LABEL_7;
      }
    }

LABEL_19:
    v9[(v19 >> 6) + 8] |= 1 << v19;
    *(v9[6] + 8 * v19) = v16;
    *(v9[7] + 8 * v19) = v14;
    v25 = v9[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_28;
    }

    v9[2] = v27;
LABEL_7:
    ++v10;
    *v44 = v9;
    swift_endAccess();

    v9 = a2;
    v13 = a2 == v10;
    a2 = v15;
    if (v13)
    {
      goto LABEL_24;
    }
  }

  sub_24A1DC88C(v22, isUniquelyReferenced_nonNull_native, &qword_27EF399D8, &qword_24A1EA5D8);
  v23 = sub_24A1DBFBC(v16);
  if ((a1 & 1) == (v24 & 1))
  {
    v19 = v23;
    if (a1)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  result = sub_24A1E9AF4();
  __break(1u);
  return result;
}

uint64_t sub_24A1DB24C(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v7 = v5;
  swift_beginAccess();
  v13 = v5[3];
  if (*(v13 + 16) && (v14 = sub_24A1DBFBC(a1), (v15 & 1) != 0) || (swift_beginAccess(), v13 = v7[4], *(v13 + 16)) && (v14 = sub_24A1DBFBC(a1), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v14);
    v18 = v7[2];
    type metadata accessor for PBSWriter();
    swift_allocObject();
    swift_retain_n();

    v20 = sub_24A1D7868(v19, a1, a2, a3, a4, a5);
    if (v6)
    {
      v21 = v7[6];
      sub_24A1E9A34();

      v22 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v22);

      v23 = v21;
      sub_24A1E7E84(0xD000000000000028, 0x800000024A1EC0E0, 0xD00000000000004BLL, 0x800000024A1EC090, 145);

      sub_24A1DD28C();
      swift_allocError();
      *v24 = xmmword_24A1EA410;
      swift_willThrow();

      MEMORY[0x24C2135C0](v6);
    }

    else
    {
      v23 = v20;
    }
  }

  else
  {
    v25 = v7[6];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000040, 0x800000024A1EC040);
    v26 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v26);

    v23 = v25;
    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000004BLL, 0x800000024A1EC090, 134);

    sub_24A1DD28C();
    swift_allocError();
    *v27 = xmmword_24A1EA420;
    swift_willThrow();
  }

  return v23;
}

uint64_t sub_24A1DB54C(uint64_t a1, int a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = v2[3];
  if (*(v7 + 16) && (v8 = sub_24A1DBFBC(a1), (v9 & 1) != 0) || (swift_beginAccess(), v7 = v4[5], *(v7 + 16)) && (v8 = sub_24A1DBFBC(a1), (v10 & 1) != 0))
  {
    v11 = *(*(v7 + 56) + 8 * v8);
    v12 = v4[2];
    type metadata accessor for PBSReader();
    swift_allocObject();
    swift_retain_n();

    v14 = sub_24A1D6724(v13, a1, v11, a2);
    if (v3)
    {
      v15 = v4[6];
      sub_24A1E9A34();

      v16 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v16);

      v17 = v15;
      sub_24A1E7E84(0xD000000000000028, 0x800000024A1EC190, 0xD000000000000025, 0x800000024A1EC160, 184);

      sub_24A1DD28C();
      swift_allocError();
      *v18 = xmmword_24A1EA430;
      swift_willThrow();

      MEMORY[0x24C2135C0](v3);
    }

    else
    {
      v17 = v14;
    }
  }

  else
  {
    v19 = v4[6];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000040, 0x800000024A1EC110);
    v20 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v20);

    v17 = v19;
    sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000025, 0x800000024A1EC160, 175);

    sub_24A1DD28C();
    swift_allocError();
    *v21 = xmmword_24A1EA440;
    swift_willThrow();
  }

  return v17;
}

void *PBSManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t PBSManager.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

char *sub_24A1DB8BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399D0, &qword_24A1EA5D0);
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

char *sub_24A1DB9C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399A0, &qword_24A1EA5A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_24A1DBABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39990, &unk_24A1EA590);
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

char *sub_24A1DBBC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39988, &qword_24A1EA588);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_24A1DBCC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39998, &unk_24A1EB770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_24A1DBDC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399A8, &qword_24A1EA5A8);
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

char *sub_24A1DBEB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399E0, &unk_24A1EA5E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_24A1DBFBC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24A1E9B74();

  return sub_24A1DC048(a1, v4);
}

unint64_t sub_24A1DC000(unsigned __int16 a1)
{
  v3 = MEMORY[0x24C213380](*(v1 + 40), a1, 2);

  return sub_24A1DC0B4(a1, v3);
}

unint64_t sub_24A1DC048(uint64_t a1, uint64_t a2)
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

unint64_t sub_24A1DC0B4(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_24A1DC124(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399B0, &qword_24A1EA5B0);
  result = sub_24A1E9AA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 2 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x24C213380](*(v8 + 40), v21, 2);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 2 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24A1DC38C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399B8, &qword_24A1EA5B8);
  result = sub_24A1E9AA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = a2;
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *(v23 + 8);
      v25 = *(v23 + 4);
      v26 = *v23;
      v27 = *(v8 + 40);
      result = sub_24A1E9B74();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v26;
      *(v17 + 4) = v25;
      *(v17 + 8) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v36)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24A1DC614(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399C8, &qword_24A1EA5C8);
  result = sub_24A1E9AA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = sub_24A1E9B74();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_24A1DC88C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_24A1E9AA4();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_24A1E9B74();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_24A1DCAF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399B0, &qword_24A1EA5B0);
  v2 = *v0;
  v3 = sub_24A1E9A94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_24A1DCC40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399B8, &qword_24A1EA5B8);
  v2 = *v0;
  v3 = sub_24A1E9A94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 16 * v14;
      v18 = *v17;
      v19 = *(v17 + 4);
      v20 = *(v17 + 8);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 16 * v14;
      *v21 = v18;
      *(v21 + 4) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_24A1DCDA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399C8, &qword_24A1EA5C8);
  v2 = *v0;
  v3 = sub_24A1E9A94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_24A1DCF08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24A1E9A94();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t _s27ExclavePolarisBufferService15PBSManagerErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 2)
  {
    switch(v3)
    {
      case 0:
        if (!v5)
        {
          sub_24A1DD8C4(*a1, 0);
          v6 = v4;
          v7 = 0;
          goto LABEL_25;
        }

        goto LABEL_28;
      case 1:
        if (v5 == 1)
        {
          v8 = 1;
          sub_24A1DD8C4(*a1, 1uLL);
          sub_24A1DD8C4(v4, 1uLL);
          return v8;
        }

        goto LABEL_28;
      case 2:
        if (v5 == 2)
        {
          sub_24A1DD8C4(*a1, 2uLL);
          v6 = v4;
          v7 = 2;
          goto LABEL_25;
        }

LABEL_28:
        sub_24A1DD8B0(*a2, *(a2 + 8));
        sub_24A1DD8B0(v2, v3);
        sub_24A1DD8C4(v2, v3);
        sub_24A1DD8C4(v4, v5);
        return 0;
    }
  }

  else
  {
    if (v3 <= 4)
    {
      if (v3 == 3)
      {
        if (v5 == 3)
        {
          sub_24A1DD8C4(*a1, 3uLL);
          v6 = v4;
          v7 = 3;
          goto LABEL_25;
        }
      }

      else if (v5 == 4)
      {
        sub_24A1DD8C4(*a1, 4uLL);
        v6 = v4;
        v7 = 4;
LABEL_25:
        sub_24A1DD8C4(v6, v7);
        return 1;
      }

      goto LABEL_28;
    }

    if (v3 == 5)
    {
      if (v5 == 5)
      {
        sub_24A1DD8C4(*a1, 5uLL);
        v6 = v4;
        v7 = 5;
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    if (v3 == 6)
    {
      if (v5 == 6)
      {
        sub_24A1DD8C4(*a1, 6uLL);
        v6 = v4;
        v7 = 6;
        goto LABEL_25;
      }

      goto LABEL_28;
    }
  }

  if (v5 < 7)
  {
    goto LABEL_28;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_24A1DD8B0(*a1, v3);
    sub_24A1DD8B0(v2, v3);
    sub_24A1DD8C4(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_25;
  }

  v10 = *a1;
  v11 = sub_24A1E9AE4();
  sub_24A1DD8B0(v4, v5);
  sub_24A1DD8B0(v2, v3);
  sub_24A1DD8C4(v2, v3);
  sub_24A1DD8C4(v4, v5);
  return v11 & 1;
}

unint64_t sub_24A1DD28C()
{
  result = qword_27EF39980;
  if (!qword_27EF39980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39980);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27ExclavePolarisBufferService15PBSManagerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24A1DD328(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24A1DD384(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_24A1DD3D4(void *result, int a2)
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

unint64_t sub_24A1DD4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399C8, &qword_24A1EA5C8);
    v3 = sub_24A1E9AB4();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24A1DBFBC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_24A1DD5C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399B0, &qword_24A1EA5B0);
    v3 = sub_24A1E9AB4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_24A1DC000(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void *sub_24A1DD6B4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_24A1E9AB4();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_24A1DBFBC(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_24A1DBFBC(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24A1DD7B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF399B8, &qword_24A1EA5B8);
    v3 = sub_24A1E9AB4();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 2);
      v7 = *(i - 4);
      v8 = *i;
      result = sub_24A1DBFBC(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = v3[7] + 16 * result;
      *v11 = v6;
      *(v11 + 4) = v7;
      *(v11 + 8) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_24A1DD8B0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_24A1DD8C4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

ExclavePolarisBufferService::ExclavePolarisBufferServiceResultPublic_optional __swiftcall ExclavePolarisBufferServiceResultPublic.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ExclavePolarisBufferServiceResultPublic.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_24A1DD924()
{
  result = qword_27EF399E8;
  if (!qword_27EF399E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF399E8);
  }

  return result;
}

uint64_t sub_24A1DD978()
{
  v1 = *v0;
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

uint64_t sub_24A1DDA00()
{
  v1 = *v0;
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

_DWORD *sub_24A1DDA4C@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_24A1DDA6C(int *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_24A1DDA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A1DDC38();
  v5 = sub_24A1DDC8C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for ExclavePolarisBufferServiceResultPublic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExclavePolarisBufferServiceResultPublic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A1DDC38()
{
  result = qword_27EF399F0;
  if (!qword_27EF399F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF399F0);
  }

  return result;
}

unint64_t sub_24A1DDC8C()
{
  result = qword_27EF399F8;
  if (!qword_27EF399F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF399F8);
  }

  return result;
}

uint64_t sub_24A1DDCE0()
{
  v1 = *v0;
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

uint64_t sub_24A1DDD58()
{
  v1 = *v0;
  sub_24A1E9B84();
  sub_24A1E9BA4();
  return sub_24A1E9BB4();
}

_BYTE *sub_24A1DDD9C@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4u)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24A1DDDD4()
{
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_24A1DE540(&v2, v0 + 16, &qword_27EF39A18, &unk_24A1EA990);
  swift_endAccess();
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_24A1DE540(&v2, v0 + 56, &qword_27EF39A08, &unk_24A1EAAC0);
  result = swift_endAccess();
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_24A1DDE84@<X0>(unsigned int a1@<W0>, int64x2_t *a2@<X8>)
{
  swift_beginAccess();
  sub_24A1DE3D4(v2 + 56, &v14);
  if (!v16)
  {
    sub_24A1DE5A8(&v14, &qword_27EF39A08, &unk_24A1EAAC0);
    sub_24A1DE444();
    swift_allocError();
    *v11 = 3;
    return swift_willThrow();
  }

  sub_24A1DE498(v14.i8, v17);
  v6 = *(v2 + 105);
  if (v6 == 1)
  {
    v7 = v2;
    v8 = *(*__swift_project_boxed_opaque_existential_1(v17, v17[3]) + 16);

    sub_24A1E3C44(a1, &v14);
    if (!v3)
    {

      v10 = v14;
      v9 = v15;
      goto LABEL_11;
    }

    v14.i64[0] = v3;
    MEMORY[0x24C2135D0](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39950, &unk_24A1EA820);
    if ((swift_dynamicCast() & 1) != 0 && v18 == 8)
    {
      MEMORY[0x24C2135C0](v3);
      MEMORY[0x24C2135C0](v14.i64[0]);
      v9 = 0;
      v10 = vdupq_n_s64(MEMORY[0x277D84F90]);
LABEL_11:
      *(v7 + 105) = 2;
      *a2 = v10;
      a2[1].i32[0] = v9;
      return __swift_destroy_boxed_opaque_existential_1(v17);
    }

    MEMORY[0x24C2135C0](v14.i64[0]);
  }

  else
  {
    sub_24A1DE444();
    swift_allocError();
    *v13 = v6;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_24A1DE068(uint64_t a1)
{
  swift_beginAccess();
  sub_24A1DE3D4(v1 + 56, &v10);
  if (v11)
  {
    sub_24A1DE498(&v10, v12);
    v4 = *(v1 + 105);
    if (v4 == 2)
    {
      v5 = v1;
      v6 = *(*__swift_project_boxed_opaque_existential_1(v12, v12[3]) + 16);

      sub_24A1E4124(a1);

      if (!v2)
      {
        *(v5 + 105) = 1;
      }
    }

    else
    {
      sub_24A1DE444();
      swift_allocError();
      *v9 = v4;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_24A1DE5A8(&v10, &qword_27EF39A08, &unk_24A1EAAC0);
    sub_24A1DE444();
    swift_allocError();
    *v7 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_24A1DE1A8()
{
  sub_24A1DE5A8(v0 + 16, &qword_27EF39A18, &unk_24A1EA990);
  sub_24A1DE5A8(v0 + 56, &qword_27EF39A08, &unk_24A1EAAC0);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for PBSCoreWriterState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PBSCoreWriterState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24A1DE380()
{
  result = qword_27EF39A00;
  if (!qword_27EF39A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A00);
  }

  return result;
}

uint64_t sub_24A1DE3D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A08, &unk_24A1EAAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A1DE444()
{
  result = qword_27EF39A10;
  if (!qword_27EF39A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A10);
  }

  return result;
}

uint64_t sub_24A1DE498(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24A1DE540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24A1DE5A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for PBSCoreReaderResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PBSCoreReaderResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
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
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24A1DE75C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24A1DE770(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_24A1DE790()
{
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_24A1DE540(&v2, v0 + 16, &qword_27EF39A18, &unk_24A1EA990);
  swift_endAccess();
  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_24A1DE540(&v2, v0 + 56, &qword_27EF39A28, &qword_24A1EA988);
  result = swift_endAccess();
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  return result;
}

uint64_t sub_24A1DE840()
{
  swift_beginAccess();
  sub_24A1DEBB8(v0 + 56, &v8);
  if (!v9)
  {
    sub_24A1DE5A8(&v8, &qword_27EF39A28, &qword_24A1EA988);
    sub_24A1DEC28();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    return v0;
  }

  sub_24A1DE498(&v8, v10);
  v2 = *(v0 + 105);
  if (v2 != 1)
  {
    sub_24A1DEC28();
    swift_allocError();
    *v6 = v2;
    swift_willThrow();
    goto LABEL_7;
  }

  v3 = v0;
  v4 = *(*__swift_project_boxed_opaque_existential_1(v10, v10[3]) + 16);

  v0 = sub_24A1E3364();

  if (v1)
  {
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v0;
  }

  *(v3 + 105) = 2;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v0;
}

uint64_t sub_24A1DE98C(unint64_t a1)
{
  swift_beginAccess();
  sub_24A1DEBB8(v1 + 56, &v10);
  if (v11)
  {
    sub_24A1DE498(&v10, v12);
    v4 = *(v1 + 105);
    if (v4 == 2)
    {
      v5 = v1;
      v6 = *(*__swift_project_boxed_opaque_existential_1(v12, v12[3]) + 16);

      sub_24A1E3640(a1);

      if (!v2)
      {
        *(v5 + 105) = 1;
      }
    }

    else
    {
      sub_24A1DEC28();
      swift_allocError();
      *v9 = v4;
      swift_willThrow();
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_24A1DE5A8(&v10, &qword_27EF39A28, &qword_24A1EA988);
    sub_24A1DEC28();
    swift_allocError();
    *v7 = 3;
    return swift_willThrow();
  }
}

uint64_t sub_24A1DEACC()
{
  sub_24A1DE5A8(v0 + 16, &qword_27EF39A18, &unk_24A1EA990);
  sub_24A1DE5A8(v0 + 56, &qword_27EF39A28, &qword_24A1EA988);

  return swift_deallocClassInstance();
}

unint64_t sub_24A1DEB64()
{
  result = qword_27EF39A20;
  if (!qword_27EF39A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A20);
  }

  return result;
}

uint64_t sub_24A1DEBB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A28, &qword_24A1EA988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24A1DEC28()
{
  result = qword_27EF39A30;
  if (!qword_27EF39A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A30);
  }

  return result;
}

unint64_t sub_24A1DEC8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_24A1E1398(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_24A1DBFBC(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_24A1DCEF4();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_24A1E0EAC(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

void *sub_24A1DED54()
{
  v1 = v0;
  v26 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D84F90];
  v0[4] = sub_24A1DD4E0(MEMORY[0x277D84F90]);
  v0[5] = sub_24A1DD5C0(v2);
  v3 = sub_24A1DD6A0(v2);
  v0[7] = v2;
  v4 = v0 + 7;
  *(v4 - 1) = v3;
  v4[1] = v2;
  v5 = sub_24A1E99F4();
  *(v5 + 16) = 128;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  v4[2] = v5;
  v6 = sub_24A1E99F4();
  *(v6 + 16) = 1024;
  bzero((v6 + 32), 0x800uLL);
  v4[3] = v6;
  v4[4] = 0;
  v4[5] = sub_24A1DD7B4(v2);
  type metadata accessor for PolarisMutex();
  v7 = swift_allocObject();
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  v22.__sig = 0;
  *v22.__opaque = 0;
  pthread_mutexattr_init(&v22);
  swift_beginAccess();
  pthread_mutex_init((v7 + 16), &v22);
  swift_endAccess();
  pthread_mutexattr_destroy(&v22);
  *(v4 - 5) = v7;
  type metadata accessor for ExclavePolarisBufferServiceLog();
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD000000000000011;
  *(v8 + 24) = 0x800000024A1EC550;
  *(v8 + 32) = 1;
  *(v4 - 4) = v8;
  type metadata accessor for PBSCoreWriter();
  for (i = 0; i != 128; ++i)
  {
    v10 = swift_allocObject();
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 104) = 1;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    swift_beginAccess();
    sub_24A1DE540(&v23, v10 + 16, &qword_27EF39A18, &unk_24A1EA990);
    swift_endAccess();
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    swift_beginAccess();
    sub_24A1DE540(&v23, v10 + 56, &qword_27EF39A28, &qword_24A1EA988);
    swift_endAccess();
    *(v10 + 96) = -1;
    *(v10 + 104) = 0;
    v11 = swift_beginAccess();
    MEMORY[0x24C2131E0](v11);
    if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24A1E99E4();
    }

    sub_24A1E9A04();
    swift_endAccess();
    v12 = v1[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[9] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_24A1D95A4(v12);
    }

    if (*(v12 + 2) <= i)
    {
      __break(1u);
LABEL_17:
      __break(1u);
    }

    v12[i + 32] = i;
    v1[9] = v12;
  }

  type metadata accessor for PBSCoreReader();
  for (j = 0; j != 1024; ++j)
  {
    v15 = swift_allocObject();
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 80) = 0u;
    *(v15 + 96) = 0;
    *(v15 + 16) = 0u;
    *(v15 + 104) = 1;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    swift_beginAccess();
    sub_24A1DE540(&v23, v15 + 16, &qword_27EF39A18, &unk_24A1EA990);
    swift_endAccess();
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    swift_beginAccess();
    sub_24A1DE540(&v23, v15 + 56, &qword_27EF39A08, &unk_24A1EAAC0);
    swift_endAccess();
    *(v15 + 96) = -1;
    *(v15 + 104) = 0;
    v16 = swift_beginAccess();
    MEMORY[0x24C2131E0](v16);
    if (*((v4[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24A1E99E4();
    }

    sub_24A1E9A04();
    swift_endAccess();
    v17 = v1[10];
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v1[10] = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_24A1D9554(v17);
    }

    if (*(v17 + 2) <= j)
    {
      goto LABEL_17;
    }

    *&v17[2 * j + 32] = j;
    v1[10] = v17;
  }

  v19 = v1[3];

  sub_24A1E7E74(0xD000000000000025, 0x800000024A1EC570, 0x292874696E69, 0xE600000000000000, 140);

  v20 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_24A1DF278(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(v6 + 16);
  swift_beginAccess();

  pthread_mutex_lock((v14 + 16));
  swift_endAccess();

  swift_beginAccess();
  if (*(*(v7 + 32) + 16))
  {
    sub_24A1DBFBC(a2);
    if (v15)
    {
      v16 = *(v7 + 24);
      sub_24A1E9A34();

      v48 = 0xD000000000000025;
      v49 = 0x800000024A1EC7B0;
      v47 = a2;
      v17 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v17);

      sub_24A1E7E84(0xD000000000000025, 0x800000024A1EC7B0, 0xD00000000000005BLL, 0x800000024A1EC750, 187);

      sub_24A1E0994();
      swift_allocError();
      *v18 = 0;
LABEL_9:
      swift_willThrow();
      v23 = *(v7 + 16);
      swift_beginAccess();

      pthread_mutex_unlock((v23 + 16));
      swift_endAccess();

      return a3;
    }
  }

  if ((a4 & 1) == 0)
  {
    v22 = *(v7 + 24);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000016, 0x800000024A1EC730);
    LOBYTE(v47) = 0;
    sub_24A1E9A64();
    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000005BLL, 0x800000024A1EC750, 192);

    sub_24A1E0994();
    swift_allocError();
    v21 = 2;
    goto LABEL_8;
  }

  v19 = *(v7 + 88);
  if (v19 == 128)
  {
    sub_24A1E0994();
    swift_allocError();
    v21 = 1;
LABEL_8:
    *v20 = v21;
    goto LABEL_9;
  }

  v25 = *(v7 + 72);
  if (*(v25 + 16) <= v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v45 = a3;
  v46 = a5;
  if (v19 == -1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  a3 = *(v25 + v19 + 32);
  *(v7 + 88) = v19 + 1;
  v26 = type metadata accessor for RingSwappableViewCore();
  swift_allocObject();
  v44 = a6;
  v50 = v26;
  v51 = &off_285D5EA80;
  v48 = sub_24A1E2FAC(v46, a6);
  type metadata accessor for PBSSelectorCore();
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v48, v26);
  v29 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v28, v28);
  v31 = (&v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  a5 = sub_24A1E15A0(*v31, a1, v27);
  __swift_destroy_boxed_opaque_existential_1(&v48);
  swift_beginAccess();

  v33 = *(v7 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v7 + 48);
  *(v7 + 48) = 0x8000000000000000;
  sub_24A1E1398(a5, a2, isUniquelyReferenced_nonNull_native);
  *(v7 + 48) = v47;
  swift_endAccess();
  result = swift_beginAccess();
  a4 = *(v7 + 56);
  if ((a4 & 0xC000000000000001) != 0)
  {
LABEL_20:

    v35 = MEMORY[0x24C213260](a3, a4);
    goto LABEL_16;
  }

  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
    __break(1u);
    goto LABEL_22;
  }

  v35 = *(a4 + 8 * a3 + 32);
  v36 = *(v7 + 56);

LABEL_16:
  v37 = v44;
  swift_beginAccess();
  result = sub_24A1E09E8(a5 + 16, &v48);
  if (v50)
  {

    v38 = __swift_project_boxed_opaque_existential_1(&v48, v50);
    sub_24A1E1658(*v38, a1, v35, type metadata accessor for RingSwappableViewWriter, &off_285D5ECF8, &qword_27EF39A28, &qword_24A1EA988);

    __swift_destroy_boxed_opaque_existential_1(&v48);
    swift_beginAccess();
    v39 = *(v7 + 32);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v7 + 32);
    *(v7 + 32) = 0x8000000000000000;
    sub_24A1E1274(a3, a2, v40);
    *(v7 + 32) = v52;
    swift_endAccess();
    swift_beginAccess();
    v41 = *(v7 + 96);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(v7 + 96);
    *(v7 + 96) = 0x8000000000000000;
    sub_24A1E1140(v45 | 0x100000000, v46 | (v37 << 32), a2, v42);
    *(v7 + 96) = v52;
    swift_endAccess();
    v43 = *(v7 + 16);
    swift_beginAccess();

    pthread_mutex_unlock((v43 + 16));
    swift_endAccess();

    return a3;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_24A1DF8C8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  v9 = *(v2 + 16);
  swift_beginAccess();

  pthread_mutex_lock((v9 + 16));
  swift_endAccess();

  swift_beginAccess();
  if (!*(*(v6 + 32) + 16) || (sub_24A1DBFBC(a2), (v10 & 1) == 0))
  {
    v14 = *(v6 + 24);
    sub_24A1E9A34();

    v3 = 0xD000000000000011;
    v33 = 0xD000000000000017;
    v34 = 0x800000024A1EC480;
    v36 = a2;
    v15 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v15);

    sub_24A1E7E84(0xD000000000000017, 0x800000024A1EC480, 0xD00000000000002CLL, 0x800000024A1EC4A0, 321);

    sub_24A1E0994();
    swift_allocError();
    v13 = 7;
    goto LABEL_6;
  }

  v11 = *(v6 + 92);
  if (v11 == 1024)
  {
    sub_24A1E0994();
    swift_allocError();
    v13 = 8;
LABEL_6:
    *v12 = v13;
    swift_willThrow();
    v16 = *(v6 + 16);
    swift_beginAccess();

    pthread_mutex_unlock((v16 + 16));
    swift_endAccess();

    return v3;
  }

  v18 = *(v6 + 80);
  if (*(v18 + 16) <= v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v11 == -1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = *(v18 + 2 * v11 + 32);
  *(v6 + 92) = v11 + 1;
  swift_beginAccess();
  v19 = *(v6 + 48);
  if (!*(v19 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = sub_24A1DBFBC(a2);
  if ((v21 & 1) == 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = *(*(v19 + 56) + 8 * v20);
  swift_beginAccess();
  sub_24A1E09E8(v4 + 16, &v33);
  if (v35)
  {
    v22 = *(*__swift_project_boxed_opaque_existential_1(&v33, v35) + 96);

    __swift_destroy_boxed_opaque_existential_1(&v33);
    if (v22 != 1)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v5 = *(v6 + 64);
    if ((v5 & 0xC000000000000001) == 0)
    {
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > v3)
      {
        v23 = *(v5 + 8 * v3 + 32);
        v24 = *(v6 + 64);

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_23:

    v23 = MEMORY[0x24C213260](v3, v5);
LABEL_17:
    sub_24A1E09E8(v4 + 16, &v33);
    if (v35)
    {

      v26 = __swift_project_boxed_opaque_existential_1(&v33, v35);
      sub_24A1E1658(*v26, a1, v23, type metadata accessor for RingSwappableViewReader, &off_285D5ECE0, &qword_27EF39A08, &unk_24A1EAAC0);

      __swift_destroy_boxed_opaque_existential_1(&v33);
      swift_beginAccess();
      v27 = *(v6 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v6 + 40);
      *(v6 + 40) = 0x8000000000000000;
      sub_24A1E101C(a2, v3, isUniquelyReferenced_nonNull_native);
      *(v6 + 40) = v31;
      swift_endAccess();

      v29 = *(v6 + 16);
      swift_beginAccess();

      pthread_mutex_unlock((v29 + 16));
      swift_endAccess();

      return v3;
    }

    goto LABEL_28;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000019, 0x800000024A1EC4D0);
  sub_24A1E09E8(v4 + 16, &v33);
  v25 = v35;
  if (!v35)
  {
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v32 = *(*__swift_project_boxed_opaque_existential_1(&v33, v25) + 96);
  sub_24A1E9A64();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  MEMORY[0x24C2131D0](0xD000000000000011, 0x800000024A1EC530);
  v33 = a2;
  v30 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v30);

  result = sub_24A1E9A74();
  __break(1u);
  return result;
}

uint64_t sub_24A1DFE0C@<X0>(uint64_t a1@<X1>, unsigned __int16 a2@<W2>, unsigned int a3@<W3>, int64x2_t *a4@<X8>)
{
  v6 = v4;
  swift_beginAccess();
  v11 = v4[5];
  if (*(v11 + 16) && (v12 = sub_24A1DC000(a2), (v13 & 1) != 0) && *(*(v11 + 56) + 8 * v12) == a1)
  {
    result = swift_beginAccess();
    v15 = v6[8];
    if ((v15 & 0xC000000000000001) != 0)
    {
      v33 = v6[8];

      MEMORY[0x24C213260](a2, v15);
    }

    else
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return result;
      }

      v16 = *(v15 + 8 * a2 + 32);
    }

    sub_24A1DDE84(a3, &v35);

    if (v5)
    {
      sub_24A1E0994();
      swift_allocError();
      *v17 = 11;
      swift_willThrow();
      return MEMORY[0x24C2135C0](v5);
    }

    else
    {
      v28 = v35;
      v29 = v36;
      if (!v36)
      {
        v30 = v6[3];
        v35.i64[0] = 0;
        v35.i64[1] = 0xE000000000000000;
        v34 = v28;
        sub_24A1E9A34();
        MEMORY[0x24C2131D0](0xD000000000000036, 0x800000024A1EC440);
        v31 = sub_24A1E9AC4();
        MEMORY[0x24C2131D0](v31);

        MEMORY[0x24C2131D0](0x726564616572202CLL, 0xEB000000003D6449);
        v32 = sub_24A1E9AC4();
        MEMORY[0x24C2131D0](v32);

        sub_24A1E7E84(v35.i64[0], v35.i64[1], 0xD000000000000045, 0x800000024A1EC3F0, 371);

        v28 = v34;
      }

      *a4 = v28;
      a4[1].i32[0] = v29;
    }
  }

  else
  {
    v18 = v6[3];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000020, 0x800000024A1EC3C0);
    v19 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v19);

    MEMORY[0x24C2131D0](0x3D746F67202ELL, 0xE600000000000000);
    v35.i64[0] = a1;
    v20 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v20);

    MEMORY[0x24C2131D0](0x746365707865202CLL, 0xEB000000003D6465);
    v21 = v6[5];
    if (*(v21 + 16) && (v22 = sub_24A1DC000(a2), (v23 & 1) != 0))
    {
      v24 = 0;
      v25 = *(*(v21 + 56) + 8 * v22);
    }

    else
    {
      v25 = 0;
      v24 = 1;
    }

    v35.i64[0] = v25;
    v35.i8[8] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A40, &unk_24A1EAAA8);
    v26 = sub_24A1E99A4();
    MEMORY[0x24C2131D0](v26);

    MEMORY[0x24C2131D0](32, 0xE100000000000000);
    sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000045, 0x800000024A1EC3F0, 362);

    sub_24A1E0994();
    swift_allocError();
    *v27 = 10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24A1E024C(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  v5 = v2[12];
  if (*(v5 + 16) && (v6 = sub_24A1DBFBC(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    v9 = v2[2];
    swift_beginAccess();

    pthread_mutex_unlock((v9 + 16));
    swift_endAccess();
  }

  else
  {
    v10 = v2[3];
    sub_24A1E9A34();

    v11 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v11);

    v8 = v10;
    sub_24A1E7E84(0xD000000000000017, 0x800000024A1EC480, 0xD00000000000001CLL, 0x800000024A1EBE70, 451);

    sub_24A1E0994();
    swift_allocError();
    *v12 = 7;
    swift_willThrow();
    v13 = v2[2];
    swift_beginAccess();

    pthread_mutex_unlock((v13 + 16));
    swift_endAccess();
  }

  return v8;
}

unint64_t sub_24A1E0444(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  v5 = v2[12];
  if (!*(v5 + 16) || (result = sub_24A1DBFBC(a1), (v7 & 1) == 0))
  {
    v12 = v2[3];
    sub_24A1E9A34();

    v13 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v13);

    v10 = v12;
    sub_24A1E7E84(0xD000000000000017, 0x800000024A1EC480, 0xD00000000000001BLL, 0x800000024A1EBED0, 468);

    sub_24A1E0994();
    swift_allocError();
    *v14 = 7;
    swift_willThrow();
    v15 = v2[2];
    swift_beginAccess();

    pthread_mutex_unlock((v15 + 16));
    swift_endAccess();

    return v10;
  }

  v8 = *(v5 + 56) + 16 * result;
  v9 = *(v8 + 8);
  LODWORD(v8) = *(v8 + 12);
  v10 = (v9 + v8);
  if (!__CFADD__(v9, v8))
  {
    v11 = v2[2];
    swift_beginAccess();

    pthread_mutex_unlock((v11 + 16));
    swift_endAccess();

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1E0648(char a1)
{
  if (a1 < 0)
  {
    v7 = 2;
LABEL_9:
    sub_24A1E0940();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  v2 = *(v1 + 88);
  if (!v2)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v4 = (v2 - 1);
  *(v1 + 88) = v4;
  v5 = *(v1 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 72) = v5;
  if ((result & 1) == 0)
  {
    result = sub_24A1D95A4(v5);
    v5 = result;
  }

  if (*(v5 + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    *(v5 + v4 + 32) = a1;
    *(v1 + 72) = v5;
  }

  return result;
}

uint64_t sub_24A1E0710(unsigned __int16 a1)
{
  if (a1 > 0x3FFu)
  {
    v7 = 2;
LABEL_9:
    sub_24A1E0940();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  v2 = *(v1 + 92);
  if (!v2)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v4 = (v2 - 1);
  *(v1 + 92) = v4;
  v5 = *(v1 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 80) = v5;
  if ((result & 1) == 0)
  {
    result = sub_24A1D9554(v5);
    v5 = result;
  }

  if (*(v5 + 16) <= v4)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 2 * v4 + 32) = a1;
    *(v1 + 80) = v5;
  }

  return result;
}

void *sub_24A1E07E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[12];

  return v0;
}

uint64_t sub_24A1E0848()
{
  sub_24A1E07E0();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ResourceConfig(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ResourceConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24A1E0940()
{
  result = qword_27EF39A38;
  if (!qword_27EF39A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A38);
  }

  return result;
}

unint64_t sub_24A1E0994()
{
  result = qword_27EF39A48;
  if (!qword_27EF39A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A48);
  }

  return result;
}

uint64_t sub_24A1E09E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A18, &unk_24A1EA990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A1E0A58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A1E9A24() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 2 * v6);
      result = MEMORY[0x24C213380](*(a2 + 40), *v10, 2);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 2 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A1E0BCC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A1E9A24() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24A1E9B74();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A1E0D3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A1E9A24() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24A1E9B74();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + v3);
          v19 = (v17 + v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24A1E0EAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24A1E9A24() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_24A1E9B74();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_24A1E101C(uint64_t a1, unsigned __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24A1DC000(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_24A1DCAF4();
    result = v17;
    goto LABEL_8;
  }

  sub_24A1DC124(v14, a3 & 1);
  v18 = *v4;
  result = sub_24A1DC000(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 2 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_24A1E9AF4();
  __break(1u);
  return result;
}

unint64_t sub_24A1E1140(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24A1DBFBC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_24A1DCC40();
      result = v19;
      goto LABEL_8;
    }

    sub_24A1DC38C(v16, a4 & 1);
    v20 = *v5;
    result = sub_24A1DBFBC(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_24A1E9AF4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * result;
    *v23 = a1;
    *(v23 + 4) = BYTE4(a1) & 1;
    *(v23 + 8) = a2;
  }

  else
  {

    return sub_24A1E14E4(result, a3, a1 & 0x1FFFFFFFFLL, a2, v22);
  }

  return result;
}

unint64_t sub_24A1E1274(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24A1DBFBC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_24A1DCDA8();
    result = v17;
    goto LABEL_8;
  }

  sub_24A1DC614(v14, a3 & 1);
  v18 = *v4;
  result = sub_24A1DBFBC(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_24A1E9AF4();
  __break(1u);
  return result;
}

unint64_t sub_24A1E1398(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24A1DBFBC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_24A1DC878(v14, a3 & 1);
      v18 = *v4;
      result = sub_24A1DBFBC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_24A1E9AF4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_24A1DCEF4();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_24A1E14E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 4) = BYTE4(a3) & 1;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_24A1E153C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24A1E15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = type metadata accessor for RingSwappableViewCore();
  v10 = &off_285D5EA80;
  *&v8 = a1;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 64) = 1;
  sub_24A1DE498(&v8, v7);
  swift_beginAccess();
  sub_24A1DE540(v7, a3 + 16, &qword_27EF39A18, &unk_24A1EA990);
  swift_endAccess();
  *(a3 + 56) = a2;
  *(a3 + 64) = 0;
  return a3;
}

uint64_t sub_24A1E1658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v19[3] = type metadata accessor for RingSwappableViewCore();
  v19[4] = &off_285D5EA80;
  v19[0] = a1;
  sub_24A1E153C(v19, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A50, &qword_24A1EAAB8);
  swift_dynamicCast();
  v14 = a4(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v17;
  v18[3] = v14;
  v18[4] = a5;
  v18[0] = v15;
  swift_beginAccess();
  sub_24A1DE540(v18, a3 + 56, a6, a7);
  swift_endAccess();
  sub_24A1E153C(v19, v18);
  swift_beginAccess();
  sub_24A1DE540(v18, a3 + 16, &qword_27EF39A18, &unk_24A1EA990);
  swift_endAccess();
  *(a3 + 96) = a2;
  *(a3 + 104) = 256;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_24A1E17C0(uint64_t a1, unsigned __int16 a2)
{
  v4 = v3;
  v5 = v2;
  v8 = v2[2];
  swift_beginAccess();

  pthread_mutex_lock((v8 + 16));
  swift_endAccess();

  swift_beginAccess();
  v9 = v5[5];
  if (!*(v9 + 16))
  {
    goto LABEL_16;
  }

  v10 = sub_24A1DC000(a2);
  if ((v11 & 1) == 0 || *(*(v9 + 56) + 8 * v10) != a1)
  {
    sub_24A1DC000(a2);
    if (v22)
    {
      v4 = v5[3];
      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0xD00000000000001ALL, 0x800000024A1EC620);
      v23 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v23);

      MEMORY[0x24C2131D0](0xD000000000000026, 0x800000024A1EC640);
      v12 = v5[5];
      if (*(v12 + 16))
      {
        v24 = sub_24A1DC000(a2);
        if (v25)
        {
          v36 = *(*(v12 + 56) + 8 * v24);
          v26 = sub_24A1E9AC4();
          MEMORY[0x24C2131D0](v26);

          MEMORY[0x24C2131D0](0x3D746F6720202CLL, 0xE700000000000000);
          v27 = sub_24A1E9AC4();
          MEMORY[0x24C2131D0](v27);

          sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000036, 0x800000024A1EC5E0, 424);

          sub_24A1E0994();
          swift_allocError();
          v29 = 10;
LABEL_17:
          *v28 = v29;
          swift_willThrow();
          v33 = v5[2];
          swift_beginAccess();

          pthread_mutex_unlock((v33 + 16));
LABEL_18:
          swift_endAccess();
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_16:
    v30 = v5[3];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0x656372756F736552, 0xE900000000000020);
    v31 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v31);

    MEMORY[0x24C2131D0](0xD000000000000031, 0x800000024A1EC5A0);
    v32 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v32);

    sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000036, 0x800000024A1EC5E0, 421);

    sub_24A1E0994();
    swift_allocError();
    v29 = 9;
    goto LABEL_17;
  }

  v12 = a2;
  swift_beginAccess();
  a1 = v5[8];
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_23:

    MEMORY[0x24C213260](v12, a1);

    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
    __break(1u);
LABEL_25:
    sub_24A1DCAF4();
    v19 = v37;
    goto LABEL_9;
  }

  v13 = *(a1 + 8 * a2 + 32);

LABEL_7:
  sub_24A1DDDD4();

  swift_beginAccess();
  v14 = v5[5];
  v15 = sub_24A1DC000(a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  a1 = v15;
  v17 = v5[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v5[5];
  v37 = v19;
  v5[5] = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_25;
  }

LABEL_9:
  sub_24A1E0A58(a1, v19);
  v5[5] = v19;
LABEL_10:
  swift_endAccess();
  sub_24A1E0710(a2);
  if (!v4)
  {
    v35 = v5[2];
    swift_beginAccess();

    pthread_mutex_unlock((v35 + 16));
    goto LABEL_18;
  }

  sub_24A1E0994();
  swift_allocError();
  *v20 = 10;
  swift_willThrow();
  MEMORY[0x24C2135C0](v4);
  v21 = v5[2];
  swift_beginAccess();

  pthread_mutex_unlock((v21 + 16));
  swift_endAccess();
}

uint64_t sub_24A1E1D1C(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v5 = v3;
  swift_beginAccess();
  v9 = v3[5];
  if (*(v9 + 16) && (v10 = sub_24A1DC000(a2), (v11 & 1) != 0) && *(*(v9 + 56) + 8 * v10) == a1)
  {
    result = swift_beginAccess();
    v13 = v5[8];
    if ((v13 & 0xC000000000000001) != 0)
    {

      MEMORY[0x24C213260](a2, v13);
    }

    else
    {
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return result;
      }

      v14 = *(v13 + 8 * a2 + 32);
    }

    sub_24A1DE068(a3);

    if (v4)
    {
      sub_24A1E0994();
      swift_allocError();
      *v15 = 12;
      swift_willThrow();
      return MEMORY[0x24C2135C0](v4);
    }
  }

  else
  {
    v16 = v5[3];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000020, 0x800000024A1EC3C0);
    v17 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v17);

    MEMORY[0x24C2131D0](0x3D746F67202ELL, 0xE600000000000000);
    v18 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v18);

    MEMORY[0x24C2131D0](0x746365707865202CLL, 0xEB000000003D6465);
    v19 = v5[5];
    if (*(v19 + 16))
    {
      v20 = sub_24A1DC000(a2);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A40, &unk_24A1EAAA8);
    sub_24A1E9A64();
    MEMORY[0x24C2131D0](32, 0xE100000000000000);
    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000004ALL, 0x800000024A1EC890, 395);

    sub_24A1E0994();
    swift_allocError();
    *v23 = 10;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24A1E2034(uint64_t a1, unsigned __int8 a2)
{
  v4 = v3;
  v5 = v2;
  v8 = v2[2];
  swift_beginAccess();

  pthread_mutex_lock((v8 + 16));
  swift_endAccess();

  swift_beginAccess();
  v9 = v5[4];
  if (!*(v9 + 16))
  {
    goto LABEL_20;
  }

  v10 = sub_24A1DBFBC(a1);
  if ((v11 & 1) == 0 || *(*(v9 + 56) + v10) != a2)
  {
    sub_24A1DBFBC(a1);
    if (v30)
    {
      v4 = v5[3];
      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0xD000000000000017, 0x800000024A1EC6F0);
      v31 = sub_24A1E9AC4();
      v13 = v32;
      MEMORY[0x24C2131D0](v31);

      MEMORY[0x24C2131D0](0xD00000000000001ALL, 0x800000024A1EC710);
      v12 = v5[4];
      if (*(v12 + 16))
      {
        v33 = sub_24A1DBFBC(a1);
        if (v34)
        {
          v45 = *(*(v12 + 56) + v33);
          v35 = sub_24A1E9AC4();
          MEMORY[0x24C2131D0](v35);

          MEMORY[0x24C2131D0](0x3D746F67202CLL, 0xE600000000000000);
          v36 = sub_24A1E9AC4();
          MEMORY[0x24C2131D0](v36);

          sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000036, 0x800000024A1EC6B0, 234);

          sub_24A1E0994();
          swift_allocError();
          v38 = 4;
LABEL_21:
          *v37 = v38;
          swift_willThrow();
          v42 = v5[2];
          swift_beginAccess();

          pthread_mutex_unlock((v42 + 16));
LABEL_22:
          swift_endAccess();
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_20:
    v39 = v5[3];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0x656372756F736552, 0xE900000000000020);
    v40 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v40);

    MEMORY[0x24C2131D0](0xD000000000000031, 0x800000024A1EC670);
    v41 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v41);

    sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000036, 0x800000024A1EC6B0, 231);

    sub_24A1E0994();
    swift_allocError();
    v38 = 3;
    goto LABEL_21;
  }

  v12 = a2;
  swift_beginAccess();
  v13 = v5[7];
  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_27:

    MEMORY[0x24C213260](v12, v13);

    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
    __break(1u);
LABEL_29:
    sub_24A1DCDA8();
    v20 = v46;
    goto LABEL_9;
  }

  v14 = *(v13 + 8 * a2 + 32);

LABEL_7:
  sub_24A1DE790();

  swift_beginAccess();
  sub_24A1DEC8C(0, a1);
  swift_endAccess();
  swift_beginAccess();
  v15 = v5[4];
  v16 = sub_24A1DBFBC(a1);
  if ((v17 & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = v16;
  v18 = v5[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v5[4];
  v46 = v20;
  v5[4] = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_29;
  }

LABEL_9:
  sub_24A1E0D3C(v13, v20);
  v5[4] = v20;
LABEL_10:
  swift_endAccess();
  swift_beginAccess();
  v21 = v5[12];
  v22 = sub_24A1DBFBC(a1);
  if (v23)
  {
    v24 = v22;
    v25 = v5[12];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = v5[12];
    v5[12] = 0x8000000000000000;
    if (!v26)
    {
      sub_24A1DCC40();
    }

    sub_24A1E0BCC(v24, v27);
    v5[12] = v27;
  }

  swift_endAccess();
  sub_24A1E0648(a2);
  if (!v4)
  {
    v44 = v5[2];
    swift_beginAccess();

    pthread_mutex_unlock((v44 + 16));
    goto LABEL_22;
  }

  sub_24A1E0994();
  swift_allocError();
  *v28 = 4;
  swift_willThrow();
  MEMORY[0x24C2135C0](v4);
  v29 = v5[2];
  swift_beginAccess();

  pthread_mutex_unlock((v29 + 16));
  swift_endAccess();
}

uint64_t sub_24A1E2624(uint64_t a1, unsigned __int8 a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = v2[4];
  if (!*(v7 + 16) || (v8 = sub_24A1DBFBC(a1), (v9 & 1) == 0) || *(*(v7 + 56) + v8) != a2)
  {
    v15 = v4[3];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD00000000000001ELL, 0x800000024A1EC7E0);
    v16 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v16);

    MEMORY[0x24C2131D0](0x3D746F67202ELL, 0xE600000000000000);
    v17 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v17);

    MEMORY[0x24C2131D0](0x746365707865202CLL, 0xEB000000003D6465);
    v18 = v4[4];
    if (*(v18 + 16))
    {
      v19 = sub_24A1DBFBC(a1);
      if (v20)
      {
        v21 = *(*(v18 + 56) + v19);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A58, &unk_24A1EAAD0);
    sub_24A1E9A64();
    MEMORY[0x24C2131D0](32, 0xE100000000000000);
    v13 = 0xE000000000000000;
    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000003ELL, 0x800000024A1EC850, 269);

    sub_24A1E0994();
    swift_allocError();
    *v22 = 4;
    swift_willThrow();
    return v13;
  }

  result = swift_beginAccess();
  v11 = v4[7];
  if ((v11 & 0xC000000000000001) != 0)
  {

    MEMORY[0x24C213260](a2, v11);

LABEL_7:
    v13 = sub_24A1DE840();

    if (v3)
    {
      sub_24A1E0994();
      swift_allocError();
      *v14 = 5;
      swift_willThrow();
      MEMORY[0x24C2135C0](v3);
    }

    return v13;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v12 = *(v11 + 8 * a2 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1E293C(uint64_t a1, unsigned __int8 a2, unint64_t a3)
{
  v5 = v3;
  swift_beginAccess();
  v9 = v3[4];
  if (*(v9 + 16) && (v10 = sub_24A1DBFBC(a1), (v11 & 1) != 0) && *(*(v9 + 56) + v10) == a2)
  {
    result = swift_beginAccess();
    v13 = v5[7];
    if ((v13 & 0xC000000000000001) != 0)
    {

      MEMORY[0x24C213260](a2, v13);
    }

    else
    {
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return result;
      }

      v14 = *(v13 + 8 * a2 + 32);
    }

    sub_24A1DE98C(a3);

    if (v4)
    {
      sub_24A1E0994();
      swift_allocError();
      *v15 = 6;
      swift_willThrow();
      return MEMORY[0x24C2135C0](v4);
    }
  }

  else
  {
    v16 = v5[3];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD00000000000001ELL, 0x800000024A1EC7E0);
    v17 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v17);

    MEMORY[0x24C2131D0](0x3D746F67202ELL, 0xE600000000000000);
    v18 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v18);

    MEMORY[0x24C2131D0](0x746365707865202CLL, 0xEB000000003D6465);
    v19 = v5[4];
    if (*(v19 + 16))
    {
      v20 = sub_24A1DBFBC(a1);
      if (v21)
      {
        v22 = *(*(v19 + 56) + v20);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A58, &unk_24A1EAAD0);
    sub_24A1E9A64();
    MEMORY[0x24C2131D0](32, 0xE100000000000000);
    sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000047, 0x800000024A1EC800, 295);

    sub_24A1E0994();
    swift_allocError();
    *v23 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResourceFactoryResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResourceFactoryResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24A1E2E08()
{
  result = qword_27EF39A60;
  if (!qword_27EF39A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A60);
  }

  return result;
}

unint64_t sub_24A1E2E60()
{
  result = qword_27EF39A68;
  if (!qword_27EF39A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A68);
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A1E2EF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_24A1E2F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_24A1E2F88@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24A1E2FAC(unsigned int a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *(v2 + 32) = -1;
  v5 = (v2 + 32);
  v6 = MEMORY[0x277D84F90];
  *(v2 + 40) = 0;
  *(v2 + 48) = v6;
  *(v2 + 56) = 0;
  *(v2 + 64) = v6;
  *(v2 + 72) = v6;
  *(v2 + 96) = 1;
  if (a1 && a2)
  {
    type metadata accessor for PolarisMutex();
    v7 = swift_allocObject();
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    LODWORD(v8) = v7 + 16;
    v24.__sig = 0;
    *v24.__opaque = 0;
    pthread_mutexattr_init(&v24);
    swift_beginAccess();
    pthread_mutex_init((v7 + 16), &v24);
    swift_endAccess();
    pthread_mutexattr_destroy(&v24);
    *(v2 + 88) = v7;
    type metadata accessor for ExclavePolarisBufferServiceLog();
    v9 = swift_allocObject();
    *(v9 + 16) = 0xD000000000000013;
    *(v9 + 24) = 0x800000024A1ECDC0;
    *(v9 + 32) = 1;
    *(v2 + 80) = v9;
    *(v2 + 16) = a1;
    *(v2 + 20) = a2;
    if (__CFADD__(a1, a2))
    {
LABEL_25:
      __break(1u);
LABEL_26:
      v5 = sub_24A1D9590(v5);
    }

    else
    {
      v8 = a1;
      *(v2 + 24) = a1 + a2;
      sub_24A1E41F0();
      sub_24A1E434C();
      v10 = *(v2 + 20);
      if (v10)
      {
        v11 = *(v2 + 20);
        v12 = sub_24A1E99F4();
        *(v12 + 16) = v10;
        memset((v12 + 32), 255, 4 * v10);
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      swift_beginAccess();
      v13 = *(v2 + 48);
      *(v2 + 48) = v12;

      v14 = 0;
      v15 = 32;
      do
      {
        if (v8 == v14)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        swift_beginAccess();
        v16 = *(v2 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 64) = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_24A1D957C(v16);
        }

        if (*(v16 + 2) <= v14)
        {
          goto LABEL_21;
        }

        *&v16[v15] = v14;
        *(v2 + 64) = v16;
        swift_endAccess();
        sub_24A1E44C4(v14, v14);
        v15 += 16;
        ++v14;
      }

      while (v8 != v14);
      v5 = *(v2 + 48);
      v18 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 48) = v5;
      if ((v18 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v19 = 0;
    do
    {
      if (a2 == v19)
      {
        goto LABEL_22;
      }

      if (__CFADD__(v8, v19))
      {
        goto LABEL_23;
      }

      if (*(v5 + 2) <= v19)
      {
        goto LABEL_24;
      }

      *&v5[4 * v19 + 32] = v8 + v19;
      ++v19;
    }

    while (a2 != v19);
    *(v2 + 48) = v5;
    *(v2 + 56) = 0;
    v20 = *MEMORY[0x277D85DE8];
    return v2;
  }

  else
  {
    sub_24A1E9A34();

    v22 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v22);

    MEMORY[0x24C2131D0](0x776569566D756E20, 0xEA00000000002073);
    v23 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v23);

    result = sub_24A1E9A74();
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1E3364()
{
  v4 = *(v0 + 88);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  swift_beginAccess();
  if (*(v0 + 40))
  {
    v5 = *(v0 + 32);
    v6 = __CFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 = *(v0 + 16);
    if (!v8)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      result = sub_24A1D957C(v4);
      v4 = result;
      goto LABEL_10;
    }

    v9 = v7 % v8;
  }

  else
  {
    v9 = 0;
  }

  v2 = v9;
  v4 = *(v0 + 64);
  if (*(v4 + 16) <= v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = 16 * v9;
  if (*(v4 + v3 + 44) == 1)
  {
    v10 = *(v0 + 80);
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD000000000000035, 0x800000024A1ECD40);
    v11 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v11);

    MEMORY[0x24C2131D0](0xD00000000000001DLL, 0x800000024A1ECD80);
    v12 = 0xE000000000000000;
    sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000017, 0x800000024A1ECDA0, 265);

    sub_24A1E5354();
    swift_allocError();
    *v13 = 3;
    swift_willThrow();
    v14 = *(v0 + 88);
    swift_beginAccess();

    pthread_mutex_unlock((v14 + 16));
    swift_endAccess();

    return v12;
  }

  v1 = *(v4 + v3 + 32);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v4;
  if ((result & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (*(v4 + 16) <= v2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + v3 + 44) = 1;
    *(v0 + 64) = v4;
    result = swift_endAccess();
    v16 = *(v0 + 72);
    if (*(v16 + 16) > v1)
    {
      v12 = *(v16 + 16 * v1 + 36);
      v17 = *(v0 + 88);
      swift_beginAccess();

      pthread_mutex_unlock((v17 + 16));
      swift_endAccess();

      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1E3640(unint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 88);
  swift_beginAccess();

  pthread_mutex_lock((v5 + 2));
  swift_endAccess();

  v6 = *(v3 + 24);
  if (v6 <= a1)
  {
    v11 = *(v3 + 80);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD00000000000001DLL, 0x800000024A1ECBD0);
    v12 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v12);

    MEMORY[0x24C2131D0](0xD000000000000016, 0x800000024A1ECBF0);
    LODWORD(v29) = v6;
    v13 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v13);

    sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000020, 0x800000024A1ECC10, 285);

    sub_24A1E5354();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v15 = *(v3 + 88);
    swift_beginAccess();

    pthread_mutex_unlock((v15 + 16));
LABEL_22:
    swift_endAccess();
  }

  swift_beginAccess();
  if (*(v3 + 40))
  {
    v7 = *(v3 + 32);
    v8 = __CFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(v3 + 16);
    if (!v10)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v6 = v9 % v10;
  }

  else
  {
    v6 = 0;
  }

  a1 = a1;
  v16 = *(v3 + 72);
  if (*(v16 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (*(v16 + 16 * a1 + 40) == v6)
  {
    a1 = v6;
    v5 = *(v3 + 64);
    if (v5[2] > v6)
    {
      v2 = 2 * v6;
      if (BYTE4(v5[v2 + 5]) == 1)
      {
        swift_beginAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 64) = v5;
        if (result)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

      v26 = *(v3 + 80);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_24A1E9A34();
      MEMORY[0x24C2131D0](0xD000000000000040, 0x800000024A1ECCA0);
      v31 = v6;
      v27 = sub_24A1E9AC4();
      MEMORY[0x24C2131D0](v27);

      MEMORY[0x24C2131D0](0x3D6574617453202ELL, 0xE800000000000000);
      sub_24A1E9A64();
      MEMORY[0x24C2131D0](0xD000000000000011, 0x800000024A1ECCF0);
      LOBYTE(v31) = 1;
      sub_24A1E9A64();
      MEMORY[0x24C2131D0](0xD000000000000027, 0x800000024A1ECD10);
      sub_24A1E7E84(0, 0xE000000000000000, 0xD000000000000020, 0x800000024A1ECC10, 301);

      sub_24A1E5354();
      swift_allocError();
      v25 = 2;
LABEL_20:
      *v24 = v25;
      swift_willThrow();
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v20 = *(v3 + 80);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_24A1E9A34();
  v5 = &v29;
  MEMORY[0x24C2131D0](0xD00000000000002DLL, 0x800000024A1ECC40);
  v21 = *(v3 + 72);
  if (*(v21 + 16) > a1)
  {
    v31 = *(v21 + 16 * a1 + 40);
    v22 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v22);

    MEMORY[0x24C2131D0](0xD000000000000026, 0x800000024A1ECC70);
    v31 = v6;
    v23 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v23);

    sub_24A1E7E84(v29, v30, 0xD000000000000020, 0x800000024A1ECC10, 293);

    sub_24A1E5354();
    swift_allocError();
    v25 = 1;
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_24A1D957C(v5);
  v5 = result;
LABEL_13:
  if (v5[2] <= a1)
  {
    __break(1u);
    goto LABEL_30;
  }

  HIDWORD(v5[v2 + 4]) = -1;
  *(v3 + 64) = v5;
  if (v5[2] <= a1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  BYTE4(v5[v2 + 5]) = 2;
  *(v3 + 64) = v5;
  *(v3 + 32) = v6;
  v18 = *(v3 + 40);
  v8 = __CFADD__(v18, 1);
  v19 = v18 + 1;
  if (!v8)
  {
    *(v3 + 40) = v19;
    swift_endAccess();
LABEL_21:
    v28 = *(v3 + 88);
    swift_beginAccess();

    pthread_mutex_unlock((v28 + 16));
    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24A1E3C44@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *(v2 + 16);
  if (v6 <= a1 || *(v2 + 20) < a1)
  {
    swift_bridgeObjectRelease_n();
    v8 = *(v2 + 80);
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD00000000000002BLL, 0x800000024A1ECB40);
    v9 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v9);

    MEMORY[0x24C2131D0](0xD000000000000011, 0x800000024A1ECB70);
    *(v2 + 20);
    v10 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v10);

    MEMORY[0x24C2131D0](0xD000000000000010, 0x800000024A1ECB90);
    v11 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v11);

    MEMORY[0x24C2131D0](0x776569566D756E20, 0xEA00000000003D73);
    v12 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v12);

    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000001ELL, 0x800000024A1ECBB0, 336);

    sub_24A1E5354();
    swift_allocError();
    *v13 = 7;
    return swift_willThrow();
  }

  v15 = *(v2 + 88);
  swift_beginAccess();

  pthread_mutex_lock((v15 + 16));
  swift_endAccess();

  swift_beginAccess();
  v16 = *(v4 + 40);
  if (!v16)
  {
    swift_bridgeObjectRelease_n();
    sub_24A1E5354();
    swift_allocError();
    *v28 = 8;
    swift_willThrow();
LABEL_25:
    v29 = *(v4 + 88);
    swift_beginAccess();

    pthread_mutex_unlock((v29 + 16));
    swift_endAccess();
  }

  v31 = a2;
  if (v16 >= a1)
  {
    LODWORD(v16) = a1;
  }

  v32 = v16;
  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
LABEL_24:
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v31 + 16) = v32;
    goto LABEL_25;
  }

  v17 = 0;
  v18 = *(v4 + 32);
  v19 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = sub_24A1E49FC(v18);
    if (v3)
    {
      break;
    }

    v22 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_24A1DBCC0(0, *(v19 + 2) + 1, 1, v19);
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_24A1DBCC0((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    *&v19[4 * v24 + 32] = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_24A1DBCC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v26 = *(v20 + 2);
    v25 = *(v20 + 3);
    if (v26 >= v25 >> 1)
    {
      v20 = sub_24A1DBCC0((v25 > 1), v26 + 1, 1, v20);
    }

    *(v20 + 2) = v26 + 1;
    *&v20[4 * v26 + 32] = HIDWORD(v22);
    v27 = v6;
    if (v18)
    {
      v27 = v18;
    }

    v18 = (v27 - 1);
    if (v32 == ++v17)
    {
      goto LABEL_24;
    }
  }

  if (!v17)
  {

    swift_willThrow();
    goto LABEL_25;
  }

  MEMORY[0x24C2135C0](v3);
  *v31 = v19;
  *(v31 + 8) = v20;
  *(v31 + 16) = v17;
  v30 = *(v4 + 88);
  swift_beginAccess();

  pthread_mutex_unlock((v30 + 16));
  swift_endAccess();
}

uint64_t sub_24A1E4124(uint64_t a1)
{
  v4 = *(v1 + 88);
  swift_beginAccess();

  pthread_mutex_lock((v4 + 16));
  swift_endAccess();

  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    sub_24A1E4D58(v7);
    --v5;
  }

  while (!v2);
  v8 = *(v1 + 88);
  swift_beginAccess();

  pthread_mutex_unlock((v8 + 16));
  swift_endAccess();
}

uint64_t sub_24A1E41F0()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v2 = *(v0 + 24);
  v3 = sub_24A1E99F4();
  v4 = v3;
  *(v3 + 16) = v1;
  v5 = (v3 + 32);
  if (v1 <= 7)
  {
    v6 = 0;
LABEL_8:
    v9 = v1 - v6;
    do
    {
      *v5++ = xmmword_24A1EAC60;
      --v9;
    }

    while (v9);
    goto LABEL_10;
  }

  v6 = v1 & 0xFFFFFFF8;
  v5 += v6;
  v7 = (v3 + 96);
  v8 = v6;
  do
  {
    *(v7 - 2) = xmmword_24A1EAC60;
    *(v7 - 1) = xmmword_24A1EAC60;
    *(v7 - 4) = xmmword_24A1EAC60;
    *(v7 - 3) = xmmword_24A1EAC60;
    v7[2] = xmmword_24A1EAC60;
    v7[3] = xmmword_24A1EAC60;
    *v7 = xmmword_24A1EAC60;
    v7[1] = xmmword_24A1EAC60;
    v7 += 8;
    v8 -= 8;
  }

  while (v8);
  if (v6 != v1)
  {
    goto LABEL_8;
  }

LABEL_10:
  swift_beginAccess();
  v10 = *(v0 + 72);
  *(v0 + 72) = v4;

  if (v1)
  {
    v12 = 0;
    for (i = 32; ; i += 16)
    {
      v14 = *(v0 + 72);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 72) = v14;
      if ((result & 1) == 0)
      {
        result = sub_24A1D9568(v14);
        v14 = result;
      }

      if (*(v14 + 16) <= v12)
      {
        break;
      }

      *(v14 + i) = v12;
      *(v0 + 72) = v14;
      if (*(v14 + 16) <= v12)
      {
        goto LABEL_19;
      }

      *(v14 + i + 4) = v12;
      *(v0 + 72) = v14;
      if (v1 == ++v12)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1E434C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = sub_24A1E99F4();
    v4 = v3;
    *(v3 + 16) = v1;
    v5 = 32;
    v6 = v1;
    do
    {
      v7 = v3 + v5;
      *v7 = -1;
      *(v7 + 8) = -1;
      *(v7 + 12) = 0;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v8 = *(v0 + 64);
  *(v0 + 64) = v4;

  if (v1)
  {
    v10 = 0;
    for (i = 32; ; i += 16)
    {
      swift_beginAccess();
      v12 = *(v0 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 64) = v12;
      if ((result & 1) == 0)
      {
        result = sub_24A1D957C(v12);
        v12 = result;
      }

      if (*(v12 + 16) <= v10)
      {
        break;
      }

      *(v12 + i) = v10;
      *(v0 + 64) = v12;
      if (*(v12 + 16) <= v10)
      {
        goto LABEL_17;
      }

      *(v12 + i + 4) = -1;
      *(v0 + 64) = v12;
      if (*(v12 + 16) <= v10)
      {
        goto LABEL_18;
      }

      *(v12 + i + 8) = v10;
      *(v0 + 64) = v12;
      if (*(v12 + 16) <= v10)
      {
        goto LABEL_19;
      }

      ++v10;
      *(v12 + i + 12) = 0;
      *(v0 + 64) = v12;
      result = swift_endAccess();
      if (v1 == v10)
      {
        return result;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_24A1E44C4(unsigned int a1, int a2)
{
  v4 = a1;
  swift_beginAccess();
  v5 = *(v2 + 72);
  if (*(v5 + 16) <= v4)
  {
    __break(1u);
LABEL_7:
    result = sub_24A1D9568(v5);
    v5 = result;
    goto LABEL_4;
  }

  if (*(v5 + 16 * v4 + 44))
  {
    goto LABEL_9;
  }

  v6 = *(v2 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 72) = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (*(v5 + 16) > v4)
  {
    *(v5 + 16 * v4 + 40) = a2;
    *(v2 + 72) = v5;
    return result;
  }

  __break(1u);
LABEL_9:
  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000018, 0x800000024A1ECB00);
  v8 = *(v2 + 72);
  if (*(v8 + 16) <= v4)
  {
    __break(1u);
  }

  v11 = *(v8 + 16 * v4 + 44);
  v9 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v9);

  MEMORY[0x24C2131D0](0xD00000000000001BLL, 0x800000024A1ECB20);
  v10 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v10);

  result = sub_24A1E9A74();
  __break(1u);
  return result;
}

uint64_t sub_24A1E468C(unsigned int a1)
{
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 72);
  if (*(v3 + 16) <= v2)
  {
    __break(1u);
LABEL_7:
    result = sub_24A1D9568(v3);
    v3 = result;
    goto LABEL_4;
  }

  if (*(v3 + 16 * v2 + 44))
  {
    goto LABEL_9;
  }

  v4 = *(v1 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 72) = v3;
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (*(v3 + 16) > v2)
  {
    *(v3 + 16 * v2 + 40) = -1;
    *(v1 + 72) = v3;
    return result;
  }

  __break(1u);
LABEL_9:
  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000018, 0x800000024A1ECB00);
  v6 = *(v1 + 72);
  if (*(v6 + 16) <= v2)
  {
    __break(1u);
  }

  v9 = *(v6 + 16 * v2 + 44);
  v7 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v7);

  MEMORY[0x24C2131D0](0xD00000000000001BLL, 0x800000024A1ECB20);
  v8 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v8);

  result = sub_24A1E9A74();
  __break(1u);
  return result;
}

uint64_t sub_24A1E4854(int a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  if (v3)
  {
    v4 = (v3 - 1);
    *(v1 + 56) = v4;
    v5 = *(v1 + 48);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 48) = v5;
    if ((result & 1) == 0)
    {
      result = sub_24A1D9590(v5);
      v5 = result;
    }

    if (*(v5 + 16) > v4)
    {
      *(v5 + 4 * v4 + 32) = a1;
      *(v1 + 48) = v5;
      return result;
    }

    __break(1u);
  }

  sub_24A1E9A34();
  MEMORY[0x24C2131D0](0xD000000000000030, 0x800000024A1ECAC0);
  v9 = *(v1 + 20);
  v7 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v7);

  MEMORY[0x24C2131D0](0x207865646E69202ELL, 0xEA0000000000203DLL);
  v8 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v8);

  MEMORY[0x24C2131D0](32, 0xE100000000000000);
  result = sub_24A1E9A74();
  __break(1u);
  return result;
}

uint64_t sub_24A1E49FC(char *a1)
{
  if (a1 == -1)
  {
    sub_24A1E5354();
    swift_allocError();
    v16 = 5;
LABEL_15:
    *v15 = v16;
    return swift_willThrow();
  }

  v5 = a1;
  v6 = a1;
  swift_beginAccess();
  v7 = *(v1 + 64);
  if (*(v7 + 16) <= v6)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = 16 * v6;
  v8 = v7 + 16 * v6;
  v3 = *(v8 + 36);
  if (v3 != -1)
  {
    v5 = *(v1 + 72);
    if (*(v5 + 2) > v3)
    {
      v9 = *&v5[16 * v3 + 44];
      v2 = (v9 + 1);
      if (v9 != -1)
      {
        v10 = *(v1 + 72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 72) = v5;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_7:
          if (*(v5 + 2) > v3)
          {
            v12 = &v5[16 * v3];
            v13 = v12 + 32;
            *(v12 + 11) = v2;
            *(v1 + 72) = v5;
            return *(v13 + 1) | (v2 << 32);
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        v5 = sub_24A1D9568(v5);
        goto LABEL_7;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(v8 + 44) != 2)
  {
    v18 = *(v1 + 80);
    sub_24A1E9A34();

    v19 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v19);

    sub_24A1E7E84(0xD000000000000029, 0x800000024A1ECA10, 0xD000000000000025, 0x800000024A1ECA40, 531);

    sub_24A1E5354();
    swift_allocError();
    v16 = 8;
    goto LABEL_15;
  }

  v17 = *(v1 + 56);
  if (v17 == *(v1 + 20))
  {
    sub_24A1E5354();
    swift_allocError();
    v16 = 4;
    goto LABEL_15;
  }

  if (v17 == -1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = *(v8 + 32);
  *(v1 + 56) = v17 + 1;
  v20 = *(v1 + 48);
  if (*(v20 + 16) > v17)
  {
    LODWORD(v2) = *(v20 + 4 * v17 + 32);
    sub_24A1E44C4(v2, v5);
    swift_beginAccess();
    v5 = *(v1 + 64);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v5;
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  v5 = sub_24A1D957C(v5);
LABEL_19:
  if (*(v5 + 2) <= v6)
  {
    __break(1u);
    goto LABEL_34;
  }

  v22 = &v5[v4];
  *&v5[v4 + 36] = v3;
  *(v1 + 64) = v5;
  if (*(v5 + 2) <= v6)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v22 + 8) = v2;
  *(v1 + 64) = v5;
  if (*(v5 + 2) <= v6)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v22[44] = 0;
  *(v1 + 64) = v5;
  v5 = *(v1 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 72) = v5;
  if ((result & 1) == 0)
  {
LABEL_36:
    result = sub_24A1D9568(v5);
    v5 = result;
  }

  if (*(v5 + 2) > v3)
  {
    v23 = &v5[16 * v3];
    v13 = v23 + 32;
    *(v23 + 11) = 1;
    *(v1 + 72) = v5;
    swift_endAccess();
    v2 = *(v23 + 11);
    return *(v13 + 1) | (v2 << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_24A1E4D58(char *a1)
{
  v3 = a1;
  v4 = *(v1 + 24);
  if (v4 <= a1)
  {
    v15 = *(v1 + 80);
    sub_24A1E9A34();

    strcpy(v24, "Invalid index ");
    HIBYTE(v24[1]) = -18;
    v16 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v16);

    MEMORY[0x24C2131D0](0xD00000000000001BLL, 0x800000024A1EC940);
    v17 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v17);

    sub_24A1E7E84(v24[0], v24[1], 0xD00000000000001ELL, 0x800000024A1EC960, 577);
    v18 = 9;
    goto LABEL_22;
  }

  v5 = a1;
  swift_beginAccess();
  v6 = *(v1 + 72);
  if (*(v6 + 16) > v3)
  {
    if (*(v6 + 16 * v3 + 44))
    {
      v7 = *(v1 + 72);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 72) = v6;
      if (result)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }

    v19 = *(v1 + 80);
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD00000000000002CLL, 0x800000024A1EC9B0);
    v25 = v3;
    v20 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v20);

    MEMORY[0x24C2131D0](0xD000000000000027, 0x800000024A1EC9E0);
    sub_24A1E7E84(0, 0xE000000000000000, 0xD00000000000001ELL, 0x800000024A1EC960, 582);
    v18 = 10;
LABEL_22:

    sub_24A1E5354();
    swift_allocError();
    *v21 = v18;
    return swift_willThrow();
  }

  __break(1u);
LABEL_27:
  result = sub_24A1D9568(v6);
  v6 = result;
LABEL_5:
  if (*(v6 + 16) <= v3)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v6 + 16 * v3;
  v10 = *(v9 + 44);
  v11 = v10 != 0;
  v12 = v10 - 1;
  if (!v11)
  {
    goto LABEL_29;
  }

  *(v9 + 44) = v12;
  *(v1 + 72) = v6;
  if (*(v9 + 44))
  {
    return result;
  }

  v6 = *(v9 + 40);
  if (v6 == -1)
  {
    v22 = *(v1 + 80);
    sub_24A1E9A34();

    v25 = v3;
    v23 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v23);

    sub_24A1E7E84(0xD00000000000002BLL, 0x800000024A1EC980, 0xD00000000000001ELL, 0x800000024A1EC960, 599);
    v18 = 11;
    goto LABEL_22;
  }

  v5 = *(v1 + 64);
  if (*(v5 + 16) > v6)
  {
    v4 = 16 * v6;
    v13 = v5 + 16 * v6;
    if (*(v13 + 36) == v3)
    {
      if (*(v13 + 44) - 1 < 2)
      {
        goto LABEL_17;
      }

      v2 = *(v13 + 32);
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 64) = v5;
      if ((result & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_14;
    }

    sub_24A1E468C(v3);
    return sub_24A1E4854(v3);
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v3 = sub_24A1D957C(v3);
  while (1)
  {
    if (*(v3 + 2) > v6)
    {
      *&v3[v4 + 36] = -1;
      *(v1 + 64) = v3;
      return swift_endAccess();
    }

    __break(1u);
LABEL_33:
    result = sub_24A1D957C(v5);
    v5 = result;
LABEL_14:
    if (*(v5 + 16) <= v6)
    {
      break;
    }

    *(v5 + v4 + 32) = v3;
    *(v1 + 64) = v5;
    if (*(v5 + 16) <= v6)
    {
      goto LABEL_35;
    }

    *(v5 + v4 + 44) = 2;
    *(v1 + 64) = v5;
    swift_endAccess();
    sub_24A1E44C4(v3, v6);
    LODWORD(v3) = v2;
LABEL_17:
    sub_24A1E468C(v3);
    sub_24A1E4854(v3);
    swift_beginAccess();
    v3 = *(v1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_24A1E5220()
{
  v1 = v0[6];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_24A1E52B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24A1E52F8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_24A1E5354()
{
  result = qword_27EF39A70;
  if (!qword_27EF39A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RingSwappableViewResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RingSwappableViewResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MemDescNode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MemDescNode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RingBufferNode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RingBufferNode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_24A1E5614()
{
  result = qword_27EF39A78;
  if (!qword_27EF39A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A78);
  }

  return result;
}

unint64_t sub_24A1E566C()
{
  result = qword_27EF39A80;
  if (!qword_27EF39A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF39A80);
  }

  return result;
}

uint64_t sub_24A1E56C0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24A1E5740()
{
  sub_24A1E579C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24A1E579C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF39A18, &unk_24A1EA990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PolarisBufferServiceCoreOpenDomain.__allocating_init()()
{
  v0 = swift_allocObject();
  PolarisBufferServiceCoreOpenDomain.init()();
  return v0;
}

void *PolarisBufferServiceCoreOpenDomain.init()()
{
  v1 = v0;
  v7 = *MEMORY[0x277D85DE8];
  v0[3] = 0;
  type metadata accessor for PolarisMutex();
  v2 = swift_allocObject();
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  v6.__sig = 0;
  *v6.__opaque = 0;
  pthread_mutexattr_init(&v6);
  swift_beginAccess();
  pthread_mutex_init((v2 + 16), &v6);
  swift_endAccess();
  pthread_mutexattr_destroy(&v6);
  v1[4] = v2;
  type metadata accessor for ResourceFactory();
  swift_allocObject();
  v1[5] = sub_24A1DED54();
  type metadata accessor for ExclavePolarisBufferServiceLog();
  v3 = swift_allocObject();
  *(v3 + 16) = 0xD000000000000022;
  *(v3 + 24) = 0x800000024A1EAFD0;
  *(v3 + 32) = 1;
  v1[2] = v3;

  sub_24A1E7E74(0xD00000000000002DLL, 0x800000024A1ECF60, 0x292874696E69, 0xE600000000000000, 34);

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_24A1E5A30()
{
  v1 = v0;
  v2 = v0[4];
  swift_beginAccess();

  pthread_mutex_lock((v2 + 16));
  swift_endAccess();

  v4 = v1[3];
  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    v1[3] = v4 + 1;
    v5 = v1[4];
    swift_beginAccess();

    pthread_mutex_unlock((v5 + 16));
    swift_endAccess();

    v6 = v1[2];
    sub_24A1E9A34();
    MEMORY[0x24C2131D0](0xD00000000000002FLL, 0x800000024A1ECF90);
    v7 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v7);

    MEMORY[0x24C2131D0](0xD000000000000013, 0x800000024A1ECFC0);
    v11 = v1[3];
    v8 = sub_24A1E9AC4();
    MEMORY[0x24C2131D0](v8);

    sub_24A1E7E74(0, 0xE000000000000000, 0xD000000000000016, 0x800000024A1ECFE0, 43);

    v9 = v1[5];
    type metadata accessor for PolarisBufferServiceHandler();
    swift_allocObject();

    v10 = sub_24A1E6A98(v4, v9);

    return v10;
  }

  return result;
}

void *PolarisBufferServiceCoreOpenDomain.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t PolarisBufferServiceCoreOpenDomain.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

void *PolarisBufferServiceHandler.deinit()
{
  v1 = v0[2];

  sub_24A1E9A34();

  strcpy(v7, "Connection ID ");
  HIBYTE(v7[1]) = -18;
  v6 = v0[3];
  v2 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v2);

  MEMORY[0x24C2131D0](0xD000000000000013, 0x800000024A1ED060);
  sub_24A1E7E74(v7[0], v7[1], 0x74696E696564, 0xE600000000000000, 25);

  v3 = v0[2];

  v4 = v0[4];

  return v0;
}

uint64_t PolarisBufferServiceHandler.__deallocating_deinit()
{
  PolarisBufferServiceHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24A1E5E64(uint64_t a1, unsigned __int8 a2)
{
  v5 = *(v2 + 16);
  sub_24A1E9A34();

  v6 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v6);

  MEMORY[0x24C2131D0](0x726574697277202CLL, 0xEB00000000204449);
  v7 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v7);

  sub_24A1E7E74(0xD00000000000001CLL, 0x800000024A1ED200, 0xD000000000000023, 0x800000024A1ED220, 62);

  v8 = *(v2 + 32);
  return sub_24A1E2034(a1, a2);
}

uint64_t sub_24A1E60AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_24A1E9A34();

  v5 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v5);

  sub_24A1E7E74(0xD00000000000001BLL, 0x800000024A1ED150, 0xD000000000000019, 0x800000024A1ED170, 78);

  v6 = *(v1 + 32);
  v7 = sub_24A1DF8C8(*(v2 + 24), a1);
  sub_24A1E9A34();

  v8 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v8);

  MEMORY[0x24C2131D0](0xD000000000000010, 0x800000024A1ED1E0);
  v9 = sub_24A1E9AC4();
  MEMORY[0x24C2131D0](v9);

  sub_24A1E7E74(0xD00000000000001CLL, 0x800000024A1ED1C0, 0xD000000000000019, 0x800000024A1ED170, 91);

  return v7;
}