uint64_t sub_22DEFE8F8(uint64_t a1)
{
  v22[0] = a1;
  v24[4] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for ServiceEventValue();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_22DF63A04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DF639F4();
  v10 = sub_22DF639C4();
  v12 = v11;

  (*(v6 + 8))(v9, v5);
  if (v12 >> 60 == 15)
  {

    sub_22DEFF798();
    swift_allocError();
    result = swift_willThrow();
  }

  else
  {
    v14 = objc_opt_self();
    v15 = sub_22DF634A4();
    v23 = 0;
    v16 = [v14 JSONObjectWithData:v15 options:0 error:&v23];

    v17 = v23;
    if (v16)
    {
      sub_22DF63E44();
      swift_unknownObjectRelease();
      v18 = v22[1];
      sub_22DEF9F84(v24, v4);
      if (v18)
      {
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_22DEF7A20(v10, v12);
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        __swift_destroy_boxed_opaque_existential_0(v24);
        sub_22DEF7A20(v10, v12);
        v20 = *v4;
        result = v22[0];
      }

      else
      {

        sub_22DEFF310(v4, type metadata accessor for ServiceEventValue);
        sub_22DEFF798();
        swift_allocError();
        swift_willThrow();
        sub_22DEF7A20(v10, v12);
        result = __swift_destroy_boxed_opaque_existential_0(v24);
      }
    }

    else
    {
      v19 = v17;

      sub_22DF63334();

      swift_willThrow();
      result = sub_22DEF7A20(v10, v12);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DEFEC38(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = sub_22DF63604();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServiceEventValue();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v62 = (&v60 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v60 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v60 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v60 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v60 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47628, &unk_22DF68C40);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v60 - v31;
  v33 = (&v60 + *(v30 + 56) - v31);
  sub_22DEFF2A8(v67, &v60 - v31, type metadata accessor for ServiceEventValue);
  v34 = a2;
  v35 = v33;
  sub_22DEFF2A8(v34, v33, type metadata accessor for ServiceEventValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_22DEFF2A8(v32, v22, type metadata accessor for ServiceEventValue);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v46 = *v22;
LABEL_23:
          v50 = v46 == *v33;
          goto LABEL_28;
        }
      }

      else
      {
        sub_22DEFF2A8(v32, v19, type metadata accessor for ServiceEventValue);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v50 = *v19 == *v33;
LABEL_28:
          v45 = v50;
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_22DEFF2A8(v32, v27, type metadata accessor for ServiceEventValue);
        v38 = *v27;
        v37 = v27[1];
        if (!swift_getEnumCaseMultiPayload())
        {
          v39 = *v33;
          v40 = v33[1];
          if (v38 == *v35 && v37 == v40)
          {
            v59 = v35[1];
          }

          else
          {
            v42 = v35[1];
            v43 = sub_22DF64184();

            if ((v43 & 1) == 0)
            {
              sub_22DEFF310(v32, type metadata accessor for ServiceEventValue);
LABEL_38:
              v45 = 0;
              return v45 & 1;
            }
          }

          sub_22DEFF310(v32, type metadata accessor for ServiceEventValue);
          v45 = 1;
          return v45 & 1;
        }

        goto LABEL_35;
      }

      sub_22DEFF2A8(v32, v25, type metadata accessor for ServiceEventValue);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v46 = *v25;
        goto LABEL_23;
      }
    }

LABEL_37:
    sub_22DEF1364(v32, &qword_27DA47628, &unk_22DF68C40);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v47 = v62;
      sub_22DEFF2A8(v32, v62, type metadata accessor for ServiceEventValue);
      v48 = *v47;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v49 = sub_22DEFA784(v48, *v33);
LABEL_33:
        v45 = v49;

LABEL_34:
        sub_22DEFF310(v32, type metadata accessor for ServiceEventValue);
        return v45 & 1;
      }
    }

    else
    {
      v56 = v63;
      sub_22DEFF2A8(v32, v63, type metadata accessor for ServiceEventValue);
      v57 = *v56;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v49 = sub_22DEFA92C(v57, *v33);
        goto LABEL_33;
      }
    }

LABEL_35:

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v51 = v64;
    sub_22DEFF2A8(v32, v64, type metadata accessor for ServiceEventValue);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v65 + 8))(v51, v66);
      goto LABEL_37;
    }

    v52 = v65;
    v53 = v61;
    v54 = v66;
    (*(v65 + 32))(v61, v33, v66);
    v45 = sub_22DF635C4();
    v55 = *(v52 + 8);
    v55(v53, v54);
    v55(v51, v54);
    goto LABEL_34;
  }

  sub_22DEFF2A8(v32, v16, type metadata accessor for ServiceEventValue);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_37;
  }

  v44 = *v16 ^ *v33;
  sub_22DEFF310(v32, type metadata accessor for ServiceEventValue);
  v45 = v44 ^ 1;
  return v45 & 1;
}

uint64_t sub_22DEFF2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DEFF310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22DEFF370(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47618, &unk_22DF68C30);
    v8 = sub_22DF64044();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22DEFFB80(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22DEF08FC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for ServiceEventValue();
      result = sub_22DEFE894(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_22DEFF534()
{
  v1 = *(v0 + 16);
  sub_22DEFB79C();
  return 1;
}

uint64_t sub_22DEFF554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22DEFF5BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

unint64_t sub_22DEFF5E8()
{
  result = qword_27DA475A8;
  if (!qword_27DA475A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA475A8);
  }

  return result;
}

unint64_t sub_22DEFF63C()
{
  result = qword_27DA47408;
  if (!qword_27DA47408)
  {
    type metadata accessor for ServiceEventValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47408);
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

unint64_t sub_22DEFF6E8()
{
  result = qword_27DA475C8;
  if (!qword_27DA475C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA475C8);
  }

  return result;
}

unint64_t sub_22DEFF740()
{
  result = qword_27DA475D0;
  if (!qword_27DA475D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA475D0);
  }

  return result;
}

unint64_t sub_22DEFF798()
{
  result = qword_27DA475D8;
  if (!qword_27DA475D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA475D8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22DEFF808(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22DEFF850(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22DEFF8F0()
{
  sub_22DF63604();
  if (v0 <= 0x3F)
  {
    sub_22DEFF9AC();
    if (v1 <= 0x3F)
    {
      sub_22DEFFA04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22DEFF9AC()
{
  if (!qword_27DA475E0)
  {
    type metadata accessor for ServiceEventValue();
    v0 = sub_22DF63BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA475E0);
    }
  }
}

void sub_22DEFFA04()
{
  if (!qword_27DA475E8)
  {
    type metadata accessor for ServiceEventValue();
    v0 = sub_22DF63924();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA475E8);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22DEFFA78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22DEFFAC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DEFFB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEventValue();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DEFFB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_22DEFFBF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22DEFFC08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22DEFFC78()
{
  v0 = NSHomeDirectory();
  sub_22DF639B4();

  sub_22DF63364();
}

uint64_t sub_22DEFFD00()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v1);
  return sub_22DF642D4();
}

uint64_t sub_22DEFFD74()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v1);
  return sub_22DF642D4();
}

uint64_t sub_22DEFFDB8()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA493A8);
  __swift_project_value_buffer(v0, qword_27DA493A8);
  return sub_22DF63724();
}

uint64_t DiskCache.__allocating_init(rootCacheURL:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DEF4014;

  return DiskCache.init(rootCacheURL:)(a1);
}

uint64_t DiskCache.init(rootCacheURL:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v2[18] = *v1;
  v3 = *(*(type metadata accessor for SQLiteDB.Location() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v5 = sub_22DF63444();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v7 = *(v6 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF00034, 0, 0);
}

uint64_t sub_22DF00034()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  swift_defaultActor_initialize();
  sub_22DF2FA30(v3, 0x636163746E657665, 0xEB000000002F6568, v1);
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  sub_22DF633A4();
  v9 = *(v7 + 8);
  v0[25] = v9;
  v0[26] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v11 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v12 = v11;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();
  v13 = v0[20];

  v14 = sub_22DF632E4();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = sub_22DF632C4();
  LOBYTE(v8) = v17;
  (*(v15 + 8))(v13, v14);
  if (v8)
  {
    goto LABEL_14;
  }

  v18 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v18)
  {
    if (v16 <= 0x140000000)
    {
LABEL_14:
      v24 = v0[24];
      v25 = v0[21];
      v26 = v0[22];
      v27 = v0[19];
      type metadata accessor for SQLiteDB();
      (*(v26 + 16))(v27, v24, v25);
      (*(v26 + 56))(v27, 0, 1, v25);
      *(v0[17] + 112) = sub_22DF0B12C(v27);
      v39 = swift_task_alloc();
      v0[27] = v39;
      *v39 = v0;
      v39[1] = sub_22DF0068C;
      v40 = v0[17];

      return DiskCache.schemaVersion.getter();
    }
  }

  else if (v16 <= 3221225472)
  {
    goto LABEL_14;
  }

  if (*sub_22DF2EAD4())
  {
    if (qword_27DA493A0 != -1)
    {
      swift_once();
    }

    v19 = sub_22DF63734();
    __swift_project_value_buffer(v19, qword_27DA493A8);
    v20 = sub_22DF63714();
    v21 = sub_22DF63D04();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134349312;
      *(v22 + 4) = v16;
      *(v22 + 12) = 2050;
      swift_beginAccess();
      v23 = 3221225472;
      if (*v18)
      {
        v23 = 0x140000000;
      }

      *(v22 + 14) = v23;
      _os_log_impl(&dword_22DEEA000, v20, v21, "cache size %{public}ld exceeded maximum %{public}ld - cache delete overridden", v22, 0x16u);
      MEMORY[0x2318DDBE0](v22, -1, -1);
    }

    goto LABEL_14;
  }

  if (qword_27DA493A0 != -1)
  {
    swift_once();
  }

  v41 = sub_22DF63734();
  __swift_project_value_buffer(v41, qword_27DA493A8);
  v42 = sub_22DF63714();
  v43 = sub_22DF63D04();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134349312;
    *(v44 + 4) = v16;
    *(v44 + 12) = 2050;
    swift_beginAccess();
    v45 = 3221225472;
    if (*v18)
    {
      v45 = 0x140000000;
    }

    *(v44 + 14) = v45;
    _os_log_impl(&dword_22DEEA000, v42, v43, "cache size %{public}ld exceeded maximum %{public}ld - deleting cache", v44, 0x16u);
    MEMORY[0x2318DDBE0](v44, -1, -1);
  }

  v46 = v0[24];
  v47 = v0[21];

  sub_22DF04394();
  swift_allocError();
  *v48 = 1;
  swift_willThrow();
  v9(v46, v47);
  v28 = v0[21];
  v29 = v0[22];
  v31 = v0[17];
  v30 = v0[18];
  v32 = v0[16];
  swift_defaultActor_destroy();
  (*(v29 + 8))(v32, v28);
  swift_deallocPartialClassInstance();
  v34 = v0[23];
  v33 = v0[24];
  v36 = v0[19];
  v35 = v0[20];

  v37 = v0[1];

  return v37();
}

uint64_t sub_22DF0068C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 216);
  v7 = *v2;

  v9 = *(v4 + 136);
  if (v1)
  {

    sub_22DF059C4(&qword_27DA47658, v10, type metadata accessor for DiskCache);
    swift_getObjectType();
    v11 = sub_22DF63BE4();
    v13 = v12;
    v14 = sub_22DF00C28;
  }

  else
  {
    *(v5 + 224) = a1;
    sub_22DF059C4(&qword_27DA47658, v8, type metadata accessor for DiskCache);
    swift_getObjectType();
    v11 = sub_22DF63BE4();
    v13 = v15;
    v14 = sub_22DF00878;
  }

  return MEMORY[0x2822009F8](v14, v11, v13);
}

uint64_t sub_22DF00878()
{
  v1 = v0[28];
  if (v1 > 8)
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[19];
    v6(v0[16], v9);
    v6(v8, v9);

    v11 = v0[1];
    v12 = v0[17];

    return v11(v12);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_22DF009BC;
    v3 = v0[17];

    return sub_22DF010B4(v1);
  }
}

uint64_t sub_22DF009BC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[17];
  v7 = sub_22DF059C4(&qword_27DA47658, v6, type metadata accessor for DiskCache);
  if (v0)
  {
    v2[31] = v7;
    swift_getObjectType();
    v8 = sub_22DF63BE4();
    v10 = v9;
    v11 = sub_22DF00CBC;
  }

  else
  {
    swift_getObjectType();
    v8 = sub_22DF63BE4();
    v10 = v12;
    v11 = sub_22DF00B68;
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_22DF00B68()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[19];
  v2(v0[16], v5);
  v2(v4, v5);

  v7 = v0[1];
  v8 = v0[17];

  return v7(v8);
}

uint64_t sub_22DF00C28()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_22DF009BC;
  v2 = *(v0 + 136);

  return sub_22DF010B4(0);
}

uint64_t sub_22DF00CBC()
{
  v1 = *(*(v0 + 136) + 112);
  *(v0 + 256) = v1;

  return MEMORY[0x2822009F8](sub_22DF00D34, v1, 0);
}

uint64_t sub_22DF00D34()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[17];
  sub_22DF0B5B0();

  swift_getObjectType();
  v5 = sub_22DF63BE4();

  return MEMORY[0x2822009F8](sub_22DF00DCC, v5, v4);
}

uint64_t sub_22DF00DCC()
{
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[16];
  v6 = v0[17];
  swift_willThrow();
  v3(v7, v5);
  v3(v4, v5);

  v8 = v0[30];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[19];
  v11 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_22DF00EBC()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x6E6F6973726576;
  *(v2 + 24) = 0xE700000000000000;

  return MEMORY[0x2822009F8](sub_22DF00F4C, v1, 0);
}

uint64_t sub_22DF00F4C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22DF0B3D0(0xD000000000000025, 0x800000022DF6D9B0, sub_22DF043E8);
  v0[6] = 0;
  v3 = v0[5];

  v4 = v0[2];
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22DF01044()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_22DF010B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22DF010D4, v1, 0);
}

uint64_t sub_22DF010D4()
{
  if (v0[2])
  {
    if (qword_27DA493A0 != -1)
    {
      swift_once();
    }

    v1 = sub_22DF63734();
    __swift_project_value_buffer(v1, qword_27DA493A8);
    v2 = sub_22DF63714();
    v3 = sub_22DF63D24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22DEEA000, v2, v3, "unsupported prior database version - deleting disk cache", v4, 2u);
      MEMORY[0x2318DDBE0](v4, -1, -1);
    }

    sub_22DF04394();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v0[3] + 112);
    v0[4] = v8;

    return MEMORY[0x2822009F8](sub_22DF01264, v8, 0);
  }
}

uint64_t sub_22DF01264()
{
  v1 = v0[4];
  sub_22DF0B598();
  v0[5] = 0;
  v2 = v0[3];

  return MEMORY[0x2822009F8](sub_22DF01330, v2, 0);
}

uint64_t sub_22DF01330()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[2] = 0x6E6F6973726576;
  v2[3] = 0xE700000000000000;
  v2[4] = 9;

  return MEMORY[0x2822009F8](sub_22DF013C0, v1, 0);
}

uint64_t sub_22DF013C0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_22DF0B3D0(0xD000000000000060, 0x800000022DF6DF20, sub_22DF05A2C);
  v0[7] = v2;
  if (v2)
  {
    v4 = v0[3];
    v5 = sub_22DF015C0;
  }

  else
  {
    v6 = v0[6];
    v7 = v0[3];

    v5 = sub_22DF01498;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DF01498()
{
  if (qword_27DA493A0 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  __swift_project_value_buffer(v1, qword_27DA493A8);
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 9;
    _os_log_impl(&dword_22DEEA000, v2, v3, "initialized disk cache with version %lld", v4, 0xCu);
    MEMORY[0x2318DDBE0](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22DF015C0()
{
  v1 = v0[6];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22DF01624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D837D0];
  *(v9 + 16) = xmmword_22DF65910;
  *(v9 + 56) = v10;
  *(v9 + 64) = &off_284193BE8;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 96) = MEMORY[0x277D84A28];
  *(v9 + 104) = &off_284193BA8;
  *(v9 + 72) = a4;
  v11 = *(*a1 + 192);

  v11(v9);

  if (!v4)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF01730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22DF01754, v3, 0);
}

uint64_t sub_22DF01754()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 40) + 112);
  *(v0 + 48) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22DF017DC, v2, 0);
}

uint64_t sub_22DF017DC()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_22DF0B3D0(0xD0000000000000AFLL, 0x800000022DF6D9E0, sub_22DF04414);
  v0[8] = 0;
  v3 = v0[7];
  v4 = v0[5];

  return MEMORY[0x2822009F8](sub_22DF05A28, v4, 0);
}

uint64_t sub_22DF018B4()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_22DF01918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v6 = sub_22DF63594();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 32))(a3, a4);
  v28 = getTimeIntervalSince1970(Date:)();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22DF66110;
  v12 = (*(a4 + 16))(a3, a4);
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = &off_284193BE8;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = *(a4 + 8);
  v14(v30, a3, a4);
  v15 = v30[0];
  v16 = v30[1];

  sub_22DEF0FA8(v30);
  *(v11 + 96) = MEMORY[0x277D837D0];
  *(v11 + 104) = &off_284193BE8;
  *(v11 + 72) = v15;
  *(v11 + 80) = v16;
  v14(v31, a3, a4);
  v17 = v31[2];
  v18 = v31[3];

  sub_22DEF0FA8(v31);
  *(v11 + 136) = MEMORY[0x277D837D0];
  *(v11 + 144) = &off_284193BE8;
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  v14(v32, a3, a4);
  sub_22DEF0FA8(v32);
  v19 = MEMORY[0x277D839B0];
  v20 = v33;
  *(v11 + 176) = MEMORY[0x277D839B0];
  *(v11 + 184) = &off_284193B68;
  *(v11 + 152) = v20;
  v14(v34, a3, a4);
  sub_22DEF0FA8(v34);
  v21 = v35;
  *(v11 + 216) = v19;
  *(v11 + 224) = &off_284193B68;
  *(v11 + 192) = v21;
  v14(v36, a3, a4);
  v22 = v36[5];
  v23 = v36[6];

  sub_22DEF0FA8(v36);
  *(v11 + 256) = MEMORY[0x277D837D0];
  *(v11 + 264) = &off_284193BE8;
  *(v11 + 232) = v22;
  *(v11 + 240) = v23;
  v24 = v29;
  v25 = (*(a4 + 24))(a3, a4);
  *(v11 + 296) = MEMORY[0x277D839F8];
  *(v11 + 304) = &off_284193BC8;
  *(v11 + 272) = v25;
  *(v11 + 336) = MEMORY[0x277D84A28];
  *(v11 + 344) = &off_284193BA8;
  *(v11 + 312) = v28;
  v26 = v36[9];
  (*(*v24 + 192))(v11);

  if (!v26)
  {
    return (*(*v24 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF01C9C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 32) = a2;
  *(v7 + 24) = a3;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_22DF01CC8, v6, 0);
}

uint64_t sub_22DF01CC8()
{
  v1 = v0[4];
  v2 = sub_22DF63544();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = 0;
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v6 = v5;
LABEL_6:
  v7 = sub_22DF04434(v0[5]);
  v0[7] = 0;
  v0[8] = v8;
  v9 = v7;
  v10 = v8;
  v11 = v0[3];
  v12 = v0[2];
  v13 = *(v0[6] + 112);
  v0[9] = v13;
  v14 = swift_task_alloc();
  v0[10] = v14;
  v14[2] = v12;
  v14[3] = v11;
  v14[4] = v6;
  v14[5] = v9;
  v14[6] = v10;
  v2 = sub_22DF01E20;
  v3 = v13;
  v4 = 0;

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_22DF01E20()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  sub_22DF0B3D0(0xD0000000000000C4, 0x800000022DF6DA90, sub_22DF04770);
  v0[11] = v3;
  if (v3)
  {
    v4 = v0[6];
    v5 = sub_22DF01F04;
  }

  else
  {
    v6 = v0[10];
    v7 = v0[8];
    v8 = v0[6];

    v5 = sub_22DF05A28;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DF01F04()
{
  v1 = v0[10];
  v2 = v0[8];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_22DF01F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22DF01F98, v3, 0);
}

uint64_t sub_22DF01F98()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v1 + 112);
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = v1;

  return MEMORY[0x2822009F8](sub_22DF0202C, v5, 0);
}

uint64_t sub_22DF0202C()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47668, &qword_22DF66190);
  sub_22DF0B3D0(0xD000000000000185, 0x800000022DF6DB60, sub_22DF04944);
  v0[9] = 0;
  v3 = v0[8];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_22DF02118, v4, 0);
}

uint64_t sub_22DF02134()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_22DF02198@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v11 = swift_allocObject();
  v13 = a2[1];
  v25 = *a2;
  v12 = v25;
  *(v11 + 16) = xmmword_22DF66120;
  *(v11 + 32) = v12;
  v14 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = &off_284193BE8;
  v24 = v13;
  *(v11 + 96) = v14;
  *(v11 + 104) = &off_284193BE8;
  *(v11 + 72) = v13;
  v22 = a2[2];
  v23 = *(a2 + 6);
  v15 = v22;
  v16 = MEMORY[0x277D839B0];
  *(v11 + 136) = MEMORY[0x277D839B0];
  *(v11 + 144) = &off_284193B68;
  *(v11 + 112) = v15;
  v17 = BYTE1(v22);
  *(v11 + 176) = v16;
  *(v11 + 184) = &off_284193B68;
  *(v11 + 152) = v17;
  *(v11 + 216) = v14;
  *(v11 + 224) = &off_284193BE8;
  *(v11 + 192) = *(a2 + 40);
  v18 = MEMORY[0x277D84A28];
  *(v11 + 256) = MEMORY[0x277D84A28];
  *(v11 + 264) = &off_284193BA8;
  *(v11 + 232) = a3;
  *(v11 + 296) = v18;
  *(v11 + 304) = &off_284193BA8;
  *(v11 + 272) = a4;
  v19 = *(*a1 + 192);
  sub_22DF051C0(&v25, v21);
  sub_22DF051C0(&v24, v21);
  sub_22DF05794(&v22, v21);
  v19(v11);

  if (!v5)
  {
    v21[0] = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](result);
    (*(*a1 + 144))(sub_22DF057F0);
    result = v21[0];
    *a5 = v21[0];
  }

  return result;
}

uint64_t sub_22DF0239C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22DF023BC, v1, 0);
}

uint64_t sub_22DF023BC()
{
  v1 = v0[2];
  v2 = *(v0[3] + 112);
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02438, v2, 0);
}

uint64_t sub_22DF02438()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22DF0B42C(sub_22DF04964);
  v0[6] = 0;
  v3 = v0[5];
  v4 = v0[3];

  return MEMORY[0x2822009F8](sub_22DF05A28, v4, 0);
}

uint64_t sub_22DF024F8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22DF02518, v1, 0);
}

uint64_t sub_22DF02518()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02594, v2, 0);
}

uint64_t sub_22DF02594()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  sub_22DF0B3D0(0xD000000000000045, 0x800000022DF6DCF0, sub_22DF04AA0);
  v0[7] = 0;
  v3 = v0[6];
  v4 = v0[4];

  return MEMORY[0x2822009F8](sub_22DF05A44, v4, 0);
}

uint64_t sub_22DF02680()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_22DF026E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22DF65900;
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = &off_284193B88;
  *(v7 + 32) = a2;
  (*(*a1 + 192))();

  if (!v3)
  {
    v9 = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](result);
    (*(*a1 + 144))(sub_22DF0559C);
    result = v9;
    *a3 = v9;
  }

  return result;
}

uint64_t sub_22DF02838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22DF0285C, v3, 0);
}

uint64_t sub_22DF0285C()
{
  v1 = *(v0 + 40);
  v5 = *(v0 + 24);
  v2 = *(*(v0 + 48) + 112);
  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_22DF028F0, v2, 0);
}

uint64_t sub_22DF028F0()
{
  v2 = v0[7];
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47678, &qword_22DF661B8);
  sub_22DF0B3D0(0xD000000000000091, 0x800000022DF6DD40, sub_22DF04ABC);
  v0[9] = 0;
  v3 = v0[8];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_22DF05A44, v4, 0);
}

uint64_t sub_22DF029DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D837D0];
  *(v11 + 16) = xmmword_22DF65910;
  *(v11 + 56) = v12;
  *(v11 + 64) = &off_284193BE8;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 96) = MEMORY[0x277D83B88];
  *(v11 + 104) = &off_284193B88;
  *(v11 + 72) = a4;
  v13 = *(*a1 + 192);

  v13(v11);

  if (!v5)
  {
    v15 = MEMORY[0x277D84F90];
    MEMORY[0x28223BE20](result);
    (*(*a1 + 144))(sub_22DF05380);
    result = v15;
    *a5 = v15;
  }

  return result;
}

uint64_t sub_22DF02B6C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22DF02B8C, v1, 0);
}

uint64_t sub_22DF02B8C()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v0[6] = 0;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02C08, v2, 0);
}

uint64_t sub_22DF02C08()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_22DF0B42C(sub_22DF04ADC);
  v0[8] = v2;
  if (v2)
  {
    v4 = v0[4];
    v5 = sub_22DF018B4;
  }

  else
  {
    v6 = v0[7];
    v7 = v0[4];

    v5 = sub_22DF02CC8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22DF02CC8()
{
  if (v0[2] == 50)
  {
    v0[6] = v0[8];
    v1 = v0[5];
    v2 = v0[3];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *(v3 + 16) = v2;

    return MEMORY[0x2822009F8](sub_22DF02C08, v1, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22DF02D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v13 = a3;
  v6 = sub_22DF63594();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  (*(*a1 + 128))(0xD00000000000004BLL, 0x800000022DF6DFF0, sub_22DF0521C, v10, MEMORY[0x277D84F78] + 8);

  if (!v3)
  {
    result = (*(*a1 + 136))(result);
    *v13 = result;
  }

  return result;
}

uint64_t sub_22DF02F58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22DF02F7C, v2, 0);
}

uint64_t sub_22DF02F7C()
{
  v1 = v0[3];
  v2 = *(v0[4] + 112);
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;

  return MEMORY[0x2822009F8](sub_22DF02FF8, v2, 0);
}

uint64_t sub_22DF02FF8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47680, &qword_22DF661D0);
  sub_22DF0B3D0(0xD000000000000046, 0x800000022DF6DDE0, sub_22DF04AF8);
  v0[7] = 0;
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22DF03110@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22DF0AB08(0, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v9)
  {
    sub_22DF0AA90(1, a1, MEMORY[0x277D84A28], &off_284193B98);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47698, &qword_22DF663E0);
    v5 = *(v4 + 48);
    *a2 = v8;
    a2[1] = v9;
    sub_22DF63534();
    return (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_22DF03240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22DF03268, v4, 0);
}

uint64_t sub_22DF03268()
{
  v1 = v0[4];
  v2 = v0[6];
  if (v1)
  {
    v3 = v0[5];
    v5 = v0[2];
    v4 = v0[3];
    v6 = *(v2 + 112);
    v0[7] = v6;
    v7 = swift_task_alloc();
    v0[8] = v7;
    v7[2] = v3;
    v7[3] = v5;
    v7[4] = v4;
    v7[5] = v1;
    v8 = sub_22DF03334;
  }

  else
  {
    v9 = v0[2];
    v6 = *(v2 + 112);
    v0[10] = v6;
    v10 = swift_task_alloc();
    v0[11] = v10;
    *(v10 + 16) = v9;
    v8 = sub_22DF03424;
  }

  return MEMORY[0x2822009F8](v8, v6, 0);
}

uint64_t sub_22DF03334()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_22DF0B3D0(0xD0000000000000A8, 0x800000022DF6DE70, sub_22DF04E48);
  v0[9] = 0;
  v3 = v0[8];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_22DF0340C, v4, 0);
}

uint64_t sub_22DF03424()
{
  v2 = v0[10];
  v1 = v0[11];
  sub_22DF0B3D0(0xD000000000000038, 0x800000022DF6DE30, sub_22DF04D20);
  v0[12] = 0;
  v3 = v0[11];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_22DF05A28, v4, 0);
}

uint64_t sub_22DF034FC()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22DF0355C()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22DF035DC()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v0[5] = 0;
  return MEMORY[0x2822009F8](sub_22DF03600, v1, 0);
}

uint64_t sub_22DF03600()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_22DF0B42C(sub_22DF03710);
  v0[6] = v2;
  v3 = v0[3];
  if (v2)
  {
    v4 = sub_22DF036F8;
  }

  else
  {
    v4 = sub_22DF036AC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DF036AC()
{
  if (*(v0 + 16) != 50)
  {
    return (*(v0 + 8))();
  }

  *(v0 + 40) = *(v0 + 48);
  return MEMORY[0x2822009F8](sub_22DF03600, *(v0 + 32), 0);
}

uint64_t sub_22DF03710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*a1 + 128))(0xD00000000000001DLL, 0x800000022DF6DFD0, sub_22DF037D0, 0, MEMORY[0x277D84F78] + 8);
  if (!v2)
  {
    result = (*(*a1 + 136))(result);
    *a2 = result;
  }

  return result;
}

uint64_t sub_22DF03808()
{
  v1 = *(v0[3] + 112);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = 0x554E447473616CLL;
  *(v2 + 24) = 0xE700000000000000;

  return MEMORY[0x2822009F8](sub_22DF03898, v1, 0);
}

uint64_t sub_22DF03898()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_22DF0B3D0(0xD000000000000025, 0x800000022DF6D9B0, sub_22DF04FAC);
  v0[6] = 0;
  v3 = v0[5];

  v4 = v0[2] != 0;
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_22DF03998()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  *(v0 + 16) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 56) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {

    v8 = *(v0 + 8);

    return v8(2);
  }

  else
  {

    v5 = *(v0 + 8);
    v6 = *(v0 + 48);

    return v5();
  }
}

uint64_t sub_22DF03A9C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_22DF03AC0, v1, 0);
}

uint64_t sub_22DF03AC0()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  v3[2] = 0x554E447473616CLL;
  v3[3] = 0xE700000000000000;
  v3[4] = v1;

  return MEMORY[0x2822009F8](sub_22DF03B58, v2, 0);
}

uint64_t sub_22DF03B58()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_22DF0B3D0(0xD000000000000060, 0x800000022DF6DF20, sub_22DF04FD8);
  v0[5] = 0;
  v3 = v0[4];
  v4 = v0[2];

  return MEMORY[0x2822009F8](sub_22DF05A28, v4, 0);
}

uint64_t sub_22DF03C30()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_22DF03CB4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22DF03CD8, v1, 0);
}

uint64_t sub_22DF03CD8()
{
  v1 = v0[3];
  sub_22DF0B3D0(0x4D5555434156, 0xE600000000000000, sub_22DF05A0C);
  v0[4] = 0;
  v2 = v0[2];

  return MEMORY[0x2822009F8](sub_22DF05A28, v2, 0);
}

uint64_t DiskCache.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DiskCache.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_22DF03E68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476B0, &qword_22DF663F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476B8, &unk_22DF66400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DF03FB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A8, &qword_22DF663F0);
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

char *sub_22DF040BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A0, &qword_22DF663E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22DF041E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22DF65900;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = &off_284193BE8;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = *(*a1 + 192);

  v14(v13);

  if (!v6)
  {
    result = (*(*a1 + 160))(&v16, a4, a5);
    *a6 = v16;
  }

  return result;
}

uint64_t sub_22DF04308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DF04394()
{
  result = qword_27DA47660;
  if (!qword_27DA47660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47660);
  }

  return result;
}

uint64_t sub_22DF04434(uint64_t a1)
{
  v3 = sub_22DF63A04();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF631B4();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_22DF631A4();
  v30[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47590, &unk_22DF65E20);
  sub_22DEF7D64();
  v10 = sub_22DF63194();
  if (v1)
  {

    return v6;
  }

  v12 = v10;
  v13 = v11;

  v15 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v13);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v18 = *(v12 + 16);
  v17 = *(v12 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v16 = HIDWORD(v12) - v12;
  }

LABEL_13:
  v19 = sub_22DF144E4();
  if (*v19 < v16)
  {
    v20 = v19;
    if (qword_27DA493A0 != -1)
    {
      swift_once();
    }

    v21 = sub_22DF63734();
    __swift_project_value_buffer(v21, qword_27DA493A8);
    sub_22DEF7A88(v12, v13);
    v22 = sub_22DF63714();
    v6 = sub_22DF63D04();
    if (!os_log_type_enabled(v22, v6))
    {
      sub_22DEF7A34(v12, v13);
LABEL_31:

      sub_22DF04394();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
      sub_22DEF7A34(v12, v13);

      return v6;
    }

    result = swift_slowAlloc();
    *result = 134349312;
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        v23 = 0;
        goto LABEL_30;
      }

      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      v27 = __OFSUB__(v25, v26);
      v23 = v25 - v26;
      if (!v27)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v23 = BYTE6(v13);
LABEL_30:
      *(result + 4) = v23;
      v28 = result;
      sub_22DEF7A34(v12, v13);
      *(v28 + 12) = 2050;
      *(v28 + 14) = *v20;
      _os_log_impl(&dword_22DEEA000, v22, v6, "event too large: (%{public}ld > %{public}lld", v28, 0x16u);
      MEMORY[0x2318DDBE0](v28, -1, -1);
      goto LABEL_31;
    }

    LODWORD(v23) = HIDWORD(v12) - v12;
    if (!__OFSUB__(HIDWORD(v12), v12))
    {
      v23 = v23;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  sub_22DF639F4();
  result = sub_22DF639D4();
  if (v24)
  {
    v6 = result;
    sub_22DEF7A34(v12, v13);

    return v6;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22DF04770(uint64_t a1)
{
  v3 = v1;
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DF66110;
  v22 = *v5;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = &off_284193BE8;
  *(v10 + 32) = *v5;
  v21 = v5[1];
  *(v10 + 96) = v11;
  *(v10 + 104) = &off_284193BE8;
  *(v10 + 72) = v5[1];
  v19 = v5[2];
  v20 = *(v5 + 6);
  v12 = MEMORY[0x277D839B0];
  v13 = v19;
  *(v10 + 136) = MEMORY[0x277D839B0];
  *(v10 + 144) = &off_284193B68;
  *(v10 + 112) = v13;
  v14 = BYTE1(v19);
  *(v10 + 176) = v12;
  *(v10 + 184) = &off_284193B68;
  *(v10 + 152) = v14;
  *(v10 + 216) = v11;
  *(v10 + 224) = &off_284193BE8;
  *(v10 + 192) = *(v5 + 40);
  *(v10 + 256) = MEMORY[0x277D839F8];
  *(v10 + 264) = &off_284193BC8;
  v15 = MEMORY[0x277D84A28];
  *(v10 + 232) = v6;
  *(v10 + 296) = v15;
  *(v10 + 304) = &off_284193BA8;
  *(v10 + 272) = v8;
  *(v10 + 336) = v11;
  *(v10 + 344) = &off_284193BE8;
  *(v10 + 312) = v7;
  *(v10 + 320) = v9;
  v16 = *(*a1 + 192);
  sub_22DF051C0(&v22, v18);
  sub_22DF051C0(&v21, v18);
  sub_22DF05794(&v19, v18);

  v16(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF04964(uint64_t result)
{
  v3 = v1;
  v4 = result;
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return (*(*v4 + 144))(result);
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x277D84F78];
  while (1)
  {
    v9 = *v7++;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    (*(*v4 + 128))(0xD000000000000038, 0x800000022DF6E040, sub_22DF056B8, v10, v8 + 8);

    if (v2)
    {
      break;
    }

    if (!--v6)
    {
      return (*(*v4 + 144))(result);
    }
  }

  return result;
}

void sub_22DF04AF8(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22DF65910;
  v13 = *v5;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = &off_284193BE8;
  *(v6 + 32) = *v5;
  v12 = v5[1];
  *(v6 + 96) = v7;
  *(v6 + 104) = &off_284193BE8;
  *(v6 + 72) = v5[1];
  v8 = *(*a1 + 192);
  sub_22DF051C0(&v13, v11);
  sub_22DF051C0(&v12, v11);
  v8(v6);

  if (!v2)
  {
    v9 = *(*a1 + 152);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47680, &qword_22DF661D0);
    v9(sub_22DF03110, 0, v10);
  }
}

uint64_t sub_22DF04D20(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22DF65910;
  v12 = *v5;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = &off_284193BE8;
  *(v6 + 32) = *v5;
  v11 = v5[1];
  *(v6 + 96) = v7;
  *(v6 + 104) = &off_284193BE8;
  *(v6 + 72) = v5[1];
  v8 = *(*a1 + 192);
  sub_22DF051C0(&v12, v10);
  sub_22DF051C0(&v11, v10);
  v8(v6);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF04E48(uint64_t a1)
{
  v3 = v1;
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = getTimeIntervalSince1970(Date:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DF66130;
  v16 = *v6;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = &off_284193BE8;
  *(v10 + 32) = *v6;
  v15 = v6[1];
  *(v10 + 96) = v11;
  *(v10 + 104) = &off_284193BE8;
  *(v10 + 72) = v6[1];
  *(v10 + 136) = v11;
  *(v10 + 144) = &off_284193BE8;
  *(v10 + 112) = v8;
  *(v10 + 120) = v7;
  *(v10 + 176) = MEMORY[0x277D84A28];
  *(v10 + 184) = &off_284193BA8;
  *(v10 + 152) = v9;
  v12 = *(*a1 + 192);
  sub_22DF051C0(&v16, v14);
  sub_22DF051C0(&v15, v14);

  v12(v10);

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

unint64_t sub_22DF04FFC()
{
  result = qword_27DA47688;
  if (!qword_27DA47688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiskCacheError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DiskCacheError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22DF0521C(uint64_t a1)
{
  v4 = *(sub_22DF63594() - 8);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  result = sub_22DF63544();
  v8 = 0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_5;
  }

  if (v7 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = v7;
LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22DF65900;
  *(v9 + 56) = MEMORY[0x277D84A28];
  *(v9 + 64) = &off_284193BA8;
  *(v9 + 32) = v8;
  (*(*a1 + 192))();

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF05380(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_22DF0AB08(0, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v24)
  {
    sub_22DF0AB08(3, a1, MEMORY[0x277D837D0], &off_284193BD8);
    v6 = MEMORY[0x277D839B0];
    v27 = v3;
    sub_22DF0AA90(1, a1, MEMORY[0x277D839B0], &off_284193B58);
    sub_22DF0AA90(2, a1, v6, &off_284193B58);
    v7 = sub_22DF40530(v23, v23);
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v27;
    sub_22DF40550(v4, v5, v23, v24, v7 & 0x101, v9, v12, v25);
    v14 = *v13;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v13 = v14;
    if ((result & 1) == 0)
    {
      result = sub_22DF040BC(0, *(v14 + 16) + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_22DF040BC((v16 > 1), v17 + 1, 1, v14);
      v14 = result;
      *v13 = result;
    }

    *(v14 + 16) = v17 + 1;
    v18 = v14 + 56 * v17;
    v19 = v25[0];
    v20 = v25[1];
    v21 = v25[2];
    *(v18 + 80) = v26;
    *(v18 + 48) = v20;
    *(v18 + 64) = v21;
    *(v18 + 32) = v19;
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0559C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_22DF0AB08(0, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v10)
  {
    v3 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_22DF03FB0(0, *(v3 + 16) + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v6 >= v5 >> 1)
    {
      result = sub_22DF03FB0((v5 > 1), v6 + 1, 1, v3);
      v3 = result;
      *v2 = result;
    }

    *(v3 + 16) = v6 + 1;
    v7 = v3 + 16 * v6;
    *(v7 + 32) = v9;
    *(v7 + 40) = v10;
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF056B8(uint64_t a1)
{
  v3 = v1;
  v5 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47690, &qword_22DF663D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22DF65900;
  *(v6 + 56) = MEMORY[0x277D84A28];
  *(v6 + 64) = &off_284193BA8;
  *(v6 + 32) = v5;
  (*(*a1 + 192))();

  if (!v2)
  {
    return (*(*a1 + 176))(result);
  }

  return result;
}

uint64_t sub_22DF057F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  sub_22DF0AB08(2, a1, MEMORY[0x277D837D0], &off_284193BD8);
  if (v23)
  {
    sub_22DF0AA90(0, a1, MEMORY[0x277D839F8], &off_284193BB8);
    sub_22DF0AA90(1, a1, MEMORY[0x277D84A28], &off_284193B98);
    result = sub_22DEFA734(v22, 0x4D656E4F646E6553);
    if (!v2)
    {
      v9 = result;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = *v4;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v13;
      if ((result & 1) == 0)
      {
        result = sub_22DF03E68(0, v13[2] + 1, 1, v13);
        v13 = result;
        *v4 = result;
      }

      v14 = v13[2];
      v15 = v13[3];
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v21 = v14 + 1;
        v19 = v13;
        v20 = v13[2];
        result = sub_22DF03E68((v15 > 1), v14 + 1, 1, v19);
        v14 = v20;
        v16 = v21;
        v13 = result;
        *v4 = result;
      }

      v13[2] = v16;
      v17 = &v13[5 * v14];
      v17[4] = v22;
      v17[5] = v9;
      v17[6] = v10;
      v17[7] = v11;
      v17[8] = v12;
    }
  }

  else
  {
    sub_22DF04394();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF059C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22DF05A48()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E590);
  __swift_project_value_buffer(v0, qword_27DA4E590);
  return sub_22DF63724();
}

uint64_t sub_22DF05B04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22DEF1598;

  return sub_22DF05D94();
}

uint64_t sub_22DF05BA4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF05BD4()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_22DF05C0C()
{
  v2 = *(*v0 + 88);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_22DEEFBD4;

  return v6();
}

uint64_t sub_22DF05D1C()
{
  v0 = PostInstallActivityConfig.activityFlags.unsafeMutableAddressor();
  swift_beginAccess();
  v1 = *v0;
}

uint64_t sub_22DF05D60()
{
  v0 = PostInstallActivityConfig.identifier.unsafeMutableAddressor();
  v1 = *v0;
  v2 = *(v0 + 1);

  return v1;
}

uint64_t sub_22DF05D94()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = sub_22DF63344();
  v0[18] = v1;
  v2 = *(v1 - 8);
  v0[19] = v2;
  v3 = *(v2 + 64) + 15;
  v0[20] = swift_task_alloc();
  v4 = sub_22DF63444();
  v0[21] = v4;
  v5 = *(v4 - 8);
  v0[22] = v5;
  v6 = *(v5 + 64) + 15;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22DF05F08, 0, 0);
}

uint64_t sub_22DF05F08()
{
  v154 = v0;
  v153[9] = *MEMORY[0x277D85DE8];
  v137 = [objc_opt_self() defaultManager];
  if (qword_27DA49748 != -1)
  {
LABEL_66:
    swift_once();
  }

  v1 = *(qword_27DA4E5A8 + 16);
  v140 = v0;
  if (v1)
  {
    v2 = v0[22];
    v3 = v0[19];
    v144 = *MEMORY[0x277CC91C0];
    v142 = (v3 + 104);
    v141 = (v3 + 8);
    v4 = (v2 + 8);
    v148 = (v2 + 16);
    v5 = (qword_27DA4E5A8 + 40);
    v146 = (v2 + 8);
    do
    {
      v7 = v0[26];
      v6 = v0[27];
      v9 = v0[20];
      v8 = v0[21];
      v10 = v0[18];
      v11 = *(v5 - 1);
      v12 = *v5;
      v150 = v5;

      sub_22DEFFC78();
      v0[14] = v11;
      v0[15] = v12;
      (*v142)(v9, v144, v10);
      sub_22DF06E10();
      sub_22DF63434();
      (*v141)(v9, v10);
      v13 = *v4;
      (*v4)(v7, v8);

      v151 = v13;
      if (sub_22DF633C4())
      {
        if (qword_27DA49740 != -1)
        {
          swift_once();
        }

        v14 = v0[27];
        v15 = v0[25];
        v16 = v0[21];
        v17 = sub_22DF63734();
        __swift_project_value_buffer(v17, qword_27DA4E590);
        v136 = *v148;
        (*v148)(v15, v14, v16);
        v18 = sub_22DF63714();
        v19 = sub_22DF63D24();
        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[25];
        v22 = v0[21];
        if (v20)
        {
          v23 = v1;
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v153[0] = v25;
          *v24 = 136446210;
          v26 = sub_22DF63404();
          v27 = v13;
          v28 = v26;
          v30 = v29;
          v27(v21, v22);
          v31 = sub_22DEF0354(v28, v30, v153);

          *(v24 + 4) = v31;
          _os_log_impl(&dword_22DEEA000, v18, v19, "removing %{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v25);
          MEMORY[0x2318DDBE0](v25, -1, -1);
          v32 = v24;
          v1 = v23;
          v0 = v140;
          MEMORY[0x2318DDBE0](v32, -1, -1);
        }

        else
        {

          v13(v21, v22);
        }

        v52 = v0[27];
        v53 = sub_22DF63394();
        v0[16] = 0;
        v54 = [v137 removeItemAtURL:v53 error:v0 + 16];

        v55 = v0[16];
        v56 = v0[27];
        if (v54)
        {
          v57 = v0[21];
          v58 = v55;
          v4 = v146;
          v151(v56, v57);
        }

        else
        {
          v135 = v1;
          v59 = v0[23];
          v60 = v0[21];
          v61 = v55;
          v62 = sub_22DF63334();

          swift_willThrow();
          v136(v59, v56, v60);
          v63 = v62;
          v64 = sub_22DF63714();
          v65 = sub_22DF63D04();

          v66 = os_log_type_enabled(v64, v65);
          v67 = v0[27];
          v68 = v0[23];
          v69 = v0[21];
          if (v66)
          {
            v70 = swift_slowAlloc();
            v139 = v67;
            v71 = swift_slowAlloc();
            v153[0] = v71;
            *v70 = 136446466;
            v72 = sub_22DF63404();
            v74 = v73;
            v151(v68, v69);
            v75 = sub_22DEF0354(v72, v74, v153);

            *(v70 + 4) = v75;
            *(v70 + 12) = 2082;
            swift_getErrorValue();
            v77 = v0[11];
            v76 = v0[12];
            v78 = v0[13];
            v79 = sub_22DF64244();
            v81 = sub_22DEF0354(v79, v80, v153);

            *(v70 + 14) = v81;
            _os_log_impl(&dword_22DEEA000, v64, v65, "failed removing %{public}s: %{public}s", v70, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2318DDBE0](v71, -1, -1);
            MEMORY[0x2318DDBE0](v70, -1, -1);

            v4 = v146;
            v151(v139, v69);
          }

          else
          {

            v4 = v146;
            v151(v68, v69);
            v151(v67, v69);
          }

          v1 = v135;
        }
      }

      else
      {
        if (qword_27DA49740 != -1)
        {
          swift_once();
        }

        v33 = v0[27];
        v34 = v0[24];
        v35 = v0[21];
        v36 = sub_22DF63734();
        __swift_project_value_buffer(v36, qword_27DA4E590);
        (*v148)(v34, v33, v35);
        v37 = sub_22DF63714();
        v38 = sub_22DF63CF4();
        v39 = os_log_type_enabled(v37, v38);
        v40 = v0[27];
        v41 = v0[24];
        v42 = v0[21];
        if (v39)
        {
          v138 = v0[27];
          v43 = swift_slowAlloc();
          v44 = v1;
          v45 = swift_slowAlloc();
          v153[0] = v45;
          *v43 = 136446210;
          v46 = sub_22DF63404();
          v48 = v47;
          v151(v41, v42);
          v49 = v46;
          v4 = v146;
          v50 = sub_22DEF0354(v49, v48, v153);

          *(v43 + 4) = v50;
          _os_log_impl(&dword_22DEEA000, v37, v38, "skipping %{public}s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v45);
          v51 = v45;
          v1 = v44;
          v0 = v140;
          MEMORY[0x2318DDBE0](v51, -1, -1);
          MEMORY[0x2318DDBE0](v43, -1, -1);

          v151(v138, v42);
        }

        else
        {

          v151(v41, v42);
          v151(v40, v42);
        }
      }

      v5 = v150 + 2;
      --v1;
    }

    while (v1);
  }

  v82 = sub_22DF2E6B4();
  swift_beginAccess();
  v83 = [*v82 dictionaryRepresentation];
  v84 = sub_22DF638E4();

  v85 = v84 + 64;
  v86 = -1 << *(v84 + 32);
  if (-v86 < 64)
  {
    v87 = ~(-1 << -v86);
  }

  else
  {
    v87 = -1;
  }

  v88 = v87 & *(v84 + 64);
  v147 = v84;

  v152 = v82;
  swift_beginAccess();
  v89 = 0;
  v90 = (63 - v86) >> 6;
  v143 = v84 + 64;
  v145 = v90;
  if (v88)
  {
    do
    {
      while (1)
      {
LABEL_33:
        v92 = (*(v147 + 48) + ((v89 << 10) | (16 * __clz(__rbit64(v88)))));
        v93 = *v92;
        v94 = v92[1];
        v95 = qword_27DA49740;

        if (v95 != -1)
        {
          swift_once();
        }

        v96 = sub_22DF63734();
        __swift_project_value_buffer(v96, qword_27DA4E590);

        v97 = sub_22DF63714();
        v98 = sub_22DF63CF4();

        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v153[0] = v100;
          *v99 = 136446210;
          *(v99 + 4) = sub_22DEF0354(v93, v94, v153);
          _os_log_impl(&dword_22DEEA000, v97, v98, "default set: %{public}s", v99, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v100);
          MEMORY[0x2318DDBE0](v100, -1, -1);
          MEMORY[0x2318DDBE0](v99, -1, -1);
        }

        if (qword_27DA49750 != -1)
        {
          swift_once();
        }

        v149 = (v88 - 1) & v88;
        v101 = qword_27DA4E5B0;
        if (*(qword_27DA4E5B0 + 16))
        {
          v102 = *(qword_27DA4E5B0 + 40);
          sub_22DF642A4();
          sub_22DF63A54();
          v103 = sub_22DF642D4();
          v104 = -1 << *(v101 + 32);
          v105 = v103 & ~v104;
          if ((*(v101 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
          {
            break;
          }
        }

LABEL_48:
        if (qword_27DA49758 != -1)
        {
          swift_once();
        }

        v109 = qword_27DA4E5B8;
        v110 = *(qword_27DA4E5B8 + 16);
        if (v110)
        {
          swift_beginAccess();
          v111 = (v109 + 40);
          do
          {
            v114 = *(v111 - 1);
            v115 = *v111;

            LOBYTE(v114) = sub_22DF63AE4();

            if (v114)
            {

              v116 = sub_22DF63714();
              v117 = sub_22DF63D24();

              if (os_log_type_enabled(v116, v117))
              {
                v118 = swift_slowAlloc();
                v119 = swift_slowAlloc();
                v153[0] = v119;
                *v118 = 136446210;
                *(v118 + 4) = sub_22DEF0354(v93, v94, v153);
                _os_log_impl(&dword_22DEEA000, v116, v117, "removing default %{public}s", v118, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v119);
                MEMORY[0x2318DDBE0](v119, -1, -1);
                MEMORY[0x2318DDBE0](v118, -1, -1);
              }

              v112 = *v152;
              v113 = sub_22DF63984();
              [v112 removeObjectForKey_];
            }

            v111 += 2;
            --v110;
          }

          while (v110);

          v0 = v140;
          v85 = v143;
        }

        else
        {

          v0 = v140;
        }

        v88 = v149;
        v90 = v145;
        if (!v149)
        {
          goto LABEL_29;
        }
      }

      v106 = ~v104;
      while (1)
      {
        v107 = (*(v101 + 48) + 16 * v105);
        v108 = *v107 == v93 && v107[1] == v94;
        if (v108 || (sub_22DF64184() & 1) != 0)
        {
          break;
        }

        v105 = (v105 + 1) & v106;
        if (((*(v101 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v120 = sub_22DF63714();
      v121 = sub_22DF63D24();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v153[0] = v123;
        *v122 = 136446210;
        *(v122 + 4) = sub_22DEF0354(v93, v94, v153);
        _os_log_impl(&dword_22DEEA000, v120, v121, "removing default %{public}s", v122, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v123);
        MEMORY[0x2318DDBE0](v123, -1, -1);
        MEMORY[0x2318DDBE0](v122, -1, -1);
      }

      v85 = v143;
      v88 = v149;
      v124 = *v152;
      v125 = sub_22DF63984();

      [v124 removeObjectForKey_];

      v0 = v140;
      v90 = v145;
    }

    while (v149);
  }

  while (1)
  {
LABEL_29:
    v91 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v91 >= v90)
    {
      break;
    }

    v88 = *(v85 + 8 * v91);
    ++v89;
    if (v88)
    {
      v89 = v91;
      goto LABEL_33;
    }
  }

  v126 = v0[26];
  v127 = v0[27];
  v129 = v0[24];
  v128 = v0[25];
  v130 = v0[23];
  v131 = v0[20];

  v132 = v0[1];
  v133 = *MEMORY[0x277D85DE8];

  return v132();
}

unint64_t sub_22DF06D70(uint64_t a1)
{
  result = sub_22DF06D98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22DF06D98()
{
  result = qword_27DA476C0;
  if (!qword_27DA476C0)
  {
    type metadata accessor for PostInstallActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476C0);
  }

  return result;
}

unint64_t sub_22DF06E10()
{
  result = qword_27DA476C8;
  if (!qword_27DA476C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476C8);
  }

  return result;
}

uint64_t sub_22DF06E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  v18 = type metadata accessor for StorebagSectionMaybeShared();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v17 = (&v17 - v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF642F4();
  if (v2)
  {

    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_22DF070C0(v19);
    sub_22DEF2388(a1, v21);
    sub_22DF63CA4();
    v12 = v18;
    swift_storeEnumTagMultiPayload();
    v13 = *(v4 + 32);
    v14 = v17;
    v13(v17, v8, v12);
  }

  else
  {
    sub_22DF07128(v19, v21);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    v11 = sub_22DF64194();
    v14 = v17;
    v12 = v18;
    *v17 = v11;
    v14[1] = v15;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_0(v21);
    v13 = *(v4 + 32);
  }

  v13(v22, v14, v12);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22DF070C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476D0, "DC");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF07128(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22DF07140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return sub_22DF06E64(a1, a3);
}

uint64_t sub_22DF0716C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  v6 = 0xE600000000000000;
  v7 = 0x6E6F69746361;
  if (a1 != 4)
  {
    v7 = 0x6F697469646E6F63;
    v6 = 0xE90000000000006ELL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 7955819;
  if (a1 != 1)
  {
    v9 = 0x7365756C6176;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1937335659;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x65756C6176)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69746361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE90000000000006ELL;
      if (v10 != 0x6F697469646E6F63)
      {
LABEL_34:
        v13 = sub_22DF64184();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7955819)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7365756C6176)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1937335659)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_22DF07334()
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF07424()
{
  *v0;
  *v0;
  *v0;
  sub_22DF63A54();
}

uint64_t sub_22DF07504()
{
  sub_22DF642A4();
  sub_22DF63A54();

  return sub_22DF642D4();
}

uint64_t sub_22DF075F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22DF08420();
  *a2 = result;
  return result;
}

void sub_22DF07620(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1937335659;
  v5 = 0xE500000000000000;
  v6 = 0x65756C6176;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69746361;
  if (v2 != 4)
  {
    v8 = 0x6F697469646E6F63;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7955819;
  if (v2 != 1)
  {
    v10 = 0x7365756C6176;
    v9 = 0xE600000000000000;
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

uint64_t sub_22DF076C8()
{
  v1 = *v0;
  v2 = 1937335659;
  v3 = 0x65756C6176;
  v4 = 0x6E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7955819;
  if (v1 != 1)
  {
    v5 = 0x7365756C6176;
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

uint64_t sub_22DF0776C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22DF08420();
  *a1 = result;
  return result;
}

uint64_t sub_22DF077A0(uint64_t a1)
{
  v2 = sub_22DF08BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF077DC(uint64_t a1)
{
  v2 = sub_22DF08BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF07818(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22DF03FB0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 sub_22DF0790C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22DF07AD8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_22DF07974()
{
  v1 = 0x6E6F69746361;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    v1 = 1937335659;
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

uint64_t sub_22DF079E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22DF09094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22DF07A18(uint64_t a1)
{
  v2 = sub_22DF08BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF07A54(uint64_t a1)
{
  v2 = sub_22DF08BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22DF07A90@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22DF0810C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_22DF07AD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47720, &unk_22DF667B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF08BA8();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v43 = v6;
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  LOBYTE(v44) = 0;
  sub_22DF08C50();
  sub_22DF64094();
  if (v49[0])
  {
    sub_22DF07818(v49[0]);
  }

  LOBYTE(v44) = 1;
  sub_22DF640E4();
  sub_22DF07818(v49[0]);
  LOBYTE(v49[0]) = 1;
  v42 = sub_22DF640C4();
  v12 = v11;
  v41 = a2;
  v40 = 0;
  v13 = v55;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_22DF03FB0(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  v16 = v40;
  if (v15 >= v14 >> 1)
  {
    v39 = sub_22DF03FB0((v14 > 1), v15 + 1, 1, v13);
    v16 = v40;
    v13 = v39;
  }

  *(v13 + 2) = v15 + 1;
  v17 = &v13[16 * v15];
  *(v17 + 4) = v42;
  *(v17 + 5) = v12;
  v55 = v13;
  v18 = v41;
  v54 = MEMORY[0x277D84F90];
  LOBYTE(v44) = 2;
  sub_22DF64094();
  if (v16)
  {
    (*(v43 + 8))(v9, v5);

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v49[0])
  {
    sub_22DF07818(v49[0]);
  }

  LOBYTE(v44) = 3;
  sub_22DF640E4();
  sub_22DF07818(v49[0]);
  LOBYTE(v49[0]) = 3;
  v20 = sub_22DF640C4();
  v41 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_22DF03FB0(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_22DF03FB0((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[16 * v26];
  *(v27 + 4) = v21;
  *(v27 + 5) = v23;
  v28 = v55;
  LOBYTE(v49[0]) = 4;
  v29 = sub_22DF640C4();
  v31 = v30;
  v42 = v29;
  v50 = 5;
  sub_22DF08D50();
  sub_22DF64094();
  (*(v43 + 8))(v9, v5);
  v43 = v51;
  v32 = v52;
  v40 = *(&v51 + 1);
  v33 = *(&v52 + 1);
  v34 = v53;
  *&v44 = v28;
  *(&v44 + 1) = v24;
  v35 = v42;
  *&v45 = v42;
  *(&v45 + 1) = v31;
  v46 = v51;
  v47 = v52;
  v48 = v53;
  sub_22DF08DA4(&v44, v49);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v49[0] = v28;
  v49[1] = v24;
  v49[2] = v35;
  v49[3] = v31;
  v49[4] = v43;
  v49[5] = v40;
  v49[6] = v32;
  v49[7] = v33;
  v49[8] = v34;
  result = sub_22DF08DDC(v49);
  v36 = v47;
  v37 = v41;
  *(v41 + 32) = v46;
  *(v37 + 48) = v36;
  *(v37 + 64) = v48;
  v38 = v45;
  *v37 = v44;
  *(v37 + 16) = v38;
  return result;
}

uint64_t sub_22DF0810C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476F8, &unk_22DF667A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF08BFC();
  sub_22DF64304();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v23) = 0;
  v19 = sub_22DF640C4();
  v20 = a2;
  v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
  v22 = 1;
  sub_22DF08C50();
  sub_22DF64094();
  v18 = v23;
  v22 = 2;
  sub_22DF64094();
  v12 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47708, &qword_22DF667B0);
  v22 = 3;
  sub_22DF08CCC();
  sub_22DF64094();
  (*(v6 + 8))(v9, v5);
  v13 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = v20;
  v16 = v21;
  *v20 = v19;
  v15[1] = v16;
  v15[2] = v18;
  v15[3] = v12;
  v15[4] = v13;
  return result;
}

uint64_t sub_22DF08420()
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

unint64_t sub_22DF08470()
{
  result = qword_27DA476D8;
  if (!qword_27DA476D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476D8);
  }

  return result;
}

unint64_t sub_22DF084C8()
{
  result = qword_27DA476E0;
  if (!qword_27DA476E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476E0);
  }

  return result;
}

unint64_t sub_22DF08520()
{
  result = qword_27DA476E8;
  if (!qword_27DA476E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476E8);
  }

  return result;
}

uint64_t sub_22DF0857C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22DF085E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_22DF08700(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools24StorebagSectionConditionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22DF088F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_22DF0893C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionFilter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StorebagSectionFilter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22DF08B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22DF08B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22DF08BA8()
{
  result = qword_27DA476F0;
  if (!qword_27DA476F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA476F0);
  }

  return result;
}

unint64_t sub_22DF08BFC()
{
  result = qword_27DA49D60[0];
  if (!qword_27DA49D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA49D60);
  }

  return result;
}

unint64_t sub_22DF08C50()
{
  result = qword_27DA47700;
  if (!qword_27DA47700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47670, &qword_22DF67510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47700);
  }

  return result;
}

unint64_t sub_22DF08CCC()
{
  result = qword_27DA47710;
  if (!qword_27DA47710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47708, &qword_22DF667B0);
    sub_22DF08D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47710);
  }

  return result;
}

unint64_t sub_22DF08D50()
{
  result = qword_27DA47718;
  if (!qword_27DA47718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47718);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorebagSectionCondition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StorebagSectionCondition.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22DF08F90()
{
  result = qword_27DA49E70[0];
  if (!qword_27DA49E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA49E70);
  }

  return result;
}

unint64_t sub_22DF08FE8()
{
  result = qword_27DA49F80;
  if (!qword_27DA49F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA49F80);
  }

  return result;
}

unint64_t sub_22DF09040()
{
  result = qword_27DA49F88[0];
  if (!qword_27DA49F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA49F88);
  }

  return result;
}

uint64_t sub_22DF09094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_22DF64184() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937335659 && a2 == 0xE400000000000000 || (sub_22DF64184() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_22DF64184() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xEA0000000000736ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_22DF64184();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t SessionConfiguration.Availability.hashValue.getter(unsigned __int8 a1)
{
  sub_22DF642A4();
  MEMORY[0x2318DD240](a1);
  return sub_22DF642D4();
}

uint64_t sub_22DF09280()
{
  v1 = v0;
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SessionConfiguration.Backend(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DF09440(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22DF09508(v9, type metadata accessor for SessionConfiguration.Backend);
    return 0x6C61636F6CLL;
  }

  else
  {
    sub_22DF094A4(v9, v5);
    v10 = *v5;
    v11 = v5[1];

    sub_22DF09508(v5, type metadata accessor for SessionConfiguration.BackendHTTP);
  }

  return v10;
}

uint64_t sub_22DF09408(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF09440(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF094A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF09508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DF0956C()
{
  v1 = *(v0 + *(type metadata accessor for SessionConfiguration.BackendHTTP(0) + 32));
}

uint64_t sub_22DF095A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a3;
  v14 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v15 = v14[7];
  v16 = sub_22DF63444();
  result = (*(*(v16 - 8) + 32))(a8 + v15, a4, v16);
  *(a8 + v14[8]) = a5;
  *(a8 + v14[9]) = a6;
  *(a8 + v14[10]) = a7;
  return result;
}

uint64_t sub_22DF09670@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void sub_22DF09680(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  *(a1 + 16) = 1;
  *(a1 + 24) = 1701736302;
  *(a1 + 32) = 0xE400000000000000;
}

unint64_t sub_22DF096AC()
{
  result = qword_27DA47BE0;
  if (!qword_27DA47BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47BE0);
  }

  return result;
}

uint64_t sub_22DF09700(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22DF09748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF097B0()
{
  result = type metadata accessor for SessionConfiguration.BackendHTTP(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22DF09840()
{
  sub_22DF09904();
  if (v0 <= 0x3F)
  {
    sub_22DF63444();
    if (v1 <= 0x3F)
    {
      sub_22DF09954();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22DF09904()
{
  if (!qword_27DA47728)
  {
    v0 = sub_22DF63BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA47728);
    }
  }
}

void sub_22DF09954()
{
  if (!qword_27DA47730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DA47BB0, "2?");
    v0 = sub_22DF63BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA47730);
    }
  }
}

const char *sub_22DF099C8(int a1, uint64_t a2, uint64_t a3)
{
  v4 = 0x6F727245204C5153;
  if (a3)
  {
    v4 = a2;
  }

  v9 = v4;

  MEMORY[0x2318DCA20](8250, 0xE200000000000000);

  result = sqlite3_errstr(a1);
  if (result)
  {
    v6 = sub_22DF63AA4();
    v8 = v7;

    MEMORY[0x2318DCA20](v6, v8);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22DF09AA8()
{
  v1 = 0x6465736F6C63;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000026;
  }

  v2 = 0xD00000000000001ALL;
  if (*v0)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t type metadata accessor for SQLiteDB.Location()
{
  result = qword_27DA4A5C0;
  if (!qword_27DA4A5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF09B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDB.Location();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_22DF09BDC(uint64_t a1)
{
  v2 = v1;
  ppDb[1] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v5 = sub_22DF63444();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = ppDb - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SQLiteDB.Location();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = ppDb - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  ppDb[0] = 0;
  sub_22DF09B78(a1, v13);
  if ((*(v6 + 48))(v13, 1, v5) != 1)
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_22DF63404();
    (*(v6 + 8))(v9, v5);
  }

  v14 = sub_22DF63A34();

  v15 = sqlite3_open_v2((v14 + 32), ppDb, 32774, 0);

  v16 = ppDb[0];
  if (!ppDb[0] || v15)
  {
    sub_22DF0A208();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = 0xD000000000000017;
    *(v17 + 16) = 0x800000022DF6E3F0;
    swift_willThrow();
    sub_22DF0B374(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_22DF0B374(a1);
    v2[2] = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22DF09E94()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    sqlite3_close_v2(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t sub_22DF09EDC()
{
  v1 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22DF63AA4();
  sqlite3_free(v2);
  return v3;
}

uint64_t sub_22DF09F38()
{
  v1 = v0;
  v2 = sqlite3_step(*(v0 + 16));
  if (v2 == 101)
  {
    swift_beginAccess();
    *(v0 + 24) = 1;
    return 0;
  }

  else if (v2 == 100)
  {
  }

  else
  {
    v3 = v2;
    sub_22DF63F24();

    strcpy(v9, "Statement ((");
    BYTE5(v9[1]) = 0;
    HIWORD(v9[1]) = -5120;
    v5 = (*(*v0 + 96))(v4);
    MEMORY[0x2318DCA20](v5);

    MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
    v1 = v9[0];
    v6 = v9[1];
    sub_22DF0A208();
    swift_allocError();
    *v7 = v3;
    *(v7 + 8) = v1;
    *(v7 + 16) = v6;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_22DF0A08C(void (*a1)(uint64_t))
{
  v4 = *(v1 + 16);
  while (1)
  {
    v5 = sqlite3_step(v4);
    if (v5 != 100)
    {
      break;
    }

    a1(v6);

    if (v2)
    {
      return result;
    }
  }

  if (v5 == 101)
  {
    result = swift_beginAccess();
    *(v1 + 24) = 1;
  }

  else
  {
    v8 = v5;
    sub_22DF63F24();

    strcpy(v14, "Statement ((");
    BYTE5(v14[1]) = 0;
    HIWORD(v14[1]) = -5120;
    v10 = (*(*v1 + 96))(v9);
    MEMORY[0x2318DCA20](v10);

    MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
    v11 = v14[0];
    v12 = v14[1];
    sub_22DF0A208();
    swift_allocError();
    *v13 = v8;
    *(v13 + 8) = v11;
    *(v13 + 16) = v12;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_22DF0A208()
{
  result = qword_27DA47738;
  if (!qword_27DA47738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47738);
  }

  return result;
}

uint64_t sub_22DF0A25C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  result = sub_22DF09F38();
  if (!v4)
  {
    if (result)
    {
      a1();
      if (sub_22DF09F38())
      {

        v11 = *(v3 + 16);
        do
        {
          v12 = sqlite3_step(v11);
        }

        while (v12 == 100);
        if (v12 == 101)
        {
          swift_beginAccess();
          v5[24] = 1;
          sub_22DF0A4D0();
          swift_allocError();
          *v13 = 1;
        }

        else
        {
          v14 = v12;
          sub_22DF63F24();

          strcpy(v20, "Statement ((");
          BYTE5(v20[1]) = 0;
          HIWORD(v20[1]) = -5120;
          v16 = (*(*v5 + 96))(v15);
          MEMORY[0x2318DCA20](v16);

          MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
          v17 = v20[0];
          v18 = v20[1];
          sub_22DF0A208();
          swift_allocError();
          *v19 = v14;
          *(v19 + 8) = v17;
          *(v19 + 16) = v18;
        }

        swift_willThrow();

        return (*(*(a2 - 8) + 8))(a3, a2);
      }

      else
      {
      }
    }

    else
    {
      sub_22DF0A4D0();
      swift_allocError();
      *v10 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_22DF0A4D0()
{
  result = qword_27DA47740;
  if (!qword_27DA47740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47740);
  }

  return result;
}

uint64_t sub_22DF0A524(uint64_t a1, uint64_t a2)
{
  v4[2] = a1;
  v4[3] = a2;
  return (*(*v2 + 152))(sub_22DF0A584, v4, a1);
}

uint64_t sub_22DF0A584(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_22DF0A640(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  v3 = *(*v2 + 152);
  v4 = sub_22DF63E24();
  return v3(sub_22DF0A6D0, v6, v4);
}

uint64_t sub_22DF0A6D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (sqlite3_column_count(*(a1 + 16)) == 1)
  {
    v4 = *(v2 + 8);

    return v4(v5, 0, v3, v2);
  }

  else
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_22DF0A78C()
{
  v1 = *(v0 + 16);
  do
  {
    v2 = sqlite3_step(v1);
  }

  while (v2 == 100);
  if (v2 == 101)
  {
    result = swift_beginAccess();
    *(v0 + 24) = 1;
  }

  else
  {
    v4 = v2;
    sub_22DF63F24();

    strcpy(v10, "Statement ((");
    BYTE5(v10[1]) = 0;
    HIWORD(v10[1]) = -5120;
    v6 = (*(*v0 + 96))(v5);
    MEMORY[0x2318DCA20](v6);

    MEMORY[0x2318DCA20](0xD000000000000018, 0x800000022DF6E160);
    v7 = v10[0];
    v8 = v10[1];
    sub_22DF0A208();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v7;
    *(v9 + 16) = v8;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0A8D0(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  return (*(v5 + 8))(v2, a1, v4, v5);
}

uint64_t sub_22DF0A944(uint64_t result)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 != v4)
    {
      if (v3 >= v4)
      {
        goto LABEL_11;
      }

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_12;
      }

      *&v11[0] = v3;
      result = sub_22DEF2388(v5 + 40 * v3, v11 + 8);
      v6 = v11[0];
      v8 = v11[1];
      v9 = v11[2];
    }

    v12[0] = v6;
    v12[1] = v8;
    v12[2] = v9;
    if (!v9)
    {
      return result;
    }

    v10 = v6;
    sub_22DF07128((v12 + 8), v11);
    result = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    (*(*v1 + 184))(result, v11);
    result = __swift_destroy_boxed_opaque_existential_0(v11);
    v3 = v7;
    if (v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22DF0AA58()
{
  sqlite3_finalize(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22DF0AA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_22DF0AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);

  return v8(a2, a1, a3, a4);
}

uint64_t sub_22DF0ABB4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_22DF0AC48(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22DF0AC80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if ((*(*v3 + 96))())
  {
    sub_22DF0A208();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x800000022DF6E180;
    return swift_willThrow();
  }

  else
  {
    v8 = v3[2];
    result = sub_22DF0AD80();
    if (!v4)
    {
      a3();
    }
  }

  return result;
}

uint64_t sub_22DF0AD80()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 112);
  if (*(v1 + 24))
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v2 = 3;
LABEL_8:
    result = swift_willThrow();
    goto LABEL_9;
  }

  v10[0] = 0;
  v3 = sub_22DF63A34();
  v4 = *(v3 + 16);
  if (v4 >> 31)
  {
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(*(v1 + 16), (v3 + 32), v4, v10, 0);

  v6 = v10[0];
  if (!v10[0] || v5)
  {
    sub_22DF0A208();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = 0xD00000000000001BLL;
    *(v8 + 16) = 0x800000022DF6E410;
    goto LABEL_8;
  }

  type metadata accessor for SQLiteDB.Statement();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v6;
LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22DF0AF00()
{
  v1 = *(v0 + 112);
  if (*(v1 + 24))
  {
    sub_22DF0A4D0();
    swift_allocError();
    *v2 = 3;
  }

  else
  {
    v3 = *(v1 + 16);
    v4 = sub_22DF63A34();
    v5 = sqlite3_exec(v3, (v4 + 32), 0, 0, 0);

    if (!v5)
    {
      return result;
    }

    sub_22DF0A208();
    swift_allocError();
    *v7 = v5;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
  }

  return swift_willThrow();
}

uint64_t sub_22DF0AFF4()
{
  v2 = v0;
  if ((*(*v0 + 96))())
  {
    sub_22DF0A208();
    swift_allocError();
    *v3 = 1;
    *(v3 + 8) = 0xD00000000000001DLL;
    *(v3 + 16) = 0x800000022DF6E180;
    return swift_willThrow();
  }

  else
  {
    v5 = v0[2];
    result = sub_22DF0AF00();
    if (!v1)
    {
      return (*(*v2 + 104))(1);
    }
  }

  return result;
}

uint64_t sub_22DF0B0F4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22DF0B12C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_22DF0B17C(a1);
  return v2;
}

void *sub_22DF0B17C(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for SQLiteDB.Location();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_22DF09B78(a1, v9);
  type metadata accessor for SQLiteDB.DBHandle();
  v10 = swift_allocObject();
  sub_22DF09BDC(v9);
  if (!v2)
  {
    v11 = 0xD000000000000013;
    v12 = sqlite3_exec(*(v10 + 16), "PRAGMA journal_mode=WAL;", 0, 0, 0);
    if (v12)
    {
      v13 = v12;
      v14 = "PRAGMA journal_mode=WAL;";
      v11 = 0xD000000000000014;
    }

    else
    {
      v15 = sqlite3_exec(*(v10 + 16), "PRAGMA foreign_keys=ON;", 0, 0, 0);
      if (!v15)
      {
        sub_22DF0B374(a1);
        v3[14] = v10;
        return v3;
      }

      v13 = v15;
      v14 = "PRAGMA foreign_keys=ON;";
    }

    v16 = v14 | 0x8000000000000000;
    sub_22DF0A208();
    swift_allocError();
    *v17 = v13;
    *(v17 + 8) = v11;
    *(v17 + 16) = v16;
    swift_willThrow();
  }

  swift_defaultActor_destroy();
  sub_22DF0B374(a1);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_22DF0B374(uint64_t a1)
{
  v2 = type metadata accessor for SQLiteDB.Location();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF0B3D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = sub_22DF0AD80();
  if (!v3)
  {
    a3();
  }

  return result;
}

uint64_t sub_22DF0B42C(void (*a1)(uint64_t))
{
  type metadata accessor for SQLiteDB.Transaction();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v1;

  sub_22DF0AF00();
  if (!v2)
  {
    a1(v4);
    swift_beginAccess();
    if ((*(v4 + 24) & 1) == 0)
    {
      sub_22DF0AF00();
    }
  }
}

uint64_t sub_22DF0B5B0()
{
  v1 = *(v0 + 112);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return sqlite3_close_v2(*(v1 + 16));
  }

  return result;
}

uint64_t sub_22DF0B5D0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DF0B608(uint64_t result, uint64_t a2, char a3)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3 & 1);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x800000022DF6E240;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0B6B0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4 > 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B73C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2 < 0xFFFFFFFF80000000 || a3 < 0xFFFFFFFF80000000)
  {
    goto LABEL_9;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int(*(result + 16), a2, a3);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000012;
    *(v4 + 16) = 0x800000022DF6E240;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0B7F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B880@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, sqlite3_int64 *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_int64(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B8E8(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_int64(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000014;
    *(v4 + 16) = 0x800000022DF6E260;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0B990@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v4 = sqlite3_column_double(*(result + 16), a2);

    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF0B9F8(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = sqlite3_bind_double(*(result + 16), a2, *v2);
  if (result)
  {
    v3 = result;
    sub_22DF0A208();
    swift_allocError();
    *v4 = v3;
    *(v4 + 8) = 0xD000000000000015;
    *(v4 + 16) = 0x800000022DF6E280;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0BAA0(sqlite3_stmt *a1, uint64_t a2)
{
  v5 = sub_22DF63A34();
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(v5 + 16);
  if (!(v2 >> 31))
  {
    a1 = *(a1 + 2);
    if (qword_27DA4A130 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v9 = v5;
  swift_once();
  v5 = v9;
LABEL_5:
  v6 = sqlite3_bind_text(a1, a2, (v5 + 32), v2, qword_27DA4A138);

  if (v6)
  {
    sub_22DF0A208();
    swift_allocError();
    *v8 = v6;
    *(v8 + 8) = 0xD000000000000015;
    *(v8 + 16) = 0x800000022DF6E2A0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22DF0BBD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (sqlite3_column_text(*(result + 16), a2))
  {
    v4 = sub_22DF63AB4();
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_22DF0BC54(sqlite3_stmt *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  return sub_22DF0BAA0(a1, a2);
}

unint64_t sub_22DF0BC88()
{
  result = qword_27DA47748;
  if (!qword_27DA47748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47748);
  }

  return result;
}

uint64_t sub_22DF0BCE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22DF0BD3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_22DF0BDFC()
{
  v0 = sub_22DF63444();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_22DF0BE94()
{
  v0 = sub_22DF2E6B4();
  swift_beginAccess();
  v1 = *v0;
  v2 = sub_22DF63984();
  v3 = [v1 integerForKey_];

  if (v3 <= 1)
  {
    if (!v3)
    {
LABEL_21:
      v17 = sub_22DF2E5EC();
      swift_beginAccess();
      if (*v17)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    if (v3 == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

LABEL_16:
    if (qword_27DA4A5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_22DF63734();
    __swift_project_value_buffer(v13, qword_27DA4E5C0);
    v14 = sub_22DF63714();
    v15 = sub_22DF63D04();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = v3;
      _os_log_impl(&dword_22DEEA000, v14, v15, "invalid environmentType override from defaults: %{public}ld", v16, 0xCu);
      MEMORY[0x2318DDBE0](v16, -1, -1);
    }

    goto LABEL_21;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_11;
  }

  if (v3 == 4)
  {
    v4 = 3;
    goto LABEL_11;
  }

  if (v3 != 3)
  {
    goto LABEL_16;
  }

  v4 = 2;
LABEL_11:
  if (qword_27DA4A5D0 != -1)
  {
    swift_once();
  }

  v5 = sub_22DF63734();
  __swift_project_value_buffer(v5, qword_27DA4E5C0);
  v6 = sub_22DF63714();
  v7 = sub_22DF63CE4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    v10 = sub_22DF63A14();
    v12 = sub_22DEF0354(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2050;
    *(v8 + 14) = v3;
    _os_log_impl(&dword_22DEEA000, v6, v7, "overriding environmentType to %{public}s (%{public}ld) from defaults", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2318DDBE0](v9, -1, -1);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  return v4;
}

void *sub_22DF0C198(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v5++;
    v17 = v8;
    a1(&v15, &v17);
    if (v3)
    {
      break;
    }

    v9 = v16;
    if (v16)
    {
      v10 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22DF0EC8C(0, v6[2] + 1, 1, v6);
      }

      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        v6 = sub_22DF0EC8C((v11 > 1), v12 + 1, 1, v6);
      }

      v6[2] = v12 + 1;
      v7 = &v6[2 * v12];
      *(v7 + 32) = v10;
      v7[5] = v9;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

uint64_t sub_22DF0C2C8()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v1 + 1);
  return sub_22DF642D4();
}

uint64_t sub_22DF0C340()
{
  v1 = *v0;
  sub_22DF642A4();
  MEMORY[0x2318DD240](v1 + 1);
  return sub_22DF642D4();
}

uint64_t sub_22DF0C384@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22DF12118(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22DF0C3D0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E5C0);
  __swift_project_value_buffer(v0, qword_27DA4E5C0);
  return sub_22DF63724();
}

uint64_t sub_22DF0C448()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v3 = 0x6E695F656C707061;
    if (v1 != 1)
    {
      v3 = 1684366707;
    }

    if (*v0)
    {
      return v3;
    }

    else
    {
      return 0x6D706F6C65766564;
    }
  }

  else if (*v0 > 4u)
  {
    if (v1 == 6)
    {
      return 0x765F646572616873;
    }

    else
    {
      return 0x5F68736572666572;
    }
  }

  else if (v1 == 3)
  {
    return 0x657361656C6572;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_22DF0C548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_22DF121D8(a1, a2);

  *a3 = v4;
  return result;
}

uint64_t sub_22DF0C594(uint64_t a1)
{
  v2 = sub_22DF13D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF0C5D0(uint64_t a1)
{
  v2 = sub_22DF13D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_22DF0C60C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22DF1245C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_22DF0C654()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000025;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t sub_22DF0C6B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_22DF63314();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_22DF63304();
  sub_22DF12184();
  sub_22DF632F4();
  if (v4)
  {

    return sub_22DEF7A34(a1, a2);
  }

  else
  {
    v13 = v24;
    if (*(v25 + 16) && (v14 = sub_22DF0FBBC(a3), (v15 & 1) != 0))
    {
      v16 = *(*(v25 + 56) + 8 * v14);
    }

    else
    {
      v16 = sub_22DF12AD8(MEMORY[0x277D84F90]);
    }

    if (v23)
    {
      v17 = 86400;
    }

    else
    {
      v17 = v22;
    }

    v19 = v17;
    if (v24)
    {

      v18 = v21;

      sub_22DEF7A34(a1, a2);
    }

    else
    {
      v18 = v21;

      v13 = sub_22DF12C04(MEMORY[0x277D84F90]);

      sub_22DEF7A34(a1, a2);
    }

    *a4 = v16;
    *(a4 + 8) = v19;
    *(a4 + 16) = v20;
    *(a4 + 24) = v18;
    *(a4 + 32) = v13;
  }

  return result;
}

uint64_t sub_22DF0C880(void *a1)
{
  v74 = a1;
  v2 = 0;
  v3 = sub_22DF63654();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF63674();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47770, &qword_22DF66DC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v62 - v13;
  v15 = *v1;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;

  v69 = 0;
  v70 = MEMORY[0x277D84F90];
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v21 = *(v15 + 56) + ((v2 << 11) | (32 * v20));
      if (!*(v21 + 24))
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_6;
      }
    }

    v23 = *(v21 + 8);
    v73 = *(v21 + 16);
    v24 = *v21;
    v65 = v23;
    v66 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_22DF0EFA8(0, *(v70 + 2) + 1, 1, v70);
    }

    v26 = *(v70 + 2);
    v25 = *(v70 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v63 = *(v70 + 2);
      v64 = v26 + 1;
      v31 = sub_22DF0EFA8((v25 > 1), v26 + 1, 1, v70);
      v26 = v63;
      v27 = v64;
      v70 = v31;
    }

    v28 = v70;
    *(v70 + 2) = v27;
    v29 = &v28[24 * v26];
    v30 = v65;
    *(v29 + 4) = v66;
    *(v29 + 5) = v30;
    *(v29 + 6) = v73;
  }

  while (v18);
  while (1)
  {
LABEL_6:
    v22 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v2;
    if (v18)
    {
      v2 = v22;
      goto LABEL_4;
    }
  }

  v32 = *(v70 + 2);
  if (!v32)
  {

    return 6;
  }

  LODWORD(v73) = sub_22DF2EB24();
  sub_22DF63634();
  sub_22DF63664();
  (*(v67 + 8))(v10, v68);
  sub_22DF63644();
  (*(v71 + 8))(v6, v72);
  v33 = sub_22DF63624();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v14, 1, v33) == 1)
  {
    isUniquelyReferenced_nonNull_native = sub_22DEF1364(v14, &qword_27DA47770, &qword_22DF66DC0);
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v71 = sub_22DF63614();
    v72 = v37;
    isUniquelyReferenced_nonNull_native = (*(v34 + 8))(v14, v33);
  }

  v2 = v69;
  v38 = v32 - 1;
  v39 = MEMORY[0x277D84F90];
  v40 = (v70 + 48);
  while (2)
  {
    v41 = *(v40 - 1);
    v42 = *v40;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    *(&v62 - 2) = v74;

    sub_22DF0D0F8(sub_22DF12E24, v42, &v75);

    v88[10] = v85;
    v88[11] = v86;
    v88[6] = v81;
    v88[7] = v82;
    v88[8] = v83;
    v88[9] = v84;
    v88[2] = v77;
    v88[3] = v78;
    v88[4] = v79;
    v88[5] = v80;
    v88[0] = v75;
    v88[1] = v76;
    v98 = v84;
    v99 = v85;
    v100 = v86;
    v101 = v87;
    v94 = v80;
    v95 = v81;
    v96 = v82;
    v97 = v83;
    v90 = v76;
    v91 = v77;
    v92 = v78;
    v93 = v79;
    v88[12] = v87;
    v89 = v75;
    isUniquelyReferenced_nonNull_native = sub_22DF12EF4(&v89);
    if (isUniquelyReferenced_nonNull_native == 1)
    {
      v43 = v39;
      if (!v38)
      {
        break;
      }

      goto LABEL_55;
    }

    if (v101 == 2)
    {
      v43 = v39;
      if ((v73 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_33:
      v48 = COERCE_DOUBLE(sub_22DF12D20(*(&v101 + 1), v71, v72));
      if (v49)
      {
        if ((v92 & 1) != 0 || (v50 = *(&v91 + 1), *(&v91 + 1) >= 1.0))
        {
LABEL_36:
          sub_22DEF1364(v88, &qword_27DA47778, &qword_22DF66DC8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v43 + 16) + 1, 1, v43);
            v43 = isUniquelyReferenced_nonNull_native;
          }

          v45 = *(v43 + 16);
          v51 = *(v43 + 24);
          v46 = v45 + 1;
          v47 = 1;
          if (v45 >= v51 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v51 > 1), v45 + 1, 1, v43);
            v43 = isUniquelyReferenced_nonNull_native;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v50 = v48;
        if (v48 >= 1.0)
        {
          goto LABEL_36;
        }
      }

      v52 = v90;
      if (v90)
      {

        sub_22DEF1364(v88, &qword_27DA47778, &qword_22DF66DC8);
        v69 = type metadata accessor for Session();
        v53 = v74[3];
        v54 = v74[4];
        __swift_project_boxed_opaque_existential_1(v74, v53);
        v55 = (*(v54 + 48))(v53, v54);
        v56 = COERCE_DOUBLE(sub_22DF18918(v52, v55));
        v58 = v57;

        if ((v58 & 1) == 0)
        {
          v43 = v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v39 + 16) + 1, 1, v39);
            v43 = isUniquelyReferenced_nonNull_native;
          }

          v45 = *(v43 + 16);
          v59 = *(v43 + 24);
          v46 = v45 + 1;
          if (v45 >= v59 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v59 > 1), v45 + 1, 1, v43);
            v43 = isUniquelyReferenced_nonNull_native;
          }

          v47 = v50 > v56;
          goto LABEL_54;
        }
      }

      else
      {
        sub_22DEF1364(v88, &qword_27DA47778, &qword_22DF66DC8);
      }

      v43 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v39 + 16) + 1, 1, v39);
        v43 = isUniquelyReferenced_nonNull_native;
      }

      v45 = *(v43 + 16);
      v60 = *(v43 + 24);
      v46 = v45 + 1;
      if (v45 >= v60 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v60 > 1), v45 + 1, 1, v43);
        v43 = isUniquelyReferenced_nonNull_native;
      }

      v47 = 2;
    }

    else
    {
      v43 = v39;
      if ((v73 | sub_22DF1D000(v101 & 1)))
      {
        goto LABEL_33;
      }

LABEL_27:
      sub_22DEF1364(v88, &qword_27DA47778, &qword_22DF66DC8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4(0, *(v43 + 16) + 1, 1, v43);
        v43 = isUniquelyReferenced_nonNull_native;
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_22DF0EEB4((v44 > 1), v45 + 1, 1, v43);
        v43 = isUniquelyReferenced_nonNull_native;
      }

      v47 = 3;
    }

LABEL_54:
    *(v43 + 16) = v46;
    *(v43 + v45 + 32) = v47;
    if (v38)
    {
LABEL_55:
      v39 = v43;
      --v38;
      v40 += 3;
      continue;
    }

    break;
  }

  *&v75 = v43;

  sub_22DF105EC(&v75);
  if (v2)
  {
LABEL_63:

    __break(1u);
    return result;
  }

  if (*(v75 + 16))
  {
    v36 = *(v75 + 32);
  }

  else
  {

    return 5;
  }

  return v36;
}

void sub_22DF0D0F8(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = (a2 + 32);
    while (1)
    {
      v8 = v7[9];
      v9 = v7[11];
      v71 = v7[10];
      v72 = v9;
      v10 = v7[11];
      v73 = v7[12];
      v11 = v7[5];
      v12 = v7[7];
      v67 = v7[6];
      v68 = v12;
      v13 = v7[7];
      v14 = v7[9];
      v69 = v7[8];
      v70 = v14;
      v15 = v7[1];
      v16 = v7[3];
      v63 = v7[2];
      v64 = v16;
      v17 = v7[3];
      v18 = v7[5];
      v65 = v7[4];
      v66 = v18;
      v19 = v7[1];
      v61 = *v7;
      v62 = v19;
      v58 = v71;
      v59 = v10;
      v60 = v7[12];
      v54 = v67;
      v55 = v13;
      v56 = v69;
      v57 = v8;
      v50 = v63;
      v51 = v17;
      v52 = v65;
      v53 = v11;
      v48 = v61;
      v49 = v15;
      sub_22DF13844(&v61, &v35);
      v20 = a1(&v48);
      if (v3)
      {
        v45 = v58;
        v46 = v59;
        v47 = v60;
        v41 = v54;
        v42 = v55;
        v43 = v56;
        v44 = v57;
        v37 = v50;
        v38 = v51;
        v39 = v52;
        v40 = v53;
        v35 = v48;
        v36 = v49;
        sub_22DF138A0(&v35);
        return;
      }

      if (v20)
      {
        break;
      }

      v45 = v58;
      v46 = v59;
      v47 = v60;
      v41 = v54;
      v42 = v55;
      v43 = v56;
      v44 = v57;
      v37 = v50;
      v38 = v51;
      v39 = v52;
      v40 = v53;
      v35 = v48;
      v36 = v49;
      sub_22DF138A0(&v35);
      v7 += 13;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v45 = v58;
    v46 = v59;
    v47 = v60;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v35 = v48;
    v36 = v49;
    nullsub_1(&v35, v21, v22);
    v30 = v46;
    a3[10] = v45;
    a3[11] = v30;
    a3[12] = v47;
    v31 = v42;
    a3[6] = v41;
    a3[7] = v31;
    v32 = v44;
    a3[8] = v43;
    a3[9] = v32;
    v33 = v38;
    a3[2] = v37;
    a3[3] = v33;
    v34 = v40;
    a3[4] = v39;
    a3[5] = v34;
    v29 = v35;
    v28 = v36;
  }

  else
  {
LABEL_6:
    sub_22DF141FC(&v61);
    v23 = v72;
    a3[10] = v71;
    a3[11] = v23;
    a3[12] = v73;
    v24 = v68;
    a3[6] = v67;
    a3[7] = v24;
    v25 = v70;
    a3[8] = v69;
    a3[9] = v25;
    v26 = v64;
    a3[2] = v63;
    a3[3] = v26;
    v27 = v66;
    a3[4] = v65;
    a3[5] = v27;
    v29 = v61;
    v28 = v62;
  }

  *a3 = v29;
  a3[1] = v28;
}

uint64_t sub_22DF0D334@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v237 = a2;
  v5 = type metadata accessor for SessionConfiguration.Backend(0);
  v234 = *(v5 - 8);
  v235 = v5;
  v6 = *(v234 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v236 = (&v223 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v229 = &v223 - v10;
  MEMORY[0x28223BE20](v9);
  v228 = &v223 - v11;
  v12 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v227 = &v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v247 = &v223 - v17;
  v251 = sub_22DF63444();
  v18 = *(v251 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v251);
  v232 = &v223 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v231 = &v223 - v22;
  v261 = sub_22DF63654();
  v23 = *(v261 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v261);
  v250 = &v223 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v253 = &v223 - v27;
  v260 = sub_22DF63674();
  v28 = *(v260 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v260);
  v249 = &v223 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v252 = &v223 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47770, &qword_22DF66DC0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v248 = &v223 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v223 - v37;
  v39 = a1[3];
  v40 = a1[4];
  v255 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  (*(v40 + 8))(v288, v39, v40);
  v290 = v289;
  v270 = *(&v289 + 1);
  v272 = v289;

  sub_22DEF0FA8(v288);
  v240 = v3;
  v41 = *v3;
  v42 = v38;
  v43 = *(v41 + 64);
  v243 = v41 + 64;
  v44 = 1 << *(v41 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v43;
  v47 = (v44 + 63) >> 6;
  v258 = (v23 + 8);
  v259 = (v28 + 8);
  v246 = (v18 + 48);
  v225 = (v18 + 16);
  v226 = (v18 + 32);
  v224 = (v18 + 8);

  v48 = v46;
  v49 = v47;
  v50 = 0;
  v51 = 0;
  *&v52 = 136315138;
  v239 = v52;
  *&v52 = 136446210;
  v233 = v52;
  v238 = MEMORY[0x277D84F90];
  v241 = MEMORY[0x277D84F90];
  v242 = v41;
  v254 = v38;
  v245 = v47;
  while (1)
  {
LABEL_7:
    if (v48)
    {
      goto LABEL_12;
    }

    do
    {
      v54 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        goto LABEL_134;
      }

      if (v54 >= v49)
      {
        sub_22DF13A04(&v290);

        v217 = v240[2];
        v218 = v240[3];

        v219 = sub_22DEF1280();
        result = sub_22DF09670(v238, v241, v219 & 1, v217, v218, &v275);
        v221 = v276;
        v222 = v237;
        *v237 = v275;
        v222[1] = v221;
        *(v222 + 4) = v277;
        return result;
      }

      v48 = *(v243 + 8 * v54);
      ++v50;
    }

    while (!v48);
    v50 = v54;
LABEL_12:
    v55 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    v56 = v55 | (v50 << 6);
    v57 = *(v41 + 56) + 32 * v56;
    v59 = *v57;
    v58 = *(v57 + 8);
    v60 = *(v57 + 16);
    v61 = *(v57 + 24);
    v269 = v60;
    v264 = v59;
    if (!v61)
    {
      break;
    }

    if (v61 == 1)
    {
      v256 = v50;
      v257 = v48;
      sub_22DF12F0C(v59, v58, v60, 1);

      v62 = sub_22DF2E5EC();
      swift_beginAccess();
      if (*v62)
      {
        v244 = v58;
        v263 = *(v59 + 16);
        if (v263)
        {
          v63 = 0;
          v64 = (v59 + 96);
          while (1)
          {
            if (v63 >= *(v59 + 16))
            {
              goto LABEL_136;
            }

            v265 = v63;
            v266 = &v223;
            v271 = v51;
            v65 = *(v64 - 8);
            v66 = *(v64 - 7);
            LODWORD(v262) = *(v64 - 48);
            v68 = *(v64 - 5);
            v67 = *(v64 - 4);
            v69 = *(v64 - 24);
            v70 = *(v64 - 2);
            v71 = *(v64 - 1);
            v267 = v65;
            v268 = v70;
            v72 = *v64;
            v275 = v290;
            MEMORY[0x28223BE20](v65);
            *(&v223 - 2) = &v275;

            v73 = v69;
            sub_22DF12FC8(v68, v67, v69);
            v74 = v71;
            v75 = v72;
            sub_22DEEBC28();
            v51 = v271;
            if (sub_22DF10540(sub_22DF12FAC, (&v223 - 4), v267))
            {
              break;
            }

            v63 = (v265 + 1);
            sub_22DF12FE0(v68, v67, v73);
            sub_22DEEBC34();
            v64 += 72;
            v59 = v264;
            v60 = v269;
            if (v263 == v63)
            {
              goto LABEL_4;
            }
          }

          v266 = v68;
          v165 = v67;
          LODWORD(v271) = v73;
          LODWORD(v265) = v75;
          v166 = v74;
          v167 = v264;
          v168 = v244;
          v169 = v269;
          sub_22DF12F5C(v264, v244, v269, 1);
          if (v262)
          {
            v66 = 1.0;
          }

          v170 = v255[3];
          v171 = v255[4];
          __swift_project_boxed_opaque_existential_1(v255, v170);
          v172 = (*(v171 + 24))(v170, v171);
          v42 = v254;
          v41 = v242;
          if (v172 >= v66)
          {

            sub_22DF12FE0(v266, v165, v271);
            sub_22DEEBC34();
            v151 = v167;
            v152 = v168;
            v153 = v169;
            goto LABEL_77;
          }

          v173 = v240[4];
          v174 = sub_22DF13090(v266, v165, v271, v173);
          if (v265)
          {
            if (*(v173 + 16))
            {

              v262 = sub_22DEF08FC(v268, v166);
              LODWORD(v263) = v175;
              sub_22DEEBC34();
              if (v263)
              {
                v176 = *(v173 + 56) + 16 * v262;
                if (*(v176 + 8) == 1)
                {
                  v177 = *v176;
                  goto LABEL_91;
                }
              }

              v178 = MEMORY[0x277D84F90];
            }

            else
            {
              v178 = MEMORY[0x277D84F90];
            }
          }

          else
          {
LABEL_91:
          }

          sub_22DF12FE0(v266, v165, v271);
          sub_22DEEBC34();
          v195 = *(v178 + 16);
          if (v195)
          {
            v265 = v174;
            v271 = v51;
            *&v275 = MEMORY[0x277D84F90];
            sub_22DF1198C(0, v195, 0);
            v196 = v275;
            v268 = v195 - 1;
            v263 = v178;
            for (i = (v178 + 72); ; i += 6)
            {
              v198 = *(i - 5);
              v199 = *(i - 4);
              LODWORD(v266) = *(i - 24);
              v200 = *(i - 1);
              v267 = *(i - 2);
              v201 = *i;
              *&v275 = v196;
              v203 = *(v196 + 16);
              v202 = *(v196 + 24);
              swift_bridgeObjectRetain_n();

              if (v203 >= v202 >> 1)
              {
                sub_22DF1198C((v202 > 1), v203 + 1, 1);
                v196 = v275;
              }

              *(v196 + 16) = v203 + 1;
              v204 = v196 + (v203 << 6);
              *(v204 + 32) = v198;
              *(v204 + 40) = v199;
              *(v204 + 48) = v198;
              *(v204 + 56) = v199;
              *(v204 + 64) = v266;
              v205 = *(&v273 + 3);
              *(v204 + 65) = v273;
              *(v204 + 68) = v205;
              *(v204 + 72) = v267;
              *(v204 + 80) = v200;
              *(v204 + 88) = v201;
              if (!v268)
              {
                break;
              }

              --v268;
            }

            v42 = v254;
            v41 = v242;
            v51 = v271;
            v206 = v269;
            v174 = v265;
            if (*(v196 + 16))
            {
LABEL_121:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47780, &qword_22DF66DD0);
              v207 = sub_22DF64044();
LABEL_124:
              *&v275 = v207;

              sub_22DF0F75C(v208, 1, &v275);
              if (v51)
              {
                goto LABEL_138;
              }

              v210 = nullsub_1(v174, v275, v209);
              v211 = v236;
              *v236 = v212;
              v211[1] = v210;
              v211[2] = v213;
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_22DF0F210(0, v241[2] + 1, 1, v241);
              }

              v215 = v241[2];
              v214 = v241[3];
              if (v215 >= v214 >> 1)
              {
                v241 = sub_22DF0F210(v214 > 1, v215 + 1, 1, v241);
              }

              sub_22DF12F5C(v264, v244, v206, 1);
              v216 = v241;
              v241[2] = v215 + 1;
              sub_22DF140DC(v236, v216 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v215, type metadata accessor for SessionConfiguration.Backend);
              v49 = v245;
              v50 = v256;
              v48 = v257;
              v51 = 0;
              continue;
            }
          }

          else
          {

            v206 = v269;
            if (*(MEMORY[0x277D84F90] + 16))
            {
              goto LABEL_121;
            }
          }

          v207 = MEMORY[0x277D84F98];
          goto LABEL_124;
        }

LABEL_4:
        v53 = v244;
        sub_22DF12F5C(v59, v244, v60, 1);
        sub_22DF12F5C(v59, v53, v60, 1);
        v42 = v254;
LABEL_5:
        v41 = v242;
      }

      else
      {
        sub_22DF12F5C(v59, v58, v60, 1);
        v151 = v59;
        v152 = v58;
        v153 = v60;
LABEL_77:
        sub_22DF12F5C(v151, v152, v153, 1);
      }

LABEL_6:
      v49 = v245;
      v50 = v256;
      v48 = v257;
    }
  }

  v268 = *(v60 + 16);
  if (!v268)
  {
    goto LABEL_7;
  }

  v256 = v50;
  v257 = v48;
  v76 = (*(v41 + 48) + 16 * v56);
  v77 = v76[1];
  v230 = *v76;
  v262 = v77;

  v244 = v58;
  sub_22DF12F0C(v59, v58, v60, 0);

  if (*(v60 + 16))
  {
    v78 = 0;
    v267 = v60 + 32;
    while (2)
    {
      v79 = (v267 + 208 * v78);
      v275 = *v79;
      v80 = v79[1];
      v81 = v79[2];
      v82 = v79[4];
      v278 = v79[3];
      v279 = v82;
      v276 = v80;
      v277 = v81;
      v83 = v79[5];
      v84 = v79[6];
      v85 = v79[8];
      v282 = v79[7];
      v283 = v85;
      v280 = v83;
      v281 = v84;
      v86 = v79[9];
      v87 = v79[10];
      v88 = v79[12];
      v286 = v79[11];
      v287 = v88;
      v284 = v86;
      v285 = v87;
      if (__PAIR128__(v270, v272) != v275 && (sub_22DF64184() & 1) == 0)
      {
        goto LABEL_72;
      }

      v89 = v287;
      if (v287 == 2)
      {
        sub_22DF13844(&v275, &v273);
        v90 = 0;
      }

      else
      {
        sub_22DF13844(&v275, &v273);
        v90 = sub_22DF1D000(v89 & 1);
      }

      v91 = BYTE1(v287) != 2 && sub_22DF1D000(BYTE1(v287) & 1);
      if (((sub_22DF2EB24() | v90) & 1) == 0)
      {
        sub_22DF138A0(&v275);

        if (qword_27DA4A5D0 != -1)
        {
          swift_once();
        }

        v154 = sub_22DF63734();
        __swift_project_value_buffer(v154, qword_27DA4E5C0);
        v155 = v262;

        v156 = sub_22DF63714();
        v157 = sub_22DF63CF4();

        v158 = os_log_type_enabled(v156, v157);
        v41 = v242;
        if (v158)
        {
          v159 = swift_slowAlloc();
          v271 = v156;
          v160 = v159;
          v161 = swift_slowAlloc();
          v273 = v161;
          *v160 = v233;
          v162 = sub_22DEF0354(v230, v155, &v273);

          *(v160 + 4) = v162;
          v163 = v157;
          v164 = v271;
          _os_log_impl(&dword_22DEEA000, v271, v163, "skipping %{public}s: dnu disabled", v160, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v161);
          MEMORY[0x2318DDBE0](v161, -1, -1);
          MEMORY[0x2318DDBE0](v160, -1, -1);

          sub_22DF12F5C(v264, v244, v60, 0);
        }

        else
        {

          sub_22DF12F5C(v264, v244, v60, 0);
        }

        goto LABEL_6;
      }

      LODWORD(v265) = v91;
      LODWORD(v266) = v89;
      v92 = sub_22DF63984();
      v93 = MGCopyAnswer();

      if (!v93)
      {
        goto LABEL_137;
      }

      v94 = v280;
      type metadata accessor for CFString();
      v95 = swift_dynamicCastUnknownClassUnconditional();
      v96 = sub_22DF639B4();
      v98 = v97;

      if (v94)
      {
        v273 = v96;
        v274 = v98;
        MEMORY[0x28223BE20](v99);
        *(&v223 - 2) = &v273;

        v100 = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v94);

        if ((v100 & 1) == 0)
        {

LABEL_41:
          sub_22DF138A0(&v275);
          goto LABEL_72;
        }
      }

      v101 = *(&v279 + 1);
      if (*(&v279 + 1))
      {
        v273 = v96;
        v274 = v98;
        MEMORY[0x28223BE20](v99);
        *(&v223 - 2) = &v273;

        v102 = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v101);

        if (v102)
        {
          goto LABEL_41;
        }

        v103 = *(&v286 + 1);
        if (!*(&v286 + 1))
        {
          goto LABEL_46;
        }
      }

      else
      {

        v103 = *(&v286 + 1);
        if (!*(&v286 + 1))
        {
          goto LABEL_46;
        }
      }

      v104 = v252;
      sub_22DF63634();
      v105 = v253;
      sub_22DF63664();
      (*v259)(v104, v260);
      sub_22DF63644();
      (*v258)(v105, v261);
      v106 = sub_22DF63624();
      v107 = *(v106 - 8);
      if ((*(v107 + 48))(v42, 1, v106) == 1)
      {

        sub_22DF138A0(&v275);
        sub_22DEF1364(v42, &qword_27DA47770, &qword_22DF66DC0);
        goto LABEL_72;
      }

      v108 = sub_22DF63614();
      v110 = v109;
      v111 = (*(v107 + 8))(v42, v106);
      v273 = v108;
      v274 = v110;
      MEMORY[0x28223BE20](v111);
      *(&v223 - 2) = &v273;
      LOBYTE(v108) = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v103);

      if ((v108 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_46:
      v112 = v51;
      v114 = v248;
      v113 = v249;
      sub_22DF63634();
      v115 = v250;
      sub_22DF63664();
      (*v259)(v113, v260);
      sub_22DF63644();
      (*v258)(v115, v261);
      v116 = sub_22DF63624();
      v117 = *(v116 - 8);
      if ((*(v117 + 48))(v114, 1, v116) == 1)
      {
        sub_22DEF1364(v114, &qword_27DA47770, &qword_22DF66DC0);
        goto LABEL_56;
      }

      v118 = *(&v287 + 1);
      v263 = sub_22DF63614();
      v271 = v119;
      v120 = (*(v117 + 8))(v114, v116);
      if (v118)
      {
        v121 = *(v118 + 16);
        v122 = v112;
        if (v121)
        {
          v123 = 0;
          v124 = (v118 + 40);
          while (1)
          {
            if (v123 >= *(v118 + 16))
            {
              goto LABEL_135;
            }

            v125 = *(v124 - 1);
            v126 = *v124;
            v273 = v263;
            v274 = v271;
            MEMORY[0x28223BE20](v120);
            *(&v223 - 2) = &v273;
            swift_bridgeObjectRetain_n();
            v127 = sub_22DF10540(sub_22DF144B8, (&v223 - 4), v125);

            if (v127)
            {
              break;
            }

            ++v123;
            v124 += 2;
            if (v121 == v123)
            {
              goto LABEL_54;
            }
          }

          v60 = v269;
LABEL_60:
          v128 = v276;
          v271 = v122;
          if (!v276)
          {
            goto LABEL_62;
          }

          type metadata accessor for Session();
          v129 = v255[3];
          v130 = v255[4];
          __swift_project_boxed_opaque_existential_1(v255, v129);
          v131 = (*(v130 + 48))(v129, v130);
          v132 = COERCE_DOUBLE(sub_22DF18918(v128, v131));
          v134 = v133;

          if ((v134 & 1) == 0)
          {
            if (v132 >= v126)
            {
LABEL_94:

              sub_22DF138A0(&v275);
              sub_22DF12F5C(v264, v244, v60, 0);

              v42 = v254;
              v41 = v242;
LABEL_111:
              v49 = v245;
              v50 = v256;
              v48 = v257;
              v51 = v271;
              goto LABEL_7;
            }
          }

          else
          {
LABEL_62:
            v135 = v255[3];
            v136 = v255[4];
            __swift_project_boxed_opaque_existential_1(v255, v135);
            if ((*(v136 + 24))(v135, v136) >= v126)
            {
              goto LABEL_94;
            }
          }

          v137 = BYTE1(v286);
          v138 = *(&v283 + 1);
          v139 = v284;
          v140 = BYTE8(v284);
          v141 = *(&v276 + 1);
          v142 = v277;
          v143 = v247;
          sub_22DF63414();
          if ((*v246)(v143, 1, v251) != 1)
          {

            v179 = v231;
            v180 = v143;
            v181 = v251;
            (*v226)(v231, v180, v251);
            v182 = v240[4];
            sub_22DEEBC28();
            v183 = sub_22DF13090(v138, v139, v140, v182);
            sub_22DEEBC34();
            if (v128)
            {
              v184 = v128;
            }

            else
            {
              v184 = MEMORY[0x277D84F90];
            }

            (*v225)(v232, v179, v181);

            sub_22DF138A0(&v275);
            v185 = sub_22DF1D000((v137 == 2) | v137 & 1);
            v186 = v266 != 2 && sub_22DF1D000(v266 & 1);
            v187 = v227;
            v42 = v254;
            v41 = v242;
            sub_22DF095A0(v230, v262, v184, v232, v183, v185, v186, v227, v126);
            v188 = v269;
            if (v265)
            {
              sub_22DF13944(v187, v228);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_22DF0F210(0, v241[2] + 1, 1, v241);
              }

              v189 = v241;
              v191 = v241[2];
              v190 = v241[3];
              v192 = v191 + 1;
              if (v191 >= v190 >> 1)
              {
                v189 = sub_22DF0F210(v190 > 1, v191 + 1, 1, v241);
                v193 = v228;
                v241 = v189;
              }

              else
              {
                v193 = v228;
              }
            }

            else
            {
              sub_22DF13944(v187, v229);
              swift_storeEnumTagMultiPayload();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v238 = sub_22DF0F210(0, v238[2] + 1, 1, v238);
              }

              v189 = v238;
              v191 = v238[2];
              v194 = v238[3];
              v192 = v191 + 1;
              if (v191 >= v194 >> 1)
              {
                v189 = sub_22DF0F210(v194 > 1, v191 + 1, 1, v238);
                v193 = v229;
                v238 = v189;
              }

              else
              {
                v193 = v229;
              }
            }

            sub_22DF12F5C(v264, v244, v188, 0);
            sub_22DF139A8(v187);
            (*v224)(v231, v251);
            v189[2] = v192;
            sub_22DF140DC(v193, v189 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v191, type metadata accessor for SessionConfiguration.Backend);
            goto LABEL_111;
          }

          sub_22DEF1364(v143, &qword_27DA47410, &qword_22DF65B80);
          if (qword_27DA4A5D0 != -1)
          {
            swift_once();
          }

          v144 = sub_22DF63734();
          __swift_project_value_buffer(v144, qword_27DA4E5C0);
          sub_22DF13844(&v275, &v273);
          v145 = sub_22DF63714();
          v146 = sub_22DF63D04();
          sub_22DF138A0(&v275);
          v147 = os_log_type_enabled(v145, v146);
          v51 = v271;
          v60 = v269;
          if (v147)
          {
            v148 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v273 = v149;
            *v148 = v239;

            sub_22DF138A0(&v275);
            v150 = sub_22DEF0354(v141, v142, &v273);

            *(v148 + 4) = v150;
            _os_log_impl(&dword_22DEEA000, v145, v146, "invalid URL %s", v148, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v149);
            MEMORY[0x2318DDBE0](v149, -1, -1);
            MEMORY[0x2318DDBE0](v148, -1, -1);
          }

          else
          {

            sub_22DF138A0(&v275);
          }

          v42 = v254;
LABEL_72:
          if (++v78 == v268)
          {

            sub_22DF12F5C(v264, v244, v60, 0);
            goto LABEL_5;
          }

          if (v78 >= *(v60 + 16))
          {
            goto LABEL_134;
          }

          continue;
        }

LABEL_54:

        v60 = v269;
      }

      else
      {

LABEL_56:
        v122 = v112;
      }

      break;
    }

    if (v278)
    {
      v126 = 1.0;
    }

    else
    {
      v126 = *(&v277 + 1);
    }

    goto LABEL_60;
  }

LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_22DF0EC8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477E0, &qword_22DF670C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477E8, &qword_22DF670C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22DF0EDC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D8, &unk_22DF670B0);
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

char *sub_22DF0EEB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47838, &unk_22DF67100);
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

char *sub_22DF0EFA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47848, &qword_22DF67110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22DF0F0C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47830, &unk_22DF670F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA47BB0, "2?");
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22DF0F210(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47810, &unk_22DF69750);
  v10 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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
  v15 = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
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

void sub_22DF0F3E8(uint64_t a1, char a2, void *a3)
{
  v45 = *(a1 + 16);
  if (!v45)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = sub_22DF0FBBC(v6);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];

  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_22DF0FC2C();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_22DF0FF38(v13, a2 & 1);
  v17 = *a3;
  v18 = sub_22DF0FBBC(v6);
  if ((v15 & 1) != (v19 & 1))
  {
LABEL_28:
    sub_22DF64234();
    __break(1u);
LABEL_29:
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD00000000000001BLL, 0x800000022DF6E4F0);
    sub_22DF63FF4();
    MEMORY[0x2318DCA20](39, 0xE100000000000000);
    sub_22DF64004();
    __break(1u);
    return;
  }

  v14 = v18;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v22[6] + v14) = v6;
  *(v22[7] + 8 * v14) = v7;
  v23 = v22[2];
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22[2] = v25;
  if (v45 != 1)
  {
    v26 = (a1 + 56);
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      v28 = *(v26 - 8);
      v29 = *v26;
      v30 = *a3;
      v31 = sub_22DF0FBBC(v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_25;
      }

      v36 = v31;
      v37 = v32;
      v38 = v30[3];

      if (v38 < v35)
      {
        sub_22DF0FF38(v35, 1);
        v39 = *a3;
        v40 = sub_22DF0FBBC(v28);
        if ((v37 & 1) != (v41 & 1))
        {
          goto LABEL_28;
        }

        v36 = v40;
      }

      if (v37)
      {
        goto LABEL_9;
      }

      v42 = *a3;
      *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
      *(v42[6] + v36) = v28;
      *(v42[7] + 8 * v36) = v29;
      v43 = v42[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v27;
      v42[2] = v44;
      v26 += 2;
      if (v45 == v27)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void sub_22DF0F75C(uint64_t a1, char a2, void *a3)
{
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 80);
  v63 = *(a1 + 64);
  v64 = v5;
  v6 = *(a1 + 48);
  v61 = *(a1 + 32);
  v62 = v6;
  v7 = v64;
  v8 = *(&v63 + 1);
  v9 = v63;
  v10 = v6;
  v57 = *(&v64 + 1);
  v11 = v61;
  sub_22DF1406C(&v61, v60);
  if (!*(&v11 + 1))
  {
    goto LABEL_24;
  }

  v53 = v8;
  v12 = a2;
  v54 = a1;
  v61 = v11;
  v13 = *a3;
  v15 = sub_22DEF08FC(v11, *(&v11 + 1));
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v13[3] >= v18)
  {
    if (v12)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_22DF0FD88();
      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_22DF101C8(v18, v12 & 1);
  v20 = *a3;
  v21 = sub_22DEF08FC(v11, *(&v11 + 1));
  if ((v19 & 1) == (v22 & 1))
  {
    v15 = v21;
    if ((v19 & 1) == 0)
    {
LABEL_13:
      v25 = *a3;
      *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
      *(v25[6] + 16 * v15) = v11;
      v26 = v25[7] + 48 * v15;
      *v26 = v10;
      *(v26 + 16) = v9;
      *(v26 + 24) = v53;
      *(v26 + 32) = v7;
      *(v26 + 40) = v57;
      v27 = v25[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v25[2] = v29;
      v30 = v54;
      if (v55 != 1)
      {
        v31 = (v54 + 96);
        v32 = 1;
        while (v32 < *(v30 + 16))
        {
          v33 = v31[3];
          v63 = v31[2];
          v64 = v33;
          v34 = v31[1];
          v61 = *v31;
          v62 = v34;
          v35 = v64;
          v36 = *(&v63 + 1);
          v37 = v63;
          v38 = v34;
          v58 = *(&v64 + 1);
          v39 = v61;
          sub_22DF1406C(&v61, v60);
          if (!*(&v39 + 1))
          {
            goto LABEL_24;
          }

          v56 = v35;
          v61 = v39;
          v40 = *a3;
          v41 = sub_22DEF08FC(v39, *(&v39 + 1));
          v43 = v40[2];
          v44 = (v42 & 1) == 0;
          v28 = __OFADD__(v43, v44);
          v45 = v43 + v44;
          if (v28)
          {
            goto LABEL_26;
          }

          v46 = v42;
          if (v40[3] < v45)
          {
            sub_22DF101C8(v45, 1);
            v47 = *a3;
            v41 = sub_22DEF08FC(v39, *(&v39 + 1));
            if ((v46 & 1) != (v48 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v46)
          {
            goto LABEL_10;
          }

          v49 = *a3;
          *(*a3 + 8 * (v41 >> 6) + 64) |= 1 << v41;
          *(v49[6] + 16 * v41) = v39;
          v50 = v49[7] + 48 * v41;
          *v50 = v38;
          *(v50 + 16) = v37;
          *(v50 + 24) = v36;
          *(v50 + 32) = v56;
          *(v50 + 40) = v58;
          v51 = v49[2];
          v28 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          ++v32;
          v49[2] = v52;
          v31 += 4;
          v30 = v54;
          if (v55 == v32)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v23 = swift_allocError();
    swift_willThrow();
    v65 = v23;
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22DF64234();
  __break(1u);
LABEL_29:
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_22DF63F24();
  MEMORY[0x2318DCA20](0xD00000000000001BLL, 0x800000022DF6E4F0);
  sub_22DF63FF4();
  MEMORY[0x2318DCA20](39, 0xE100000000000000);
  sub_22DF64004();
  __break(1u);
}

unint64_t sub_22DF0FBBC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_22DF642A4();
  MEMORY[0x2318DD240](a1 + 1);
  v4 = sub_22DF642D4();

  return sub_22DF104D0(a1, v4);
}

void *sub_22DF0FC2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D0, &qword_22DF670A8);
  v2 = *v0;
  v3 = sub_22DF64024();
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
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_22DF0FD88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47780, &qword_22DF66DD0);
  v2 = *v0;
  v3 = sub_22DF64024();
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
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 48;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = *(v22 + 32);
        v28 = *(v22 + 40);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_22DF0FF38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA477D0, &qword_22DF670A8);
  v33 = a2;
  result = sub_22DF64034();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_22DF642A4();
      MEMORY[0x2318DD240](v21 + 1);
      result = sub_22DF642D4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22DF101C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47780, &qword_22DF66DD0);
  v40 = a2;
  result = sub_22DF64034();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(v5 + 56) + 48 * v22;
      v26 = *(v25 + 8);
      v44 = *v25;
      v45 = *v23;
      v43 = *(v25 + 16);
      v27 = *(v25 + 32);
      v42 = *(v25 + 24);
      v28 = *(v25 + 40);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v45;
      v17[1] = v24;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v44;
      *(v18 + 8) = v26;
      *(v18 + 16) = v43;
      v13 = v41;
      *(v18 + 24) = v42;
      *(v18 + 32) = v27;
      *(v18 + 40) = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}