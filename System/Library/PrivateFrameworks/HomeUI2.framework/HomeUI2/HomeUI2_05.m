uint64_t View.lineHeight(_:)(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v11 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = *(OpaqueTypeMetadata2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v8 = &v10 - v7;
  sub_25454B404();
  v10 = a1;
  v11 = a2;
  swift_getOpaqueTypeConformance2();
  sub_25454B414();
  return (*(v5 + 8))(v8, OpaqueTypeMetadata2);
}

uint64_t View.centeringBaselineOffset(lineHeight:with:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for CenteringBaselineOffsetModifier();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(v8 + 20)) = a4;
  *(v11 + *(v8 + 24)) = a1;

  MEMORY[0x259C0E660](v11, a2, v8, a3);
  return sub_25452F17C(v11);
}

uint64_t type metadata accessor for CenteringBaselineOffsetModifier()
{
  result = qword_27F5FD330;
  if (!qword_27F5FD330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25452F17C(uint64_t a1)
{
  v2 = type metadata accessor for CenteringBaselineOffsetModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25452F1D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25452F270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CenteringBaselineOffsetModifier();
  sub_25454A714();
  sub_25452F2DC();
  return swift_getWitnessTable();
}

unint64_t sub_25452F2DC()
{
  result = qword_27F5FD328;
  if (!qword_27F5FD328)
  {
    type metadata accessor for CenteringBaselineOffsetModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD328);
  }

  return result;
}

uint64_t sub_25452F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25452F424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB610, &unk_254552D00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_25452F4E8()
{
  sub_25452F56C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25452F56C()
{
  if (!qword_27F5FB640)
  {
    sub_25454B0E4();
    v0 = sub_25454A464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FB640);
    }
  }
}

unint64_t sub_25452F5E0()
{
  result = qword_27F5FD358;
  if (!qword_27F5FD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD350, &unk_254552D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD358);
  }

  return result;
}

uint64_t sub_25452F644(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB5A0, &qword_25454E640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25452F6B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD348, &qword_254552D88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD340, &qword_254552D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD350, &unk_254552D90);
  sub_25452F5E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void *sub_25452F798()
{
  type metadata accessor for InterfacePerformanceSignposter();
  v0 = swift_allocObject();
  result = sub_2544D7BF8(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_27F5FD360 = v0;
  return result;
}

uint64_t static InterfacePerformanceSignposter.shared.getter()
{
  if (qword_27F5FACA8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25452F83C()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD368);
  __swift_project_value_buffer(v0, qword_27F5FD368);
  return sub_25454A2D4();
}

uint64_t sub_25452F900()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD380);
  __swift_project_value_buffer(v0, qword_27F5FD380);
  return sub_25454A2D4();
}

uint64_t sub_25452FA50(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_25454A2E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25454A244();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return sub_25454A224();
}

uint64_t sub_25452FBBC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_25452FC60(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_25454A214();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = *a1;
  if (a2)
  {
    if (qword_27F5FACC8 != -1)
    {
      swift_once();
    }

    v18 = sub_25454A244();
    __swift_project_value_buffer(v18, qword_27F5FD3B0);
    v19 = off_27977CB00[v17];
    sub_25454A204();
    v20 = sub_25454A234();
    v21 = sub_25454BFD4();
    if ((sub_25454C044() & 1) == 0)
    {
      v11 = v16;
      goto LABEL_12;
    }

    v36 = v6;
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_25454A1F4();
    _os_signpost_emit_with_name_impl(&dword_2544A5000, v20, v21, v23, v19, "", v22, 2u);
    v11 = v16;
    goto LABEL_10;
  }

  if (qword_27F5FACC0 != -1)
  {
    swift_once();
  }

  v24 = sub_25454A244();
  __swift_project_value_buffer(v24, qword_27F5FD398);
  v25 = off_27977CB00[v17];
  sub_25454A204();
  v20 = sub_25454A234();
  v26 = sub_25454BFD4();
  if (sub_25454C044())
  {
    v36 = v6;
    v22 = swift_slowAlloc();
    *v22 = 0;
    v27 = sub_25454A1F4();
    _os_signpost_emit_with_name_impl(&dword_2544A5000, v20, v26, v27, v25, "", v22, 2u);
LABEL_10:
    MEMORY[0x259C0FDF0](v22, -1, -1);
    v6 = v36;
  }

LABEL_12:

  (*(v7 + 16))(v14, v11, v6);
  v28 = sub_25454A284();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_25454A274();
  (*(v7 + 8))(v11, v6);
  swift_beginAccess();

  v32 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_254531684(v31, v17, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v37;
  swift_endAccess();
}

const char *InterfacePerformanceSignposter.SignpostType.name.getter()
{
  v1 = *v0;
  v2 = "openClimateCategoryFilter";
  v3 = "launchLivestreamFromHomeFace";
  if (v1 != 5)
  {
    v3 = "launchRoomViewFromHomeFace";
  }

  v4 = "launchHomeAppDashboard";
  if (v1 != 3)
  {
    v4 = "launchHomeAppFromHomeFace";
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = "launchCameraLiveActivityView";
  if (v1 != 1)
  {
    v5 = "launchHomeApp";
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

uint64_t sub_254530088(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      result = sub_25452FC60(&v6, a2 & 1);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2545300E0(char *a1, char a2)
{
  v3 = v2;
  v6 = sub_25454A254();
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v71 - v11;
  v13 = sub_25454A214();
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v71 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v71 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v71 - v24;
  v26 = *a1;
  if (a2)
  {
    v74 = v26;
    if (qword_27F5FACB8 != -1)
    {
      swift_once();
    }

    v27 = sub_25454A2E4();
    __swift_project_value_buffer(v27, qword_27F5FD380);
    v28 = sub_25454A2C4();
    v29 = sub_25454BF64();
    v30 = os_log_type_enabled(v28, v29);
    v71[1] = v3;
    if (v30)
    {
      v71[0] = v13;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v76 = v32;
      *v31 = 136315138;
      v33 = sub_25454C164();
      v35 = sub_254502AAC(v33, v34, &v76);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_2544A5000, v28, v29, "Ending x-process signpost: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x259C0FDF0](v32, -1, -1);
      MEMORY[0x259C0FDF0](v31, -1, -1);

      v13 = v71[0];
    }

    else
    {
    }

    v50 = v74;
    sub_25454A204();
    v51 = v75;
    (*(v75 + 16))(v23, v25, v13);
    v52 = sub_25454A284();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    sub_25454A274();
    v57 = *(v51 + 8);
    v56 = v51 + 8;
    v55 = v57;
    v57(v25, v13);
    if (qword_27F5FACC8 != -1)
    {
      swift_once();
    }

    v58 = sub_25454A244();
    __swift_project_value_buffer(v58, qword_27F5FD3B0);
    v59 = off_27977CB00[v50];
    v60 = sub_25454A234();
    sub_25454A264();
    v61 = sub_25454BFC4();
    if (sub_25454C044())
    {
      v75 = v56;

      sub_25454A294();

      v63 = v72;
      v62 = v73;
      if ((*(v72 + 88))(v12, v73) == *MEMORY[0x277D85B00])
      {
        v64 = v13;
        v65 = "[Error] Interval already ended";
      }

      else
      {
        v66 = v63;
        v64 = v13;
        (*(v66 + 8))(v12, v62);
        v65 = "";
      }

      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = sub_25454A1F4();
      _os_signpost_emit_with_name_impl(&dword_2544A5000, v60, v61, v68, v59, v65, v67, 2u);
      MEMORY[0x259C0FDF0](v67, -1, -1);
      v13 = v64;
    }

    v55(v20, v13);
    swift_beginAccess();
    sub_254530ADC(v74);
LABEL_25:
    swift_endAccess();
  }

  result = swift_beginAccess();
  v37 = *(v3 + 16);
  if (*(v37 + 16))
  {
    result = sub_2544DA9C0(v26);
    if (v38)
    {
      v39 = v13;
      v40 = *(*(v37 + 56) + 8 * result);
      v41 = qword_27F5FACC0;

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = sub_25454A244();
      __swift_project_value_buffer(v42, qword_27F5FD398);
      v74 = v26;
      v43 = off_27977CB00[v26];
      v44 = sub_25454A234();
      sub_25454A264();
      v45 = sub_25454BFC4();
      v46 = v39;
      if (sub_25454C044())
      {

        sub_25454A294();

        v48 = v72;
        v47 = v73;
        if ((*(v72 + 88))(v10, v73) == *MEMORY[0x277D85B00])
        {
          v49 = "[Error] Interval already ended";
        }

        else
        {
          (*(v48 + 8))(v10, v47);
          v49 = "";
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = sub_25454A1F4();
        _os_signpost_emit_with_name_impl(&dword_2544A5000, v44, v45, v70, v43, v49, v69, 2u);
        MEMORY[0x259C0FDF0](v69, -1, -1);
        v46 = v39;
      }

      (*(v75 + 8))(v17, v46);
      swift_beginAccess();
      sub_254530ADC(v74);
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t InterfacePerformanceSignposter.SignpostType.hashValue.getter()
{
  v1 = *v0;
  sub_25454C3E4();
  MEMORY[0x259C0F4F0](v1);
  return sub_25454C434();
}

uint64_t InterfacePerformanceSignposter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t InterfacePerformanceSignposter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_254530954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2544DA750(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2544D4FB0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_254549394();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = _s12RegistrationVMa();
    v22 = *(v15 - 8);
    sub_2544D76F8(v14 + *(v22 + 72) * v8, a2);
    sub_254530D14(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = _s12RegistrationVMa();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_254530ADC(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_2544DA9C0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2544D561C();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_254531014(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_254530B64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25454C104() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25454C3E4();

      sub_25454BD14();
      v13 = sub_25454C434();

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

unint64_t sub_254530D14(int64_t a1, uint64_t a2)
{
  v4 = sub_254549394();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_25454C104();
    v15 = v13;
    v43 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v44 = *(v16 + 56);
    v41 = (v16 - 8);
    v42 = v17;
    do
    {
      v18 = v10;
      v19 = v44 * v12;
      v20 = v15;
      v21 = v16;
      v42(v9, *(a2 + 48) + v44 * v12, v4);
      v22 = *(a2 + 40);
      sub_254531B60();
      v23 = sub_25454BBE4();
      result = (*v41)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v19 + v44;
          v30 = v44 * a1 < v19 || v28 >= v29;
          v16 = v21;
          if (v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = *(a2 + 56);
          v32 = *(*(_s12RegistrationVMa() - 8) + 72);
          v33 = v32 * a1;
          result = v31 + v32 * a1;
          v34 = v32 * v12;
          v35 = v31 + v32 * v12 + v32;
          if (v33 < v34 || result >= v35)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v18;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v37 = v33 == v34;
            v10 = v18;
            v15 = v20;
            if (!v37)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_254531014(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25454C104() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_25454C3E4();
      MEMORY[0x259C0F4F0](v10);
      result = sub_25454C434();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
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

LABEL_4:
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

uint64_t sub_2545311A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2544DA948(a2, a3);
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
      sub_2544D3BD8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2544DA948(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_25454C354();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2544D4CD4();
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

uint64_t sub_254531320(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2544DA948(a2, a3);
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
      sub_2544D3E7C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2544DA948(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_25454C354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2544D4E40();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_25453149C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_254549394();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2544DA750(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2544D4FB0();
      goto LABEL_7;
    }

    sub_2544D4124(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_2544DA750(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_254531A20(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25454C354();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(_s12RegistrationVMa() - 8) + 72) * v15;

  return sub_254531AFC(a1, v23);
}

unint64_t sub_254531684(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2544DA9C0(a2);
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
      sub_2544D4A44(v14, a3 & 1);
      v18 = *v4;
      result = sub_2544DA9C0(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_25454C354();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2544D561C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
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

unint64_t sub_2545317D4()
{
  result = qword_27F5FD3C8;
  if (!qword_27F5FD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD3C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InterfacePerformanceSignposter.SignpostType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterfacePerformanceSignposter.SignpostType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_254531A20(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_254549394();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = _s12RegistrationVMa();
  result = sub_2544D76F8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_254531AFC(uint64_t a1, uint64_t a2)
{
  v4 = _s12RegistrationVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_254531B60()
{
  result = qword_27F5FB028;
  if (!qword_27F5FB028)
  {
    sub_254549394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FB028);
  }

  return result;
}

id sub_254531C08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
  sub_2545494C4();

  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

id sub_254531D00()
{
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
  sub_2545494C4();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for LocaleUpdateObserver()
{
  result = qword_27F5FD400;
  if (!qword_27F5FD400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_254531E40(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_25452CC60();
  v5 = v4;
  v6 = sub_25454C034();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
    sub_2545494B4();
  }
}

void sub_254531F90(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  v5 = a2;
}

void (*sub_25453200C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7HomeUI220LocaleUpdateObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
  sub_2545494C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_2545494E4();

  v4[7] = sub_254531BB8();
  return sub_254532144;
}

void sub_254532144(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_2545494D4();

  free(v1);
}

uint64_t sub_2545321D8()
{
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
  sub_2545494C4();

  v1 = *(v0 + 24);
}

uint64_t sub_25453227C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
  sub_2545494C4();

  *a2 = *(v3 + 24);
}

uint64_t sub_254532328(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
    sub_2545494B4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 24);

  v4 = sub_25454BE94();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 24);
LABEL_7:
  *(v1 + 24) = a1;
}

uint64_t sub_2545324B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF28, &qword_25454D6C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  *(v0 + 16) = sub_254549C34();
  *(v0 + 24) = 0;
  sub_2545494F4();
  v6 = sub_25454BE44();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  sub_25454BE14();

  v8 = sub_25454BE04();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  v11 = sub_2544B5138(0, 0, v5, &unk_254552F50, v9);
  sub_254532328(v11);
  return v1;
}

uint64_t sub_25453262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD228, &qword_254552718) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = *(*(sub_2545493C4() - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF40, &qword_254552F60) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = sub_25454BFF4();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = sub_25454BE14();
  v4[25] = sub_25454BE04();
  v12 = sub_25454BDB4();
  v4[26] = v12;
  v4[27] = v11;

  return MEMORY[0x2822009F8](sub_2545327C0, v12, v11);
}

uint64_t sub_2545327C0()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = [objc_opt_self() defaultCenter];
  v4 = *MEMORY[0x277CBE620];
  sub_25454C004();

  sub_25454BFE4();
  swift_beginAccess();
  swift_beginAccess();
  v5 = v0[24];
  v0[28] = sub_25454BE04();
  v6 = sub_2545337CC(&qword_27F5FAF48, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[29] = v8;
  *v8 = v0;
  v8[1] = sub_254532928;
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[21];

  return MEMORY[0x282200308](v10, v11, v6);
}

uint64_t sub_254532928()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 224);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25454BDB4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_25453301C;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_25454BDB4();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_254532AC0;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_254532AC0()
{
  v1 = v0[28];

  v2 = v0[26];
  v3 = v0[27];

  return MEMORY[0x2822009F8](sub_254532B24, v2, v3);
}

uint64_t sub_254532B24()
{
  v1 = v0[20];
  v2 = sub_254549084();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[25];
    v5 = v0[18];
    v4 = v0[19];
    (*(v0[22] + 8))(v0[23], v0[21]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[17];
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = v0[18];
      v12 = v0[19];
      sub_25452CC60();
      sub_2545493A4();
      sub_254549194();
      v13 = sub_25454BFB4();
      swift_beginAccess();
      v14 = *(v10 + 16);
      v15 = sub_25454C034();

      if (v15)
      {
        v16 = *(v10 + 16);
        *(v10 + 16) = v13;
      }

      else
      {
        v17 = v0[30];
        swift_getKeyPath();
        v18 = swift_task_alloc();
        *(v18 + 16) = v10;
        *(v18 + 24) = v13;
        v0[15] = v10;
        sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
        sub_2545494B4();
      }
    }

    if (qword_27F5FACD8 != -1)
    {
      swift_once();
    }

    v19 = v0[17];
    v20 = sub_25454A2E4();
    __swift_project_value_buffer(v20, qword_27F5FD3D8);

    v21 = sub_25454A2C4();
    v22 = sub_25454BF94();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = v0[17];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = swift_weakLoadStrong();
      if (v26)
      {
        v27 = v26;
        swift_getKeyPath();
        v0[16] = v27;
        sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
        sub_2545494C4();

        swift_beginAccess();
        v28 = *(v27 + 16);

        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v24 + 4) = v28;
      *v25 = v29;
      _os_log_impl(&dword_2544A5000, v21, v22, "Receiving NSLocale change. Drawing temperature UI with locale value: %@", v24, 0xCu);
      sub_2544AE150(v25, &qword_27F5FC420, &qword_25454FFB0);
      MEMORY[0x259C0FDF0](v25, -1, -1);
      MEMORY[0x259C0FDF0](v24, -1, -1);
    }

    v30 = v0[20];

    sub_2544AE150(v30, &qword_27F5FAF40, &qword_254552F60);
    v31 = v0[24];
    v0[28] = sub_25454BE04();
    v32 = sub_2545337CC(&qword_27F5FAF48, MEMORY[0x277CC9D68]);
    v33 = *(MEMORY[0x277D856D0] + 4);
    v34 = swift_task_alloc();
    v0[29] = v34;
    *v34 = v0;
    v34[1] = sub_254532928;
    v35 = v0[23];
    v36 = v0[20];
    v37 = v0[21];

    return MEMORY[0x282200308](v36, v37, v32);
  }
}

uint64_t sub_25453301C()
{
  *(v0 + 112) = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FAF50, &qword_25454D5C0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t LocaleUpdateObserver.deinit()
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC7HomeUI220LocaleUpdateObserver___observationRegistrar;
  sub_2545337CC(&qword_27F5FD3F8, type metadata accessor for LocaleUpdateObserver);
  sub_2545494C4();

  if (*(v0 + 24))
  {
    v2 = *(v0 + 24);

    sub_25454BEA4();
  }

  v3 = *(v0 + 24);

  v4 = sub_254549504();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  return v0;
}

uint64_t sub_254533240(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_254532328(v4);
}

uint64_t _s7HomeUI220LocaleUpdateObserverCfZ(uint64_t a1)
{
  LocaleUpdateObserver.deinit();
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 52);

  return swift_deallocClassInstance();
}

uint64_t LocaleUpdateObserver.__deallocating_deinit()
{
  sub_25454BE14();
  sub_25454BE04();
  v1 = sub_25454BDB4();
  v3 = v2;

  return MEMORY[0x2822009B0](v0, _s7HomeUI220LocaleUpdateObserverCfZ, v1, v3, 0);
}

uint64_t sub_254533364()
{
  updated = type metadata accessor for LocaleUpdateObserver();
  v1 = *(updated + 48);
  v2 = *(updated + 52);
  v3 = swift_allocObject();
  result = sub_2545324B0();
  qword_27F5FD3D0 = v3;
  return result;
}

uint64_t static LocaleUpdateObserver.shared.getter()
{
  if (qword_27F5FACD0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254533400()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD3D8);
  __swift_project_value_buffer(v0, qword_27F5FD3D8);
  return sub_25454A2D4();
}

uint64_t static LocaleUpdateObserver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F5FACD8 != -1)
  {
    swift_once();
  }

  v2 = sub_25454A2E4();
  v3 = __swift_project_value_buffer(v2, qword_27F5FD3D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_254533538()
{
  result = sub_254549504();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_254533664()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_2545336A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2545336D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_254533718(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2544AE3EC;

  return sub_25453262C(a1, v4, v5, v6);
}

uint64_t sub_2545337CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254533870()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD428);
  __swift_project_value_buffer(v0, qword_27F5FD428);
  return sub_25454A2D4();
}

uint64_t sub_254533944(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25454A2E4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25454A2D4();
}

uint64_t sub_2545339EC()
{
  v0 = sub_25454A2E4();
  __swift_allocate_value_buffer(v0, qword_27F5FD458);
  __swift_project_value_buffer(v0, qword_27F5FD458);
  return sub_25454A2D4();
}

uint64_t sub_254533A98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25454A2E4();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

HomeUI2::PlatformOS_optional __swiftcall PlatformOS.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25454C224();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlatformOS.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 0x534F63616DLL;
  v4 = 0x534F726568746FLL;
  if (v1 != 3)
  {
    v4 = 1397716596;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x534F64615069;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_254533C1C()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_254533CE8()
{
  *v0;
  *v0;
  *v0;
  sub_25454BD14();
}

uint64_t sub_254533DA0()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

void sub_254533E74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE500000000000000;
  v6 = 0x534F63616DLL;
  v7 = 0xE700000000000000;
  v8 = 0x534F726568746FLL;
  if (v2 != 3)
  {
    v8 = 1397716596;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F64615069;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_254533F08()
{
  result = qword_27F5FD470;
  if (!qword_27F5FD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD470);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformOS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformOS(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static PlatformLayout.constants.getter@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for iOSLayoutConstants(0);
  a1[4] = &protocol witness table for iOSLayoutConstants;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_254534100(boxed_opaque_existential_0);
}

uint64_t sub_254534100@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = (&v65 - v4);
  v5 = sub_25454A454();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0x4048000000000000;
  sub_25454AF94();
  sub_25454B084();
  v10 = sub_25454B0D4();

  *(a1 + 8) = v10;
  *(a1 + 16) = xmmword_254553040;
  *(a1 + 32) = 0x4070E00000000000;
  v11 = sub_25454B674();
  v12 = MEMORY[0x277CE0F60];
  *(a1 + 64) = MEMORY[0x277CE0F78];
  *(a1 + 72) = v12;
  *(a1 + 40) = v11;
  *(a1 + 80) = xmmword_254553050;
  *(a1 + 96) = xmmword_254553060;
  *(a1 + 112) = xmmword_254553070;
  *(a1 + 128) = xmmword_254553080;
  sub_25454AF94();
  sub_25454B074();
  v13 = sub_25454B0D4();

  *(a1 + 144) = v13;
  v14 = type metadata accessor for iOSLayoutConstants(0);
  v69 = *(v14 + 76);
  v70 = v14;
  v15 = objc_opt_self();
  v72 = v15;
  v16 = [v15 secondaryLabelColor];
  sub_25454B5F4();
  v74 = *MEMORY[0x277CDF3D0];
  v17 = v6[13];
  v18 = v9;
  v17(v9);
  v73 = v6 + 13;
  v19 = v17;
  v20 = sub_25454B614();

  v21 = v6[1];
  v21(v9, v5);
  v75 = v6 + 1;
  v81 = MEMORY[0x277CE0F60];
  v80 = MEMORY[0x277CE0F78];
  v79 = v20;
  v22 = [v15 secondaryLabelColor];
  sub_25454B5F4();
  LODWORD(v71) = *MEMORY[0x277CDF3C0];
  v17(v9);
  v23 = sub_25454B614();

  v21(v9, v5);
  v78 = MEMORY[0x277CE0F60];
  v77 = MEMORY[0x277CE0F78];
  v24 = MEMORY[0x277CE0F78];
  v76 = v23;
  sub_254549754();
  v25 = v70;
  *(a1 + v70[20]) = 0x3FD6666666666666;
  *(a1 + v25[21]) = 0x404F000000000000;
  *(a1 + v25[22]) = 0x4062600000000000;
  v26 = v25[23];
  v27 = v25;
  sub_25454AF94();
  sub_25454B084();
  v28 = sub_25454B0D4();

  *(a1 + v26) = v28;
  v29 = v27[24];
  v30 = sub_25454B654();
  v31 = MEMORY[0x277CE0F60];
  v80 = v24;
  v81 = MEMORY[0x277CE0F60];
  v79 = v30;
  v32 = sub_25454B674();
  v77 = v24;
  v78 = v31;
  v76 = v32;
  sub_254549754();
  v33 = v27[25];
  sub_25454AF94();
  sub_25454B074();
  v34 = sub_25454B0D4();

  *(a1 + v33) = v34;
  v65 = v27[26];
  v35 = v72;
  v36 = [v72 secondaryLabelColor];
  sub_25454B5F4();
  (v19)(v18, v74, v5);
  v37 = sub_25454B614();

  v21(v18, v5);
  v81 = MEMORY[0x277CE0F60];
  v80 = MEMORY[0x277CE0F78];
  v79 = v37;
  v38 = [v35 secondaryLabelColor];
  sub_25454B5F4();
  v68 = v19;
  (v19)(v18, v71, v5);
  v39 = sub_25454B614();

  v40 = v18;
  v41 = v18;
  v42 = v70;
  v69 = v5;
  v67 = v21;
  v21(v41, v5);
  v78 = MEMORY[0x277CE0F60];
  v77 = MEMORY[0x277CE0F78];
  v76 = v39;
  sub_254549754();
  *(a1 + v42[27]) = 0x4045000000000000;
  *(a1 + v42[28]) = 0x4034000000000000;
  *(a1 + v42[29]) = 0;
  *(a1 + v42[30]) = 0x4038000000000000;
  *(a1 + v42[31]) = 0x4041800000000000;
  *(a1 + v42[32]) = 0x4028000000000000;
  *(a1 + v42[33]) = 0x4038000000000000;
  *(a1 + v42[34]) = 0x4046000000000000;
  v43 = v42[35];
  sub_25454B084();
  v44 = sub_25454B044();
  v45 = *(*(v44 - 8) + 56);
  v46 = v66;
  v45(v66, 1, 1, v44);
  v47 = sub_25454B0A4();
  sub_254537024(v46);
  *(a1 + v43) = v47;
  v48 = v42[36];
  sub_25454B054();
  v45(v46, 1, 1, v44);
  v49 = sub_25454B0A4();
  sub_254537024(v46);
  *(a1 + v48) = v49;
  v50 = v42[37];
  if (qword_27F5FAD00 != -1)
  {
    swift_once();
  }

  v51 = sub_254549764();
  v52 = __swift_project_value_buffer(v51, qword_27F5FD478);
  (*(*(v51 - 8) + 16))(a1 + v50, v52, v51);
  v66 = (a1 + v42[38]);
  v53 = v72;
  v54 = [v72 systemGray6Color];
  sub_25454B5F4();
  sub_25454B694();

  v55 = v68;
  v56 = v69;
  (v68)(v40, v71, v69);
  v57 = sub_25454B614();
  v71 = v57;

  v58 = v67;
  v67(v40, v56);
  v79 = v57;
  v59 = [v53 systemGray3Color];
  sub_25454B5F4();
  sub_25454B694();

  (v55)(v40, v74, v56);
  v60 = sub_25454B614();

  v58(v40, v56);
  v76 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD2B0, &unk_254553660);
  v62 = v66;
  v66[3] = v61;
  v62[4] = sub_254537130();
  __swift_allocate_boxed_opaque_existential_0(v62);
  sub_25454A3D4();

  v63 = v42[39];
  result = sub_25454B0C4();
  *(a1 + v63) = result;
  *(a1 + v42[40]) = 0x4028000000000000;
  return result;
}

uint64_t otherOSLayoutConstants.favoriteTileRoomNameColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for otherOSLayoutConstants(0) + 72);
  v4 = sub_254549764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t otherOSLayoutConstants.normalTileAccessoryNameFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for otherOSLayoutConstants(0) + 88));
}

uint64_t otherOSLayoutConstants.normalTileAccessoryNameColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for otherOSLayoutConstants(0) + 92);
  v4 = sub_254549764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t otherOSLayoutConstants.temperatureWhenDoubleHighFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for otherOSLayoutConstants(0) + 136));
}

uint64_t otherOSLayoutConstants.tileBackgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for otherOSLayoutConstants(0) + 144);
  v4 = sub_254549764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t otherOSLayoutConstants.tileCircleOffColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for otherOSLayoutConstants(0) + 148);

  return sub_2545029C0(v3, a1);
}

uint64_t otherOSLayoutConstants.tileIconFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for otherOSLayoutConstants(0) + 152));
}

uint64_t sub_254534E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_254534EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 92);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_254534F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 144);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25453526C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 140));
}

uint64_t sub_25453549C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 76);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2545355C4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 92));
}

uint64_t sub_254535618@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 96);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2545356B4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 100));
}

uint64_t sub_254535708@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 104);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2545358DC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 144));
}

uint64_t sub_254535930@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 148);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2545359CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 152);

  return sub_2545029C0(v4, a2);
}

uint64_t sub_254535A30(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 156));
}

uint64_t sub_254535D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_254535DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 96);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_254535E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t tvOSLayoutConstants.favoriteTileRoomNameColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for tvOSLayoutConstants(0) + 80);
  v4 = sub_254549764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254535FDC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 96));
}

uint64_t sub_254536030@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 100);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t tvOSLayoutConstants.normalTileAccessoryStatusFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for tvOSLayoutConstants(0) + 104));
}

uint64_t tvOSLayoutConstants.normalTileAccessoryStatusColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for tvOSLayoutConstants(0) + 108);
  v4 = sub_254549764();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_25453630C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25453639C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_25453641C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 108);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_254536498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 148);
  v5 = sub_254549764();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2545367EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254549764();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2545368AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254549764();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_254536950()
{
  result = sub_254536A5C();
  if (v1 <= 0x3F)
  {
    result = sub_254549764();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_254536A5C()
{
  result = qword_27F5FD4A0;
  if (!qword_27F5FD4A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5FD4A0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_12Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254549764();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_13Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254549764();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_254536C94()
{
  result = sub_254536A5C();
  if (v1 <= 0x3F)
  {
    result = sub_254549764();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254536DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_254549764();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 80);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_254536E70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_254549764();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 80);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_254536F14()
{
  result = sub_254536A5C();
  if (v1 <= 0x3F)
  {
    result = sub_254549764();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_254537024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25453708C()
{
  v0 = sub_254549764();
  __swift_allocate_value_buffer(v0, qword_27F5FD478);
  __swift_project_value_buffer(v0, qword_27F5FD478);
  v1 = sub_25454BA24();
  v2 = MEMORY[0x277CE1320];
  v5[3] = v1;
  v5[4] = MEMORY[0x277CE1320];
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_25454BA04();
  v4[3] = v1;
  v4[4] = v2;
  __swift_allocate_boxed_opaque_existential_0(v4);
  sub_25454BA14();
  return sub_254549754();
}

unint64_t sub_254537130()
{
  result = qword_27F5FD300;
  if (!qword_27F5FD300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD2B0, &unk_254553660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD300);
  }

  return result;
}

uint64_t TextWithSmallTrailingPercentIfNeeded.init(string:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = swift_getKeyPath();
  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_254537374()
{
  v1 = sub_25454AA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v7 = *(v0 + 32);
  }

  else
  {
    v8 = v4;
    v7 = *v0;
    v9 = *(v0 + 8);

    if ((v9 & 1) == 0)
    {
      sub_25454BF84();
      v10 = sub_25454AED4();
      sub_25454A1E4();

      sub_25454AA84();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v2 + 8))(v6, v8);
      v7 = v12[1];
    }

    if (!v7)
    {
      v7 = sub_25454AFF4();
    }
  }

  return v7;
}

uint64_t TextWithSmallTrailingPercentIfNeeded.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_getKeyPath();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t TextWithSmallTrailingPercentIfNeeded.init(string:font:trailingFont:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

double TextWithSmallTrailingPercentIfNeeded.body.getter@<D0>(__int128 *a1@<X8>)
{
  v3 = v1[1];
  v35[0] = *v1;
  v35[1] = v3;
  v35[2] = v1[2];
  v4 = v3;

  if (sub_25454BD64())
  {

    v5 = sub_25454AAF4();
    LOBYTE(v36) = 0;
    sub_2545377C0(v35, &v23);
    *&v22[55] = v26;
    *&v22[39] = v25;
    *&v22[23] = v24;
    *&v22[7] = v23;
    *&v30[16] = *&v22[16];
    *&v30[32] = *&v22[32];
    *&v30[48] = *&v22[48];
    LOBYTE(v33[0]) = 0;
    v27 = v5;
    v28 = 0;
    v29 = v36;
    *&v30[63] = *(&v26 + 1);
    *v30 = *v22;
    v31 = 0;
  }

  else
  {
    v36 = v4;
    sub_2544AECF0();
    v6 = sub_25454B274();
    v8 = v7;
    v10 = v9;
    v11 = v1[1];
    v36 = *v1;
    v37 = v11;
    v38 = v1[2];
    sub_254537374();
    v12 = sub_25454B224();
    v14 = v13;
    v16 = v15;
    v21 = v17;
    sub_2544C9C64(v6, v8, v10 & 1);

    v34 = v16 & 1;
    v32 = 1;
    v27 = v12;
    v28 = v14;
    v29 = v16 & 1;
    *v30 = v33[0];
    *&v30[3] = *(v33 + 3);
    *&v30[15] = v23;
    *&v30[31] = v24;
    *&v30[47] = v25;
    *&v30[7] = v21;
    *&v30[63] = v26;
    v31 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD4E8, &qword_2545536A0);
  sub_254537A9C();
  sub_25454AD44();
  v18 = v39;
  a1[2] = v38;
  a1[3] = v18;
  a1[4] = v40[0];
  *(a1 + 73) = *(v40 + 9);
  result = *&v36;
  v20 = v37;
  *a1 = v36;
  a1[1] = v20;
  return result;
}

uint64_t sub_2545377C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 2);
  v5 = *(a1 + 3);

  sub_254537C70(1, v4, v5, v6);

  sub_254537D3C();
  v7 = sub_25454B274();
  v9 = v8;
  v11 = v10;
  v34 = *a1;
  v36 = a1[1];
  v38 = a1[2];
  sub_254537374();
  v12 = sub_25454B224();
  v31 = v13;
  v32 = v12;
  v30 = v14;
  v33 = v15;
  sub_2544C9C64(v7, v9, v11 & 1);

  sub_25454AB84();
  v16 = sub_25454B264();
  v18 = v17;
  v20 = v19;
  if (*(a1 + 5))
  {
    v21 = *(a1 + 5);
  }

  else
  {
    v35 = *a1;
    v37 = a1[1];
    v39 = a1[2];
    sub_254537374();
    sub_25454B154();
  }

  v22 = sub_25454B224();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_2544C9C64(v16, v18, v20 & 1);

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v28;
  sub_2544A8F00(v32, v31, v30 & 1);

  sub_2544A8F00(v22, v24, v26 & 1);

  sub_2544C9C64(v22, v24, v26 & 1);

  sub_2544C9C64(v32, v31, v30 & 1);
}

unint64_t sub_254537A9C()
{
  result = qword_27F5FD4F0;
  if (!qword_27F5FD4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD4E8, &qword_2545536A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD4F0);
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

uint64_t sub_254537B3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_254537B84(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_254537BE4()
{
  result = qword_27F5FD4F8;
  if (!qword_27F5FD4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD500, &qword_2545537B8);
    sub_254537A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD4F8);
  }

  return result;
}

uint64_t sub_254537C70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3;
  v5 = a2;
  v6 = a1;
  a1 = sub_25454BD24();
  if (__OFSUB__(a1, v6))
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
  }

  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v5;
  }

  v8 = v7 << 16;
  v9 = sub_25454BD34();
  v11 = v8 | 0xB;
  if (((v4 >> 60) & ((v5 & 0x800000000000000) == 0)) == 0)
  {
    v11 = v8 | 7;
  }

  if (v10)
  {
    a2 = v11;
  }

  else
  {
    a2 = v9;
  }

  a1 = 15;
  a3 = v5;
  a4 = v4;

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

unint64_t sub_254537D3C()
{
  result = qword_27F5FD508;
  if (!qword_27F5FD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD508);
  }

  return result;
}

uint64_t View.relativeProposed(width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v13[2] = a1;
  v13[3] = a2;
  v14 = v5;
  sub_254537E50(sub_2545382C0, v13, a3);
}

uint64_t sub_254537E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25454B8D4();
  v7 = sub_2545398A8();
  WitnessTable = swift_getWitnessTable();
  return sub_254537EF4(a1, a2, &type metadata for RelativeSizeLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_254537EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v20[0] = a6;
  v20[1] = a7;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25454A4A4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  (*(v13 + 16))(v16, v7, a3);
  sub_25454A4B4();
  v20[4] = a3;
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = v20[0];
  v20[8] = a1;
  v20[9] = a2;
  swift_getWitnessTable();
  return sub_25454A614();
}

uint64_t sub_25453809C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = sub_25454B8D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - v13;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v19[-4] = a2;
  v19[-3] = a3;
  v19[-2] = a1;
  sub_25454AC14();
  sub_25454B8C4();
  WitnessTable = swift_getWitnessTable();
  sub_2544DAD5C(v12, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v12, v7);
  sub_2544DAD5C(v14, v7, WitnessTable);
  v17(v14, v7);
}

uint64_t sub_2545382CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2544DAD5C(a1, a2, a3);
  sub_2544DAD5C(v9, a2, a3);
  (*(v6 + 8))(v9, a2);
}

uint64_t View.getSize(_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6[0] = a1;
  v6[1] = a2;
  *&v6[2] = a4;
  *&v6[3] = a5;
  return MEMORY[0x259C0E660](v6, a3, &type metadata for GetSizeModifier);
}

uint64_t sub_25453849C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD510, &qword_2545537C8);
  sub_25454B8D4();
  sub_2544AE1F0(&qword_27F5FD518, &qword_27F5FD510, &qword_2545537C8);
  sub_25454A604();
  sub_2544AE1F0(&qword_27F5FD520, &qword_27F5FD510, &qword_2545537C8);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_2545385D4()
{
  result = qword_27F5FD528;
  if (!qword_27F5FD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD528);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx7HomeUI215GetSizeModifier33_4C82DF9449F60974EC0AF7DDF36B038DLLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  sub_25454A714();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_2545386B8()
{
  result = qword_27F5FD530;
  if (!qword_27F5FD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD530);
  }

  return result;
}

uint64_t sub_25453872C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_254538774(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2545387C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v29 = a4;
  v11 = sub_25454A5B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_25454B664();
  sub_25454A594();
  v16 = v15;
  v18 = v17;
  (*(v12 + 16))(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  (*(v12 + 32))(v20 + v19, &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD550, &qword_254553A00);
  v22 = v29;
  v23 = (v29 + *(v21 + 36));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD558, &qword_254553A08);
  v25 = *(v24 + 36);

  sub_25454BE24();

  v27 = (v23 + *(v24 + 40));
  *v27 = v16;
  v27[1] = v18;
  *v23 = &unk_2545539F8;
  v23[1] = v20;
  *v22 = v14;
  return result;
}

uint64_t sub_254538A04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 112) = a3;
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  sub_25454BE14();
  *(v5 + 120) = sub_25454BE04();
  v7 = sub_25454BDB4();

  return MEMORY[0x2822009F8](sub_254538AA4, v7, v6);
}

uint64_t sub_254538AA4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);

  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD560, &unk_254553A10);
  sub_25454B934();
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 24) = v7;
  *(v0 + 32) = v8;
  sub_25454A594();
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;
  sub_25454B914();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_254538B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 2) = v5;
  *(v9 + 3) = v6;
  *(v9 + 4) = v7;
  *(v9 + 5) = v8;

  v10 = sub_25454BA54();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD540, &qword_2545539E0);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD548, &qword_2545539E8);
  v15 = (a2 + *(result + 36));
  *v15 = sub_2545393A0;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

double sub_254538C94@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD568, &qword_254553A20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD570, &qword_254553A28);
  sub_2544AE1F0(&qword_27F5FD578, &qword_27F5FD570, &qword_254553A28);
  sub_25454B3A4();
  v10 = sub_25454B044();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = sub_25454B0A4();
  sub_254537024(v5);
  KeyPath = swift_getKeyPath();
  v13 = &v9[*(v6 + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  _s7SwiftUI4FontV7HomeUI2E14softMonospaced4size6weightACSd_AC6WeightVtFZfA0__0();
  sub_2545396F4();
  sub_25454B2D4();
  sub_25453981C(v9);
  v14 = swift_getKeyPath();
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD588, &qword_254553A98) + 36);
  *v15 = v14;
  *(v15 + 8) = 1;
  *(v15 + 16) = 0;
  v16 = sub_25454B674();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD590, &qword_254553AA0) + 36)) = v16;
  sub_25454B654();
  v17 = sub_25454B694();

  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD598, &qword_254553AA8) + 36);
  *v18 = v17;
  result = 4.0;
  *(v18 + 8) = xmmword_25454EA90;
  *(v18 + 24) = 0x3FF0000000000000;
  return result;
}

double sub_254538F3C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_25454A5E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v4 + 8);
  v14 = *v4 * *&a1;
  v15 = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v16 = *v4 * *&a1;
  }

  sub_25454A654();
  v20[8] = v15;
  v20[0] = a4 & 1;
  sub_25454A5C4();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  return v18;
}

uint64_t sub_254539098(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, char a8)
{
  v16 = sub_25454A5E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v8 + 8);
  v22 = *v8 * *&a1;
  v23 = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v24 = *v8 * *&a1;
  }

  sub_25454A654();
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  CGRectGetMidX(v27);
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  CGRectGetMidY(v28);
  sub_25454BB44();
  v26[8] = v23;
  v26[0] = a8 & 1;
  sub_25454A5D4();
  return (*(v17 + 8))(v20, v16);
}

void (*sub_254539248(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_25454A334();
  return sub_2544B0720;
}

unint64_t sub_2545392D4()
{
  result = qword_27F5FD538;
  if (!qword_27F5FD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD538);
  }

  return result;
}

uint64_t sub_254539360()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2545393AC()
{
  v1 = sub_25454A5B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_254539478()
{
  v2 = *(sub_25454A5B4() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[4];
  v7 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2544AE3EC;

  return sub_254538A04(v4, v5, v0 + v3, v6, v7);
}

uint64_t sub_254539568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - v14;
  v13();
  sub_2544DAD5C(v12, a4, a6);
  v16 = *(v8 + 8);
  v16(v12, a4);
  sub_2544DAD5C(v15, a4, a6);
  return (v16)(v15, a4);
}

uint64_t sub_25453969C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454A984();
  *a1 = result;
  return result;
}

uint64_t sub_2545396C8(uint64_t *a1)
{
  v1 = *a1;

  return sub_25454A994();
}

unint64_t sub_2545396F4()
{
  result = qword_27F5FD580;
  if (!qword_27F5FD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD568, &qword_254553A20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD570, &qword_254553A28);
    sub_2544AE1F0(&qword_27F5FD578, &qword_27F5FD570, &qword_254553A28);
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD580);
  }

  return result;
}

uint64_t sub_25453981C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD568, &qword_254553A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2545398A8()
{
  result = qword_27F5FD5A0;
  if (!qword_27F5FD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5A0);
  }

  return result;
}

unint64_t sub_254539910()
{
  result = qword_27F5FD5A8;
  if (!qword_27F5FD5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD548, &qword_2545539E8);
    sub_2544AE1F0(&qword_27F5FD5B0, &qword_27F5FD540, &qword_2545539E0);
    sub_2544AE1F0(&qword_27F5FD5B8, &qword_27F5FD5C0, &unk_254553AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5A8);
  }

  return result;
}

unint64_t sub_2545399F8()
{
  result = qword_27F5FD5C8;
  if (!qword_27F5FD5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD598, &qword_254553AA8);
    sub_254539A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5C8);
  }

  return result;
}

unint64_t sub_254539A84()
{
  result = qword_27F5FD5D0;
  if (!qword_27F5FD5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD590, &qword_254553AA0);
    sub_254539B3C();
    sub_2544AE1F0(&qword_27F5FB790, &qword_27F5FB798, &qword_25454EB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5D0);
  }

  return result;
}

unint64_t sub_254539B3C()
{
  result = qword_27F5FD5D8;
  if (!qword_27F5FD5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD588, &qword_254553A98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD568, &qword_254553A20);
    sub_2545396F4();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FBA40, &qword_27F5FBA48, &qword_25454F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5D8);
  }

  return result;
}

uint64_t EnvironmentValues.widgetTileActive.getter()
{
  sub_2544DD740();
  sub_25454AAA4();
  return v1;
}

uint64_t sub_254539C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25453CCE8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.widgetTileStyle.getter()
{
  sub_254539D0C();
  sub_25454AAA4();
  return v1;
}

unint64_t sub_254539D0C()
{
  result = qword_27F5FD5E0;
  if (!qword_27F5FD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5E0);
  }

  return result;
}

uint64_t sub_254539D60@<X0>(_BYTE *a1@<X8>)
{
  sub_254539D0C();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_254539DB0(char *a1)
{
  v2 = *a1;
  sub_254539D0C();
  return sub_25454AAB4();
}

uint64_t (*EnvironmentValues.widgetTileStyle.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_254539D0C();
  sub_25454AAA4();
  return sub_254539E98;
}

uint64_t sub_254539E98(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_25454AAB4();
}

uint64_t sub_254539EDC@<X0>(_BYTE *a1@<X8>)
{
  sub_2544DD740();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_254539F2C(char *a1)
{
  v2 = *a1;
  sub_2544DD740();
  return sub_25454AAB4();
}

uint64_t (*EnvironmentValues.widgetTileActive.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_2544DD740();
  sub_25454AAA4();
  *(a1 + 16) = *(a1 + 17);
  return sub_25453A01C;
}

uint64_t sub_25453A028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454B024();
  *a1 = result;
  return result;
}

uint64_t sub_25453A050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25453CD3C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_25453A0D4()
{
  result = qword_27F5FD5E8;
  if (!qword_27F5FD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5E8);
  }

  return result;
}

uint64_t (*EnvironmentValues.primaryFont.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_25453A0D4();
  sub_25454AAA4();
  return sub_25453A1E8;
}

uint64_t sub_25453A1F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25454B104();
  *a1 = result;
  return result;
}

uint64_t sub_25453A23C(void (*a1)(void))
{
  a1();
  sub_25454AAA4();
  return v2;
}

unint64_t sub_25453A284()
{
  result = qword_27F5FD5F0;
  if (!qword_27F5FD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5F0);
  }

  return result;
}

uint64_t keypath_get_8Tm@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_25454AAA4();
  *a2 = v4;
  return result;
}

uint64_t sub_25453A374(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();

  return sub_25454AAB4();
}

uint64_t (*EnvironmentValues.secondaryFont.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_25453A284();
  sub_25454AAA4();
  return sub_25453A4A0;
}

uint64_t sub_25453A4AC(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_25454AAB4();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_25454AAB4();
  }
}

double EnvironmentValues.textTruncationFadeLength.getter()
{
  sub_25453A598();
  sub_25454AAA4();
  return v1;
}

unint64_t sub_25453A598()
{
  result = qword_27F5FD5F8;
  if (!qword_27F5FD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD5F8);
  }

  return result;
}

double sub_25453A5EC@<D0>(double *a1@<X8>)
{
  sub_25453A598();
  sub_25454AAA4();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25453A63C(uint64_t *a1)
{
  v2 = *a1;
  sub_25453A598();
  return sub_25454AAB4();
}

uint64_t (*EnvironmentValues.textTruncationFadeLength.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_25453A598();
  sub_25454AAA4();
  return sub_25453A724;
}

uint64_t sub_25453A724(void *a1)
{
  a1[1] = *a1;
  v1 = a1 + 1;
  v3 = v1[1];
  v2 = v1[2];
  return sub_25454AAB4();
}

uint64_t sub_25453A75C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D16048];
  v3 = sub_254549C24();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25453A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25453CD90();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.temperatureScale.getter()
{
  sub_25453A87C();

  return sub_25454AAA4();
}

unint64_t sub_25453A87C()
{
  result = qword_27F5FD600;
  if (!qword_27F5FD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD600);
  }

  return result;
}

uint64_t sub_25453A910(uint64_t a1)
{
  v2 = sub_254549C24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_25453A87C();
  sub_25454AAB4();
  return (*(v3 + 8))(v9, v2);
}

uint64_t EnvironmentValues.temperatureScale.setter(uint64_t a1)
{
  v2 = sub_254549C24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_25453A87C();
  sub_25454AAB4();
  return (*(v3 + 8))(a1, v2);
}

void (*EnvironmentValues.temperatureScale.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_254549C24();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_25453A87C();
  sub_25454AAA4();
  return sub_25453AC90;
}

void sub_25453AC90(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[2] + 16);
  v4((*a1)[4], v3[5], v3[1]);
  v6 = v3[5];
  v5 = v3[6];
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[1];
  v10 = v3[2];
  v11 = *v3;
  if (a2)
  {
    v12 = v3[6];
    v4(v3[3], v3[4], v3[1]);
    sub_25454AAB4();
    v13 = *(v10 + 8);
    v13(v7, v9);
    v13(v6, v9);
  }

  else
  {
    v14 = v3[4];
    sub_25454AAB4();
    (*(v10 + 8))(v6, v9);
  }

  free(v6);
  free(v7);
  free(v8);

  free(v3);
}

uint64_t sub_25453ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25453CDE8(&qword_27F5FD710, &qword_27F5FC910, &qword_254550A78);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.personaIdentifier.getter()
{
  sub_25453AE84();
  sub_25454AAA4();
  return v1;
}

unint64_t sub_25453AE84()
{
  result = qword_27F5FD608;
  if (!qword_27F5FD608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD608);
  }

  return result;
}

double sub_25453AED8@<D0>(_OWORD *a1@<X8>)
{
  sub_25453AE84();
  sub_25454AAA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25453AF28(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_25453AE84();

  return sub_25454AAB4();
}

void (*EnvironmentValues.personaIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 40) = sub_25453AE84();
  sub_25454AAA4();
  *v4 = v4[1];
  return sub_25453B05C;
}

void sub_25453B05C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v5 = v2[4];
  v6 = v2[5];
  v2[3] = v3;
  if (a2)
  {

    sub_25454AAB4();
    v7 = v2[1];
  }

  else
  {
    sub_25454AAB4();
  }

  free(v2);
}

uint64_t sub_25453B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25453CDE8(&qword_27F5FD718, &qword_27F5FCBA0, &qword_254550F00);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues._showsWidgetContainerBackground.getter()
{
  sub_25453B234();
  sub_25454AAA4();
  v0 = v7;
  if (v7 == 2)
  {
    if (MEMORY[0x277CE3B20])
    {
      v1 = MEMORY[0x277CE3B10] == 0;
    }

    else
    {
      v1 = 1;
    }

    if (v1 || MEMORY[0x277CE3AF0] == 0 || MEMORY[0x277CE3B00] == 0 || MEMORY[0x277CE3B08] == 0)
    {
      v0 = 1;
    }

    else
    {
      sub_25454A9F4();
      sub_25453B288();
      sub_25454AAA4();
      v0 = v6;
    }
  }

  return v0 & 1;
}

unint64_t sub_25453B234()
{
  result = qword_27F5FD610;
  if (!qword_27F5FD610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD610);
  }

  return result;
}

unint64_t sub_25453B288()
{
  result = qword_27F5FD618;
  if (!qword_27F5FD618)
  {
    sub_25454A9F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD618);
  }

  return result;
}

uint64_t sub_25453B2D4@<X0>(_BYTE *a1@<X8>)
{
  sub_25453B234();
  result = sub_25454AAA4();
  v3 = v9;
  if (v9 == 2)
  {
    if (MEMORY[0x277CE3B20])
    {
      v4 = MEMORY[0x277CE3B10] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4 || MEMORY[0x277CE3AF0] == 0 || MEMORY[0x277CE3B00] == 0 || MEMORY[0x277CE3B08] == 0)
    {
      v3 = 1;
    }

    else
    {
      sub_25454A9F4();
      sub_25453B288();
      result = sub_25454AAA4();
      v3 = v8;
    }
  }

  *a1 = v3 & 1;
  return result;
}

uint64_t (*EnvironmentValues._showsWidgetContainerBackground.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_25453B234();
  sub_25454AAA4();
  v3 = *(a1 + 17);
  if (v3 == 2)
  {
    if (MEMORY[0x277CE3B20])
    {
      v4 = MEMORY[0x277CE3B10] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4 || MEMORY[0x277CE3AF0] == 0 || MEMORY[0x277CE3B00] == 0 || MEMORY[0x277CE3B08] == 0)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      sub_25454A9F4();
      sub_25453B288();
      sub_25454AAA4();
      LOBYTE(v3) = *(a1 + 17);
    }
  }

  *(a1 + 16) = v3 & 1;
  return sub_25453B4D0;
}

uint64_t sub_25453B4DC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_25454AAB4();
}

uint64_t View.widgetTileStyle(_:)()
{
  swift_getKeyPath();
  sub_25454B314();
}

uint64_t sub_25453B580@<X0>(_BYTE *a1@<X8>)
{
  sub_254539D0C();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_25453B5D0(char *a1)
{
  v2 = *a1;
  sub_254539D0C();
  return sub_25454AAB4();
}

uint64_t View.widgetTileActive(_:)()
{
  swift_getKeyPath();
  sub_25454B314();
}

uint64_t sub_25453B690@<X0>(_BYTE *a1@<X8>)
{
  sub_2544DD740();
  result = sub_25454AAA4();
  *a1 = v3;
  return result;
}

uint64_t sub_25453B6E0(char *a1)
{
  v2 = *a1;
  sub_2544DD740();
  return sub_25454AAB4();
}

uint64_t View.fonts(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD620, &qword_254553B10);
  v7 = sub_25454A714();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  swift_getKeyPath();
  v15 = a1;
  sub_25454B314();

  swift_getKeyPath();
  v15 = a2;
  v12 = sub_2544DB4B4(&qword_27F5FD628, &qword_27F5FD620, &qword_254553B10);
  v14[1] = a4;
  v14[2] = v12;
  swift_getWitnessTable();
  sub_25454B314();

  return (*(v8 + 8))(v11, v7);
}

uint64_t View.textTruncationFadeLength(_:)()
{
  swift_getKeyPath();
  sub_25454B314();
}

double sub_25453B998@<D0>(double *a1@<X8>)
{
  sub_25453A598();
  sub_25454AAA4();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25453B9E8(uint64_t *a1)
{
  v2 = *a1;
  sub_25453A598();
  return sub_25454AAB4();
}

uint64_t View.personaIdentifier(_:)()
{
  swift_getKeyPath();
  sub_25454B314();
}

double sub_25453BB04@<D0>(_OWORD *a1@<X8>)
{
  sub_25453AE84();
  sub_25454AAA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t View.widgetTemperatureTextStyle<A>(value:countsDown:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v19 = a3;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WidgetTemperatureStyle();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  (*(v8 + 16))(v11, a1, a4);
  sub_25453BD1C(a2, v11, a4, v16);
  MEMORY[0x259C0E660](v16, v19, v12, v20);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_25453BD1C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 9) = a1;
  v8 = type metadata accessor for WidgetTemperatureStyle();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 40);

  return v9(v10, a2, a3);
}

uint64_t sub_25453BDCC(char *a1)
{
  v2 = *a1;
  sub_25453B234();
  return sub_25454AAB4();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy7HomeUI215WidgetTileStyleOGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_25454A714();
  sub_2544DB4B4(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_25453BEE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD620, &qword_254553B10);
  sub_25454A714();
  sub_25454A714();
  sub_2544DB4B4(&qword_27F5FD628, &qword_27F5FD620, &qword_254553B10);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25453C010(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for WidgetTemperatureStyle();
  sub_25454A714();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_25453C0A4(uint64_t a1)
{
  sub_25453C514();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25453C134(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
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

  v9 = ((v6 + 10) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 10) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
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

void sub_25453C2B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 10) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_46:
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
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 10] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_25453C514()
{
  if (!qword_27F5FD6F0)
  {
    v0 = sub_25454A464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FD6F0);
    }
  }
}

uint64_t sub_25453C628@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v49 = sub_25454AA94();
  v48 = *(v49 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25454A7C4();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v63 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v10 = sub_25454AE24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD720, &qword_2545540B0);
  v11 = sub_25454A714();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v11);
  v59 = &v45 - v13;
  v14 = *(a1 + 16);
  v55 = *(*(a1 + 24) + 8);
  v56 = v14;
  sub_25454ABB4();
  v15 = sub_25454A714();
  v57 = *(v15 - 8);
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v54 = &v45 - v17;
  v58 = v10;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_2544DB4B4(&qword_27F5FD728, &qword_27F5FD720, &qword_2545540B0);
  v51 = WitnessTable;
  v70 = WitnessTable;
  v71 = v19;
  v62 = v11;
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v50 = v20;
  v68 = v20;
  v69 = v21;
  v22 = swift_getWitnessTable();
  v66 = v15;
  v67 = v22;
  v52 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  v24 = *(v53 + 64);
  v25 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v45 - v28;
  v30 = *v3;
  if (*(v3 + 8) != 1)
  {
    v33 = *v3;

    sub_25454BF84();
    v34 = sub_25454AED4();
    v46 = a1;
    v35 = v34;
    sub_25454A1E4();

    a1 = v46;
    v36 = v47;
    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(v30, 0);
    (*(v48 + 8))(v36, v49);
    if (v66 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v32 = v63;
    sub_25454A7B4();
    goto LABEL_6;
  }

  if (v30)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = *(v3 + 9);
  v32 = v63;
  sub_25454A794();
LABEL_6:
  v37 = v59;
  sub_25453CC74();
  (*(v64 + 8))(v32, v65);
  sub_25454BA94();
  v38 = v3 + *(a1 + 40);
  v39 = v54;
  v40 = v62;
  sub_25454B584();

  (*(v61 + 8))(v37, v40);
  v41 = v52;
  sub_25454B3A4();
  (*(v57 + 8))(v39, v15);
  v66 = v15;
  v67 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2544DAD5C(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v43 = *(v53 + 8);
  v43(v27, OpaqueTypeMetadata2);
  sub_2544DAD5C(v29, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v43)(v29, OpaqueTypeMetadata2);
}

uint64_t sub_25453CC74()
{
  swift_getKeyPath();
  sub_25454B314();
}

unint64_t sub_25453CCE8()
{
  result = qword_27F5FD6F8;
  if (!qword_27F5FD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD6F8);
  }

  return result;
}

unint64_t sub_25453CD3C()
{
  result = qword_27F5FD700;
  if (!qword_27F5FD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD700);
  }

  return result;
}

unint64_t sub_25453CD90()
{
  result = qword_27F5FD708;
  if (!qword_27F5FD708)
  {
    sub_254549C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD708);
  }

  return result;
}

uint64_t sub_25453CDE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25453CE98(uint64_t a1)
{
  v2 = sub_25454A7C4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25454A8F4();
}

uint64_t sub_25453CF68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WidgetTemperatureStyle();
  swift_getWitnessTable();
  sub_25454AE24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD720, &qword_2545540B0);
  sub_25454A714();
  v3 = *(v2 + 8);
  sub_25454ABB4();
  sub_25454A714();
  swift_getWitnessTable();
  sub_2544DB4B4(&qword_27F5FD728, &qword_27F5FD720, &qword_2545540B0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25453D0F4()
{
  v1 = sub_25454AA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_25454BF84();
    v8 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_25453D23C()
{
  v1 = sub_25454AA94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_25454BF84();
    v8 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_25453D380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25454AA94();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD730, &qword_254554048);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_2544AE240(v2 + *(a1 + 40), &v18 - v12, &qword_27F5FD730, &qword_254554048);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_254549C24();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_25454BF84();
    v17 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_25453D584@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A974();
  *a1 = result & 1;
  return result;
}

double TemperatureLabel.maxSize.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_25453D5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5FD858, &qword_254554248);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v51 - v4;
  v54 = sub_25454ABE4();
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5FD7C0, &unk_254554090);
  v7 = *(*(v59 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v59);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v51 - v10;
  v11 = sub_254549C24();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FBA88, &unk_25454FB20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - v17;
  v19 = sub_254549854();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  v25 = *(a1 + 24);
  v57 = *(a1 + 44);
  sub_2545498E4();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_2544AE150(v18, &qword_27F5FBA88, &unk_25454FB20);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    sub_25453D380(a1, v14);
    v26 = MEMORY[0x259C0CFB0](v23, v14);
    v28 = v27;
    (*(v55 + 8))(v14, v56);
    if (v28)
    {
      v63 = v26;
      v64 = v28;
      sub_2544AECF0();
      v29 = sub_25454B274();
      v31 = v30;
      v63 = v29;
      v64 = v30;
      v33 = v32 & 1;
      v65 = v32 & 1;
      v66 = v34;
      v35 = v51;
      sub_25454ABC4();
      v36 = v53;
      sub_25454B4A4();
      (*(v52 + 8))(v35, v54);
      sub_2544C9C64(v29, v31, v33);

      sub_2544AE240(v36, v61, qword_27F5FD7C0, &unk_254554090);
      swift_storeEnumTagMultiPayload();
      sub_25453F920();
      sub_25454AD44();
      sub_2544AE150(v36, qword_27F5FD7C0, &unk_254554090);
      return (*(v20 + 8))(v23, v19);
    }

    (*(v20 + 8))(v23, v19);
  }

  sub_25454AB84();
  v38 = sub_25454B264();
  v40 = v39;
  v42 = v41;
  v63 = v38;
  v64 = v39;
  v65 = v41 & 1;
  v56 = v43;
  v66 = v43;
  if (sub_2545498C4())
  {
    sub_25454AB84();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_25454AB84();
    sub_2544C56A4();
    if (!sub_25454C024())
    {
LABEL_10:
      v44 = [objc_opt_self() mainBundle];
    }
  }

  v45 = sub_25454B264();
  v47 = v46;
  v49 = v48;
  v50 = v58;
  sub_25454B434();
  sub_2544C9C64(v45, v47, v49 & 1);

  sub_2544C9C64(v38, v40, v42 & 1);

  sub_2544AE240(v50, v61, qword_27F5FD7C0, &unk_254554090);
  swift_storeEnumTagMultiPayload();
  sub_25453F920();
  sub_25454AD44();
  return sub_2544AE150(v50, qword_27F5FD7C0, &unk_254554090);
}

uint64_t TemperatureLabel.init(_:maxSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v10 = type metadata accessor for TemperatureLabel();
  v11 = v10[10];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD730, &qword_254554048);
  swift_storeEnumTagMultiPayload();
  result = (*(*(a2 - 8) + 32))(a3 + v10[11], a1, a2);
  v13 = (a3 + v10[12]);
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_25453DE2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A974();
  *a1 = result & 1;
  return result;
}

uint64_t TemperatureLabel.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_25454AEB4();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v3);
  v84 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25454A6D4();
  v81 = *(v83 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD738, &qword_254554050);
  v82 = a1;
  v8 = *(a1 + 16);
  v78 = *(a1 + 24);
  v9 = *(*(v78 + 40) + 8);
  sub_25454ABB4();
  sub_25454A714();
  sub_25454A714();
  v10 = sub_25453F384();
  WitnessTable = swift_getWitnessTable();
  v101 = v10;
  v102 = WitnessTable;
  v12 = MEMORY[0x277CDFAD8];
  v13 = swift_getWitnessTable();
  v14 = MEMORY[0x277CDF678];
  v99 = v13;
  v100 = MEMORY[0x277CDF678];
  v77 = v12;
  swift_getWitnessTable();
  sub_25454A524();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getWitnessTable();
  v15 = sub_25454B8F4();
  v76 = *(v15 - 8);
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v59 - v17;
  v19 = swift_getWitnessTable();
  v97 = v15;
  v98 = v19;
  v20 = v19;
  v59[1] = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v62 = v59 - v22;
  v23 = sub_25454A714();
  v75 = *(v23 - 8);
  v24 = *(v75 + 64);
  MEMORY[0x28223BE20](v23);
  v67 = v59 - v25;
  v97 = v15;
  v98 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeConformance2;
  v96 = v14;
  v66 = swift_getWitnessTable();
  v97 = v23;
  v98 = v66;
  v69 = MEMORY[0x277CDEAE8];
  v65 = swift_getOpaqueTypeMetadata2();
  v70 = *(v65 - 8);
  v26 = *(v70 + 64);
  MEMORY[0x28223BE20](v65);
  v59[0] = v59 - v27;
  sub_25454AEC4();
  v63 = sub_25454A714();
  v71 = *(v63 - 8);
  v28 = *(v71 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = v59 - v29;
  v30 = sub_25454A714();
  v72 = *(v30 - 8);
  v31 = *(v72 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v61 = v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v68 = v59 - v34;
  sub_25454BA64();
  v88 = v8;
  v89 = v78;
  v35 = v79;
  v90 = v79;
  sub_25454B8E4();
  v36 = v81;
  v37 = v80;
  v38 = v83;
  (*(v81 + 104))(v80, *MEMORY[0x277CDF9D8], v83);
  v39 = v62;
  sub_25454B374();
  (*(v36 + 8))(v37, v38);
  (*(v76 + 8))(v18, v15);
  v40 = (v35 + *(v82 + 48));
  v41 = *v40;
  v42 = v40[1];
  sub_25454BA54();
  v43 = v67;
  v44 = OpaqueTypeMetadata2;
  sub_25454B514();
  (*(v74 + 8))(v39, v44);
  v45 = v84;
  sub_25454AEA4();
  v46 = v59[0];
  v47 = v66;
  sub_25454B484();
  (*(v85 + 8))(v45, v86);
  (*(v75 + 8))(v43, v23);
  v97 = v23;
  v98 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v60;
  v50 = v65;
  sub_25454B4C4();
  (*(v70 + 8))(v46, v50);
  v51 = sub_2544DB604();
  v93 = v48;
  v94 = v51;
  v52 = v63;
  v53 = swift_getWitnessTable();
  v54 = v61;
  sub_25454B2F4();
  (*(v71 + 8))(v49, v52);
  v91 = v53;
  v92 = MEMORY[0x277CE01B0];
  v55 = swift_getWitnessTable();
  v56 = v68;
  sub_2544DAD5C(v54, v30, v55);
  v57 = *(v72 + 8);
  v57(v54, v30);
  sub_2544DAD5C(v56, v30, v55);
  return (v57)(v56, v30);
}

uint64_t sub_25453E830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD738, &qword_254554050);
  v7 = *(*(a3 + 40) + 8);
  sub_25454ABB4();
  sub_25454A714();
  v8 = sub_25454A714();
  v34[9] = sub_25453F384();
  v34[10] = swift_getWitnessTable();
  v34[7] = swift_getWitnessTable();
  v34[8] = MEMORY[0x277CDF678];
  v27[4] = v8;
  v27[2] = swift_getWitnessTable();
  v9 = sub_25454A524();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v28 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v27 - v17;
  sub_25454BE14();
  v27[3] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_25454B664();
  v27[1] = v27;
  MEMORY[0x28223BE20](v19);
  v27[-4] = a2;
  v27[-3] = a3;
  v27[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD850, &qword_254554150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25454D8E0;
  v21 = sub_25454AEE4();
  *(inited + 32) = v21;
  v22 = sub_25454AF04();
  *(inited + 33) = v22;
  sub_25454AEF4();
  sub_25454AEF4();
  if (sub_25454AEF4() != v21)
  {
    sub_25454AEF4();
  }

  sub_25454AEF4();
  if (sub_25454AEF4() != v22)
  {
    sub_25454AEF4();
  }

  sub_25454A514();
  WitnessTable = swift_getWitnessTable();
  sub_2544DAD5C(v16, v9, WitnessTable);
  v24 = *(v10 + 8);
  v24(v16, v9);
  v33 = v19;
  v34[0] = &v33;
  v25 = v28;
  (*(v10 + 16))(v28, v18, v9);
  v34[1] = v25;

  v32[0] = MEMORY[0x277CE0F78];
  v32[1] = v9;
  v30 = MEMORY[0x277CE0F70];
  v31 = WitnessTable;
  sub_2544E307C(v34, 2uLL, v32);

  v24(v18, v9);
  v24(v25, v9);
}

uint64_t sub_25453EC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v73 = sub_25454A7C4();
  v71 = *(v73 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD778, &qword_254554070);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v59 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD750, &qword_254554058);
  v13 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD738, &qword_254554050);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v62 = *(*(a3 + 40) + 8);
  v20 = sub_25454ABB4();
  v60 = v16;
  v64 = v20;
  v21 = sub_25454A714();
  v69 = *(v21 - 8);
  v22 = *(v69 + 64);
  MEMORY[0x28223BE20](v21);
  v66 = &v59 - v23;
  v63 = v24;
  v25 = sub_25454A714();
  v72 = *(v25 - 8);
  v26 = *(v72 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v67 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v68 = &v59 - v29;
  sub_25454BE14();
  v65 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v74 = a2;
  v30 = type metadata accessor for TemperatureLabel();
  sub_25453D5FC(v30, v12);
  KeyPath = swift_getKeyPath();
  v32 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD7A0, &qword_254554080) + 36)];
  v33 = a1;
  *v32 = KeyPath;
  *(v32 + 1) = 1;
  v32[16] = 0;
  v34 = sub_25453D23C();
  v35 = swift_getKeyPath();
  v36 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD790, &qword_254554078) + 36)];
  *v36 = v35;
  v36[1] = v34;
  v37 = swift_getKeyPath();
  v38 = &v12[*(v9 + 36)];
  *v38 = v37;
  v38[8] = 1;
  sub_25453F674();
  sub_25454B3A4();
  sub_2544AE150(v12, &qword_27F5FD778, &qword_254554070);
  v39 = swift_getKeyPath();
  v40 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD770, &qword_254554068) + 36)];
  *v40 = v39;
  v40[1] = 0x3FE0000000000000;
  *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD760, &qword_254554060) + 36)] = 256;
  *&v15[*(v61 + 36)] = sub_25454AE34();
  if (sub_25453D0F4())
  {
    v41 = v70;
    sub_25454A7A4();
  }

  else
  {
    v41 = v70;
    sub_25454A794();
  }

  v42 = swift_getKeyPath();
  v43 = &v19[*(v60 + 36)];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD720, &qword_2545540B0);
  (*(v71 + 32))(v43 + *(v44 + 28), v41, v73);
  *v43 = v42;
  sub_2545402D0(v15, v19);
  sub_25454BA94();
  v45 = *(v30 + 44);
  v46 = sub_25453F384();
  v47 = v66;
  sub_25454B584();

  sub_254540340(v19);
  v48 = (v33 + *(v30 + 48));
  v49 = *v48;
  v50 = v48[1];
  sub_25454BA64();
  WitnessTable = swift_getWitnessTable();
  v78 = v46;
  v79 = WitnessTable;
  v52 = v63;
  v53 = swift_getWitnessTable();
  v54 = v67;
  sub_25454B514();
  (*(v69 + 8))(v47, v52);
  v76 = v53;
  v77 = MEMORY[0x277CDF678];
  v55 = swift_getWitnessTable();
  v56 = v68;
  sub_2544DAD5C(v54, v25, v55);
  v57 = *(v72 + 8);
  v57(v54, v25);
  sub_2544DAD5C(v56, v25, v55);
  v57(v56, v25);
}

unint64_t sub_25453F384()
{
  result = qword_27F5FD740;
  if (!qword_27F5FD740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD738, &qword_254554050);
    sub_25453F43C();
    sub_2544AE1F0(&qword_27F5FD728, &qword_27F5FD720, &qword_2545540B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD740);
  }

  return result;
}

unint64_t sub_25453F43C()
{
  result = qword_27F5FD748;
  if (!qword_27F5FD748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD750, &qword_254554058);
    sub_25453F4F4();
    sub_2544AE1F0(&qword_27F5FCE70, &qword_27F5FCE78, &unk_254551580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD748);
  }

  return result;
}

unint64_t sub_25453F4F4()
{
  result = qword_27F5FD758;
  if (!qword_27F5FD758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD760, &qword_254554060);
    sub_25453F580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD758);
  }

  return result;
}

unint64_t sub_25453F580()
{
  result = qword_27F5FD768;
  if (!qword_27F5FD768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD770, &qword_254554068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD778, &qword_254554070);
    sub_25453F674();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FC138, &qword_27F5FC140, &unk_2545540A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD768);
  }

  return result;
}

unint64_t sub_25453F674()
{
  result = qword_27F5FD780;
  if (!qword_27F5FD780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD778, &qword_254554070);
    sub_25453F72C();
    sub_2544AE1F0(&qword_27F5FBA78, &qword_27F5FBA70, &qword_254553BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD780);
  }

  return result;
}

unint64_t sub_25453F72C()
{
  result = qword_27F5FD788;
  if (!qword_27F5FD788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD790, &qword_254554078);
    sub_25453F7E4();
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD788);
  }

  return result;
}

unint64_t sub_25453F7E4()
{
  result = qword_27F5FD798;
  if (!qword_27F5FD798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD7A0, &qword_254554080);
    sub_25453F89C();
    sub_2544AE1F0(&qword_27F5FBA40, &qword_27F5FBA48, &qword_25454F200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD798);
  }

  return result;
}

unint64_t sub_25453F89C()
{
  result = qword_27F5FD7A8;
  if (!qword_27F5FD7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD7B0, &qword_254554088);
    sub_25453F920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD7A8);
  }

  return result;
}

unint64_t sub_25453F920()
{
  result = qword_27F5FD7B8;
  if (!qword_27F5FD7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F5FD7C0, &unk_254554090);
    sub_2544DB604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD7B8);
  }

  return result;
}

void sub_25453FA04(uint64_t a1)
{
  sub_25453C514();
  if (v2 <= 0x3F)
  {
    sub_2544C89C0();
    if (v3 <= 0x3F)
    {
      sub_25453FF50();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25453FAD4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_254549C24() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + v11 + 1;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v16 = ((*(v8 + 64) + ((v15 + ((v13 + 32) & ~v14)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v12 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v12 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v9 > 0xFE)
  {
    v26 = *(v8 + 48);

    return v26((v15 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v14 + 25) & ~v14)) & ~v11);
  }

  else
  {
    v25 = *(a1 + 8);
    if (v25 > 1)
    {
      return (v25 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_25453FCE8(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_254549C24() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v9 + v13 + 1;
  v18 = ((*(v10 + 64) + ((v17 + ((v15 + 32) & ~(v15 | 7))) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v14 >= a3)
  {
    v21 = 0;
    v22 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v17 + ((v15 + 32) & ~(v15 | 7))) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a3 - v14 + 1;
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

    v22 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *(a1 + v18) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
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

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v11 > 0xFE)
      {
        v25 = *(v10 + 56);

        v25((v17 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v16 + 25) & ~v16)) & ~v13, a2);
      }

      else if (a2 > 0xFE)
      {
        *(a1 + 8) = 0;
        *a1 = (a2 - 255);
      }

      else
      {
        *(a1 + 8) = -a2;
      }

      return;
    }
  }

  if (v18)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v18)
  {
    v24 = ~v14 + a2;
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

void sub_25453FF50()
{
  if (!qword_27F5FD848)
  {
    sub_254549C24();
    v0 = sub_25454A464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FD848);
    }
  }
}

uint64_t sub_25453FFA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD738, &qword_254554050);
  v3 = *(*(v2 + 40) + 8);
  sub_25454ABB4();
  sub_25454A714();
  sub_25454A714();
  sub_25453F384();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25454A524();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getWitnessTable();
  sub_25454B8F4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25454A714();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25454AEC4();
  sub_25454A714();
  sub_25454A714();
  swift_getOpaqueTypeConformance2();
  sub_2544DB604();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_254540274@<X0>(void *a1@<X8>)
{
  result = sub_25454A904();
  *a1 = v3;
  return result;
}

uint64_t sub_2545402D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD750, &qword_254554058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254540340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD738, &qword_254554050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetShapeStyle.resolve(in:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = sub_25454BBA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = sub_25454AA04();
  MEMORY[0x28223BE20](v8);
  sub_25454BB94();
  v9 = sub_25454BB74();
  v10 = *(v5 + 8);
  v10(&v24 - v7, v4);
  v11 = (v10)(&v24 - v7, v4);
  if (v9)
  {
    v12 = 48;
    goto LABEL_3;
  }

  v24 = v2;
  MEMORY[0x28223BE20](v11);
  v16 = sub_25454AA04();
  MEMORY[0x28223BE20](v16);
  sub_25454BB84();
  v17 = sub_25454BB74();
  v10(&v24 - v7, v4);
  v10(&v24 - v7, v4);
  if (v17)
  {
    sub_25453B234();
    sub_25454AAA4();
    if (v28 == 2)
    {
      v12 = 40;
      v3 = v24;
      if (!MEMORY[0x277CE3B20] || !MEMORY[0x277CE3B10] || !MEMORY[0x277CE3AF0] || !MEMORY[0x277CE3B00] || !MEMORY[0x277CE3B08])
      {
        goto LABEL_3;
      }

      sub_25454A9F4();
      sub_25453B288();
      sub_25454AAA4();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = v24;
      if ((v28 & 1) == 0)
      {
LABEL_13:
        v12 = 44;
        goto LABEL_3;
      }
    }

    v12 = 40;
    goto LABEL_3;
  }

  v18 = sub_25454A454();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = sub_25454A834();
  MEMORY[0x28223BE20](v21);
  v22 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, *MEMORY[0x277CDF3C0], v18);
  LOBYTE(v20) = sub_25454A444();
  v23 = *(v19 + 8);
  v23(v22, v18);
  v23(v22, v18);
  if ((v20 & 1) == 0)
  {
    v14 = v24;
    v13 = v25;
    return (*(*(*(v13 + 16) - 8) + 16))(v26, v14);
  }

  v12 = 36;
  v3 = v24;
LABEL_3:
  v13 = v25;
  v14 = v3 + *(v25 + v12);
  return (*(*(*(v13 + 16) - 8) + 16))(v26, v14);
}

uint64_t WidgetShapeStyle.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[3] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2544DD17C();
  v25[1] = v7;
  v25[0] = swift_getWitnessTable();
  v25[6] = MEMORY[0x277CE14A8];
  v25[7] = a1;
  v25[8] = v7;
  v25[9] = v25[0];
  v8 = sub_25454A434();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  v13 = sub_25454A714();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v25 - v19;
  (*(v3 + 16))(v6, v25[2], a1);
  sub_25454A424();
  WitnessTable = swift_getWitnessTable();
  sub_25454B3C4();
  (*(v9 + 8))(v12, v8);
  v25[4] = WitnessTable;
  v25[5] = MEMORY[0x277CE0770];
  v22 = swift_getWitnessTable();
  sub_2544DAD5C(v18, v13, v22);
  v23 = *(v14 + 8);
  v23(v18, v13);
  sub_2544DAD5C(v20, v13, v22);
  return (v23)(v20, v13);
}

uint64_t WidgetShapeStyle<>.init(_:light:dark:vibrant:vibrantOnEmptyContainer:accented:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v71 = a6;
  v72 = a5;
  sub_2544DC694(a2, &v75);
  if (v76)
  {
    sub_2544DC71C(&v75, v73);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v12 = v74;
    v13 = __swift_project_boxed_opaque_existential_1(v73, v74);
    v14 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v13);
    (*(v16 + 16))(&v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v69 = sub_25454A554();

    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v17 = a1[3];
    v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
    v19 = *(*(v17 - 8) + 64);
    MEMORY[0x28223BE20](v18);
    (*(v21 + 16))(&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v69 = sub_25454A554();
  }

  sub_2544DC694(a3, &v75);
  if (v76)
  {
    sub_2544DC71C(&v75, v73);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v22 = v74;
    v23 = __swift_project_boxed_opaque_existential_1(v73, v74);
    v24 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v23);
    (*(v26 + 16))(&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v68 = sub_25454A554();

    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v27 = a1[3];
    v28 = __swift_project_boxed_opaque_existential_1(a1, v27);
    v29 = *(*(v27 - 8) + 64);
    MEMORY[0x28223BE20](v28);
    (*(v31 + 16))(&v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    v68 = sub_25454A554();
  }

  sub_2544DC694(a4, &v75);
  if (v76)
  {
    sub_2544DC71C(&v75, v73);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v32 = v74;
    v33 = __swift_project_boxed_opaque_existential_1(v73, v74);
    v34 = *(*(v32 - 8) + 64);
    MEMORY[0x28223BE20](v33);
    (*(v36 + 16))(&v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    v67 = sub_25454A554();

    __swift_destroy_boxed_opaque_existential_0(v73);
  }

  else
  {
    v37 = a1[3];
    v38 = __swift_project_boxed_opaque_existential_1(a1, v37);
    v39 = *(*(v37 - 8) + 64);
    MEMORY[0x28223BE20](v38);
    (*(v41 + 16))(&v67 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    v67 = sub_25454A554();
  }

  sub_2544DC694(v72, &v75);
  v70 = a4;
  if (v76)
  {
    sub_2544DC71C(&v75, v73);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  sub_2544DC694(a4, &v75);
  if (v76)
  {
    sub_2544DC71C(&v75, v73);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
LABEL_21:
      swift_task_reportUnexpectedExecutor();
    }

LABEL_22:
    v42 = v74;
    v43 = __swift_project_boxed_opaque_existential_1(v73, v74);
    v44 = *(*(v42 - 8) + 64);
    MEMORY[0x28223BE20](v43);
    (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    v47 = sub_25454A554();

    __swift_destroy_boxed_opaque_existential_0(v73);
    goto LABEL_23;
  }

  v62 = a1[3];
  v63 = __swift_project_boxed_opaque_existential_1(a1, v62);
  v64 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  (*(v66 + 16))(&v67 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_25454A554();
LABEL_23:
  v48 = v71;
  sub_2544DC694(v71, &v75);
  if (v76)
  {
    sub_2544DC71C(&v75, v73);
    sub_25454BE14();
    sub_25454BE04();
    sub_25454BDB4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v49 = v74;
    v50 = __swift_project_boxed_opaque_existential_1(v73, v74);
    v51 = *(*(v49 - 8) + 64);
    MEMORY[0x28223BE20](v50);
    (*(v53 + 16))(&v67 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    v54 = sub_25454A554();

    __swift_destroy_boxed_opaque_existential_0(v73);
    sub_2544DDC9C(v71);
    sub_2544DDC9C(v72);
    sub_2544DDC9C(v70);
    sub_2544DDC9C(a3);
    sub_2544DDC9C(a2);
  }

  else
  {
    v55 = a1[3];
    v56 = __swift_project_boxed_opaque_existential_1(a1, v55);
    v57 = *(*(v55 - 8) + 64);
    MEMORY[0x28223BE20](v56);
    (*(v59 + 16))(&v67 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
    v54 = sub_25454A554();
    sub_2544DDC9C(v48);
    sub_2544DDC9C(v72);
    sub_2544DDC9C(v70);
    sub_2544DDC9C(a3);
    sub_2544DDC9C(a2);
  }

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v61 = v68;
  *a7 = v69;
  a7[1] = v61;
  a7[2] = v67;
  a7[3] = v47;
  a7[4] = v54;
  return result;
}

uint64_t sub_2545416A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254541720(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
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

  return v5 + (v9 | v13) + 1;
}

char *sub_254541888(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v7;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
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
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
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
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_254541AD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for WidgetShapeStyle();
  sub_2544DD17C();
  swift_getWitnessTable();
  sub_25454A434();
  sub_25454A714();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_254541BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  (*(v6 + 16))(v10, a1, a4);
  return sub_25454A424();
}

uint64_t sub_254541D44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25454AA94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD8E0, &qword_254554370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_254544020(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25454BBA4();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_25454BF84();
    v16 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_254541F2C(uint64_t a1)
{
  v3 = sub_25454AA94();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 68);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_25454BF84();
    v10 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t WidgetTileContainer.init(accentedFill:fill:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD8E0, &qword_254554370);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for WidgetTileContainer();
  v13 = a6 + v12[17];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = *(a5 - 8);
  (*(v14 + 16))(a6 + v12[18], a1, a5);
  v15 = *(a4 - 8);
  v16 = (*(v15 + 16))(a6 + v12[19], a2, a4);
  v17 = a6 + v12[20];
  a3(v16);
  (*(v15 + 8))(a2, a4);
  return (*(v14 + 8))(a1, a5);
}

uint64_t sub_254542234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  v5 = *(a1 + 32);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v31 - v10;
  v11 = *(v9 + 16);
  v12 = sub_254543490();
  v13 = *(a1 + 40);
  v40 = MEMORY[0x277CE04C8];
  v41 = v11;
  v42 = v12;
  v43 = v13;
  v14 = sub_25454A434();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  sub_254541BB0(v3 + *(a1 + 76), 256, MEMORY[0x277CE04C8], v11);
  WitnessTable = swift_getWitnessTable();
  sub_2544DAD5C(v19, v14, WitnessTable);
  v32 = *(v15 + 8);
  v32(v19, v14);
  v23 = *(a1 + 56);
  v24 = v3 + *(a1 + 80);
  v25 = v36;
  sub_2544DAD5C(v24, v5, v23);
  (*(v15 + 16))(v19, v21, v14);
  v40 = v19;
  v26 = v33;
  v27 = v34;
  (*(v34 + 16))(v33, v25, v5);
  v41 = v26;
  v39[0] = v14;
  v39[1] = v5;
  v37 = WitnessTable;
  v38 = v23;
  sub_2544E307C(&v40, 2uLL, v39);
  v28 = *(v27 + 8);
  v28(v36, v5);
  v29 = v32;
  v32(v21, v14);
  v28(v26, v5);
  return v29(v19, v14);
}

uint64_t sub_25454253C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = *(a1 + 16);
  v4 = sub_254543490();
  v5 = *(a1 + 40);
  v52 = MEMORY[0x277CE04C8];
  v53 = v3;
  v6 = MEMORY[0x277CE04C8];
  v54 = v4;
  v55 = v5;
  v7 = v4;
  v41 = v4;
  sub_25454A434();
  v8 = *(a1 + 32);
  swift_getTupleTypeMetadata2();
  v42 = sub_25454BAF4();
  v45 = *(v42 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v42);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v36 - v12;
  v13 = *(a1 + 24);
  v39 = *(a1 + 48);
  OpaqueTypeConformance2 = v13;
  v52 = v6;
  v53 = v13;
  v54 = v7;
  v55 = v39;
  v14 = sub_25454A434();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  WitnessTable = swift_getWitnessTable();
  v52 = v14;
  v53 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  v21 = v38;
  v22 = *(v38 + 64);
  v23 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v47 = &v36 - v26;
  sub_254541BB0(v48 + *(a1 + 72), 256, MEMORY[0x277CE04C8], OpaqueTypeConformance2);
  sub_25454B2A4();
  (*(v15 + 8))(v18, v14);
  v52 = v14;
  v53 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = OpaqueTypeMetadata2;
  sub_2544DAD5C(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v41 = *(v21 + 8);
  v41(v25, OpaqueTypeMetadata2);
  v27 = v43;
  sub_254542234(a1, v43);
  v28 = v42;
  v29 = swift_getWitnessTable();
  v30 = v44;
  sub_2544DAD5C(v27, v28, v29);
  v31 = v45;
  v32 = *(v45 + 8);
  v32(v27, v28);
  v33 = v37;
  (*(v38 + 16))(v25, v47, v37);
  v52 = v25;
  (*(v31 + 16))(v27, v30, v28);
  v53 = v27;
  v51[0] = v33;
  v51[1] = v28;
  v49 = OpaqueTypeConformance2;
  v50 = v29;
  sub_2544E307C(&v52, 2uLL, v51);
  v32(v30, v28);
  v34 = v41;
  v41(v47, v33);
  v32(v27, v28);
  return v34(v25, v33);
}

uint64_t WidgetTileContainer.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_254543490();
  v4 = MEMORY[0x277CE04C8];
  v23 = a1[6];
  v35 = v3;
  v36 = v23;
  v22 = a1[3];
  v33 = sub_25454A434();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v5 = a1[2];
  v6 = a1[5];
  v33 = v4;
  WitnessTable = v5;
  v35 = v3;
  v36 = v6;
  sub_25454A434();
  v7 = a1[4];
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  sub_25454AD54();
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_25454B8F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  *&v16 = v5;
  *(&v16 + 1) = v22;
  *&v17 = v7;
  *(&v17 + 1) = v6;
  v26 = v16;
  v27 = v17;
  v18 = a1[7];
  v28 = v23;
  v29 = v18;
  v30 = v24;
  sub_25454BA54();
  sub_25454B8E4();
  v19 = swift_getWitnessTable();
  sub_2544DAD5C(v13, v8, v19);
  v20 = *(v9 + 8);
  v20(v13, v8);
  sub_2544DAD5C(v15, v8, v19);
  return (v20)(v15, v8);
}

uint64_t sub_254542CB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v65 = a6;
  v71 = a7;
  v12 = sub_254543490();
  v13 = MEMORY[0x277CE04C8];
  v74 = MEMORY[0x277CE04C8];
  v75 = a1;
  v76 = v12;
  v77 = a4;
  v64 = a4;
  sub_25454A434();
  v63 = a3;
  swift_getTupleTypeMetadata2();
  v14 = sub_25454BAF4();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v58 = &v55 - v18;
  v74 = v13;
  v75 = a2;
  v19 = a2;
  v76 = v12;
  v77 = a5;
  v62 = a5;
  v20 = sub_25454A434();
  WitnessTable = swift_getWitnessTable();
  v74 = v20;
  v75 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v22 = sub_25454BAF4();
  v57 = *(v22 - 8);
  v23 = *(v57 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v56 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v55 = &v55 - v26;
  v67 = v27;
  v28 = sub_25454AD54();
  v69 = *(v28 - 8);
  v70 = v28;
  v29 = *(v69 + 64);
  MEMORY[0x28223BE20](v28);
  v68 = &v55 - v30;
  sub_25454BE14();
  v66 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_25454BBA4();
  v61 = &v55;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v75 = v19;
  v76 = v63;
  v77 = v64;
  v78 = v62;
  v79 = v65;
  v35 = type metadata accessor for WidgetTileContainer();
  v36 = sub_254541D44(v34);
  MEMORY[0x28223BE20](v36);
  sub_25454BB94();
  LOBYTE(v33) = sub_25454BB74();
  v37 = *(v32 + 8);
  v37(v34, v31);
  v37(v34, v31);
  if (v33 & 1) != 0 && (sub_254541F2C(v35))
  {
    v38 = v56;
    sub_25454253C(v35, v56);
    v39 = v67;
    v40 = swift_getWitnessTable();
    v41 = v55;
    sub_2544DAD5C(v38, v39, v40);
    v42 = *(v57 + 8);
    v42(v38, v39);
    sub_2544DAD5C(v41, v39, v40);
    swift_getWitnessTable();
    v43 = v68;
    sub_2544D9D1C(v38, v39);
    v42(v38, v39);
    v44 = v41;
    v45 = v39;
  }

  else
  {
    v46 = v59;
    sub_254542234(v35, v59);
    v47 = swift_getWitnessTable();
    v48 = v58;
    sub_2544DAD5C(v46, v14, v47);
    v42 = *(v60 + 8);
    v42(v46, v14);
    sub_2544DAD5C(v48, v14, v47);
    v49 = v67;
    swift_getWitnessTable();
    v43 = v68;
    sub_2544D9E14(v46, v49, v14);
    v42(v46, v14);
    v44 = v48;
    v45 = v14;
  }

  v42(v44, v45);
  v50 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v72 = v50;
  v73 = v51;
  v52 = v70;
  v53 = swift_getWitnessTable();
  sub_2544DAD5C(v43, v52, v53);
  (*(v69 + 8))(v43, v52);
}

uint64_t sub_2545433A4(uint64_t a1)
{
  v2 = sub_25454BBA4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25454AA14();
}

unint64_t sub_254543490()
{
  result = qword_27F5FD8E8[0];
  if (!qword_27F5FD8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5FD8E8);
  }

  return result;
}

uint64_t sub_2545434F8(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

void sub_25454354C(void *a1)
{
  sub_254543E24();
  if (v2 <= 0x3F)
  {
    sub_25453C514();
    if (v3 <= 0x3F)
    {
      v4 = a1[3];
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        v6 = a1[2];
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          v8 = a1[4];
          swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_254543624(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = *(*(sub_25454BBA4() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a3[2];
  v9 = *(a3[3] - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = a3[4];
  v15 = *(v14 - 8);
  v16 = *(v9 + 80);
  v17 = *(*(a3[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(v15 + 80);
  if (v13 <= *(v15 + 84))
  {
    v20 = *(v15 + 84);
  }

  else
  {
    v20 = v13;
  }

  if (v20 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(v8 - 8) + 64) + v19;
  v23 = a2 - v21;
  if (a2 <= v21)
  {
    goto LABEL_37;
  }

  v24 = ((v22 + ((v17 + v18 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v16 + 17) & ~v16)) & ~v18)) & ~v19) + *(v15 + 64);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v28 = ((v23 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v28))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v28 < 2)
    {
LABEL_37:
      if (v20 > 0xFE)
      {
        v33 = (((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v16 + 9) & ~v16;
        if (v10 == v21)
        {
          v34 = *(v9 + 48);

          return v34(v33);
        }

        else
        {
          v35 = (v33 + v17 + v18) & ~v18;
          if (v12 == v21)
          {
            v36 = *(v11 + 48);
            v37 = *(v11 + 84);
            v38 = v8;
          }

          else
          {
            v36 = *(v15 + 48);
            v35 = (v22 + v35) & ~v19;
            v37 = *(v15 + 84);
            v38 = v14;
          }

          return v36(v35, v37, v38);
        }
      }

      else
      {
        v32 = *(a1 + v7);
        if (v32 >= 2)
        {
          return (v32 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_37;
  }

LABEL_24:
  v29 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v29 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v30 = ((v22 + ((v17 + v18 + (((v7 & 0xFFFFFFF8) + v16 + 17) & ~v16)) & ~v18)) & ~v19) + *(v15 + 64);
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v21 + (v31 | v29) + 1;
}

void sub_25454399C(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(*(sub_25454BBA4() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = a4[2];
  v11 = *(a4[3] - 8);
  v12 = *(v11 + 84);
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  if (v12 <= v14)
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = a4[4];
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(v11 + 80);
  v20 = *(*(a4[3] - 8) + 64);
  v21 = *(v13 + 80);
  v22 = *(*(v10 - 8) + 64);
  v23 = *(v17 + 80);
  if (v15 <= v18)
  {
    v24 = *(v17 + 84);
  }

  else
  {
    v24 = v15;
  }

  if (v24 <= 0xFE)
  {
    v25 = 254;
  }

  else
  {
    v25 = v24;
  }

  v26 = v22 + v23;
  v27 = ((v22 + v23 + ((v20 + v21 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v19 + 17) & ~v19)) & ~v21)) & ~v23) + *(v17 + 64);
  if (a3 <= v25)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v25 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v25 < a2)
  {
    v29 = ~v25 + a2;
    if (v27 < 4)
    {
      v30 = (v29 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v29 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v28 > 1)
            {
LABEL_69:
              if (v28 == 2)
              {
                *&a1[v27] = v30;
              }

              else
              {
                *&a1[v27] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v28 > 1)
            {
              goto LABEL_69;
            }
          }

          goto LABEL_66;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v28 > 1)
      {
        goto LABEL_69;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_69;
      }
    }

LABEL_66:
    if (v28)
    {
      a1[v27] = v30;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v28)
  {
    goto LABEL_39;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  v34 = v9 + 1;
  if (v24 > 0xFE)
  {
    v35 = ((&a1[v34 + 7] & 0xFFFFFFFFFFFFFFF8) + v19 + 9) & ~v19;
    if (v12 == v25)
    {
      v36 = *(v11 + 56);

      v36(v35, a2);
    }

    else
    {
      v40 = (v35 + v20 + v21) & ~v21;
      if (v14 == v25)
      {
        v41 = *(v13 + 56);
        v42 = a2;
        v43 = v14;
        v44 = v10;
      }

      else
      {
        v41 = *(v17 + 56);
        v40 = (v26 + v40) & ~v23;
        v42 = a2;
        v43 = v18;
        v44 = v16;
      }

      v41(v40, v42, v43, v44);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v34 <= 3)
    {
      v37 = ~(-1 << (8 * v34));
    }

    else
    {
      v37 = -1;
    }

    if (v9 != -1)
    {
      v38 = v37 & (a2 - 255);
      if (v34 <= 3)
      {
        v39 = v9 + 1;
      }

      else
      {
        v39 = 4;
      }

      bzero(a1, v34);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          *a1 = v38;
          a1[2] = BYTE2(v38);
        }

        else
        {
          *a1 = v38;
        }
      }

      else if (v39 == 1)
      {
        *a1 = v38;
      }

      else
      {
        *a1 = v38;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_254543E24()
{
  if (!qword_27F5FD970)
  {
    sub_25454BBA4();
    v0 = sub_25454A464();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5FD970);
    }
  }
}

uint64_t sub_254543E7C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  sub_254543490();
  sub_25454A434();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_25454A434();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  swift_getTupleTypeMetadata2();
  sub_25454BAF4();
  sub_25454AD54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25454B8F4();
  return swift_getWitnessTable();
}

uint64_t sub_254544020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD8E0, &qword_254554370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254544090()
{
  result = sub_25454B104();
  qword_27F5FD978 = result;
  return result;
}

uint64_t sub_2545440B0()
{
  result = sub_25454B134();
  qword_27F5FD980 = result;
  return result;
}

uint64_t sub_2545440D0()
{
  result = sub_25454AF94();
  qword_27F5FD988 = result;
  return result;
}

uint64_t sub_2545440F0@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA0, &unk_2545515B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_25454A6D4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = v11[13];
  v18(&v26 - v16, *MEMORY[0x277CDF9F8], v10);
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v18(v15, *MEMORY[0x277CDFA10], v10);
    sub_254525428();
    if (sub_25454BC34())
    {
LABEL_8:
      v20 = v11[4];
      v20(v9, v17, v10);
      v20(&v9[*(v3 + 48)], v15, v10);
      sub_2544AE240(v9, v7, &qword_27F5FCEA0, &unk_2545515B0);
      v21 = *(v3 + 48);
      v22 = v27;
      v20(v27, v7, v10);
      v23 = v11[1];
      v23(&v7[v21], v10);
      sub_254525480(v9, v7);
      v24 = *(v3 + 48);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA8, &qword_254554640);
      v20(&v22[*(v25 + 36)], &v7[v24], v10);
      return (v23)(v7, v10);
    }

    __break(1u);
  }

  v18(v15, *MEMORY[0x277CDF988], v10);
  sub_254525428();
  if (sub_25454BC34())
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v18(v15, *MEMORY[0x277CDF998], v10);
  sub_254525428();
  result = sub_25454BC34();
  if (result)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_254544428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v63 = a1;
  v76 = a4;
  v6 = sub_25454B244();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v6);
  v73 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA8, &qword_254554640);
  v9 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v59 - v10;
  v11 = sub_25454B0F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25454AA94();
  v62 = *(v15 - 8);
  v16 = *(v62 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD9E8, &qword_254554648);
  v19 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD9F0, &qword_254554650);
  v69 = *(v22 - 8);
  v70 = v22;
  v23 = *(v69 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD9F8, &qword_254554658);
  v67 = *(v26 - 8);
  v68 = v26;
  v27 = *(v67 + 64);
  MEMORY[0x28223BE20](v26);
  v65 = &v59 - v28;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA00, &qword_254554660);
  v29 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v31 = &v59 - v30;
  v66 = a3;
  if (a3)
  {
    v32 = a2;
  }

  else
  {

    sub_25454BF84();
    v33 = sub_25454AED4();
    v59 = v12;
    v34 = v25;
    v35 = v15;
    v36 = v33;
    sub_25454A1E4();

    v15 = v35;
    v25 = v34;
    v37 = v62;
    v12 = v59;
    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(a2, 0);
    (*(v37 + 8))(v18, v15);
    v32 = v78;
  }

  v60 = v15;
  if (v32)
  {
    if (v32 == 1)
    {
      if (qword_27F5FAD08 != -1)
      {
        swift_once();
      }

      v38 = &qword_27F5FD978;
    }

    else
    {
      if (qword_27F5FAD18 != -1)
      {
        swift_once();
      }

      v38 = &qword_27F5FD988;
    }
  }

  else
  {
    if (qword_27F5FAD10 != -1)
    {
      swift_once();
    }

    v38 = &qword_27F5FD980;
  }

  v39 = *v38;

  sub_25454B084();
  sub_25454B0D4();

  v40 = v61;
  (*(v12 + 104))(v61, *MEMORY[0x277CE0A10], v11);
  v41 = sub_25454B114();

  (*(v12 + 8))(v40, v11);
  KeyPath = swift_getKeyPath();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA08, &unk_254554698);
  (*(*(v43 - 8) + 16))(v21, v63, v43);
  v44 = &v21[*(v77 + 36)];
  *v44 = KeyPath;
  v44[1] = v41;
  if ((v66 & 1) == 0)
  {

    sub_25454BF84();
    v45 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(a2, 0);
    (*(v62 + 8))(v18, v60);
    LOBYTE(a2) = v78;
  }

  v46 = v71;
  sub_2545440F0(a2, v71);
  v47 = sub_2545478C0();
  v48 = sub_2544AE1F0(&qword_27F5FCEE8, &qword_27F5FCEA8, &qword_254554640);
  v49 = v77;
  v50 = v72;
  sub_25454B384();
  sub_2544AE150(v46, &qword_27F5FCEA8, &qword_254554640);
  sub_2544AE150(v21, &qword_27F5FD9E8, &qword_254554648);
  v51 = v73;
  sub_25454B234();
  v78 = v49;
  v79 = v50;
  v80 = v47;
  v81 = v48;
  swift_getOpaqueTypeConformance2();
  v52 = v65;
  v53 = v70;
  sub_25454B2E4();
  (*(v74 + 8))(v51, v75);
  (*(v69 + 8))(v25, v53);
  v54 = swift_getKeyPath();
  (*(v67 + 32))(v31, v52, v68);
  v55 = &v31[*(v64 + 36)];
  *v55 = v54;
  v55[8] = 1;
  LODWORD(v54) = sub_25454AE34();
  v56 = v31;
  v57 = v76;
  sub_2544B14E8(v56, v76, &qword_27F5FDA00, &qword_254554660);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA20, &unk_2545546D8);
  *(v57 + *(result + 36)) = v54;
  return result;
}

uint64_t sub_254544CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v81 = a4;
  v6 = sub_25454B244();
  v79 = *(v6 - 8);
  v80 = v6;
  v7 = *(v79 + 64);
  MEMORY[0x28223BE20](v6);
  v78 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FCEA8, &qword_254554640);
  v9 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v76 = &v60 - v10;
  v11 = sub_25454B0F4();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25454AA94();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA28, &qword_2545546E8);
  v18 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v20 = &v60 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA30, &qword_2545546F0);
  v72 = *(v75 - 8);
  v21 = *(v72 + 64);
  MEMORY[0x28223BE20](v75);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA38, &qword_2545546F8);
  v73 = *(v24 - 8);
  v74 = v24;
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v24);
  v70 = &v60 - v26;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA40, &qword_254554700);
  v69 = *(v71 - 8);
  v27 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v67 = &v60 - v28;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA48, &qword_254554708);
  v29 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v31 = &v60 - v30;
  v68 = a3;
  if (a3)
  {
    v32 = a2;
  }

  else
  {

    sub_25454BF84();
    v33 = sub_25454AED4();
    v60 = v11;
    v34 = v33;
    sub_25454A1E4();

    v35 = v64;
    v11 = v60;
    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(a2, 0);
    (*(v35 + 8))(v17, v14);
    v32 = v83;
  }

  v61 = v14;
  if (v32)
  {
    if (v32 == 1)
    {
      if (qword_27F5FAD08 != -1)
      {
        swift_once();
      }

      v36 = &qword_27F5FD978;
    }

    else
    {
      if (qword_27F5FAD18 != -1)
      {
        swift_once();
      }

      v36 = &qword_27F5FD988;
    }
  }

  else
  {
    if (qword_27F5FAD10 != -1)
    {
      swift_once();
    }

    v36 = &qword_27F5FD980;
  }

  v37 = *v36;

  v38 = v63;
  v39 = v62;
  (*(v63 + 104))(v62, *MEMORY[0x277CE0A10], v11);
  v40 = sub_25454B114();

  (*(v38 + 8))(v39, v11);
  KeyPath = swift_getKeyPath();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA50, &qword_254554710);
  (*(*(v42 - 8) + 16))(v20, v65, v42);
  v43 = &v20[*(v82 + 36)];
  *v43 = KeyPath;
  v43[1] = v40;
  if ((v68 & 1) == 0)
  {

    sub_25454BF84();
    v44 = sub_25454AED4();
    sub_25454A1E4();

    sub_25454AA84();
    swift_getAtKeyPath();
    sub_2544C46C0(a2, 0);
    (*(v64 + 8))(v17, v61);
    LOBYTE(a2) = v83;
  }

  v45 = v76;
  sub_2545440F0(a2, v76);
  v46 = sub_254547A54();
  v47 = sub_2544AE1F0(&qword_27F5FCEE8, &qword_27F5FCEA8, &qword_254554640);
  v48 = v82;
  v49 = v77;
  sub_25454B384();
  sub_2544AE150(v45, &qword_27F5FCEA8, &qword_254554640);
  sub_2544AE150(v20, &qword_27F5FDA28, &qword_2545546E8);
  v50 = v78;
  sub_25454B234();
  v83 = v48;
  v84 = v49;
  v85 = v46;
  v86 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v70;
  v53 = v75;
  sub_25454B2E4();
  (*(v79 + 8))(v50, v80);
  (*(v72 + 8))(v23, v53);
  v83 = v53;
  v84 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v54 = v67;
  v55 = v74;
  sub_25454B474();
  (*(v73 + 8))(v52, v55);
  v56 = swift_getKeyPath();
  (*(v69 + 32))(v31, v54, v71);
  v57 = &v31[*(v66 + 36)];
  *v57 = v56;
  v57[8] = 1;
  LODWORD(v56) = sub_25454AE44();
  v58 = v81;
  sub_2544B14E8(v31, v81, &qword_27F5FDA48, &qword_254554708);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA68, &qword_254554718);
  *(v58 + *(result + 36)) = v56;
  return result;
}

uint64_t WidgetTileNameAndStatusView.init(_:room:status:alignment:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a6;
  v63 = a7;
  v61 = a5;
  v13 = sub_254549C74();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_254549074();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  v22 = type metadata accessor for WidgetTileNameAndStatusView();
  v23 = a8 + v22[5];
  sub_25454B1A4();
  if (a4)
  {
    v57 = a1;
    v58 = a2;
    v64 = a3;
    v65 = a4;
    sub_254549064();
    sub_2544AECF0();
    v24 = sub_25454C074();
    v26 = v25;
    (*(v18 + 8))(v21, v17);

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v64 = v24;
      v65 = v26;

      v28 = sub_25454B274();
      v29 = (a8 + v22[6]);
      *v29 = v28;
      v29[1] = v30;
      v29[2] = v31 & 1;
      v29[3] = v32;
      sub_254549C64();
      v33 = sub_254549C54();
      v35 = v34;
      (*(v59 + 8))(v16, v60);
      v64 = v33;
      v65 = v35;
      goto LABEL_8;
    }

    a1 = v57;
    a2 = v58;
  }

  v36 = (a8 + v22[6]);
  *v36 = 0u;
  v36[1] = 0u;
  v64 = a1;
  v65 = a2;
  sub_254549064();
  sub_2544AECF0();
  v37 = sub_25454C074();
  v39 = v38;
  (*(v18 + 8))(v21, v17);

  v64 = v37;
  v65 = v39;
LABEL_8:
  result = sub_25454B274();
  v41 = a8 + v22[7];
  *v41 = result;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43 & 1;
  *(v41 + 24) = v44;
  v45 = v62;
  if (!v62)
  {
LABEL_16:
    v47 = 0;
    v49 = 0;
    v54 = 0;
    v53 = 0;
    goto LABEL_17;
  }

  sub_25454BE14();

  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {

    result = swift_bridgeObjectRelease_n();
    goto LABEL_16;
  }

  v64 = v61;
  v65 = v45;
  sub_2544AECF0();
  v47 = sub_25454B274();
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v54 = v51 & 1;
LABEL_17:
  v55 = (a8 + v22[8]);
  *v55 = v47;
  v55[1] = v49;
  v55[2] = v54;
  v55[3] = v53;
  *(a8 + v22[9]) = v63;
  return result;
}

uint64_t type metadata accessor for WidgetTileNameAndStatusView()
{
  result = qword_27F5FD9A0;
  if (!qword_27F5FD9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254545A88(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetTileNameAndStatusView() + 28);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *&v13 = *v3;
  *(&v13 + 1) = v4;
  LOBYTE(v14) = v5;
  *(&v14 + 1) = v6;
  *&v15 = swift_getKeyPath();
  *(&v15 + 1) = a1;
  LOBYTE(v16) = 0;
  BYTE1(v16) = a1 == 1;
  BYTE2(v16) = 1;
  *(&v16 + 1) = swift_getKeyPath();
  v17 = 0;
  v18[0] = v13;
  v18[1] = v4;
  v19 = v5;
  v20 = v6;
  v21 = v15;
  v22 = a1;
  v23 = 0;
  v24 = a1 == 1;
  v25 = 1;
  v26 = *(&v16 + 1);
  v27 = 0;
  sub_2544A8F00(v13, v4, v5);

  sub_2544AE240(&v13, v28, &qword_27F5FDB30, &qword_254554810);
  sub_2544AE150(v18, &qword_27F5FDB30, &qword_254554810);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDB30, &qword_254554810);
  sub_254547B40();
  sub_25454B474();
  v28[2] = v10;
  v28[3] = v11;
  v29 = v12;
  v28[0] = v8;
  v28[1] = v9;
  return sub_2544AE150(v28, &qword_27F5FDB30, &qword_254554810);
}

uint64_t WidgetTileNameAndStatusView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_25454AC24();
  v4 = *(v1 + *(type metadata accessor for WidgetTileNameAndStatusView() + 36));
  *a1 = v3;
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD990, &qword_254554458);
  sub_254545CAC(v1, (a1 + *(v5 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD998, &qword_254554460);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_254545CAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA70, &qword_254554720);
  v4 = *(*(v29[0] - 8) + 64);
  MEMORY[0x28223BE20](v29[0]);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA78, &qword_254554728);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA80, &qword_254554730);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  sub_25454BE14();
  v29[1] = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = sub_25454B664();
  *v20 = sub_25454AF04();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA88, &qword_254554738);
  sub_254546068(a1, &v20[*(v22 + 44)]);
  *v6 = sub_25454AB14();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDA90, &qword_254554740);
  sub_25454707C(&v6[*(v23 + 44)]);
  sub_2544AE1F0(&qword_27F5FDA98, &qword_27F5FDA70, &qword_254554720);
  sub_25454B464();
  sub_2544AE150(v6, &qword_27F5FDA70, &qword_254554720);
  sub_2544AE240(v20, v18, &qword_27F5FDA80, &qword_254554730);
  sub_2544AE240(v13, v11, &qword_27F5FDA78, &qword_254554728);
  *a2 = v21;
  a2[1] = 0x3FF0000000000000;
  v24 = v13;
  v25 = v11;
  v26 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAA0, &qword_254554748);
  sub_2544AE240(v18, v26 + *(v27 + 48), &qword_27F5FDA80, &qword_254554730);
  sub_2544AE240(v25, v26 + *(v27 + 64), &qword_27F5FDA78, &qword_254554728);

  sub_2544AE150(v24, &qword_27F5FDA78, &qword_254554728);
  sub_2544AE150(v20, &qword_27F5FDA80, &qword_254554730);
  sub_2544AE150(v25, &qword_27F5FDA78, &qword_254554728);
  sub_2544AE150(v18, &qword_27F5FDA80, &qword_254554730);
}

uint64_t sub_254546068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAC0, &qword_254554770);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v47 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAC8, &qword_254554778);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAD0, &qword_254554780);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v54 = &v47 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAD8, &qword_254554788);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAE0, &qword_254554790);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v50 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v53 = &v47 - v28;
  sub_25454BE14();
  v49 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = type metadata accessor for WidgetTileNameAndStatusView();
  v30 = v29;
  if (*(a1 + *(v29 + 32) + 24) && *(a1 + *(v29 + 24) + 24))
  {
    *v23 = sub_25454AC24();
    *(v23 + 1) = 0;
    v23[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDB00, &qword_2545547B0);
    sub_254546688(a1, &v23[*(v31 + 44)]);
    v32 = v23;
    v33 = v53;
    sub_2544B14E8(v32, v53, &qword_27F5FDAD8, &qword_254554788);
    (*(v20 + 56))(v33, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(v53, 1, 1, v19);
  }

  v34 = v54;
  if (*(a1 + *(v30 + 24) + 24))
  {
    *v12 = sub_25454AC24();
    *(v12 + 1) = 0;
    v12[16] = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAF8, &qword_2545547A8);
    sub_254546C1C(a1, &v12[*(v35 + 44)]);
    sub_2544B14E8(v12, v34, &qword_27F5FDAC8, &qword_254554778);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  (*(v47 + 56))(v34, v36, 1, v48);
  *v8 = sub_25454BA54();
  v8[1] = v37;
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v38 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAE8, &qword_254554798) + 44);
  sub_254545A88(2);

  v39 = v53;
  v40 = v50;
  sub_2544AE240(v53, v50, &qword_27F5FDAE0, &qword_254554790);
  sub_2544AE240(v34, v17, &qword_27F5FDAD0, &qword_254554780);
  v41 = v51;
  sub_2544AE240(v8, v51, &qword_27F5FDAC0, &qword_254554770);
  v42 = v8;
  v43 = v17;
  v44 = v52;
  sub_2544AE240(v40, v52, &qword_27F5FDAE0, &qword_254554790);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAF0, &qword_2545547A0);
  sub_2544AE240(v43, v44 + *(v45 + 48), &qword_27F5FDAD0, &qword_254554780);
  sub_2544AE240(v41, v44 + *(v45 + 64), &qword_27F5FDAC0, &qword_254554770);
  sub_2544AE150(v42, &qword_27F5FDAC0, &qword_254554770);
  sub_2544AE150(v54, &qword_27F5FDAD0, &qword_254554780);
  sub_2544AE150(v39, &qword_27F5FDAE0, &qword_254554790);
  sub_2544AE150(v41, &qword_27F5FDAC0, &qword_254554770);
  sub_2544AE150(v43, &qword_27F5FDAD0, &qword_254554780);
  sub_2544AE150(v40, &qword_27F5FDAE0, &qword_254554790);
}

uint64_t sub_254546688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDB08, &qword_2545547B8);
  v60 = *(v62 - 8);
  v3 = v60[8];
  v4 = MEMORY[0x28223BE20](v62);
  v61 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v64 = &v40[-v6];
  sub_25454BE14();
  v48 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for WidgetTileNameAndStatusView();
  v8 = (a1 + *(v7 + 24));
  v9 = v8[3];
  if (v9)
  {
    v10 = v8[1];
    v11 = v8[2];
    v12 = *v8;
    KeyPath = swift_getKeyPath();
    LOBYTE(v67) = v11 & 1;
    v66 = 0;
    v14 = swift_getKeyPath();
    v65 = 0;
    v77 = v12;
    v78 = v10;
    LOBYTE(v79) = v11 & 1;
    v80 = v9;
    v81 = KeyPath;
    v82 = 1;
    LOBYTE(v83) = 0;
    *(&v83 + 1) = 257;
    v84 = v14;
    v85 = 0;
    v86 = v12;
    v87 = v10;
    LOBYTE(v88) = v11 & 1;
    v89 = v9;
    v90 = KeyPath;
    v91 = 1;
    LOBYTE(v92) = 0;
    *(&v92 + 1) = 257;
    v93 = v14;
    v94 = 0;
    sub_2544C9BDC(v12, v10, v11, v9);
    sub_2544AE240(&v77, &v72, &qword_27F5FDB20, &qword_254554800);
    sub_2544AE150(&v86, &qword_27F5FDB20, &qword_254554800);
    v58 = v78;
    v59 = v77;
    v56 = v80;
    v57 = v79;
    v54 = v82;
    v55 = v81;
    v52 = v84;
    v53 = v83;
    v63 = v85;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v52 = 0;
    v53 = 0;
    v63 = 0;
  }

  sub_254545A88(1);
  v15 = (a1 + *(v7 + 32));
  v16 = v15[3];
  if (v16)
  {
    v18 = v15[1];
    v17 = v15[2];
    v19 = *v15;
    v20 = swift_getKeyPath();
    LOBYTE(v67) = v17 & 1;
    v66 = 0;
    v21 = swift_getKeyPath();
    v65 = 0;
    v77 = v19;
    v78 = v18;
    LOBYTE(v79) = v17 & 1;
    v80 = v16;
    v81 = v20;
    v82 = 1;
    LOBYTE(v83) = 0;
    *(&v83 + 1) = 257;
    v84 = v21;
    v85 = 0;
    v86 = v19;
    v87 = v18;
    LOBYTE(v88) = v17 & 1;
    v89 = v16;
    v90 = v20;
    v91 = 1;
    LOBYTE(v92) = 0;
    *(&v92 + 1) = 257;
    v93 = v21;
    v94 = 0;
    sub_2544C9BDC(v19, v18, v17, v16);
    sub_2544AE240(&v77, &v72, &qword_27F5FDB20, &qword_254554800);
    sub_2544AE150(&v86, &qword_27F5FDB20, &qword_254554800);
    v50 = v79;
    v51 = v77;
    v45 = v80;
    v46 = v78;
    v49 = v81;
    v43 = v83;
    v44 = v82;
    v42 = v84;
    v41 = v85;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v45 = 0;
    v46 = 0;
    v49 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    v41 = 0;
  }

  v22 = v61;
  v23 = v60[2];
  v24 = v62;
  v23(v61, v64, v62);
  *&v67 = v59;
  *(&v67 + 1) = v58;
  *&v68 = v57;
  *(&v68 + 1) = v56;
  *&v69 = v55;
  *(&v69 + 1) = v54;
  *&v70 = v53;
  *(&v70 + 1) = v52;
  v71 = v63;
  v25 = v47;
  *(v47 + 64) = v63;
  v26 = v70;
  v25[2] = v69;
  v25[3] = v26;
  v27 = v68;
  *v25 = v67;
  v25[1] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDB10, &qword_2545547C0);
  v23(v25 + *(v28 + 48), v22, v24);
  v29 = v25 + *(v28 + 64);
  v30 = v45;
  v31 = v46;
  *&v72 = v51;
  *(&v72 + 1) = v46;
  *&v73 = v50;
  *(&v73 + 1) = v45;
  v33 = v43;
  v32 = v44;
  *&v74 = v49;
  *(&v74 + 1) = v44;
  v34 = v42;
  *&v75 = v43;
  *(&v75 + 1) = v42;
  LOBYTE(v28) = v41;
  v76 = v41;
  v35 = v73;
  v36 = v75;
  *(v29 + 2) = v74;
  *(v29 + 3) = v36;
  v29[64] = v28;
  *v29 = v72;
  *(v29 + 1) = v35;
  sub_2544AE240(&v67, &v86, &qword_27F5FDB18, &qword_2545547C8);
  sub_2544AE240(&v72, &v86, &qword_27F5FDB18, &qword_2545547C8);
  v37 = v60[1];
  v38 = v62;
  v37(v64, v62);
  v77 = v51;
  v78 = v31;
  v79 = v50;
  v80 = v30;
  v81 = v49;
  v82 = v32;
  v83 = v33;
  v84 = v34;
  v85 = v28;
  sub_2544AE150(&v77, &qword_27F5FDB18, &qword_2545547C8);
  v37(v61, v38);
  v86 = v59;
  v87 = v58;
  v88 = v57;
  v89 = v56;
  v90 = v55;
  v91 = v54;
  v92 = v53;
  v93 = v52;
  v94 = v63;
  sub_2544AE150(&v86, &qword_27F5FDB18, &qword_2545547C8);
}

uint64_t sub_254546C1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDB08, &qword_2545547B8);
  v34 = *(v35 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v35);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  sub_25454BE14();
  v33 = sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = (a1 + *(type metadata accessor for WidgetTileNameAndStatusView() + 24));
  v9 = v8[3];
  if (v9)
  {
    v11 = v8[1];
    v10 = v8[2];
    v12 = *v8;
    KeyPath = swift_getKeyPath();
    v41[88] = v10 & 1;
    v41[80] = 0;
    v14 = swift_getKeyPath();
    v41[72] = 0;
    *&v42 = v12;
    *(&v42 + 1) = v11;
    LOBYTE(v43) = v10 & 1;
    *(&v43 + 1) = v9;
    *&v44 = KeyPath;
    *(&v44 + 1) = 1;
    LOBYTE(v45) = 0;
    *(&v45 + 1) = 257;
    *(&v45 + 1) = v14;
    v46 = 0;
    v47 = v12;
    v48 = v11;
    LOBYTE(v49) = v10 & 1;
    v50 = v9;
    v51 = KeyPath;
    v52 = 1;
    LOBYTE(v53) = 0;
    *(&v53 + 1) = 257;
    v54 = v14;
    v55 = 0;
    sub_2544C9BDC(v12, v11, v10, v9);
    sub_2544AE240(&v42, v41, &qword_27F5FDB20, &qword_254554800);
    sub_2544AE150(&v47, &qword_27F5FDB20, &qword_254554800);
    v15 = *(&v42 + 1);
    v36 = v42;
    v40 = *(&v43 + 1);
    v16 = v43;
    v38 = *(&v44 + 1);
    v39 = v44;
    v17 = *(&v45 + 1);
    v37 = v45;
    v18 = v46;
  }

  else
  {
    v36 = 0;
    v15 = 0;
    v16 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v17 = 0;
    v18 = 0;
  }

  v19 = v7;
  sub_254545A88(1);
  v20 = v34;
  v21 = *(v34 + 16);
  v22 = v32;
  v23 = v35;
  v21(v32, v19, v35);
  *&v42 = v36;
  *(&v42 + 1) = v15;
  *&v43 = v16;
  *(&v43 + 1) = v40;
  *&v44 = v39;
  *(&v44 + 1) = v38;
  *&v45 = v37;
  *(&v45 + 1) = v17;
  v30 = v17;
  v46 = v18;
  v24 = v31;
  v31[64] = v18;
  v25 = v45;
  *(v24 + 2) = v44;
  *(v24 + 3) = v25;
  v26 = v43;
  *v24 = v42;
  *(v24 + 1) = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDB28, &qword_254554808);
  v21(&v24[*(v27 + 48)], v22, v23);
  sub_2544AE240(&v42, &v47, &qword_27F5FDB18, &qword_2545547C8);
  v28 = *(v20 + 8);
  v28(v19, v23);
  v28(v22, v23);
  v47 = v36;
  v48 = v15;
  v49 = v16;
  v50 = v40;
  v51 = v39;
  v52 = v38;
  v53 = v37;
  v54 = v30;
  v55 = v18;
  sub_2544AE150(&v47, &qword_27F5FDB18, &qword_2545547C8);
}

uint64_t sub_25454707C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAA8, &unk_254554750);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_25454BE14();
  sub_25454BE04();
  sub_25454BDB4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_25454B664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FC9E0, &qword_254550B68);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25454D8E0;
  *(v10 + 32) = sub_25454B664();
  *(v10 + 40) = sub_25454B654();
  MEMORY[0x259C0EAC0](v10);
  sub_25454BB54();
  sub_25454BB64();
  sub_25454A664();
  v11 = v23;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAB0, &qword_254554760) + 36);
  v13 = *MEMORY[0x277CE13C0];
  v14 = sub_25454BAA4();
  v15 = *(*(v14 - 8) + 104);
  v21 = v25;
  v22 = v24;
  v15(&v8[v12], v13, v14);
  *v8 = v11;
  v16 = v22;
  *(v8 + 24) = v21;
  *(v8 + 8) = v16;
  v8[40] = 1;
  sub_25454BA54();
  sub_25454A544();
  v17 = &v8[*(v2 + 36)];
  v18 = v27;
  *v17 = v26;
  *(v17 + 1) = v18;
  *(v17 + 2) = v28;
  sub_2544AE240(v8, v6, &qword_27F5FDAA8, &unk_254554750);
  *a1 = v9;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FDAB8, &qword_254554768);
  sub_2544AE240(v6, a1 + *(v19 + 48), &qword_27F5FDAA8, &unk_254554750);

  sub_2544AE150(v8, &qword_27F5FDAA8, &unk_254554750);
  sub_2544AE150(v6, &qword_27F5FDAA8, &unk_254554750);
}

uint64_t sub_254547368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_25454AC24();
  v6 = *(v2 + *(a1 + 36));
  *a2 = v5;
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD990, &qword_254554458);
  sub_254545CAC(v2, (a2 + *(v7 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FD998, &qword_254554460);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_2545473FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25454B1B4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2545474D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25454B1B4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = (a2 - 1);
  }

  return result;
}

void sub_254547594()
{
  sub_254547688(319, &qword_27F5FD9B0, &type metadata for WidgetTileStyle, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_25454B1B4();
    if (v1 <= 0x3F)
    {
      sub_254547688(319, &qword_27F5FD9B8, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_254547688(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2545476DC()
{
  result = qword_27F5FD9C0;
  if (!qword_27F5FD9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD998, &qword_254554460);
    sub_254547794();
    sub_2544AE1F0(&qword_27F5FB320, &qword_27F5FB328, &qword_2545510C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD9C0);
  }

  return result;
}

unint64_t sub_254547794()
{
  result = qword_27F5FD9C8;
  if (!qword_27F5FD9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD9D0, &qword_2545544E0);
    sub_2544AE1F0(&qword_27F5FD9D8, &qword_27F5FD9E0, &unk_2545544E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FD9C8);
  }

  return result;
}

unint64_t sub_2545478C0()
{
  result = qword_27F5FDA10;
  if (!qword_27F5FDA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD9E8, &qword_254554648);
    sub_2544AE1F0(&qword_27F5FDA18, &qword_27F5FDA08, &unk_254554698);
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDA10);
  }

  return result;
}

uint64_t sub_2545479A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A8C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2545479D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25454A8C4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_254547A54()
{
  result = qword_27F5FDA58;
  if (!qword_27F5FDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDA28, &qword_2545546E8);
    sub_2544AE1F0(&qword_27F5FDA60, &qword_27F5FDA50, &qword_254554710);
    sub_2544AE1F0(&qword_27F5FB388, &qword_27F5FB390, &qword_25454FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDA58);
  }

  return result;
}

unint64_t sub_254547B40()
{
  result = qword_27F5FDB38;
  if (!qword_27F5FDB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDB30, &qword_254554810);
    sub_254547BCC();
    sub_254547C58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDB38);
  }

  return result;
}

unint64_t sub_254547BCC()
{
  result = qword_27F5FDB40;
  if (!qword_27F5FDB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDB48, &qword_254554818);
    sub_2544DB410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDB40);
  }

  return result;
}

unint64_t sub_254547C58()
{
  result = qword_27F5FDB50;
  if (!qword_27F5FDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDB50);
  }

  return result;
}

unint64_t sub_254547CF0()
{
  result = qword_27F5FDB60;
  if (!qword_27F5FDB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDA00, &qword_254554660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD9F0, &qword_254554650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FD9E8, &qword_254554648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCEA8, &qword_254554640);
    sub_2545478C0();
    sub_2544AE1F0(&qword_27F5FCEE8, &qword_27F5FCEA8, &qword_254554640);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FBA78, &qword_27F5FBA70, &qword_254553BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDB60);
  }

  return result;
}

uint64_t sub_254547ECC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2544AE1F0(&qword_27F5FCE70, &qword_27F5FCE78, &unk_254551580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254547F7C()
{
  result = qword_27F5FDB70;
  if (!qword_27F5FDB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDA48, &qword_254554708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDA38, &qword_2545546F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDA30, &qword_2545546F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FDA28, &qword_2545546E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5FCEA8, &qword_254554640);
    sub_254547A54();
    sub_2544AE1F0(&qword_27F5FCEE8, &qword_27F5FCEA8, &qword_254554640);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2544AE1F0(&qword_27F5FBA78, &qword_27F5FBA70, &qword_254553BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDB70);
  }

  return result;
}

uint64_t WidgetTileStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C676E6174636572;
  }

  if (a1 == 1)
  {
    return 0x7571536C6C616D73;
  }

  return 0x757153656772616CLL;
}

uint64_t sub_2545481D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7571536C6C616D73;
  if (v2 != 1)
  {
    v3 = 0x757153656772616CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C676E6174636572;
  }

  if (v2)
  {
    v5 = 0xEB00000000657261;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  v6 = 0x7571536C6C616D73;
  if (*a2 != 1)
  {
    v6 = 0x757153656772616CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C676E6174636572;
  }

  if (*a2)
  {
    v8 = 0xEB00000000657261;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25454C334();
  }

  return v9 & 1;
}

uint64_t sub_2545482CC()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_254548384()
{
  *v0;
  *v0;
  sub_25454BD14();
}

uint64_t sub_254548428()
{
  v1 = *v0;
  sub_25454C3E4();
  sub_25454BD14();

  return sub_25454C434();
}

uint64_t sub_2545484DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s7HomeUI215WidgetTileStyleO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_25454850C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x7571536C6C616D73;
  if (v2 != 1)
  {
    v4 = 0x757153656772616CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C676E6174636572;
  }

  if (!v5)
  {
    v3 = 0xEB00000000657261;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t WidgetTileStyle.iconFont.getter(char a1)
{
  v2 = sub_25454B014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5FB370, &qword_254551530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  sub_25454B074();
  v11 = sub_25454B044();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = qword_254554920[a1];
  sub_25454B0A4();
  sub_254537024(v10);
  sub_25454B004();
  v13 = sub_25454B034();

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t WidgetTileStyle.temperatureFont.getter(char a1)
{
  v2 = sub_25454B014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25454B0F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25454AFB4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25454B054();
  sub_25454AFA4();
  v17 = qword_254554938[a1];
  sub_25454B094();
  (*(v13 + 8))(v16, v12);
  sub_25454AFE4();

  (*(v8 + 104))(v11, *MEMORY[0x277CE0A10], v7);
  sub_25454B114();

  (*(v8 + 8))(v11, v7);
  sub_25454B004();
  v18 = sub_25454B034();

  (*(v3 + 8))(v6, v2);
  return v18;
}

double WidgetTileStyle.tilePadding.getter(unsigned __int8 a1)
{
  result = 14.0;
  if (a1 < 2u)
  {
    return 8.0;
  }

  return result;
}

uint64_t _s7HomeUI215WidgetTileStyleO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_25454C224();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_254548A8C()
{
  result = qword_27F5FDB78;
  if (!qword_27F5FDB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F5FDB80, &qword_2545548C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5FDB78);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27F604A88 == -1)
  {
    if (qword_27F604A90)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27F604A90)
    {
      goto LABEL_3;
    }
  }

  if (qword_27F604A80 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27F604A74 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27F604A74 >= a3)
      {
        result = dword_27F604A78 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27F604A90;
  if (qword_27F604A90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F604A90 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x259C0F7F0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27F604A74, &dword_27F604A78);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}