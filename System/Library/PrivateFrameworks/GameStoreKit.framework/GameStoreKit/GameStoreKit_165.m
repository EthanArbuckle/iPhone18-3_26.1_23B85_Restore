uint64_t sub_24F756BE4()
{
  v1 = [v0 domain];
  v2 = sub_24F92B0D8();
  v4 = v3;

  v5 = [v0 code];
  if (sub_24F92B0D8() == v2 && v6 == v4)
  {

    if (v5 == 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) != 0 && v5 == 2)
    {
      goto LABEL_17;
    }
  }

  if (sub_24F92B0D8() == v2 && v9 == v4)
  {
  }

  else
  {
    v11 = sub_24F92CE08();

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (v5 == -7003)
  {
LABEL_17:

    return 1;
  }

LABEL_19:
  if (sub_24F92B0D8() == v2 && v13 == v4)
  {

    if (v5 == -1)
    {
      return 1;
    }
  }

  else
  {
    v14 = sub_24F92CE08();

    if ((v14 & 1) != 0 && v5 == -1)
    {
      return 1;
    }
  }

  return 0;
}

void sub_24F756D8C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    sub_24E60169C(a6, v20, qword_27F21B590);
    v14 = *(a7 - 8);
    (*(v14 + 16))(v19, v7, a7);
    v15 = swift_allocObject();
    *(v15 + 16) = *(a7 + 16);
    *(v15 + 24) = a3;
    *(v15 + 32) = a4;
    *(v15 + 40) = a5;
    v16 = v20[1];
    *(v15 + 48) = v20[0];
    *(v15 + 64) = v16;
    *(v15 + 80) = v21;
    *(v15 + 88) = a2;
    (*(v14 + 32))(v15 + 96, v19, a7);
    aBlock[4] = sub_24F758A88;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_175;
    v17 = _Block_copy(aBlock);
    sub_24F758ABC(a3, a4);

    [a1 dismissViewControllerAnimated:1 completion:v17];
    _Block_release(v17);
  }
}

void sub_24F756F4C(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a7;
  v13 = ~a2;
  v14 = sub_24F928AE8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  if (v13)
  {
    sub_24F758AD0(a1, a2);
    if (qword_27F211430 != -1)
    {
      swift_once();
    }

    v21 = sub_24F9220D8();
    __swift_project_value_buffer(v21, qword_27F39E8E0);
    sub_24F758AD0(a1, a2);
    v22 = sub_24F9220B8();
    v23 = sub_24F92BDB8();
    sub_24F758C08(a1, a2);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      type metadata accessor for GamesSignInActionImplementation.SignInError();
      swift_getWitnessTable();
      swift_allocError();
      *v26 = a1;
      *(v26 + 8) = a2;
      sub_24F758AD0(a1, a2);
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_24E5DD000, v22, v23, "Sign in failed, reason: %@", v24, 0xCu);
      sub_24E601704(v25, &qword_27F227B20);
      MEMORY[0x2530542D0](v25, -1, -1);
      MEMORY[0x2530542D0](v24, -1, -1);
    }

    if (a3)
    {
      type metadata accessor for GamesSignInActionImplementation.SignInError();
      swift_getWitnessTable();
      v28 = swift_allocError();
      *v29 = a1;
      *(v29 + 8) = a2;
      sub_24F758AD0(a1, a2);
      sub_24F92A9A8();
      sub_24F758C08(a1, a2);
    }

    else
    {

      sub_24F758C08(a1, a2);
    }

    return;
  }

  v56 = v20;
  v57 = a6;
  v58 = v17;
  v59 = v15;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v30 = sub_24F9220D8();
  __swift_project_value_buffer(v30, qword_27F39E8E0);
  v31 = sub_24F9220B8();
  v32 = sub_24F92BD98();
  v33 = os_log_type_enabled(v31, v32);
  v60 = a3;
  v34 = a4;
  if (v33)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_24E5DD000, v31, v32, "Sign in succeeded.", v35, 2u);
    v36 = v35;
    a3 = v60;
    MEMORY[0x2530542D0](v36, -1, -1);
  }

  v37 = [objc_opt_self() standardUserDefaults];
  v66 = 0;
  memset(v65, 0, sizeof(v65));
  sub_24ED0F474(v65);

  v38 = sub_24F9220B8();
  v39 = sub_24F92BD98();
  v40 = v14;
  if (os_log_type_enabled(v38, v39))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_24E5DD000, v38, v39, "Most recent tab selection has been reset.", v41, 2u);
    v42 = v41;
    a3 = v60;
    MEMORY[0x2530542D0](v42, -1, -1);
  }

  sub_24E60169C(v34, &v63, qword_27F21B590);
  v43 = v58;
  if (!v64)
  {
    sub_24E601704(&v63, qword_27F21B590);
    v45 = v59;
    if (!a3)
    {
      return;
    }

    goto LABEL_20;
  }

  v44 = a5;
  sub_24E612C80(&v63, v65);
  v45 = v59;
  if (v44)
  {
    v46 = sub_24F92B858();
    v47 = v56;
    (*(*(v46 - 8) + 56))(v56, 1, 1, v46);
    v48 = v61;
    v49 = type metadata accessor for GamesSignInActionImplementation();
    v50 = *(v49 - 8);
    (*(v50 + 16))(v62, v57, v49);
    sub_24E615E00(v65, &v63);
    sub_24F92B7F8();
    swift_retain_n();
    v51 = sub_24F92B7E8();
    v52 = swift_allocObject();
    v53 = MEMORY[0x277D85700];
    v52[2] = v51;
    v52[3] = v53;
    v52[4] = v48;
    (*(v50 + 32))(v52 + 5, v62, v49);
    sub_24E612C80(&v63, (v52 + 7));
    v52[12] = v44;
    v54 = v52;
    a3 = v60;
    sub_24F1D4600(0, 0, v47, &unk_24FA25718, v54);
  }

  __swift_destroy_boxed_opaque_existential_1(v65);
  if (a3)
  {
LABEL_20:
    (*(v45 + 104))(v43, *MEMORY[0x277D21CA8], v40);
    sub_24F92A9C8();
    (*(v45 + 8))(v43, v40);
  }
}

uint64_t sub_24F75767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_24F92B7F8();
  v6[3] = sub_24F92B7E8();
  v10 = swift_task_alloc();
  v6[4] = v10;
  v11 = type metadata accessor for GamesSignInActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v10 = v6;
  v10[1] = sub_24F75778C;

  return sub_24F1487B0(a1, a5, a6, v11, WitnessTable);
}

uint64_t sub_24F75778C()
{
  *(*v1 + 40) = v0;

  v3 = sub_24F92B778();
  if (v0)
  {
    v4 = sub_24F75794C;
  }

  else
  {
    v4 = sub_24F7578E8;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_24F7578E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F75794C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7579B0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F24ED20;
  swift_beginAccess();
  type metadata accessor for GamesSignInActionImplementation();
  v4 = sub_24F92C4A8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24F757A70(uint64_t a1)
{
  v3 = qword_27F24ED20;
  swift_beginAccess();
  type metadata accessor for GamesSignInActionImplementation();
  v4 = sub_24F92C4A8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24F757B68@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F24ED38;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, qword_27F21B590);
}

uint64_t sub_24F757BD0(uint64_t a1)
{
  v3 = qword_27F24ED38;
  swift_beginAccess();
  sub_24E7D5870(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_24F757C30()
{
  swift_unknownObjectRelease();

  MEMORY[0x2530543E0](v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_24F757C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24E6541E4;

  return sub_24F755E4C(a1, v4, v5, v6, v7, v8, (v1 + 8), v9);
}

void sub_24F757D84(void *a1, char a2, id a3)
{
  v4 = v3;
  if (a2)
  {
    sub_24F7579B0(v30);
    if (v31)
    {
      v6 = type metadata accessor for GamesSignInActionImplementation();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v29, v30, v6);
      v8 = sub_24F92C4A8();
      (*(*(v8 - 8) + 8))(v30, v8);
      v9 = *(v3 + qword_27F24ED30);
      v10 = *(v3 + qword_27F24ED28);
      v11 = qword_27F24ED38;
      swift_beginAccess();
      sub_24E60169C(v4 + v11, v28, qword_27F21B590);

      sub_24F756D8C(a1, v9, 0, 0xFFu, v10, v28, v6);

      sub_24E601704(v28, qword_27F21B590);
      (*(v7 + 8))(v29, v6);
      return;
    }
  }

  else
  {
    if (a3)
    {
      v28[0] = a3;
      v13 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
      sub_24EC51A9C();
      if (swift_dynamicCast())
      {
        if (qword_27F211430 != -1)
        {
          swift_once();
        }

        v14 = sub_24F9220D8();
        __swift_project_value_buffer(v14, qword_27F39E8E0);
        v15 = v32;
        v16 = sub_24F9220B8();
        v17 = sub_24F92BDB8();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          *v18 = 138412290;
          *(v18 + 4) = v15;
          *v19 = v15;
          v20 = v15;
          _os_log_impl(&dword_24E5DD000, v16, v17, "AAUISignInControllerDelegate: Sign in failed, reason: %@", v18, 0xCu);
          sub_24E601704(v19, &qword_27F227B20);
          MEMORY[0x2530542D0](v19, -1, -1);
          MEMORY[0x2530542D0](v18, -1, -1);
        }

        if (sub_24F756BE4())
        {
          sub_24F758368(a1);

          return;
        }
      }
    }

    sub_24F7579B0(v30);
    if (v31)
    {
      v21 = type metadata accessor for GamesSignInActionImplementation();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v29, v30, v21);
      v23 = sub_24F92C4A8();
      (*(*(v23 - 8) + 8))(v30, v23);
      v24 = *(v4 + qword_27F24ED30);
      v25 = *(v4 + qword_27F24ED28);
      v26 = qword_27F24ED38;
      swift_beginAccess();
      sub_24E60169C(v4 + v26, v28, qword_27F21B590);

      sub_24F756D8C(a1, v24, a3, 1u, v25, v28, v21);

      sub_24E601704(v28, qword_27F21B590);
      (*(v22 + 8))(v29, v21);
      return;
    }
  }

  type metadata accessor for GamesSignInActionImplementation();
  v27 = sub_24F92C4A8();
  (*(*(v27 - 8) + 8))(v30, v27);
}

void sub_24F7582E8(void *a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v8 = a3;
  v9 = a1;
  v10 = a5;
  sub_24F757D84(v8, a4, a5);
}

uint64_t sub_24F758368(void *a1)
{
  v2 = v1;
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E8E0);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v6, "AAUISignInControllerDelegate: User cancelled sign in.", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  sub_24F7579B0(v18);
  if (v19)
  {
    v8 = type metadata accessor for GamesSignInActionImplementation();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v17, v18, v8);
    v10 = sub_24F92C4A8();
    (*(*(v10 - 8) + 8))(v18, v10);
    v11 = *(v2 + qword_27F24ED30);
    v12 = *(v2 + qword_27F24ED28);
    v13 = qword_27F24ED38;
    swift_beginAccess();
    sub_24E60169C(v2 + v13, v16, qword_27F21B590);

    sub_24F756D8C(a1, v11, 2, 2u, v12, v16, v8);

    sub_24E601704(v16, qword_27F21B590);
    return (*(v9 + 8))(v17, v8);
  }

  else
  {
    type metadata accessor for GamesSignInActionImplementation();
    v15 = sub_24F92C4A8();
    return (*(*(v15 - 8) + 8))(v18, v15);
  }
}

void sub_24F758670(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_24F758368(v4);
}

id sub_24F7586D8()
{
  v1 = &v0[qword_27F24ED20];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[qword_27F24ED28] = 0;
  *&v0[qword_27F24ED30] = 0;
  v2 = &v0[qword_27F24ED38];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GamesSignInActionImplementation.Coordinator();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_24F758798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamesSignInActionImplementation.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24F7587F4(uint64_t a1)
{
  v2 = qword_27F24ED20;
  type metadata accessor for GamesSignInActionImplementation();
  v3 = sub_24F92C4A8();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  return sub_24E601704(a1 + qword_27F24ED38, qword_27F21B590);
}

uint64_t sub_24F758910()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F7589BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit31GamesSignInActionImplementationV0eF5ErrorOyx_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_24F758A14()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_24E8E0E18(*(v0 + 24), v1);
  }

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  MEMORY[0x2530543E0](v0 + 96);

  return swift_deallocObject();
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24F758ABC(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_24F758AD0(result, a2);
  }

  return result;
}

id sub_24F758AD0(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_24F758AE4()
{
  swift_unknownObjectRelease();
  MEMORY[0x2530543E0](v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_24F758B3C(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[2];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F75767C(a1, v5, v4, (v1 + 5), (v1 + 7), v6);
}

void sub_24F758C08(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_24E8E0E18(a1, a2);
  }
}

uint64_t sub_24F758C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F758CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F758D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RequestReviewAction()
{
  result = qword_27F24EF10;
  if (!qword_27F24EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F758DE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RequestReviewAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F759248();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F75929C(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F759054(uint64_t a1)
{
  v2 = sub_24F759248();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F759090(uint64_t a1)
{
  v2 = sub_24F759248();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7590E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F759248();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F759248()
{
  result = qword_27F24EF28;
  if (!qword_27F24EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF28);
  }

  return result;
}

uint64_t sub_24F75929C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestReviewAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F759314()
{
  result = qword_27F24EF38;
  if (!qword_27F24EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF38);
  }

  return result;
}

unint64_t sub_24F75936C()
{
  result = qword_27F24EF40;
  if (!qword_27F24EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF40);
  }

  return result;
}

unint64_t sub_24F7593C4()
{
  result = qword_27F24EF48;
  if (!qword_27F24EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF48);
  }

  return result;
}

uint64_t ChallengesSuggestedLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  *(v3 + 32) = type metadata accessor for GSKShelf();
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *a2;
  v5 = *(a2 + 24);
  *(v3 + 72) = *(a2 + 16);
  *(v3 + 80) = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  *(v3 + 88) = v6;
  *(v3 + 96) = v7;

  return MEMORY[0x2822009F8](sub_24F7594E4, 0, 0);
}

uint64_t sub_24F7594E4()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_24F759594;
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[3];

  return sub_24E64C7B4(v5, v4, v2, v3, v6);
}

uint64_t sub_24F759594(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_24E73814C;
  }

  else
  {

    v4 = sub_24F7596BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F7596BC()
{

  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_24E737F34;
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];

  return sub_24E64CA64(v5, v2, v3, v4, v6);
}

uint64_t sub_24F759780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return ChallengesSuggestedLeaderboardsShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F7598B4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v76 = a4;
  v77 = a5;
  v91 = a3;
  v92 = a2;
  v93 = a6;
  v7 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20);
  MEMORY[0x28223BE20](v82);
  v78 = &v68 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF58);
  MEMORY[0x28223BE20](v80);
  v81 = &v68 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF60);
  MEMORY[0x28223BE20](v90);
  v83 = &v68 - v10;
  v71 = type metadata accessor for DescriptionLabel(0);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - v14;
  v16 = type metadata accessor for DescriptionLabelConfig(0);
  v69 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF68);
  MEMORY[0x28223BE20](v79);
  v72 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v68 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10);
  MEMORY[0x28223BE20](v74);
  v68 = (&v68 - v23);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF70);
  MEMORY[0x28223BE20](v84);
  v87 = &v68 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF78);
  MEMORY[0x28223BE20](v25);
  v73 = &v68 - v26;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF80);
  MEMORY[0x28223BE20](v85);
  v75 = &v68 - v27;
  v28 = type metadata accessor for ChartCardConfiguration.ChartRankingView();
  MEMORY[0x28223BE20](v28);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EF88);
  MEMORY[0x28223BE20](v31);
  v86 = &v68 - v34;
  v35 = v7 == 3;
  v36 = v92;
  if (!v35)
  {
    v88 = v33;
    v89 = v32;
    v37 = sub_24E92D030(a1, v92, v91);
    v33 = v88;
    v32 = v89;
    if (v37)
    {
      if (a1 == 12)
      {
        v39 = v91;
        if (v91 > 2u)
        {
          v38 = v86;
        }

        else
        {
          v38 = v86;
          if (!v91)
          {

            goto LABEL_21;
          }
        }

        v55 = sub_24F92CE08();

        if ((v55 & 1) == 0)
        {
          v56 = sub_24F926C98();
          v57 = v39;
          v58 = v36;
          v59 = *(type metadata accessor for ChartCard() + 36);
          v60 = sub_24F9289E8();
          v61 = *(v60 - 8);
          (*(v61 + 16))(v22, v58 + v59, v60);
          (*(v61 + 56))(v22, 0, 1, v60);
          v62 = v57 != 5;
          v63 = v68;
          sub_24F6C4E24(v22, v62, v56, v68);

          sub_24E601704(v22, &qword_27F213FB0);
          sub_24E60169C(v63, v73, &qword_27F214A10);
          swift_storeEnumTagMultiPayload();
          sub_24F75B5D4(&qword_27F24EFA8, type metadata accessor for ChartCardConfiguration.ChartRankingView);
          sub_24E63D150();
          v64 = v75;
          sub_24F924E28();
          sub_24E60169C(v64, v87, &qword_27F24EF80);
          swift_storeEnumTagMultiPayload();
          sub_24F75B518();
          sub_24F75B61C();
          sub_24F924E28();
          sub_24E601704(v64, &qword_27F24EF80);
          sub_24E601704(v63, &qword_27F214A10);
          goto LABEL_22;
        }
      }

      else
      {
        if (a1 == 10)
        {
          v51 = type metadata accessor for ChartCard();
          sub_24E60169C(v36 + *(v51 + 44), v15, &qword_27F216968);
          if ((*(v69 + 48))(v15, 1, v16) == 1)
          {
            sub_24E601704(v15, &qword_27F216968);
            v52 = 1;
            v53 = v72;
          }

          else
          {
            sub_24F75BC80(v15, v18, type metadata accessor for DescriptionLabelConfig);
            sub_24F75BC80(v18, v12, type metadata accessor for DescriptionLabelConfig);
            v53 = v72;
            sub_24F75BC80(v12, v72, type metadata accessor for DescriptionLabel);
            v52 = 0;
          }

          (*(v70 + 56))(v53, v52, 1, v71);
          sub_24E60169C(v53, v81, &qword_27F24EF68);
          swift_storeEnumTagMultiPayload();
          sub_24F75B3E8();
          sub_24F75B49C(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v54 = v83;
          sub_24F924E28();
          sub_24E60169C(v54, v87, &qword_27F24EF60);
          swift_storeEnumTagMultiPayload();
          sub_24F75B518();
          sub_24F75B61C();
          v38 = v86;
          sub_24F924E28();
          sub_24E601704(v54, &qword_27F24EF60);
          sub_24E601704(v53, &qword_27F24EF68);
          goto LABEL_22;
        }

        v38 = v86;
        v39 = v91;
        if (a1 == 2)
        {
          v40 = type metadata accessor for ChartCard();
          v41 = v36;
          v42 = v40[9];
          v43 = *(v41 + v40[10]);
          v44 = *(v28 + 20);
          v45 = sub_24F9289E8();
          (*(*(v45 - 8) + 16))(&v30[v44], v41 + v42, v45);
          v46 = *(v41 + v40[12]);
          *v30 = v43;
          *&v30[*(v28 + 24)] = v46;
          v94 = 0x405C000000000000;
          sub_24E66ED98();
          sub_24F9237C8();
          sub_24F75B6D4(v30, v73);
          swift_storeEnumTagMultiPayload();
          sub_24F75B5D4(&qword_27F24EFA8, type metadata accessor for ChartCardConfiguration.ChartRankingView);
          sub_24E63D150();
          v47 = v75;
          sub_24F924E28();
          sub_24E60169C(v47, v87, &qword_27F24EF80);
          swift_storeEnumTagMultiPayload();
          sub_24F75B518();
          sub_24F75B61C();
          sub_24F924E28();
          sub_24E601704(v47, &qword_27F24EF80);
          sub_24F75B738(v30);
LABEL_22:
          v67 = v93;
          sub_24E6009C8(v38, v93, &qword_27F24EF88);
          return (*(v88 + 56))(v67, 0, 1, v89);
        }
      }

LABEL_21:
      v65 = v78;
      sub_24E918D70(a1, v36, v39, v76, v77, v78);
      sub_24E60169C(v65, v81, &qword_27F214A20);
      swift_storeEnumTagMultiPayload();
      sub_24F75B3E8();
      sub_24F75B49C(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v66 = v83;
      sub_24F924E28();
      sub_24E60169C(v66, v87, &qword_27F24EF60);
      swift_storeEnumTagMultiPayload();
      sub_24F75B518();
      sub_24F75B61C();
      sub_24F924E28();
      sub_24E601704(v66, &qword_27F24EF60);
      sub_24E601704(v65, &qword_27F214A20);
      goto LABEL_22;
    }
  }

  v48 = *(v33 + 56);
  v49 = v93;

  return v48(v49, 1, 1, v32);
}

uint64_t sub_24F75A694@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ChartCardConfiguration.ChartRankingView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_24F75B6D4(v1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_24F75BC80(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ChartCardConfiguration.ChartRankingView);
  LOBYTE(v5) = sub_24F925868();
  sub_24F923318();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v33 = 0;
  v16 = sub_24F9257F8();
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v33;
  v32 = 0;
  LOBYTE(v6) = sub_24F925828();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  sub_24F9237D8();
  result = sub_24F923318();
  *a1 = sub_24F75BCE8;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15;
  *(a1 + 56) = v25;
  *(a1 + 64) = v16;
  *(a1 + 72) = v18;
  *(a1 + 80) = v20;
  *(a1 + 88) = v22;
  *(a1 + 96) = v24;
  *(a1 + 104) = 0;
  *(a1 + 112) = v6;
  *(a1 + 120) = v27;
  *(a1 + 128) = v28;
  *(a1 + 136) = v29;
  *(a1 + 144) = v30;
  *(a1 + 152) = 0;
  return result;
}

__n128 sub_24F75A87C@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EFE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v15 - v5);
  sub_24F923998();
  v8 = v7 / 130.0;
  *v6 = sub_24F927638();
  v6[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EFE8);
  sub_24F75A9FC(a1, v6 + *(v10 + 44), v8);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, a2, &qword_27F24EFE0);
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EFF0) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_24F75A9FC@<X0>(void *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v3 = a1;
  v84 = a1;
  v91 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24EFF8) - 8;
  MEMORY[0x28223BE20](v89);
  v90 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = (&v82 - v7);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v83);
  v9 = &v82 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v82 - v11;
  v13 = sub_24F924A78();
  MEMORY[0x28223BE20](v13 - 8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F000);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v82 - v16;
  sub_24F924A68();
  sub_24F924A58();
  *&v96 = *v3;
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v17 = sub_24F925DE8();
  v19 = v18;
  LOBYTE(v3) = v20;
  sub_24F925928();
  v21 = sub_24F925908();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_24F925968();
  sub_24E601704(v12, &qword_27F214698);
  sub_24F9258C8();

  v22 = sub_24F925C98();
  v24 = v23;
  v26 = v25;

  sub_24E600B40(v17, v19, v3 & 1);

  LODWORD(v3) = sub_24F9251B8();
  v27 = *(v83 + 36);
  v28 = *MEMORY[0x277CE13B8];
  v29 = sub_24F927748();
  (*(*(v29 - 8) + 104))(&v9[v27], v28, v29);
  *v9 = v3;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v30 = sub_24F925C58();
  v32 = v31;
  LOBYTE(v27) = v33;
  v35 = v34;
  sub_24E600B40(v22, v24, v26 & 1);

  sub_24E601704(v9, &qword_27F213F10);
  *&v96 = v30;
  *(&v96 + 1) = v32;
  LOBYTE(v97) = v27 & 1;
  *(&v97 + 1) = v35;
  v36 = v92;
  sub_24F926158();
  sub_24E600B40(v30, v32, v27 & 1);

  v37 = round(a3 * 72.0);
  v38 = v37 / fmax(v37, 100.0);
  v83 = sub_24F926C98();
  v39 = sub_24F927618();
  v41 = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F008);
  v43 = v85;
  v44 = v85 + *(v42 + 36);
  v45 = type metadata accessor for ChartCardConfiguration.ChartRankingView();
  v46 = *(v45 + 20);
  v47 = sub_24F9289E8();
  v48 = *(v47 - 8);
  v49 = v84;
  (*(v48 + 16))(v44, v84 + v46, v47);
  (*(v48 + 56))(v44, 0, 1, v47);
  v50 = type metadata accessor for GameIcon(0);
  v51 = v50[8];
  *&v44[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
  swift_storeEnumTagMultiPayload();
  v44[v50[5]] = 1;
  v44[v50[6]] = 1;
  v44[v50[7]] = 0;
  sub_24F927618();
  sub_24F9238C8();
  v52 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216760) + 36)];
  v53 = v94;
  *v52 = v93;
  *(v52 + 1) = v53;
  *(v52 + 2) = v95;
  sub_24F9278A8();
  v55 = v54;
  v57 = v56;
  v58 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F010) + 36)];
  *v58 = v38;
  *(v58 + 1) = v38;
  *(v58 + 2) = v55;
  *(v58 + 3) = v57;
  v59 = *(v49 + *(v45 + 24)) * 0.0174532925;
  sub_24F9278A8();
  v61 = v60;
  v63 = v62;
  v64 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F018) + 36)];
  *v64 = v59;
  *(v64 + 1) = v61;
  *(v64 + 2) = v63;
  v65 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F020) + 36)];
  *v65 = v39;
  v65[1] = v41;
  v66 = v43;
  *v43 = v83;
  sub_24F927618();
  sub_24F9238C8();
  v67 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F028) + 36));
  v68 = v97;
  *v67 = v96;
  v67[1] = v68;
  v67[2] = v98;
  v69 = sub_24F9249A8();
  v70 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F030) + 36));
  *v70 = v69;
  v70[1] = sub_24F75B338;
  v70[2] = 0;
  v71 = sub_24F924CA8();
  v72 = (v43 + *(v89 + 44));
  *v72 = v71;
  v72[1] = sub_24F75B360;
  v72[2] = 0;
  v73 = v87;
  v74 = *(v87 + 16);
  v75 = v86;
  v76 = v88;
  v74(v86, v36, v88);
  v77 = v90;
  sub_24E60169C(v66, v90, &qword_27F24EFF8);
  v78 = v91;
  v74(v91, v75, v76);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F038);
  sub_24E60169C(v77, &v78[*(v79 + 48)], &qword_27F24EFF8);
  sub_24E601704(v66, &qword_27F24EFF8);
  v80 = *(v73 + 8);
  v80(v92, v76);
  sub_24E601704(v77, &qword_27F24EFF8);
  return (v80)(v75, v76);
}

uint64_t type metadata accessor for ChartCardConfiguration.ChartRankingView()
{
  result = qword_27F24EFB8;
  if (!qword_27F24EFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F75B3E8()
{
  result = qword_27F24EF90;
  if (!qword_27F24EF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EF68);
    sub_24F75B5D4(&qword_27F24EF98, type metadata accessor for DescriptionLabel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EF90);
  }

  return result;
}

uint64_t sub_24F75B49C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F75B518()
{
  result = qword_27F24EFA0;
  if (!qword_27F24EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EF80);
    sub_24F75B5D4(&qword_27F24EFA8, type metadata accessor for ChartCardConfiguration.ChartRankingView);
    sub_24E63D150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EFA0);
  }

  return result;
}

uint64_t sub_24F75B5D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F75B61C()
{
  result = qword_27F24EFB0;
  if (!qword_27F24EFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EF60);
    sub_24F75B3E8();
    sub_24F75B49C(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EFB0);
  }

  return result;
}

uint64_t sub_24F75B6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartCardConfiguration.ChartRankingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F75B738(uint64_t a1)
{
  v2 = type metadata accessor for ChartCardConfiguration.ChartRankingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F75B7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F9289E8();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24F75B8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

void sub_24F75B9C8()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24E66ED3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F75BAA8()
{
  result = qword_27F24EFD8;
  if (!qword_27F24EFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24EF88);
    sub_24F75B518();
    sub_24F75B61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24EFD8);
  }

  return result;
}

uint64_t sub_24F75BB50()
{
  v1 = type metadata accessor for ChartCardConfiguration.ChartRankingView();
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v1 + 20);
  v5 = sub_24F9289E8();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v2 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215DE0);
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F75BC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_24F75BCE8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChartCardConfiguration.ChartRankingView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_24F75A87C(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_24F75BD74()
{
  result = qword_27F24F040;
  if (!qword_27F24F040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24F048);
    sub_24F75BE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F040);
  }

  return result;
}

unint64_t sub_24F75BE00()
{
  result = qword_27F24F050;
  if (!qword_27F24F050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24F058);
    sub_24F75BE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F050);
  }

  return result;
}

unint64_t sub_24F75BE8C()
{
  result = qword_27F24F060;
  if (!qword_27F24F060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24F068);
    sub_24E602068(&qword_27F24F070, &qword_27F24F078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F060);
  }

  return result;
}

uint64_t makeGamesPrerequisites(objectGraph:jsNativeIntentDispatcher:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  v3 = type metadata accessor for AppStoreLocalizerFactory();
  v4 = swift_task_alloc();
  *(v2 + 88) = v4;
  *v4 = v2;
  v4[1] = sub_24F75BFF8;

  return MEMORY[0x28217F228](v2 + 72, v3, v3);
}

uint64_t sub_24F75BFF8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_24E6490F8;
  }

  else
  {
    v2 = sub_24F75C10C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F75C10C()
{
  v0[13] = v0[9];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_24F75C1B4;

  return AppStoreLocalizerFactory.localizer(forLanguage:)((v0 + 2), 0, 0);
}

uint64_t sub_24F75C1B4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24F75C5F8;
  }

  else
  {
    v2 = sub_24F75C2C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F75C2C8()
{
  v24 = *(v0 + 80);
  v23 = [objc_allocWithZone(type metadata accessor for JSPersonNameComponentsFormatter()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213B28);
  v1 = sub_24F92A878();
  v21 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_24F942000;
  v5 = (v22 + v4);
  if (os_variant_has_internal_content())
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  v7 = type metadata accessor for GSKClient();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR____TtC12GameStoreKit9GSKClient__buildType] = v6;
  *(v0 + 56) = v8;
  *(v0 + 64) = v7;
  v9 = objc_msgSendSuper2((v0 + 56), &selRef_writeDataForAssetResource_toFile_options_completionHandler_);
  *v5 = 0x746E65696C63;
  v5[1] = 0xE600000000000000;
  v5[2] = v9;
  v10 = *MEMORY[0x277D22440];
  v11 = *(v2 + 104);
  (v11)(v5, v10, v1);
  v12 = (v5 + v3);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v13 = sub_24F92AD08();
  *v12 = 0x657A696C61636F6CLL;
  v12[1] = 0xE900000000000072;
  v12[2] = v13;
  (v11)(v5 + v3, v10, v21);
  v14 = v5 + 2 * v3;
  v15 = [objc_allocWithZone(type metadata accessor for DebugSettingsJSExport()) init];
  strcpy(v14, "debugSettings");
  *(v14 + 7) = -4864;
  *(v14 + 2) = v15;
  (v11)(v14, v10, v21);
  v16 = (v5 + 3 * v3);
  *v16 = 0xD000000000000016;
  v16[1] = 0x800000024FA7D2A0;
  v16[2] = v24;
  v11();
  v17 = (v5 + 4 * v3);
  *v17 = 0xD00000000000001DLL;
  v17[1] = 0x800000024FA7D2C0;
  v17[2] = v23;
  v11();
  v18 = v24;

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v19 = *(v0 + 8);

  return v19(v22);
}

uint64_t sub_24F75C5F8()
{

  v1 = *(v0 + 8);

  return v1();
}

id makeJSNativeIntentDispatcher()()
{
  v0 = sub_24F9220D8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F929DA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F75C8C0(v7);
  if (qword_27F211428 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27F39E8C8);
  v9 = *(v1 + 16);
  v9(v3, v8, v0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F080);
  v11 = objc_allocWithZone(v10);
  *&v11[qword_27F39ACF0] = 0;
  (*(v5 + 16))(&v11[qword_27F21C838], v7, v4);
  v9(&v11[qword_27F21C840], v3, v0);
  v15.receiver = v11;
  v15.super_class = v10;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v12;
}

void sub_24F75C8C0(uint64_t a1@<X8>)
{
  v175 = a1;
  v173 = type metadata accessor for GameLibraryDataIntentImplementation();
  MEMORY[0x28223BE20](v173);
  v172 = v171 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24F929DA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v174 = v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v239 = v171 - v6;
  MEMORY[0x28223BE20](v7);
  v238 = v171 - v8;
  MEMORY[0x28223BE20](v9);
  v237 = v171 - v10;
  MEMORY[0x28223BE20](v11);
  v236 = v171 - v12;
  MEMORY[0x28223BE20](v13);
  v235 = v171 - v14;
  MEMORY[0x28223BE20](v15);
  v234 = v171 - v16;
  MEMORY[0x28223BE20](v17);
  v233 = v171 - v18;
  MEMORY[0x28223BE20](v19);
  v232 = v171 - v20;
  MEMORY[0x28223BE20](v21);
  v231 = v171 - v22;
  MEMORY[0x28223BE20](v23);
  v230 = v171 - v24;
  MEMORY[0x28223BE20](v25);
  v229 = v171 - v26;
  MEMORY[0x28223BE20](v27);
  v228 = v171 - v28;
  MEMORY[0x28223BE20](v29);
  v227 = v171 - v30;
  MEMORY[0x28223BE20](v31);
  v226 = v171 - v32;
  MEMORY[0x28223BE20](v33);
  v225 = v171 - v34;
  MEMORY[0x28223BE20](v35);
  v224 = v171 - v36;
  MEMORY[0x28223BE20](v37);
  v223 = v171 - v38;
  MEMORY[0x28223BE20](v39);
  v222 = v171 - v40;
  MEMORY[0x28223BE20](v41);
  v221 = v171 - v42;
  MEMORY[0x28223BE20](v43);
  v220 = v171 - v44;
  MEMORY[0x28223BE20](v45);
  v219 = v171 - v46;
  MEMORY[0x28223BE20](v47);
  v218 = v171 - v48;
  MEMORY[0x28223BE20](v49);
  v217 = v171 - v50;
  MEMORY[0x28223BE20](v51);
  v216 = v171 - v52;
  MEMORY[0x28223BE20](v53);
  v215 = v171 - v54;
  MEMORY[0x28223BE20](v55);
  v214 = v171 - v56;
  MEMORY[0x28223BE20](v57);
  v213 = v171 - v58;
  MEMORY[0x28223BE20](v59);
  v212 = v171 - v60;
  MEMORY[0x28223BE20](v61);
  v211 = v171 - v62;
  MEMORY[0x28223BE20](v63);
  v210 = v171 - v64;
  MEMORY[0x28223BE20](v65);
  v209 = v171 - v66;
  MEMORY[0x28223BE20](v67);
  v208 = v171 - v68;
  MEMORY[0x28223BE20](v69);
  v207 = v171 - v70;
  MEMORY[0x28223BE20](v71);
  v206 = v171 - v72;
  MEMORY[0x28223BE20](v73);
  v205 = v171 - v74;
  MEMORY[0x28223BE20](v75);
  v204 = v171 - v76;
  MEMORY[0x28223BE20](v77);
  v203 = v171 - v78;
  MEMORY[0x28223BE20](v79);
  v202 = v171 - v80;
  MEMORY[0x28223BE20](v81);
  v201 = v171 - v82;
  MEMORY[0x28223BE20](v83);
  v200 = v171 - v84;
  MEMORY[0x28223BE20](v85);
  v199 = v171 - v86;
  MEMORY[0x28223BE20](v87);
  v198 = v171 - v88;
  MEMORY[0x28223BE20](v89);
  v197 = v171 - v90;
  MEMORY[0x28223BE20](v91);
  v196 = v171 - v92;
  MEMORY[0x28223BE20](v93);
  v195 = v171 - v94;
  MEMORY[0x28223BE20](v95);
  v194 = v171 - v96;
  MEMORY[0x28223BE20](v97);
  v193 = v171 - v98;
  MEMORY[0x28223BE20](v99);
  v192 = v171 - v100;
  MEMORY[0x28223BE20](v101);
  v191 = v171 - v102;
  MEMORY[0x28223BE20](v103);
  v190 = v171 - v104;
  MEMORY[0x28223BE20](v105);
  v189 = v171 - v106;
  MEMORY[0x28223BE20](v107);
  v188 = v171 - v108;
  MEMORY[0x28223BE20](v109);
  v187 = v171 - v110;
  MEMORY[0x28223BE20](v111);
  v186 = v171 - v112;
  MEMORY[0x28223BE20](v113);
  v185 = v171 - v114;
  MEMORY[0x28223BE20](v115);
  v184 = v171 - v116;
  MEMORY[0x28223BE20](v117);
  v183 = v171 - v118;
  MEMORY[0x28223BE20](v119);
  v121 = v171 - v120;
  MEMORY[0x28223BE20](v122);
  v124 = v171 - v123;
  MEMORY[0x28223BE20](v125);
  v127 = v171 - v126;
  MEMORY[0x28223BE20](v128);
  v130 = v171 - v129;
  MEMORY[0x28223BE20](v131);
  v133 = v171 - v132;
  MEMORY[0x28223BE20](v134);
  v136 = v171 - v135;
  MEMORY[0x28223BE20](v137);
  v139 = v171 - v138;
  sub_24F929D98();
  sub_24F75F340();
  v176 = v139;
  sub_24F929D58();
  v182 = v3;
  v140 = *(v3 + 8);
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F394();
  v177 = v133;
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F3E8();
  v178 = v130;
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F43C();
  v179 = v127;
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F490();
  v180 = v124;
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F4E4();
  v181 = v121;
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F538();
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F58C();
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F5E0();
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F634();
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F688();
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F6DC();
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F730();
  sub_24F929D58();
  v140(v136, v2);
  sub_24F929D98();
  sub_24F75F784();
  sub_24F929D58();
  v140(v136, v2);
  if (qword_27F20FFC0 != -1)
  {
    swift_once();
  }

  v141 = qword_27F39B0C0;
  v142 = *(*qword_27F39B0C0 + *MEMORY[0x277D841D0] + 16);
  v143 = (*(*qword_27F39B0C0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_27F39B0C0 + v143));
  v144 = v171[1];
  sub_24E8F7000(v141 + v142);
  if (v144)
  {
    os_unfair_lock_unlock((v141 + v143));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v141 + v143));
    sub_24F929D98();
    sub_24F75F7D8();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75F82C();
    sub_24F929D58();
    v140(v136, v2);
    v145 = v174;
    if (qword_27F2118B0 != -1)
    {
      swift_once();
    }

    v146 = off_27F251450;
    v147 = *(*off_27F251450 + *MEMORY[0x277D841D0] + 16);
    v148 = (*(*off_27F251450 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F251450 + v148));
    sub_24F7E8F18(&v146[v147]);
    os_unfair_lock_unlock(&v146[v148]);
    sub_24F929D98();
    sub_24F75F880();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75F8D4();
    sub_24F929D58();
    v140(v136, v2);
    if (qword_27F211248 != -1)
    {
      swift_once();
    }

    v149 = off_27F242AC0;
    v150 = *(*off_27F242AC0 + *MEMORY[0x277D841D0] + 16);
    v151 = (*(*off_27F242AC0 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F242AC0 + v151));
    sub_24F40821C(&v149[v150]);
    os_unfair_lock_unlock(&v149[v151]);
    sub_24F929D98();
    sub_24F75F928();
    sub_24F929D58();
    v140(v136, v2);
    if (qword_27F211330 != -1)
    {
      swift_once();
    }

    v152 = off_27F2471B0;
    v153 = *(*off_27F2471B0 + *MEMORY[0x277D841D0] + 16);
    v154 = (*(*off_27F2471B0 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F2471B0 + v154));
    sub_24F51A6F4(&v152[v153]);
    os_unfair_lock_unlock(&v152[v154]);
    sub_24F929D98();
    sub_24F75F97C();
    sub_24F929D58();
    v140(v136, v2);
    if (qword_27F211108 != -1)
    {
      swift_once();
    }

    v155 = off_27F23E740;
    v156 = *(*off_27F23E740 + *MEMORY[0x277D841D0] + 16);
    v157 = (*(*off_27F23E740 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F23E740 + v157));
    sub_24F2FB384(&v155[v156]);
    os_unfair_lock_unlock(&v155[v157]);
    sub_24F929D98();
    sub_24F75F9D0();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FA24();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FA78();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FACC();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FB20();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FB74();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FBC8();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FC1C();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FC70();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FCC4();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FD18();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FD6C();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FDC0();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FE14();
    sub_24F929D58();
    v140(v136, v2);
    if (qword_27F211418 != -1)
    {
      swift_once();
    }

    v158 = sub_24F9220D8();
    v159 = __swift_project_value_buffer(v158, qword_27F39E898);
    v160 = v172;
    (*(*(v158 - 8) + 16))(v172, v159, v158);
    sub_24F929D98();
    sub_24F75FE68();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F75FEC0(v160);
    sub_24F929D98();
    sub_24F75FF1C();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FF70();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F75FFC4();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760018();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F76006C();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7600C0();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760114();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760168();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7601BC();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760210();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760264();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7602B8();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F76030C();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760360();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7603B4();
    sub_24F929D58();
    v140(v136, v2);
    if (qword_27F2118E8 != -1)
    {
      swift_once();
    }

    v161 = off_27F252430;
    v162 = *(*off_27F252430 + *MEMORY[0x277D841D0] + 16);
    v163 = (*(*off_27F252430 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F252430 + v163));
    sub_24F81F7AC(&v161[v162]);
    v173 = 0;
    os_unfair_lock_unlock(&v161[v163]);
    sub_24F929D98();
    sub_24F760408();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F76045C();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7604B0();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760504();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760558();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7605AC();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760600();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760654();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7606A8();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7606FC();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F760750();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7607A4();
    sub_24F929D58();
    v140(v136, v2);
    sub_24F929D98();
    sub_24F7607F8();
    sub_24F929D58();
    v140(v136, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313E8);
    v164 = v182;
    v165 = *(v182 + 72);
    v166 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v172 = swift_allocObject();
    v167 = &v172[v166];
    v168 = *(v164 + 16);
    v168(&v172[v166], v176, v2);
    v168(&v167[v165], v177, v2);
    v168(&v167[2 * v165], v178, v2);
    v168(&v167[3 * v165], v179, v2);
    v168(&v167[4 * v165], v180, v2);
    v168(&v167[5 * v165], v181, v2);
    v168(&v167[6 * v165], v183, v2);
    v168(&v167[7 * v165], v184, v2);
    v168(&v167[8 * v165], v185, v2);
    v168(&v167[9 * v165], v186, v2);
    v168(&v167[10 * v165], v187, v2);
    v168(&v167[11 * v165], v188, v2);
    v168(&v167[12 * v165], v189, v2);
    v168(&v167[13 * v165], v190, v2);
    v168(&v167[14 * v165], v191, v2);
    v168(&v167[15 * v165], v192, v2);
    v168(&v167[16 * v165], v193, v2);
    v168(&v167[17 * v165], v194, v2);
    v168(&v167[18 * v165], v195, v2);
    v168(&v167[19 * v165], v196, v2);
    v168(&v167[20 * v165], v197, v2);
    v168(&v167[21 * v165], v198, v2);
    v168(&v167[22 * v165], v199, v2);
    v168(&v167[23 * v165], v200, v2);
    v168(&v167[24 * v165], v201, v2);
    v168(&v167[25 * v165], v202, v2);
    v168(&v167[26 * v165], v203, v2);
    v168(&v167[27 * v165], v204, v2);
    v168(&v167[28 * v165], v205, v2);
    v168(&v167[29 * v165], v206, v2);
    v168(&v167[30 * v165], v207, v2);
    v168(&v167[31 * v165], v208, v2);
    v168(&v167[32 * v165], v209, v2);
    v168(&v167[33 * v165], v210, v2);
    v168(&v167[34 * v165], v211, v2);
    v168(&v167[35 * v165], v212, v2);
    v168(&v167[36 * v165], v213, v2);
    v168(&v167[37 * v165], v214, v2);
    v168(&v167[38 * v165], v215, v2);
    v168(&v167[39 * v165], v216, v2);
    v168(&v167[40 * v165], v217, v2);
    v168(&v167[41 * v165], v218, v2);
    v168(&v167[42 * v165], v219, v2);
    v168(&v167[43 * v165], v220, v2);
    v168(&v167[44 * v165], v221, v2);
    v168(&v167[45 * v165], v222, v2);
    v168(&v167[46 * v165], v223, v2);
    v168(&v167[47 * v165], v224, v2);
    v168(&v167[48 * v165], v225, v2);
    v168(&v167[49 * v165], v226, v2);
    v168(&v167[50 * v165], v227, v2);
    v168(&v167[51 * v165], v228, v2);
    v168(&v167[52 * v165], v229, v2);
    v168(&v167[53 * v165], v230, v2);
    v168(&v167[54 * v165], v231, v2);
    v168(&v167[55 * v165], v232, v2);
    v168(&v167[56 * v165], v233, v2);
    v168(&v167[57 * v165], v234, v2);
    v168(&v167[58 * v165], v235, v2);
    v168(&v167[59 * v165], v236, v2);
    v168(&v167[60 * v165], v237, v2);
    v168(&v167[61 * v165], v238, v2);
    v168(&v167[62 * v165], v239, v2);
    sub_24F929D98();
    v169 = 63;
    v170 = v167;
    do
    {
      sub_24F929D88();
      v170 += v165;
      --v169;
    }

    while (v169);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v140(v239, v2);
    v140(v238, v2);
    v140(v237, v2);
    v140(v236, v2);
    v140(v235, v2);
    v140(v234, v2);
    v140(v233, v2);
    v140(v232, v2);
    v140(v231, v2);
    v140(v230, v2);
    v140(v229, v2);
    v140(v228, v2);
    v140(v227, v2);
    v140(v226, v2);
    v140(v225, v2);
    v140(v224, v2);
    v140(v223, v2);
    v140(v222, v2);
    v140(v221, v2);
    v140(v220, v2);
    v140(v219, v2);
    v140(v218, v2);
    v140(v217, v2);
    v140(v216, v2);
    v140(v215, v2);
    v140(v214, v2);
    v140(v213, v2);
    v140(v212, v2);
    v140(v211, v2);
    v140(v210, v2);
    v140(v209, v2);
    v140(v208, v2);
    v140(v207, v2);
    v140(v206, v2);
    v140(v205, v2);
    v140(v204, v2);
    v140(v203, v2);
    v140(v202, v2);
    v140(v201, v2);
    v140(v200, v2);
    v140(v199, v2);
    v140(v198, v2);
    v140(v197, v2);
    v140(v196, v2);
    v140(v195, v2);
    v140(v194, v2);
    v140(v193, v2);
    v140(v192, v2);
    v140(v191, v2);
    v140(v190, v2);
    v140(v189, v2);
    v140(v188, v2);
    v140(v187, v2);
    v140(v186, v2);
    v140(v185, v2);
    v140(v184, v2);
    v140(v183, v2);
    v140(v181, v2);
    v140(v180, v2);
    v140(v179, v2);
    v140(v178, v2);
    v140(v177, v2);
    v140(v176, v2);
    (*(v182 + 32))(v175, v145, v2);
  }
}

unint64_t sub_24F75F340()
{
  result = qword_27F24F088;
  if (!qword_27F24F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F088);
  }

  return result;
}

unint64_t sub_24F75F394()
{
  result = qword_27F24F090;
  if (!qword_27F24F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F090);
  }

  return result;
}

unint64_t sub_24F75F3E8()
{
  result = qword_27F24F098;
  if (!qword_27F24F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F098);
  }

  return result;
}

unint64_t sub_24F75F43C()
{
  result = qword_27F24F0A0;
  if (!qword_27F24F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0A0);
  }

  return result;
}

unint64_t sub_24F75F490()
{
  result = qword_27F24F0A8;
  if (!qword_27F24F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0A8);
  }

  return result;
}

unint64_t sub_24F75F4E4()
{
  result = qword_27F24F0B0;
  if (!qword_27F24F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0B0);
  }

  return result;
}

unint64_t sub_24F75F538()
{
  result = qword_27F24F0B8;
  if (!qword_27F24F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0B8);
  }

  return result;
}

unint64_t sub_24F75F58C()
{
  result = qword_27F24F0C0;
  if (!qword_27F24F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0C0);
  }

  return result;
}

unint64_t sub_24F75F5E0()
{
  result = qword_27F24F0C8;
  if (!qword_27F24F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0C8);
  }

  return result;
}

unint64_t sub_24F75F634()
{
  result = qword_27F24F0D0;
  if (!qword_27F24F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0D0);
  }

  return result;
}

unint64_t sub_24F75F688()
{
  result = qword_27F24F0D8;
  if (!qword_27F24F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0D8);
  }

  return result;
}

unint64_t sub_24F75F6DC()
{
  result = qword_27F24F0E0;
  if (!qword_27F24F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0E0);
  }

  return result;
}

unint64_t sub_24F75F730()
{
  result = qword_27F24F0E8;
  if (!qword_27F24F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0E8);
  }

  return result;
}

unint64_t sub_24F75F784()
{
  result = qword_27F24F0F0;
  if (!qword_27F24F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0F0);
  }

  return result;
}

unint64_t sub_24F75F7D8()
{
  result = qword_27F24F0F8;
  if (!qword_27F24F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F0F8);
  }

  return result;
}

unint64_t sub_24F75F82C()
{
  result = qword_27F24F100;
  if (!qword_27F24F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F100);
  }

  return result;
}

unint64_t sub_24F75F880()
{
  result = qword_27F24F108;
  if (!qword_27F24F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F108);
  }

  return result;
}

unint64_t sub_24F75F8D4()
{
  result = qword_27F24F110;
  if (!qword_27F24F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F110);
  }

  return result;
}

unint64_t sub_24F75F928()
{
  result = qword_27F24F118;
  if (!qword_27F24F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F118);
  }

  return result;
}

unint64_t sub_24F75F97C()
{
  result = qword_27F24F120;
  if (!qword_27F24F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F120);
  }

  return result;
}

unint64_t sub_24F75F9D0()
{
  result = qword_27F24F128;
  if (!qword_27F24F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F128);
  }

  return result;
}

unint64_t sub_24F75FA24()
{
  result = qword_27F24F130;
  if (!qword_27F24F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F130);
  }

  return result;
}

unint64_t sub_24F75FA78()
{
  result = qword_27F24F138;
  if (!qword_27F24F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F138);
  }

  return result;
}

unint64_t sub_24F75FACC()
{
  result = qword_27F24F140;
  if (!qword_27F24F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F140);
  }

  return result;
}

unint64_t sub_24F75FB20()
{
  result = qword_27F24F148;
  if (!qword_27F24F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F148);
  }

  return result;
}

unint64_t sub_24F75FB74()
{
  result = qword_27F24F150;
  if (!qword_27F24F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F150);
  }

  return result;
}

unint64_t sub_24F75FBC8()
{
  result = qword_27F24F158;
  if (!qword_27F24F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F158);
  }

  return result;
}

unint64_t sub_24F75FC1C()
{
  result = qword_27F24F160;
  if (!qword_27F24F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F160);
  }

  return result;
}

unint64_t sub_24F75FC70()
{
  result = qword_27F24F168;
  if (!qword_27F24F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F168);
  }

  return result;
}

unint64_t sub_24F75FCC4()
{
  result = qword_27F24F170;
  if (!qword_27F24F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F170);
  }

  return result;
}

unint64_t sub_24F75FD18()
{
  result = qword_27F24F178;
  if (!qword_27F24F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F178);
  }

  return result;
}

unint64_t sub_24F75FD6C()
{
  result = qword_27F24F180;
  if (!qword_27F24F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F180);
  }

  return result;
}

unint64_t sub_24F75FDC0()
{
  result = qword_27F24F188;
  if (!qword_27F24F188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F188);
  }

  return result;
}

unint64_t sub_24F75FE14()
{
  result = qword_27F24F190;
  if (!qword_27F24F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F190);
  }

  return result;
}

unint64_t sub_24F75FE68()
{
  result = qword_27F24F198;
  if (!qword_27F24F198)
  {
    type metadata accessor for GameLibraryDataIntentImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F198);
  }

  return result;
}

uint64_t sub_24F75FEC0(uint64_t a1)
{
  v2 = type metadata accessor for GameLibraryDataIntentImplementation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F75FF1C()
{
  result = qword_27F24F1A0;
  if (!qword_27F24F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1A0);
  }

  return result;
}

unint64_t sub_24F75FF70()
{
  result = qword_27F24F1A8;
  if (!qword_27F24F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1A8);
  }

  return result;
}

unint64_t sub_24F75FFC4()
{
  result = qword_27F24F1B0;
  if (!qword_27F24F1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1B0);
  }

  return result;
}

unint64_t sub_24F760018()
{
  result = qword_27F24F1B8;
  if (!qword_27F24F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1B8);
  }

  return result;
}

unint64_t sub_24F76006C()
{
  result = qword_27F24F1C0;
  if (!qword_27F24F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1C0);
  }

  return result;
}

unint64_t sub_24F7600C0()
{
  result = qword_27F24F1C8;
  if (!qword_27F24F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1C8);
  }

  return result;
}

unint64_t sub_24F760114()
{
  result = qword_27F24F1D0;
  if (!qword_27F24F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1D0);
  }

  return result;
}

unint64_t sub_24F760168()
{
  result = qword_27F24F1D8;
  if (!qword_27F24F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1D8);
  }

  return result;
}

unint64_t sub_24F7601BC()
{
  result = qword_27F24F1E0;
  if (!qword_27F24F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1E0);
  }

  return result;
}

unint64_t sub_24F760210()
{
  result = qword_27F24F1E8;
  if (!qword_27F24F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1E8);
  }

  return result;
}

unint64_t sub_24F760264()
{
  result = qword_27F24F1F0;
  if (!qword_27F24F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1F0);
  }

  return result;
}

unint64_t sub_24F7602B8()
{
  result = qword_27F24F1F8;
  if (!qword_27F24F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F1F8);
  }

  return result;
}

unint64_t sub_24F76030C()
{
  result = qword_27F24F200;
  if (!qword_27F24F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F200);
  }

  return result;
}

unint64_t sub_24F760360()
{
  result = qword_27F24F208;
  if (!qword_27F24F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F208);
  }

  return result;
}

unint64_t sub_24F7603B4()
{
  result = qword_27F24F210;
  if (!qword_27F24F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F210);
  }

  return result;
}

unint64_t sub_24F760408()
{
  result = qword_27F24F218;
  if (!qword_27F24F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F218);
  }

  return result;
}

unint64_t sub_24F76045C()
{
  result = qword_27F24F220;
  if (!qword_27F24F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F220);
  }

  return result;
}

unint64_t sub_24F7604B0()
{
  result = qword_27F24F228;
  if (!qword_27F24F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F228);
  }

  return result;
}

unint64_t sub_24F760504()
{
  result = qword_27F24F230;
  if (!qword_27F24F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F230);
  }

  return result;
}

unint64_t sub_24F760558()
{
  result = qword_27F24F238;
  if (!qword_27F24F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F238);
  }

  return result;
}

unint64_t sub_24F7605AC()
{
  result = qword_27F24F240;
  if (!qword_27F24F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F240);
  }

  return result;
}

unint64_t sub_24F760600()
{
  result = qword_27F24F248;
  if (!qword_27F24F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F248);
  }

  return result;
}

unint64_t sub_24F760654()
{
  result = qword_27F24F250;
  if (!qword_27F24F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F250);
  }

  return result;
}

unint64_t sub_24F7606A8()
{
  result = qword_27F24F258;
  if (!qword_27F24F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F258);
  }

  return result;
}

unint64_t sub_24F7606FC()
{
  result = qword_27F24F260;
  if (!qword_27F24F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F260);
  }

  return result;
}

unint64_t sub_24F760750()
{
  result = qword_27F24F268;
  if (!qword_27F24F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F268);
  }

  return result;
}

unint64_t sub_24F7607A4()
{
  result = qword_27F24F270;
  if (!qword_27F24F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F270);
  }

  return result;
}

unint64_t sub_24F7607F8()
{
  result = qword_27F24F278;
  if (!qword_27F24F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F278);
  }

  return result;
}

uint64_t sub_24F76084C()
{
  v1 = [v0 infoDictionary];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24F92AE38();

    if (*(v3 + 16) && (v4 = sub_24E76D644(0xD00000000000001ALL, 0x800000024FA7D330), (v5 & 1) != 0))
    {
      sub_24E643A9C(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return 0x6E776F6E6B6E55;
}

id sub_24F760984()
{
  _s12GameStoreKit13ThisFrameworkCMa_0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F24F280 = result;
  return result;
}

id static NSBundle.GameStoreKit.getter()
{
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v1 = qword_27F24F280;

  return v1;
}

void sub_24F760A5C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_24F92B0D8();
    v4 = v3;

    if (v2 == 0x6C7070612E6D6F63 && v4 == 0xEF73656D61672E65)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_24F92CE08();
    }
  }

  else
  {
    v6 = 0;
  }

  byte_27F39F070 = v6 & 1;
}

uint64_t static GameObjectGraphBuilder.intentDispatcher()(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F929DA8();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F760C14, 0, 0);
}

uint64_t sub_24F760C14()
{
  sub_24F760FE0(v0[15]);
  sub_24F928FD8();
  v0[16] = sub_24F928FB8();
  v1 = type metadata accessor for JSIntentDispatcher();
  v0[5] = v1;
  v0[6] = sub_24F76661C(&qword_27F2313F8, type metadata accessor for JSIntentDispatcher);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_24F760D28;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F760D28()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);

    v3 = sub_24F760F58;
  }

  else
  {

    v3 = sub_24F760E80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F760E80()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = MEMORY[0x277D22188];
  v3[3] = v4;
  v3[4] = v5;
  __swift_allocate_boxed_opaque_existential_1(v3);
  (*(v2 + 16))();
  sub_24F765728((v0 + 2), (v0 + 7));
  sub_24F929D68();
  (*(v2 + 8))(v1, v4);
  sub_24F765798((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F760F58()
{
  __swift_deallocate_boxed_opaque_existential_2(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

void sub_24F760FE0(uint64_t a1@<X8>)
{
  v270 = a1;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F288);
  v267 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v266 = &v263 - v1;
  v265 = type metadata accessor for GameLibraryDataIntentImplementation();
  MEMORY[0x28223BE20](v265);
  v264 = &v263 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F929DA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v269 = &v263 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v380 = &v263 - v7;
  MEMORY[0x28223BE20](v8);
  v377 = &v263 - v9;
  MEMORY[0x28223BE20](v10);
  v376 = &v263 - v11;
  MEMORY[0x28223BE20](v12);
  v375 = &v263 - v13;
  MEMORY[0x28223BE20](v14);
  v374 = &v263 - v15;
  MEMORY[0x28223BE20](v16);
  v373 = &v263 - v17;
  MEMORY[0x28223BE20](v18);
  v372 = &v263 - v19;
  MEMORY[0x28223BE20](v20);
  v371 = &v263 - v21;
  MEMORY[0x28223BE20](v22);
  v370 = &v263 - v23;
  MEMORY[0x28223BE20](v24);
  v369 = &v263 - v25;
  MEMORY[0x28223BE20](v26);
  v368 = &v263 - v27;
  MEMORY[0x28223BE20](v28);
  v367 = &v263 - v29;
  MEMORY[0x28223BE20](v30);
  v366 = &v263 - v31;
  MEMORY[0x28223BE20](v32);
  v365 = &v263 - v33;
  MEMORY[0x28223BE20](v34);
  v364 = &v263 - v35;
  MEMORY[0x28223BE20](v36);
  v363 = &v263 - v37;
  MEMORY[0x28223BE20](v38);
  v362 = &v263 - v39;
  MEMORY[0x28223BE20](v40);
  v361 = &v263 - v41;
  MEMORY[0x28223BE20](v42);
  v360 = &v263 - v43;
  MEMORY[0x28223BE20](v44);
  v359 = &v263 - v45;
  MEMORY[0x28223BE20](v46);
  v358 = &v263 - v47;
  MEMORY[0x28223BE20](v48);
  v357 = &v263 - v49;
  MEMORY[0x28223BE20](v50);
  v356 = &v263 - v51;
  MEMORY[0x28223BE20](v52);
  v355 = &v263 - v53;
  MEMORY[0x28223BE20](v54);
  v354 = &v263 - v55;
  MEMORY[0x28223BE20](v56);
  v353 = &v263 - v57;
  MEMORY[0x28223BE20](v58);
  v352 = &v263 - v59;
  MEMORY[0x28223BE20](v60);
  v351 = &v263 - v61;
  MEMORY[0x28223BE20](v62);
  v350 = &v263 - v63;
  MEMORY[0x28223BE20](v64);
  v349 = &v263 - v65;
  MEMORY[0x28223BE20](v66);
  v348 = &v263 - v67;
  MEMORY[0x28223BE20](v68);
  v347 = &v263 - v69;
  MEMORY[0x28223BE20](v70);
  v346 = &v263 - v71;
  MEMORY[0x28223BE20](v72);
  v345 = &v263 - v73;
  MEMORY[0x28223BE20](v74);
  v344 = &v263 - v75;
  MEMORY[0x28223BE20](v76);
  v343 = &v263 - v77;
  MEMORY[0x28223BE20](v78);
  v342 = &v263 - v79;
  MEMORY[0x28223BE20](v80);
  v341 = &v263 - v81;
  MEMORY[0x28223BE20](v82);
  v340 = &v263 - v83;
  MEMORY[0x28223BE20](v84);
  v339 = &v263 - v85;
  MEMORY[0x28223BE20](v86);
  v338 = &v263 - v87;
  MEMORY[0x28223BE20](v88);
  v337 = &v263 - v89;
  MEMORY[0x28223BE20](v90);
  v336 = &v263 - v91;
  MEMORY[0x28223BE20](v92);
  v335 = &v263 - v93;
  MEMORY[0x28223BE20](v94);
  v334 = &v263 - v95;
  MEMORY[0x28223BE20](v96);
  v333 = &v263 - v97;
  MEMORY[0x28223BE20](v98);
  v332 = &v263 - v99;
  MEMORY[0x28223BE20](v100);
  v331 = &v263 - v101;
  MEMORY[0x28223BE20](v102);
  v330 = &v263 - v103;
  MEMORY[0x28223BE20](v104);
  v329 = &v263 - v105;
  MEMORY[0x28223BE20](v106);
  v328 = &v263 - v107;
  MEMORY[0x28223BE20](v108);
  v327 = &v263 - v109;
  MEMORY[0x28223BE20](v110);
  v326 = &v263 - v111;
  MEMORY[0x28223BE20](v112);
  v325 = &v263 - v113;
  MEMORY[0x28223BE20](v114);
  v324 = &v263 - v115;
  MEMORY[0x28223BE20](v116);
  v323 = &v263 - v117;
  MEMORY[0x28223BE20](v118);
  v322 = &v263 - v119;
  MEMORY[0x28223BE20](v120);
  v321 = &v263 - v121;
  MEMORY[0x28223BE20](v122);
  v320 = &v263 - v123;
  MEMORY[0x28223BE20](v124);
  v319 = &v263 - v125;
  MEMORY[0x28223BE20](v126);
  v318 = &v263 - v127;
  MEMORY[0x28223BE20](v128);
  v317 = &v263 - v129;
  MEMORY[0x28223BE20](v130);
  v316 = &v263 - v131;
  MEMORY[0x28223BE20](v132);
  v315 = &v263 - v133;
  MEMORY[0x28223BE20](v134);
  v314 = &v263 - v135;
  MEMORY[0x28223BE20](v136);
  v313 = &v263 - v137;
  MEMORY[0x28223BE20](v138);
  v312 = &v263 - v139;
  MEMORY[0x28223BE20](v140);
  v311 = &v263 - v141;
  MEMORY[0x28223BE20](v142);
  v310 = &v263 - v143;
  MEMORY[0x28223BE20](v144);
  v309 = &v263 - v145;
  MEMORY[0x28223BE20](v146);
  v308 = &v263 - v147;
  MEMORY[0x28223BE20](v148);
  v307 = &v263 - v149;
  MEMORY[0x28223BE20](v150);
  v306 = &v263 - v151;
  MEMORY[0x28223BE20](v152);
  v305 = &v263 - v153;
  MEMORY[0x28223BE20](v154);
  v304 = &v263 - v155;
  MEMORY[0x28223BE20](v156);
  v303 = &v263 - v157;
  MEMORY[0x28223BE20](v158);
  v302 = &v263 - v159;
  MEMORY[0x28223BE20](v160);
  v301 = &v263 - v161;
  MEMORY[0x28223BE20](v162);
  v300 = &v263 - v163;
  MEMORY[0x28223BE20](v164);
  v299 = &v263 - v165;
  MEMORY[0x28223BE20](v166);
  v298 = &v263 - v167;
  MEMORY[0x28223BE20](v168);
  v297 = &v263 - v169;
  MEMORY[0x28223BE20](v170);
  v296 = &v263 - v171;
  MEMORY[0x28223BE20](v172);
  v295 = &v263 - v173;
  MEMORY[0x28223BE20](v174);
  v294 = &v263 - v175;
  MEMORY[0x28223BE20](v176);
  v293 = &v263 - v177;
  MEMORY[0x28223BE20](v178);
  v292 = &v263 - v179;
  MEMORY[0x28223BE20](v180);
  v291 = &v263 - v181;
  MEMORY[0x28223BE20](v182);
  v290 = &v263 - v183;
  MEMORY[0x28223BE20](v184);
  v289 = &v263 - v185;
  MEMORY[0x28223BE20](v186);
  v288 = &v263 - v187;
  MEMORY[0x28223BE20](v188);
  v287 = &v263 - v189;
  MEMORY[0x28223BE20](v190);
  v286 = &v263 - v191;
  MEMORY[0x28223BE20](v192);
  v285 = &v263 - v193;
  MEMORY[0x28223BE20](v194);
  v284 = &v263 - v195;
  MEMORY[0x28223BE20](v196);
  v283 = &v263 - v197;
  MEMORY[0x28223BE20](v198);
  v282 = &v263 - v199;
  MEMORY[0x28223BE20](v200);
  v281 = &v263 - v201;
  MEMORY[0x28223BE20](v202);
  v280 = &v263 - v203;
  MEMORY[0x28223BE20](v204);
  v279 = &v263 - v205;
  MEMORY[0x28223BE20](v206);
  v278 = &v263 - v207;
  MEMORY[0x28223BE20](v208);
  v277 = &v263 - v209;
  MEMORY[0x28223BE20](v210);
  v276 = &v263 - v211;
  MEMORY[0x28223BE20](v212);
  v214 = &v263 - v213;
  MEMORY[0x28223BE20](v215);
  v217 = &v263 - v216;
  MEMORY[0x28223BE20](v218);
  v220 = &v263 - v219;
  MEMORY[0x28223BE20](v221);
  v223 = &v263 - v222;
  MEMORY[0x28223BE20](v224);
  v226 = &v263 - v225;
  v378 = 0xD000000000000011;
  v379 = 0x800000024FA7D350;
  sub_24F929D98();
  sub_24F765800();
  v271 = v226;
  sub_24F929D58();
  v275 = v4;
  v227 = *(v4 + 8);
  v227(v223, v3);
  v378 = 0xD000000000000013;
  v379 = 0x800000024FA7D370;
  sub_24F929D98();
  sub_24F765854();
  v272 = v220;
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F7658A8();
  v273 = v217;
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F7658FC();
  v274 = v214;
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765950();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F7659A4();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F7659F8();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765A4C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765AA0();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765AF4();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765B48();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765B9C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765BF0();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765C44();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765C98();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765CEC();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765D40();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765D94();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765DE8();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765E3C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765E90();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765EE4();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765F38();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765F8C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F765FE0();
  sub_24F929D58();
  v227(v223, v3);
  type metadata accessor for LeaderboardEntryOptionProvider();
  v228 = swift_allocObject();
  *(v228 + 16) = 512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AC30);
  swift_allocObject();
  *(v228 + 24) = sub_24F9280D8();
  *(v228 + 32) = 0;
  sub_24F91FDB8();
  v378 = v228;
  sub_24F929D98();
  sub_24F766034();
  sub_24F929D58();
  v227(v223, v3);

  sub_24F929D98();
  sub_24F766088();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F7660DC();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F766130();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F766184();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24EFB9E64();
  sub_24F929D58();
  v227(v223, v3);
  type metadata accessor for FriendsPlayingOptionProvider();
  v229 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C138);
  swift_allocObject();
  *(v229 + 16) = sub_24F9280D8();
  *(v229 + 24) = 0;
  sub_24F91FDB8();
  v378 = v229;
  sub_24F929D98();
  sub_24F7661D8();
  sub_24F929D58();
  v227(v223, v3);

  sub_24F929D98();
  sub_24F76622C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F3E8();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F766280();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F43C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F490();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F4E4();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F7662D4();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F538();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F58C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F634();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F766328();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F5E0();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F688();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F6DC();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F730();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F76637C();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F7663D0();
  sub_24F929D58();
  v227(v223, v3);
  sub_24F929D98();
  sub_24F75F784();
  sub_24F929D58();
  v227(v223, v3);
  if (qword_27F20FFC0 != -1)
  {
    swift_once();
  }

  v230 = qword_27F39B0C0;
  v231 = MEMORY[0x277D841D0];
  v232 = *(*qword_27F39B0C0 + *MEMORY[0x277D841D0] + 16);
  v233 = (*(*qword_27F39B0C0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_27F39B0C0 + v233));
  v234 = v263;
  sub_24E8F7000(v230 + v232);
  if (v234)
  {
    os_unfair_lock_unlock((v230 + v233));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v230 + v233));
    sub_24F929D98();
    sub_24F75F7D8();
    sub_24F929D58();
    v227(v223, v3);
    if (qword_27F211248 != -1)
    {
      swift_once();
    }

    v235 = off_27F242AC0;
    v236 = *(*off_27F242AC0 + *v231 + 16);
    v237 = (*(*off_27F242AC0 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F242AC0 + v237));
    sub_24F40821C(&v235[v236]);
    os_unfair_lock_unlock(&v235[v237]);
    sub_24F929D98();
    sub_24F75F928();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FA78();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FACC();
    sub_24F929D58();
    v227(v223, v3);
    if (qword_27F2118B0 != -1)
    {
      swift_once();
    }

    v238 = off_27F251450;
    v239 = *(*off_27F251450 + *v231 + 16);
    v240 = (*(*off_27F251450 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F251450 + v240));
    sub_24F7E8F18(&v238[v239]);
    os_unfair_lock_unlock(&v238[v240]);
    sub_24F929D98();
    sub_24F75F880();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75F82C();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75F8D4();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FA24();
    sub_24F929D58();
    v227(v223, v3);
    if (qword_27F211330 != -1)
    {
      swift_once();
    }

    v241 = off_27F2471B0;
    v242 = *(*off_27F2471B0 + *v231 + 16);
    v243 = (*(*off_27F2471B0 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F2471B0 + v243));
    sub_24F51A6F4(&v241[v242]);
    os_unfair_lock_unlock(&v241[v243]);
    sub_24F929D98();
    sub_24F75F97C();
    sub_24F929D58();
    v227(v223, v3);
    if (qword_27F211108 != -1)
    {
      swift_once();
    }

    v244 = off_27F23E740;
    v245 = *(*off_27F23E740 + *v231 + 16);
    v246 = (*(*off_27F23E740 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F23E740 + v246));
    sub_24F2FB384(&v244[v245]);
    os_unfair_lock_unlock(&v244[v246]);
    sub_24F929D98();
    sub_24F75F9D0();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FB20();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75F340();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75F394();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FB74();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FC1C();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FBC8();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FC70();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FDC0();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FD6C();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F929D58();
    v227(v223, v3);
    if (qword_27F211418 != -1)
    {
      swift_once();
    }

    v247 = sub_24F9220D8();
    v248 = __swift_project_value_buffer(v247, qword_27F39E898);
    v249 = v264;
    (*(*(v247 - 8) + 16))(v264, v248, v247);
    sub_24F929D98();
    sub_24F76661C(&qword_27F24F198, type metadata accessor for GameLibraryDataIntentImplementation);
    sub_24F929D58();
    v227(v223, v3);
    sub_24F75FEC0(v249);
    sub_24F929D98();
    sub_24F75FF1C();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F766424();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FFC4();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760018();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F766478();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7600C0();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7664CC();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F766520();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7601BC();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760114();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760168();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F76006C();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760210();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760264();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7602B8();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F76030C();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760360();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7603B4();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F76045C();
    sub_24F929D58();
    v227(v223, v3);
    if (qword_27F2118E8 != -1)
    {
      swift_once();
    }

    v250 = off_27F252430;
    v251 = *(*off_27F252430 + *MEMORY[0x277D841D0] + 16);
    v252 = (*(*off_27F252430 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_27F252430 + v252));
    sub_24F81F7AC(&v250[v251]);
    os_unfair_lock_unlock(&v250[v252]);
    sub_24F929D98();
    sub_24F760408();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7604B0();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760504();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F766574();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760558();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7605AC();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760600();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7606FC();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760750();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7607A4();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7607F8();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FE14();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F75FF70();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7665C8();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F760654();
    sub_24F929D58();
    v227(v223, v3);
    sub_24F929D98();
    sub_24F7606A8();
    sub_24F929D58();
    v227(v223, v3);
    type metadata accessor for GSKDeepLinkWithReferrerIntent();
    sub_24F76661C(&qword_27F24F3E8, type metadata accessor for GSKDeepLinkWithReferrerIntent);
    v253 = v266;
    sub_24F92A258();
    v265 = 0;
    sub_24F929D98();
    sub_24F766664();
    v254 = v268;
    sub_24F929D58();
    v227(v223, v3);
    (*(v267 + 8))(v253, v254);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2313E8);
    v255 = v275;
    v256 = *(v275 + 72);
    v257 = (*(v275 + 80) + 32) & ~*(v275 + 80);
    v258 = 107;
    v268 = swift_allocObject();
    v259 = v268 + v257;
    v260 = *(v255 + 16);
    v260(v268 + v257, v271, v3);
    v260(v259 + v256, v272, v3);
    v260(v259 + 2 * v256, v273, v3);
    v260(v259 + 3 * v256, v274, v3);
    v260(v259 + 4 * v256, v276, v3);
    v260(v259 + 5 * v256, v277, v3);
    v260(v259 + 6 * v256, v278, v3);
    v260(v259 + 7 * v256, v279, v3);
    v260(v259 + 8 * v256, v280, v3);
    v260(v259 + 9 * v256, v281, v3);
    v260(v259 + 10 * v256, v282, v3);
    v260(v259 + 11 * v256, v283, v3);
    v260(v259 + 12 * v256, v284, v3);
    v260(v259 + 13 * v256, v285, v3);
    v260(v259 + 14 * v256, v286, v3);
    v260(v259 + 15 * v256, v287, v3);
    v260(v259 + 16 * v256, v288, v3);
    v260(v259 + 17 * v256, v289, v3);
    v260(v259 + 18 * v256, v290, v3);
    v260(v259 + 19 * v256, v291, v3);
    v260(v259 + 20 * v256, v292, v3);
    v260(v259 + 21 * v256, v293, v3);
    v260(v259 + 22 * v256, v294, v3);
    v260(v259 + 23 * v256, v295, v3);
    v260(v259 + 24 * v256, v296, v3);
    v260(v259 + 25 * v256, v297, v3);
    v260(v259 + 26 * v256, v298, v3);
    v260(v259 + 27 * v256, v299, v3);
    v260(v259 + 28 * v256, v300, v3);
    v260(v259 + 29 * v256, v301, v3);
    v260(v259 + 30 * v256, v302, v3);
    v260(v259 + 31 * v256, v303, v3);
    v260(v259 + 32 * v256, v304, v3);
    v260(v259 + 33 * v256, v305, v3);
    v260(v259 + 34 * v256, v306, v3);
    v260(v259 + 35 * v256, v307, v3);
    v260(v259 + 36 * v256, v308, v3);
    v260(v259 + 37 * v256, v309, v3);
    v260(v259 + 38 * v256, v310, v3);
    v260(v259 + 39 * v256, v311, v3);
    v260(v259 + 40 * v256, v312, v3);
    v260(v259 + 41 * v256, v313, v3);
    v260(v259 + 42 * v256, v314, v3);
    v260(v259 + 43 * v256, v315, v3);
    v260(v259 + 44 * v256, v316, v3);
    v260(v259 + 45 * v256, v317, v3);
    v260(v259 + 46 * v256, v318, v3);
    v260(v259 + 47 * v256, v319, v3);
    v260(v259 + 48 * v256, v320, v3);
    v260(v259 + 49 * v256, v321, v3);
    v260(v259 + 50 * v256, v322, v3);
    v260(v259 + 51 * v256, v323, v3);
    v260(v259 + 52 * v256, v324, v3);
    v260(v259 + 53 * v256, v325, v3);
    v260(v259 + 54 * v256, v326, v3);
    v260(v259 + 55 * v256, v327, v3);
    v260(v259 + 56 * v256, v328, v3);
    v260(v259 + 57 * v256, v329, v3);
    v260(v259 + 58 * v256, v330, v3);
    v260(v259 + 59 * v256, v331, v3);
    v260(v259 + 60 * v256, v332, v3);
    v260(v259 + 61 * v256, v333, v3);
    v260(v259 + 62 * v256, v334, v3);
    v260(v259 + 63 * v256, v335, v3);
    v260(v259 + (v256 << 6), v336, v3);
    v260(v259 + 65 * v256, v337, v3);
    v260(v259 + 66 * v256, v338, v3);
    v260(v259 + 67 * v256, v339, v3);
    v260(v259 + 68 * v256, v340, v3);
    v260(v259 + 69 * v256, v341, v3);
    v260(v259 + 70 * v256, v342, v3);
    v260(v259 + 71 * v256, v343, v3);
    v260(v259 + 72 * v256, v344, v3);
    v260(v259 + 73 * v256, v345, v3);
    v260(v259 + 74 * v256, v346, v3);
    v260(v259 + 75 * v256, v347, v3);
    v260(v259 + 76 * v256, v348, v3);
    v260(v259 + 77 * v256, v349, v3);
    v260(v259 + 78 * v256, v350, v3);
    v260(v259 + 79 * v256, v351, v3);
    v260(v259 + 80 * v256, v352, v3);
    v260(v259 + 81 * v256, v353, v3);
    v260(v259 + 82 * v256, v354, v3);
    v260(v259 + 83 * v256, v355, v3);
    v260(v259 + 84 * v256, v356, v3);
    v260(v259 + 85 * v256, v357, v3);
    v260(v259 + 86 * v256, v358, v3);
    v260(v259 + 87 * v256, v359, v3);
    v260(v259 + 88 * v256, v360, v3);
    v260(v259 + 89 * v256, v361, v3);
    v260(v259 + 90 * v256, v362, v3);
    v260(v259 + 91 * v256, v363, v3);
    v260(v259 + 92 * v256, v364, v3);
    v260(v259 + 93 * v256, v365, v3);
    v260(v259 + 94 * v256, v366, v3);
    v260(v259 + 95 * v256, v367, v3);
    v260(v259 + 96 * v256, v368, v3);
    v260(v259 + 97 * v256, v369, v3);
    v260(v259 + 98 * v256, v370, v3);
    v260(v259 + 99 * v256, v371, v3);
    v260(v259 + 100 * v256, v372, v3);
    v260(v259 + 101 * v256, v373, v3);
    v260(v259 + 102 * v256, v374, v3);
    v260(v259 + 103 * v256, v375, v3);
    v260(v259 + 104 * v256, v376, v3);
    v260(v259 + 105 * v256, v377, v3);
    v260(v259 + 106 * v256, v380, v3);
    v261 = v269;
    sub_24F929D98();
    v262 = v259;
    do
    {
      sub_24F929D88();
      v262 += v256;
      --v258;
    }

    while (v258);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v227(v380, v3);
    v227(v377, v3);
    v227(v376, v3);
    v227(v375, v3);
    v227(v374, v3);
    v227(v373, v3);
    v227(v372, v3);
    v227(v371, v3);
    v227(v370, v3);
    v227(v369, v3);
    v227(v368, v3);
    v227(v367, v3);
    v227(v366, v3);
    v227(v365, v3);
    v227(v364, v3);
    v227(v363, v3);
    v227(v362, v3);
    v227(v361, v3);
    v227(v360, v3);
    v227(v359, v3);
    v227(v358, v3);
    v227(v357, v3);
    v227(v356, v3);
    v227(v355, v3);
    v227(v354, v3);
    v227(v353, v3);
    v227(v352, v3);
    v227(v351, v3);
    v227(v350, v3);
    v227(v349, v3);
    v227(v348, v3);
    v227(v347, v3);
    v227(v346, v3);
    v227(v345, v3);
    v227(v344, v3);
    v227(v343, v3);
    v227(v342, v3);
    v227(v341, v3);
    v227(v340, v3);
    v227(v339, v3);
    v227(v338, v3);
    v227(v337, v3);
    v227(v336, v3);
    v227(v335, v3);
    v227(v334, v3);
    v227(v333, v3);
    v227(v332, v3);
    v227(v331, v3);
    v227(v330, v3);
    v227(v329, v3);
    v227(v328, v3);
    v227(v327, v3);
    v227(v326, v3);
    v227(v325, v3);
    v227(v324, v3);
    v227(v323, v3);
    v227(v322, v3);
    v227(v321, v3);
    v227(v320, v3);
    v227(v319, v3);
    v227(v318, v3);
    v227(v317, v3);
    v227(v316, v3);
    v227(v315, v3);
    v227(v314, v3);
    v227(v313, v3);
    v227(v312, v3);
    v227(v311, v3);
    v227(v310, v3);
    v227(v309, v3);
    v227(v308, v3);
    v227(v307, v3);
    v227(v306, v3);
    v227(v305, v3);
    v227(v304, v3);
    v227(v303, v3);
    v227(v302, v3);
    v227(v301, v3);
    v227(v300, v3);
    v227(v299, v3);
    v227(v298, v3);
    v227(v297, v3);
    v227(v296, v3);
    v227(v295, v3);
    v227(v294, v3);
    v227(v293, v3);
    v227(v292, v3);
    v227(v291, v3);
    v227(v290, v3);
    v227(v289, v3);
    v227(v288, v3);
    v227(v287, v3);
    v227(v286, v3);
    v227(v285, v3);
    v227(v284, v3);
    v227(v283, v3);
    v227(v282, v3);
    v227(v281, v3);
    v227(v280, v3);
    v227(v279, v3);
    v227(v278, v3);
    v227(v277, v3);
    v227(v276, v3);
    v227(v274, v3);
    v227(v273, v3);
    v227(v272, v3);
    v227(v271, v3);
    (*(v275 + 32))(v270, v261, v3);
  }
}

uint64_t sub_24F765728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F765798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F765800()
{
  result = qword_27F24F290;
  if (!qword_27F24F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F290);
  }

  return result;
}

unint64_t sub_24F765854()
{
  result = qword_27F24F298;
  if (!qword_27F24F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F298);
  }

  return result;
}

unint64_t sub_24F7658A8()
{
  result = qword_27F24F2A0;
  if (!qword_27F24F2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2A0);
  }

  return result;
}

unint64_t sub_24F7658FC()
{
  result = qword_27F24F2A8;
  if (!qword_27F24F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2A8);
  }

  return result;
}

unint64_t sub_24F765950()
{
  result = qword_27F24F2B0;
  if (!qword_27F24F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2B0);
  }

  return result;
}

unint64_t sub_24F7659A4()
{
  result = qword_27F24F2B8;
  if (!qword_27F24F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2B8);
  }

  return result;
}

unint64_t sub_24F7659F8()
{
  result = qword_27F24F2C0;
  if (!qword_27F24F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2C0);
  }

  return result;
}

unint64_t sub_24F765A4C()
{
  result = qword_27F24F2C8;
  if (!qword_27F24F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2C8);
  }

  return result;
}

unint64_t sub_24F765AA0()
{
  result = qword_27F24F2D0;
  if (!qword_27F24F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2D0);
  }

  return result;
}

unint64_t sub_24F765AF4()
{
  result = qword_27F24F2D8;
  if (!qword_27F24F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2D8);
  }

  return result;
}

unint64_t sub_24F765B48()
{
  result = qword_27F24F2E0;
  if (!qword_27F24F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2E0);
  }

  return result;
}

unint64_t sub_24F765B9C()
{
  result = qword_27F24F2E8;
  if (!qword_27F24F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2E8);
  }

  return result;
}

unint64_t sub_24F765BF0()
{
  result = qword_27F24F2F0;
  if (!qword_27F24F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2F0);
  }

  return result;
}

unint64_t sub_24F765C44()
{
  result = qword_27F24F2F8;
  if (!qword_27F24F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F2F8);
  }

  return result;
}

unint64_t sub_24F765C98()
{
  result = qword_27F24F300;
  if (!qword_27F24F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F300);
  }

  return result;
}

unint64_t sub_24F765CEC()
{
  result = qword_27F24F308;
  if (!qword_27F24F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F308);
  }

  return result;
}

unint64_t sub_24F765D40()
{
  result = qword_27F24F310;
  if (!qword_27F24F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F310);
  }

  return result;
}

unint64_t sub_24F765D94()
{
  result = qword_27F24F318;
  if (!qword_27F24F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F318);
  }

  return result;
}

unint64_t sub_24F765DE8()
{
  result = qword_27F24F320;
  if (!qword_27F24F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F320);
  }

  return result;
}

unint64_t sub_24F765E3C()
{
  result = qword_27F24F328;
  if (!qword_27F24F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F328);
  }

  return result;
}

unint64_t sub_24F765E90()
{
  result = qword_27F24F330;
  if (!qword_27F24F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F330);
  }

  return result;
}

unint64_t sub_24F765EE4()
{
  result = qword_27F24F338;
  if (!qword_27F24F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F338);
  }

  return result;
}

unint64_t sub_24F765F38()
{
  result = qword_27F24F340;
  if (!qword_27F24F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F340);
  }

  return result;
}

unint64_t sub_24F765F8C()
{
  result = qword_27F24F348;
  if (!qword_27F24F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F348);
  }

  return result;
}

unint64_t sub_24F765FE0()
{
  result = qword_27F24F350;
  if (!qword_27F24F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F350);
  }

  return result;
}

unint64_t sub_24F766034()
{
  result = qword_27F24F358;
  if (!qword_27F24F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F358);
  }

  return result;
}

unint64_t sub_24F766088()
{
  result = qword_27F24F360;
  if (!qword_27F24F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F360);
  }

  return result;
}

unint64_t sub_24F7660DC()
{
  result = qword_27F24F368;
  if (!qword_27F24F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F368);
  }

  return result;
}

unint64_t sub_24F766130()
{
  result = qword_27F24F370;
  if (!qword_27F24F370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F370);
  }

  return result;
}

unint64_t sub_24F766184()
{
  result = qword_27F24F378;
  if (!qword_27F24F378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F378);
  }

  return result;
}

unint64_t sub_24F7661D8()
{
  result = qword_27F24F380;
  if (!qword_27F24F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F380);
  }

  return result;
}

unint64_t sub_24F76622C()
{
  result = qword_27F24F388;
  if (!qword_27F24F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F388);
  }

  return result;
}

unint64_t sub_24F766280()
{
  result = qword_27F24F390;
  if (!qword_27F24F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F390);
  }

  return result;
}

unint64_t sub_24F7662D4()
{
  result = qword_27F24F398;
  if (!qword_27F24F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F398);
  }

  return result;
}

unint64_t sub_24F766328()
{
  result = qword_27F24F3A0;
  if (!qword_27F24F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3A0);
  }

  return result;
}

unint64_t sub_24F76637C()
{
  result = qword_27F24F3A8;
  if (!qword_27F24F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3A8);
  }

  return result;
}

unint64_t sub_24F7663D0()
{
  result = qword_27F24F3B0;
  if (!qword_27F24F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3B0);
  }

  return result;
}

unint64_t sub_24F766424()
{
  result = qword_27F24F3B8;
  if (!qword_27F24F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3B8);
  }

  return result;
}

unint64_t sub_24F766478()
{
  result = qword_27F24F3C0;
  if (!qword_27F24F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3C0);
  }

  return result;
}

unint64_t sub_24F7664CC()
{
  result = qword_27F24F3C8;
  if (!qword_27F24F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3C8);
  }

  return result;
}

unint64_t sub_24F766520()
{
  result = qword_27F24F3D0;
  if (!qword_27F24F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3D0);
  }

  return result;
}

unint64_t sub_24F766574()
{
  result = qword_27F24F3D8;
  if (!qword_27F24F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3D8);
  }

  return result;
}

unint64_t sub_24F7665C8()
{
  result = qword_27F24F3E0;
  if (!qword_27F24F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3E0);
  }

  return result;
}

uint64_t sub_24F76661C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F766664()
{
  result = qword_27F24F3F0;
  if (!qword_27F24F3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24F288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F3F0);
  }

  return result;
}

uint64_t sub_24F7666C8()
{
  swift_getKeyPath();
  sub_24F767DF0();
  sub_24F91FD88();

  return *(v0 + 16);
}

uint64_t sub_24F766738(char a1)
{
  if (*(v1 + 16))
  {
    v3 = 0x6C61626F6C67;
  }

  else
  {
    v3 = 0x4F73646E65697266;
  }

  if (*(v1 + 16))
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000796C6ELL;
  }

  if (a1)
  {
    v5 = 0x6C61626F6C67;
  }

  else
  {
    v5 = 0x4F73646E65697266;
  }

  if (a1)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEB00000000796C6ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24F767DF0();
      sub_24F91FD78();
    }
  }

  v11 = *(v1 + 16);
  *(v1 + 16) = a1 & 1;

  return sub_24F767364(v11);
}

uint64_t sub_24F7668C8()
{
  swift_getKeyPath();
  sub_24F767DF0();
  sub_24F91FD88();

  return *(v0 + 17);
}

uint64_t sub_24F766938(char a1)
{
  v3 = 0xE400000000000000;
  v4 = 1801807223;
  if (*(v1 + 17) != 1)
  {
    v4 = 0x656D69546C6C61;
    v3 = 0xE700000000000000;
  }

  if (*(v1 + 17))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7961646F74;
  }

  if (*(v1 + 17))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 1801807223;
    }

    else
    {
      v7 = 0x656D69546C6C61;
    }

    if (a1 == 1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v5 != v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0xE500000000000000;
    if (v5 != 0x7961646F74)
    {
      goto LABEL_21;
    }
  }

  if (v6 == v8)
  {

    goto LABEL_22;
  }

LABEL_21:
  v9 = sub_24F92CE08();

  if ((v9 & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F767DF0();
    sub_24F91FD78();
  }

LABEL_22:
  v10 = *(v1 + 17);
  *(v1 + 17) = a1;

  return sub_24F76768C(v10);
}

uint64_t sub_24F766B10(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F767DF0();
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F766BF0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61626F6C67;
  }

  else
  {
    v3 = 0x4F73646E65697266;
  }

  if (v2)
  {
    v4 = 0xEB00000000796C6ELL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61626F6C67;
  }

  else
  {
    v5 = 0x4F73646E65697266;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEB00000000796C6ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F766C9C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F766D24()
{
  sub_24F92B218();
}

uint64_t sub_24F766D98()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F766E1C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F766E7C(uint64_t *a1@<X8>)
{
  v2 = 0x4F73646E65697266;
  if (*v1)
  {
    v2 = 0x6C61626F6C67;
  }

  v3 = 0xEB00000000796C6ELL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F766F80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1801807223;
  if (v2 != 1)
  {
    v4 = 0x656D69546C6C61;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7961646F74;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1801807223;
  if (*a2 != 1)
  {
    v8 = 0x656D69546C6C61;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7961646F74;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F767070()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F767108()
{
  sub_24F92B218();
}

uint64_t sub_24F76718C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F767220@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F767CB8();
  *a1 = result;
  return result;
}

void sub_24F767250(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1801807223;
  if (v2 != 1)
  {
    v5 = 0x656D69546C6C61;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7961646F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24F767364(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  v21 = v1;
  sub_24F767DF0();
  sub_24F91FD88();

  v4 = *(v1 + 16);
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v5 = 0x6C61626F6C67;
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E880);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v20 = v4;
    v9 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v10 = v21;
    *v9 = 136315394;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x4F73646E65697266;
      v11 = 0xEB00000000796C6ELL;
    }

    v12 = sub_24E7620D4(v5, v11, &v21);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (v20)
    {
      v13 = 0x6C61626F6C67;
    }

    else
    {
      v13 = 0x4F73646E65697266;
    }

    if (v20)
    {
      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xEB00000000796C6ELL;
    }

    v15 = sub_24E7620D4(v13, v14, &v21);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_24E5DD000, v7, v8, "playerScopeOption changed from %s to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {

    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v5 = 0x4F73646E65697266;
      v11 = 0xEB00000000796C6ELL;
    }
  }

  swift_getKeyPath();
  v21 = v2;
  sub_24F91FD88();

  if (*(v2 + 16))
  {
    v16 = 0x6C61626F6C67;
  }

  else
  {
    v16 = 0x4F73646E65697266;
  }

  if (*(v2 + 16))
  {
    v17 = 0xE600000000000000;
  }

  else
  {
    v17 = 0xEB00000000796C6ELL;
  }

  if (v5 == v16 && v11 == v17)
  {
  }

  else
  {
    v19 = sub_24F92CE08();

    if ((v19 & 1) == 0)
    {
      v21 = v2;
      return sub_24F9280C8();
    }
  }

  return result;
}

uint64_t sub_24F76768C(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  v24 = v1;
  sub_24F767DF0();
  sub_24F91FD88();

  v4 = *(v1 + 17);
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v5 = sub_24F9220D8();
  __swift_project_value_buffer(v5, qword_27F39E880);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    v23 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = 1801807223;
      }

      else
      {
        v10 = 0x656D69546C6C61;
      }

      if (a1 == 1)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      v10 = 0x7961646F74;
    }

    v12 = sub_24E7620D4(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = 0xE400000000000000;
    v14 = 1801807223;
    if (v4 != 1)
    {
      v14 = 0x656D69546C6C61;
      v13 = 0xE700000000000000;
    }

    if (v4)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7961646F74;
    }

    if (v4)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0xE500000000000000;
    }

    v17 = sub_24E7620D4(v15, v16, &v24);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_24E5DD000, v6, v7, "timeScopeOption changed from %s to %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);

    a1 = v23;
  }

  else
  {
  }

  swift_getKeyPath();
  v24 = v2;
  sub_24F91FD88();

  if (a1)
  {
    if (a1 == 1)
    {
      v18 = 0xE400000000000000;
      v19 = 1801807223;
      if (!*(v2 + 17))
      {
LABEL_31:
        v20 = 0xE500000000000000;
        if (v19 != 0x7961646F74)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0xE700000000000000;
      v19 = 0x656D69546C6C61;
      if (!*(v2 + 17))
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v18 = 0xE500000000000000;
    v19 = 0x7961646F74;
    if (!*(v2 + 17))
    {
      goto LABEL_31;
    }
  }

  if (*(v2 + 17) == 1)
  {
    v20 = 0xE400000000000000;
    if (v19 != 1801807223)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v20 = 0xE700000000000000;
    if (v19 != 0x656D69546C6C61)
    {
      goto LABEL_36;
    }
  }

LABEL_34:
  if (v18 == v20)
  {
  }

LABEL_36:
  v22 = sub_24F92CE08();

  if ((v22 & 1) == 0)
  {
    v24 = v2;
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24F767A14()
{
  swift_getKeyPath();
  sub_24F767DF0();
  sub_24F91FD88();

  return *(v0 + 32);
}

uint64_t sub_24F767A84()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit30LeaderboardEntryOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntryOptionProvider()
{
  result = qword_27F24F400;
  if (!qword_27F24F400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F767B7C()
{
  result = sub_24F91FDC8();
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

uint64_t sub_24F767CB8()
{
  v0 = sub_24F92CB88();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24F767D04()
{
  result = qword_27F24F428;
  if (!qword_27F24F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F428);
  }

  return result;
}

unint64_t sub_24F767D58()
{
  result = qword_27F24F430;
  if (!qword_27F24F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F430);
  }

  return result;
}

uint64_t sub_24F767DB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 17);
  *(v1 + 17) = *(v0 + 24);
  return sub_24F76768C(v2);
}

unint64_t sub_24F767DF0()
{
  result = qword_27F241DC0;
  if (!qword_27F241DC0)
  {
    type metadata accessor for LeaderboardEntryOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241DC0);
  }

  return result;
}

uint64_t sub_24F767E50()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
  return sub_24F767364(v2);
}

uint64_t sub_24F767EC0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for ChallengeInviteCard();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F768058(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for ChallengeInviteCard();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengeInviteLockup()
{
  result = qword_27F24F438;
  if (!qword_27F24F438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F768228()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ChallengeInviteCard();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F768324@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v30 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v32);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ChallengeInviteCard();
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F458);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ChallengeInviteLockup();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 24)];
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  sub_24E61DA68(&v40, v17, qword_27F21B590);
  v18 = v13[7];
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v38 = v18;
  v39 = v15;
  v20(&v15[v18], 1, 1, v19);
  v21 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F768E20();
  v35 = v12;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v23 = v39;
    sub_24E601704(v17, qword_27F24EC90);
    return sub_24E601704(v23 + v38, &qword_27F215440);
  }

  else
  {
    v36 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v43 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v41;
    v25 = v39;
    *v39 = v40;
    v25[1] = v24;
    *(v25 + 4) = v42;
    LOBYTE(v40) = 1;
    sub_24F768ED8(&qword_27F24F468, type metadata accessor for ChallengeInviteCard);
    sub_24F92CC68();
    sub_24F768E74(v9, v25 + v13[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v43 = 2;
    sub_24E61D970();
    sub_24F92CC68();
    sub_24E61DA68(&v40, v17, qword_27F24EC90);
    LOBYTE(v40) = 3;
    sub_24E65CAA0();
    v26 = v36;
    sub_24F92CC68();
    v27 = v39;
    sub_24E61DA68(v26, v39 + v38, &qword_27F215440);
    sub_24F929608();
    LOBYTE(v40) = 4;
    sub_24F768ED8(&qword_27F213F48, MEMORY[0x277D21F70]);
    v28 = v31;
    sub_24F92CC18();
    (*(v33 + 8))(v35, v34);
    sub_24E6009C8(v28, v27 + v13[8], &qword_27F213E68);
    sub_24F768F20(v27, v30, type metadata accessor for ChallengeInviteLockup);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return sub_24F768F88(v27, type metadata accessor for ChallengeInviteLockup);
  }
}

uint64_t sub_24F7689D4(uint64_t a1)
{
  v2 = sub_24F768E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F768A10(uint64_t a1)
{
  v2 = sub_24F768E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F768A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 28), &v9 - v6, &qword_27F215440);
  return sub_24E6009C8(v7, a2, &qword_27F215460);
}

uint64_t sub_24F768B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ChallengeInviteLockup() + 20);
  *(a2 + 40) = type metadata accessor for ChallengeInviteCard();
  *(a2 + 48) = sub_24F768ED8(&qword_27F21AAD8, type metadata accessor for ChallengeInviteCard);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 16));
  sub_24F768F20(a1 + v4, boxed_opaque_existential_1, type metadata accessor for ChallengeInviteCard);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24F768ED8(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *a2 = sub_24F923598();
  *(a2 + 8) = v6 & 1;
  result = swift_getKeyPath();
  *(a2 + 56) = result;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_24F768C88()
{
  sub_24F47DA84();

  return sub_24F9218E8();
}

unint64_t sub_24F768D18()
{
  result = qword_27F24F450;
  if (!qword_27F24F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F450);
  }

  return result;
}

unint64_t sub_24F768E20()
{
  result = qword_27F24F460;
  if (!qword_27F24F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F460);
  }

  return result;
}

uint64_t sub_24F768E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeInviteCard();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F768ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F768F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F768F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F768FFC()
{
  result = qword_27F24F470;
  if (!qword_27F24F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F470);
  }

  return result;
}

unint64_t sub_24F769054()
{
  result = qword_27F24F478;
  if (!qword_27F24F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F478);
  }

  return result;
}

unint64_t sub_24F7690AC()
{
  result = qword_27F24F480[0];
  if (!qword_27F24F480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24F480);
  }

  return result;
}

uint64_t View.focusEffect<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v29 = a1;
  v32 = a5;
  v6 = *(a2 - 8);
  v27 = a4;
  v28 = v6;
  MEMORY[0x28223BE20](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FocusEffectView();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v18 = sub_24F924038();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  (*(v10 + 16))(v13, v29, a3, v20);
  (*(v28 + 16))(v8, v31, v30);
  sub_24F76A7A8(v13, v8, a3, v17);
  WitnessTable = swift_getWitnessTable();
  sub_24F01A070(v14, WitnessTable);
  (*(v15 + 8))(v17, v14);
  v24 = sub_24E600EE8();
  v33 = WitnessTable;
  v34 = v24;
  v25 = swift_getWitnessTable();
  sub_24F8B753C(v18, v25);
  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_24F769434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v10);
  (*(v6 + 16))(v8, a1, a4);
  return sub_24F9234A8();
}

uint64_t sub_24F7695C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_24E60169C(v2, v11, &qword_27F215690);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_24F7697B0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_24E60169C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_24F92BDC8();
    v17 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_24F769A00(uint64_t a1, char a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

uint64_t sub_24F769B44(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_24F924848();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
  }

  else
  {

    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(a1, a2, 0);
    (*(v7 + 8))(v9, v6);
    return v12;
  }

  return a1;
}

uint64_t sub_24F769CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_24E60169C(v2, &v13 - v9, &qword_27F216DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24F76D2A4(v10, a1);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24F769EF0(uint64_t a1, char a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v10[15];
  }

  return a1;
}

uint64_t sub_24F76A0AC(uint64_t a1, char a2)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_24F92BDC8();
    v8 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_24F76A28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_24F924848();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_24E60169C(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v13, v17, a2);
  }

  sub_24F92BDC8();
  v15 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

uint64_t FillFocusBackgroundEffect.init(shape:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for FillFocusBackgroundEffect();
  *(a4 + *(result + 52)) = a2;
  return result;
}

double sub_24F76A54C(void *a1, double a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_24F923F58();
  swift_getAssociatedConformanceWitness();
  sub_24F927348();
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return a2;
}

uint64_t sub_24F76A694(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_24F923F58();
  swift_getAssociatedConformanceWitness();
  v3 = sub_24F927348();
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_24F76A7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = type metadata accessor for FocusEffectView();
  v7 = v6[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4 + v7, a2, AssociatedTypeWitness);
  v9 = a4 + v6[10];
  *v9 = sub_24F923398() & 1;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11 & 1;
  v12 = a4 + v6[11];
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t StrokeFocusEffect.applyEffect(isFocused:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[1] = a4;
  v8 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FD00);
  sub_24F924038();
  v9 = sub_24F927598();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v16 = *(a3 + 24);
  v27 = v8;
  v28 = v16;
  v29 = v4;
  v30 = a1;
  v31 = a2;
  v23[4] = v8;
  v23[5] = v16;
  v24 = v4;
  v25 = a1;
  v26 = a2;
  v17 = sub_24E6A4C1C();
  v18 = sub_24E602068(&qword_27F21FD08, &qword_27F21FD00);
  v35 = v16;
  v36 = v18;
  WitnessTable = swift_getWitnessTable();
  sub_24F927568();
  v32 = v17;
  v33 = WitnessTable;
  v34 = WitnessTable;
  v19 = swift_getWitnessTable();
  sub_24E7896B8(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  sub_24E7896B8(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t sub_24F76AB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FD00);
  v5 = sub_24F924038();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_24E615E00(a1, v17);
  sub_24F76A694(v17);
  sub_24F76ADD0();

  v12 = sub_24E602068(&qword_27F21FD08, &qword_27F21FD00);
  v16[1] = a2;
  v16[2] = v12;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v5, WitnessTable);
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_24E7896B8(v11, v5, WitnessTable);
  return (v14)(v11, v5);
}

uint64_t sub_24F76ADD0()
{
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F740);
  sub_24E602068(qword_27F24F748, &qword_27F24F740);
  return sub_24F926A08();
}

uint64_t sub_24F76AEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v16[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FD00);
  v5 = sub_24F924038();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  sub_24E615E00(a1, v17);
  sub_24F76A54C(v17, 2.0);
  sub_24F76ADD0();

  v12 = sub_24E602068(&qword_27F21FD08, &qword_27F21FD00);
  v16[1] = a2;
  v16[2] = v12;
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v8, v5, WitnessTable);
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_24E7896B8(v11, v5, WitnessTable);
  return (v14)(v11, v5);
}

uint64_t sub_24F76B128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F923658();
  *a3 = a1;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = a2;
  *(a3 + 56) = 256;
}

uint64_t FillFocusBackgroundEffect.applyEffect(isFocused:content:)()
{
  sub_24F927618();
  sub_24F9234B8();
  swift_getWitnessTable();
  return sub_24F926088();
}

uint64_t sub_24F76B304@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a4;
  v30 = a6;
  v31 = a7;
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v14;
  v33 = MEMORY[0x277CE0F78];
  v34 = v15;
  v35 = MEMORY[0x277CE0F60];
  v16 = sub_24F9234B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v28 - v22;
  (*(v11 + 16))(v13, a1, a3, v21);
  if (a2)
  {
    v32 = a3;
    v33 = v29;
    v34 = a5;
    v35 = v30;
    v24 = *(a1 + *(type metadata accessor for FillFocusBackgroundEffect() + 52));
  }

  else
  {
    v24 = sub_24F926C98();
  }

  v32 = v24;
  sub_24F769434(&v32, 256, a3, MEMORY[0x277CE0F78]);

  (*(v11 + 8))(v13, a3);
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v19, v16, WitnessTable);
  v26 = *(v17 + 8);
  v26(v19, v16);
  sub_24E7896B8(v23, v16, WitnessTable);
  return (v26)(v23, v16);
}

uint64_t GlowFocusEffect.applyEffect(isFocused:content:)(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  }

  else
  {
    v4 = sub_24F926C98();
  }

  sub_24F76B61C(v4, *(a3 + 16), *(a3 + 24));
}

uint64_t sub_24F76B61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F924038();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  sub_24F926998();
  v14[0] = a3;
  v14[1] = MEMORY[0x277CDF760];
  WitnessTable = swift_getWitnessTable();
  sub_24E7896B8(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_24E7896B8(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_24F76B8C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F76B914()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F76B9A4()
{
  type metadata accessor for FocusEffectView();
  sub_24F924038();
  sub_24F924038();
  swift_getWitnessTable();
  sub_24E600EE8();
  swift_getWitnessTable();
  sub_24E600F3C();
  return swift_getWitnessTable();
}

uint64_t sub_24F76BA78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FD00);
  sub_24F924038();
  sub_24F927598();
  sub_24E6A4C1C();
  sub_24E602068(&qword_27F21FD08, &qword_27F21FD00);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F76BB78()
{
  sub_24F9234B8();
  swift_getWitnessTable();
  sub_24F924E08();
  sub_24F924038();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F76BCBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F76BD10()
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      sub_24E65E73C();
      AssociatedTypeWitness = v3;
      if (v4 <= 0x3F)
      {
        sub_24EB999AC();
        AssociatedTypeWitness = v5;
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_24F76BDF0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v10;
  if (v12 < a2)
  {
    v14 = ((v11 + (v13 & ~v10) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v14 <= 3)
    {
      v15 = ((a2 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *&a1[v14];
        if (!*&a1[v14])
        {
          goto LABEL_30;
        }
      }

      else
      {
        v18 = *&a1[v14];
        if (!v18)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_30;
      }

      v18 = a1[v14];
      if (!a1[v14])
      {
        goto LABEL_30;
      }
    }

    v20 = (v18 - 1) << (8 * v14);
    if (v14 <= 3)
    {
      v21 = *a1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
    }

    v26 = v12 + (v21 | v20);
    return (v26 + 1);
  }

LABEL_30:
  if (v7 == v12)
  {
    v22 = *(v6 + 48);

    return v22(a1, v7, v5);
  }

  v23 = &a1[v13] & ~v10;
  if (v9 != v12)
  {
    v25 = *(((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    v26 = v25 - 1;
    if (v26 < 0)
    {
      v26 = -1;
    }

    return (v26 + 1);
  }

  v24 = *(v8 + 48);

  return v24(v23);
}

void sub_24F76C078(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  v13 = *(v10 + 64);
  if (v11 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(v8 + 64) + v12;
  v16 = ((v13 + (v15 & ~v12) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v19 = 0;
    if (v14 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v14 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 == v14)
      {
        v22 = *(v26 + 56);

        v22(a1, a2, v9, v7);
      }

      else
      {
        v23 = &a1[v15] & ~v12;
        if (v11 == v14)
        {
          v24 = *(v10 + 56);

          v24(v23, a2);
        }

        else
        {
          v25 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0x7FFFFFFE)
          {
            *(v25 + 16) = 0;
            *v25 = (a2 - 0x7FFFFFFF);
            *(v25 + 8) = 0;
          }

          else
          {
            *(v25 + 8) = a2;
          }
        }
      }

      return;
    }
  }

  v20 = ~v14 + a2;
  bzero(a1, v16);
  if (v16 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v16] = v21;
      }

      else
      {
        *&a1[v16] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v16] = v21;
  }
}

uint64_t sub_24F76C3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = sub_24F924BE8();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 24);
  v35 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v34 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = AssociatedTypeWitness;
  v53 = AssociatedConformanceWitness;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v34 - v11;
  v52 = AssociatedTypeWitness;
  v53 = AssociatedConformanceWitness;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = OpaqueTypeMetadata2;
  v53 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (&v34 - v14);
  sub_24F925658();
  v42 = v13;
  v37 = sub_24F924038();
  v43 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v41 = &v34 - v18;
  v19 = sub_24F76CA98(a1);
  (*(v5 + 40))(v19 & 1, v2 + *(a1 + 36), v35, v5);
  sub_24F926608();
  v38[1](v8, AssociatedTypeWitness);
  v20 = v2 + *(a1 + 40);
  v21 = *(v20 + 8);
  LOBYTE(AssociatedTypeWitness) = *(v20 + 16);
  LOBYTE(v52) = *v20;
  LOBYTE(v5) = v52;
  v53 = v21;
  v54 = AssociatedTypeWitness;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  v38 = v15;
  sub_24F9269C8();

  (*(v36 + 8))(v12, OpaqueTypeMetadata2);
  LOBYTE(v52) = v5;
  v53 = v21;
  v54 = AssociatedTypeWitness;
  sub_24F923328();
  if (v51 == 1)
  {
    v22 = v45;
    sub_24F924BA8();
    v23 = v44;
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
    sub_24F76CF38(&qword_27F24F708, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F710);
    sub_24E602068(&qword_27F24F718, &qword_27F24F710);
    v23 = v44;
    v22 = v45;
    sub_24F92C6A8();
  }

  v52 = OpaqueTypeMetadata2;
  v53 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v38;
  v26 = v39;
  v27 = v42;
  sub_24F9266E8();
  (*(v46 + 8))(v22, v23);
  (*(v40 + 8))(v25, v27);
  v28 = sub_24F76CF38(&qword_27F2141E0, MEMORY[0x277CDE470]);
  v49 = v24;
  v50 = v28;
  v29 = v37;
  WitnessTable = swift_getWitnessTable();
  v31 = v41;
  sub_24E7896B8(v26, v29, WitnessTable);
  v32 = *(v43 + 8);
  v32(v26, v29);
  sub_24E7896B8(v31, v29, WitnessTable);
  return (v32)(v31, v29);
}

uint64_t sub_24F76CA98(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (v1 + *(a1 + 40));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v7) = v7[16];
  LOBYTE(v22) = v8;
  v23 = v9;
  v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923328();
  if (v21[23])
  {
    goto LABEL_2;
  }

  v12 = v1 + *(a1 + 44);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    if ((v13 & 1) == 0)
    {
LABEL_8:
      v15 = [objc_opt_self() standardUserDefaults];
      v16 = sub_24F92B098();
      v17 = [v15 arrayForKey_];

      if (v17)
      {
        v18 = sub_24F92B5A8();

        v19 = sub_24E9E2340(v18);

        if (v19)
        {
          v22 = 0xD000000000000012;
          v23 = 0x800000024FA7D430;
          MEMORY[0x28223BE20](v20);
          *&v21[-16] = &v22;
          v10 = sub_24E6159B8(sub_24E7FA94C, &v21[-32], v19);

          return v10 & 1;
        }
      }

      else
      {
      }

      v10 = 0;
      return v10 & 1;
    }
  }

  else
  {

    sub_24F92BDC8();
    v14 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v13, 0);
    (*(v4 + 8))(v6, v3);
    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_2:
  v10 = 1;
  return v10 & 1;
}

uint64_t sub_24F76CD70()
{
  sub_24EB23788();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F76CDB0()
{
  v0 = sub_24F9248C8();
  __swift_allocate_value_buffer(v0, qword_27F39F078);
  __swift_project_value_buffer(v0, qword_27F39F078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F720);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9248A8();
  sub_24F76CF38(&qword_27F24F728, MEMORY[0x277CDDD88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F730);
  sub_24E602068(&qword_27F24F738, &qword_27F24F730);
  return sub_24F92C6A8();
}

uint64_t sub_24F76CF38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F76CFC4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24F925658();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24F76CF38(&qword_27F2141E0, MEMORY[0x277CDE470]);
  return swift_getWitnessTable();
}

uint64_t sub_24F76D140()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21FD00);
  sub_24F924038();
  sub_24E602068(&qword_27F21FD08, &qword_27F21FD00);
  return swift_getWitnessTable();
}

uint64_t sub_24F76D2A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferButtonDesign(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F76D328(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656C797473;
    v6 = 0x726F4D6E7261656CLL;
    if (a1 != 8)
    {
      v6 = 0x7274654D65676170;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x70704165736F6C63;
    if (a1 != 5)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656D614E6E6F6369;
    v2 = 0x656C746974627573;
    v3 = 0x4173736563637573;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_24F76D494(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    if (a1 != 8)
    {
      v5 = 0x7274654D65676170;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x4174754F6E676973;
    if (a1 != 5)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656D614E6E6F6369;
    v2 = 0x656C746974627573;
    v3 = 0x4173736563637573;
    if (a1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F76D600(void *a1)
{
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F958);
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v144 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0);
  MEMORY[0x28223BE20](v3 - 8);
  v151 = &v144 - v4;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F960);
  v145 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v163 = &v144 - v5;
  v164 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v164);
  v173 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F968);
  v147 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v166 = &v144 - v7;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F970);
  v160 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v158 = &v144 - v8;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F978);
  v157 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = &v144 - v9;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F980);
  v146 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v144 - v10;
  v11 = sub_24F928818();
  v174 = *(v11 - 8);
  v175 = v11;
  MEMORY[0x28223BE20](v11);
  v172 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v171 = &v144 - v14;
  MEMORY[0x28223BE20](v15);
  v170 = &v144 - v16;
  MEMORY[0x28223BE20](v17);
  v168 = &v144 - v18;
  MEMORY[0x28223BE20](v19);
  v169 = &v144 - v20;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F988);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v148 = &v144 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F990);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v144 - v24;
  v26 = type metadata accessor for ImpedimentFlowDestination();
  MEMORY[0x28223BE20](v26);
  v28 = &v144 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F998);
  v176 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v30 = &v144 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F776344();
  v179 = v30;
  sub_24F92D128();
  sub_24F3D42E8(v177, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v59 = *v28;
        v170 = *(v28 + 1);
        v60 = *(v28 + 3);
        v173 = *(v28 + 2);
        v169 = v60;
        v172 = *(v28 + 4);
        v61 = *(v28 + 11);
        v167 = *(v28 + 10);
        v171 = v61;
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C8) + 112);
        v63 = *(v28 + 56);
        v185 = *(v28 + 40);
        v186 = v63;
        v187 = *(v28 + 9);
        v64 = v174;
        v65 = v175;
        v66 = v168;
        (*(v174 + 32))(v168, &v28[v62], v175);
        LOBYTE(v182) = 3;
        sub_24F77653C();
        v67 = v155;
        v68 = v179;
        v69 = v180;
        sub_24F92CC98();
        v177 = v59;
        *&v182 = v59;
        LOBYTE(v188) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        sub_24E61B71C(&qword_27F2137A0);
        v70 = v156;
        v71 = v178;
        sub_24F92CD48();
        if (!v71)
        {

          LOBYTE(v182) = 1;
          sub_24F92CD08();

          LOBYTE(v182) = 2;
          sub_24F92CD08();
          v133 = v168;

          LOBYTE(v182) = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
          sub_24E602068(&qword_27F218310, &qword_27F2169E8);
          sub_24F92CD48();
          v134 = v175;
          LOBYTE(v182) = 4;
          sub_24F92CD08();

          LOBYTE(v182) = 5;
          sub_24F77668C(&qword_27F21F898, MEMORY[0x277D21BF8]);
          sub_24F92CD48();
          (*(v157 + 8))(v67, v70);
          (*(v174 + 8))(v133, v134);
LABEL_33:
          sub_24E601704(&v185, &qword_27F2169E8);
          return (*(v176 + 8))(v179, v180);
        }

        (*(v157 + 8))(v67, v70);
        (*(v64 + 8))(v66, v65);
        sub_24E601704(&v185, &qword_27F2169E8);
        (*(v176 + 8))(v68, v69);
      }

      else
      {
        v115 = *v28;
        v169 = *(v28 + 1);
        v116 = *(v28 + 2);
        v172 = *(v28 + 3);
        v173 = v116;
        v117 = *(v28 + 10);
        v168 = *(v28 + 9);
        v171 = v117;
        v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D0) + 112);
        v119 = *(v28 + 3);
        v185 = *(v28 + 2);
        v186 = v119;
        v187 = *(v28 + 8);
        v121 = v174;
        v120 = v175;
        v122 = v170;
        (*(v174 + 32))(v170, &v28[v118], v175);
        LOBYTE(v182) = 4;
        sub_24F7764E8();
        v123 = v158;
        v124 = v179;
        v125 = v180;
        sub_24F92CC98();
        v177 = v115;
        *&v182 = v115;
        LOBYTE(v188) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        sub_24E61B71C(&qword_27F2137A0);
        v126 = v159;
        v127 = v178;
        sub_24F92CD48();
        if (!v127)
        {
          v132 = v172;

          LOBYTE(v182) = 1;
          sub_24F92CD08();

          *&v182 = v132;
          LOBYTE(v188) = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B938);
          sub_24F776728(&qword_27F22B940, sub_24EC180F4);
          sub_24F92CD48();

          LOBYTE(v182) = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
          sub_24E602068(&qword_27F218310, &qword_27F2169E8);
          sub_24F92CD48();
          v135 = v179;
          v136 = v174;
          LOBYTE(v182) = 4;
          sub_24F92CD08();

          LOBYTE(v182) = 5;
          sub_24F77668C(&qword_27F21F898, MEMORY[0x277D21BF8]);
          v138 = v170;
          v139 = v175;
          sub_24F92CD48();
          (*(v160 + 8))(v123, v126);
          (*(v136 + 8))(v138, v139);
          sub_24E601704(&v185, &qword_27F2169E8);
          return (*(v176 + 8))(v135, v180);
        }

        (*(v160 + 8))(v123, v126);
        (*(v121 + 8))(v122, v120);
        sub_24E601704(&v185, &qword_27F2169E8);
        (*(v176 + 8))(v124, v125);
      }
    }

    if (!EnumCaseMultiPayload)
    {
      v33 = *v28;
      v32 = *(v28 + 1);
      v34 = *(v28 + 3);
      v177 = *(v28 + 2);
      v174 = v34;
      v175 = v32;
      v35 = *(v28 + 10);
      v36 = *(v28 + 56);
      v185 = *(v28 + 40);
      v186 = v36;
      v173 = v35;
      v187 = *(v28 + 9);
      LOBYTE(v182) = 1;
      sub_24F7765E4();
      v37 = v148;
      v38 = v179;
      v39 = v180;
      sub_24F92CC98();
      *&v182 = v33;
      LOBYTE(v188) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E61B71C(&qword_27F2137A0);
      v40 = v150;
      v41 = v178;
      sub_24F92CD48();

      if (v41)
      {

        (*(v149 + 8))(v37, v40);
        sub_24E601704(&v185, &qword_27F2169E8);
        (*(v176 + 8))(v38, v39);
      }

      else
      {
        LOBYTE(v182) = 1;
        sub_24F92CD08();

        LOBYTE(v182) = 2;
        sub_24F92CD08();

        LOBYTE(v182) = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
        sub_24E602068(&qword_27F218310, &qword_27F2169E8);
        sub_24F92CD48();
        LOBYTE(v182) = 4;
        sub_24F92CD08();

        (*(v149 + 8))(v37, v40);
        sub_24E601704(&v185, &qword_27F2169E8);
        return (*(v176 + 8))(v179, v180);
      }
    }

    v79 = *v28;
    v164 = *(v28 + 1);
    v80 = *(v28 + 3);
    v172 = *(v28 + 2);
    v163 = v80;
    v170 = *(v28 + 4);
    v81 = *(v28 + 11);
    v162 = *(v28 + 10);
    v168 = v81;
    v82 = *(v28 + 18);
    v161 = *(v28 + 17);
    v166 = v82;
    v83 = *(v28 + 20);
    v160 = *(v28 + 19);
    v177 = v83;
    v84 = *(v28 + 22);
    v159 = *(v28 + 21);
    v173 = v84;
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C0) + 176);
    v86 = *(v28 + 56);
    v185 = *(v28 + 40);
    v186 = v86;
    v187 = *(v28 + 9);
    v87 = *(v28 + 7);
    v182 = *(v28 + 6);
    v183 = v87;
    v184 = *(v28 + 16);
    v88 = v174;
    v89 = v175;
    v90 = v169;
    (*(v174 + 32))(v169, &v28[v85], v175);
    LOBYTE(v188) = 2;
    sub_24F776590();
    v91 = v165;
    v93 = v179;
    v92 = v180;
    sub_24F92CC98();
    v171 = v79;
    v188 = v79;
    v181 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    sub_24E61B71C(&qword_27F2137A0);
    v94 = v167;
    v95 = v178;
    sub_24F92CD48();
    if (v95)
    {

      (*(v146 + 8))(v91, v94);
      (*(v88 + 8))(v90, v89);
      sub_24E601704(&v182, &qword_27F213EA8);
      sub_24E601704(&v185, &qword_27F2169E8);
      (*(v176 + 8))(v93, v92);
    }

    LOBYTE(v188) = 1;
    sub_24F92CD08();

    LOBYTE(v188) = 2;
    sub_24F92CD08();

    LOBYTE(v188) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8);
    sub_24F92CD48();
    LOBYTE(v188) = 4;
    sub_24F92CD08();

    LOBYTE(v188) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8);
    sub_24F92CD48();
    LOBYTE(v188) = 6;
    sub_24F92CD08();

    LOBYTE(v188) = 7;
    sub_24F92CD08();

    LOBYTE(v188) = 8;
    sub_24F92CD08();

    LOBYTE(v188) = 9;
    sub_24F77668C(&qword_27F21F898, MEMORY[0x277D21BF8]);
    sub_24F92CD48();
    (*(v146 + 8))(v165, v167);
    v130 = *(v174 + 8);
    v131 = &v189;
LABEL_30:
    v130(*(v131 - 32), v175);
    sub_24E601704(&v182, &qword_27F213EA8);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v72 = *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110) + 48)];
      v73 = v151;
      sub_24E6365D4(v28, v151);
      LOBYTE(v185) = 7;
      sub_24F776398();
      v74 = v152;
      v76 = v179;
      v75 = v180;
      sub_24F92CC98();
      LOBYTE(v185) = 0;
      sub_24F77668C(&qword_27F213E28, type metadata accessor for Player);
      v77 = v154;
      v78 = v178;
      sub_24F92CCF8();
      if (!v78)
      {
        *&v185 = v72;
        LOBYTE(v182) = 1;
        sub_24EBB9844();
        sub_24F92CD48();
      }

      (*(v153 + 8))(v74, v77);
      sub_24E601704(v73, &unk_27F23E1F0);
      return (*(v176 + 8))(v76, v75);
    }

    else
    {
      LOBYTE(v185) = 0;
      sub_24F776638();
      v128 = v179;
      v129 = v180;
      sub_24F92CC98();
      (*(v23 + 8))(v25, v22);
      return (*(v176 + 8))(v128, v129);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      v43 = *v28;
      v167 = *(v28 + 1);
      v44 = *(v28 + 3);
      v172 = *(v28 + 2);
      v165 = v44;
      v169 = *(v28 + 4);
      v45 = *(v28 + 11);
      v164 = *(v28 + 10);
      v168 = v45;
      v46 = *(v28 + 18);
      v163 = *(v28 + 17);
      v170 = v46;
      LODWORD(v161) = v28[152];
      v47 = *(v28 + 21);
      v160 = *(v28 + 20);
      v177 = v47;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D8) + 176);
      v49 = *(v28 + 56);
      v185 = *(v28 + 40);
      v186 = v49;
      v187 = *(v28 + 9);
      v50 = *(v28 + 7);
      v182 = *(v28 + 6);
      v183 = v50;
      v184 = *(v28 + 16);
      v52 = v174;
      v51 = v175;
      v53 = v171;
      (*(v174 + 32))(v171, &v28[v48], v175);
      LOBYTE(v188) = 5;
      sub_24F776440();
      v54 = v166;
      v56 = v179;
      v55 = v180;
      sub_24F92CC98();
      v173 = v43;
      v188 = v43;
      v181 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      sub_24E61B71C(&qword_27F2137A0);
      v57 = v162;
      v58 = v178;
      sub_24F92CD48();
      if (v58)
      {

        (*(v147 + 8))(v54, v57);
        (*(v52 + 8))(v53, v51);
        sub_24E601704(&v182, &qword_27F213EA8);
        sub_24E601704(&v185, &qword_27F2169E8);
        (*(v176 + 8))(v56, v55);
      }

      LOBYTE(v188) = 1;
      sub_24F92CD08();

      LOBYTE(v188) = 2;
      sub_24F92CD08();

      LOBYTE(v188) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
      sub_24E602068(&qword_27F218310, &qword_27F2169E8);
      sub_24F92CD48();
      LOBYTE(v188) = 4;
      sub_24F92CD08();

      LOBYTE(v188) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
      sub_24E602068(&qword_27F21BE88, &qword_27F213EA8);
      sub_24F92CD48();
      LOBYTE(v188) = 6;
      sub_24F92CCA8();

      LOBYTE(v188) = v161;
      v181 = 7;
      sub_24F7766D4();
      sub_24F92CD48();
      LOBYTE(v188) = 8;
      sub_24F92CCA8();

      LOBYTE(v188) = 9;
      sub_24F77668C(&qword_27F21F898, MEMORY[0x277D21BF8]);
      sub_24F92CD48();
      (*(v147 + 8))(v166, v162);
      v130 = *(v174 + 8);
      v131 = &v190;
      goto LABEL_30;
    }

    v96 = *(v28 + 3);
    v168 = *(v28 + 2);
    v171 = v96;
    v97 = *(v28 + 5);
    v167 = *(v28 + 4);
    v169 = v97;
    v98 = *(v28 + 7);
    v166 = *(v28 + 6);
    v170 = v98;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0E0);
    v100 = v99[24];
    v101 = &v28[v99[28]];
    v102 = &v28[v99[32]];
    v104 = *v102;
    v103 = *(v102 + 1);
    v165 = v104;
    v177 = v103;
    v105 = v99[36];
    sub_24F65A46C(&v28[v100], v173, type metadata accessor for Player);
    v106 = *(v101 + 1);
    v185 = *v101;
    v186 = v106;
    v187 = *(v101 + 4);
    v107 = v174;
    v108 = &v28[v105];
    v109 = v175;
    (*(v174 + 32))(v172, v108, v175);
    LOBYTE(v182) = 6;
    sub_24F7763EC();
    v110 = v163;
    v111 = v179;
    v112 = v180;
    sub_24F92CC98();
    LOBYTE(v182) = 0;
    v113 = v161;
    v114 = v178;
    sub_24F92CD08();

    if (v114)
    {

      (*(v145 + 8))(v110, v113);
      (*(v107 + 8))(v172, v109);
      sub_24E601704(&v185, &qword_27F2169E8);
      sub_24E71BF38(v173);
    }

    else
    {
      LOBYTE(v182) = 1;
      sub_24F92CD08();

      LOBYTE(v182) = 2;
      sub_24F92CD08();

      LOBYTE(v182) = 3;
      sub_24F92CD08();

      LOBYTE(v182) = 4;
      sub_24F77668C(&qword_27F213E28, type metadata accessor for Player);
      v137 = v173;
      sub_24F92CD48();
      LOBYTE(v182) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
      sub_24E602068(&qword_27F218310, &qword_27F2169E8);
      v140 = v163;
      sub_24F92CD48();
      LOBYTE(v182) = 6;
      sub_24F92CD08();
      v141 = v172;
      v111 = v179;
      v112 = v180;
      v142 = v174;

      LOBYTE(v182) = 7;
      sub_24F77668C(&qword_27F21F898, MEMORY[0x277D21BF8]);
      v143 = v175;
      sub_24F92CD48();
      (*(v145 + 8))(v140, v113);
      (*(v142 + 8))(v141, v143);
      sub_24E601704(&v185, &qword_27F2169E8);
      sub_24E71BF38(v137);
    }

    return (*(v176 + 8))(v111, v112);
  }
}

uint64_t sub_24F770420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8C0);
  v132 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v154 = &v121 - v3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8C8);
  v133 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v144 = &v121 - v4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8D0);
  v142 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v145 = &v121 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8D8);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v147 = &v121 - v6;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8E0);
  v141 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v153 = &v121 - v7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8E8);
  v140 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v148 = &v121 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8F0);
  v139 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v146 = &v121 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F8F8);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v152 = &v121 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F900);
  v156 = *(v11 - 8);
  v157 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v121 - v12;
  v150 = type metadata accessor for ImpedimentFlowDestination();
  MEMORY[0x28223BE20](v150);
  v129 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v126 = (&v121 - v16);
  MEMORY[0x28223BE20](v17);
  v151 = &v121 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v121 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v121 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v121 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v121 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v121 - v32;
  v34 = a1[3];
  v159 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_24F776344();
  v155 = v13;
  v35 = v158;
  sub_24F92D108();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(v159);
  }

  v36 = v152;
  v122 = v30;
  v37 = v154;
  v125 = v24;
  v38 = v153;
  v158 = v21;
  v123 = v27;
  v39 = v151;
  v124 = v33;
  v40 = v157;
  v41 = v155;
  v42 = sub_24F92CC78();
  v43 = (2 * *(v42 + 16)) | 1;
  v160 = v42;
  v161 = v42 + 32;
  v162 = 0;
  v163 = v43;
  v44 = sub_24E64344C();
  if (v44 != 8 && v162 == v163 >> 1)
  {
    if (v44 > 3u)
    {
      if (v44 > 5u)
      {
        v52 = v156;
        if (v44 != 6)
        {
          v164 = 7;
          sub_24F776398();
          sub_24F92CBA8();
          type metadata accessor for Player(0);
          v164 = 0;
          sub_24F77668C(&qword_27F213E38, type metadata accessor for Player);
          v56 = v129;
          v57 = v131;
          sub_24F92CC18();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B110);
          v164 = 1;
          sub_24EBB96D8();
          sub_24F92CC68();
          (*(v132 + 8))(v37, v57);
          (*(v52 + 8))(v41, v157);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v124;
          sub_24F65A46C(v56, v124, type metadata accessor for ImpedimentFlowDestination);
          v45 = v149;
          goto LABEL_8;
        }

        v164 = 6;
        sub_24F7763EC();
        sub_24F92CBA8();
        v164 = 0;
        v55 = sub_24F92CC28();
        v59 = v126;
        *v126 = v55;
        v59[1] = v60;
        v164 = 1;
        v59[2] = sub_24F92CC28();
        v59[3] = v66;
        v158 = v66;
        v164 = 2;
        v59[4] = sub_24F92CC28();
        v59[5] = v73;
        v154 = v73;
        v164 = 3;
        v78 = sub_24F92CC28();
        v80 = v79;
        v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0E0);
        v153 = v80;
        v81 = *(v152 + 24);
        v59[6] = v78;
        v59[7] = v80;
        type metadata accessor for Player(0);
        v164 = 4;
        sub_24F77668C(&qword_27F213E38, type metadata accessor for Player);
        v151 = v81;
        sub_24F92CC68();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
        v164 = 5;
        sub_24E602068(&qword_27F243830, &qword_27F2169E8);
        sub_24F92CC68();
        v164 = 6;
        v98 = sub_24F92CC28();
        v102 = (v126 + *(v152 + 32));
        *v102 = v98;
        v102[1] = v103;
        sub_24F928818();
        v164 = 7;
        sub_24F77668C(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
        sub_24F92CC68();
        (*(v133 + 8))(v144, v138);
        (*(v156 + 8))(v41, v157);
        swift_unknownObjectRelease();
        v96 = v126;
LABEL_22:
        swift_storeEnumTagMultiPayload();
        v46 = v124;
        sub_24F65A46C(v96, v124, type metadata accessor for ImpedimentFlowDestination);
        v45 = v149;
        goto LABEL_8;
      }

      if (v44 == 4)
      {
        v164 = 4;
        sub_24F7764E8();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        v164 = 0;
        sub_24E61B71C(&qword_27F216420);
        sub_24F92CC68();
        v164 = 1;
        v58 = sub_24F92CC28();
        v62 = v158;
        *(v158 + 1) = v58;
        *(v62 + 2) = v63;
        v154 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B938);
        v164 = 2;
        sub_24F776728(&qword_27F22B968, sub_24EC18A34);
        sub_24F92CC68();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
        v164 = 3;
        sub_24E602068(&qword_27F243830, &qword_27F2169E8);
        sub_24F92CC68();
        v164 = 4;
        v84 = sub_24F92CC28();
        v86 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D0);
        v87 = v158;
        *(v158 + 9) = v84;
        *(v87 + 10) = v86;
        sub_24F928818();
        v164 = 5;
        sub_24F77668C(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
        sub_24F92CC68();
        (*(v134 + 8))(v147, v135);
        (*(v156 + 8))(v155, v157);
        swift_unknownObjectRelease();
        v96 = v158;
        goto LABEL_22;
      }

      v164 = 5;
      sub_24F776440();
      sub_24F92CBA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      v164 = 0;
      sub_24E61B71C(&qword_27F216420);
      sub_24F92CC68();
      v164 = 1;
      v39[1] = sub_24F92CC28();
      v39[2] = v67;
      v158 = v67;
      v164 = 2;
      v39[3] = sub_24F92CC28();
      v39[4] = v74;
      v154 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
      v164 = 3;
      sub_24E602068(&qword_27F243830, &qword_27F2169E8);
      sub_24F92CC68();
      v164 = 4;
      v82 = sub_24F92CC28();
      v153 = v83;
      v39[10] = v82;
      v39[11] = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
      v164 = 5;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
      sub_24F92CC68();
      v164 = 6;
      v39[17] = sub_24F92CBC8();
      v39[18] = v104;
      v164 = 7;
      sub_24F776494();
      sub_24F92CC68();
      v164 = 8;
      v108 = sub_24F92CBC8();
      v152 = 0;
      v115 = v108;
      v117 = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0D8);
      v39[20] = v115;
      v39[21] = v117;
      sub_24F928818();
      v164 = 9;
      sub_24F77668C(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
      v118 = v152;
      sub_24F92CC68();
      v152 = v118;
      if (v118)
      {
        (*(v142 + 8))(v145, v137);
        (*(v156 + 8))(v155, v157);
        swift_unknownObjectRelease();

        sub_24E601704((v39 + 12), &qword_27F213EA8);

        sub_24E601704((v39 + 5), &qword_27F2169E8);

        goto LABEL_27;
      }

      (*(v142 + 8))(v145, v137);
      (*(v156 + 8))(v155, v157);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v120 = v39;
    }

    else
    {
      if (v44 <= 1u)
      {
        v45 = v149;
        if (!v44)
        {
          v164 = 0;
          sub_24F776638();
          sub_24F92CBA8();
          (*(v127 + 8))(v36, v128);
          (*(v156 + 8))(v41, v40);
          swift_unknownObjectRelease();
          v46 = v124;
          swift_storeEnumTagMultiPayload();
LABEL_8:
          sub_24F65A46C(v46, v45, type metadata accessor for ImpedimentFlowDestination);
          return __swift_destroy_boxed_opaque_existential_1(v159);
        }

        v164 = 1;
        sub_24F7765E4();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        v164 = 0;
        sub_24E61B71C(&qword_27F216420);
        v53 = v122;
        v54 = v130;
        sub_24F92CC68();
        v164 = 1;
        v53[1] = sub_24F92CC28();
        v53[2] = v65;
        v164 = 2;
        v53[3] = sub_24F92CC28();
        v53[4] = v71;
        v158 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
        v164 = 3;
        sub_24E602068(&qword_27F243830, &qword_27F2169E8);
        v72 = v146;
        sub_24F92CC68();
        v164 = 4;
        v89 = sub_24F92CC28();
        v91 = v90;
        (*(v139 + 8))(v72, v54);
        (*(v156 + 8))(v41, v40);
        swift_unknownObjectRelease();
        v96 = v122;
        v122[10] = v89;
        *(v96 + 88) = v91;
        goto LABEL_22;
      }

      if (v44 != 2)
      {
        v164 = 3;
        sub_24F77653C();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
        v164 = 0;
        sub_24E61B71C(&qword_27F216420);
        sub_24F92CC68();
        v164 = 1;
        v61 = sub_24F92CC28();
        v68 = v125;
        v125[1] = v61;
        v68[2] = v69;
        v158 = v69;
        v164 = 2;
        v68[3] = sub_24F92CC28();
        v68[4] = v75;
        v154 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
        v164 = 3;
        sub_24E602068(&qword_27F243830, &qword_27F2169E8);
        sub_24F92CC68();
        v164 = 4;
        v92 = sub_24F92CC28();
        v94 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C8);
        v95 = v125;
        v125[10] = v92;
        v95[11] = v94;
        sub_24F928818();
        v164 = 5;
        sub_24F77668C(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
        sub_24F92CC68();
        (*(v141 + 8))(v38, v143);
        (*(v156 + 8))(v155, v40);
        swift_unknownObjectRelease();
        v96 = v125;
        goto LABEL_22;
      }

      v164 = 2;
      sub_24F776590();
      sub_24F92CBA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      v164 = 0;
      sub_24E61B71C(&qword_27F216420);
      v51 = v123;
      sub_24F92CC68();
      v164 = 1;
      v51[1] = sub_24F92CC28();
      v51[2] = v64;
      v158 = v64;
      v164 = 2;
      v51[3] = sub_24F92CC28();
      v51[4] = v70;
      v154 = v70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8);
      v164 = 3;
      sub_24E602068(&qword_27F243830, &qword_27F2169E8);
      sub_24F92CC68();
      v164 = 4;
      v76 = sub_24F92CC28();
      v153 = v77;
      v88 = v123;
      v123[10] = v76;
      v88[11] = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8);
      v164 = 5;
      sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8);
      sub_24F92CC68();
      v164 = 6;
      v97 = sub_24F92CC28();
      v99 = v123;
      v123[17] = v97;
      v99[18] = v100;
      v164 = 7;
      v101 = sub_24F92CC28();
      v105 = v123;
      v123[19] = v101;
      v105[20] = v106;
      v164 = 8;
      v107 = sub_24F92CC28();
      v152 = 0;
      v109 = v107;
      v111 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B0C0);
      v112 = v123;
      v123[21] = v109;
      v112[22] = v111;
      sub_24F928818();
      v164 = 9;
      sub_24F77668C(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
      v113 = v152;
      sub_24F92CC68();
      v152 = v113;
      if (v113)
      {
        (*(v140 + 8))(v148, v136);
        (*(v156 + 8))(v155, v40);

        swift_unknownObjectRelease();
        v114 = v123;
        sub_24E601704((v123 + 12), &qword_27F213EA8);

        sub_24E601704((v114 + 5), &qword_27F2169E8);

LABEL_27:

        return __swift_destroy_boxed_opaque_existential_1(v159);
      }

      (*(v140 + 8))(v148, v136);
      (*(v156 + 8))(v155, v40);
      swift_unknownObjectRelease();
      v119 = v123;
      swift_storeEnumTagMultiPayload();
      v120 = v119;
    }

    v46 = v124;
    sub_24F65A46C(v120, v124, type metadata accessor for ImpedimentFlowDestination);
    v45 = v149;
    goto LABEL_8;
  }

  v48 = sub_24F92C918();
  swift_allocError();
  v50 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
  *v50 = v150;
  sub_24F92CBB8();
  sub_24F92C908();
  (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
  swift_willThrow();
  (*(v156 + 8))(v41, v40);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v159);
}

unint64_t sub_24F7733B0()
{
  v1 = *v0;
  v2 = 0x7472617473;
  v3 = 0xD000000000000019;
  if (v1 != 6)
  {
    v3 = 1701736302;
  }

  v4 = 0x4D656D6F636C6577;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x6F4D6E496E676973;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24F7734C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F775058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7734E8(uint64_t a1)
{
  v2 = sub_24F776344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773524(uint64_t a1)
{
  v2 = sub_24F776344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F773560()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24F77359C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA55B30 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F77367C(uint64_t a1)
{
  v2 = sub_24F776398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7736B8(uint64_t a1)
{
  v2 = sub_24F776398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7736FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F775300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F773724(uint64_t a1)
{
  v2 = sub_24F776440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773760(uint64_t a1)
{
  v2 = sub_24F776440();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F77379C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0xD000000000000012;
  if (v1 != 6)
  {
    v3 = 0x7274654D65676170;
  }

  v4 = 0x726579616C70;
  if (v1 != 4)
  {
    v4 = 0x4173736563637573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974627573;
  }

  if (*v0 > 1u)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_24F7738B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F775650(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F7738DC(uint64_t a1)
{
  v2 = sub_24F7763EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773918(uint64_t a1)
{
  v2 = sub_24F7763EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F773954()
{
  v1 = *v0;
  v2 = 0x656D614E6E6F6369;
  v3 = 0x656C746974627573;
  v4 = 0x4173736563637573;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_24F773A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F7758F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F773A28(uint64_t a1)
{
  v2 = sub_24F7765E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773A64(uint64_t a1)
{
  v2 = sub_24F7765E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F773AA0()
{
  v1 = *v0;
  v2 = 0x656D614E6E6F6369;
  v3 = 0x4173736563637573;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x7274654D65676170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_24F773B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F775AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F773B9C(uint64_t a1)
{
  v2 = sub_24F77653C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773BD8(uint64_t a1)
{
  v2 = sub_24F77653C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F773C14(uint64_t a1)
{
  v2 = sub_24F776638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773C50(uint64_t a1)
{
  v2 = sub_24F776638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F773C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F775CCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F773CBC(uint64_t a1)
{
  v2 = sub_24F776590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773CF8(uint64_t a1)
{
  v2 = sub_24F776590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F773D34()
{
  v1 = *v0;
  v2 = 0x656D614E6E6F6369;
  v3 = 0x4173736563637573;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x7274654D65676170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x7374656C6C7562;
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

uint64_t sub_24F773E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F776010(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F773E30(uint64_t a1)
{
  v2 = sub_24F7764E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773E6C(uint64_t a1)
{
  v2 = sub_24F7764E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F773ED8()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x7470697263736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D496D6574737973;
  }
}

uint64_t sub_24F773F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F776224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F773F6C(uint64_t a1)
{
  v2 = sub_24F7741A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F773FA8(uint64_t a1)
{
  v2 = sub_24F7741A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Bullet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F850);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7741A8();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD08();
  v12 = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F7741A8()
{
  result = qword_27F24F858;
  if (!qword_27F24F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F858);
  }

  return result;
}

uint64_t Bullet.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24F860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7741A8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ImpedimentFlowDestination()
{
  result = qword_27F24F868;
  if (!qword_27F24F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F774510()
{
  sub_24F7745E8(319);
  if (v0 <= 0x3F)
  {
    sub_24F774734(319);
    if (v1 <= 0x3F)
    {
      sub_24F7748F4(319);
      if (v2 <= 0x3F)
      {
        sub_24F774A60(319);
        if (v3 <= 0x3F)
        {
          sub_24F774BE0(319);
          if (v4 <= 0x3F)
          {
            sub_24F774DC8(319);
            if (v5 <= 0x3F)
            {
              sub_24F658710();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F7745E8(uint64_t a1)
{
  if (!qword_27F24F878)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F24F878);
    }
  }
}

void sub_24F774734(uint64_t a1)
{
  if (!qword_27F24F880)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213EA8);
    sub_24F928818();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F24F880);
    }
  }
}

void sub_24F7748F4(uint64_t a1)
{
  if (!qword_27F24F888)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    sub_24F928818();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F24F888);
    }
  }
}

void sub_24F774A60(uint64_t a1)
{
  if (!qword_27F24F890)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B938);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    sub_24F928818();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F24F890);
    }
  }
}

void sub_24F774BE0(uint64_t a1)
{
  if (!qword_27F24F898)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2285F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740);
    sub_24F928818();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F24F898);
    }
  }
}

void sub_24F774DC8(uint64_t a1)
{
  if (!qword_27F24F8A0)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for Player(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2169E8);
    sub_24F928818();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F24F8A0);
    }
  }
}

unint64_t sub_24F774F54()
{
  result = qword_27F24F8A8;
  if (!qword_27F24F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F8A8);
  }

  return result;
}

unint64_t sub_24F774FAC()
{
  result = qword_27F24F8B0;
  if (!qword_27F24F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F8B0);
  }

  return result;
}

unint64_t sub_24F775004()
{
  result = qword_27F24F8B8;
  if (!qword_27F24F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F8B8);
  }

  return result;
}

uint64_t sub_24F775058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA7D6C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA7D6E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4D6E496E676973 && a2 == 0xED0000736572746CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D656D6F636C6577 && a2 == 0xEE00736572746C6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA7D700 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA7D720 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F775300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E6F6369 && a2 == 0xE900000000000073;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x70704165736F6C63 && a2 == 0xEE006E6F69746341 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA7D780 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F4D6E7261656CLL && a2 == 0xEC0000004C525565 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24F775650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA7D740 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA7D760 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F7758F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E6F6369 && a2 == 0xE900000000000073;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F775AB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E6F6369 && a2 == 0xE900000000000073;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F775CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E6F6369 && a2 == 0xE900000000000073;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4174754F6E676973 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA7D7A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA7D7C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA7D7E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_24F776010(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6E6F6369 && a2 == 0xE900000000000073;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374656C6C7562 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F776224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24F776344()
{
  result = qword_27F24F908;
  if (!qword_27F24F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F908);
  }

  return result;
}

unint64_t sub_24F776398()
{
  result = qword_27F24F910;
  if (!qword_27F24F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F910);
  }

  return result;
}

unint64_t sub_24F7763EC()
{
  result = qword_27F24F918;
  if (!qword_27F24F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F918);
  }

  return result;
}

unint64_t sub_24F776440()
{
  result = qword_27F24F920;
  if (!qword_27F24F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F920);
  }

  return result;
}

unint64_t sub_24F776494()
{
  result = qword_27F24F928;
  if (!qword_27F24F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F928);
  }

  return result;
}

unint64_t sub_24F7764E8()
{
  result = qword_27F24F930;
  if (!qword_27F24F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F930);
  }

  return result;
}

unint64_t sub_24F77653C()
{
  result = qword_27F24F938;
  if (!qword_27F24F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F938);
  }

  return result;
}

unint64_t sub_24F776590()
{
  result = qword_27F24F940;
  if (!qword_27F24F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F940);
  }

  return result;
}

unint64_t sub_24F7765E4()
{
  result = qword_27F24F948;
  if (!qword_27F24F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F948);
  }

  return result;
}

unint64_t sub_24F776638()
{
  result = qword_27F24F950;
  if (!qword_27F24F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F950);
  }

  return result;
}

uint64_t sub_24F77668C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F7766D4()
{
  result = qword_27F24F9A0;
  if (!qword_27F24F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F9A0);
  }

  return result;
}

uint64_t sub_24F776728(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B938);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F776834()
{
  result = qword_27F24F9A8;
  if (!qword_27F24F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F9A8);
  }

  return result;
}

unint64_t sub_24F77688C()
{
  result = qword_27F24F9B0;
  if (!qword_27F24F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F9B0);
  }

  return result;
}

unint64_t sub_24F7768E4()
{
  result = qword_27F24F9B8;
  if (!qword_27F24F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24F9B8);
  }

  return result;
}