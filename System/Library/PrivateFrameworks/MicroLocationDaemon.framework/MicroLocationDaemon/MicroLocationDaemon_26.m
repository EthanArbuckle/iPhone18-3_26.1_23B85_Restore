unint64_t sub_2591DD26C()
{
  result = qword_27F99B8A0;
  if (!qword_27F99B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B8A0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2591DD3B0(ULHomeSlamModel *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return ULHomeSlamModel::getTrajectoryPointCloud(a1);
}

uint64_t sub_2591DD3CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2591DD440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2591DD488(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_2591DD4E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (result[2] == 4 && (v2 = result[4], *(v2 + 16) == 4) && (v3 = result[5], *(v3 + 16) == 4) && (v4 = result[6], *(v4 + 16) == 4) && (v5 = result[7], *(v5 + 16) == 4))
  {
    v6 = 0;
    v7 = *(v2 + 32);
    v8 = *(v3 + 32);
    v9 = *(v4 + 32);
    v10 = *(v5 + 32);
  }

  else
  {
    v6 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v6;
  return result;
}

uint64_t sub_2591DD574@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_259212360();
  v43 = *(v1 - 8);
  v44 = v1;
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for DatabaseFrame() - 8) + 64);
  MEMORY[0x28223BE20]();
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_259212380();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v12 = sub_259212520();
  __swift_project_value_buffer(v12, qword_281456B60);
  v13 = sub_259212500();
  v14 = sub_259212A00();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_258FE9000, v13, v14, "[PolarisTask]: Running PolarisTask", v15, 2u);
    MEMORY[0x259CA2F70](v15, -1, -1);
  }

  if (sub_259212330() == 1)
  {
    sub_259212340();
    v16 = sub_259212330();
    v17 = *(v8 + 8);
    v17(v11, v7);
    if (v16 == 1)
    {
      sub_259212340();
      sub_259212390();
      v17(v11, v7);
      v18 = v45;
      sub_259212350();
      (*(v43 + 8))(v4, v44);
      v19 = sub_259212500();
      v20 = sub_259212A00();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_258FE9000, v19, v20, "[PolarisTask]: Injecting frame and notify", v21, 2u);
        MEMORY[0x259CA2F70](v21, -1, -1);
      }

      if (qword_281455868 != -1)
      {
        swift_once();
      }

      v22 = qword_281456B78;
      if (qword_281456B78)
      {
        MEMORY[0x28223BE20]();
        *(&v42 - 2) = v18;

        os_unfair_lock_lock(v22 + 22);
        sub_2591DDE5C(&v22[4]);
        os_unfair_lock_unlock(v22 + 22);
        v23 = sub_259212860();
        notify_post((v23 + 32));

        sub_2591DC298(v18);

        v24 = MEMORY[0x277D3E728];
LABEL_25:
        v40 = *v24;
        v41 = sub_259212310();
        return (*(*(v41 - 8) + 104))(v46, v40, v41);
      }

      v37 = sub_259212500();
      v38 = sub_2592129F0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_258FE9000, v37, v38, "[PolarisTask]: Failed to get exclave shared state", v39, 2u);
        MEMORY[0x259CA2F70](v39, -1, -1);
      }

      sub_2591DC298(v18);
    }

    else
    {
      v34 = sub_259212500();
      v35 = sub_2592129F0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_258FE9000, v34, v35, "[PolarisTask]: Incorrect number of inputs or outputs", v36, 2u);
        MEMORY[0x259CA2F70](v36, -1, -1);
      }
    }

    v24 = MEMORY[0x277D3E720];
    goto LABEL_25;
  }

  v25 = sub_259212500();
  v26 = sub_2592129F0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_258FE9000, v25, v26, "[PolarisTask]: Incorrect number of inputs or outputs", v27, 2u);
    MEMORY[0x259CA2F70](v27, -1, -1);
  }

  v28 = *MEMORY[0x277D3E720];
  v29 = sub_259212310();
  v30 = *(*(v29 - 8) + 104);
  v31 = v29;
  v32 = v46;

  return v30(v32, v28, v31);
}

uint64_t sub_2591DDC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_259212320();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_259212300();
  (*(*(v5 - 8) + 8))(a1, v5);
  type metadata accessor for PolarisTask();

  return swift_allocObject();
}

uint64_t sub_2591DDCF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8B0, &qword_259225930);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8B8, &qword_259225938) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2592256B0;
  v4 = (v3 + v2 + v0[14]);
  sub_2592123A0();
  v5 = type metadata accessor for PolarisTask();
  result = sub_2591DDE88(&qword_27F99B8C0);
  *v4 = v5;
  v4[1] = result;
  qword_27F99BCF0 = v3;
  return result;
}

uint64_t sub_2591DDE00()
{
  if (qword_27F99B7A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2591DDE88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PolarisTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2591DDEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_259225940;
  *(v0 + 32) = sub_2592121B0();
  *(v0 + 34) = sub_2592121B0() >> 16;
  *(v0 + 35) = sub_2592121B0() >> 24;
  *(v0 + 36) = sub_2592121B0() >> 32;
  *(v0 + 38) = sub_2592121B0() >> 48;
  *(v0 + 39) = sub_2592121B0() >> 56;
  sub_2592121B0();
  *(v0 + 40) = v1;
  sub_2592121B0();
  *(v0 + 41) = v2;
  sub_2592121B0();
  *(v0 + 42) = v3;
  sub_2592121B0();
  *(v0 + 43) = v4;
  sub_2592121B0();
  *(v0 + 44) = v5;
  sub_2592121B0();
  *(v0 + 45) = v6;
  sub_2592121B0();
  *(v0 + 46) = v7;
  sub_2592121B0();
  *(v0 + 47) = v8;
  return v0;
}

uint64_t sub_2591DDFD0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v1 == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 == 3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v1 < 5)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v1 == 5)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v1 < 7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v1 == 7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v1 < 9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v1 == 9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v1 < 0xB)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v1 == 11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v1 < 0xD)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v1 == 13)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v1 < 0xF)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v1 != 15)
  {
    v2 = *(result + 32);
    v3 = *(result + 33);
    v4 = *(result + 34);
    v5 = *(result + 35);
    v6 = *(result + 36);
    v7 = *(result + 37);
    v8 = *(result + 38);
    v9 = *(result + 39);
    v16 = *(result + 46);
    v15 = *(result + 45);
    v14 = *(result + 44);
    v13 = *(result + 43);
    v12 = *(result + 42);
    v11 = *(result + 41);
    v10 = *(result + 40);
    return sub_2592121A0();
  }

LABEL_33:
  __break(1u);
  return result;
}

void *sub_2591DE164(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    sub_2591DE400();
    v3 = sub_2592123D0();
    v7 = *(v3 + 48);
    v8 = *(v3 + 52);
    swift_allocObject();
    v5 = sub_2592123B0();
    v6 = &off_286A5F958;
    goto LABEL_5;
  }

  v3 = sub_259212400();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2592123F0();
  if (v5)
  {
    v6 = &off_286A5F948;
LABEL_5:
    v1[5] = v3;
    v1[6] = v6;
    v1[2] = v5;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v9 = sub_259212520();
    __swift_project_value_buffer(v9, qword_281456B60);
    v10 = sub_259212500();
    v11 = sub_259212A00();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_258FE9000, v10, v11, "[PolarisEndpointWrapper]: PolarisExclaveSupportWrapper init successfully", v12, 2u);
      MEMORY[0x259CA2F70](v12, -1, -1);
    }

    return v2;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v14 = sub_259212520();
  __swift_project_value_buffer(v14, qword_281456B60);
  v15 = sub_259212500();
  v16 = sub_2592129F0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_258FE9000, v15, v16, "[PolarisEndpointWrapper]: PolarisExclaveSupportWrapper initialization failed", v17, 2u);
    MEMORY[0x259CA2F70](v17, -1, -1);
  }

  type metadata accessor for PolarisEndpointWrapper();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2591DE3A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_2591DE400()
{
  result = qword_281455860;
  if (!qword_281455860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281455860);
  }

  return result;
}

uint64_t sub_2591DE464()
{
  v1[3] = type metadata accessor for VMKDatabase();
  v1[4] = &off_286A5F918;
  v1[0] = swift_allocObject();
  result = sub_2591DC2F4(v1);
  qword_281456B78 = result;
  return result;
}

double sub_2591DE4C0@<D0>(uint64_t a1@<X8>)
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v3 = sub_259212520();
  __swift_project_value_buffer(v3, qword_281456B60);
  v4 = sub_259212500();
  v5 = sub_259212A00();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v4, v5, "[OpenDomainExclaveMock]: Calling getPoseEstimation", v6, 2u);
    MEMORY[0x259CA2F70](v6, -1, -1);
  }

  sub_2591DC8C8(v9);
  if (!v1)
  {
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v10;
  }

  return result;
}

uint64_t sub_2591DE5DC()
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v0 = sub_259212520();
  __swift_project_value_buffer(v0, qword_281456B60);
  v1 = sub_259212500();
  v2 = sub_259212A00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258FE9000, v1, v2, "[OpenDomainExclaveMock]: Calling load", v3, 2u);
    MEMORY[0x259CA2F70](v3, -1, -1);
  }

  return sub_2591DC9D8();
}

uint64_t sub_2591DE6D0(uint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(uint64_t))
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v7 = sub_259212520();
  __swift_project_value_buffer(v7, qword_281456B60);
  v8 = sub_259212500();
  v9 = sub_259212A00();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_258FE9000, v8, v9, a3, v10, 2u);
    MEMORY[0x259CA2F70](v10, -1, -1);
  }

  return a4(a1);
}

double sub_2591DE7DC@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  result = sub_2591DE4C0(v7);
  if (!v2)
  {
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t *sub_2591DE8B4()
{
  v0 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v16[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DEC18();
  if (qword_281455868 != -1)
  {
    swift_once();
  }

  v4 = qword_281456B78;
  v17 = v0;
  v18 = &off_286A5F9E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  sub_2591DEAA4(v3, boxed_opaque_existential_1);
  type metadata accessor for MicroLocationExclaveComponentHandler();
  v6 = swift_allocObject();
  v7 = v17;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v6[5] = v0;
  v6[6] = &off_286A5F9E0;
  v13 = __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  sub_2591DEB58(v11, v13);

  sub_2591DEBBC(v3);
  v6[7] = v4;
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v6;
}

uint64_t sub_2591DEAA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_2591DEB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591DEBBC(uint64_t a1)
{
  v2 = type metadata accessor for OpenDomainExclaveStorageMock(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2591DEC18()
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_259212050();

  v0 = [objc_opt_self() defaultManager];
  v1 = sub_259212060();
  v9[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_259212040();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_2591DED54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2592120B0();
  v13 = *(v4 - 8);
  (*(v13 + 16))(a2, a1, v4);
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  sub_2592120A0();
  v7 = sub_259212830();

  v8 = [v6 fileExistsAtPath_];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 defaultManager];
    sub_2592120A0();
    v10 = sub_259212830();

    [v9 createFileAtPath:v10 contents:0 attributes:0];
  }

  v11 = *(v13 + 8);

  return v11(a1, v4);
}

uint64_t sub_2591DEEE4(uint64_t a1, unint64_t a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2592120B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  sub_259212070();
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  sub_2592120A0();
  v11 = sub_259212830();

  v12 = [v10 fileExistsAtPath_];

  if (!v12)
  {
LABEL_9:
    result = (*(v5 + 8))(v8, v4);
    goto LABEL_10;
  }

  v13 = [v9 defaultManager];
  v14 = sub_259212060();
  v32[0] = 0;
  v15 = [v13 removeItemAtURL:v14 error:v32];

  if (!v15)
  {
    v19 = v32[0];
    v20 = sub_259212040();

    swift_willThrow();
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v21 = sub_259212520();
    __swift_project_value_buffer(v21, qword_281456B60);

    v22 = v20;
    v23 = sub_259212500();
    v24 = sub_2592129F0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v25 = 136315394;
      *(v25 + 4) = sub_2591E0FD4(a1, a2, v32);
      *(v25 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_259212C40();
      v28 = sub_2591E0FD4(v26, v27, v32);

      *(v25 + 14) = v28;
      _os_log_impl(&dword_258FE9000, v23, v24, "[OpenDomainExclaveStorageMock]: Error removing file %s: %s", v25, 0x16u);
      v29 = v31;
      swift_arrayDestroy();
      MEMORY[0x259CA2F70](v29, -1, -1);
      MEMORY[0x259CA2F70](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v16 = *(v5 + 8);
  v17 = v32[0];
  result = v16(v8, v4);
LABEL_10:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592120B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_2592120B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2591DF3EC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2591DF424()
{
  result = sub_2592120B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id ULConclaveManager.init(conclave:)(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v5 = sub_259212520();
  __swift_project_value_buffer(v5, qword_281456B60);
  v6 = sub_259212500();
  v7 = sub_259212A00();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258FE9000, v6, v7, "[ULConclaveManager]: Starting conclave", v8, 2u);
    MEMORY[0x259CA2F70](v8, -1, -1);
  }

  if ((a1 & 1) == 0)
  {
    v12 = sub_259212500();
    v13 = sub_259212A00();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_258FE9000, v12, v13, "[ULConclaveManager]: Starting open domain exclave mock", v14, 2u);
      MEMORY[0x259CA2F70](v14, -1, -1);
    }

    v15 = sub_2591DE8B4();
    v16 = &v1[OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service];
    v16[3] = &type metadata for OpenDomainExclaveMock;
    v16[4] = &off_286A5F9B8;
    *v16 = v15;
    goto LABEL_12;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  exclaveCapability = MobileGestalt_get_exclaveCapability();

  if (exclaveCapability)
  {
    v24 = type metadata accessor for ImageService.Service();
    v25 = &off_286A5F968;
    sub_2591E1B98();
    sub_2592127F0();
    sub_2591DC580(&v23, &v1[OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service]);
LABEL_12:
    v17 = sub_259212500();
    v18 = sub_259212A00();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_258FE9000, v17, v18, "[ULConclaveManager]: Conclave started successfully", v19, 2u);
      MEMORY[0x259CA2F70](v19, -1, -1);
    }

    v26.receiver = v2;
    v26.super_class = ObjectType;
    return objc_msgSendSuper2(&v26, sel_init);
  }

  v20 = sub_259212500();
  v21 = sub_259212A00();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_258FE9000, v20, v21, "[ULConclaveManager]: Exclaves are not support on current platform", v22, 2u);
    MEMORY[0x259CA2F70](v22, -1, -1);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall ULConclaveManager.load()()
{
  v1 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 24);
  v2 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service), v1);
  (*(v2 + 16))(v1, v2);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v3 = sub_259212520();
  __swift_project_value_buffer(v3, qword_281456B60);
  oslog = sub_259212500();
  v4 = sub_259212A00();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, oslog, v4, "[ULConclaveManager]: load succeeded", v5, 2u);
    MEMORY[0x259CA2F70](v5, -1, -1);
  }
}

Swift::Void __swiftcall ULConclaveManager.save(identifiers:)(Swift::OpaquePointer identifiers)
{
  v30 = sub_2592121D0();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DC598(v1 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service, v32);
  v7 = v33;
  v8 = v34;
  v9 = __swift_project_boxed_opaque_existential_1(v32, v33);
  v10 = *(identifiers._rawValue + 2);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25[1] = v9;
    v26 = v8;
    v27 = v7;
    v31 = MEMORY[0x277D84F90];
    sub_2591E14C8(0, v10, 0);
    v11 = v31;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = identifiers._rawValue + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v28 = *(v12 + 56);
    v29 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v30;
      v17 = v12;
      v29(v6, v14, v30);
      v18 = sub_2591DDEC8();
      (*v15)(v6, v16);
      v31 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2591E14C8((v19 > 1), v20 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v20 + 1;
      *(v11 + 8 * v20 + 32) = v18;
      v14 += v28;
      --v10;
      v12 = v17;
    }

    while (v10);
    v8 = v26;
    v7 = v27;
  }

  (*(v8 + 24))(v11, v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v21 = sub_259212520();
  __swift_project_value_buffer(v21, qword_281456B60);
  v22 = sub_259212500();
  v23 = sub_259212A00();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_258FE9000, v22, v23, "[ULConclaveManager]: save succeeded", v24, 2u);
    MEMORY[0x259CA2F70](v24, -1, -1);
  }
}

Swift::Void __swiftcall ULConclaveManager.drop(identifiers:)(Swift::OpaquePointer identifiers)
{
  v30 = sub_2592121D0();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2591DC598(v1 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service, v32);
  v7 = v33;
  v8 = v34;
  v9 = __swift_project_boxed_opaque_existential_1(v32, v33);
  v10 = *(identifiers._rawValue + 2);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25[1] = v9;
    v26 = v8;
    v27 = v7;
    v31 = MEMORY[0x277D84F90];
    sub_2591E14C8(0, v10, 0);
    v11 = v31;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = identifiers._rawValue + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v28 = *(v12 + 56);
    v29 = v13;
    v15 = (v12 - 8);
    do
    {
      v16 = v30;
      v17 = v12;
      v29(v6, v14, v30);
      v18 = sub_2591DDEC8();
      (*v15)(v6, v16);
      v31 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2591E14C8((v19 > 1), v20 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v20 + 1;
      *(v11 + 8 * v20 + 32) = v18;
      v14 += v28;
      --v10;
      v12 = v17;
    }

    while (v10);
    v8 = v26;
    v7 = v27;
  }

  (*(v8 + 32))(v11, v7, v8);

  __swift_destroy_boxed_opaque_existential_1(v32);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v21 = sub_259212520();
  __swift_project_value_buffer(v21, qword_281456B60);
  v22 = sub_259212500();
  v23 = sub_259212A00();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_258FE9000, v22, v23, "[ULConclaveManager]: drop succeeded", v24, 2u);
    MEMORY[0x259CA2F70](v24, -1, -1);
  }
}

uint64_t sub_2591E03A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_2592121D0();
  v6 = sub_2592128C0();
  v7 = a1;
  a4(v6);
}

id ULConclaveManager.getPoseEstimation()()
{
  v1 = type metadata accessor for VisualMappingFrame();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RelativePoseEstimate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 24);
  v14 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19MicroLocationDaemon17ULConclaveManager_service), v13);
  v15 = 0;
  (*(v14 + 8))(&v55, v13, v14);
  v50 = v1;
  v51 = v4;
  v24 = v58;
  v61 = v58;
  v25 = *(v58 + 16);
  if (v25)
  {
    v52 = v5;
    v26 = 0;
    v27 = (v58 + 40);
    v28 = MEMORY[0x277D84F90];
    while (v26 < *(v24 + 16))
    {
      v29 = *(v27 - 1);
      v15 = *v27;
      sub_2591DD4E4(*v27, v59);
      if ((v60 & 1) == 0)
      {

        sub_2591DDFD0(v29);

        v30 = &v10[*(v52 + 20)];
        v31 = v59[1];
        *v30 = v59[0];
        *(v30 + 1) = v31;
        v32 = v59[3];
        *(v30 + 2) = v59[2];
        *(v30 + 3) = v32;
        sub_2591E1C40(v10, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_2591E0D04(0, v28[2] + 1, 1, v28, &qword_27F99B938, &qword_259225B60, type metadata accessor for RelativePoseEstimate);
        }

        v15 = v28[2];
        v33 = v28[3];
        if (v15 >= v33 >> 1)
        {
          v28 = sub_2591E0D04(v33 > 1, v15 + 1, 1, v28, &qword_27F99B938, &qword_259225B60, type metadata accessor for RelativePoseEstimate);
        }

        v28[2] = v15 + 1;
        sub_2591E1C40(v12, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      }

      ++v26;
      v27 += 2;
      if (v25 == v26)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    swift_once();
    v16 = sub_259212520();
    __swift_project_value_buffer(v16, qword_281456B60);
    v17 = v15;
    v18 = sub_259212500();
    v19 = sub_2592129F0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_258FE9000, v18, v19, "[ULConclaveManager]: getPoseEstimation failed with error: %@", v20, 0xCu);
      sub_2591DC520(v21, &qword_27F99B8F0, &qword_259225AE0);
      MEMORY[0x259CA2F70](v21, -1, -1);
      MEMORY[0x259CA2F70](v20, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
LABEL_17:
    v35 = v51;
    sub_2591DDFD0(v55);

    sub_2591DC520(&v61, &qword_27F99B8F8, &qword_259225AE8);
    v36 = v57;
    v37 = v50;
    *(v35 + *(v50 + 20)) = v56;
    *(v35 + *(v37 + 24)) = v36;
    v38 = type metadata accessor for PoseEstimation(0);
    v39 = objc_allocWithZone(v38);
    sub_2591E1CA4(v35, &v39[OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_queryFrame]);
    *&v39[OBJC_IVAR____TtC19MicroLocationDaemon14PoseEstimation_relativePoses] = v28;
    v54.receiver = v39;
    v54.super_class = v38;
    v40 = objc_msgSendSuper2(&v54, sel_init);
    sub_2591E1D08(v35);
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v41 = sub_259212520();
    __swift_project_value_buffer(v41, qword_281456B60);
    v34 = v40;
    v42 = sub_259212500();
    v43 = sub_259212A00();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = v45;
      *v44 = 136315138;
      v46 = PoseEstimation.debugDescription.getter();
      v48 = sub_2591E0FD4(v46, v47, &v53);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_258FE9000, v42, v43, "[ULConclaveManager]: getPoseEstimation returned with %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x259CA2F70](v45, -1, -1);
      MEMORY[0x259CA2F70](v44, -1, -1);
    }
  }

  return v34;
}

id ULConclaveManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULConclaveManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2591E0B80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B908, &qword_259225B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B910, &qword_259225B30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2591E0D04(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2591E0EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
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

uint64_t sub_2591E0FD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2591E10A0(v11, 0, 0, 1, a1, a2);
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
    sub_2591E1DB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2591E10A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2591E11AC(a5, a6);
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
    result = sub_259212B20();
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

uint64_t sub_2591E11AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2591E11F8(a1, a2);
  sub_2591E1328(&unk_286A5F450);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2591E11F8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2591E1414(v5, 0);
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

  result = sub_259212B20();
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
        v10 = sub_259212890();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2591E1414(v10, 0);
        result = sub_259212AF0();
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

uint64_t sub_2591E1328(uint64_t result)
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

  result = sub_2591E0EE0(result, v12, 1, v3);
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

void *sub_2591E1414(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2591E1488(char *a1, int64_t a2, char a3)
{
  result = sub_2591E1548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E14A8(char *a1, int64_t a2, char a3)
{
  result = sub_2591E163C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E14C8(char *a1, int64_t a2, char a3)
{
  result = sub_2591E1748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E14E8(char *a1, int64_t a2, char a3)
{
  result = sub_2591E1854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2591E1508(void *a1, int64_t a2, char a3)
{
  result = sub_2591E1960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E1528(char *a1, int64_t a2, char a3)
{
  result = sub_2591E1A94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2591E1548(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B8C8, &qword_259225B40);
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

char *sub_2591E163C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B888, &qword_259225700);
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

char *sub_2591E1748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B940, &qword_259225B68);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2591E1854(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B930, &qword_259225B58);
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

void *sub_2591E1960(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B908, &qword_259225B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B910, &qword_259225B30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2591E1A94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
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

unint64_t sub_2591E1B98()
{
  result = qword_27F99B8E8;
  if (!qword_27F99B8E8)
  {
    type metadata accessor for ImageService.Service();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B8E8);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x259CA2F70);
  }

  return result;
}

uint64_t sub_2591E1C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelativePoseEstimate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591E1CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualMappingFrame();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591E1D08(uint64_t a1)
{
  v2 = type metadata accessor for VisualMappingFrame();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591E1DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2591E1E14()
{
  v0 = sub_259212520();
  __swift_allocate_value_buffer(v0, qword_27F99B948);
  __swift_project_value_buffer(v0, qword_27F99B948);
  return sub_259212510();
}

uint64_t sub_2591E1ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_259212840();
  v10 = v9;
  v11 = sub_259212840();
  v13 = v12;
  v14 = sub_259212840();
  v16 = v15;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  LOBYTE(a7) = a7(v8, v10, v11, v13, v14, v16, ObjCClassMetadata);

  return a7 & 1;
}

uint64_t sub_2591E1FB0(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = sub_259211FA0();
        if (v18)
        {
          v19 = sub_259211FC0();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        sub_2591FCB1C(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_1(v30);
        result = sub_259212650();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_259211FA0();
        if (!v18)
        {
LABEL_25:
          v24 = sub_259211FB0();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = sub_259211FC0();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_2591DD3CC(a1, a2);
  v7 = sub_2592125A0();
  sub_2591E5670(&qword_27F99B970, MEMORY[0x28220A330]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51D8], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2591E22C0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = a4;
  v9 = sub_2592120F0();
  v11 = v10;

  v12 = sub_259212840();
  v14 = v13;

  v15 = a5(v9, v11, v12, v14);
  v17 = v16;

  sub_2591DD3CC(v9, v11);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v19 = sub_2592120E0();
    sub_2591E55B4(v15, v17);
    v18 = v19;
  }

  return v18;
}

id ULEncryption.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULEncryption.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULEncryption();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ULEncryption.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULEncryption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s19MicroLocationDaemon12ULEncryptionC11encryptFile_15destinationPath8keyLabel13keychainClassSbSS_S2SyXlXptFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277D83298])
  {
    v4 = MEMORY[0x277D83280] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277D832A0] == 0 || MEMORY[0x277D83288] == 0 || MEMORY[0x277D83290] == 0 || MEMORY[0x277D83268] == 0 || MEMORY[0x277D83240] == 0 || MEMORY[0x277D83248] == 0 || MEMORY[0x277D83250] == 0 || MEMORY[0x277D83270] == 0 || MEMORY[0x277D83258] == 0 || MEMORY[0x277D83260] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v15 = sub_259212520();
    __swift_project_value_buffer(v15, qword_27F99B948);
    v16 = sub_259212500();
    v17 = sub_2592129D0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_41;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "encryptFile: AppleArchive Library not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!MEMORY[0x277CC5310] || !MEMORY[0x277CC5328] || !MEMORY[0x277CC5338] || !MEMORY[0x277CC5340])
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v47 = sub_259212520();
    __swift_project_value_buffer(v47, qword_27F99B948);
    v16 = sub_259212500();
    v17 = sub_2592129D0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_41;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "encryptFile: CryptoKit Framework not loaded. method aborted.";
LABEL_40:
    _os_log_impl(&dword_258FE9000, v16, v17, v19, v18, 2u);
    MEMORY[0x259CA2F70](v18, -1, -1);
LABEL_41:

    return 0;
  }

  v25 = sub_259212530();
  v91 = v82;
  v88 = *(v25 - 8);
  v89 = v25;
  v26 = *(v88 + 64);
  MEMORY[0x28223BE20](v25);

  v92 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x259CA0D00](a1, a2);
  v90 = v82;
  MEMORY[0x28223BE20](v27);
  v28 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  MEMORY[0x259CA0D00](a3, a4);
  v29 = sub_259212290();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  sub_259212280();
  v31 = sub_259212250();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  sub_259212240();
  v33 = sub_2592122B0();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v93 = sub_2592122A0();
  v36 = sub_2592125D0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = v82 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41 - 8);
  v44 = v82 - v43;
  v45 = sub_259212830();
  v46 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey_];

  if (v46)
  {
    sub_259212A50();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v96[0] = v94;
  v96[1] = v95;
  v48 = v92;
  if (!*(&v95 + 1))
  {
    sub_2591DC520(v96, &qword_27F99B968, &unk_259225BA0);
    (*(v37 + 56))(v44, 1, 1, v36);
    goto LABEL_58;
  }

  v49 = swift_dynamicCast();
  (*(v37 + 56))(v44, v49 ^ 1u, 1, v36);
  if ((*(v37 + 48))(v44, 1, v36) == 1)
  {
LABEL_58:
    sub_2591DC520(v44, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v50 = sub_259212520();
    __swift_project_value_buffer(v50, qword_27F99B948);
    v51 = sub_259212500();
    v52 = sub_2592129F0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_258FE9000, v51, v52, "Failed to retrieve symmetric key for file encryption", v53, 2u);
      MEMORY[0x259CA2F70](v53, -1, -1);
    }

    v54 = v89;
    v55 = *(v88 + 8);
    v55(v28, v89);
    v55(v48, v54);
    return 0;
  }

  (*(v37 + 32))(v40, v44, v36);
  sub_259212260();
  sub_259212230();
  v56 = sub_259212200();
  if (!v56)
  {
    v65 = v40;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v66 = sub_259212520();
    __swift_project_value_buffer(v66, qword_27F99B948);
    v67 = sub_259212500();
    v68 = sub_2592129F0();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_258FE9000, v67, v68, "Failed to create input file stream for encryption", v69, 2u);
      MEMORY[0x259CA2F70](v69, -1, -1);
    }

    goto LABEL_77;
  }

  v57 = v56;
  v58 = sub_259212200();
  if (!v58)
  {
    v65 = v40;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v70 = sub_259212520();
    __swift_project_value_buffer(v70, qword_27F99B948);
    v71 = sub_259212500();
    v72 = sub_2592129F0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_258FE9000, v71, v72, "Failed to create output file stream for encryption", v73, 2u);
      MEMORY[0x259CA2F70](v73, -1, -1);
    }

LABEL_77:

    (*(v37 + 8))(v65, v36);
LABEL_78:
    v74 = v89;
    v75 = *(v88 + 8);
    v75(v28, v89);
    v75(v48, v74);
    return 0;
  }

  v86 = v57;
  v87 = v40;
  v59 = v58;
  v60 = sub_2592122C0();
  v84 = v82;
  v83 = *(v60 - 8);
  v61 = *(v83 + 64);
  MEMORY[0x28223BE20](v60);
  v63 = v82 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v96[0] = MEMORY[0x277D84F90];
  v85 = sub_2591E5670(&qword_281455B00, MEMORY[0x282239B30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B988, &qword_259225BB8);
  sub_2591E56B8();
  sub_259212A60();
  v85 = v59;
  v64 = sub_2592121F0();
  (*(v83 + 8))(v63, v60);
  if (!v64)
  {
    v48 = v92;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v76 = sub_259212520();
    __swift_project_value_buffer(v76, qword_27F99B948);
    v77 = sub_259212500();
    v78 = sub_2592129F0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_258FE9000, v77, v78, "Failed to create encryption stream", v79, 2u);
      MEMORY[0x259CA2F70](v79, -1, -1);
    }

    (*(v37 + 8))(v87, v36);
    goto LABEL_78;
  }

  sub_259212220();
  v82[1] = v82;
  sub_259212210();
  sub_259212210();
  sub_259212210();

  (*(v37 + 8))(v87, v36);
  v80 = v89;
  v81 = *(v88 + 8);
  v81(v28, v89);
  v81(v92, v80);
  return 1;
}

uint64_t _s19MicroLocationDaemon12ULEncryptionC11decryptFile_15destinationPath8keyLabel13keychainClassSbSS_S2SyXlXptFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277D83298])
  {
    v4 = MEMORY[0x277D83280] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277D832A0] == 0 || MEMORY[0x277D83288] == 0 || MEMORY[0x277D83290] == 0 || MEMORY[0x277D83268] == 0 || MEMORY[0x277D83240] == 0 || MEMORY[0x277D83248] == 0 || MEMORY[0x277D83250] == 0 || MEMORY[0x277D83270] == 0 || MEMORY[0x277D83258] == 0 || MEMORY[0x277D83260] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v15 = sub_259212520();
    __swift_project_value_buffer(v15, qword_27F99B948);
    v16 = sub_259212500();
    v17 = sub_2592129D0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_41;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "decryptFile: AppleArchive Framework not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!MEMORY[0x277CC5310] || !MEMORY[0x277CC5328] || !MEMORY[0x277CC5338] || !MEMORY[0x277CC5340])
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v39 = sub_259212520();
    __swift_project_value_buffer(v39, qword_27F99B948);
    v16 = sub_259212500();
    v17 = sub_2592129D0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_41;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "decryptFile: CryptoKit Framework not loaded. method aborted.";
LABEL_40:
    _os_log_impl(&dword_258FE9000, v16, v17, v19, v18, 2u);
    MEMORY[0x259CA2F70](v18, -1, -1);
LABEL_41:

    return 0;
  }

  v25 = sub_259212530();
  v94 = v84;
  v91 = *(v25 - 8);
  v92 = v25;
  v26 = *(v91 + 64);
  MEMORY[0x28223BE20](v25);

  v95 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x259CA0D00](a1, a2);
  v93 = v84;
  MEMORY[0x28223BE20](v27);
  v28 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  MEMORY[0x259CA0D00](a3, a4);
  v29 = sub_2592125D0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v90 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33 - 8);
  v36 = v84 - v35;
  v37 = sub_259212830();
  v38 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey_];

  if (v38)
  {
    sub_259212A50();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98[0] = v96;
  v98[1] = v97;
  v40 = v95;
  if (!*(&v97 + 1))
  {
    sub_2591DC520(v98, &qword_27F99B968, &unk_259225BA0);
    (*(v30 + 56))(v36, 1, 1, v29);
    goto LABEL_60;
  }

  v41 = swift_dynamicCast();
  (*(v30 + 56))(v36, v41 ^ 1u, 1, v29);
  if ((*(v30 + 48))(v36, 1, v29) == 1)
  {
LABEL_60:
    sub_2591DC520(v36, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v49 = sub_259212520();
    __swift_project_value_buffer(v49, qword_27F99B948);
    v50 = sub_259212500();
    v51 = sub_2592129F0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_258FE9000, v50, v51, "Failed to retrieve symmetric key for file decryption", v52, 2u);
      MEMORY[0x259CA2F70](v52, -1, -1);
    }

    v53 = v92;
    v54 = *(v91 + 8);
    v54(v28, v92);
    v54(v40, v53);
    return 0;
  }

  (*(v30 + 32))(v90, v36, v29);
  sub_259212230();
  v42 = sub_259212200();
  if (!v42)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v55 = sub_259212520();
    __swift_project_value_buffer(v55, qword_27F99B948);
    v56 = sub_259212500();
    v57 = sub_2592129F0();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_258FE9000, v56, v57, "Failed to open source archive file for decryption", v58, 2u);
      MEMORY[0x259CA2F70](v58, -1, -1);
    }

    goto LABEL_74;
  }

  v43 = v42;
  v44 = sub_2592122B0();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();

  v47 = sub_259212270();
  if (!v47)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v59 = sub_259212520();
    __swift_project_value_buffer(v59, qword_27F99B948);
    v56 = sub_259212500();
    v60 = sub_2592129F0();
    if (os_log_type_enabled(v56, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_258FE9000, v56, v60, "Failed to create archive context for decryption", v61, 2u);
      MEMORY[0x259CA2F70](v61, -1, -1);
    }

LABEL_74:

LABEL_75:
    (*(v30 + 8))(v90, v29);
    v62 = v92;
    v63 = *(v91 + 8);
    v63(v28, v92);
    v63(v40, v62);
    return 0;
  }

  v48 = v47;
  sub_259212260();
  v89 = v48;
  v64 = sub_2592122C0();
  v86 = v84;
  v85 = *(v64 - 8);
  v65 = *(v85 + 64);
  MEMORY[0x28223BE20](v64);
  v87 = v43;
  v67 = v84 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v98[0] = MEMORY[0x277D84F90];
  v84[1] = sub_2591E5670(&qword_281455B00, MEMORY[0x282239B30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B988, &qword_259225BB8);
  sub_2591E56B8();
  sub_259212A60();
  v68 = sub_2592121E0();
  (*(v85 + 8))(v67, v64);
  if (!v68)
  {
    v40 = v95;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v71 = sub_259212520();
    __swift_project_value_buffer(v71, qword_27F99B948);
    v72 = sub_259212500();
    v73 = sub_2592129F0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_258FE9000, v72, v73, "Failed to create decryption stream", v74, 2u);
      MEMORY[0x259CA2F70](v74, -1, -1);
    }

    goto LABEL_75;
  }

  v69 = sub_259212200();
  v70 = v95;
  if (!v69)
  {
    v75 = v95;
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v76 = sub_259212520();
    __swift_project_value_buffer(v76, qword_27F99B948);
    v77 = sub_259212500();
    v78 = sub_2592129F0();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_258FE9000, v77, v78, "Failed to create output file stream for decryption", v79, 2u);
      MEMORY[0x259CA2F70](v79, -1, -1);
    }

    (*(v30 + 8))(v90, v29);
    v80 = v92;
    v81 = *(v91 + 8);
    v81(v28, v92);
    v81(v75, v80);
    return 0;
  }

  v86 = v69;
  sub_259212220();
  v88 = v84;
  sub_259212210();
  sub_259212210();
  sub_259212210();

  (*(v30 + 8))(v90, v29);
  v82 = v92;
  v83 = *(v91 + 8);
  v83(v28, v92);
  v83(v70, v82);
  return 1;
}

uint64_t _s19MicroLocationDaemon12ULEncryptionC11encryptData_8keyLabel10Foundation0F0VSgAH_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0 || MEMORY[0x277CC5420] == 0 || MEMORY[0x277CC5428] == 0 || MEMORY[0x277CC5430] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v10 = sub_259212520();
    __swift_project_value_buffer(v10, qword_27F99B948);
    v11 = sub_259212500();
    v12 = sub_2592129D0();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "encryptData: CryptoKit Framework not loaded. method aborted.";
    goto LABEL_25;
  }

  v20 = sub_2592125D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v45 - v27;
  type metadata accessor for ULKeychain();
  static ULKeychain.retrieveSymmetricKey(_:)(a3, a4, v50);
  if (!v50[3])
  {
    sub_2591DC520(v50, &qword_27F99B968, &unk_259225BA0);
    (*(v21 + 56))(v28, 1, 1, v20);
    goto LABEL_31;
  }

  v29 = swift_dynamicCast();
  (*(v21 + 56))(v28, v29 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v28, 1, v20) == 1)
  {
LABEL_31:
    sub_2591DC520(v28, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v43 = sub_259212520();
    __swift_project_value_buffer(v43, qword_27F99B948);
    v11 = sub_259212500();
    v12 = sub_2592129F0();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Failed to retrieve symmetric key for data encryption";
LABEL_25:
    _os_log_impl(&dword_258FE9000, v11, v12, v14, v13, 2u);
    MEMORY[0x259CA2F70](v13, -1, -1);
LABEL_26:

    return 0;
  }

  v49 = &v45;
  (*(v21 + 32))(v24, v28, v20);
  v30 = sub_259212630();
  v48 = &v45;
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212620();
  v46 = sub_259212660();
  v47 = &v45;
  v45 = *(v46 - 8);
  v35 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v37 = &v45 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[0] = a1;
  v50[1] = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B978, &qword_259225BB0);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v45 - v41;
  (*(v31 + 16))(&v45 - v41, v34, v30, v40);
  (*(v31 + 56))(v42, 0, 1, v30);
  sub_2591E561C();
  sub_259212610();
  sub_2591DC520(v42, &qword_27F99B978, &qword_259225BB0);
  v44 = sub_259212640();
  (*(v45 + 8))(v37, v46);
  (*(v31 + 8))(v34, v30);
  (*(v21 + 8))(v24, v20);
  return v44;
}

uint64_t _s19MicroLocationDaemon12ULEncryptionC11decryptData_8keyLabel10Foundation0F0VSgAH_SStFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0 || MEMORY[0x277CC5420] == 0 || MEMORY[0x277CC5428] == 0 || MEMORY[0x277CC5430] == 0)
  {
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v10 = sub_259212520();
    __swift_project_value_buffer(v10, qword_27F99B948);
    v11 = sub_259212500();
    v12 = sub_2592129D0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_258FE9000, v11, v12, "decryptData: CryptoKit Framework not loaded. method aborted.", v13, 2u);
      MEMORY[0x259CA2F70](v13, -1, -1);
    }

    return 0;
  }

  else
  {
    v19 = sub_259212660();
    v44 = &v40;
    v40 = *(v19 - 8);
    v41 = v19;
    v20 = *(v40 + 64);
    MEMORY[0x28223BE20](v19);
    v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = sub_2592125D0();
    v43 = &v40;
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v22);
    v42 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
    v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v26 - 8);
    v29 = &v40 - v28;
    type metadata accessor for ULKeychain();
    static ULKeychain.retrieveSymmetricKey(_:)(a3, a4, v45);
    if (v46)
    {
      v30 = swift_dynamicCast();
      (*(v23 + 56))(v29, v30 ^ 1u, 1, v22);
      if ((*(v23 + 48))(v29, 1, v22) != 1)
      {
        v31 = v42;
        v32 = (*(v23 + 32))(v42, v29, v22);
        MEMORY[0x28223BE20](v32);
        sub_2591E55C8(a1, a2);
        sub_2591E1FB0(a1, a2);
        v38 = v40;
        v37 = v41;
        (*(v40 + 32))(v21, &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
        v39 = sub_259212600();
        (*(v23 + 8))(v31, v22);
        (*(v38 + 8))(v21, v37);
        return v39;
      }
    }

    else
    {
      sub_2591DC520(v45, &qword_27F99B968, &unk_259225BA0);
      (*(v23 + 56))(v29, 1, 1, v22);
    }

    sub_2591DC520(v29, &qword_27F99B960, &qword_259225BE0);
    if (qword_27F99B7A8 != -1)
    {
      swift_once();
    }

    v33 = sub_259212520();
    __swift_project_value_buffer(v33, qword_27F99B948);
    v34 = sub_259212500();
    v35 = sub_2592129F0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_258FE9000, v34, v35, "Failed to retrieve symmetric key for data decryption", v36, 2u);
      MEMORY[0x259CA2F70](v36, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_2591E55B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2591DD3CC(a1, a2);
  }

  return a1;
}

uint64_t sub_2591E55C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2591E561C()
{
  result = qword_27F99B980;
  if (!qword_27F99B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B980);
  }

  return result;
}

uint64_t sub_2591E5670(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2591E56B8()
{
  result = qword_281455648;
  if (!qword_281455648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F99B988, &qword_259225BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281455648);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void static ULKeychain.retrieveSymmetricKey(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v15 = sub_259212520();
    __swift_project_value_buffer(v15, qword_27F99B990);
    v16 = sub_259212500();
    v17 = sub_2592129D0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258FE9000, v16, v17, "retrieveSymmetricKey: CryptoKit Framework not loaded. method aborted.", v18, 2u);
      MEMORY[0x259CA2F70](v18, -1, -1);
    }

    goto LABEL_18;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v10 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20[-v11];
  static ULKeychain.retrieveSymmetricKeyWithStatus(label:status:)(a1, a2, &v21, &v20[-v11]);
  v13 = sub_2592125D0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2591E72E4(v12);
LABEL_18:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  *(a3 + 24) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  (*(v14 + 32))(boxed_opaque_existential_1, v12, v13);
}

uint64_t sub_2591E5998()
{
  v0 = sub_259212520();
  __swift_allocate_value_buffer(v0, qword_27F99B990);
  __swift_project_value_buffer(v0, qword_27F99B990);
  return sub_259212510();
}

void static ULKeychain.getSymmetricKeyOrCreateNew(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (MEMORY[0x277CC5310])
  {
    v4 = MEMORY[0x277CC5328] == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || MEMORY[0x277CC5338] == 0 || MEMORY[0x277CC5340] == 0)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v21 = sub_259212520();
    __swift_project_value_buffer(v21, qword_27F99B990);
    v22 = sub_259212500();
    v23 = sub_2592129D0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_258FE9000, v22, v23, "getSymmetricKeyOrCreateNew: CryptoKit Framework not loaded. method aborted.", v24, 2u);
      MEMORY[0x259CA2F70](v24, -1, -1);
    }

    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  v60 = a3;
  v64 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v59 = &v52;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v52 - v11;
  v57 = a1;
  v58 = a2;
  v13 = static ULKeychain.retrieveSymmetricKeyWithStatus(label:status:)(a1, a2, &v64, &v52 - v11);
  MEMORY[0x28223BE20](v13);
  sub_2591E90F4(&v52 - v11, &v52 - v11, &qword_27F99B960, &qword_259225BE0);
  v14 = sub_2592125D0();
  v15 = *(v14 - 8);
  v16 = v15 + 48;
  v61 = *(v15 + 48);
  v17 = v61(&v52 - v11, 1, v14);
  v18 = sub_2591E72E4(&v52 - v11);
  if (v17 == 1 && v64 == -25300)
  {
    MEMORY[0x28223BE20](v18);
    v25 = sub_2592125F0();
    v26 = *(*(v25 - 8) + 64);
    MEMORY[0x28223BE20](v25 - 8);
    sub_2592125E0();
    sub_2592125C0();
    sub_2591E72E4(&v52 - v11);
    v56 = v15;
    (*(v15 + 56))(&v52 - v11, 0, 1, v14);
    v27 = sub_2591E734C(&v52 - v11, &v52 - v11);
    MEMORY[0x28223BE20](v27);
    sub_2591E90F4(&v52 - v11, &v52 - v11, &qword_27F99B960, &qword_259225BE0);
    v28 = v61;
    v29 = v61(&v52 - v11, 1, v14);
    v30 = sub_2591E72E4(&v52 - v11);
    if (v29 == 1)
    {
LABEL_24:
      if (qword_27F99B7B0 != -1)
      {
        swift_once();
      }

      v31 = sub_259212520();
      __swift_project_value_buffer(v31, qword_27F99B990);
      v32 = sub_259212500();
      v33 = sub_2592129F0();
      v34 = os_log_type_enabled(v32, v33);
      v35 = v60;
      if (v34)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_258FE9000, v32, v33, "Failed to generate a symmetric key", v36, 2u);
        MEMORY[0x259CA2F70](v36, -1, -1);
      }

      sub_2591E72E4(v12);
      *v35 = 0u;
      v35[1] = 0u;
      return;
    }

    v53 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v30);
    v55 = v10;
    sub_2591E90F4(v12, &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F99B960, &qword_259225BE0);
    v54 = v16;
    if (v28(&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v14) != 1)
    {
      sub_2591E73BC();
      sub_259211FE0();
      v40 = v62;
      v39 = v63;
      v41 = *(v56 + 8);
      v41(&v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      v42 = v39 >> 62;
      if ((v39 >> 62) > 1)
      {
        if (v42 != 2)
        {
          sub_2591DD3CC(v40, v39);
          goto LABEL_24;
        }

        v45 = &v52 - v11;
        v47 = *(v40 + 16);
        v46 = *(v40 + 24);
        v43 = sub_2591DD3CC(v40, v39);
        v48 = v46 - v47;
        if (!__OFSUB__(v46, v47))
        {
          v12 = v45;
          if (!v48)
          {
            goto LABEL_24;
          }

LABEL_41:
          MEMORY[0x28223BE20](v43);
          v50 = &v52 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_2591E90F4(v12, v50, &qword_27F99B960, &qword_259225BE0);
          if (v28(v50, 1, v14) != 1)
          {
            v51 = _s19MicroLocationDaemon10ULKeychainC17storeSymmetricKey09symmetricG05labelSb9CryptoKit0fG0V_SStFZ_0(v50, v57, v58);
            v18 = (v41)(v50, v14);
            v15 = v56;
            v11 = v53;
            if (!v51)
            {
              sub_2591E72E4(v12);
              goto LABEL_17;
            }

            goto LABEL_15;
          }

LABEL_48:
          __break(1u);
          return;
        }

        __break(1u);
      }

      else
      {
        if (!v42)
        {
          v43 = sub_2591DD3CC(v40, v39);
          v44 = BYTE6(v39);
          goto LABEL_40;
        }

        v43 = sub_2591DD3CC(v40, v39);
        LODWORD(v44) = HIDWORD(v40) - v40;
        if (!__OFSUB__(HIDWORD(v40), v40))
        {
          v44 = v44;
LABEL_40:
          if (!v44)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_15:
  MEMORY[0x28223BE20](v18);
  sub_2591E90F4(v12, &v52 - v11, &qword_27F99B960, &qword_259225BE0);
  if (v61(&v52 - v11, 1, v14) == 1)
  {
    sub_2591E72E4(v12);
    sub_2591E72E4(&v52 - v11);
LABEL_17:
    v20 = v60;
    *v60 = 0u;
    v20[1] = 0u;
    return;
  }

  v37 = v60;
  *(v60 + 3) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(v15 + 32))(boxed_opaque_existential_1, &v52 - v11, v14);
  sub_2591E72E4(v12);
}

uint64_t static ULKeychain.retrieveSymmetricKeyWithStatus(label:status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, OSStatus *a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v61[1] = a2;
  v62 = a1;
  v61[0] = a4;
  v67[35] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9B8, &qword_259225BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_259225BC0;
  v6 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v63 = inited + 32;
  v7 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 40) = v7;
  v8 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v9;
  *(inited + 72) = v8;
  v10 = MEMORY[0x277D839B0];
  v11 = MEMORY[0x277CDBED8];
  *(inited + 80) = 1;
  v12 = *v11;
  *(inited + 104) = v10;
  *(inited + 112) = v12;
  v13 = *MEMORY[0x277CDBF10];
  *(inited + 120) = *MEMORY[0x277CDBF10];
  v14 = *MEMORY[0x277CDC140];
  *(inited + 144) = v9;
  *(inited + 152) = v14;
  *(inited + 160) = 1;
  v15 = *MEMORY[0x277CDBF28];
  *(inited + 184) = v10;
  *(inited + 192) = v15;
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x277CDC558];
  *(inited + 200) = v62;
  *(inited + 208) = a2;
  v18 = *v17;
  *(inited + 224) = v16;
  *(inited + 232) = v18;
  *(inited + 264) = v10;
  *(inited + 240) = 1;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;

  v26 = v18;
  sub_2591E84C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C0, &unk_259225BF0);
  swift_arrayDestroy();
  v67[0] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v61 - v29;
  v31 = sub_2592125D0();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 1, 1, v31);
  sub_2591E89B4();
  sub_2591E8FEC(&qword_281455610, sub_2591E89B4);
  v33 = sub_259212800();

  v34 = SecItemCopyMatching(v33, v67);

  v35 = v67[0];
  *v64 = v34;
  if (v34 == -25300)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v38 = sub_259212520();
    __swift_project_value_buffer(v38, qword_27F99B990);
    v39 = sub_259212500();
    v40 = sub_2592129F0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_258FE9000, v39, v40, "key not found in keychain", v41, 2u);
      MEMORY[0x259CA2F70](v41, -1, -1);
    }

    goto LABEL_24;
  }

  if (v34)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v42 = sub_259212520();
    __swift_project_value_buffer(v42, qword_27F99B990);
    v43 = sub_259212500();
    v44 = sub_2592129F0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v66 = v46;
      *v45 = 67109378;
      *(v45 + 4) = v34;
      *(v45 + 8) = 2080;
      v47 = SecCopyErrorMessageString(v34, 0);
      if (v47)
      {
        v48 = v47;
        v49 = sub_259212840();
        v51 = v50;

        v52 = v49;
      }

      else
      {
        LODWORD(v65) = v34;
        v52 = sub_259212BE0();
        v51 = v57;
      }

      v58 = sub_2591E0FD4(v52, v51, &v66);

      *(v45 + 10) = v58;
      _os_log_impl(&dword_258FE9000, v43, v44, "Failed to retrieve key from keychain, error %d, %s", v45, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x259CA2F70](v46, -1, -1);
      MEMORY[0x259CA2F70](v45, -1, -1);
    }

    goto LABEL_24;
  }

  if (v35)
  {
    v65 = v35;
    swift_unknownObjectRetain();
    v36 = swift_dynamicCast();
    if (v36)
    {
      *&v37 = MEMORY[0x28223BE20](v36);
      v66 = v37;
      sub_2592125B0();
      sub_2591E72E4(v30);
      v32(v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v31);
      sub_2591E734C(v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
LABEL_24:
      sub_2591E734C(v30, v61[0]);
      goto LABEL_25;
    }
  }

  if (qword_27F99B7B0 != -1)
  {
    swift_once();
  }

  v53 = sub_259212520();
  __swift_project_value_buffer(v53, qword_27F99B990);
  v54 = sub_259212500();
  v55 = sub_2592129F0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_258FE9000, v54, v55, "Failed to get key from keychain. Got invalid data", v56, 2u);
    MEMORY[0x259CA2F70](v56, -1, -1);
  }

  sub_2591E72E4(v30);
  v32(v61[0], 1, 1, v31);
LABEL_25:
  result = swift_unknownObjectRelease();
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2591E6874(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v5 = sub_259212840();
  v7 = v6;
  swift_getObjCClassMetadata();
  a4(v17, v5, v7);

  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    v12 = MEMORY[0x28223BE20](v9);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v14, v12);
    v15 = sub_259212BF0();
    (*(v10 + 8))(v14, v8);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id ULKeychain.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2591E6A9C(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, *MEMORY[0x277CBED00]);
  if (v5)
  {
    v6 = v5;
    v7 = sub_2592120F0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

uint64_t static ULKeychainMock.retrieveSymmetricKey(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x79656B5F6F6ELL && a2 == 0xE600000000000000;
  if (v4 || (v6 = result, result = sub_259212C00(), (result & 1) != 0))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v7 = sub_2592125D0();
    v29 = &v29;
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = &v29 - v10;
    if (qword_27F99B7B8 != -1)
    {
      swift_once();
    }

    v12 = swift_beginAccess();
    v13 = off_27F99B9A8;
    MEMORY[0x28223BE20](v12);
    v14 = &v29 - v10;
    if (v13[2] && (v15 = sub_2591E744C(v6, a2), (v16 & 1) != 0))
    {
      (*(v8 + 16))(v14, v13[7] + *(v8 + 72) * v15, v7);
      v17 = *(v8 + 32);
      v17(v11, v14, v7);
      swift_endAccess();
      *(a3 + 24) = v7;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      return (v17)(boxed_opaque_existential_1, v11, v7);
    }

    else
    {
      v19 = swift_endAccess();
      MEMORY[0x28223BE20](v19);
      v20 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = sub_2592125F0();
      v22 = *(*(v21 - 8) + 64);
      MEMORY[0x28223BE20](v21 - 8);
      sub_2592125E0();
      sub_2592125C0();
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
      v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      v25 = MEMORY[0x28223BE20](v23 - 8);
      v27 = &v29 - v26;
      (*(v8 + 16))(&v29 - v26, v20, v7, v25);
      (*(v8 + 56))(v27, 0, 1, v7);
      swift_beginAccess();

      sub_2591E6EE8(v27, v6, a2);
      swift_endAccess();
      *(a3 + 24) = v7;
      v28 = __swift_allocate_boxed_opaque_existential_1(a3);
      return (*(v8 + 32))(v28, v20, v7);
    }
  }

  return result;
}

uint64_t sub_2591E6EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2592125D0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a1, 1, v7);
  if (v9 == 1)
  {
    sub_2591E72E4(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
    v11 = *(*(v10 - 8) + 64);
    MEMORY[0x28223BE20](v10 - 8);
    v13 = &v21 - v12;
    sub_2591E790C(a2, a3, &v21 - v12);

    return sub_2591E72E4(v13);
  }

  else
  {
    v15 = *(v8 + 64);
    v16 = MEMORY[0x28223BE20](v9);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v18, a1, v7, v16);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_2591E8010(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

id sub_2591E71FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_2591E724C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2591E72A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2591E72E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591E734C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B960, &qword_259225BE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2591E73BC()
{
  result = qword_27F99B9B0;
  if (!qword_27F99B9B0)
  {
    sub_2592125D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99B9B0);
  }

  return result;
}

unint64_t sub_2591E7408(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_259212A20();

  return sub_2591E75BC(a1, v5);
}

unint64_t sub_2591E744C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_259212C90();
  sub_259212870();
  v6 = sub_259212CD0();

  return sub_2591E7680(a1, a2, v6);
}

unint64_t sub_2591E74C4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_259212C90();
  type metadata accessor for CFString(0);
  sub_2591E8FEC(&qword_27F99B9D0, type metadata accessor for CFString);
  sub_2592122E0();
  v4 = sub_259212CD0();

  return sub_2591E7738(a1, v4);
}

unint64_t sub_2591E7578(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_259212A90();

  return sub_2591E7844(a1, v5);
}

unint64_t sub_2591E75BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2591E89B4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_259212A30();

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

unint64_t sub_2591E7680(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_259212C00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2591E7738(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_2591E8FEC(&qword_27F99B9D0, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2592122D0();

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

unint64_t sub_2591E7844(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2591E9044(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259CA1260](v9, a1);
      sub_2591E90A0(v9);
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

uint64_t sub_2591E790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2591E744C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2591E8240();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_2592125D0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_2591E7E24(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_2592125D0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2591E7A7C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9E8, &qword_259225C58);
  v44 = a2;
  result = sub_259212BC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
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
      v47 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = sub_2592125D0();
      v46 = &v42;
      v23 = *(v22 - 8);
      v24 = *(v23 + 64);
      v26 = MEMORY[0x28223BE20](v22);
      v27 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = *(v5 + 56);
      v29 = (*(v5 + 48) + 16 * v21);
      v30 = v29[1];
      v48 = *v29;
      v45 = *(v31 + 72);
      v32 = v28 + v45 * v21;
      if (v44)
      {
        (*(v23 + 32))(&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v22, v26);
      }

      else
      {
        (*(v23 + 16))(&v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v22, v26);
      }

      v33 = *(v8 + 40);
      sub_259212C90();
      sub_259212870();
      result = sub_259212CD0();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v48;
      v17[1] = v30;
      result = (*(v23 + 32))(*(v8 + 56) + v45 * v16, v27, v22);
      ++*(v8 + 16);
      v13 = v47;
      v5 = v43;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v47 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v10, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_2591E7E24(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_259212A70() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_259212C90();

      sub_259212870();
      v13 = sub_259212CD0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_2592125D0() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2591E8010(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2591E744C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2591E8240();
      goto LABEL_7;
    }

    sub_2591E7A7C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_2591E744C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_259212C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2592125D0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2591E8190(v12, a2, a3, a1, v18);
}

uint64_t sub_2591E8190(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2592125D0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_2591E8240()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9E8, &qword_259225C58);
  v2 = *v0;
  v3 = sub_259212BB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v35 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v36 = v2;
    v37 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
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
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = 16 * v19;
        v22 = (*(v36 + 48) + 16 * v19);
        v23 = *v22;
        v38 = v22[1];
        v39 = v23;
        v24 = sub_2592125D0();
        v40 = &v35;
        v25 = *(v24 - 8);
        v26 = *(v25 + 64);
        v27 = MEMORY[0x28223BE20](v24);
        v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        v31 = *(v30 + 72) * v19;
        (*(v25 + 16))(v29, *(v20 + 56) + v31, v24, v27);
        v32 = v37;
        v33 = (*(v37 + 48) + v21);
        v34 = v38;
        *v33 = v39;
        v33[1] = v34;
        (*(v25 + 32))(*(v32 + 56) + v31, v29, v24);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v35;
        v4 = v37;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_2591E84C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F0, &qword_259225C60);
    v3 = sub_259212BD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2591E90F4(v4, &v11, &qword_27F99B9C0, &unk_259225BF0);
      v5 = v11;
      result = sub_2591E7408(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2591E9034(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

BOOL _s19MicroLocationDaemon10ULKeychainC17storeSymmetricKey09symmetricG05labelSb9CryptoKit0fG0V_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9B8, &qword_259225BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_259225BC0;
  v4 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v5 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v7;
  *(inited + 72) = v6;
  v8 = MEMORY[0x277D839B0];
  *(inited + 80) = 1;
  v9 = *MEMORY[0x277CDBED8];
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  v10 = *MEMORY[0x277CDBF10];
  *(inited + 120) = *MEMORY[0x277CDBF10];
  v11 = *MEMORY[0x277CDC140];
  *(inited + 144) = v7;
  *(inited + 152) = v11;
  *(inited + 160) = 1;
  v12 = *MEMORY[0x277CDC5E8];
  *(inited + 184) = v8;
  *(inited + 192) = v12;
  sub_2592125D0();
  sub_2591E73BC();
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = MEMORY[0x277CC9318];
  sub_259211FE0();
  *(inited + 200) = *v41;
  v21 = *MEMORY[0x277CDBF28];
  *(inited + 224) = v20;
  *(inited + 232) = v21;
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = a2;
  *(inited + 248) = a3;
  v22 = v21;

  sub_2591E84C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C0, &unk_259225BF0);
  swift_arrayDestroy();
  sub_2591E89B4();
  sub_2591E8FEC(&qword_281455610, sub_2591E89B4);
  v23 = sub_259212800();

  v24 = SecItemAdd(v23, 0);

  if (v24)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v25 = sub_259212520();
    __swift_project_value_buffer(v25, qword_27F99B990);
    v26 = sub_259212500();
    v27 = sub_2592129F0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41[0] = v29;
      *v28 = 67109378;
      *(v28 + 4) = v24;
      *(v28 + 8) = 2080;
      v30 = SecCopyErrorMessageString(v24, 0);
      if (v30)
      {
        v31 = v30;
        v32 = sub_259212840();
        v34 = v33;

        v35 = v32;
      }

      else
      {
        v35 = sub_259212BE0();
        v34 = v36;
      }

      v37 = sub_2591E0FD4(v35, v34, v41);

      *(v28 + 10) = v37;
      _os_log_impl(&dword_258FE9000, v26, v27, "Failed to store key in keychain, error %d, %s", v28, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x259CA2F70](v29, -1, -1);
      MEMORY[0x259CA2F70](v28, -1, -1);
    }
  }

  return v24 == 0;
}

unint64_t sub_2591E89B4()
{
  result = qword_281455618;
  if (!qword_281455618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281455618);
  }

  return result;
}

unint64_t sub_2591E8A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9D8, &qword_259225C48);
    v3 = sub_259212BD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2591E90F4(v4, v13, &qword_27F99B9E0, &qword_259225C50);
      result = sub_2591E7578(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2591E9034(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2591E8B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C8, &qword_259225C40);
    v3 = sub_259212BD0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2591E74C4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

BOOL _s19MicroLocationDaemon10ULKeychainC9removeKeyySbSSFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9B8, &qword_259225BE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_259225BD0;
  v4 = *MEMORY[0x277CDC228];
  *(inited + 32) = *MEMORY[0x277CDC228];
  v5 = *MEMORY[0x277CDC250];
  type metadata accessor for CFString(0);
  *(inited + 40) = v5;
  v6 = *MEMORY[0x277CDC5C8];
  *(inited + 64) = v7;
  *(inited + 72) = v6;
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277CDBED8];
  *(inited + 80) = 1;
  v10 = *v9;
  *(inited + 104) = v8;
  *(inited + 112) = v10;
  v11 = *MEMORY[0x277CDBEE0];
  *(inited + 120) = *MEMORY[0x277CDBEE0];
  v12 = *MEMORY[0x277CDC140];
  *(inited + 144) = v7;
  *(inited + 152) = v12;
  *(inited + 160) = 1;
  v13 = *MEMORY[0x277CDBF28];
  *(inited + 184) = v8;
  *(inited + 192) = v13;
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 200) = a1;
  *(inited + 208) = a2;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;

  sub_2591E84C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9C0, &unk_259225BF0);
  swift_arrayDestroy();
  sub_2591E89B4();
  sub_2591E8FEC(&qword_281455610, sub_2591E89B4);
  v21 = sub_259212800();

  v22 = SecItemDelete(v21);

  if (v22)
  {
    if (qword_27F99B7B0 != -1)
    {
      swift_once();
    }

    v23 = sub_259212520();
    __swift_project_value_buffer(v23, qword_27F99B990);
    v24 = sub_259212500();
    v25 = sub_2592129F0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 67109378;
      *(v26 + 4) = v22;
      *(v26 + 8) = 2080;
      v28 = SecCopyErrorMessageString(v22, 0);
      if (v28)
      {
        v29 = v28;
        v30 = sub_259212840();
        v32 = v31;

        v33 = v30;
      }

      else
      {
        v33 = sub_259212BE0();
        v32 = v34;
      }

      v35 = sub_2591E0FD4(v33, v32, &v38);

      *(v26 + 10) = v35;
      _os_log_impl(&dword_258FE9000, v24, v25, "Failed to remove key from keychain, error %d, %s", v26, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x259CA2F70](v27, -1, -1);
      MEMORY[0x259CA2F70](v26, -1, -1);
    }
  }

  return v22 == 0;
}

uint64_t sub_2591E8FEC(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_2591E9034(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2591E90F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id AudioOdometryProvider.__allocating_init(queue:)(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v3[19] = 0;
  v3[20] = 0;
  v3[21] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CC1C20]) init];
  v3[17] = sub_2591E928C();
  v3[18] = &off_286A5FC80;
  v3[14] = v4;
  v3[22] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AudioOdometryProvider.init(queue:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[19] = 0;
  v1[20] = 0;
  v1[21] = 0;
  v3 = [objc_allocWithZone(MEMORY[0x277CC1C20]) init];
  v1[17] = sub_2591E928C();
  v1[18] = &off_286A5FC80;
  v1[14] = v3;
  v1[22] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudioOdometryProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_2591E928C()
{
  result = qword_281455620;
  if (!qword_281455620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281455620);
  }

  return result;
}

uint64_t sub_2591E9390(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 16) = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA00, &qword_259225C80);
  *(v4 + 56) = v6;
  v7 = *(v6 - 8);
  *(v4 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA08, &qword_259225C88);
  *(v4 + 80) = v9;
  v10 = *(v9 - 8);
  *(v4 + 88) = v10;
  *(v4 + 96) = *(v10 + 64);
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591E9518, v3, 0);
}

uint64_t sub_2591E9518()
{
  v1 = v0[5];
  if (v1[20])
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);
    v3 = sub_259212500();
    v4 = sub_2592129F0();
    v5 = 3;
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v6 = "Started audio odometry twice";
LABEL_16:
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_258FE9000, v3, v4, v6, v41, 2u);
    MEMORY[0x259CA2F70](v41, -1, -1);
LABEL_17:
    v43 = v0[13];
    v42 = v0[14];
    v44 = v0[9];
    v45 = v0[6];

    sub_2591E9A78();
    swift_allocError();
    *v46 = v5;
    swift_willThrow();

    v39 = v0[1];
    goto LABEL_18;
  }

  v7 = v1[17];
  v8 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v7);
  if (((*(v8 + 16))(v7, v8) & 1) == 0)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v40 = sub_259212520();
    __swift_project_value_buffer(v40, qword_281456B60);
    v3 = sub_259212500();
    v4 = sub_2592129F0();
    v5 = 0;
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_17;
    }

    v6 = "Audio odometry unavailable";
    goto LABEL_16;
  }

  v9 = v0[14];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[2];
  v16 = v1[20];
  v17 = *(v14 + 168);
  v1[20] = v0[3];
  *(v14 + 168) = v13;

  sub_2591EBD18(v16);
  v18 = swift_task_alloc();
  *(v18 + 16) = v14;
  *(v18 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA18, &qword_259225C90);
  (*(v11 + 104))(v10, *MEMORY[0x277D85778], v12);
  sub_259212960();

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v19 = sub_259212520();
  __swift_project_value_buffer(v19, qword_281456B60);
  v20 = sub_259212500();
  v21 = sub_2592129D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[2];
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v22;
    _os_log_impl(&dword_258FE9000, v20, v21, "Started audio odometry with update interval: %f", v23, 0xCu);
    MEMORY[0x259CA2F70](v23, -1, -1);
  }

  v24 = v0[13];
  v25 = v0[14];
  v27 = v0[11];
  v26 = v0[12];
  v28 = v0[10];
  v30 = v0[5];
  v29 = v0[6];
  v48 = v29;
  v49 = v0[9];

  v31 = sub_259212920();
  (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
  (*(v27 + 16))(v24, v25, v28);
  v33 = sub_2591ECA4C(&qword_27F99BA20, v32, type metadata accessor for AudioOdometryProvider);
  v34 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v35 = (v26 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = v33;
  (*(v27 + 32))(v36 + v34, v24, v28);
  *(v36 + v35) = v30;
  swift_retain_n();
  v37 = sub_2591EAC40(0, 0, v48, &unk_259225CA0, v36);
  (*(v27 + 8))(v25, v28);
  v38 = *(v30 + 152);
  *(v30 + 152) = v37;

  v39 = v0[1];
LABEL_18:

  return v39();
}

unint64_t sub_2591E9A78()
{
  result = qword_27F99BA10;
  if (!qword_27F99BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA10);
  }

  return result;
}

uint64_t sub_2591E9ACC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-1] - v9;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2591DC598(a2 + 112, v20);
  v12 = v21;
  v13 = v22;
  __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  (*(v13 + 32))(v12, v13, a3);
  v14 = v21;
  v15 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v16, v10, v6);
  (*(v15 + 8))(v11, sub_2591ECAF8, v17, v14, v15);

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_2591E9CF4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA80, &qword_259225F10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v79 - v9;
  if (a2)
  {
    sub_2591E9A78();
    v11 = swift_allocError();
    *v12 = 1;
    v13 = a2;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v14 = sub_259212520();
    __swift_project_value_buffer(v14, qword_281456B60);
    v15 = a2;
    v16 = sub_259212500();
    v17 = sub_2592129F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *&v83 = v10;
      *&v82 = a3;
      v19 = v7;
      v20 = v6;
      v21 = v18;
      v22 = swift_slowAlloc();
      v87[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = sub_259212C40();
      v25 = sub_2591E0FD4(v23, v24, v87);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_258FE9000, v16, v17, "Internal error in odometry update: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x259CA2F70](v22, -1, -1);
      v26 = v21;
      v6 = v20;
      v7 = v19;
      v10 = v83;
      MEMORY[0x259CA2F70](v26, -1, -1);
    }

    else
    {
    }

LABEL_26:
    v65 = 0;
    goto LABEL_27;
  }

  sub_2591E90F4(a1, &v85, &qword_27F99BA88, &qword_259225F18);
  if (!v86)
  {
    sub_2591DC520(&v85, &qword_27F99BA88, &qword_259225F18);
    sub_2591E9A78();
    v11 = swift_allocError();
    *v74 = 1;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v75 = sub_259212520();
    __swift_project_value_buffer(v75, qword_281456B60);
    v76 = sub_259212500();
    v77 = sub_2592129F0();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_258FE9000, v76, v77, "No data received in odometry update", v78, 2u);
      MEMORY[0x259CA2F70](v78, -1, -1);
    }

    goto LABEL_26;
  }

  sub_2591DC580(&v85, v87);
  v27 = v88;
  v28 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  v29 = (*(v28 + 8))(v27, v28);
  if ((v29 & 0x100000000) == 0)
  {
    v30 = v29;
    v31 = v88;
    v32 = v89;
    __swift_project_boxed_opaque_existential_1(v87, v88);
    v33 = (*(v32 + 16))(v31, v32);
    if ((v33 & 0x100000000) == 0)
    {
      v34 = v33;
      v35 = v88;
      v36 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      *&v83 = (*(v36 + 24))(v35, v36);
      if ((v83 & 0x100000000) == 0)
      {
        v37 = v88;
        v38 = v89;
        __swift_project_boxed_opaque_existential_1(v87, v88);
        v39 = (*(v38 + 56))(v37, v38);
        if ((v39 & 0x100000000) == 0)
        {
          v40 = v39;
          v41 = v88;
          v42 = v89;
          __swift_project_boxed_opaque_existential_1(v87, v88);
          *&v82 = (*(v42 + 32))(v41, v42);
          if ((v82 & 0x100000000) == 0)
          {
            v43 = v6;
            v44 = v88;
            v45 = v89;
            __swift_project_boxed_opaque_existential_1(v87, v88);
            v46 = *(v45 + 40);
            v47 = v45;
            v6 = v43;
            v81 = v46(v44, v47);
            if ((v81 & 0x100000000) == 0)
            {
              v48 = v88;
              v49 = v89;
              __swift_project_boxed_opaque_existential_1(v87, v88);
              v50 = *(v49 + 48);
              v51 = v49;
              v6 = v43;
              v52 = v50(v48, v51);
              if ((v52 & 0x100000000) == 0)
              {
                v54 = v52;
                LODWORD(v53) = v30;
                v80 = v53;
                LODWORD(v53) = v34;
                v79 = v53;
                LODWORD(v53) = v83;
                v83 = v53;
                v55 = objc_opt_self();
                v56 = v88;
                v57 = v89;
                __swift_project_boxed_opaque_existential_1(v87, v88);
                (*(v57 + 64))(v56, v57);
                v58 = [v55 dateFromMachContinuous_];
                [v58 timeIntervalSinceReferenceDate];
                v60 = v59;

                *&v61 = __PAIR64__(v79, v80);
                *(&v61 + 1) = v83;
                v83 = v61;
                *&v62 = __PAIR64__(v81, v82);
                *(&v62 + 1) = __PAIR64__(v40, v54);
                v82 = v62;
                v63 = type metadata accessor for VisualMappingOdometry();
                v64 = objc_allocWithZone(v63);
                *&v64[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_timestamp] = v60;
                *&v64[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_deltaPosition] = v83;
                *&v64[OBJC_IVAR____TtC19MicroLocationDaemon21VisualMappingOdometry_attitudeQuaternion] = v82;
                v84.receiver = v64;
                v84.super_class = v63;
                v65 = objc_msgSendSuper2(&v84, sel_init);
                __swift_destroy_boxed_opaque_existential_1(v87);
                v11 = 0;
LABEL_27:
                v87[0] = v65;
                v87[1] = v11;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08);
                sub_259212930();
                return (*(v7 + 8))(v10, v6);
              }
            }
          }
        }
      }
    }
  }

  sub_2591E9A78();
  v66 = swift_allocError();
  *v67 = 2;
  v68 = v66;
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v69 = sub_259212520();
  __swift_project_value_buffer(v69, qword_281456B60);
  v70 = sub_259212500();
  v71 = sub_2592129F0();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_258FE9000, v70, v71, "Inconsistent data types in odometry input", v72, 2u);
    MEMORY[0x259CA2F70](v72, -1, -1);
  }

  *&v85 = 0;
  *(&v85 + 1) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08);
  sub_259212930();

  (*(v7 + 8))(v10, v6);
  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t sub_2591EA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v7 = sub_259212550();
  v5[13] = v7;
  v8 = *(v7 - 8);
  v5[14] = v8;
  v9 = *(v8 + 64) + 15;
  v5[15] = swift_task_alloc();
  v10 = sub_259212570();
  v5[16] = v10;
  v11 = *(v10 - 8);
  v5[17] = v11;
  v12 = *(v11 + 64) + 15;
  v5[18] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA58, &qword_259225EF8);
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591EA694, a5, 0);
}

uint64_t sub_2591EA694()
{
  v1 = v0[21];
  v2 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA08, &qword_259225C88);
  sub_259212940();
  v4 = sub_2591ECA4C(&qword_27F99BA20, v3, type metadata accessor for AudioOdometryProvider);
  v0[22] = v4;
  v5 = v0[12];
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_2591EA7A8;
  v8 = v0[21];
  v9 = v0[19];

  return MEMORY[0x2822003E8](v0 + 8, v5, v4, v9);
}

uint64_t sub_2591EA7A8()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2591EA8B8, v2, 0);
}

uint64_t sub_2591EA8B8()
{
  v1 = v0[8];
  if (v1 == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
LABEL_5:
    v3 = v0[21];
    v4 = v0[18];
    v5 = v0[15];
    v6 = v0[12];
    sub_2591EB864();

    v7 = v0[1];

    return v7();
  }

  v2 = v0[9];
  if (sub_259212990())
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    goto LABEL_5;
  }

  v9 = v0[12];
  v10 = v9[20];
  if (v10)
  {
    v11 = v0[18];
    v12 = v0[15];
    v28 = v0[17];
    v29 = v0[16];
    v25 = v0[13];
    v13 = v9[21];
    v26 = v9[22];
    v27 = v0[14];
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = v13;
    v14[4] = v1;
    v14[5] = v2;
    v0[6] = sub_2591ECA04;
    v0[7] = v14;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2591F37A8;
    v0[5] = &block_descriptor;
    v24 = _Block_copy(v0 + 2);
    sub_258FF9254(v10);
    sub_258FF9254(v10);
    v23 = v1;
    v15 = v2;
    sub_259212560();
    v0[10] = MEMORY[0x277D84F90];
    sub_2591ECA4C(&qword_27F99BA60, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA68, &qword_259225F00);
    sub_2591ECA94();
    sub_259212A60();
    MEMORY[0x259CA11D0](0, v11, v12, v24);
    _Block_release(v24);

    sub_2591EBD18(v10);
    (*(v27 + 8))(v12, v25);
    (*(v28 + 8))(v11, v29);
    v16 = v0[7];
  }

  else
  {
  }

  v17 = v0[22];
  v18 = v0[12];
  v19 = *(MEMORY[0x277D85798] + 4);
  v20 = swift_task_alloc();
  v0[23] = v20;
  *v20 = v0;
  v20[1] = sub_2591EA7A8;
  v21 = v0[21];
  v22 = v0[19];

  return MEMORY[0x2822003E8](v0 + 8, v18, v17, v22);
}

uint64_t sub_2591EAC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2591E90F4(a3, v27 - v11, &qword_27F99B9F8, &qword_2592261D0);
  v13 = sub_259212920();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2591DC520(v12, &qword_27F99B9F8, &qword_2592261D0);
  }

  else
  {
    sub_259212910();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_259212900();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_259212860() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2591EB0E4(const void *a1, const void *a2, uint64_t a3, double a4)
{
  v4[2] = a3;
  v7 = _Block_copy(a1);
  v4[3] = _Block_copy(a2);
  v8 = swift_allocObject();
  v4[4] = v8;
  *(v8 + 16) = v7;

  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_2591EB1E4;

  return sub_2591E9390(sub_2591EC8F0, v8, a4);
}

uint64_t sub_2591EB1E4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_259212030();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

void sub_2591EB388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_259212030();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2591EB418()
{
  v1 = *(v0 + 16);
  if (*(v1 + 152))
  {
    v2 = *(v1 + 152);

    sub_259212980();

    v3 = *(v1 + 152);
  }

  v4 = *(v0 + 16);
  *(v1 + 152) = 0;

  v5 = v4[17];
  v6 = v4[18];
  __swift_project_boxed_opaque_existential_1(v4 + 14, v5);
  (*(v6 + 48))(v5, v6);
  sub_2591EB864();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2591EB680(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_2591EB728;

  return sub_2591EB3F8();
}

uint64_t sub_2591EB728()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

void sub_2591EB864()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  sub_2591EBD18(v1);
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v3 = sub_259212520();
  __swift_project_value_buffer(v3, qword_281456B60);
  oslog = sub_259212500();
  v4 = sub_2592129D0();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, oslog, v4, "Audio odometry marked as stopped", v5, 2u);
    MEMORY[0x259CA2F70](v5, -1, -1);
  }
}

void AudioOdometryProvider.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void AudioOdometryProvider.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t AudioOdometryProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = *(v0 + 152);

  v2 = *(v0 + 168);
  sub_2591EBD18(*(v0 + 160));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AudioOdometryProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = *(v0 + 152);

  v2 = *(v0 + 168);
  sub_2591EBD18(*(v0 + 160));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2591EBAEC()
{
  v2 = *v0;
  sub_259212C90();
  sub_259212810();
  return sub_259212CD0();
}

uint64_t sub_2591EBB50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2591EC8F8();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_2591EBB9C()
{
  v2 = *v0;
  sub_259212C90();
  sub_259212810();
  return sub_259212CD0();
}

unint64_t sub_2591EBBFC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2591EC050(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2591EBC30(uint64_t a1)
{
  v2 = sub_2591EC8F8();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2591EBC6C(uint64_t a1)
{
  v2 = sub_2591EC8F8();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2591EBCC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2591EC8F8();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t sub_2591EBD18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2591EBD34(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA08, &qword_259225C88) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2591ECB84;

  return sub_2591EA50C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2591EBE60(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2591EBF58;

  return v7(a1);
}

uint64_t sub_2591EBF58()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2591EC050(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2591EC064()
{
  result = qword_27F99BA28;
  if (!qword_27F99BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA28);
  }

  return result;
}

unint64_t sub_2591EC0BC()
{
  result = qword_27F99BA30;
  if (!qword_27F99BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA30);
  }

  return result;
}

unint64_t sub_2591EC114()
{
  result = qword_27F99BA38;
  if (!qword_27F99BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA38);
  }

  return result;
}

unint64_t sub_2591EC16C()
{
  result = qword_27F99BA40;
  if (!qword_27F99BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA40);
  }

  return result;
}

unint64_t sub_2591EC1C4()
{
  result = qword_27F99BA48;
  if (!qword_27F99BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA48);
  }

  return result;
}

uint64_t dispatch thunk of AudioOdometryProvider.start(updateInterval:handler:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xB8);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2591EC390;
  v11.n128_f64[0] = a3;

  return v13(a1, a2, v11);
}

uint64_t sub_2591EC390()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of AudioOdometryProvider.stop()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2591EC390;

  return v6();
}

uint64_t sub_2591EC5B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2591ECB84;

  return sub_2591EB680(v2, v3);
}

uint64_t sub_2591EC660()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2591ECB84;

  return sub_2591F2DCC(v2, v3, v5);
}

uint64_t sub_2591EC720()
{
  v2 = v0[2];
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2591ECB84;

  return sub_2591EB0E4(v3, v4, v5, v2);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2591EC824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2591ECB84;

  return sub_2591F2EB4(a1, v4, v5, v7);
}

unint64_t sub_2591EC8F8()
{
  result = qword_27F99BA50;
  if (!qword_27F99BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA50);
  }

  return result;
}

uint64_t sub_2591EC94C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2591ECB84;

  return sub_2591EBE60(a1, v5);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591ECA4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_2591ECA94()
{
  result = qword_27F99BA70;
  if (!qword_27F99BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F99BA68, &qword_259225F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA70);
  }

  return result;
}

uint64_t sub_2591ECAF8(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA78, &qword_259225F08) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2591E9CF4(a1, a2, v6);
}

unint64_t sub_2591ECBDC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    v7 = v6;

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 | ((v5 == 0) << 32);
}

uint64_t sub_2591ECC6C(void *a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t))
{
  if (a1)
  {
    v9 = sub_2591ECF48();
    v10 = &off_286A5FC38;
    *&v8 = a1;
    sub_2591DC580(&v8, v11);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
  }

  v6 = a1;
  a3(v11, a2);
  return sub_2591ECEE0(v11);
}

void sub_2591ECCFC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_2591ECD88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_2591ECEC0;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2591ECCFC;
  v10[3] = &block_descriptor_0;
  v9 = _Block_copy(v10);

  [v7 _startAudioAccessoryInertialOdometryUpdatesToQueue_withHandler_];
  _Block_release(v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2591ECEE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA88, &qword_259225F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2591ECF48()
{
  result = qword_27F99BA90;
  if (!qword_27F99BA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F99BA90);
  }

  return result;
}

void *sub_2591ECF94(char a1)
{
  v2 = v1;
  v2[2] = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_259212A80())
  {
    sub_2591F057C(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  v2[3] = v4;
  type metadata accessor for PolarisEndpointWrapper();
  v2[4] = 0;
  v2[5] = 0;
  swift_allocObject();
  v5 = sub_2591DE164(a1 & 1);
  if (v5)
  {
    v6 = v5;
    type metadata accessor for PolarisTaskProxyContext();
    v7 = swift_allocObject();
    *(v7 + 16) = 0x100000000000100;
    *(v7 + 24) = v6;
    v8 = v2[5];
    v2[5] = v7;

    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v9 = sub_259212520();
    __swift_project_value_buffer(v9, qword_281456B60);
    v10 = sub_259212500();
    v11 = sub_259212A00();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_258FE9000, v10, v11, "[PolarisManager]: PolarisManager init successfully", v12, 2u);
      MEMORY[0x259CA2F70](v12, -1, -1);
    }
  }

  else
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v10 = sub_259212500();
    v14 = sub_2592129F0();
    if (os_log_type_enabled(v10, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258FE9000, v10, v14, "[PolarisManager]: PolarisEndpointWrapper initialization failed", v15, 2u);
      MEMORY[0x259CA2F70](v15, -1, -1);
    }
  }

  return v2;
}

id sub_2591ED1E0(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(v1 + 32))
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v2 = sub_259212520();
    __swift_project_value_buffer(v2, qword_281456B60);
    v3 = sub_259212500();
    v4 = sub_2592129F0();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 3;
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v3, v4, "polaris setup task is already running", v5, 2u);
    v6 = 3;
LABEL_11:
    MEMORY[0x259CA2F70](v5, -1, -1);
LABEL_16:

    sub_2591EEFA0();
    swift_allocError();
    *v9 = v6;
    result = swift_willThrow();
    goto LABEL_17;
  }

  if (*(v1 + 16))
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v7 = sub_259212520();
    __swift_project_value_buffer(v7, qword_281456B60);
    v3 = sub_259212500();
    v8 = sub_2592129F0();
    if (!os_log_type_enabled(v3, v8))
    {
      v6 = 0;
      goto LABEL_16;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_258FE9000, v3, v8, "existing polaris execution session already in progress", v5, 2u);
    v6 = 0;
    goto LABEL_11;
  }

  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    v12 = objc_opt_self();
    v13 = sub_259212830();
    v14 = [v12 uniqueSessionWithName_];

    v15 = *(v1 + 16);
    *(v1 + 16) = v14;

    v26 = xmmword_259225FB0;
    v16 = *(v1 + 16);
    if (v16)
    {
      v17 = [v16 context];
      v18 = *(*(type metadata accessor for DatabaseFrame() - 8) + 64);
      v19 = sub_259212830();
      v20 = [objc_opt_self() dataStreamWithResourceKey:v19 options:&v26 length:v18];

      [v17 addResourceStream_];
      v21 = *(v1 + 16);
      if (v21)
      {
        [v21 publishContext];
        v22 = *(v1 + 16);
        if (v22)
        {
          v25[4] = sub_2591ED5D4;
          v25[5] = 0;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 1107296256;
          v25[2] = sub_2591ED774;
          v25[3] = &block_descriptor_1;
          v23 = _Block_copy(v25);
          v24 = v22;
          [v24 registerSessionCallback:v23 withContext:0];
          _Block_release(v23);
        }
      }
    }

    a1 = 0;
  }

  result = a1;
LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591ED5D4(uint64_t a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (a1)
  {
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0x800000025925EE40;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v4 = sub_259212520();
  __swift_project_value_buffer(v4, qword_281456B60);

  oslog = sub_259212500();
  v5 = sub_259212A00();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 134218242;
    *(v6 + 4) = a1;
    *(v6 + 12) = 2080;
    v8 = sub_2591E0FD4(v2, v3, &v10);

    *(v6 + 14) = v8;
    _os_log_impl(&dword_258FE9000, oslog, v5, "session callback received. eventType: %llu %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x259CA2F70](v7, -1, -1);
    MEMORY[0x259CA2F70](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2591ED774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t sub_2591ED7E4(char a1)
{
  v2 = v1;
  v48[1] = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 24);

  if (a1)
  {
    v6 = 0x676E69766F6D6572;
  }

  else
  {
    v6 = 0x697474696D6D6F63;
  }

  if (a1)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEA0000000000676ELL;
  }

  if (a1)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v10 = sub_259212520();
  __swift_project_value_buffer(v10, qword_281456B60);

  v11 = sub_259212500();
  v12 = sub_259212A00();

  v47 = v6;
  if (os_log_type_enabled(v11, v12))
  {
    v46 = v8;
    v13 = swift_slowAlloc();
    v45 = v9;
    v14 = swift_slowAlloc();
    v48[0] = v14;
    *v13 = 136315394;
    v15 = sub_2591E0FD4(v6, v7, v48);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = *(v1 + 24);
    sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
    v17 = v7;
    sub_2591F086C();

    v18 = sub_2592129C0();
    v20 = v19;

    v21 = v18;
    v7 = v17;
    v22 = sub_2591E0FD4(v21, v20, v48);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_258FE9000, v11, v12, "%s graphs: %s", v13, 0x16u);
    swift_arrayDestroy();
    v23 = v14;
    v9 = v45;
    MEMORY[0x259CA2F70](v23, -1, -1);
    v24 = v13;
    v8 = v46;
    MEMORY[0x259CA2F70](v24, -1, -1);
  }

  else
  {
  }

  v25 = *(v2 + 16);
  if (!v25)
  {

    goto LABEL_25;
  }

  if (v9)
  {
    sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
    sub_2591F086C();
    v26 = v25;
    v9 = sub_2592129B0();

    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v43 = v25;
  if (v8)
  {
LABEL_21:
    sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
    sub_2591F086C();
    v8 = sub_2592129B0();
  }

LABEL_22:
  v48[0] = 0;
  v27 = [v25 commitAddedGraphs:v9 removedGraphs:v8 option:1 error:v48];

  if (v27)
  {
    v28 = v48[0];
LABEL_25:

    goto LABEL_32;
  }

  v30 = v48[0];
  v31 = sub_259212040();

  swift_willThrow();

  v32 = v31;
  v33 = sub_259212500();
  v34 = sub_2592129F0();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v7;
    v37 = swift_slowAlloc();
    v38 = v31;
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v35 = 136315394;
    v40 = sub_2591E0FD4(v47, v36, v48);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2112;
    v41 = v38;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v42;
    *v37 = v42;
    _os_log_impl(&dword_258FE9000, v33, v34, "error %s graphs: %@", v35, 0x16u);
    sub_2591DC520(v37, &qword_27F99B8F0, &qword_259225AE0);
    MEMORY[0x259CA2F70](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x259CA2F70](v39, -1, -1);
    MEMORY[0x259CA2F70](v35, -1, -1);
  }

  else
  {
  }

  result = swift_willThrow();
LABEL_32:
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2591EDD10()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591EDDAC, 0, 0);
}

uint64_t sub_2591EDDAC()
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v1 = sub_259212520();
  __swift_project_value_buffer(v1, qword_281456B60);
  v2 = sub_259212500();
  v3 = sub_259212A00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258FE9000, v2, v3, "setup polaris graphs", v4, 2u);
    MEMORY[0x259CA2F70](v4, -1, -1);
  }

  v5 = v0[2];

  if (*(v5 + 16))
  {
    v6 = v0[2];
    v7 = v0[3];
    v8 = sub_259212920();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v6;

    v10 = sub_2591EE8AC(0, 0, v7, &unk_259226098, v9);
    v11 = *(v6 + 32);
    *(v6 + 32) = v10;

    v12 = *(v6 + 32);
    v0[4] = v12;
    if (v12)
    {
      v13 = *(MEMORY[0x277D857C8] + 4);

      v14 = swift_task_alloc();
      v0[5] = v14;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
      *v14 = v0;
      v14[1] = sub_2591EE0E4;
      v16 = MEMORY[0x277D84950];
      v17 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200430](v15, v12, v17, v15, v16);
    }

    v23 = v0[3];
    *(v0[2] + 32) = 0;
  }

  else
  {
    v18 = sub_259212500();
    v19 = sub_2592129F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258FE9000, v18, v19, "setupGraphs: No polaris execution session in progress", v20, 2u);
      MEMORY[0x259CA2F70](v20, -1, -1);
    }

    sub_2591EEFA0();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    v22 = v0[3];
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_2591EE0E4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);

    v5 = sub_2591EE280;
  }

  else
  {
    v5 = sub_2591EE200;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2591EE200()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = *(v2 + 32);
  v4 = v0[3];
  *(v0[2] + 32) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_2591EE280()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2591EE304()
{
  v1 = *(v0 + 16);
  v2 = v1[2];
  if (v2)
  {
    v3 = v2;
    sub_2591F09F8(&unk_286A5F478);
    sub_2591F0B60(&unk_286A5F498);
    v4 = sub_2592129B0();

    [v3 waitForContextFromExecutionSessionsProvidingResources_];

    v1 = *(v0 + 16);
  }

  if (v1[4])
  {
    v5 = v1[4];

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      v7 = v1[4];
      v1[4] = 0;

      sub_2591EEFA0();
      swift_allocError();
      *v8 = 2;
      swift_willThrow();
      goto LABEL_8;
    }

    v1 = *(v0 + 16);
  }

  sub_2591EE464();
  v9 = v1[3];
  v1[3] = v10;

  sub_2591ED7E4(0);
LABEL_8:
  v11 = *(v0 + 8);

  return v11();
}

void sub_2591EE464()
{
  v0 = objc_allocWithZone(MEMORY[0x277D3E698]);
  v1 = sub_259212830();
  v27 = [v0 initWithName:v1 criticality:2 frequency:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAC0, &qword_2592260A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_259225FC0;
  v3 = sub_259212830();
  v28 = objc_opt_self();
  v4 = [v28 inputWithKey:v3 type:0];

  *(v2 + 32) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_259225FC0;
  v6 = objc_allocWithZone(MEMORY[0x277D3E6E0]);
  v7 = sub_259212830();
  v8 = [v6 initWithResourceKey_];

  *(v5 + 32) = v8;
  v9 = objc_allocWithZone(MEMORY[0x277D3E6D0]);
  v10 = sub_259212830();
  sub_2591F0BB4(0, &qword_27F99BAC8, 0x277D3E6D8);
  v11 = sub_2592128B0();

  sub_2591F0BB4(0, &qword_27F99BAD0, 0x277D3E6E0);
  v12 = sub_2592128B0();

  v13 = [v9 initWithName:v10 computeAgent:0 inputs:v11 outputs:v12 function:sub_2591EEEC0 userdata:0];

  [v27 addTask_];
  v14 = objc_allocWithZone(MEMORY[0x277D3E698]);
  v15 = sub_259212830();
  v16 = [v14 initWithName:v15 criticality:2 frequency:1];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_259225FC0;
  v18 = sub_259212830();
  v19 = [v28 inputWithKey:v18 type:0];

  *(v17 + 32) = v19;
  v20 = *(v29 + 40);
  if (v20)
  {
    v21 = objc_allocWithZone(MEMORY[0x277D3E6D0]);
    v22 = sub_259212830();
    v23 = sub_2592128B0();

    v24 = sub_2592128B0();
    v25 = [v21 initWithName:v22 computeAgent:0 inputs:v23 outputs:v24 function:sub_2591EEECC userdata:v20];

    [v16 addTask_];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_259225FD0;
    *(inited + 32) = v27;
    *(inited + 40) = v16;
    sub_2591F057C(inited);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2591EE8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2591F0988(a3, v24 - v10);
  v12 = sub_259212920();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2591DC520(v11, &qword_27F99B9F8, &qword_2592261D0);
  }

  else
  {
    sub_259212910();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_259212900();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_259212860() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2591DC520(a3, &qword_27F99B9F8, &qword_2592261D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_2591EEB48()
{
  v2 = v1;
  v3 = v0;
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v4 = sub_259212520();
  __swift_project_value_buffer(v4, qword_281456B60);
  v5 = sub_259212500();
  v6 = sub_259212A00();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258FE9000, v5, v6, "teardown polaris graphs", v7, 2u);
    MEMORY[0x259CA2F70](v7, -1, -1);
  }

  if (v3[2])
  {
    v8 = v3[3];
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (v8 < 0)
      {
        v9 = v3[3];
      }

      v10 = v3[3];

      v11 = sub_259212A80();

      if (v11)
      {
LABEL_10:
        sub_2591ED7E4(1);
        if (v2)
        {
          return;
        }

        goto LABEL_20;
      }
    }

    else if (*(v8 + 16))
    {
      goto LABEL_10;
    }

    v16 = sub_259212500();
    v17 = sub_2592129F0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_258FE9000, v16, v17, "teardownGraphs: No graphs to remove. Cancelling the active session.", v18, 2u);
      MEMORY[0x259CA2F70](v18, -1, -1);
    }

    if (v3[4])
    {
      v19 = v3[4];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA0, &unk_259226B20);
      sub_259212980();
    }

LABEL_20:
    v20 = sub_259212500();
    v21 = sub_259212A00();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_258FE9000, v20, v21, "Tearing down polaris execution session", v22, 2u);
      MEMORY[0x259CA2F70](v22, -1, -1);
    }

    if (MEMORY[0x277D84F90] >> 62 && sub_259212A80())
    {
      sub_2591F057C(MEMORY[0x277D84F90]);
    }

    else
    {
      v23 = MEMORY[0x277D84FA0];
    }

    v24 = v3[3];
    v3[3] = v23;

    v25 = v3[2];
    v3[2] = 0;

    return;
  }

  v12 = sub_259212500();
  v13 = sub_2592129F0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_258FE9000, v12, v13, "teardownGraphs: No polaris execution session in progress", v14, 2u);
    MEMORY[0x259CA2F70](v14, -1, -1);
  }

  sub_2591EEFA0();
  swift_allocError();
  *v15 = 1;
  swift_willThrow();
}

uint64_t sub_2591EEED0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2591EEF44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_2591EEFA0()
{
  result = qword_27F99BA98;
  if (!qword_27F99BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA98);
  }

  return result;
}

uint64_t sub_2591EF008()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

uint64_t sub_2591EF07C()
{
  v1 = *v0;
  sub_259212C90();
  MEMORY[0x259CA1460](v1);
  return sub_259212CD0();
}

uint64_t sub_2591EF0C0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = a2 + 32;
  v5 = *(a2 + 16);
  while (2)
  {
    if (v3 == v5)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 8 * v3);
      memset(v17, 0, 512);
      v7 = *(v6 + 16);

      if (v7 >= 8)
      {
        if (v7 >= 0x7F)
        {
          v9 = 127;
        }

        else
        {
          v9 = v7;
        }

        v10 = v9 + 1;
        v11 = v10 & 7;
        if ((v10 & 7) == 0)
        {
          v11 = 8;
        }

        v8 = v10 - v11;
        v12 = (result + 48);
        v13 = v8;
        v14 = &v17[1];
        do
        {
          v15 = *v12;
          *(v14 - 1) = *(v12 - 1);
          *v14 = v15;
          v12 += 2;
          v14 += 2;
          v13 -= 8;
        }

        while (v13);
      }

      else
      {
        v8 = 0;
      }

      v16 = v3 + 1;
      do
      {
        if (v7 == v8)
        {
          __break(1u);
          goto LABEL_18;
        }

        *(v17 + v8) = *(result + 32 + 4 * v8);
        ++v8;
      }

      while (v8 != 128);

      result = memcpy((v2 + (v3++ << 9)), v17, 0x200uLL);
      if (v16 != 128)
      {
        continue;
      }
    }

    return result;
  }
}

uint64_t sub_2591EF220(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = a2 + 32;
  v4 = *(a2 + 16);
  v5 = result + 8;
  while (v4 != v2)
  {
    v6 = *(*(v3 + 8 * v2) + 16);

    if (!v6 || (v6 - 1) < 4)
    {
      __break(1u);
      break;
    }

    ++v2;
    v7 = *(result + 32);
    v8 = *(result + 36);
    v9 = *(result + 48);
    v10 = *(result + 40);

    *(v5 - 8) = v7;
    *(v5 - 4) = v8;
    *v5 = v10;
    *(v5 + 8) = v9;
    v5 += 20;
    if (v2 == 128)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2591EF2CC(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v58 = *MEMORY[0x277D85DE8];
  v3 = sub_2592121D0();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DatabaseFrame();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v50 - v10;
  resource = ps_resource_array_get_resource();
  v13 = ps_resource_get_class();
  if (v13 != 7)
  {
    v22 = v13;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v23 = sub_259212520();
    __swift_project_value_buffer(v23, qword_281456B60);
    v24 = sub_259212500();
    v25 = sub_259212A00();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v22;
      _os_log_impl(&dword_258FE9000, v24, v25, "imageConsumerTask: unexepected input resource class: %llu", v26, 0xCu);
      MEMORY[0x259CA2F70](v26, -1, -1);
    }

    goto LABEL_44;
  }

  v50[0] = v11;
  v50[1] = v2;
  ps_resource_get_timestamp_seconds();
  v15 = v14;
  v16 = MEMORY[0x259CA2960](resource, 0);
  if (qword_281455650 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v17 = sub_259212520();
    __swift_project_value_buffer(v17, qword_281456B60);
    v18 = sub_259212500();
    v19 = sub_259212A00();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v15;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v16;
      _os_log_impl(&dword_258FE9000, v18, v19, "imageConsumerTask: timestamp: %f, frameid: %llu", v20, 0x16u);
      MEMORY[0x259CA2F70](v20, -1, -1);
    }

    MEMORY[0x259CA2980](resource, 0);
    v16 = ps_resource_pixelbuffer_get_cvpixelbuffer();
    if (sub_2591F3A08(5))
    {
      v21 = sub_2591F3DB4();
      resource = v21 ? sub_2591DAEBC(v21) : 0;
      LFV2FeaturesRelease();
    }

    else
    {
      resource = 0;
    }

    if (sub_2591F3A08(6))
    {
      v27 = sub_2591F3FE8();
      v28 = v27 ? sub_2591DB16C(v27) : 0;
      LFV2FeaturesRelease();
    }

    else
    {
      v28 = 0;
    }

    if (sub_2591F3A08(6))
    {
      break;
    }

    v30 = 0;
    if (!resource)
    {
      goto LABEL_41;
    }

LABEL_29:
    if (!v28 || !v30)
    {
      goto LABEL_41;
    }

    v31 = v51;
    sub_2592121C0();
    (*(v52 + 16))(v8, v31, v53);
    *&v8[v6[5]] = 0;
    *&v8[v6[6]] = 0;
    memset(v57, 0, 512);
    v32 = *(resource + 16);

    v33 = 0;
    if (v32 >= 8)
    {
      v34 = 127;
      if (v32 < 0x7F)
      {
        v34 = v32;
      }

      v35 = v34 + 1;
      v36 = v35 & 7;
      if ((v35 & 7) == 0)
      {
        v36 = 8;
      }

      v33 = v35 - v36;
      v37 = (resource + 48);
      v38 = &v57[4];
      v39 = v33;
      do
      {
        v40 = *v37;
        *(v38 - 1) = *(v37 - 1);
        *v38 = v40;
        v37 += 2;
        v38 += 2;
        v39 -= 8;
      }

      while (v39);
    }

    while (v32 != v33)
    {
      v57[v33] = *(resource + 32 + 4 * v33);
      if (++v33 == 128)
      {
        swift_bridgeObjectRelease_n();
        memcpy(v56, v57, sizeof(v56));
        memcpy(&v8[v6[7]], v56, 0x200uLL);
        bzero(v55, 0x10000uLL);

        sub_2591EF0C0(v55, v28);
        swift_bridgeObjectRelease_n();
        memcpy(v57, v55, 0x10000uLL);
        memcpy(&v8[v6[8]], v57, 0x10000uLL);
        bzero(v54, 0xA00uLL);

        sub_2591EF220(v54, v30);
        swift_bridgeObjectRelease_n();
        (*(v52 + 8))(v51, v53);
        memcpy(v55, v54, 0xA00uLL);
        memcpy(&v8[v6[9]], v55, 0xA00uLL);
        v41 = v50[0];
        sub_2591DBFB4(v8, v50[0]);
        v42 = ps_resource_array_get_resource();
        MEMORY[0x259CA2950](v42, 0);
        bytes = ps_resource_data_get_bytes();
        memcpy(bytes, v41, v7);
        v44 = mach_absolute_time();
        MEMORY[0x259CA29C0](v42, 0, v44);
        MEMORY[0x259CA29B0](v42, 0, 1);

        sub_2591DC298(v41);
        result = 0;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
  }

  v29 = sub_2591F42E8();
  if (v29)
  {
    v30 = sub_2591DB028(v29);
  }

  else
  {
    v30 = 0;
  }

  LFV2FeaturesRelease();
  if (resource)
  {
    goto LABEL_29;
  }

LABEL_41:

  v46 = sub_259212500();
  v47 = sub_259212A00();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_258FE9000, v46, v47, "imageConsumerTask: features extraction failed", v48, 2u);
    MEMORY[0x259CA2F70](v48, -1, -1);
  }

LABEL_44:
  result = 1;
LABEL_45:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2591EFA28(uint64_t a1, uint64_t a2)
{
  v81[1] = a1;
  v84 = sub_2592124C0();
  v83 = *(v84 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v85 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAD8, &qword_2592260A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = v81 - v7;
  v105 = sub_2592124A0();
  v8 = *(v105 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v105);
  v104 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v81 - v12;
  v14 = sub_259212430();
  v94 = *(v14 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v14);
  v96 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v103 = v81 - v18;
  v90 = sub_259212460();
  v89 = *(v90 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v81[0] = v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v81 - v22;
  v93 = a2;
  count = ps_resource_array_get_count();
  if (qword_281455650 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v24 = sub_259212520();
    v25 = __swift_project_value_buffer(v24, qword_281456B60);
    v26 = sub_259212500();
    v27 = sub_259212A00();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = count;
      _os_log_impl(&dword_258FE9000, v26, v27, "descriptorsConsumerTask: received resources. count: %ld", v28, 0xCu);
      MEMORY[0x259CA2F70](v28, -1, -1);
    }

    sub_259212440();
    v29 = sub_259212450();
    v31 = v30;
    v32 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v31 = v32;
    if (isUniquelyReferenced_nonNull_native && count <= v32[3] >> 1)
    {
      v34 = count;
    }

    else
    {
      v35 = v32[2] <= count ? count : v32[2];
      v34 = count;
      v32 = sub_2591E0CB4(isUniquelyReferenced_nonNull_native, v35, 0, v32);
    }

    *v31 = v32;
    result = v29(v106, 0);
    if (v34 < 0)
    {
      break;
    }

    v86 = v25;
    if (!v34)
    {
LABEL_38:
      v72 = *(ps_task_context_get_userdata() + 24);

      v73 = v85;
      sub_2592124B0();
      v74 = v72[5];
      v75 = v72[6];
      __swift_project_boxed_opaque_existential_1(v72 + 2, v74);
      v76 = v81[0];
      (*(v75 + 8))(0x100000000000100, v23, v73, v74, v75);
      v77 = v89;
      v78 = v82;
      v79 = v90;
      (*(v89 + 32))(v82, v76, v90);
      (*(v77 + 56))(v78, 0, 1, v79);
      (*(v83 + 8))(v85, v84);
      (*(v77 + 8))(v23, v79);

      v80 = (*(v77 + 48))(v78, 1, v79) == 1;
      sub_2591DC520(v78, &qword_27F99BAD8, &qword_2592260A8);
      return v80;
    }

    v37 = 0;
    v99 = v8 + 32;
    v100 = (v8 + 16);
    v101 = v8 + 8;
    v88 = (v94 + 16);
    v87 = v94 + 32;
    v91 = v94 + 8;
    v92 = v23;
    v97 = v14;
    while (1)
    {
      v95 = v37;
      resource = ps_resource_array_get_resource();
      v14 = MEMORY[0x259CA2970]();
      sub_259212410();
      v38 = sub_259212420();
      v40 = v39;
      v41 = *v39;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v41;
      if (!v42 || v14 > v41[3] >> 1)
      {
        if (v41[2] <= v14)
        {
          v43 = v14;
        }

        else
        {
          v43 = v41[2];
        }

        v41 = sub_2591E0CDC(v42, v43, 0, v41);
      }

      *v40 = v41;
      v38(v106, 0);
      if (v14 < 0)
      {
        break;
      }

      if (v14)
      {
        v44 = 0;
        do
        {
          MEMORY[0x259CA2950](resource, v44);
          length = ps_resource_data_get_length();
          bytes = ps_resource_data_get_bytes();
          sub_259212480();
          sub_259212470();
          v47 = sub_259212490();
          v49 = v48;
          v23 = *v48;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          *v49 = v23;
          if (v50)
          {
            if (!*(v23 + 2))
            {
              goto LABEL_39;
            }
          }

          else
          {
            v23 = sub_2591DC07C(v23);
            *v49 = v23;
            if (!*(v23 + 2))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          memcpy(v23 + 32, bytes, length);
          v47(v106, 0);
          (*v100)(v104, v13, v105);
          v51 = sub_259212420();
          v53 = v52;
          v54 = *v52;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          *v53 = v54;
          if ((v55 & 1) == 0)
          {
            v54 = sub_2591E0CDC(0, v54[2] + 1, 1, v54);
            *v53 = v54;
          }

          v57 = v54[2];
          v56 = v54[3];
          if (v57 >= v56 >> 1)
          {
            v54 = sub_2591E0CDC(v56 > 1, v57 + 1, 1, v54);
            *v53 = v54;
          }

          ++v44;
          v54[2] = v57 + 1;
          v58 = v54 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v57;
          v59 = v105;
          (*(v8 + 32))(v58, v104, v105);
          v51(v106, 0);
          (*(v8 + 8))(v13, v59);
        }

        while (v14 != v44);
      }

      (*v88)(v96, v103, v97);
      v60 = v92;
      v61 = sub_259212450();
      v63 = v62;
      v64 = *v62;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *v63 = v64;
      if ((v65 & 1) == 0)
      {
        v64 = sub_2591E0CB4(0, v64[2] + 1, 1, v64);
        *v63 = v64;
      }

      v67 = v64[2];
      v66 = v64[3];
      if (v67 >= v66 >> 1)
      {
        v64 = sub_2591E0CB4(v66 > 1, v67 + 1, 1, v64);
        *v63 = v64;
      }

      v68 = v94;
      v69 = v95 + 1;
      v64[2] = v67 + 1;
      v70 = v64 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67;
      v71 = v97;
      (*(v68 + 32))(v70, v96, v97);
      v61(v106, 0);
      (*(v68 + 8))(v103, v71);
      v37 = v69;
      v23 = v60;
      if (v69 == count)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_2591F057C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_259212A80())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAA8, &unk_259226070);
      v3 = sub_259212AE0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_259212A80();
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
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x259CA12D0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_259212A20();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_259212A30();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_259212A20();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_2591F0BB4(0, &qword_27F99BAB0, 0x277D3E698);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_259212A30();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2591F086C()
{
  result = qword_27F99BAB8;
  if (!qword_27F99BAB8)
  {
    sub_2591F0BB4(255, &qword_27F99BAB0, 0x277D3E698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BAB8);
  }

  return result;
}

uint64_t sub_2591F08D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2591EC390;

  return sub_2591EE2E4(a1, v4, v5, v6);
}

uint64_t sub_2591F0988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2591F09F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BAE0, &unk_2592260B0);
    v3 = sub_259212AE0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_259212C90();

      sub_259212870();
      result = sub_259212CD0();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_259212C00();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2591F0BB4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for PolarisManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PolarisManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2591F0D84()
{
  result = qword_27F99BAE8;
  if (!qword_27F99BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BAE8);
  }

  return result;
}

uint64_t ULPeripheralControl.__allocating_init(queue:delegate:darwinNotificationHelper:conclaveManager:fullWakeConclaveModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v24 = a3;
  v25 = a4;
  v9 = sub_259212580();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *v13 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = a1;
  v16 = sub_259212590();
  result = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    *&v14[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue] = v15;
    swift_unknownObjectWeakAssign();
    v18 = type metadata accessor for PolarisManager();
    swift_allocObject();
    v19 = v15;
    v20 = sub_2591ECF94(a5 & 1);
    v21 = &v14[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager];
    *(v21 + 3) = v18;
    *(v21 + 4) = &off_286A5FD08;
    *v21 = v20;
    v22 = v25;
    *&v14[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper] = v24;
    *&v14[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager] = v22;
    v26.receiver = v14;
    v26.super_class = v6;
    v23 = objc_msgSendSuper2(&v26, sel_init);

    swift_unknownObjectRelease();
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ULPeripheralControl.init(queue:delegate:darwinNotificationHelper:conclaveManager:fullWakeConclaveModeEnabled:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_2591F3258(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v6;
}

uint64_t ULPeripheralControl.setDependencies(relativePoseHandler:)()
{
  v1 = sub_259212580();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_259212590();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return swift_unknownObjectWeakAssign();
  }

  __break(1u);
  return result;
}

uint64_t ULPeripheralControl.setupPolarisGraphs()()
{
  v1[15] = v0;
  v2 = sub_259212550();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = sub_259212570();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2591F1528, 0, 0);
}

uint64_t sub_2591F1528()
{
  v1 = (*(v0 + 120) + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager);
  v2 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2591ED1E0(0);
  v3 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_2591F1648;

  return sub_2591EDD10();
}

uint64_t sub_2591F1648()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 168);
    v6 = *(v2 + 144);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2591F17A0, 0, 0);
  }
}

uint64_t sub_2591F17A0()
{
  v1 = v0[21];
  v2 = v0[18];
  v19 = v0[19];
  v3 = v0[16];
  v17 = v0[17];
  v18 = v0[20];
  v4 = v0[15];
  v16 = *&v4[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_2591F344C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2591F37A8;
  v0[5] = &block_descriptor_2;
  v6 = _Block_copy(v0 + 2);

  sub_259212560();
  v0[14] = MEMORY[0x277D84F90];
  sub_2591F346C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BA68, &qword_259225F00);
  sub_2591ECA94();
  sub_259212A60();
  MEMORY[0x259CA11D0](0, v1, v2, v6);
  _Block_release(v6);
  (*(v17 + 8))(v2, v3);
  (*(v18 + 8))(v1, v19);
  v7 = v0[7];

  v8 = *&v4[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper];
  v9 = sub_259212830();
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v0[12] = sub_2591F34C4;
  v0[13] = v10;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2591F37A8;
  v0[11] = &block_descriptor_7;
  v11 = _Block_copy(v0 + 8);
  v12 = v0[13];
  v13 = v4;

  [v8 addObserverForNotificationName:v9 handler:v11];
  _Block_release(v11);

  v14 = v0[1];

  return v14();
}

void sub_2591F1A80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 onPeripheralAvailable];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2591F1C74(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2591F1D1C;

  return ULPeripheralControl.setupPolarisGraphs()();
}

uint64_t sub_2591F1D1C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_259212030();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ULPeripheralControl.teardownPolarisGraphs()()
{
  v2 = v0;
  v3 = sub_259212580();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D85200], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_259212590();
  (*(v4 + 8))(v8, v3);
  if (v9)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong onPeripheralUnavailable];
      swift_unknownObjectRelease();
    }

    v12 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager), *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager + 24));
    sub_2591EEB48();
    if (!v1)
    {
      v13 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper);
      v14 = sub_259212830();
      [v13 removeObserverForNotificationName_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2591F20D0()
{
  if (qword_281455650 != -1)
  {
    swift_once();
  }

  v0 = sub_259212520();
  __swift_project_value_buffer(v0, qword_281456B60);
  oslog = sub_259212500();
  v1 = sub_259212A00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_2591E0FD4(0xD000000000000023, 0x800000025925E7E0, &v5);
    _os_log_impl(&dword_258FE9000, oslog, v1, "got notification: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x259CA2F70](v3, -1, -1);
    MEMORY[0x259CA2F70](v2, -1, -1);
  }
}

uint64_t sub_2591F2218(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t ULPeripheralControl.loadKeyFrames(for:)()
{
  v1 = sub_259212580();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_259212590();
  result = (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ULPeripheralControl.unloadKeyFrames()()
{
  v1 = sub_259212580();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_259212590();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }
}

uint64_t ULPeripheralControl.update(databaseUpdateRequest:)()
{
  v1 = sub_259212580();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x277D85200], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_259212590();
  result = (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

id ULPeripheralControl.getPoseEstimation()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager) getPoseEstimation];

  return v1;
}

void sub_2591F2BE0(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager);
  sub_2592121D0();
  v5 = sub_2592128B0();
  [v4 *a2];
}

id ULPeripheralControl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ULPeripheralControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2591F2DCC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2591ECB84;

  return v7();
}

uint64_t sub_2591F2EB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2591EC390;

  return v8();
}

uint64_t sub_2591F2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2591F0988(a3, v25 - v11);
  v13 = sub_259212920();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2591F35C8(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_259212910();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_259212900();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_259212860() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_2591F35C8(a3);

    return v23;
  }

LABEL_8:
  sub_2591F35C8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_2591F3258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v23 = a3;
  v24 = a4;
  ObjectType = swift_getObjectType();
  v10 = sub_259212580();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *v14 = a1;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v15 = a1;
  v16 = sub_259212590();
  result = (*(v11 + 8))(v14, v10);
  if (v16)
  {
    *&v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue] = v15;
    swift_unknownObjectWeakAssign();
    v18 = type metadata accessor for PolarisManager();
    swift_allocObject();
    v19 = v15;
    v20 = sub_2591ECF94(a5 & 1);
    v21 = &v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_polarisManager];
    *(v21 + 3) = v18;
    *(v21 + 4) = &off_286A5FD08;
    *v21 = v20;
    v22 = v24;
    *&v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper] = v23;
    *&v6[OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager] = v22;
    v25.receiver = v6;
    v25.super_class = ObjectType;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2591F346C()
{
  result = qword_27F99BA60;
  if (!qword_27F99BA60)
  {
    sub_259212550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F99BA60);
  }

  return result;
}

uint64_t sub_2591F351C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2591EC390;

  return sub_2591F1C74(v2, v3);
}

uint64_t sub_2591F35C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2591F3630(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2591ECB84;

  return sub_2591EBE60(a1, v5);
}

uint64_t sub_2591F36E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2591EC390;

  return sub_2591EBE60(a1, v5);
}

void *sub_2591F37B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_2591F383C(int a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD00000000000001FLL;
      }

      if (a1 == 3)
      {
        return 0xD000000000000013;
      }

      return 0xD000000000000024;
    }

    if (!a1)
    {
      return 0x73736563637553;
    }

    if (a1 == 1)
    {
      return 0x206E776F6E6B6E55;
    }

    return 16718;
  }

  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return 0xD00000000000002DLL;
      case 9:
        return 0xD000000000000010;
      case 10:
        v2 = 10;
        return v2 | 0xD000000000000010;
    }

    return 16718;
  }

  if (a1 != 5)
  {
    if (a1 != 6)
    {
      return 0xD00000000000002BLL;
    }

    v2 = 36;
    return v2 | 0xD000000000000010;
  }

  return 0xD000000000000023;
}

uint64_t sub_2591F3A08(int a1)
{
  v29[2] = *MEMORY[0x277D85DE8];
  if (LFV2HandleSupported())
  {
    v29[1] = 0;
    v2 = LFV2HandleCreate();
    if (v2)
    {
      v3 = v2;
      if (qword_281455650 != -1)
      {
        swift_once();
      }

      v4 = sub_259212520();
      __swift_project_value_buffer(v4, qword_281456B60);
      v5 = sub_259212500();
      v6 = sub_2592129F0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v29[0] = v8;
        *v7 = 136315138;
        v9 = sub_2591F383C(v3);
        v11 = sub_2591E0FD4(v9, v10, v29);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_258FE9000, v5, v6, "[LearnedFeaturesUtilities]: LFV2HandleCreate failed with error: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v8);
        MEMORY[0x259CA2F70](v8, -1, -1);
        MEMORY[0x259CA2F70](v7, -1, -1);
      }
    }

    else
    {
      v29[0] = 0;
      v18 = LFV2DetectAndComputeFeatures();
      if (!v18)
      {
        LFV2HandleRelease();
        result = v29[0];
        goto LABEL_14;
      }

      v19 = v18;
      if (qword_281455650 != -1)
      {
        swift_once();
      }

      v20 = sub_259212520();
      __swift_project_value_buffer(v20, qword_281456B60);
      v21 = sub_259212500();
      v22 = sub_2592129F0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28 = v24;
        *v23 = 136315138;
        v25 = sub_2591F383C(v19);
        v27 = sub_2591E0FD4(v25, v26, &v28);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_258FE9000, v21, v22, "[LearnedFeaturesUtilities]: LFV2DetectAndComputeFeatures failed with error: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x259CA2F70](v24, -1, -1);
        MEMORY[0x259CA2F70](v23, -1, -1);
      }

      LFV2FeaturesRelease();
      LFV2HandleRelease();
    }
  }

  else
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v12 = sub_259212520();
    __swift_project_value_buffer(v12, qword_281456B60);
    v13 = sub_259212500();
    v14 = sub_2592129F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a1;
      _os_log_impl(&dword_258FE9000, v13, v14, "[LearnedFeaturesUtilities]: computeFeatures is called while feature %u is not available", v15, 8u);
      MEMORY[0x259CA2F70](v15, -1, -1);
    }
  }

  result = 0;
LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2591F3DB4()
{
  LFV2FeaturesGetGlobalDescriptors();
  Type = LFV2DescriptorsGetType();
  Size = LFV2DescriptorsGetSize();
  Dimension = LFV2DescriptorsGetDimension();
  v3 = Dimension;
  if (Type == 2 && Size == 1 && Dimension == 128)
  {
    Data = LFV2DescriptorsGetData();
    if (Data)
    {
      v5 = Data;
      v6 = sub_2591F37B8(128, 0);
      memcpy(v6 + 4, v5, 0x200uLL);
      return v6;
    }

    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v12 = sub_259212520();
    __swift_project_value_buffer(v12, qword_281456B60);
    v13 = sub_259212500();
    v14 = sub_2592129F0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258FE9000, v13, v14, "[LearnedFeaturesUtilities]: Failed to get global descriptor data", v15, 2u);
      MEMORY[0x259CA2F70](v15, -1, -1);
    }
  }

  else
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v8 = sub_259212520();
    __swift_project_value_buffer(v8, qword_281456B60);
    v9 = sub_259212500();
    v10 = sub_2592129F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109632;
      *(v11 + 4) = Type;
      *(v11 + 8) = 2048;
      *(v11 + 10) = Size;
      *(v11 + 18) = 2048;
      *(v11 + 20) = v3;
      _os_log_impl(&dword_258FE9000, v9, v10, "[LearnedFeaturesUtilities]: Invalid global descriptor format: dataType: %u, size: %ld, dimensions: %ld", v11, 0x1Cu);
      MEMORY[0x259CA2F70](v11, -1, -1);
    }
  }

  return 0;
}

void *sub_2591F3FE8()
{
  LFV2FeaturesGetLocalDescriptors();
  Type = LFV2DescriptorsGetType();
  Size = LFV2DescriptorsGetSize();
  Dimension = LFV2DescriptorsGetDimension();
  v3 = Dimension;
  if (Type != 2 || Size != 128 || Dimension != 128)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v14 = sub_259212500();
    v15 = sub_2592129F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109632;
      *(v16 + 4) = Type;
      *(v16 + 8) = 2048;
      *(v16 + 10) = Size;
      *(v16 + 18) = 2048;
      *(v16 + 20) = v3;
      _os_log_impl(&dword_258FE9000, v14, v15, "[LearnedFeaturesUtilities]: Invalid local descriptor format: dataType: %u, size: %ld, dimensions: %ld", v16, 0x1Cu);
      MEMORY[0x259CA2F70](v16, -1, -1);
    }

    return 0;
  }

  Data = LFV2DescriptorsGetData();
  if (!Data)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v17 = sub_259212520();
    __swift_project_value_buffer(v17, qword_281456B60);
    v18 = sub_259212500();
    v19 = sub_2592129F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258FE9000, v18, v19, "[LearnedFeaturesUtilities]: Failed to get local descriptor data", v20, 2u);
      MEMORY[0x259CA2F70](v20, -1, -1);
    }

    return 0;
  }

  v5 = Data;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size(v8);
    v10 = v9 - 32;
    if (v9 < 32)
    {
      v10 = v9 - 29;
    }

    v8[2] = 128;
    v8[3] = 2 * (v10 >> 2);
    memcpy(v8 + 4, (v5 + v6), 0x200uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2591E0B80(0, v7[2] + 1, 1, v7);
    }

    v12 = v7[2];
    v11 = v7[3];
    if (v12 >= v11 >> 1)
    {
      v7 = sub_2591E0B80((v11 > 1), v12 + 1, 1, v7);
    }

    v7[2] = v12 + 1;
    v7[v12 + 4] = v8;
    v6 += 512;
  }

  while (v6 != 0x10000);
  return v7;
}

void *sub_2591F42E8()
{
  LFV2FeaturesGetKeypoints();
  Size = LFV2KeypointsGetSize();
  if (Size != 128)
  {
    v12 = Size;
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v13 = sub_259212520();
    __swift_project_value_buffer(v13, qword_281456B60);
    v14 = sub_259212500();
    v15 = sub_2592129F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v12;
      _os_log_impl(&dword_258FE9000, v14, v15, "[LearnedFeaturesUtilities]: Invalid keypoints format: size: %ld", v16, 0xCu);
      MEMORY[0x259CA2F70](v16, -1, -1);
    }

    return 0;
  }

  Data = LFV2KeypointsGetData();
  if (!Data)
  {
    if (qword_281455650 != -1)
    {
      swift_once();
    }

    v17 = sub_259212520();
    __swift_project_value_buffer(v17, qword_281456B60);
    v18 = sub_259212500();
    v19 = sub_2592129F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_258FE9000, v18, v19, "[LearnedFeaturesUtilities]: Failed to get keypoints data", v20, 2u);
      MEMORY[0x259CA2F70](v20, -1, -1);
    }

    return 0;
  }

  v2 = Data;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  do
  {
    v5 = v2 + v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B918, &qword_259225B38);
    v6 = swift_allocObject();
    v7 = _swift_stdlib_malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 29;
    }

    *(v6 + 16) = 5;
    *(v6 + 24) = 2 * (v8 >> 2);
    v9 = *(v5 + 16);
    *(v6 + 32) = *v5;
    *(v6 + 48) = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2591E0B80(0, v4[2] + 1, 1, v4);
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = sub_2591E0B80((v10 > 1), v11 + 1, 1, v4);
    }

    v4[2] = v11 + 1;
    v4[v11 + 4] = v6;
    v3 += 20;
  }

  while (v3 != 2560);
  return v4;
}

id ULBiomeEvent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ULBiomeEvent();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t ULBiomeEventCarPlayConnected.ULBiomeEventCarPlayConnectedReason.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

int *sub_2591F46AC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

id ULBiomeEventCarPlayConnected.__allocating_init(timestamp:starting:reason:)(uint64_t a1, char a2, int a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp;
  v9 = sub_259212160();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v7[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_starting] = a2;
  *&v7[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_reason] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

id ULBiomeEventCarPlayConnected.init(timestamp:starting:reason:)(uint64_t a1, char a2, int a3)
{
  v7 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp;
  v8 = sub_259212160();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v3[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_starting] = a2;
  *&v3[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_reason] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ULBiomeEventCarPlayConnected(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t sub_2591F4AF8()
{
  v1 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventCarPlayConnected_timestamp;
  v2 = sub_259212160();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_2591F4B7C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2591F4C50()
{
  v1 = *v0;
  sub_259212C90();
  sub_259212CB0();
  return sub_259212CD0();
}

uint64_t sub_2591F4C98()
{
  v1 = *v0;
  sub_259212C90();
  sub_259212CB0();
  return sub_259212CD0();
}

unint64_t sub_2591F4CDC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2591F5634(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_2591F4D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_259212160();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1 + *a3, v5, v8);
  v11 = sub_259212130();
  (*(v6 + 8))(v10, v5);

  return v11;
}

uint64_t sub_2591F4E34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_259212160();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id ULBiomeEventLocationSemantic.__allocating_init(timestamp:starting:locationType:loiIdentifier:)(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp;
  v11 = sub_259212160();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a1, v11);
  v9[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting] = a2;
  *&v9[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType] = a3;
  sub_2591F56BC(a4, &v9[OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier]);
  v15.receiver = v9;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_2591F572C(a4);
  (*(v12 + 8))(a1, v11);
  return v13;
}