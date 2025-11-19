uint64_t sub_224BC670C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224BC6774(uint64_t a1)
{
  v2 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BC67D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_224BC6838()
{
  result = qword_281350B68;
  if (!qword_281350B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4040, &qword_224DB8D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350B68);
  }

  return result;
}

uint64_t sub_224BC689C()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F4BA0);
  __swift_project_value_buffer(v0, qword_27D6F4BA0);
  return sub_224DAB238();
}

void sub_224BC692C(void *a1)
{
  [*v1 setDispatchQueue_];
}

void sub_224BC69C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_224A39F40;
    v10[3] = a5;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v8 *a6];
  _Block_release(v9);
}

void sub_224BC6A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *v6;
  if (a1)
  {
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_224A3837C;
    v10[3] = a5;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [v8 *a6];
  _Block_release(v9);
}

void sub_224BC6B44(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_224BC6BF0;
    v5[3] = &block_descriptor_38;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setPersonChangedHandler_];
  _Block_release(v4);
}

void sub_224BC6BF0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_224BC6C64(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *v2;
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_224BC6D2C;
    v5[3] = &block_descriptor_35_0;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
    v3 = *v2;
  }

  [v3 activateWithCompletion_];
  _Block_release(v4);
}

void sub_224BC6D2C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_224BC6FDC@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D441C8]) init];
  result = sub_224A3B79C(0, &qword_27D6F4BE8, 0x277D441C8);
  a1[3] = result;
  a1[4] = &off_28382DFC8;
  *a1 = v2;
  return result;
}

uint64_t sub_224BC7098(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v55 = sub_224DAB7B8();
  v10 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v57 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_224DAB898();
  v58 = *(v59 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_224DA9878();
  v60 = *(v61 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HandlerItem();
  v62 = *(v16 - 8);
  v17 = *(v62 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  swift_beginAccess();
  v24 = a1[5];

  v63 = a2;
  LOBYTE(a2) = sub_224A3A53C(a2, a3, v24);

  if ((a2 & 1) == 0)
  {
    sub_224DA98F8();
    v30 = &v23[*(v16 + 20)];
    *v30 = a4;
    *(v30 + 1) = a5;
    swift_beginAccess();
    v31 = a1[4];
    v32 = *(v31 + 16);

    v33 = MEMORY[0x277D84F90];
    if (v32)
    {

      v34 = sub_224A3A40C(v63, a3);
      if (v35)
      {
        v33 = *(*(v31 + 56) + 8 * v34);
      }
    }

    sub_224BCA114(v23, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_224AD97CC(0, v33[2] + 1, 1, v33);
    }

    v38 = v33[2];
    v37 = v33[3];
    if (v38 >= v37 >> 1)
    {
      v33 = sub_224AD97CC(v37 > 1, v38 + 1, 1, v33);
    }

    v33[2] = v38 + 1;
    v39 = *(v62 + 80);
    sub_224B832A4(v21, v33 + ((v39 + 32) & ~v39) + *(v62 + 72) * v38);
    swift_beginAccess();

    v40 = a1[4];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v65 = a1[4];
    a1[4] = 0x8000000000000000;
    v42 = v63;
    sub_224B215CC(v33, v63, a3, v41);

    a1[4] = v65;
    swift_endAccess();
    sub_224DA97A8();
    v43 = a1[6];
    result = sub_224DA97D8();
    v45 = ceil(v44);
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v45 > -9.22337204e18)
    {
      if (v45 < 9.22337204e18)
      {
        v62 = v43;
        v46 = v56;
        sub_224DAB888();
        v47 = v53;
        v48 = v54;
        sub_224BCA114(v53, v54);
        v49 = swift_allocObject();
        v49[2] = a1;
        v49[3] = v42;
        v49[4] = a3;
        sub_224B832A4(v48, v49 + ((v39 + 40) & ~v39));
        v68 = sub_224BCA178;
        v69 = v49;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224A39F40;
        v67 = &block_descriptor_23;
        _Block_copy(aBlock);
        v65 = MEMORY[0x277D84F90];
        sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        sub_224DAF788();
        v50 = sub_224DAB8B8();
        v51 = *(v50 + 48);
        v52 = *(v50 + 52);
        swift_allocObject();
        sub_224DAB8A8();

        sub_224DAF328();

        (*(v58 + 8))(v46, v59);
        swift_beginAccess();
        sub_224BCA1E0((a1 + 7), aBlock);
        if (v67)
        {
          (*(v60 + 8))(v64, v61);
          sub_224BCA250(v47);
          return sub_224A3311C(aBlock, &qword_27D6F4BC8, &qword_224DBA048);
        }

        else
        {
          sub_224A3311C(aBlock, &qword_27D6F4BC8, &qword_224DBA048);
          sub_224BC825C();
          (*(v60 + 8))(v64, v61);
          return sub_224BCA250(v47);
        }
      }

LABEL_23:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v25 = sub_224DAB258();
  __swift_project_value_buffer(v25, qword_27D6F4BA0);
  v26 = sub_224DAB228();
  v27 = sub_224DAF2A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_224A2F000, v26, v27, "Device was already discovered.", v28, 2u);
    MEMORY[0x22AA5EED0](v28, -1, -1);
  }

  return a4(1);
}

void sub_224BC78A8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BE0, qword_224DBA060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for HandlerItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a1 + 32);
  if (*(v17 + 16))
  {
    v18 = *(a1 + 32);

    v19 = sub_224A3A40C(a2, a3);
    if ((v20 & 1) == 0)
    {

      return;
    }

    v21 = *(v17 + 56);
    v67 = a2;
    v22 = *(v21 + 8 * v19);

    v66 = v13;
    MEMORY[0x28223BE20](v23);
    *(&v59 - 2) = a4;
    v24 = sub_224BC7E84(sub_224BCA684, (&v59 - 4), v22);
    v26 = v25;
    v27 = v67;

    if (v26)
    {
      return;
    }

    if (qword_27D6F2CC0 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_27D6F4BA0);
    sub_224BCA114(a4, v16);

    v29 = sub_224DAB228();
    v30 = sub_224DAF2A8();

    v31 = os_log_type_enabled(v29, v30);
    v64 = v24;
    v65 = a4;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v69[0] = v63;
      *v32 = 136446723;
      v62 = v29;
      sub_224DA9898();
      v33 = sub_224A3D19C(8);
      v60 = v34;
      v36 = v35;
      v61 = v30;
      v38 = v37;

      v39 = v33;
      v27 = v67;
      v40 = MEMORY[0x22AA5D1C0](v39, v60, v36, v38);
      v42 = v41;

      sub_224BCA250(v16);
      v43 = sub_224A33F74(v40, v42, v69);

      *(v32 + 4) = v43;
      *(v32 + 12) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 22) = 2081;
      *(v32 + 24) = sub_224A33F74(v27, a3, v69);
      v44 = v62;
      _os_log_impl(&dword_224A2F000, v62, v61, "[%{public}s] Timed out waiting for discovery of %{private,mask.hash}s; assuming not present.", v32, 0x20u);
      v45 = v63;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v45, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    else
    {

      sub_224BCA250(v16);
    }

    v46 = sub_224BC7048();
    v47 = sub_224BC7F70(v68, v27, a3);
    if (*v48)
    {
      sub_224B82D20(v64, v11);
      (v47)(v68, 0);
      (v46)(v69, 0);
      v49 = 0;
    }

    else
    {
      (v47)(v68, 0);
      (v46)(v69, 0);
      v49 = 1;
    }

    (*(v66 + 56))(v11, v49, 1, v12);
    sub_224A3311C(v11, &qword_27D6F4BE0, qword_224DBA060);
    v50 = *(a1 + 32);
    v51 = v65;
    if (!*(v50 + 16))
    {
      goto LABEL_18;
    }

    v52 = *(a1 + 32);

    v53 = sub_224A3A40C(v27, a3);
    if (v54)
    {
      v55 = *(*(v50 + 56) + 8 * v53);

      v56 = *(v55 + 16);

      if (v56)
      {
LABEL_18:
        v57 = v51 + *(v12 + 20);
        v58 = *(v57 + 8);
        (*v57)(0);
        sub_224BC7FF8();
        return;
      }

      swift_beginAccess();
      sub_224B0D854(v27, a3);
      swift_endAccess();
    }

    goto LABEL_18;
  }
}

uint64_t sub_224BC7E00(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 16)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_224BC7E84(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for HandlerItem() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void (*sub_224BC7F70(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_224BCA3A4(v6, a2, a3);
  return sub_224BCA9EC;
}

void sub_224BC7FF8()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = *(v1 + 48);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();
  if (!*(*(v1 + 32) + 16))
  {
    swift_beginAccess();
    sub_224BCA1E0(v1 + 56, v15);
    v13 = v16;
    sub_224A3311C(v15, &qword_27D6F4BC8, &qword_224DBA048);
    if (v13)
    {
      sub_224BC9D7C();
      return;
    }
  }

  if (qword_27D6F2CC0 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v9 = sub_224DAB258();
  __swift_project_value_buffer(v9, qword_27D6F4BA0);

  v10 = sub_224DAB228();
  v11 = sub_224DAF2A8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    *(v12 + 4) = *(*(v1 + 32) + 16);

    _os_log_impl(&dword_224A2F000, v10, v11, "Not invalidating People client due to deviceSubscriptions = %{public}ld", v12, 0xCu);
    MEMORY[0x22AA5EED0](v12, -1, -1);
  }

  else
  {
  }
}

void sub_224BC825C()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[6];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  swift_beginAccess();
  sub_224BCA1E0((v1 + 7), v58);
  v10 = v59;
  sub_224A3311C(v58, &qword_27D6F4BC8, &qword_224DBA048);
  if (v10)
  {
    if (qword_27D6F2CC0 == -1)
    {
LABEL_4:
      v11 = sub_224DAB258();
      __swift_project_value_buffer(v11, qword_27D6F4BA0);
      v12 = sub_224DAB228();
      v13 = sub_224DAF288();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_224A2F000, v12, v13, "Attempted to start People client, but we've already initialized", v14, 2u);
        MEMORY[0x22AA5EED0](v14, -1, -1);
      }

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v15 = sub_224DAB258();
  __swift_project_value_buffer(v15, qword_27D6F4BA0);
  v16 = sub_224DAB228();
  v17 = sub_224DAF2A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_224A2F000, v16, v17, "Starting up RPPeopleDiscovery...", v18, 2u);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  v20 = v1[2];
  v19 = v1[3];

  v20(v58, v21);

  swift_beginAccess();
  sub_224BCA2AC(v58, (v1 + 7));
  swift_endAccess();
  sub_224BCA1E0((v1 + 7), &v56);
  if (v57)
  {
    sub_224A36F98(&v56, v58);
    v22 = v59;
    v23 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    (*(v23 + 16))(1, v22, v23);
    v24 = v59;
    v25 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    (*(v25 + 40))(v8, v24, v25);
    v26 = v59;
    v27 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    (*(v27 + 64))(0xFFFFFFFFLL, v26, v27);
    v28 = v59;
    v29 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    (*(v29 + 88))(4, v28, v29);
    v30 = v59;
    v31 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v32 = *(v31 + 136);

    v32(sub_224BCA31C, v1, v30, v31);
    v33 = v59;
    v34 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v35 = *(v34 + 112);

    v35(sub_224BCA354, v1, v33, v34);
    v36 = v59;
    v37 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v38 = *(v37 + 184);

    v38(sub_224BCA38C, v1, v36, v37);
    v39 = v59;
    v40 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v41 = *(v40 + 160);

    v41(sub_224BCA394, v1, v39, v40);
    v42 = v59;
    v43 = v60;
    __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v44 = *(v43 + 208);

    v44(sub_224BCA39C, v1, v42, v43);
    v45 = v59;
    v46 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v46 + 224))(sub_224BC9B2C, 0, v45, v46);
    sub_224A3317C(v58, &v56);
    swift_beginAccess();
    sub_224BCA2AC(&v56, (v1 + 7));
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_224A3311C(&v56, &qword_27D6F4BC8, &qword_224DBA048);

    v47 = sub_224DAB228();
    v48 = sub_224DAF288();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v56 = v50;
      *v49 = 136446210;
      v51 = v1[3];
      v58[0] = v1[2];
      v58[1] = v51;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BD0, &unk_224DBA050);
      v52 = sub_224DAEE28();
      v54 = sub_224A33F74(v52, v53, &v56);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_224A2F000, v47, v48, "Failed to initialize people discovery client %{public}s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x22AA5EED0](v50, -1, -1);
      MEMORY[0x22AA5EED0](v49, -1, -1);
    }
  }
}

uint64_t sub_224BC8980()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_224A3311C(v0 + 56, &qword_27D6F4BC8, &qword_224DBA048);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandlerItem()
{
  result = qword_27D6F4BB8;
  if (!qword_27D6F4BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_224BC8A80()
{
  result = sub_224DA9908();
  if (v1 <= 0x3F)
  {
    result = sub_224BC8B04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_224BC8B04()
{
  result = qword_2813507B8;
  if (!qword_2813507B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2813507B8);
  }

  return result;
}

uint64_t sub_224BC8B54(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HandlerItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v74 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = &v63 - v9;
  v10 = sub_224DAB8C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[6];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_224DAB8F8();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    goto LABEL_32;
  }

  swift_beginAccess();
  v17 = v2[5];
  v2[5] = MEMORY[0x277D84FA0];

  v18 = [a1 devices];
  sub_224A3B79C(0, &qword_27D6F4BD8, 0x277D44178);
  v19 = sub_224DAF008();

  v63 = v19;
  if (v19 >> 62)
  {
LABEL_33:
    v20 = sub_224DAF838();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v73;
  v21 = v74;
  swift_beginAccess();
  if (v20)
  {
    v24 = 0;
    v69 = v63 & 0xC000000000000001;
    v68 = v63 & 0xFFFFFFFFFFFFFF8;
    v67 = v63 + 32;
    *&v23 = 136446723;
    v71 = v23;
    v65 = v2;
    v72 = v4;
    v64 = v20;
    while (1)
    {
      if (v69)
      {
        v26 = MEMORY[0x22AA5DCC0](v24, v63);
      }

      else
      {
        if (v24 >= *(v68 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v67 + 8 * v24);
      }

      v25 = v26;
      if (__OFADD__(v24++, 1))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v28 = [v26 idsDeviceIdentifier];
      if (v28)
      {
        break;
      }

LABEL_8:

      if (v24 == v20)
      {
      }
    }

    v70 = v25;
    v29 = v28;
    v30 = sub_224DAEE18();
    v32 = v31;

    v33 = v32;
    swift_beginAccess();

    sub_224ADAF60(&v81, v30, v32);
    swift_endAccess();

    v34 = v2[4];
    if (*(v34 + 16))
    {
      v35 = v2[4];

      v36 = sub_224A3A40C(v30, v33);
      if (v37)
      {
        v66 = v24;
        v2 = *(*(v34 + 56) + 8 * v36);

        v78 = v2[2];
        if (v78)
        {
          v38 = 0;
          v75 = v33;
          v79 = v30;
          while (v38 < v2[2])
          {
            sub_224BCA114(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v38, v22);
            if (qword_27D6F2CC0 != -1)
            {
              swift_once();
            }

            v41 = sub_224DAB258();
            __swift_project_value_buffer(v41, qword_27D6F4BA0);
            sub_224BCA114(v22, v21);

            v42 = sub_224DAB228();
            v43 = sub_224DAF2A8();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v80[0] = v77;
              *v44 = v71;
              v76 = v43;
              sub_224DA9898();
              v45 = v5;
              sub_224DAEE98();
              v46 = sub_224DAEF28();
              v48 = v47;
              v49 = v2;
              v51 = v50;
              v53 = v52;

              v54 = v48;
              v5 = v45;
              v21 = v74;
              v55 = v51;
              v2 = v49;
              v56 = MEMORY[0x22AA5D1C0](v46, v54, v55, v53);
              v58 = v57;

              sub_224BCA250(v21);
              v59 = sub_224A33F74(v56, v58, v80);
              v22 = v73;

              *(v44 + 4) = v59;
              v33 = v75;
              *(v44 + 12) = 2160;
              *(v44 + 14) = 1752392040;
              *(v44 + 22) = 2081;
              *(v44 + 24) = sub_224A33F74(v79, v33, v80);
              _os_log_impl(&dword_224A2F000, v42, v76, "[%{public}s] Found %{private,mask.hash}s.", v44, 0x20u);
              v60 = v77;
              swift_arrayDestroy();
              MEMORY[0x22AA5EED0](v60, -1, -1);
              v61 = v44;
              v4 = v72;
              MEMORY[0x22AA5EED0](v61, -1, -1);
            }

            else
            {

              sub_224BCA250(v21);
            }

            ++v38;
            v39 = v22 + *(v4 + 20);
            v40 = *(v39 + 8);
            (*v39)(1);
            sub_224BCA250(v22);
            v30 = v79;
            if (v78 == v38)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_26:

        v2 = v65;
        swift_beginAccess();
        sub_224B08588(0, v30, v33);
        swift_endAccess();
        v20 = v64;
        v24 = v66;
        goto LABEL_7;
      }
    }

LABEL_7:
    sub_224BC7FF8();
    v25 = v70;
    goto LABEL_8;
  }
}

void sub_224BC929C(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  v6 = sub_224DAB8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 48);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_224DAB8F8();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_27D6F4BA0);
  v14 = sub_224DAB228();
  v15 = a2();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_224A2F000, v14, v15, a3, v16, 2u);
    MEMORY[0x22AA5EED0](v16, -1, -1);
  }
}

uint64_t sub_224BC9464(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAB8C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 48);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_27D6F4BA0);
  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_224A2F000, v11, v12, "RPPeopleDiscovery lost person", v13, 2u);
    MEMORY[0x22AA5EED0](v13, -1, -1);
  }

  swift_beginAccess();
  v14 = *(a2 + 40);
  *(a2 + 40) = MEMORY[0x277D84FA0];
}

uint64_t sub_224BC9650(void *a1, uint64_t a2)
{
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a2 + 48);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_27D6F4BA0);
  v12 = a1;
  v13 = sub_224DAB228();
  v14 = sub_224DAF2A8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138477827;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_224A2F000, v13, v14, "RPPeopleDiscovery found %{private}@", v15, 0xCu);
    sub_224A3311C(v16, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v16, -1, -1);
    MEMORY[0x22AA5EED0](v15, -1, -1);
  }

  return sub_224BC8B54(v12);
}

uint64_t sub_224BC987C(void *a1, int a2, uint64_t a3)
{
  v6 = sub_224DAB8C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a3 + 48);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_224DAB8F8();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (qword_27D6F2CC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_27D6F4BA0);
  v14 = a1;
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v17 = 138478083;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2082;
    v25[1] = a2;
    type metadata accessor for RPPersonChangeFlags(0);
    v20 = v14;
    v21 = sub_224DAEE28();
    v23 = sub_224A33F74(v21, v22, &v26);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_224A2F000, v15, v16, "RPPeopleDiscovery changed %{private}@: %{public}s", v17, 0x16u);
    sub_224A3311C(v18, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x22AA5EED0](v19, -1, -1);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  return sub_224BC8B54(v14);
}

void sub_224BC9B2C(NSObject *a1)
{
  if (!a1)
  {
    if (qword_27D6F2CC0 != -1)
    {
      swift_once();
    }

    v10 = sub_224DAB258();
    __swift_project_value_buffer(v10, qword_27D6F4BA0);
    oslog = sub_224DAB228();
    v11 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_224A2F000, oslog, v11, "Successfully activated RPPeopleDiscovery", v12, 2u);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_27D6F4BA0);
  v4 = a1;
  oslog = sub_224DAB228();
  v5 = sub_224DAF288();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_224A2F000, oslog, v5, "Failed to activate RPPeopleDiscovery with error: %{public}@", v6, 0xCu);
    sub_224A3311C(v7, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v7, -1, -1);
    MEMORY[0x22AA5EED0](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void sub_224BC9D7C()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 48);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();
  v9 = *(v1 + 40);
  *(v1 + 40) = MEMORY[0x277D84FA0];

  swift_beginAccess();
  sub_224BCA1E0(v1 + 56, &v24);
  v10 = *(&v25 + 1);
  sub_224A3311C(&v24, &qword_27D6F4BC8, &qword_224DBA048);
  if (v10)
  {
    if (qword_27D6F2CC0 == -1)
    {
LABEL_4:
      v11 = sub_224DAB258();
      __swift_project_value_buffer(v11, qword_27D6F4BA0);
      v12 = sub_224DAB228();
      v13 = sub_224DAF2A8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_224A2F000, v12, v13, "Invalidating People client", v14, 2u);
        MEMORY[0x22AA5EED0](v14, -1, -1);
      }

      sub_224BCA1E0(v1 + 56, &v24);
      if (*(&v25 + 1))
      {
        sub_224A3317C(&v24, v21);
        sub_224A3311C(&v24, &qword_27D6F4BC8, &qword_224DBA048);
        v15 = v22;
        v16 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (*(v16 + 232))(v15, v16);
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      else
      {
        sub_224A3311C(&v24, &qword_27D6F4BC8, &qword_224DBA048);
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      swift_beginAccess();
      sub_224BCA2AC(&v24, v1 + 56);
      swift_endAccess();
      return;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (qword_27D6F2CC0 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  __swift_project_value_buffer(v17, qword_27D6F4BA0);
  v18 = sub_224DAB228();
  v19 = sub_224DAF288();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_224A2F000, v18, v19, "Attempted to invalidate People client, but the client is nil", v20, 2u);
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }
}

uint64_t sub_224BCA114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandlerItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_224BCA178()
{
  v1 = *(type metadata accessor for HandlerItem() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_224BC78A8(v2, v3, v4, v5);
}

uint64_t sub_224BCA1E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BC8, &qword_224DBA048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BCA250(uint64_t a1)
{
  v2 = type metadata accessor for HandlerItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BCA2AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BC8, &qword_224DBA048);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_224BCA3A4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_224BCA65C(v8);
  v8[9] = sub_224BCA450(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_224BCA9F0;
}

void (*sub_224BCA450(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_224A3A40C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_224B27B74();
      v13 = v21;
      goto LABEL_11;
    }

    sub_224B130B8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_224A3A40C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_224DAFDD8();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_224BCA5A8;
}

void sub_224BCA5A8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_224B24668(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_224BCA6B4(*(v7 + 48) + 16 * v6);
    sub_224A9C790(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_224BCA65C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_224BCA9D4;
}

uint64_t sub_224BCA708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v21 = a2;
  v4 = sub_224DAF318();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_224DAF3C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  *(v2 + 16) = sub_224BC6FDC;
  *(v2 + 24) = 0;
  v13 = MEMORY[0x277D84F90];
  v14 = sub_224DA1ACC(MEMORY[0x277D84F90]);
  v15 = MEMORY[0x277D84FA0];
  *(v2 + 32) = v14;
  *(v2 + 40) = v15;
  v19 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB828();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v6);
  v22 = v13;
  sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  *(v2 + 48) = sub_224DAF418();
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  v16 = *(v2 + 24);
  v17 = v21;
  *(v3 + 16) = v20;
  *(v3 + 24) = v17;

  return v3;
}

uint64_t sub_224BCAA30()
{
  sub_224A3311C(v0 + 16, &qword_27D6F4900, &unk_224DB8640);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_224BCAAA4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v452 = a5;
  v407 = a4;
  v446 = a1;
  v417 = sub_224DA9908();
  v398 = *(v417 - 8);
  v14 = v398[8];
  MEMORY[0x28223BE20](v417);
  v416 = &v388 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4440, &unk_224DBA100);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v445 = &v388 - v18;
  v447 = sub_224DAD738();
  v451 = *(v447 - 8);
  v19 = *(v451 + 8);
  MEMORY[0x28223BE20](v447);
  v443 = &v388 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v444 = &v388 - v23;
  v24 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v406 = &v388 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v403 = &v388 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v388 - v31;
  v33 = sub_224DA9878();
  v409 = *(v33 - 8);
  v34 = v409[8];
  v35 = MEMORY[0x28223BE20](v33);
  v441 = &v388 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v427 = &v388 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v449 = &v388 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v448 = (&v388 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v397 = &v388 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v404 = &v388 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v425 = &v388 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v426 = (&v388 - v50);
  v51 = MEMORY[0x28223BE20](v49);
  v442 = &v388 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v388 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v438 = &v388 - v57;
  MEMORY[0x28223BE20](v56);
  v439 = &v388 - v58;
  v465[3] = sub_224A3B79C(0, &qword_281350AF8, 0x277D06A28);
  v465[4] = &off_28382DDA0;
  v465[0] = a7;
  v59 = a9;
  v464[3] = sub_224A3B79C(0, &qword_2813508D8, 0x277D06A50);
  v464[4] = &off_283829AE8;
  v464[0] = a8;
  v462 = type metadata accessor for DuetWidgetConfigurationManager();
  v463 = &off_2838320A0;
  v461 = v446;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_assertOnSchedulingFallback) = 0;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activationBlockIsCompleted) = 0;
  v60 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock;
  type metadata accessor for UnfairLock();
  v61 = swift_allocObject();
  v62 = swift_slowAlloc();
  *(a9 + v60) = v61;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier) = 0;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity) = 0;
  *v62 = 0;
  *(v61 + 16) = v62;
  v63 = a3;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity) = 0;
  v64 = (a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_completedRateLimitIdentifier);
  *v64 = 0;
  v64[1] = 0;
  sub_224A3317C(&v461, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__duetConfigurationManager);
  sub_224A3317C(v465, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__scheduler);
  sub_224A3317C(v464, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) = a2;
  *(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__queue) = a3;
  v65 = (a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__startHandler);
  *v65 = v452;
  v65[1] = a6;
  v66 = a2;
  sub_224A3796C(v407, a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__remoteDeviceProvider, &qword_27D6F5590, &qword_224DBEC00);
  v67 = *(a2 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name);
  v68 = *(a2 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_name + 8);
  v402 = v67;
  v401 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration;
  sub_224A45A60(v66 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v32);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v400 = *(v69 - 8);
  v70 = (*(v400 + 48))(v32, 1, v69);
  v408 = v68;
  v436 = v69;
  v405 = a6;
  v435 = v63;
  if (v70 == 1)
  {

    v71 = v63;

    sub_224DA9868();
    v72 = v66;
  }

  else
  {
    v73 = v32;
    v74 = *&v32[*(v69 + 48)];
    v75 = v442;
    v76 = v409[4];
    v76(v442, v73, v33);
    v77 = v75;
    v72 = v66;
    v76(v55, v77, v33);

    v78 = v63;
  }

  v79 = v438;
  sub_224DA9768();
  v80 = v409;
  v81 = v439;
  (v409[4])(v439, v55, v33);
  v82 = v80[2];
  v82(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startAfter, v81, v33);
  v450 = v33;
  v430 = v80 + 2;
  v433 = v82;
  v82(a9 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext_startBefore, v79, v33);
  v83 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions;
  v84 = *(v72 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingOptions);
  v85 = v72;
  v86 = sub_224DAE8B8();
  v87 = *(v86 - 8);
  v88 = *(v87 + 56);
  v89 = v406;
  v88(v406, 4, 5, v86);
  LODWORD(v446) = sub_224D41D20(v89, v84);
  sub_224BCDD44(v89, type metadata accessor for ExtensionTask.SchedulingOption);
  v90 = *(v85 + v83);
  v88(v89, 1, 5, v86);
  LODWORD(v452) = sub_224D41D20(v89, v90);
  sub_224BCDD44(v89, type metadata accessor for ExtensionTask.SchedulingOption);
  v91 = *(v85 + v83);
  v88(v89, 2, 5, v86);
  v432 = sub_224D41D20(v89, v91);
  sub_224BCDD44(v89, type metadata accessor for ExtensionTask.SchedulingOption);
  v396 = v83;
  v92 = *(v85 + v83);
  (*(v87 + 104))(v89, *MEMORY[0x277CE3D20], v86);
  v395 = v86;
  v394 = v87 + 56;
  v393 = v88;
  v88(v89, 0, 5, v86);
  v93 = sub_224D41D20(v89, v92);
  sub_224BCDD44(v89, type metadata accessor for ExtensionTask.SchedulingOption);
  v94 = MEMORY[0x277D06AA8];
  if ((v452 & 1) == 0)
  {
    v94 = MEMORY[0x277D06AB8];
  }

  v429 = v93;
  if (v93)
  {
    v94 = MEMORY[0x277D06AB0];
  }

  v399 = *v94;
  v95 = sub_224A45AC4(v85 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel);
  if (qword_2813515F0 != -1)
  {
    goto LABEL_113;
  }

  while (1)
  {
    v96 = sub_224DAB258();
    v97 = __swift_project_value_buffer(v96, qword_281364F88);

    v98 = v95;
    v431 = v97;
    v99 = sub_224DAB228();
    v100 = sub_224DAF2A8();

    v101 = os_log_type_enabled(v99, v100);
    v442 = v59;
    v440 = v85;
    v437 = v98;
    if (v101)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v452 = swift_slowAlloc();
      aBlock = v452;
      *v102 = 136446466;
      v453 = sub_224DA98E8();
      sub_224A3F6A4();
      sub_224DAEF18();
      v104 = sub_224A3D19C(8);
      v106 = v105;
      v108 = v107;
      v110 = v109;

      v111 = v104;
      v112 = v437;
      v113 = v439;
      v114 = MEMORY[0x22AA5D1C0](v111, v106, v108, v110);
      v116 = v115;

      v117 = sub_224A33F74(v114, v116, &aBlock);

      *(v102 + 4) = v117;
      *(v102 + 12) = 2114;
      *(v102 + 14) = v112;
      *v103 = v112;
      v118 = v112;
      _os_log_impl(&dword_224A2F000, v99, v100, "[%{public}s]: required data protection level: %{public}@", v102, 0x16u);
      sub_224A3311C(v103, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v103, -1, -1);
      v119 = v452;
      __swift_destroy_boxed_opaque_existential_1(v452);
      v59 = v442;
      MEMORY[0x22AA5EED0](v119, -1, -1);
      MEMORY[0x22AA5EED0](v102, -1, -1);

      v120 = v447;
      v121 = v451;
    }

    else
    {

      v120 = v447;
      v121 = v451;
      v113 = v439;
    }

    v122 = __swift_project_boxed_opaque_existential_1(&v461, v462);
    v123 = *v122;
    v124 = *(*v122 + 40);
    v125 = swift_allocObject();
    *(v125 + 16) = sub_224BCDD3C;
    *(v125 + 24) = v123;
    v459 = sub_224A8A838;
    v460 = v125;
    aBlock = MEMORY[0x277D85DD0];
    v456 = 1107296256;
    v457 = sub_224A9B6F8;
    v458 = &block_descriptor_24;
    v126 = _Block_copy(&aBlock);
    v127 = v124;

    dispatch_sync(v127, v126);

    _Block_release(v126);
    LOBYTE(v126) = swift_isEscapingClosureAtFileLocation();

    if (v126)
    {
      break;
    }

    v128 = v444;
    sub_224A3796C(v440 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_containingAppIdentifier, v444, &unk_27D6F5060, &qword_224DB5620);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    v130 = *(v129 - 8);
    if ((*(v130 + 48))(v128, 1, v129) == 1)
    {
      sub_224A3311C(v128, &unk_27D6F5060, &qword_224DB5620);
      v434 = 0xE700000000000000;
      v428 = 0x6E776F6E6B6E75;
    }

    else
    {
      v428 = sub_224DA9FE8();
      v434 = v131;
      (*(v130 + 8))(v128, v129);
    }

    v132 = v450;
    v133 = v436;
    v134 = v445;
    v135 = v440;
    sub_224A3796C(v440 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_duetBudgetIdentity, v445, &unk_27D6F4440, &unk_224DBA100);
    if ((v121[6])(v134, 1, v120) == 1)
    {
      sub_224A3311C(v134, &unk_27D6F4440, &unk_224DBA100);
      v85 = 0;
      goto LABEL_55;
    }

    v136 = v443;
    (v121[4])(v443, v134, v120);
    v445 = *(v135 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_budgetedDeviceIdentifiers);
    if (!v445)
    {
      goto LABEL_23;
    }

    if (v446)
    {
      v137 = v403;
      (*(v400 + 56))(v403, 1, 1, v436);
      v138 = v440;
      v139 = sub_224A45CAC(v440 + v401, v137);
      sub_224BCDD44(v137, type metadata accessor for ExtensionTask.SchedulingConfiguration);
      v140 = MEMORY[0x277D06A60];
      if (v139)
      {
        v141 = *(v138 + v396);
        v142 = v406;
        v393(v406, 3, 5, v395);
        v143 = sub_224D41D20(v142, v141);
        sub_224BCDD44(v142, type metadata accessor for ExtensionTask.SchedulingOption);
        v144 = *v140;
        v433(v426, v113, v132);
        if (v143)
        {
          v145 = v425;
          sub_224DA9768();
          goto LABEL_48;
        }

        v211 = v433;
      }

      else
      {
        v144 = *MEMORY[0x277D06A60];
        v211 = v433;
        v433(v426, v113, v132);
      }

      v145 = v425;
      v211(v425, v438, v132);
LABEL_48:
      v212 = sub_224DAEDE8();
      v213 = v426;
      v214 = sub_224DA9778();
      v215 = sub_224DA9778();
      v216 = [objc_opt_self() activityWithName:v212 priority:v399 duration:v144 startingAfter:v214 startingBefore:v215];

      v217 = v409[1];
      v217(v145, v132);
      v217(v213, v132);
      v218 = MEMORY[0x277D06AB0];
      if ((v429 & 1) == 0)
      {
        v218 = MEMORY[0x277D06AB8];
      }

      [v216 setSchedulingPriority_];
      [v216 setHandlerQueue_];
      [v216 setFileProtection_];
      [v216 setRequiresNetwork_];
      v219 = swift_allocObject();
      swift_weakInit();
      v459 = sub_224BCDDC4;
      v460 = v219;
      aBlock = MEMORY[0x277D85DD0];
      v456 = 1107296256;
      v457 = sub_224C6F8A4;
      v458 = &block_descriptor_28_1;
      v220 = _Block_copy(&aBlock);

      [v216 setStartHandler_];
      _Block_release(v220);

      v221 = v216;
      v222 = sub_224DAB228();
      v223 = sub_224DAF2A8();

      if (os_log_type_enabled(v222, v223))
      {
        v224 = swift_slowAlloc();
        v446 = swift_slowAlloc();
        aBlock = v446;
        *v224 = 136446466;
        v225 = v398;
        v226 = v398[2];
        v227 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
        v452 = v221;
        v228 = v416;
        v229 = v417;
        v226(v416, v227, v417);
        LODWORD(v445) = v223;
        v453 = sub_224DA98E8();
        sub_224A3F6A4();
        sub_224DAEF18();
        v230 = sub_224A3D19C(8);
        v232 = v231;
        v234 = v233;
        v236 = v235;

        v237 = MEMORY[0x22AA5D1C0](v230, v232, v234, v236);
        v239 = v238;
        v113 = v439;

        v240 = v228;
        v221 = v452;
        (v225[1])(v240, v229);
        v241 = sub_224A33F74(v237, v239, &aBlock);

        *(v224 + 4) = v241;
        *(v224 + 12) = 2082;
        v242 = [v221 name];
        v243 = sub_224DAEE18();
        v245 = v244;

        v246 = v243;
        v59 = v442;
        v247 = sub_224A33F74(v246, v245, &aBlock);

        *(v224 + 14) = v247;
        _os_log_impl(&dword_224A2F000, v222, v445, "[%{public}s]: Scheduled DAS standard refresh; name: %{public}s", v224, 0x16u);
        v248 = v446;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v248, -1, -1);
        MEMORY[0x22AA5EED0](v224, -1, -1);

        (*(v451 + 1))(v443, v447);
      }

      else
      {

        (v121[1])(v443, v447);
      }

      v249 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
      *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity) = v221;

      v85 = 1;
LABEL_54:
      v133 = v436;
      v135 = v440;
LABEL_55:
      if (*(v135 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers) && (v392 = *(v135 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitIdentifiers), (v250 = *(v135 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_rateLimitedDeviceIdentifiers)) != 0) && (v251 = v392, (v391 = *(v392 + 16)) != 0))
      {
        v252 = *(v250 + 2);
        if (v252)
        {
          v423 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
          v422 = (v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
          v413 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity;
          v253 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_rateLimitedDASActivitiesByIdentifier;
          v424 = (v409 + 1);
          v412 = (v398 + 2);
          v411 = (v398 + 1);
          v415 = v250;

          v254 = v415;
          v255 = 0;
          v414 = -v252;
          v256 = v415 + 40;
          v389 = (v251 + 40);
          *&v257 = 136446466;
          v410 = v257;
          v421 = v253;
          v388 = v415 + 40;
          while (2)
          {
            v95 = &v256[16 * v255];
            v260 = v255 + 1;
            while (1)
            {
              if ((v260 - 1) >= *(v254 + 2))
              {
LABEL_111:
                __break(1u);
                goto LABEL_112;
              }

              v427 = v260;
              v261 = *(v95 - 8);
              v441 = *v95;
              if (!v441)
              {
                v418 = 0;
                v264 = 0;
                goto LABEL_72;
              }

              v262 = sub_224C6FFE0();
              if (v263)
              {
                break;
              }

              v260 = v427 + 1;
              v95 += 16;
              v254 = v415;
              if (&v427[v414 + 1] == 1)
              {

                goto LABEL_96;
              }
            }

            v418 = v262;
            v264 = v263;
LABEL_72:
            swift_beginAccess();
            v390 = &v427[v414];
            v265 = v389;
            v266 = v391;
            v426 = v261;
            v425 = v264;
            do
            {
              v445 = v266;
              v270 = *(v265 - 1);
              v269 = *v265;
              v443 = v265;

              sub_224DA9898();
              v271 = v450;
              v272 = v433;
              v433(v448, v113, v450);
              v272(v449, v438, v271);

              v273 = sub_224DAEDE8();

              v447 = v270;
              v451 = v269;
              v274 = sub_224DAEDE8();
              v275 = v59;
              if (v264)
              {
                v276 = sub_224DAEDE8();
              }

              else
              {
                v276 = 0;
              }

              v277 = objc_allocWithZone(MEMORY[0x277D06A48]);
              v278 = sub_224DAEDE8();
              v279 = v448;
              v280 = sub_224DA9778();
              v281 = v449;
              v282 = sub_224DA9778();
              v452 = [v277 initWithIdentifier:v273 withBudgetIdentifier:0 withRateLimitConfigurationName:v274 withRemoteDeviceIdentifier:v276 withAppIdentifier:v278 refreshAfter:v280 refreshBefore:v282];

              v283 = *v424;
              v284 = v450;
              (*v424)(v281, v450);
              v420 = v283;
              v283(v279, v284);
              v285 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v286 = v422[3];
              v287 = v422[4];
              __swift_project_boxed_opaque_existential_1(v422, v286);
              v288 = swift_allocObject();
              v59 = v275;
              swift_weakInit();
              v289 = swift_allocObject();
              *(v289 + 16) = v285;
              *(v289 + 24) = v288;
              v290 = *(v287 + 16);

              v291 = v290(v452, sub_224BCDDAC, v289, v286, v287);

              swift_beginAccess();
              v444 = v285;
              swift_unknownObjectWeakAssign();
              v292 = MEMORY[0x277D06AB0];
              if ((v429 & 1) == 0)
              {
                v292 = MEMORY[0x277D06AB8];
              }

              v293 = *v292;
              v294 = v291;
              [v294 setSchedulingPriority_];
              [v294 setHandlerQueue_];
              [v294 setFileProtection_];
              v446 = v294;
              [v294 setRequiresNetwork_];

              v295 = v451;

              v296 = sub_224DAB228();
              v297 = sub_224DAF2A8();

              if (os_log_type_enabled(v296, v297))
              {
                v298 = swift_slowAlloc();
                *&v419 = swift_slowAlloc();
                aBlock = v419;
                *v298 = v410;
                v299 = v416;
                v300 = v417;
                (*v412)(v416, *(&v413->isa + v59) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, v417);
                v454 = sub_224DA98E8();
                sub_224A3F6A4();
                sub_224DAEF18();
                v301 = sub_224A3D19C(8);
                v303 = v302;
                v305 = v304;
                v307 = v306;

                v308 = v301;
                v59 = v442;
                v309 = MEMORY[0x22AA5D1C0](v308, v303, v305, v307);
                v311 = v310;

                (*v411)(v299, v300);
                v312 = sub_224A33F74(v309, v311, &aBlock);

                *(v298 + 4) = v312;
                v295 = v451;
                *(v298 + 12) = 2082;
                v313 = v447;
                *(v298 + 14) = sub_224A33F74(v447, v295, &aBlock);
                _os_log_impl(&dword_224A2F000, v296, v297, "[%{public}s]: Scheduled DAS rate limited refresh; identifier: %{public}s", v298, 0x16u);
                v314 = v419;
                swift_arrayDestroy();
                MEMORY[0x22AA5EED0](v314, -1, -1);
                MEMORY[0x22AA5EED0](v298, -1, -1);

                v133 = v436;
                v315 = v421;
              }

              else
              {

                v133 = v436;
                v315 = v421;
                v313 = v447;
              }

              v113 = v439;
              v264 = v425;
              if (!*&v315[v59])
              {
                *&v315[v59] = MEMORY[0x277D84F98];
              }

              aBlock = sub_224DAA038();
              v456 = v316;
              MEMORY[0x22AA5D210](14906, 0xE200000000000000);
              MEMORY[0x22AA5D210](v313, v295);

              v95 = aBlock;
              v317 = v456;
              swift_beginAccess();
              if (*&v315[v59])
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v454 = *&v315[v59];
                v319 = v454;
                *&v315[v59] = 0x8000000000000000;
                v320 = sub_224A3A40C(v95, v317);
                v322 = v319[2];
                v323 = (v321 & 1) == 0;
                v324 = __OFADD__(v322, v323);
                v325 = v322 + v323;
                v85 = v446;
                if (v324)
                {
                  __break(1u);
                  goto LABEL_111;
                }

                v326 = v321;
                if (v319[3] >= v325)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v331 = v320;
                    sub_224B256F0();
                    v320 = v331;
                    v133 = v436;
                  }
                }

                else
                {
                  sub_224B0FBEC(v325, isUniquelyReferenced_nonNull_native);
                  v320 = sub_224A3A40C(v95, v317);
                  if ((v326 & 1) != (v327 & 1))
                  {
                    goto LABEL_115;
                  }
                }

                v328 = v454;
                if (v326)
                {
                  v329 = v454[7];
                  v330 = *(v329 + 8 * v320);
                  *(v329 + 8 * v320) = v85;
                }

                else
                {
                  sub_224B24668(v320, v95, v317, v85, v454);
                }

                v59 = v442;
                *&v315[v442] = v328;
                swift_endAccess();

                v268 = v445;
                v267 = v452;
              }

              else
              {
                swift_endAccess();

                v85 = v446;
                v267 = v446;
                v268 = v445;
              }

              v265 = v443 + 16;
              v266 = v268 - 1;
            }

            while (v266);

            v85 = 1;
            v135 = v440;
            v254 = v415;
            v255 = v427;
            v256 = v388;
            if (v390)
            {
              continue;
            }

            break;
          }

          sub_224A3311C(v407, &qword_27D6F5590, &qword_224DBEC00);
          v386 = v450;
          v387 = v420;
          v420(v438, v450);
          v387(v113, v386);
LABEL_62:
          __swift_destroy_boxed_opaque_existential_1(v464);
          __swift_destroy_boxed_opaque_existential_1(v465);
LABEL_108:
          __swift_destroy_boxed_opaque_existential_1(&v461);
          return v59;
        }

LABEL_96:

        if ((v85 & 1) == 0)
        {
LABEL_97:
          v332 = v403;
          (*(v400 + 56))(v403, 1, 1, v133);
          v333 = sub_224A45CAC(v135 + v401, v332);
          sub_224BCDD44(v332, type metadata accessor for ExtensionTask.SchedulingConfiguration);
          if (v333)
          {
            v334 = *(v135 + v396);
            v335 = v406;
            v393(v406, 3, 5, v395);
            v336 = sub_224D41D20(v335, v334);
            sub_224BCDD44(v335, type metadata accessor for ExtensionTask.SchedulingOption);
            v337 = *MEMORY[0x277D06A60];
            v338 = v450;
            v433(v404, v113, v450);
            v339 = v397;
            if (v336)
            {
              sub_224DA9768();
            }

            else
            {
              v433(v397, v438, v338);
            }
          }

          else
          {
            v337 = *MEMORY[0x277D06A60];
            v338 = v450;
            v340 = v433;
            v433(v404, v113, v450);
            v339 = v397;
            v340(v397, v438, v338);
          }

          v341 = sub_224DAEDE8();

          v342 = v404;
          v343 = sub_224DA9778();
          v344 = sub_224DA9778();
          v345 = [objc_opt_self() activityWithName:v341 priority:v399 duration:v337 startingAfter:v343 startingBefore:v344];

          v346 = v409[1];
          v346(v339, v338);
          v346(v342, v338);
          v347 = MEMORY[0x277D06AB0];
          if ((v429 & 1) == 0)
          {
            v347 = MEMORY[0x277D06AB8];
          }

          [v345 setSchedulingPriority_];
          v348 = v435;
          [v345 setHandlerQueue_];
          v349 = v437;
          [v345 setFileProtection_];
          [v345 setRequiresNetwork_];
          v350 = swift_allocObject();
          swift_weakInit();
          v459 = sub_224BCDDA4;
          v460 = v350;
          aBlock = MEMORY[0x277D85DD0];
          v456 = 1107296256;
          v457 = sub_224C6F8A4;
          v458 = &block_descriptor_11;
          v351 = _Block_copy(&aBlock);

          [v345 setStartHandler_];
          _Block_release(v351);

          v352 = v345;
          v353 = sub_224DAB228();
          v354 = sub_224DAF2A8();

          if (os_log_type_enabled(v353, v354))
          {
            v355 = swift_slowAlloc();
            v449 = swift_slowAlloc();
            aBlock = v449;
            *v355 = 136446466;
            v356 = v398;
            v357 = v398[2];
            v358 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
            v451 = v346;
            v359 = v416;
            v452 = v352;
            v360 = v417;
            v357(v416, v358, v417);
            v448 = v353;
            v454 = sub_224DA98E8();
            sub_224A3F6A4();
            sub_224DAEF18();
            v361 = sub_224A3D19C(8);
            LODWORD(v447) = v354;
            v363 = v362;
            v365 = v364;
            v367 = v366;

            v368 = MEMORY[0x22AA5D1C0](v361, v363, v365, v367);
            v370 = v369;

            v371 = v360;
            v352 = v452;
            (v356[1])(v359, v371);
            v372 = sub_224A33F74(v368, v370, &aBlock);

            *(v355 + 4) = v372;
            *(v355 + 12) = 2082;
            v373 = [v352 name];
            v374 = sub_224DAEE18();
            v376 = v375;

            v377 = v374;
            v59 = v442;
            v378 = sub_224A33F74(v377, v376, &aBlock);

            *(v355 + 14) = v378;
            v379 = v448;
            _os_log_impl(&dword_224A2F000, v448, v447, "[%{public}s]: Scheduled DAS standard refresh; name: %{public}s", v355, 0x16u);
            v380 = v449;
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v380, -1, -1);
            MEMORY[0x22AA5EED0](v355, -1, -1);

            sub_224A3311C(v407, &qword_27D6F5590, &qword_224DBEC00);
            v381 = v450;
            v346 = v451;
            v451(v438, v450);
            v382 = v439;
            v383 = v381;
          }

          else
          {

            sub_224A3311C(v407, &qword_27D6F5590, &qword_224DBEC00);
            v346(v438, v338);
            v382 = v439;
            v383 = v338;
          }

          v346(v382, v383);
          __swift_destroy_boxed_opaque_existential_1(v464);
          __swift_destroy_boxed_opaque_existential_1(v465);
          v384 = *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity);
          *(v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_fallbackDASActivity) = v352;

          goto LABEL_108;
        }
      }

      else
      {

        if ((v85 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      sub_224A3311C(v407, &qword_27D6F5590, &qword_224DBEC00);
      v258 = v409[1];
      v259 = v450;
      v258(v438, v450);
      v258(v113, v259);
      goto LABEL_62;
    }

    v95 = *(v445 + 16);
    if (!v95)
    {
LABEL_23:
      (v121[1])(v136, v120);
      v85 = 0;
      goto LABEL_54;
    }

    v444 = OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
    v426 = (v59 + OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__refreshScheduler);
    v422 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__activity;
    v425 = OBJC_IVAR____TtC10ChronoCore23DuetTaskActivityContext__lock_budgetedDASActivity;
    v424 = (v409 + 1);
    v421 = (v398 + 2);
    v420 = (v398 + 1);

    v147 = 0;
    v85 = 0;
    v452 = -v95;
    v148 = v146 + 40;
    *&v149 = 136446466;
    v419 = v149;
    v150 = v146;
    v423 = v146 + 40;
LABEL_26:
    v59 = v148 + 16 * v147++;
    while ((v147 - 1) < *(v150 + 16))
    {
      if (!*v59)
      {
        v95 = 0;
LABEL_33:
        sub_224DA9898();
        sub_224DAD6F8();
        v154 = v450;
        v155 = v433;
        v433(v427, v439, v450);
        v155(v441, v438, v154);
        v156 = sub_224DAEDE8();

        v157 = sub_224DAEDE8();

        if (v95)
        {
          v158 = sub_224DAEDE8();
        }

        else
        {
          v158 = 0;
        }

        v159 = objc_allocWithZone(MEMORY[0x277D06A48]);
        v160 = sub_224DAEDE8();
        v161 = v427;
        v162 = sub_224DA9778();
        v163 = v441;
        v164 = sub_224DA9778();
        v446 = [v159 initWithIdentifier:v156 withBudgetIdentifier:v157 withRateLimitConfigurationName:0 withRemoteDeviceIdentifier:v158 withAppIdentifier:v160 refreshAfter:v162 refreshBefore:v164];

        v165 = *v424;
        v166 = v450;
        (*v424)(v163, v450);
        v165(v161, v166);
        v167 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v168 = v426[3];
        v169 = v426[4];
        __swift_project_boxed_opaque_existential_1(v426, v168);
        v170 = swift_allocObject();
        v59 = v442;
        swift_weakInit();
        v171 = swift_allocObject();
        *(v171 + 16) = v167;
        *(v171 + 24) = v170;
        v172 = *(v169 + 16);

        v173 = v169;
        v174 = v167;
        v175 = v172(v446, sub_224BCDDAC, v171, v168, v173);

        swift_beginAccess();
        swift_unknownObjectWeakAssign();
        v176 = MEMORY[0x277D06AB0];
        if ((v429 & 1) == 0)
        {
          v176 = MEMORY[0x277D06AB8];
        }

        v177 = *v176;
        v178 = v175;
        [v178 setSchedulingPriority_];
        [v178 setHandlerQueue_];
        [v178 setFileProtection_];
        [v178 setRequiresNetwork_];

        v179 = v178;
        v180 = sub_224DAB228();
        v181 = sub_224DAF2A8();

        v182 = os_log_type_enabled(v180, v181);
        v136 = v443;
        if (v182)
        {
          v183 = swift_slowAlloc();
          v414 = swift_slowAlloc();
          aBlock = v414;
          *v183 = v419;
          v184 = *v421;
          v185 = *(v422 + v59) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier;
          v418 = v174;
          v186 = v416;
          v415 = v175;
          v187 = v417;
          v184(v416, v185, v417);
          v413 = v180;
          v453 = sub_224DA98E8();
          sub_224A3F6A4();
          sub_224DAEF18();
          v188 = sub_224A3D19C(8);
          v411 = v179;
          v189 = v188;
          LODWORD(v412) = v181;
          v191 = v190;
          v193 = v192;
          v195 = v194;

          v196 = v193;
          v59 = v442;
          v197 = MEMORY[0x22AA5D1C0](v189, v191, v196, v195);
          v199 = v198;

          v200 = v187;
          v175 = v415;
          (*v420)(v186, v200);
          v201 = sub_224A33F74(v197, v199, &aBlock);

          *(v183 + 4) = v201;
          *(v183 + 12) = 2082;
          v202 = v411;
          v203 = [v411 name];
          v204 = sub_224DAEE18();
          v206 = v205;

          v207 = sub_224A33F74(v204, v206, &aBlock);

          *(v183 + 14) = v207;
          v208 = v413;
          _os_log_impl(&dword_224A2F000, v413, v412, "[%{public}s]: Scheduled DAS budgeted refresh; name: %{public}s", v183, 0x16u);
          v209 = v414;
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v209, -1, -1);
          MEMORY[0x22AA5EED0](v183, -1, -1);
        }

        else
        {
        }

        v121 = v451;
        v150 = v445;
        v95 = v452 + v147;
        v210 = *&v425[v59];
        *&v425[v59] = v175;

        v85 = 1;
        v148 = v423;
        if (!v95)
        {
          (v121[1])(v136, v447);

          goto LABEL_43;
        }

        goto LABEL_26;
      }

      v151 = *(v59 - 8);
      v152 = *v59;

      sub_224C6FFE0();
      v95 = v153;

      if (v95)
      {
        goto LABEL_33;
      }

      ++v147;
      v59 += 16;
      if (v452 + v147 == 1)
      {
        (v121[1])(v136, v447);

        v59 = v442;
LABEL_43:
        v113 = v439;
        goto LABEL_54;
      }
    }

LABEL_112:
    __break(1u);
LABEL_113:
    swift_once();
  }

  __break(1u);
LABEL_115:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224BCDD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224BCDECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C10, &qword_224DBA330);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDBF38();
  sub_224DAFF08();
  v16 = 0;
  sub_224DAFCC8();
  if (!v5)
  {
    v15 = 1;
    sub_224DAFCC8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224BCE060()
{
  if (*v0)
  {
    result = 0x4964616F6C796170;
  }

  else
  {
    result = 0x7974697669746361;
  }

  *v0;
  return result;
}

uint64_t sub_224BCE0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xEA00000000004449;
  if (v6 || (sub_224DAFD88() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4964616F6C796170 && a2 == 0xE900000000000044)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_224DAFD88();

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

uint64_t sub_224BCE190(uint64_t a1)
{
  v2 = sub_224BDBF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224BCE1CC(uint64_t a1)
{
  v2 = sub_224BDBF38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224BCE208@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_224BDBD54(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_224BCE258()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = *(v0 + 336);

    v3 = v0;
    v1 = sub_224DAC068();

    v4 = *(v0 + 96);
    *(v3 + 96) = v1;
  }

  return v1;
}

uint64_t sub_224BCE2D4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 336);

    v3 = v0;
    v1 = sub_224DAC0E8();

    v4 = *(v0 + 104);
    *(v3 + 104) = v1;
  }

  return v1;
}

uint64_t sub_224BCE350()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v5 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C48, &unk_224DBA3B0);
    sub_224A33088(&qword_281350F90, &qword_27D6F4C48, &unk_224DBA3B0);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 120);
    *(v2 + 120) = v1;
  }

  return v1;
}

uint64_t sub_224BCE414()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v5 = *(v0 + 128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F57A0, &qword_224DBA428);
    sub_224A33088(&qword_281350F78, &qword_27D6F57A0, &qword_224DBA428);
    v2 = v0;
    v1 = sub_224DAB3A8();
    v3 = *(v0 + 136);
    *(v2 + 136) = v1;
  }

  return v1;
}

uint64_t sub_224BCE4F4@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v95 = a1;
  v93 = a3;
  v89 = sub_224DAE7A8();
  v92 = *(v89 - 8);
  v4 = *(v92 + 64);
  v5 = MEMORY[0x28223BE20](v89);
  v86 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v76 - v7;
  v8 = sub_224DAE5C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  KeyPath = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  *&v96 = *(v81 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v81);
  *&v80 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v82 = *(v13 - 8);
  v14 = *(v82 + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v77 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v76 - v17;
  v18 = sub_224DAE4F8();
  v90 = *(v18 - 8);
  v91 = v18;
  v19 = *(v90 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DAB728();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v76 - v28;
  v31 = a2[27];
  v30 = a2[28];
  v78 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 24, v31);
  v32 = sub_224DABCA8();
  sub_224DADA58();

  v33 = v94;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v98);
  v87 = v23;
  v88 = v22;
  v34 = *(v23 + 16);
  v84 = v29;
  v34(v27, v29, v22);
  v35 = v21;
  sub_224DAE4D8();
  sub_224DAE7B8();
  v36 = sub_224DAE7C8();
  v37 = *(*(v36 - 8) + 56);
  v37(v33, 0, 1, v36);
  v38 = v80;
  sub_224DAC8D8();
  v39 = v81;
  sub_224DAA1F8();
  v41 = v40;
  (*(v96 + 8))(v38, v39);
  if (v41)
  {
    sub_224A3796C(v78 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider, v98, &unk_27D6F57B0, qword_224DB7B48);
    if (v99)
    {
      __swift_project_boxed_opaque_existential_1(v98, v99);
      v42 = v77;
      sub_224DAD4E8();

      sub_224A3311C(v33, &qword_27D6F48C0, &qword_224DB8220);
      __swift_destroy_boxed_opaque_existential_1(v98);
    }

    else
    {
      sub_224A3311C(v33, &qword_27D6F48C0, &qword_224DB8220);

      sub_224A3311C(v98, &unk_27D6F57B0, qword_224DB7B48);
      v42 = v77;
      v37(v77, 1, 1, v36);
    }

    sub_224A44E4C(v42, v33, &qword_27D6F48C0, &qword_224DB8220);
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v43 = swift_allocObject();
  v96 = xmmword_224DB3100;
  *(v43 + 16) = xmmword_224DB3100;
  *(v43 + 32) = v41 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v96;
  *(v44 + 32) = v41 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v45 = *(v82 + 72);
  v46 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v96;
  sub_224A3796C(v33, v47 + v46, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = v96;
  *(v48 + 32) = v41 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAB518();
  v79 = v35;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
  v49 = *(sub_224DAE588() - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v52 = swift_allocObject();
  v80 = xmmword_224DB30F0;
  *(v52 + 16) = xmmword_224DB30F0;
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE4B8();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  v53 = *(sub_224DAB558() - 8);
  v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v82 = 2 * *(v53 + 72);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_224DB8BC0;
  v98[0] = MEMORY[0x277D84F90];
  sub_224A43A4C(&qword_281350ED8, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
  sub_224DAF788();
  v55 = swift_allocObject();
  *(v55 + 16) = v96;
  sub_224DAB548();
  v98[0] = v55;
  v56 = v79;
  sub_224DAF788();
  v57 = swift_allocObject();
  *(v57 + 16) = v96;
  sub_224DAB538();
  v98[0] = v57;
  sub_224DAF788();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE4B8();
  v58 = v85;
  sub_224DAC8E8();
  v59 = v92;
  v60 = v86;
  v61 = v89;
  (*(v92 + 104))(v86, *MEMORY[0x277CE3CB0], v89);
  sub_224A43A4C(&qword_281350C48, MEMORY[0x277CE3CC0]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  v62 = *(v59 + 8);
  v62(v60, v61);
  v62(v58, v61);
  if (v98[0] == v97)
  {
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CD8, &qword_224DBA670);
    v63 = sub_224DAEBA8();
    v64 = *(v63 - 8);
    v65 = *(v64 + 72);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v80;
    v68 = v67 + v66;
    v69 = *(v64 + 104);
    v69(v68, *MEMORY[0x277CE3E98], v63);
    v69(v68 + v65, *MEMORY[0x277CE3EA0], v63);
    sub_224DAE4B8();
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CD0, &qword_224DBA638);
  v70 = *(v59 + 72);
  v71 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  *(swift_allocObject() + 16) = v96;
  sub_224DAC8E8();
  sub_224DAE4B8();
  sub_224A3311C(v94, &qword_27D6F48C0, &qword_224DB8220);
  (*(v87 + 8))(v84, v88);
  v73 = v90;
  v72 = v91;
  v74 = v93;
  (*(v90 + 32))(v93, v56, v91);
  return (*(v73 + 56))(v74, 0, 1, v72);
}

uint64_t sub_224BCF21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_224BCF2EC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a1;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48C0, &qword_224DB8220);
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v61 - v12;
  v13 = sub_224DAE5C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_224DAE4F8();
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v15);
  v78 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB728();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = a2[27];
  v27 = a2[28];
  v61 = a2;
  __swift_project_boxed_opaque_existential_1(a2 + 24, v26);
  v28 = sub_224DABCA8();
  sub_224DADA58();

  __swift_project_boxed_opaque_existential_1(v80, v81);
  sub_224DAD168();
  __swift_destroy_boxed_opaque_existential_1(v80);
  v71 = v25;
  v72 = v19;
  v29 = *(v19 + 16);
  v73 = v18;
  v29(v23, v25, v18);
  sub_224DAE4D8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA8, &unk_224DBFB90);
  v30 = sub_224DAB528();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v79 = xmmword_224DB3100;
  *(v34 + 16) = xmmword_224DB3100;
  (*(v31 + 104))(v34 + v33, *MEMORY[0x277CDF3C0], v30);
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AF0, &qword_224DB3D80);
  v35 = *(sub_224DAE588() - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  *(swift_allocObject() + 16) = xmmword_224DB30F0;
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE5B8();
  sub_224DAE568();
  sub_224DAE4B8();
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB0, &qword_224DBCF60);
  v38 = *(sub_224DAB558() - 8);
  v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v64 = 2 * *(v38 + 72);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_224DB8BC0;
  v80[0] = MEMORY[0x277D84F90];
  sub_224A43A4C(&qword_281350ED8, MEMORY[0x277CDFB98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CB8, &qword_224DBA500);
  sub_224A33088(&qword_281350BB8, &qword_27D6F4CB8, &qword_224DBA500);
  sub_224DAF788();
  v40 = swift_allocObject();
  *(v40 + 16) = v79;
  sub_224DAB548();
  v80[0] = v40;
  sub_224DAF788();
  v41 = v78;
  v42 = swift_allocObject();
  *(v42 + 16) = v79;
  sub_224DAB538();
  v80[0] = v42;
  v43 = v66;
  sub_224DAF788();
  sub_224DAE4B8();
  swift_getKeyPath();
  sub_224DAE4B8();
  sub_224DAE7B8();
  v44 = sub_224DAE7C8();
  v45 = *(*(v44 - 8) + 56);
  v45(v43, 0, 1, v44);
  v46 = v67;
  sub_224DAC8D8();
  v47 = v68;
  sub_224DAA1F8();
  v49 = v48;
  (*(v69 + 8))(v46, v47);
  if (v49)
  {
    sub_224A3796C(v61 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider, v80, &unk_27D6F57B0, qword_224DB7B48);
    if (v81)
    {
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v50 = v62;
      sub_224DAD4E8();

      sub_224A3311C(v43, &qword_27D6F48C0, &qword_224DB8220);
      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {
      sub_224A3311C(v43, &qword_27D6F48C0, &qword_224DB8220);

      sub_224A3311C(v80, &unk_27D6F57B0, qword_224DB7B48);
      v50 = v62;
      v45(v62, 1, 1, v44);
    }

    sub_224A44E4C(v50, v43, &qword_27D6F48C0, &qword_224DB8220);
  }

  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC0, &qword_224DBFAC0);
  v51 = swift_allocObject();
  *(v51 + 16) = v79;
  *(v51 + 32) = v49 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v79;
  *(v52 + 32) = v49 != 0;
  sub_224DAE4B8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CC8, &qword_224DBA5D0);
  v53 = *(v74 + 72);
  v54 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v79;
  sub_224A3796C(v43, v55 + v54, &qword_27D6F48C0, &qword_224DB8220);
  sub_224DAE4B8();
  swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  *(v56 + 32) = v49 != 0;
  sub_224DAE4B8();
  sub_224A3311C(v43, &qword_27D6F48C0, &qword_224DB8220);
  (*(v72 + 8))(v71, v73);
  v58 = v75;
  v57 = v76;
  v59 = v77;
  (*(v75 + 32))(v77, v41, v76);
  return (*(v58 + 56))(v59, 0, 1, v57);
}

uint64_t sub_224BCFDA4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(v1 + 16);
    if (v4)
    {
      v11 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v5 = v1 + 32;
      do
      {
        sub_224A3317C(v5, v10);
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v10);
        sub_224DAF9B8();
        v6 = *(v11 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v5 += 40;
        --v4;
      }

      while (v4);
    }

    v7 = sub_224BD9E7C();
    v9 = MEMORY[0x28223BE20](v7);
    LOBYTE(v10[0]) = 1;
    v8 = *(v3 + 336);
    MEMORY[0x28223BE20](v9);

    sub_224DAC128();

    if (v10[0])
    {
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224BCFF80(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224BCFFE0(a1);
  }

  return result;
}

uint64_t sub_224BCFFE0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_224DAF3B8();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v44 = &v34 - v14;
  v15 = sub_224DABCC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v19 = *(v16 + 16);
  v45 = &v34 - v20;
  v38 = v19;
  v19();
  v21 = *(v1 + 336);

  v42 = a1;
  v22 = sub_224DAC168();

  if (v22 && (v23 = sub_224D5D590(v22), , v23))
  {
    sub_224DABF78();

    v37 = v12;
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v36 = sub_224DAD178();
    v47 = v36;
    sub_224DAF378();
    v46 = *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue);
    v24 = v46;
    v25 = sub_224DAF358();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    v35 = v24;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v7, &qword_27D6F5090, &qword_224DB5C30);

    (*(v40 + 8))(v11, v41);

    __swift_destroy_boxed_opaque_existential_1(v48);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = v39;
    (v38)(v39, v42, v15);
    v28 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    (*(v16 + 32))(v29 + v28, v27, v15);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
    v30 = v37;
    v31 = v44;
    v32 = sub_224DAB488();

    (*(v43 + 8))(v31, v30);
  }

  else
  {
    v32 = 0;
  }

  swift_beginAccess();
  sub_224B086A0(v32, v45);
  return swift_endAccess();
}

uint64_t sub_224BD0538(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_224B3E18C(a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224BD05CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_224BD9E7C();
    v4 = MEMORY[0x28223BE20](v2);
    v3 = *(v1 + 336);
    MEMORY[0x28223BE20](v4);

    sub_224DAC128();

    __break(1u);
  }

  return result;
}

void sub_224BD070C(uint64_t a1)
{
  v2 = sub_224DABCC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DABCA8();
  v7 = [v6 isRemote];

  if ((v7 & 1) == 0)
  {
    sub_224DABC78();
    v8 = sub_224DAC888();

    if (v8)
    {
      v16 = v8;
      v9 = swift_allocObject();
      swift_weakInit();
      v14 = *(v3 + 16);
      v15 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v14(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
      v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      (*(v3 + 32))(v11 + v10, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C98, &qword_224DBA448);
      sub_224A33088(&qword_281351168, &qword_27D6F4C98, &qword_224DBA448);
      v12 = sub_224DAB488();

      v14(v5, a1, v2);
    }

    else
    {
      v12 = 0;
      (*(v3 + 16))(v5, a1, v2);
    }

    swift_beginAccess();
    sub_224B086A0(v12, v5);
    swift_endAccess();
  }
}

uint64_t sub_224BD0998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v53 = a1;
  v54 = a2;
  v3 = sub_224DACB98();
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v47 - v8;
  v10 = sub_224DA9A38();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9878();
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D0, &qword_224DB8238);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v47 - v22;
  v24 = sub_224DA9A88();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(v53, v23, &qword_27D6F48D0, &qword_224DB8238);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v29 = &qword_27D6F48D0;
    v30 = &qword_224DB8238;
    v31 = v23;
LABEL_5:
    sub_224A3311C(v31, v29, v30);
    v34 = v55;
    v33 = v56;
LABEL_6:
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_224DBA130;
    *(v35 + 32) = 0xEE006465676E6168;
    *v34 = v35;
    v36 = MEMORY[0x277CF9B90];
    goto LABEL_7;
  }

  (*(v25 + 32))(v28, v23, v24);
  sub_224DA9A68();
  sub_224DA9A28();
  (*(v49 + 8))(v13, v50);
  v32 = v51;
  if ((*(v51 + 48))(v9, 1, v14) == 1)
  {
    (*(v25 + 8))(v28, v24);
    v29 = &qword_27D6F32B0;
    v30 = &qword_224DB3EA0;
    v31 = v9;
    goto LABEL_5;
  }

  (*(v32 + 32))(v19, v9, v14);
  v44 = v48;
  sub_224DA9808();
  v45 = sub_224DA9798();
  v46 = *(v32 + 8);
  v46(v44, v14);
  v46(v19, v14);
  (*(v25 + 8))(v28, v24);
  v34 = v55;
  v33 = v56;
  if ((v45 & 1) == 0)
  {
    goto LABEL_6;
  }

  v36 = MEMORY[0x277CF9BE8];
LABEL_7:
  v37 = v57;
  (*(v33 + 104))(v34, *v36, v57);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v33 + 8))(v34, v37);
  }

  v39 = MEMORY[0x28223BE20](Strong);
  v40 = v52;
  *(&v47 - 4) = v39;
  *(&v47 - 3) = v40;
  *(&v47 - 2) = v34;
  v58 = 1;
  v41 = *(v39 + 336);
  MEMORY[0x28223BE20](v39);
  *(&v47 - 4) = &v58;
  *(&v47 - 3) = sub_224B7A900;
  *(&v47 - 2) = v42;

  sub_224DAC128();

  if ((v58 & 1) == 0)
  {

    return (*(v33 + 8))(v34, v37);
  }

  __break(1u);
  return result;
}

uint64_t sub_224BD0F88()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224BD0FF0();
    sub_224BD1960();
  }

  return result;
}

uint64_t sub_224BD0FF0()
{
  v92 = sub_224DAD9C8();
  v84 = *(v92 - 8);
  v1 = *(v84 + 64);
  MEMORY[0x28223BE20](v92);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_224DA9908();
  v83 = *(v91 - 8);
  v3 = *(v83 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v69 - v9;
  v89 = sub_224DAE7A8();
  v87 = *(v89 - 1);
  v10 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v80 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DAEB68();
  v78 = *(v86 - 1);
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v86);
  v76 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_224DAC918();
  v14 = *(v77 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v77);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v69 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v72 = *(v85 - 1);
  v21 = *(v72 + 64);
  MEMORY[0x28223BE20](v85);
  v23 = &v69 - v22;
  v71 = sub_224DABCC8();
  v24 = *(v71 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v71);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = (v0 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore);
  sub_224BBF304(v0 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore, v93);
  v74 = v94;
  v75 = v95;
  v73 = __swift_project_boxed_opaque_existential_1(v93, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  MEMORY[0x22AA5ABC0]();
  v70 = sub_224DABC78();
  v29 = v28;
  (*(v24 + 8))(v27, v71);
  sub_224DAA1B8();
  v30 = v20;
  sub_224DAC838();
  v31 = v76;
  sub_224DAC8F8();
  v32 = *(v14 + 8);
  v33 = v30;
  v34 = v77;
  v32(v33, v77);
  sub_224DAC838();
  v35 = v80;
  sub_224DAC8E8();
  v32(v18, v34);
  v36 = v82;
  v37 = v35;
  v38 = sub_224D2F580(v70, v29, v23, v31, v35, v74, v75);

  (*(v87 + 8))(v37, v89);
  (*(v78 + 8))(v31, v86);
  v39 = v81;
  (*(v72 + 8))(v23, v85);
  result = __swift_destroy_boxed_opaque_existential_1(v93);
  v41 = 0;
  v42 = *(v38 + 64);
  v75 = v38 + 64;
  v80 = v38;
  v43 = 1 << *(v38 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v46 = (v43 + 63) >> 6;
  v78 = v83 + 16;
  v77 = v84 + 16;
  v89 = (v83 + 32);
  v76 = (v84 + 32);
  v86 = (v83 + 8);
  v87 = v46;
  v85 = (v84 + 8);
  if ((v44 & v42) != 0)
  {
    while (1)
    {
      v47 = v41;
LABEL_12:
      v50 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v51 = v50 | (v47 << 6);
      v52 = v80;
      v53 = v83;
      v54 = v90;
      v55 = v91;
      (*(v83 + 16))(v90, *(v80 + 6) + *(v83 + 72) * v51, v91);
      v56 = v84;
      v57 = *(v52 + 7) + *(v84 + 72) * v51;
      v58 = v79;
      v59 = v92;
      (*(v84 + 16))(v79, v57, v92);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v61 = *(v60 + 48);
      v62 = *(v53 + 32);
      v36 = v82;
      v62(v82, v54, v55);
      (*(v56 + 32))(v36 + v61, v58, v59);
      (*(*(v60 - 8) + 56))(v36, 0, 1, v60);
      v49 = v47;
      v39 = v81;
LABEL_13:
      sub_224A44E4C(v36, v39, &qword_27D6F4C60, &unk_224DBA3D0);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      if ((*(*(v63 - 8) + 48))(v39, 1, v63) == 1)
      {
      }

      v64 = *(v63 + 48);
      v65 = v90;
      v66 = v91;
      (*v89)(v90, v39, v91);
      v67 = *__swift_project_boxed_opaque_existential_1(v88, v88[3]);
      sub_224C96790(v65);
      (*v86)(v65, v66);
      result = (*v85)(v39 + v64, v92);
      v41 = v49;
      v46 = v87;
      if (!v45)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v46 <= v41 + 1)
    {
      v48 = v41 + 1;
    }

    else
    {
      v48 = v46;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v47 >= v46)
      {
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
        (*(*(v68 - 8) + 56))(v36, 1, 1, v68);
        v45 = 0;
        goto LABEL_13;
      }

      v45 = *(v75 + 8 * v47);
      ++v41;
      if (v45)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_224BD1960()
{
  v1 = v0;
  v2 = sub_224DAB258();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAC918();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_224DABCC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v23 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  MEMORY[0x22AA5ABC0](v13);
  v21 = v9;
  sub_224DAC838();
  v16 = MEMORY[0x277CF9880];
  sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880]);
  sub_224A43A4C(&unk_281350EB0, v16);
  v17 = MEMORY[0x277CF9A98];
  sub_224A43A4C(&qword_281350D60, MEMORY[0x277CF9A98]);
  sub_224A43A4C(&qword_281350D70, v17);
  sub_224DAC848();
  v18 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_224DAD248();
  return (*(v22 + 8))(v15, v21);
}

uint64_t sub_224BD1F1C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v3 = sub_224B3E18C(a1);
    swift_endAccess();

    if (v3)
    {

      sub_224DAB328();
    }
  }

  return result;
}

uint64_t sub_224BD1FCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v42 = &v37 - v2;
  v3 = sub_224DAEC58();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C88, &qword_224DBA438);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_224DAC918();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DABCC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v39 = v3;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C90, &qword_224DBA440);
    MEMORY[0x22AA5BB00](v22);
    v23 = v21[42];

    v24 = sub_224DAC168();

    if (!v24)
    {

      (*(v16 + 8))(v19, v15);
      (*(v11 + 56))(v9, 1, 1, v10);
      return sub_224A3311C(v9, &qword_27D6F4C88, &qword_224DBA438);
    }

    sub_224D5D5F8(v24, v9);

    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      (*(v16 + 8))(v19, v15);

      return sub_224A3311C(v9, &qword_27D6F4C88, &qword_224DBA438);
    }

    (*(v11 + 32))(v14, v9, v10);
    v25 = v21[6];
    __swift_project_boxed_opaque_existential_1(v21 + 2, v21[5]);
    v26 = *(v25 + 16);
    sub_224DACEB8();
    v27 = v42;
    v28 = v41;
    v29 = v39;
    (*(v41 + 56))(v42, 0, 1, v39);
    v30 = *(v28 + 32);
    v31 = v40;
    v30(v40, v27, v29);
    v38 = sub_224DABC78();
    v33 = v32;
    v42 = v32;
    v34 = sub_224DAEC48();
    v35 = v21[14];
    v43 = v38;
    v44 = v33;
    v45 = v34;
    v46 = v36;

    sub_224DAB348();

    (*(v41 + 8))(v31, v39);
    (*(v11 + 8))(v14, v10);
    (*(v16 + 8))(v19, v15);
  }

  return result;
}

uint64_t sub_224BD2518(uint64_t a1)
{
  v2 = sub_224DAB258();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C80, &qword_224DBA430);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_224DA9C68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_224A3796C(a1, v10, &qword_27D6F4C80, &qword_224DBA430);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return sub_224A3311C(v10, &qword_27D6F4C80, &qword_224DBA430);
    }

    else
    {
      (*(v12 + 32))(v15, v10, v11);
      v18 = sub_224DA9C58();
      *(v17 + 144) = v18;
      v19 = *(v17 + 128);
      v36 = v18;

      sub_224DAB348();

      (*(v3 + 16))(v6, v17 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v2);

      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v2;
        v23 = v22;
        v24 = swift_slowAlloc();
        v34 = v3;
        v25 = v24;
        v36 = v24;
        *v23 = 136315138;
        v26 = *(v17 + 144);
        v27 = sub_224DA9C78();
        v29 = sub_224A33F74(v27, v28, &v36);
        v33 = v20;
        v30 = v29;

        *(v23 + 4) = v30;
        v31 = v33;
        _os_log_impl(&dword_224A2F000, v33, v21, "Got subscription preference update to %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x22AA5EED0](v25, -1, -1);
        MEMORY[0x22AA5EED0](v23, -1, -1);

        (*(v34 + 8))(v6, v35);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

uint64_t *sub_224BD28E8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[34];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_224DAF838();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA5DCC0](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      sub_224DAB328();

      ++v4;
    }

    while (v6 != v3);
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  v7 = v1[12];

  v8 = v1[13];

  v9 = v1[14];

  v10 = v1[15];

  v11 = v1[16];

  v12 = v1[17];

  __swift_destroy_boxed_opaque_existential_1(v1 + 19);
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  __swift_destroy_boxed_opaque_existential_1(v1 + 29);
  v13 = v1[34];

  v14 = v1[35];

  v15 = v1[36];

  __swift_destroy_boxed_opaque_existential_1(v1 + 37);
  v16 = v1[42];

  v17 = v1[43];

  v18 = v1[44];

  v19 = v1[45];

  v20 = v1[46];

  v21 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger;
  v22 = sub_224DAB258();
  (*(*(v22 - 8) + 8))(v1 + v21, v22);
  v23 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_signposter;
  v24 = sub_224DAB218();
  (*(*(v24 - 8) + 8))(v1 + v23, v24);
  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor));
  v25 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_reloadSubscriptions);

  v26 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock);

  v27 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock_remoteEntries);

  __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore));

  sub_224A3311C(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_archiveVersionProvider, &unk_27D6F57B0, qword_224DB7B48);
  return v1;
}

uint64_t sub_224BD2BA0()
{
  sub_224BD28E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileActivityService()
{
  result = qword_281358508;
  if (!qword_281358508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BD2C4C()
{
  result = sub_224DAB258();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_224DAB218();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_224BD2DC8()
{
  v1 = v0;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v94 = *(v95 - 8);
  v2 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v86 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v86 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v87 = *(v88 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v86 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v90 = *(v91 - 8);
  v9 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v86 - v10;
  v113 = sub_224DAD9C8();
  v11 = *(v113 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_224DA9908();
  v14 = *(v111 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v111);
  v104 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C60, &unk_224DBA3D0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v86 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v86 - v26;
  v28 = sub_224DAF128();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v1;

  sub_224D8E744(0, 0, v27, &unk_224DBA3E8, v29);

  v110 = v1;
  v30 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore), *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore + 24));
  v31 = *v30;
  v32 = *(*v30 + 24);
  os_unfair_lock_lock(*(v32 + 16));
  swift_beginAccess();
  v33 = *(v31 + 32);
  v34 = v21;
  v35 = *(v32 + 16);

  os_unfair_lock_unlock(v35);
  v36 = 0;
  v37 = *(v33 + 64);
  v96 = v33 + 64;
  v107 = v33;
  v38 = 1 << *(v33 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v37;
  v41 = (v38 + 63) >> 6;
  v100 = v14 + 16;
  v99 = v11 + 16;
  v98 = v14 + 32;
  v42 = (v11 + 32);
  v105 = v14;
  v106 = v11;
  v108 = (v14 + 8);
  v109 = (v11 + 8);
  v102 = v23;
  v103 = v34;
  v101 = v41;
  v97 = (v11 + 32);
  if ((v39 & v37) != 0)
  {
    while (1)
    {
      v43 = v36;
LABEL_12:
      v46 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v47 = v46 | (v43 << 6);
      v48 = v107;
      v50 = v104;
      v49 = v105;
      v51 = v111;
      (*(v105 + 16))(v104, *(v107 + 48) + *(v105 + 72) * v47, v111);
      v52 = *(v48 + 56);
      v53 = v106;
      v54 = v112;
      v55 = v113;
      v106[2](v112, v52 + v106[9] * v47, v113);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      v57 = *(v56 + 48);
      v58 = *(v49 + 32);
      v34 = v103;
      v58(v103, v50, v51);
      v59 = v54;
      v42 = v97;
      (v53)[4]((v34 + v57), v59, v55);
      (*(*(v56 - 8) + 56))(v34, 0, 1, v56);
      v45 = v43;
      v41 = v101;
      v23 = v102;
LABEL_13:
      sub_224A44E4C(v34, v23, &qword_27D6F4C60, &unk_224DBA3D0);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
      if ((*(*(v60 - 8) + 48))(v23, 1, v60) == 1)
      {
        break;
      }

      v61 = v112;
      v62 = v113;
      (*v42)(v112, &v23[*(v60 + 48)], v113);
      sub_224BD4290(v61);
      (*v109)(v61, v62);
      (*v108)(v23, v111);
      v36 = v45;
      if (!v40)
      {
        goto LABEL_5;
      }
    }

    v64 = v110;
    v65 = v110[41];
    __swift_project_boxed_opaque_existential_1(v110 + 37, v110[40]);
    v114 = sub_224DAC688();
    v66 = v64[41];
    __swift_project_boxed_opaque_existential_1(v64 + 37, v64[40]);
    v115 = sub_224DAC6A8();
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
    v113 = MEMORY[0x277CBCD90];
    v112 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
    v67 = v86;
    sub_224DAB428();

    v114 = *(v64 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_receiveQueue);
    v68 = v114;
    v69 = sub_224DAF358();
    v70 = *(v69 - 8);
    v108 = *(v70 + 56);
    v109 = (v70 + 56);
    v71 = v92;
    (v108)(v92, 1, 1, v69);
    v107 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0);
    sub_224B67CF4();
    v106 = v68;
    v72 = v89;
    v73 = v88;
    sub_224DAB448();
    sub_224A3311C(v71, &qword_27D6F5090, &qword_224DB5C30);
    (*(v87 + 8))(v67, v73);
    swift_allocObject();
    swift_weakInit();
    sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0);
    v74 = v91;
    sub_224DAB488();

    (*(v90 + 8))(v72, v74);
    swift_beginAccess();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
    sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400);
    sub_224DAB318();
    swift_endAccess();

    v75 = v64[41];
    __swift_project_boxed_opaque_existential_1(v64 + 37, v64[40]);
    v114 = sub_224DAC698();
    v76 = v106;
    v115 = v106;
    (v108)(v71, 1, 1, v69);
    v77 = v93;
    sub_224DAB448();
    sub_224A3311C(v71, &qword_27D6F5090, &qword_224DB5C30);

    swift_allocObject();
    swift_weakInit();
    sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
    v78 = v95;
    sub_224DAB488();

    (*(v94 + 8))(v77, v78);
    swift_beginAccess();
    sub_224DAB318();
    swift_endAccess();

    v79 = *(v64 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor + 24);
    v80 = __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_dataProtectionMonitor), v79);
    v81 = *(v79 - 8);
    v82 = *(v81 + 64);
    MEMORY[0x28223BE20](v80);
    v84 = &v86 - v83;
    (*(v81 + 16))(&v86 - v83);
    v85 = sub_224DAD6D8();
    (*(v81 + 8))(v84, v79);
    v114 = v85;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5490, &unk_224DBA408);
    sub_224A33088(&qword_281351078, &unk_27D6F5490, &unk_224DBA408);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB318();
    swift_endAccess();
  }

  else
  {
LABEL_5:
    if (v41 <= v36 + 1)
    {
      v44 = v36 + 1;
    }

    else
    {
      v44 = v41;
    }

    v45 = v44 - 1;
    while (1)
    {
      v43 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v43 >= v41)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C68, &unk_224DBA3F0);
        (*(*(v63 - 8) + 56))(v34, 1, 1, v63);
        v40 = 0;
        goto LABEL_13;
      }

      v40 = *(v96 + 8 * v43);
      ++v36;
      if (v40)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_224BD3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_224DAD9C8();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B60, &qword_224DBB460);
  v4[7] = v9;
  v10 = *(v9 - 8);
  v4[8] = v10;
  v11 = *(v10 + 64) + 15;
  v4[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B68, &unk_224DB9C40);
  v4[10] = v12;
  v13 = *(v12 - 8);
  v4[11] = v13;
  v14 = *(v13 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224BD3E0C, 0, 0);
}

uint64_t sub_224BD3E0C()
{
  v2 = v0[8];
  v1 = v0[9];
  v16 = v0[7];
  v17 = v0[12];
  v3 = (v0[2] + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore);
  v4 = v3[3];
  v5 = __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  (*(v6 + 16))(v8, v5, v4);
  v9 = off_283831820;
  type metadata accessor for RemoteActivitySubscriptionCache();
  v9();
  (*(v6 + 8))(v8, v4);
  sub_224DAF158();
  (*(v2 + 8))(v1, v16);

  v10 = *(MEMORY[0x277D85798] + 4);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_224BD3FEC;
  v12 = v0[12];
  v13 = v0[10];
  v14 = v0[6];

  return MEMORY[0x2822003E8](v14, 0, 0, v13);
}

uint64_t sub_224BD3FEC()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224BD40E8, 0, 0);
}

uint64_t sub_224BD40E8()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[2];
    (*(v3 + 32))(v8, v1, v2);
    sub_224BD4290(v8);
    (*(v3 + 8))(v8, v2);
    v10 = *(MEMORY[0x277D85798] + 4);
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_224BD3FEC;
    v12 = v0[12];
    v13 = v0[10];
    v14 = v0[6];

    return MEMORY[0x2822003E8](v14, 0, 0, v13);
  }
}

uint64_t sub_224BD4290(uint64_t a1)
{
  v2 = sub_224DAD9C8();
  v3 = *(v2 - 8);
  v214 = v2;
  v215 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v208 = v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v209 = v170 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v177 = v170 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v179 = v170 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v170 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v195 = v170 - v17;
  MEMORY[0x28223BE20](v16);
  v194 = v170 - v18;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v188 = *(v189 - 8);
  v19 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v185 = v170 - v20;
  v187 = sub_224DAC918();
  v186 = *(v187 - 8);
  v21 = *(v186 + 64);
  v22 = MEMORY[0x28223BE20](v187);
  v183 = v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v191 = v170 - v24;
  v184 = sub_224DABCC8();
  v192 = *(v184 - 8);
  v25 = *(v192 + 64);
  v26 = MEMORY[0x28223BE20](v184);
  v190 = v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v200 = v170 - v28;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v206 = *(v203 - 8);
  v29 = *(v206 + 64);
  v30 = MEMORY[0x28223BE20](v203);
  v193 = v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v199 = v170 - v32;
  v202 = sub_224DAE7A8();
  v201 = *(v202 - 8);
  v33 = *(v201 + 64);
  v34 = MEMORY[0x28223BE20](v202);
  v182 = v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v205 = v170 - v36;
  v198 = sub_224DAEB68();
  v197 = *(v198 - 8);
  v37 = *(v197 + 64);
  v38 = MEMORY[0x28223BE20](v198);
  v181 = v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v204 = v170 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v207 = v170 - v43;
  v44 = sub_224DA9908();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = v170 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BD8, &qword_224DB9C20);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = v170 - v51;
  v216 = sub_224DAB258();
  v53 = *(v216 - 8);
  v54 = v53[8];
  v55 = MEMORY[0x28223BE20](v216);
  v211 = (v170 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = MEMORY[0x28223BE20](v55);
  v210 = v170 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v178 = v170 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v180 = v170 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v196 = v170 - v64;
  MEMORY[0x28223BE20](v63);
  v66 = v170 - v65;
  v67 = sub_224DAD918();
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67 - 8);
  v70 = v170 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = a1;
  sub_224DAD968();
  v71 = v45;
  if ((*(v45 + 48))(v70, 1, v44) != 1)
  {
    return sub_224BDC090(v70, MEMORY[0x277CF9D58]);
  }

  v170[1] = v15;
  v72 = v53[2];
  v171 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger;
  v73 = v213;
  v173 = v53 + 2;
  v172 = v72;
  v72(v66, v213 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v216);
  v74 = sub_224DAB228();
  v75 = sub_224DAF2A8();
  v76 = os_log_type_enabled(v74, v75);
  v174 = v44;
  if (v76)
  {
    v77 = v53;
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&dword_224A2F000, v74, v75, "Remote activity subscription changed; updating entries", v78, 2u);
    v79 = v78;
    v53 = v77;
    v44 = v174;
    MEMORY[0x22AA5EED0](v79, -1, -1);
  }

  v80 = v53[1];
  v176 = v53 + 1;
  v175 = v80;
  v80(v66, v216);
  sub_224BBF304(v73 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore, &v217);
  v81 = v218;
  v82 = v219;
  __swift_project_boxed_opaque_existential_1(&v217, v218);
  v83 = v48;
  v84 = v212;
  sub_224DAD988();
  sub_224D2F410(v83, v81, v82, v52);
  v85 = *(v71 + 8);
  v170[2] = v71 + 8;
  v85(v83, v44);
  v86 = v214;
  LODWORD(v81) = (*(v215 + 48))(v52, 1, v214);
  sub_224A3311C(v52, &qword_27D6F3BD8, &qword_224DB9C20);
  __swift_destroy_boxed_opaque_existential_1(&v217);
  if (v81 != 1)
  {
    v211 = v85;
    v102 = *(v73 + 352);

    v103 = sub_224DAC878();

    v104 = sub_224DAD938();
    if (*(v103 + 16))
    {
      v106 = sub_224A3A40C(v104, v105);
      v108 = v107;

      v89 = v209;
      if (v108)
      {
        v109 = *(v103 + 56);
        v110 = sub_224DA9AE8();
        v111 = *(v110 - 8);
        v112 = v111;
        v113 = v109 + *(v111 + 72) * v106;
        v114 = v207;
        (*(v111 + 16))(v207, v113, v110);

        (*(v112 + 56))(v114, 0, 1, v110);
        sub_224A3311C(v114, &qword_27D6F48D8, &unk_224DB8240);
        v115 = sub_224DAD938();
        v117 = v116;
        v118 = v204;
        sub_224DAD9B8();
        v119 = v205;
        sub_224DAD9A8();
        v120 = v199;
        sub_224DAD958();
        v121 = v200;
        sub_224BD7040(v115, v117, v200);

        (*(v197 + 16))(v181, v118, v198);
        (*(v201 + 16))(v182, v119, v202);
        v133 = v206;
        (*(v206 + 16))(v193, v120, v203);
        v134 = v191;
        sub_224DAC908();
        v135 = v184;
        (*(v192 + 16))(v190, v121, v184);
        v136 = v186;
        v137 = v187;
        (*(v186 + 16))(v183, v134, v187);
        v138 = MEMORY[0x277CF9880];
        v210 = sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880]);
        sub_224A43A4C(&unk_281350EB0, v138);
        v139 = MEMORY[0x277CF9A98];
        sub_224A43A4C(&qword_281350D60, MEMORY[0x277CF9A98]);
        sub_224A43A4C(&qword_281350D70, v139);
        v140 = v185;
        sub_224DAC848();
        v141 = sub_224BD746C(v140, 1);
        (*(v188 + 8))(v140, v189);
        (*(v136 + 8))(v191, v137);
        (*(v192 + 8))(v200, v135);
        (*(v133 + 8))(v199, v203);
        (*(v201 + 8))(v205, v202);
        (*(v197 + 8))(v204, v198);
        v86 = v214;
        if (v141)
        {
          v142 = v213;
          v143 = *(v213 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock);

          os_unfair_lock_lock(v143 + 4);
          v144 = v212;
          sub_224DAD988();
          swift_beginAccess();

          sub_224B088C8(v145, v83);
          swift_endAccess();
          os_unfair_lock_unlock(v143 + 4);

          v146 = v142 + v171;
          v147 = v180;
          v172(v180, v146, v216);
          v148 = v179;
          (*(v215 + 16))(v179, v144, v86);
          v149 = sub_224DAB228();
          v150 = v86;
          v151 = sub_224DAF2A8();
          if (os_log_type_enabled(v149, v151))
          {
            v152 = swift_slowAlloc();
            v153 = v83;
            v154 = swift_slowAlloc();
            v217 = v154;
            *v152 = 136446210;
            sub_224DAD988();
            sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0]);
            v155 = v174;
            v156 = sub_224DAFD28();
            v158 = v157;
            v211(v153, v155);
            (*(v215 + 8))(v148, v214);
            v159 = sub_224A33F74(v156, v158, &v217);

            *(v152 + 4) = v159;
            _os_log_impl(&dword_224A2F000, v149, v151, "Created entry for remote activity subscription %{public}s", v152, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v154);
            MEMORY[0x22AA5EED0](v154, -1, -1);
            MEMORY[0x22AA5EED0](v152, -1, -1);

            v100 = v180;
          }

          else
          {

            (*(v215 + 8))(v148, v150);
            v100 = v147;
          }

          return v175(v100, v216);
        }

        v88 = v178;
        v172(v178, v213 + v171, v216);
        v89 = v177;
        (*(v215 + 16))(v177, v212, v86);
        v90 = sub_224DAB228();
        v160 = sub_224DAF288();
        if (os_log_type_enabled(v90, v160))
        {
          v161 = swift_slowAlloc();
          v162 = v83;
          v163 = v86;
          v164 = swift_slowAlloc();
          v217 = v164;
          *v161 = 136446210;
          sub_224DAD988();
          sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0]);
          v165 = v174;
          v166 = sub_224DAFD28();
          v168 = v167;
          v211(v162, v165);
          (*(v215 + 8))(v89, v163);
          v169 = sub_224A33F74(v166, v168, &v217);

          *(v161 + 4) = v169;
          _os_log_impl(&dword_224A2F000, v90, v160, "Failed to create an entry for remote subscription %{public}s", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v164);
          MEMORY[0x22AA5EED0](v164, -1, -1);
          MEMORY[0x22AA5EED0](v161, -1, -1);

          v100 = v178;
          return v175(v100, v216);
        }

        goto LABEL_20;
      }
    }

    else
    {

      v89 = v209;
    }

    v122 = sub_224DA9AE8();
    v123 = v207;
    (*(*(v122 - 8) + 56))(v207, 1, 1, v122);
    sub_224A3311C(v123, &qword_27D6F48D8, &unk_224DB8240);
    v88 = v210;
    v172(v210, v73 + v171, v216);
    (*(v215 + 16))(v89, v84, v86);
    v90 = sub_224DAB228();
    v124 = sub_224DAF288();
    if (os_log_type_enabled(v90, v124))
    {
      v125 = swift_slowAlloc();
      v126 = v83;
      v127 = swift_slowAlloc();
      v217 = v127;
      *v125 = 136446210;
      sub_224DAD988();
      sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0]);
      v128 = v174;
      v129 = sub_224DAFD28();
      v131 = v130;
      v211(v126, v128);
      (*(v215 + 8))(v89, v86);
      v132 = sub_224A33F74(v129, v131, &v217);

      *(v125 + 4) = v132;
      _os_log_impl(&dword_224A2F000, v90, v124, "Failed to create an entry for remote subscription %{public}s as activity does not exist", v125, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x22AA5EED0](v127, -1, -1);
      MEMORY[0x22AA5EED0](v125, -1, -1);

      v100 = v210;
      return v175(v100, v216);
    }

LABEL_20:

    (*(v215 + 8))(v89, v86);
    v100 = v88;
    return v175(v100, v216);
  }

  v87 = *(v73 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock);

  os_unfair_lock_lock(v87 + 4);
  sub_224DAD988();
  swift_beginAccess();
  sub_224B088C8(0, v83);
  swift_endAccess();
  os_unfair_lock_unlock(v87 + 4);

  v88 = v211;
  v172(v211, v73 + v171, v216);
  v89 = v208;
  (*(v215 + 16))(v208, v84, v86);
  v90 = sub_224DAB228();
  v91 = sub_224DAF2A8();
  if (!os_log_type_enabled(v90, v91))
  {
    goto LABEL_20;
  }

  v92 = swift_slowAlloc();
  v93 = swift_slowAlloc();
  v217 = v93;
  *v92 = 136446210;
  sub_224DAD988();
  sub_224A43A4C(&qword_281351A00, MEMORY[0x277CC95F0]);
  v94 = v85;
  v95 = v174;
  v96 = sub_224DAFD28();
  v98 = v97;
  v94(v83, v95);
  (*(v215 + 8))(v89, v214);
  v99 = sub_224A33F74(v96, v98, &v217);

  *(v92 + 4) = v99;
  _os_log_impl(&dword_224A2F000, v90, v91, "Removed entry for remote activity subscription %{public}s", v92, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v93);
  MEMORY[0x22AA5EED0](v93, -1, -1);
  MEMORY[0x22AA5EED0](v92, -1, -1);

  v100 = v211;
  return v175(v100, v216);
}

uint64_t sub_224BD5FB0(uint64_t *a1)
{
  v2 = sub_224DACB98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(v7 + 16);
    if (v10)
    {
      v19 = MEMORY[0x277D84F90];
      sub_224DAF9E8();
      v11 = v7 + 32;
      do
      {
        sub_224A3317C(v11, v18);
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        sub_224DAE338();
        __swift_destroy_boxed_opaque_existential_1(v18);
        sub_224DAF9B8();
        v12 = *(v19 + 16);
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v11 += 40;
        --v10;
      }

      while (v10);
    }

    (*(v3 + 104))(v6, *MEMORY[0x277CF9B98], v2);
    v13 = sub_224BD9E7C();
    v14 = MEMORY[0x28223BE20](v13);
    *(&v17 - 4) = v9;
    *(&v17 - 3) = v14;
    *(&v17 - 2) = v6;
    LOBYTE(v18[0]) = 1;
    v15 = *(v9 + 336);
    MEMORY[0x28223BE20](v14);
    *(&v17 - 4) = v18;
    *(&v17 - 3) = sub_224BDC0F0;
    *(&v17 - 2) = v16;

    sub_224DAC128();

    if (v18[0])
    {
      __break(1u);
    }

    else
    {

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_224BD6254(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v83 = &v56 - v4;
  v84 = sub_224DAC918();
  v78 = *(v84 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x28223BE20](v84);
  v77 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C70, &qword_224DBA418);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = sub_224DABCC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v65 = result;
  if (!result)
  {
    return result;
  }

  v58 = *(v19 + 16);
  if (!v58)
  {
  }

  v21 = v19;
  v22 = 0;
  v59 = v19 + 32;
  v66 = (v15 + 8);
  v74 = v78 + 16;
  v75 = v13;
  v73 = v78 + 32;
  v82 = "Reloading all content: ";
  v81 = (v78 + 8);
  v76 = v11;
  v64 = v14;
  v63 = v15;
  v62 = v18;
  v57 = v19;
  v61 = v15 + 16;
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v60 = v22;
    sub_224A3317C(v59 + 40 * v22, v85);
    v24 = *(v65 + 336);

    v25 = sub_224DAC108();

    v70 = *(v25 + 16);
    if (v70)
    {
      break;
    }

LABEL_4:

    v23 = v60 + 1;
    result = __swift_destroy_boxed_opaque_existential_1(v85);
    v22 = v23;
    v21 = v57;
    if (v23 == v58)
    {
    }
  }

  result = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v69 = result;
  v26 = 0;
  v68 = v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v67 = v25;
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v27 = *(v15 + 72);
    v71 = v26;
    (*(v15 + 16))(v18, v68 + v27 * v26, v14);
    v28 = sub_224DABCA8();
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    v29 = sub_224DAE338();
    v30 = sub_224DAF6A8();

    if (v30)
    {
      v31 = *(v65 + 336);

      v32 = sub_224DAC168();

      if (v32)
      {
        break;
      }
    }

LABEL_9:
    v26 = v71 + 1;
    result = (*v66)(v18, v14);
    v25 = v67;
    if (v26 == v70)
    {
      goto LABEL_4;
    }
  }

  v33 = 0;
  v80 = v32;
  v34 = *(v32 + 64);
  v72 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v79 = v38;
  if ((v36 & v34) != 0)
  {
    while (1)
    {
      v39 = v33;
LABEL_25:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v80;
      v46 = v77;
      v45 = v78;
      v47 = v84;
      (*(v78 + 16))(v77, *(v80 + 48) + *(v78 + 72) * v43, v84);
      v48 = *(*(v44 + 56) + 8 * v43);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
      v50 = *(v49 + 48);
      v51 = *(v45 + 32);
      v11 = v76;
      v51(v76, v46, v47);
      *&v11[v50] = v48;
      (*(*(v49 - 8) + 56))(v11, 0, 1, v49);

      v41 = v39;
      v13 = v75;
      v38 = v79;
LABEL_26:
      sub_224A44E4C(v11, v13, &qword_27D6F4C70, &qword_224DBA418);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
      if ((*(*(v52 - 8) + 48))(v13, 1, v52) == 1)
      {
        break;
      }

      v53 = *&v13[*(v52 + 48)];
      v54 = sub_224DAEC58();
      (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
      sub_224DABFC8();
      sub_224DABF58();

      (*v81)(v13, v84);
      v33 = v41;
      if (!v37)
      {
        goto LABEL_18;
      }
    }

    v14 = v64;
    v15 = v63;
    v18 = v62;
    goto LABEL_9;
  }

LABEL_18:
  if (v38 <= v33 + 1)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
      (*(*(v55 - 8) + 56))(v11, 1, 1, v55);
      v37 = 0;
      goto LABEL_26;
    }

    v37 = *(v72 + 8 * v39);
    ++v33;
    if (v37)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_224BD69EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v77 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = &v53 - v6;
  v7 = sub_224DAC918();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v67 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BF8, &qword_224DBA320);
  v14 = *(*(v72 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v72);
  v65 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v53 - v17;
  v18 = *(v0 + 336);

  v19 = sub_224DAC008();

  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v63 = (v2 + 16);
  v64 = v8 + 16;
  v62 = v2 + 8;
  v54 = v8;
  v68 = v2;
  v60 = v2 + 32;
  v61 = (v8 + 8);
  v57 = v19;

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v56 = v20;
  v55 = v24;
  v66 = v13;
  v28 = v67;
  while (v23)
  {
LABEL_11:
    v58 = v26;
    v59 = v23;
    v30 = __clz(__rbit64(v23)) | (v26 << 6);
    v31 = v57;
    v32 = *(v57 + 48);
    v33 = sub_224DABCC8();
    v34 = *(v33 - 8);
    v35 = *(v34 + 16);
    v36 = v32 + *(v34 + 72) * v30;
    v37 = v73;
    v71 = v33;
    v35(v73, v36);
    v38 = *(*(v31 + 56) + 8 * v30);
    *(v37 + *(v72 + 48)) = v38;
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (v38 + ((*(v54 + 80) + 32) & ~*(v54 + 80)));
      v41 = *(v54 + 72);
      v69 = *(v54 + 16);
      v70 = v41;

      do
      {
        v75 = v39;
        v42 = v69;
        v69(v13, v40, v7);
        v43 = v65;
        sub_224A3796C(v73, v65, &qword_27D6F4BF8, &qword_224DBA320);
        v44 = *(v43 + *(v72 + 48));

        v42(v28, v13, v7);
        v45 = MEMORY[0x277CF9880];
        v46 = sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880]);
        v47 = v76;
        v74 = v46;
        sub_224A43A4C(&unk_281350EB0, v45);
        v48 = MEMORY[0x277CF9A98];
        sub_224A43A4C(&qword_281350D60, MEMORY[0x277CF9A98]);
        sub_224A43A4C(&qword_281350D70, v48);
        v49 = v77;
        sub_224DAC848();
        (*v63)(v49, v47, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_224AD97F4(0, v27[2] + 1, 1, v27);
        }

        v51 = v27[2];
        v50 = v27[3];
        v13 = v66;
        if (v51 >= v50 >> 1)
        {
          v27 = sub_224AD97F4(v50 > 1, v51 + 1, 1, v27);
        }

        v52 = v68;
        (*(v68 + 8))(v76, v1);
        (*v61)(v13, v7);
        v27[2] = v51 + 1;
        (*(v52 + 32))(v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v51, v77, v1);
        v40 += v70;
        v39 = v75 - 1;
      }

      while (v75 != 1);
    }

    else
    {
    }

    v23 = (v59 - 1) & v59;
    result = sub_224A3311C(v73, &qword_27D6F4BF8, &qword_224DBA320);
    v20 = v56;
    v24 = v55;
    v26 = v58;
  }

  while (1)
  {
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v29 >= v24)
    {

      return v27;
    }

    v23 = *(v20 + 8 * v29);
    ++v26;
    if (v23)
    {
      v26 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BD7040@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v35 - v9;
  v10 = sub_224DA9AE8();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAB258();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v14 + 16);
  v42 = v3;
  v18(v17, v3 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v13);

  v19 = sub_224DAB228();
  v20 = sub_224DAF278();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a2;
    v22 = a1;
    v23 = v21;
    v24 = swift_slowAlloc();
    v35 = v4;
    v25 = v24;
    v43 = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_224A33F74(v22, v38, &v43);
    _os_log_impl(&dword_224A2F000, v19, v20, "Looking for target for %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    v26 = v23;
    a1 = v22;
    a2 = v38;
    MEMORY[0x22AA5EED0](v26, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v27 = *(v42 + 352);

  v28 = v39;
  sub_224DAC868();

  v30 = v40;
  v29 = v41;
  if ((*(v40 + 48))(v28, 1, v41) == 1)
  {
    sub_224A3311C(v28, &qword_27D6F48D8, &unk_224DB8240);
    v31 = sub_224DABFE8();
    sub_224A43A4C(&qword_27D6F4C18, MEMORY[0x277CF9938]);
    swift_allocError();
    *v32 = a1;
    v32[1] = a2;
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277CF9928], v31);
    swift_willThrow();
  }

  else
  {
    v34 = v36;
    (*(v30 + 32))(v36, v28, v29);
    sub_224BD7B68(v37);
    return (*(v30 + 8))(v34, v29);
  }
}

uint64_t sub_224BD746C(uint64_t a1, int a2)
{
  v3 = v2;
  v28 = a2;
  v5 = sub_224DAC918();
  v26 = *(v5 - 8);
  v27 = v5;
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DABCC8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 336);

  v15 = sub_224DAC148();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  MEMORY[0x22AA5ABC0]();
  if (*(v15 + 16) && (v16 = sub_224B0B978(v13), (v17 & 1) != 0))
  {
    v25 = v3;
    v18 = *(*(v15 + 56) + 8 * v16);
    v19 = *(v10 + 8);

    v19(v13, v9);

    sub_224DAC838();
    if (*(v18 + 16))
    {
      v20 = sub_224B0B8A4(v8);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);
        v23 = *(v26 + 8);

        v23(v8, v27);

        return v22;
      }
    }

    (*(v26 + 8))(v8, v27);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  if (v28)
  {
    return sub_224BD822C(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_224BD770C()
{
  v1 = sub_224DABD68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = *(v0 + 336);

  sub_224DAC118();

  (*(v2 + 104))(v16, *MEMORY[0x277CF98B0], v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  v20 = *(v6 + 56);
  sub_224A3796C(v18, v9, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3796C(v16, &v9[v20], &qword_27D6F4C30, &unk_224DBB310);
  v21 = *(v2 + 48);
  if (v21(v9, 1, v1) != 1)
  {
    sub_224A3796C(v9, v28, &qword_27D6F4C30, &unk_224DBB310);
    if (v21(&v9[v20], 1, v1) != 1)
    {
      v23 = v27;
      (*(v2 + 32))(v27, &v9[v20], v1);
      sub_224A43A4C(&unk_281350E90, MEMORY[0x277CF98C8]);
      v24 = v28;
      v22 = sub_224DAEDD8();
      v25 = *(v2 + 8);
      v25(v23, v1);
      sub_224A3311C(v16, &qword_27D6F4C30, &unk_224DBB310);
      sub_224A3311C(v18, &qword_27D6F4C30, &unk_224DBB310);
      v25(v24, v1);
      sub_224A3311C(v9, &qword_27D6F4C30, &unk_224DBB310);
      return v22 & 1;
    }

    sub_224A3311C(v16, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3311C(v18, &qword_27D6F4C30, &unk_224DBB310);
    (*(v2 + 8))(v28, v1);
    goto LABEL_6;
  }

  sub_224A3311C(v16, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3311C(v18, &qword_27D6F4C30, &unk_224DBB310);
  if (v21(&v9[v20], 1, v1) != 1)
  {
LABEL_6:
    sub_224A3311C(v9, &qword_27D6F4C28, qword_224DBA340);
    v22 = 0;
    return v22 & 1;
  }

  sub_224A3311C(v9, &qword_27D6F4C30, &unk_224DBB310);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_224BD7B68@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v44 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_224DA9B38();
  v47 = *(v7 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v52 = *(v53 - 8);
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v44 - v11;
  v12 = sub_224DA9C18();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DA9C38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA9A98();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_224BDC090(v15, MEMORY[0x277CB9790]);
    v21 = sub_224DABFE8();
    sub_224A43A4C(&qword_27D6F4C18, MEMORY[0x277CF9938]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CF9920], v21);
    return swift_willThrow();
  }

  v45 = v17;
  v46 = v16;
  (*(v17 + 32))(v20, v15, v16);
  sub_224DA9AC8();
  if (v24)
  {
    sub_224DAF538();
    sub_224DA9C28();
    sub_224DA9FF8();
    sub_224DA9C28();
    sub_224DA9FF8();
    (*(v52 + 56))(v4, 0, 1, v53);
    v25 = sub_224DAF508();
    v27 = v45;
    v26 = v46;
LABEL_5:
    v28 = v25;
    sub_224DA9AA8();
    sub_224DA9AD8();
    sub_224DABC98();

    return (*(v27 + 8))(v20, v26);
  }

  sub_224DA9C28();
  v29 = v49;
  sub_224DA9FF8();
  v30 = v48;
  v31 = v48[33];
  __swift_project_boxed_opaque_existential_1(v48 + 29, v48[32]);
  v32 = sub_224DADA08();
  v33 = v51;
  if (v32)
  {
    sub_224DA9AA8();
    v34 = sub_224DACFC8();

    (*(v47 + 8))(v33, v7);
    if (v34)
    {
      v35 = [v34 extensionIdentity];

      (*(v52 + 8))(v29, v53);
      v25 = v35;
      v27 = v45;
      v26 = v46;
      goto LABEL_5;
    }
  }

  v36 = v30[33];
  __swift_project_boxed_opaque_existential_1(v30 + 29, v30[32]);
  if (sub_224DADA08())
  {
    v37 = sub_224DACFD8();
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = sub_224DABFE8();
  sub_224A43A4C(&qword_27D6F4C18, MEMORY[0x277CF9938]);
  swift_allocError();
  v40 = v39;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C20, &qword_224DBA338) + 48);
  v43 = v45;
  v42 = v46;
  (*(v45 + 16))(v40, v20, v46);
  *(v40 + v41) = v37;
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277CF9930], v38);
  swift_willThrow();
  (*(v52 + 8))(v29, v53);
  return (*(v43 + 8))(v20, v42);
}

uint64_t sub_224BD822C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAC918();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DABCC8();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  MEMORY[0x22AA5ABC0]();
  sub_224DAC838();
  v13 = *(v1 + 336);

  v14 = sub_224DAC148();

  v15 = *(v14 + 16);
  v29 = v5;
  if (v15)
  {
    v16 = sub_224B0B978(v12);
    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v16);

      if (*(v18 + 16))
      {
        v19 = sub_224B0B8A4(v8);
        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * v19);

LABEL_9:
          (*(v31 + 8))(v8, v5);
          (*(v9 + 8))(v12, v30);
          return v21;
        }
      }
    }
  }

  v22 = *(v3 + 336);

  sub_224DAD288();

  v23 = *(v3 + 352);

  sub_224DAC8B8();

  v25 = MEMORY[0x28223BE20](v24);
  *(&v29 - 4) = v12;
  *(&v29 - 3) = v8;
  *(&v29 - 2) = v3;
  *(&v29 - 1) = a1;
  v33 = 0;
  v26 = *(v3 + 336);
  MEMORY[0x28223BE20](v25);
  *(&v29 - 4) = &v33;
  *(&v29 - 3) = sub_224BDBF8C;
  *(&v29 - 2) = v27;

  sub_224DAC128();
  if (!v2)
  {

    v21 = v33;
    if (v33)
    {
      __swift_destroy_boxed_opaque_existential_1(v32);
      v5 = v29;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_224BD8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v74 = a6;
  v73 = a5;
  v63 = a4;
  v59 = sub_224DACB98();
  v70 = *(v59 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v59);
  v71 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB08();
  v67 = *(v11 - 8);
  v68 = v11;
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DACB28();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DACC88();
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v72 = *(v61 - 8);
  v22 = *(v72 + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v49 - v23;
  v62 = sub_224DAB258();
  v60 = *(v62 - 8);
  v24 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a3;
  v28 = a1;
  result = sub_224DAD208();
  v30 = v75;
  if (!v75)
  {
    v52 = v21;
    v53 = v17;
    v54 = v18;
    v55 = v27;
    v56 = a2;
    v57 = v28;
    v31 = v60;
    v32 = v62;
    (*(v60 + 16))(v26, v63 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v62);
    v33 = v58;
    v34 = v61;
    (*(v72 + 16))(v58, v73, v61);
    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v51 = v36;
      v38 = v37;
      v50 = swift_slowAlloc();
      v75 = v50;
      *v38 = 136446210;
      sub_224A33088(&qword_281350D78, &unk_27D6F4670, &unk_224DC0820);
      v39 = sub_224DAFD28();
      v41 = v40;
      (*(v72 + 8))(v33, v34);
      v42 = sub_224A33F74(v39, v41, &v75);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_224A2F000, v35, v51, "%{public}s Creating entry", v38, 0xCu);
      v43 = v50;
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x22AA5EED0](v43, -1, -1);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    else
    {

      (*(v72 + 8))(v33, v34);
    }

    (*(v31 + 8))(v26, v32);
    v45 = v70;
    v44 = v71;
    v46 = v59;
    v47 = v69;
    v30 = sub_224BD8C04(v73);
    v75 = v30;
    sub_224DAD1F8();
    (*(v64 + 104))(v53, *MEMORY[0x277CF9B50], v65);
    (*(v67 + 104))(v47, *MEMORY[0x277CF9B40], v68);
    (*(v45 + 104))(v44, *MEMORY[0x277CF9BF0], v46);
    sub_224DACC28();
    v48 = v52;
    sub_224DACC18();
    sub_224DAD218();
    result = (*(v66 + 8))(v48, v54);
  }

  *v74 = v30;
  return result;
}

uint64_t sub_224BD8C04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4668, &unk_224DB75E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - v9;
  v48 = sub_224DABCC8();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v48);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D8, &unk_224DB7630);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v49 = sub_224DAE918();
  v20 = *(v49 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v49);
  v41 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v47 = &v38 - v24;
  v25 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v43 = v7;
  v45 = a1;
  MEMORY[0x22AA5ABC0](v7);
  v26 = *(v25 + 16);
  sub_224DACE98();
  v39 = *(v10 + 8);
  v39(v15, v48);
  v27 = v49;
  (*(v20 + 56))(v19, 0, 1, v49);
  (*(v20 + 32))(v47, v19, v27);
  v28 = v40;
  v29 = v43;
  v30 = v45;
  MEMORY[0x22AA5ABC0](v43);
  v31 = v2[28];
  __swift_project_boxed_opaque_existential_1(v2 + 24, v2[27]);
  v32 = sub_224DABCA8();
  sub_224DADA58();

  v39(v28, v48);
  sub_224DABFD8();
  (*(v42 + 16))(v44, v30, v29);
  v33 = sub_224DAEC58();
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v34 = v47;
  v35 = v49;
  (*(v20 + 16))(v41, v47, v49);
  sub_224A3317C(v51, v50);
  v36 = sub_224DABF88();
  __swift_destroy_boxed_opaque_existential_1(v51);
  (*(v20 + 8))(v34, v35);
  return v36;
}

uint64_t sub_224BD9138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a1;
  v82 = a2;
  v6 = sub_224DACB08();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_224DACB28();
  v71 = *(v9 - 8);
  v72 = v9;
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v74 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_224DACC88();
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v12);
  v73 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_224DACB98();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v70 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v57[-v20];
  v22 = sub_224DABCC8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v57[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_224DAB258();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v57[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = v32;
  v67 = v31;
  (*(v32 + 16))(v30, v82 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger);
  v33 = *(v23 + 16);
  v62 = a3;
  v33(v26, a3, v22);
  v63 = v16;
  v34 = *(v16 + 16);
  v35 = v21;
  v36 = v21;
  v37 = a4;
  v82 = v15;
  v68 = v34;
  v69 = v16 + 16;
  v34(v36, a4, v15);
  v64 = v30;
  v38 = sub_224DAB228();
  v39 = sub_224DAF2A8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v59 = v38;
    v41 = v40;
    v60 = swift_slowAlloc();
    v80 = v60;
    *v41 = 136446466;
    sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880]);
    v58 = v39;
    v42 = sub_224DAFD28();
    v61 = a4;
    v44 = v43;
    (*(v23 + 8))(v26, v22);
    v45 = sub_224A33F74(v42, v44, &v80);
    v37 = v61;

    *(v41 + 4) = v45;
    *(v41 + 12) = 2082;
    sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v46 = v82;
    v47 = sub_224DAFD28();
    v49 = v48;
    (*(v63 + 8))(v35, v46);
    v50 = sub_224A33F74(v47, v49, &v80);

    *(v41 + 14) = v50;
    v51 = v59;
    _os_log_impl(&dword_224A2F000, v59, v58, "%{public}s Reloading all content: %{public}s", v41, 0x16u);
    v52 = v60;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v52, -1, -1);
    MEMORY[0x22AA5EED0](v41, -1, -1);
  }

  else
  {

    (*(v63 + 8))(v35, v82);
    (*(v23 + 8))(v26, v22);
  }

  (*(v66 + 8))(v64, v67);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_224DAF938();

  v80 = 0xD000000000000017;
  v81 = 0x8000000224DC9EB0;
  sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8]);
  v53 = v82;
  v54 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v54);

  sub_224DAD1E8();

  (*(v71 + 104))(v74, *MEMORY[0x277CF9B50], v72);
  (*(v77 + 104))(v79, *MEMORY[0x277CF9B40], v78);
  v68(v70, v37, v53);
  sub_224DACC28();
  v55 = v73;
  sub_224DACC18();
  sub_224DAD218();
  return (*(v75 + 8))(v55, v76);
}

uint64_t sub_224BD98D0(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr))
{
  sub_224A3317C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C38, &qword_224DBA3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C40, &qword_224DBA3A8);
  swift_dynamicCast();
  a3(&v9);

  if (!v3)
  {
    v7 = *a2;
    *a2 = v9;
  }

  return result;
}

uint64_t sub_224BD999C(uint64_t a1, _BYTE *a2, void (*a3)(uint64_t *__return_ptr))
{
  sub_224A3317C(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C38, &qword_224DBA3A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C40, &qword_224DBA3A8);
  swift_dynamicCast();
  a3(&v8);

  if (!v3)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_224BD9A5C()
{
  v1 = *(*v0 + 360);

  v2 = sub_224DADDD8();

  return v2;
}

uint64_t sub_224BD9ABC()
{
  v1 = v0;
  v2 = *(v0 + 336);

  v3 = sub_224DAC018();
  v5 = v4;

  v6 = *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock);

  os_unfair_lock_lock(v6 + 4);
  sub_224BDBD10(v18);
  os_unfair_lock_unlock(v6 + 4);
  v8 = v18[0];
  v7 = v18[1];

  v9 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore), *(v1 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_remoteActivitySubscriptionStore + 24));
  v10 = *v9;
  v11 = *(*v9 + 24);
  os_unfair_lock_lock(*(v11 + 16));
  swift_beginAccess();
  v12 = *(v10 + 32);
  v13 = *(v11 + 16);

  os_unfair_lock_unlock(v13);
  sub_224DA9908();
  sub_224DAD9C8();
  sub_224A43A4C(&qword_281351A18, MEMORY[0x277CC95F0]);
  v14 = sub_224DAECF8();
  v16 = v15;

  sub_224DAF938();
  MEMORY[0x22AA5D210](0x6C75666574617473, 0xEF203A65726F7453);
  MEMORY[0x22AA5D210](v3, v5);

  MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DC9E70);
  MEMORY[0x22AA5D210](v8, v7);

  MEMORY[0x22AA5D210](0xD000000000000016, 0x8000000224DC9E90);
  MEMORY[0x22AA5D210](v14, v16);

  return 0;
}

uint64_t sub_224BD9D14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC10ChronoCore21MobileActivityService_lock_remoteEntries;
  swift_beginAccess();
  v5 = *(a1 + v4);
  sub_224DA9908();
  sub_224DABFD8();
  sub_224A43A4C(&qword_281351A18, MEMORY[0x277CC95F0]);

  v6 = sub_224DAECF8();
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t sub_224BD9DF4()
{
  v2 = **v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4BF0, &qword_224DBA318);
  return sub_224DAEE28();
}

uint64_t sub_224BD9E7C()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;

  v9 = sub_224A3DADC(v8);

  v10 = *(v0 + 336);

  v11 = sub_224DAC108();

  v13 = *(v11 + 16);
  v45 = v9;
  v43 = v13;
  if (v13)
  {
    v14 = 0;
    v41 = v9 & 0xC000000000000001;
    v42 = v2 + 16;
    if (v9 < 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = v9 + 56;
    v39 = (v2 + 32);
    v34 = (v2 + 8);
    v35 = v15;
    v16 = MEMORY[0x277D84F90];
    v37 = v2;
    v38 = v7;
    v36 = v11;
    v33 = v1;
    while (1)
    {
      if (v14 >= *(v11 + 16))
      {
        __break(1u);
        return result;
      }

      v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v18 = *(v2 + 72);
      (*(v2 + 16))(v7, v11 + v17 + v18 * v14, v1);
      v19 = sub_224DABCA8();
      if (v41)
      {
        v20 = sub_224DAF888();

        if (v20)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v25 = v45;
        if (*(v45 + 16))
        {
          sub_224DAF538();
          v26 = *(v25 + 40);
          v27 = sub_224DAF698();
          v28 = -1 << *(v25 + 32);
          v29 = v27 & ~v28;
          if ((*(v44 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            while (1)
            {
              v31 = *(*(v25 + 48) + 8 * v29);
              v32 = sub_224DAF6A8();

              if (v32)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              v25 = v45;
              if (((*(v44 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v1 = v33;
            v7 = v38;
LABEL_12:
            v21 = *v39;
            (*v39)(v40, v7, v1);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = v16;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA608(0, *(v16 + 16) + 1, 1);
              v16 = v46;
            }

            v24 = *(v16 + 16);
            v23 = *(v16 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_224ADA608(v23 > 1, v24 + 1, 1);
              v16 = v46;
            }

            *(v16 + 16) = v24 + 1;
            result = (v21)(v16 + v17 + v24 * v18, v40, v1);
            v2 = v37;
            v7 = v38;
            v11 = v36;
            goto LABEL_8;
          }
        }

LABEL_6:

        v1 = v33;
        v2 = v37;
        v7 = v38;
        v11 = v36;
      }

      result = (*v34)(v7, v1);
LABEL_8:
      if (++v14 == v43)
      {
        goto LABEL_25;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_25:

  return v16;
}

uint64_t sub_224BDA208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a2;
  v59 = a1;
  v74 = sub_224DACB08();
  v64 = *(v74 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v74);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DACB28();
  v66 = *(v78 - 8);
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_224DACC88();
  v63 = *(v76 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DABCC8();
  v80 = *(v12 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x28223BE20](v12);
  v83 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DACB98();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v60 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  v22 = sub_224DAB258();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v23 + 16);
  v70 = v28;
  v27(v26, v79 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger);
  v29 = a4;
  v71 = *(v16 + 16);
  v72 = v16 + 16;
  v71(v21, a4, v15);

  v69 = v26;
  v30 = a3;
  v31 = sub_224DAB228();
  LODWORD(a4) = sub_224DAF2A8();

  LODWORD(v68) = a4;
  v32 = os_log_type_enabled(v31, a4);
  v79 = v12;
  v73 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v81 = v65;
    *v33 = 136446466;
    v34 = MEMORY[0x22AA5D380](v30, v12);
    v67 = v30;
    v36 = sub_224A33F74(v34, v35, &v81);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8]);
    v37 = sub_224DAFD28();
    v39 = v38;
    v40 = v15;
    (*(v16 + 8))(v21, v15);
    v41 = sub_224A33F74(v37, v39, &v81);

    *(v33 + 14) = v41;
    v30 = v67;
    _os_log_impl(&dword_224A2F000, v31, v68, "Reloading session platter for %{public}s due to %{public}s", v33, 0x16u);
    v42 = v65;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  else
  {

    v40 = v15;
    (*(v16 + 8))(v21, v15);
  }

  result = (*(v23 + 8))(v69, v70);
  v44 = *(v30 + 16);
  v45 = v59;
  v46 = v61;
  v47 = v30;
  v48 = v79;
  v49 = v83;
  v50 = v60;
  if (v44)
  {
    v70 = *(v80 + 16);
    v51 = v47 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v68 = *(v80 + 72);
    v69 = 0x8000000224DC9EF0;
    LODWORD(v67) = *MEMORY[0x277CF9B50];
    v66 += 104;
    LODWORD(v65) = *MEMORY[0x277CF9B40];
    v63 += 8;
    v64 += 104;
    v62 = (v80 + 8);
    v80 += 16;
    do
    {
      v70(v49, v51, v48);
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_224DAF938();

      v81 = 0xD00000000000001BLL;
      v82 = v69;
      sub_224A43A4C(&unk_281350D28, MEMORY[0x277CF9BF8]);
      v52 = v40;
      v53 = v46;
      v54 = v45;
      v55 = v73;
      v56 = sub_224DAFD28();
      MEMORY[0x22AA5D210](v56);

      sub_224DAD1E8();
      v49 = v83;

      (*v66)(v77, v67, v78);
      (*v64)(v53, v65, v74);
      v57 = v55;
      v45 = v54;
      v46 = v53;
      v40 = v52;
      v58 = v75;
      v71(v50, v57, v40);
      sub_224DACC48();
      sub_224DACC38();
      sub_224DAD218();
      v48 = v79;
      (*v63)(v58, v76);
      result = (*v62)(v49, v48);
      v51 += v68;
      --v44;
    }

    while (v44);
  }

  return result;
}

void sub_224BDAA08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = *(sub_224DABCC8() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      sub_224DAD228();
      v5 += v6;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_224BDAAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224BDAB18(a3);
  }

  return result;
}

uint64_t sub_224BDAB18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DABCC8();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v82 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB258();
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_224DAC918();
  v11 = *(v85 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v85);
  v80 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C70, &qword_224DBA418);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  v21 = *(v1 + 336);

  v22 = sub_224DAC168();

  if (!v22)
  {
    return result;
  }

  v68 = v4;
  v69 = v7;
  v70 = a1;
  v71 = v10;
  v72 = v2;
  v24 = 0;
  v81 = v22;
  v27 = *(v22 + 64);
  v26 = v22 + 64;
  v25 = v27;
  v28 = 1 << *(v26 - 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v25;
  v31 = (v28 + 63) >> 6;
  v77 = v11 + 2;
  v78 = v18;
  v75 = v26;
  v76 = v11 + 4;
  v83 = v11;
  v84 = (v11 + 1);
  v32 = v82;
  v33 = v11;
  v79 = v20;
  if ((v29 & v25) == 0)
  {
LABEL_6:
    if (v31 <= v24 + 1)
    {
      v35 = v24 + 1;
    }

    else
    {
      v35 = v31;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v34 >= v31)
      {
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
        (*(*(v46 - 8) + 56))(v18, 1, 1, v46);
        v30 = 0;
        goto LABEL_14;
      }

      v30 = *(v75 + 8 * v34);
      ++v24;
      if (v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  while (1)
  {
    v34 = v24;
LABEL_13:
    v37 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v38 = v37 | (v34 << 6);
    v39 = v81;
    v40 = v33;
    (v33[2])(v80, *(v81 + 48) + v33[9] * v38, v85);
    v41 = *(*(v39 + 56) + 8 * v38);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
    v43 = *(v42 + 48);
    v18 = v78;
    (v40[4])();
    *&v18[v43] = v41;
    (*(*(v42 - 8) + 56))(v18, 0, 1, v42);

    v36 = v34;
    v32 = v82;
    v20 = v79;
LABEL_14:
    sub_224A44E4C(v18, v20, &qword_27D6F4C70, &qword_224DBA418);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C78, &qword_224DBA420);
    if ((*(*(v44 - 8) + 48))(v20, 1, v44) == 1)
    {
    }

    v45 = *&v20[*(v44 + 48)];
    if ((sub_224DABFA8() & 1) == 0)
    {
      break;
    }

    (*v84)(v20, v85);

    v24 = v36;
    v33 = v83;
    if (!v30)
    {
      goto LABEL_6;
    }
  }

  v47 = v74;
  v48 = v69;
  (*(v74 + 16))(v71, v72 + OBJC_IVAR____TtC10ChronoCore21MobileActivityService_logger, v69);
  v49 = v73;
  v50 = v70;
  v51 = v68;
  (*(v73 + 16))(v32, v70, v68);
  v52 = v32;
  v53 = sub_224DAB228();
  v54 = sub_224DAF2A8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v86[0] = v83;
    *v55 = 136446210;
    sub_224A43A4C(&qword_281350EA0, MEMORY[0x277CF9880]);
    LODWORD(v82) = v54;
    v56 = sub_224DAFD28();
    v57 = v47;
    v59 = v58;
    (*(v49 + 8))(v52, v51);
    v60 = sub_224A33F74(v56, v59, v86);

    *(v55 + 4) = v60;
    v61 = v55;
    _os_log_impl(&dword_224A2F000, v53, v82, "Reloading session platter for %{public}s because environment no longer matches.", v55, 0xCu);
    v62 = v83;
    __swift_destroy_boxed_opaque_existential_1(v83);
    v50 = v70;
    MEMORY[0x22AA5EED0](v62, -1, -1);
    MEMORY[0x22AA5EED0](v61, -1, -1);

    (*(v57 + 8))(v71, v69);
  }

  else
  {

    (*(v49 + 8))(v52, v51);
    (*(v47 + 8))(v71, v48);
  }

  v63 = (*v84)(v20, v85);
  v64 = MEMORY[0x28223BE20](v63);
  *(&v67 - 2) = v50;
  LOBYTE(v86[0]) = 1;
  v65 = *(v72 + 336);
  MEMORY[0x28223BE20](v64);
  *(&v67 - 4) = v86;
  *(&v67 - 3) = sub_224BDC2BC;
  *(&v67 - 2) = v66;

  sub_224DAC128();

  if (v86[0])
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_224BDB2EC()
{
  v0 = sub_224DACB98();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  MEMORY[0x28223BE20](v0);
  v20 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DACB08();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB28();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DACC88();
  v12 = *(v18 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v18);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAD1E8();
  (*(v8 + 104))(v11, *MEMORY[0x277CF9B50], v7);
  (*(v3 + 104))(v6, *MEMORY[0x277CF9B40], v19);
  (*(v21 + 104))(v20, *MEMORY[0x277CF9BA8], v22);
  sub_224DACC48();
  sub_224DACC38();
  sub_224DAD218();
  return (*(v12 + 8))(v15, v18);
}

uint64_t sub_224BDB5F0()
{
  v1 = v0;
  v43 = sub_224DA9688();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v43);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v39 = v34 - v8;
  MEMORY[0x28223BE20](v7);
  v42 = v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v40 = v34 - v13;
  v14 = sub_224BD69EC();
  v15 = *(v14 + 16);
  if (v15)
  {
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v18 = v14 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v46 = *(v16 + 56);
    v47 = v17;
    v45 = (v16 - 8);
    v34[1] = v14;
    v35 = (v2 + 8);
    v38 = v2;
    v41 = (v2 + 32);
    v44 = MEMORY[0x277D84F90];
    v19 = v40;
    v36 = v10;
    v37 = v0;
    v48 = v16;
    v17(v40, v18, v10);
    while (1)
    {
      v20 = v6;
      v21 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      v22 = *(v21 + 16);
      v6 = v20;
      v23 = v49;
      sub_224DACEA8();
      if (v23)
      {

        (*v45)(v19, v10);
        v49 = 0;
      }

      else
      {
        v49 = 0;
        v24 = v39;
        sub_224DA9548();
        v25 = v43;
        (*v35)(v20, v43);
        (*v45)(v19, v10);
        v26 = *v41;
        (*v41)(v42, v24, v25);
        v27 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_224AD9420(0, v27[2] + 1, 1, v27);
        }

        v29 = v27[2];
        v28 = v27[3];
        v1 = v37;
        if (v29 >= v28 >> 1)
        {
          v27 = sub_224AD9420(v28 > 1, v29 + 1, 1, v27);
        }

        v27[2] = v29 + 1;
        v30 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v44 = v27;
        v26(v27 + v30 + *(v38 + 72) * v29, v42, v43);
        v6 = v20;
        v10 = v36;
        v19 = v40;
      }

      v18 += v46;
      if (!--v15)
      {
        break;
      }

      v47(v19, v18, v10);
    }

    v31 = v44;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  v32 = sub_224AE9040(v31);

  return v32;
}

uint64_t sub_224BDB9C0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v30 - v5;
  v7 = sub_224DA9688();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v36 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v35 = v30 - v13;
  MEMORY[0x28223BE20](v12);
  v34 = v30 - v14;
  v38 = MEMORY[0x277D84FA0];
  v15 = v0[41];
  __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
  v16 = sub_224DAC678();
  v17 = *(v16 + 16);
  if (v17)
  {
    v30[1] = v1;
    v30[2] = v16;
    v18 = v16 + 32;
    v19 = v8;
    v20 = (v8 + 48);
    v31 = (v19 + 8);
    v32 = (v19 + 32);
    v33 = v20;
    do
    {
      sub_224A3317C(v18, v37);
      v21 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      sub_224DAD258();
      __swift_destroy_boxed_opaque_existential_1(v37);
      if ((*v20)(v6, 1, v7) == 1)
      {
        sub_224A3311C(v6, &unk_27D6F4680, &unk_224DB4610);
      }

      else
      {
        v22 = v2;
        v23 = v7;
        v24 = v34;
        (*v32)(v34, v6, v23);
        v25 = v36;
        sub_224DA9548();
        v26 = v35;
        sub_224ADB390(v35, v25);
        v27 = *v31;
        (*v31)(v26, v23);
        v28 = v24;
        v7 = v23;
        v2 = v22;
        v20 = v33;
        v27(v28, v7);
      }

      v18 += 40;
      --v17;
    }

    while (v17);

    return v38;
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }
}

void *sub_224BDBD10@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_224BDBD54(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C00, &qword_224DBA328);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDBF38();
  sub_224DAFEF8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_224DAFC58();
    v11 = 1;
    sub_224DAFC58();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_224BDBF38()
{
  result = qword_27D6F4C08;
  if (!qword_27D6F4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4C08);
  }

  return result;
}

uint64_t sub_224BDBFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224BD3C44(a1, v4, v5, v6);
}

uint64_t sub_224BDC090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224BDC110(uint64_t a1)
{
  v3 = *(sub_224DABCC8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224BD0998(a1, v4, v5);
}

uint64_t objectdestroy_25Tm_1()
{
  v1 = sub_224DABCC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_224BDC248(uint64_t a1)
{
  v3 = *(sub_224DABCC8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224BDAAB8(a1, v4, v5);
}

unint64_t sub_224BDC308()
{
  result = qword_27D6F4CE0;
  if (!qword_27D6F4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4CE0);
  }

  return result;
}

unint64_t sub_224BDC360()
{
  result = qword_27D6F4CE8;
  if (!qword_27D6F4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4CE8);
  }

  return result;
}

unint64_t sub_224BDC3B8()
{
  result = qword_27D6F4CF0;
  if (!qword_27D6F4CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4CF0);
  }

  return result;
}

uint64_t sub_224BDC4C8()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_281364E20);
  __swift_project_value_buffer(v0, qword_281364E20);
  return sub_224DAB238();
}

uint64_t sub_224BDC544()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 16);
    }

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224AA686C(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAF1F8();
    v6 = v26;
    v5 = v27;
    v7 = v28;
    v8 = v29;
    v9 = v30;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_224A3B7E4();

      v19 = *(v1 + 16);

      v20 = *(v1 + 24);

      v21 = *(v1 + 32);
      swift_unknownObjectRelease();
      v22 = *(v1 + 48);
      swift_unknownObjectRelease();

      v23 = *(v1 + 72);

      v24 = *(v1 + 80);

      return v1;
    }

    while (1)
    {
      sub_224DAB328();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BDC7A8()
{
  sub_224BDC544();

  return swift_deallocClassInstance();
}

void sub_224BDC800()
{
  v0 = sub_224DA9A08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_224DA99E8();
  v6 = sub_224DA99D8();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_28135C428 = v5;
}

uint64_t sub_224BDC90C(void (**a1)(char *, uint64_t), void *a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v67 = a5;
  v68 = a2;
  ObjectType = a4;
  v69 = a3;
  v70 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v59 - v8;
  v72 = sub_224DAF3B8();
  v61 = *(v72 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x28223BE20](v72);
  v63 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v60 = *(v71 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v71);
  v62 = &v59 - v12;
  v66 = sub_224DAF3C8();
  v13 = *(v66 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DAF318();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_224DAB848();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v74 = v5;
  *(v5 + 16) = MEMORY[0x277D84FA0];
  v21 = (v5 + 16);
  v22 = sub_224AC319C();
  sub_224DAB7E8();
  aBlock = MEMORY[0x277D84F90];
  sub_224AA686C(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  v23 = v68;
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  v24 = v22;
  sub_224DAF788();
  (*(v13 + 104))(v65, *MEMORY[0x277D85260], v66);
  v25 = v67;
  v26 = sub_224DAF418();
  v27 = v69;
  v21[6] = v26;
  v21[7] = 0;
  type metadata accessor for UnfairLock();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *v29 = 0;
  *(v28 + 16) = v29;
  v21[8] = v28;
  v21[3] = v23;
  v21[4] = v27;
  v21[5] = ObjectType;
  v30 = v70;
  v21[1] = v25;
  v21[2] = v30;
  if (v30)
  {
    ObjectType = swift_getObjectType();
    v31 = swift_allocObject();
    v32 = v74;
    swift_weakInit();
    v33 = v23[2];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v33(sub_224BDD2D8, v31, ObjectType, v23);

    v27 = *(v32 + 48);
  }

  else
  {
    swift_unknownObjectRetain();

    v32 = v74;
  }

  ObjectType = v24;
  v34 = v75;
  if (v27)
  {
    v35 = *(v32 + 56);
    v36 = swift_getObjectType();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v25;
    v39 = *(v35 + 16);
    swift_unknownObjectRetain();

    v39(sub_224AA53B0, v37, v36, v35);
    v25 = v38;
    swift_unknownObjectRelease();
  }

  v40 = *(v25 + 16);
  if (v40)
  {
    v41 = v25 + 32;
    v70 = (v61 + 8);
    v68 = v21;
    v69 = (v60 + 8);
    v42 = v63;
    v43 = v62;
    v44 = v74;
    do
    {
      sub_224A3317C(v41, &aBlock);
      v45 = v79;
      v46 = v80;
      __swift_project_boxed_opaque_existential_1(&aBlock, v79);
      v47 = (*(v46 + 1))(v45, v46);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      v82 = v47;
      sub_224DAF368();
      v83 = *(v44 + 64);
      v48 = v83;
      v49 = sub_224DAF358();
      (*(*(v49 - 8) + 56))(v34, 1, 1, v49);
      v50 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
      sub_224AA686C(&qword_281350A80, sub_224AC319C);
      v34 = v75;
      sub_224DAB468();
      sub_224A3311C(v34, &qword_27D6F5090, &qword_224DB5C30);

      (*v70)(v42, v72);

      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = sub_224A961A0;
      *(v52 + 24) = v51;
      sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450);
      v53 = v71;
      sub_224DAB488();

      (*v69)(v43, v53);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();

      v41 += 40;
      --v40;
    }

    while (v40);

    v32 = v74;
  }

  else
  {
  }

  sub_224A962BC();
  v54 = sub_224DAF3D8();
  v80 = sub_224BDC538;
  v81 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_224A6B208;
  v79 = &block_descriptor_25;
  v55 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v54, v55);
  _Block_release(v55);

  v56 = sub_224DAF3D8();
  v80 = sub_224A6B268;
  v81 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_224A6B208;
  v79 = &block_descriptor_18;
  v57 = _Block_copy(&aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v56, v57);
  _Block_release(v57);

  return v32;
}

void sub_224BDD320()
{
  sub_224BDD38C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_224BDD38C()
{
  if (!qword_281351A28)
  {
    sub_224DA9878();
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_281351A28);
    }
  }
}

uint64_t sub_224BDD3EC()
{
  if (*v0)
  {
    result = 0x656C61636F6CLL;
  }

  else
  {
    result = 0x6F6973726556736FLL;
  }

  *v0;
  return result;
}

uint64_t sub_224BDD428()
{
  sub_224DAF938();

  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = 7104878;
    v2 = 0xE300000000000000;
  }

  MEMORY[0x22AA5D210](v1, v2);

  MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DCA0A0);
  if (v0[1])
  {
    v3 = *v0;
    v4 = v0[1];
  }

  else
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  MEMORY[0x22AA5D210](v3, v4);

  MEMORY[0x22AA5D210](0x656C61636F6C202CLL, 0xEA0000000000203ALL);
  MEMORY[0x22AA5D210](v0[4], v0[5]);
  MEMORY[0x22AA5D210](41, 0xE100000000000000);
  return 0x6E6F697372657628;
}

uint64_t sub_224BDD568(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D10, &qword_224DBA980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDE3DC();
  sub_224DAFF08();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_224DAFCA8();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_224DAFCA8();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_224DAFCC8();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_224BDD708()
{
  v1 = 0x65566D6574737973;
  if (*v0 != 1)
  {
    v1 = 0x6F4C6D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_224BDD77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_224BDE0A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_224BDD7B0(uint64_t a1)
{
  v2 = sub_224BDE3DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224BDD7EC(uint64_t a1)
{
  v2 = sub_224BDE3DC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_224BDD828@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_224BDE1D8(a1, v6);
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

uint64_t sub_224BDD884(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  if (v5)
  {
    if (!v10 || (a1[2] != a2[2] || v5 != v10) && (sub_224DAFD88() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4)
  {
    if (v8 && (v3 == v9 && v4 == v8 || (sub_224DAFD88() & 1) != 0))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_13:
  if (v6 == v11 && v7 == v12)
  {
    return 1;
  }

  return sub_224DAFD88();
}

void *sub_224BDD99C(void *a1, _OWORD *a2)
{
  v3 = v2;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 16) = a1;
  v4 = a2[1];
  *(v2 + 24) = *a2;
  *(v2 + 40) = v4;
  *(v2 + 56) = a2[2];
  v5 = a1;
  v6 = sub_224DAEDE8();
  v7 = [v5 objectForKey_];

  if (v7)
  {
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v25 = v31;
  v26 = v32;
  if (*(&v32 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = sub_224DA92F8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      sub_224DA92E8();
      sub_224BDEEC0();
      sub_224DA92D8();

      sub_224A78024(v29, v30);
      v24 = v26;
      v11 = v27;
      v12 = v28;

      v13 = v3[9];
      v14 = v3[10];
      v15 = v3[11];
      v16 = v3[12];
      v17 = v3[13];
      v18 = v3[14];
      *(v3 + 9) = v25;
      *(v3 + 11) = v24;
      v3[13] = v11;
      v3[14] = v12;
      sub_224BDE484(v13, v14, v15, v16, v17, v18);
      if (v3[14])
      {
        v20 = v3[11];
        v19 = v3[12];
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v22 = v3[4];
      v3[3] = v20;
      v3[4] = v21;
    }

    else
    {
    }
  }

  else
  {

    sub_224A3311C(&v25, &qword_27D6F4760, &unk_224DB3680);
  }

  return v3;
}

uint64_t sub_224BDDBC8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_2813513F8 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281364D00);
  v4 = sub_224DAB228();
  v5 = sub_224DAF2A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_224A2F000, v4, v5, "Migration completion. Saving new migration state.", v6, 2u);
    MEMORY[0x22AA5EED0](v6, -1, -1);
  }

  result = sub_224BDDCCC();
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_224BDDCCC()
{
  v1 = sub_224DA9328();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_224DA9318();
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 48);
  v14 = *(v0 + 64);
  sub_224BDE430();

  v4 = sub_224DA9308();
  v6 = v5;

  v7 = *(v0 + 16);
  v8 = sub_224DA96B8();
  v9 = sub_224DAEDE8();
  [v7 setObject:v8 forKey:v9];

  return sub_224A78024(v4, v6);
}

uint64_t sub_224BDDE4C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);

  sub_224BDE484(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));

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

uint64_t sub_224BDDEFC(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

char *sub_224BDDF58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[5];
  if (!v5)
  {
    return &unk_2838284C0;
  }

  v6 = a1[3];
  v7 = a1[4];
  if (a3)
  {
    if (v6)
    {
      if (a1[2] == a2 && v6 == a3)
      {
        goto LABEL_9;
      }

      v9 = a4;
      v10 = a5;
      v11 = sub_224DAFD88();
      a4 = v9;
      a5 = v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }
  }

  else if (!v6)
  {
LABEL_9:
    v12 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  v13 = 0;
  v12 = &unk_283828470;
LABEL_13:
  if (v7 != a4 || v5 != a5)
  {
    v15 = sub_224DAFD88();
    v16 = &unk_283828498;
    if (v15)
    {
      v16 = v12;
    }

    if ((v13 | v15))
    {
      return v16;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_224AD9818(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_224AD9818((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v12[v18 + 32] = 1;
    }
  }

  return v12;
}

uint64_t sub_224BDE0A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000224DCA0C0 == a2 || (sub_224DAFD88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (sub_224DAFD88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4C6D6574737973 && a2 == 0xEC000000656C6163)
  {

    return 2;
  }

  else
  {
    v5 = sub_224DAFD88();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_224BDE1D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D08, &qword_224DBA978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BDE3DC();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_224DAFC28();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v14 = sub_224DAFC28();
  v16 = v15;
  v23 = v14;
  v25 = 2;
  v17 = sub_224DAFC58();
  v18 = v9;
  v20 = v19;
  (*(v6 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v16;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

unint64_t sub_224BDE3DC()
{
  result = qword_28135B7C0;
  if (!qword_28135B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7C0);
  }

  return result;
}

unint64_t sub_224BDE430()
{
  result = qword_27D6F4D18;
  if (!qword_27D6F4D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4D18);
  }

  return result;
}

uint64_t sub_224BDE484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_224BDE4D4()
{
  v0 = sub_224DA9938();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [objc_allocWithZone(MEMORY[0x277CF0BB0]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringRepresentation];

    v9 = sub_224DAEE18();
    v11 = v10;
  }

  else
  {
    v11 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  sub_224DA9928();
  v12 = sub_224DA9918();
  v14 = v13;
  (*(v1 + 8))(v4, v0);
  v17 = 0uLL;
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v21 = v14;
  type metadata accessor for MigrationService();
  v15 = swift_allocObject();
  sub_224BDD99C(v5, &v17);
  return v15;
}

void sub_224BDE670(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4)
{
  v73 = a4;
  v76 = a2;
  v77 = a1;
  v5 = type metadata accessor for FileReaperScenario(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v75 = a3;
  v9 = *(a3 + 40);
  v8 = (a3 + 40);
  v10 = *(v8 - 1);
  v11 = *(v8 + 1);
  v12 = *(v8 + 2);
  v13 = *(v8 + 3);
  v14 = v8[3];
  v87[0] = v8[2];
  v87[1] = v14;
  v87[2] = v8[4];

  sub_224A3796C(v87, &v83, &qword_27D6F4D20, qword_224DBA988);
  v15 = sub_224BDDF58(v87, v9, v11, v12, v13);
  sub_224A3311C(v87, &qword_27D6F4D20, qword_224DBA988);

  if (v15)
  {
    v16 = *(v15 + 2);
    if (v16)
    {
      if (qword_2813513F8 != -1)
      {
        swift_once();
      }

      v17 = sub_224DAB258();
      __swift_project_value_buffer(v17, qword_281364D00);
      v18 = v75;

      v19 = sub_224DAB228();
      v20 = sub_224DAF2A8();

      v21 = os_log_type_enabled(v19, v20);
      v72 = v15;
      if (v21)
      {
        v69 = v20;
        v70 = v19;
        v67 = v8 - 1;
        v22 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v78[0] = v68;
        *&v71 = v22;
        *v22 = 136446722;
        v23 = *(v18 + 112);
        if (v23)
        {
          v24 = *(v18 + 72);
          v25 = *(v18 + 96);
          v84 = *(v18 + 80);
          v85 = v25;
          v83 = v24;
          v86 = v23;

          v26 = sub_224BDD428();
          v28 = v27;
        }

        else
        {
          v28 = 0xE300000000000000;
          v26 = 7104878;
        }

        v33 = sub_224A33F74(v26, v28, v78);

        v34 = v71;
        *(v71 + 4) = v33;
        *(v34 + 12) = 2082;
        v35 = v67[1];
        v80 = *v67;
        v81 = v35;
        v82 = v67[2];
        v36 = *v8;
        v88 = v80;
        v89 = v36;
        v90[0] = v8[1];
        sub_224A3796C(&v88, v79, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224A3796C(&v89, v79, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224BDEE64(v90, v79);
        v37 = sub_224BDD428();
        v39 = v38;
        sub_224A3311C(&v88, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224A3311C(&v89, &qword_27D6F4D30, &qword_224DBA9F0);
        sub_224BCA6B4(v90);
        v40 = sub_224A33F74(v37, v39, v78);

        *(v34 + 14) = v40;
        *(v34 + 22) = 2080;
        v79[0] = MEMORY[0x277D84F90];
        sub_224A3DFD8(0, v16, 0);
        v41 = v79[0];
        v42 = v72 + 32;
        v43 = *(v79[0] + 16);
        v44 = 16 * v43;
        v45 = 0x656C61636F6CLL;
        do
        {
          if (*v42)
          {
            v46 = v45;
          }

          else
          {
            v46 = 0x6F6973726556736FLL;
          }

          if (*v42)
          {
            v47 = 0xE600000000000000;
          }

          else
          {
            v47 = 0xE90000000000006ELL;
          }

          v79[0] = v41;
          v48 = *(v41 + 24);
          v49 = v43 + 1;
          if (v43 >= v48 >> 1)
          {
            v51 = v45;
            sub_224A3DFD8((v48 > 1), v43 + 1, 1);
            v45 = v51;
            v41 = v79[0];
          }

          *(v41 + 16) = v49;
          v50 = v41 + v44;
          *(v50 + 32) = v46;
          *(v50 + 40) = v47;
          v44 += 16;
          ++v42;
          v43 = v49;
          --v16;
        }

        while (v16);
        v79[0] = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
        sub_224A6B84C();
        v52 = sub_224DAEDA8();
        v54 = v53;

        v55 = sub_224A33F74(v52, v54, v78);

        v56 = v71;
        *(v71 + 24) = v55;
        v57 = v70;
        _os_log_impl(&dword_224A2F000, v70, v69, "Migration required from state: %{public}s to state: %{public}s for reason(s): [%s].  Migrating...", v56, 0x20u);
        v58 = v68;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v58, -1, -1);
        MEMORY[0x22AA5EED0](v56, -1, -1);

        v18 = v75;
      }

      else
      {
      }

      v59 = v77;
      sub_224A364AC(v77);
      BSDispatchQueueAssertMain();
      v60 = v73;
      sub_224A3317C((v73 + 59), v79);
      type metadata accessor for TimelineFilenameMigrationService();
      swift_initStackObject();
      sub_224BC4EEC(v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D28, &unk_224DBA9E0);
      inited = swift_initStackObject();
      inited[1] = xmmword_224DB8BC0;
      inited[2] = *(v60[21] + 16);
      v71 = *(v60[22] + 16);
      inited[3] = v71;
      v75 = *(v60[23] + 24);
      inited[4] = v75;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_224BC5468(inited);
      swift_setDeallocating();
      v62 = *(inited + 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
      swift_arrayDestroy();
      v63 = __swift_project_boxed_opaque_existential_1(v60 + 11, v60[14]);
      v64 = type metadata accessor for FileReaperProtectionConfiguration(0);
      v65 = v74;
      (*(*(v64 - 8) + 56))(v74, 1, 4, v64);
      v66 = *v63;
      sub_224CCD218(v65, 0, sub_224C3DF2C, 0);
      sub_224B7A89C(v65);
      sub_224BDDBC8(v18, v59);

      sub_224A3D418(v59);

      return;
    }
  }

  if (qword_2813513F8 != -1)
  {
    swift_once();
  }

  v29 = sub_224DAB258();
  __swift_project_value_buffer(v29, qword_281364D00);
  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_224A2F000, v30, v31, "No migration required.", v32, 2u);
    MEMORY[0x22AA5EED0](v32, -1, -1);
  }

  if (v77)
  {
    v77();
  }
}

unint64_t sub_224BDEEC0()
{
  result = qword_28135B7A8;
  if (!qword_28135B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7A8);
  }

  return result;
}

unint64_t sub_224BDEF38()
{
  result = qword_27D6F4D38;
  if (!qword_27D6F4D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4D38);
  }

  return result;
}

unint64_t sub_224BDEF90()
{
  result = qword_27D6F4D40;
  if (!qword_27D6F4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4D40);
  }

  return result;
}

unint64_t sub_224BDEFE8()
{
  result = qword_28135B7B0;
  if (!qword_28135B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7B0);
  }

  return result;
}

unint64_t sub_224BDF040()
{
  result = qword_28135B7B8;
  if (!qword_28135B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B7B8);
  }

  return result;
}

uint64_t sub_224BDF0D4@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_224DAA5C8();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_224BDF168(uint64_t a1)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v32 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v29 = result;
    v30 = v4;
    v31 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v32 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v5 = -1 << *(a1 + 32);
  result = sub_224DAF798();
  v6 = *(a1 + 36);
  v29 = result;
  v30 = v6;
  v31 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v29;
    v10 = v30;
    v12 = v31;
    sub_224CB9AD0(v29, v30, v31, a1);
    v14 = v13;
    v15 = *&v13[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue];
    BSDispatchQueueAssert();
    v16 = [*&v14[OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_connection] remoteProcess];

    sub_224DAF9B8();
    v17 = *(v32 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v27)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5218, &qword_224DBAF40);
      v8 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v8(v28, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_224A3E204(v29, v30, v31);
        return v32;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v18 = 1 << *(a1 + 32);
      if (v11 >= v18)
      {
        goto LABEL_32;
      }

      v19 = v11 >> 6;
      v20 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v20 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v11 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a1 + 64 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_224A3E204(v11, v10, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v11, v10, 0);
      }

LABEL_27:
      v29 = v18;
      v30 = v10;
      v31 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224BDF49C(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  v5 = -1 << *(a1 + 32);
  result = sub_224DAF798();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_224CB9AE8(v28, v29, v30, a1);
    v14 = v13;
    v15 = [v13 identity];

    sub_224DAF9B8();
    v16 = *(v31 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5220, qword_224DBAF48);
      v8 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_224A3E204(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_224A3E204(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_224BDF7B4()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224BDF8D4()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224BDF9F0()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224BDFB08()
{
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224BDFC24()
{
  v0 = sub_224CFAFFC();
  v1 = v0;
  v11 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
LABEL_18:
    v2 = sub_224DAF838();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_19:

    v11 = sub_224BF587C(v9);
    sub_224BF4A3C(&v11);

    return v11;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AA5DCC0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [v5 pairingState];
    if ((v8 - 1) >= 3)
    {
      break;
    }

    sub_224DAF9B8();
    v4 = *(v11 + 16);
    sub_224DAF9F8();
    sub_224DAFA08();
    sub_224DAF9C8();
LABEL_5:
    ++v3;
    if (v7 == v2)
    {
      goto LABEL_19;
    }
  }

  if (!v8 || v8 == 4)
  {

    goto LABEL_5;
  }

  sub_224DAFB58();
  __break(1u);

  __break(1u);
  return result;
}

id sub_224BDFE0C(void *a1, uint64_t a2)
{
  v4 = sub_224DAEDE8();
  [a1 setDomain_];

  v5 = [objc_opt_self() identifier];
  if (!v5)
  {
    sub_224DAEE18();
    v5 = sub_224DAEDE8();
  }

  [a1 setService_];

  return [a1 setDelegate_];
}

id sub_224BDFEE8()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ChronoServicesServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_224BE0180()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51A0, &qword_224DBAEC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v130 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51A8, &unk_224DBAED0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v130 - v10;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B0, &unk_224DB4030);
  v147 = *(v148 - 8);
  v12 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v130 - v13;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51B8, &qword_224DBAEE0);
  v150 = *(v151 - 8);
  v14 = *(v150 + 64);
  MEMORY[0x28223BE20](v151);
  v149 = &v130 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51C0, &qword_224DBAEE8);
  v153 = *(v16 - 8);
  v17 = *(v153 + 8);
  MEMORY[0x28223BE20](v16);
  v152 = &v130 - v18;
  v142 = sub_224DAA118();
  v141 = *(v142 - 8);
  v19 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v140 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51C8, &qword_224DBAEF0);
  v144 = *(v145 - 8);
  v21 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v130 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v130 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51D0, &qword_224DBAEF8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v32 = *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener];
  if (v32)
  {
    v136 = &v130 - v30;
    v137 = v31;
    v138 = v29;
    v131 = v8;
    v132 = v7;
    v133 = v6;
    v135 = v2;
    v33 = *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider], *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider + 24]);
    v154 = v32;
    v166 = sub_224DAA168();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
    sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
    sub_224DAB488();

    v34 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_subscriptions;
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v161 = v34;
    v35 = sub_224DAB258();
    __swift_project_value_buffer(v35, qword_281364E50);
    v36 = sub_224DAB228();
    v37 = sub_224DAF2A8();
    v38 = os_log_type_enabled(v36, v37);
    v134 = v3;
    v130 = v11;
    v139 = v16;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v166 = v40;
      *v39 = 136446210;
      v41 = [objc_opt_self() identifier];
      v42 = sub_224DAEE18();
      v44 = v43;

      v45 = sub_224A33F74(v42, v44, &v166);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_224A2F000, v36, v37, "%{public}s begin listening for connections", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x22AA5EED0](v40, -1, -1);
      MEMORY[0x22AA5EED0](v39, -1, -1);
    }

    [v154 activate];
    sub_224A3317C(&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService], &v166);
    v46 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    v47 = *(*(v46 + 8) + 8);
    v165 = sub_224DACA58();
    v155 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue;
    v164 = *&v1[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue];
    v48 = v164;
    v49 = sub_224DAF358();
    v50 = (*(v49 - 8) + 56);
    v156 = *v50;
    v157 = v49;
    v159 = v50;
    v156(v26, 1, 1);
    v51 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51D8, &unk_224DBE890);
    v52 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    sub_224A33088(&unk_281351000, &qword_27D6F51D8, &unk_224DBE890);
    v53 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
    v54 = v136;
    v158 = v53;
    sub_224DAB448();
    sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

    __swift_destroy_boxed_opaque_existential_1(&v166);
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v1;
    sub_224A33088(&qword_281351208, &qword_27D6F51D0, &qword_224DBAEF8);
    v57 = v1;
    v58 = v138;
    sub_224DAB488();

    (*(v137 + 8))(v54, v58);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    sub_224A3796C(&v57[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_iconStore], &v166, &unk_27D6F51E0, &qword_224DBAF10);
    v160 = v52;
    if (v167)
    {
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      v59 = v141;
      v60 = v140;
      v61 = v142;
      (*(v141 + 104))(v140, *MEMORY[0x277CFA008], v142);
      v62 = sub_224DA9F38();
      (*(v59 + 8))(v60, v61);
      v165 = v62;
      v63 = v155;
      v164 = *&v1[v155];
      v64 = v164;
      (v156)(v26, 1, 1, v157);
      v65 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5208, &unk_224DBAF30);
      sub_224A33088(&qword_281351050, &qword_27D6F5208, &unk_224DBAF30);
      v66 = v143;
      sub_224DAB448();
      sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

      __swift_destroy_boxed_opaque_existential_1(&v166);
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v68 = swift_allocObject();
      *(v68 + 16) = v67;
      *(v68 + 24) = v57;
      sub_224A33088(&qword_281351238, &qword_27D6F51C8, &qword_224DBAEF0);
      v69 = v57;
      v70 = v145;
      sub_224DAB488();

      (*(v144 + 8))(v66, v70);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {
      sub_224A3311C(&v166, &unk_27D6F51E0, &qword_224DBAF10);
      v63 = v155;
    }

    v80 = v156;
    v81 = *&v57[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService + 32];
    __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService], *&v57[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService + 24]);
    v82 = *(v81 + 16);
    v166 = sub_224DAD7A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
    sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30);
    sub_224A33088(&qword_281350CC8, &qword_27D6F50D8, &unk_224DBD6E0);
    v83 = v149;
    sub_224DAB478();

    v166 = *&v1[v63];
    v84 = v166;
    v80(v26, 1, 1, v157);
    sub_224A33088(&qword_2813513B0, &qword_27D6F51B8, &qword_224DBAEE0);
    v85 = v84;
    v86 = v152;
    v87 = v151;
    sub_224DAB448();
    sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

    (*(v150 + 8))(v83, v87);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_224A33088(&qword_2813511D8, &qword_27D6F51C0, &qword_224DBAEE8);
    v88 = v139;
    sub_224DAB488();

    (*(v153 + 1))(v86, v88);
    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v89 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService;
    swift_beginAccess();
    sub_224A3796C(&v57[v89], &v166, &unk_27D6F5050, &unk_224DBAE08);
    v90 = v167;
    v153 = v26;
    if (v167)
    {
      v91 = __swift_project_boxed_opaque_existential_1(&v166, v167);
      v152 = &v130;
      v92 = *(v90 - 8);
      v93 = *(v92 + 64);
      MEMORY[0x28223BE20](v91);
      v95 = (&v130 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v92 + 16))(v95);
      sub_224A3311C(&v166, &unk_27D6F5050, &unk_224DBAE08);
      v96 = *v95;
      v97 = sub_224CFA5B8();
      (*(v92 + 8))(v95, v90);
      v163 = *&v1[v63];
      v98 = v163;
      v164 = v97;
      v80(v26, 1, 1, v157);
      v99 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
      sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810);
      v100 = v146;
      sub_224DAB448();
      sub_224A3311C(v26, &qword_27D6F5090, &qword_224DB5C30);

      v101 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v102 = swift_allocObject();
      *(v102 + 16) = sub_224BFDD28;
      *(v102 + 24) = v101;
      sub_224A33088(&unk_2813511F0, &qword_27D6F51B0, &unk_224DB4030);
      v103 = v148;
      sub_224DAB488();

      (*(v147 + 8))(v100, v103);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {
      sub_224A3311C(&v166, &unk_27D6F5050, &unk_224DBAE08);
    }

    v104 = v157;
    sub_224A3796C(&v57[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetRelevanceService], &v166, &unk_27D6F4FB0, &unk_224DBADC8);
    if (v167)
    {
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      v105 = off_28382B340;
      type metadata accessor for WidgetRelevanceService();
      v106 = v105();
      v107 = v156;
      v163 = *&v1[v155];
      v108 = v163;
      v164 = v106;
      v109 = v153;
      v110 = v104;
      (v156)(v153, 1, 1, v104);
      v111 = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51F8, &unk_224DBAF20);
      sub_224A33088(&qword_281351180, &qword_27D6F51F8, &unk_224DBAF20);
      v112 = v130;
      sub_224DAB448();
      sub_224A3311C(v109, &qword_27D6F5090, &qword_224DB5C30);

      __swift_destroy_boxed_opaque_existential_1(&v166);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_224A33088(&qword_2813512C8, &qword_27D6F51A8, &unk_224DBAED0);
      v113 = v132;
      sub_224DAB488();

      (*(v131 + 8))(v112, v113);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {
      v110 = v104;
      sub_224A3311C(&v166, &unk_27D6F4FB0, &unk_224DBADC8);
      v107 = v156;
    }

    v114 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService;
    swift_beginAccess();
    sub_224A3796C(&v57[v114], &v166, &unk_27D6F4FD0, &qword_224DB75F0);
    v115 = v167;
    if (v167)
    {
      v116 = __swift_project_boxed_opaque_existential_1(&v166, v167);
      v117 = *(v115 - 8);
      v118 = *(v117 + 64);
      MEMORY[0x28223BE20](v116);
      v120 = (&v130 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v117 + 16))(v120);
      sub_224A3311C(&v166, &unk_27D6F4FD0, &qword_224DB75F0);
      v121 = *v120;
      v122 = sub_224BCE350();
      (*(v117 + 8))(v120, v115);
      v162 = *&v1[v155];
      v123 = v162;
      v163 = v122;
      v124 = v110;
      v125 = v153;
      v107(v153, 1, 1, v124);
      v126 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51F0, &qword_224DBAF18);
      sub_224A33088(&qword_281351188, &qword_27D6F51F0, &qword_224DBAF18);
      v127 = v133;
      sub_224DAB448();
      sub_224A3311C(v125, &qword_27D6F5090, &qword_224DB5C30);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_224A33088(&qword_2813512D0, &qword_27D6F51A0, &qword_224DBAEC8);
      v128 = v135;
      sub_224DAB488();

      (*(v134 + 8))(v127, v128);
      swift_beginAccess();
      sub_224DAB308();
      swift_endAccess();
    }

    else
    {

      sub_224A3311C(&v166, &unk_27D6F4FD0, &qword_224DB75F0);
    }
  }

  else
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v71 = sub_224DAB258();
    __swift_project_value_buffer(v71, qword_281364E50);
    v161 = sub_224DAB228();
    v72 = sub_224DAF298();
    if (os_log_type_enabled(v161, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v166 = v74;
      *v73 = 136446210;
      v75 = [objc_opt_self() identifier];
      v76 = sub_224DAEE18();
      v78 = v77;

      v79 = sub_224A33F74(v76, v78, &v166);

      *(v73 + 4) = v79;
      _os_log_impl(&dword_224A2F000, v161, v72, "%{public}s unable to start server; listener is nil", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x22AA5EED0](v74, -1, -1);
      MEMORY[0x22AA5EED0](v73, -1, -1);
    }

    else
    {
      v129 = v161;
    }
  }
}

void sub_224BE1AA4(_BYTE *a1)
{
  if (*a1 == 1)
  {
    if (qword_2813514B8 != -1)
    {
      swift_once();
    }

    v1 = sub_224DAB258();
    __swift_project_value_buffer(v1, qword_281364E50);
    oslog = sub_224DAB228();
    v2 = sub_224DAF2A8();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11 = v4;
      *v3 = 136446210;
      v5 = [objc_opt_self() identifier];
      v6 = sub_224DAEE18();
      v8 = v7;

      v9 = sub_224A33F74(v6, v8, &v11);

      *(v3 + 4) = v9;
      _os_log_impl(&dword_224A2F000, oslog, v2, "%{public}s notified of first unlock; adjusting responses", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      MEMORY[0x22AA5EED0](v4, -1, -1);
      MEMORY[0x22AA5EED0](v3, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_224BE1C50(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v144 = a4;
  v8 = 0;
  v148[5] = *MEMORY[0x277D85DE8];
  v9 = *(a5 + OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue);
  BSDispatchQueueAssert();
  v141 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v142 = a3;
  v143 = a1;
  v145 = 0;
  if ((isUniquelyReferenced_nonNull_native & 0xC000000000000001) == 0)
  {
    v35 = *(isUniquelyReferenced_nonNull_native + 32);
    v36 = v35 & 0x3F;
    v10 = ((1 << v35) + 63) >> 6;
    v37 = 8 * v10;

    if (v36 <= 0xD)
    {
      goto LABEL_25;
    }

    goto LABEL_118;
  }

  v10 = MEMORY[0x277D84FA0];
  v148[0] = MEMORY[0x277D84FA0];

  sub_224DAF7E8();
  v11 = sub_224DAF878();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for ChronoServicesClient();
    v13 = v12;
    v14 = &qword_27D6F3F98[13];
    a1 = -1;
    do
    {
      v146 = v13;
      swift_dynamicCast();
      v15 = *(v147 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue);
      BSDispatchQueueAssert();
      v16 = OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_serviceAssertionIDs;
      swift_beginAccess();
      v17 = *(v147 + v16);
      if (*(v17 + 16))
      {

        v18 = sub_224A5C3D0(1u);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);

          v21 = *(v20 + 16);

          if (v21)
          {
            v22 = v147;
            v23 = *(v10 + 16);
            if (*(v10 + 24) <= v23)
            {
              sub_224AE02E0(v23 + 1);
            }

            v10 = v148[0];
            v24 = *(v148[0] + 40);
            v25 = sub_224DAF698();
            v26 = v148[0] + 56;
            v27 = -1 << *(v148[0] + 32);
            v28 = v25 & ~v27;
            v29 = v28 >> 6;
            if (((-1 << v28) & ~*(v148[0] + 56 + 8 * (v28 >> 6))) != 0)
            {
              v30 = __clz(__rbit64((-1 << v28) & ~*(v148[0] + 56 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v31 = 0;
              v32 = (63 - v27) >> 6;
              do
              {
                if (++v29 == v32 && (v31 & 1) != 0)
                {
                  goto LABEL_111;
                }

                v33 = v29 == v32;
                if (v29 == v32)
                {
                  v29 = 0;
                }

                v31 |= v33;
                v34 = *(v26 + 8 * v29);
              }

              while (v34 == -1);
              v30 = __clz(__rbit64(~v34)) + (v29 << 6);
            }

            *(v26 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
            *(*(v10 + 48) + 8 * v30) = v22;
            ++*(v10 + 16);
            goto LABEL_6;
          }
        }

        else
        {
        }
      }

LABEL_6:
      v13 = sub_224DAF878();
    }

    while (v13);
  }

LABEL_44:
  a1 = v143;
  v14 = (v10 & 0xC000000000000001);
  if ((v10 & 0xC000000000000001) == 0)
  {
    goto LABEL_120;
  }

LABEL_45:
  if (!sub_224DAF838())
  {
    goto LABEL_121;
  }

LABEL_46:
  if (qword_2813514B8 != -1)
  {
    goto LABEL_116;
  }

LABEL_47:
  v60 = sub_224DAB258();
  __swift_project_value_buffer(v60, qword_281364E50);

  swift_bridgeObjectRetain_n();

  v61 = sub_224DAB228();
  v62 = sub_224DAF2A8();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v148[0] = v64;
    *v63 = 134350082;
    if (v14)
    {
      v65 = sub_224DAF838();
    }

    else
    {
      v65 = *(v10 + 16);
    }

    v70 = v141;
    *(v63 + 4) = v65;

    *(v63 + 12) = 2050;
    if (v70)
    {
      v71 = sub_224DAF838();
    }

    else
    {
      v71 = *(isUniquelyReferenced_nonNull_native + 16);
    }

    *(v63 + 14) = v71;

    *(v63 + 22) = 2050;
    v72 = v145;
    v73 = sub_224BDF49C(a1);
    if (v73 >> 62)
    {
      v74 = sub_224DAF838();
    }

    else
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v63 + 24) = v74;

    a1 = 2082;
    *(v63 + 32) = 2082;
    v75 = sub_224BDF168(v10);
    v145 = v72;
    v76 = sub_224A3B79C(0, &qword_281350AF0, 0x277CF0CD0);
    v77 = MEMORY[0x22AA5D380](v75, v76);
    v79 = v78;

    v80 = sub_224A33F74(v77, v79, v148);

    *(v63 + 34) = v80;
    *(v63 + 42) = 2082;
    *(v63 + 44) = sub_224A33F74(v142, v144, v148);
    _os_log_impl(&dword_224A2F000, v61, v62, "%{public}ld of %{public}ld clients subscribed to extension data %{public}ld: {\n%{public}s\n} - reason: %{public}s", v63, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v64, -1, -1);
    MEMORY[0x22AA5EED0](v63, -1, -1);

    if (!v14)
    {
      goto LABEL_59;
    }

LABEL_51:
    sub_224DAF7E8();
    type metadata accessor for ChronoServicesClient();
    sub_224A80F90(&qword_27D6F5210, type metadata accessor for ChronoServicesClient);
    sub_224DAF1F8();
    v10 = v148[0];
    v66 = v148[1];
    v67 = v148[2];
    v68 = v148[3];
    v69 = v148[4];
    goto LABEL_63;
  }

  swift_bridgeObjectRelease_n();
  if (v14)
  {
    goto LABEL_51;
  }

LABEL_59:
  v68 = 0;
  v81 = -1 << *(v10 + 32);
  v66 = v10 + 56;
  v67 = ~v81;
  v82 = -v81;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  else
  {
    v83 = -1;
  }

  v69 = v83 & *(v10 + 56);
LABEL_63:
  v139 = v67;
  isUniquelyReferenced_nonNull_native = (v67 + 64) >> 6;
  v14 = MEMORY[0x277D84F98];
  v140 = xmmword_224DB2780;
  v141 = v66;
  v142 = isUniquelyReferenced_nonNull_native;
  if ((v10 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v86 = v68;
      v87 = v69;
      v88 = v68;
      if (!v69)
      {
        break;
      }

LABEL_71:
      v89 = (v87 - 1) & v87;
      v90 = *(*(v10 + 48) + ((v88 << 9) | (8 * __clz(__rbit64(v87)))));
      if (!v90)
      {
        goto LABEL_98;
      }

LABEL_75:
      v144 = v89;
      v92 = v14[2];
      v93 = *(v90 + OBJC_IVAR____TtC10ChronoCoreP33_2559684BF6D015C60DA4DF344EC1B12920ChronoServicesClient__queue_providerOptions);
      v8 = v93;
      if (v92 && (v94 = sub_224B0BAE0(v93), (v95 & 1) != 0))
      {
        v147 = *(v14[7] + 8 * v94);

        v96 = v90;
        sub_224ADC20C(&v146, v96);

        a1 = v147;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146 = v14;
        v97 = sub_224B0BAE0(v8);
        v99 = v14[2];
        v100 = (v98 & 1) == 0;
        v59 = __OFADD__(v99, v100);
        v101 = v99 + v100;
        if (v59)
        {
LABEL_115:
          __break(1u);
LABEL_116:
          swift_once();
          goto LABEL_47;
        }

        v37 = v98;
        if (v14[3] >= v101)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v122 = v97;
            sub_224B27BB0();
            v97 = v122;
          }
        }

        else
        {
          sub_224B13884(v101, isUniquelyReferenced_nonNull_native);
          v97 = sub_224B0BAE0(v8);
          if ((v37 & 1) != (v102 & 1))
          {
            goto LABEL_125;
          }
        }

        isUniquelyReferenced_nonNull_native = v142;
        v14 = v146;
        if (v37)
        {
          v118 = v146[7];
          v119 = *(v118 + 8 * v97);
          *(v118 + 8 * v97) = a1;
        }

        else
        {
          v146[(v97 >> 6) + 8] |= 1 << v97;
          *(v14[6] + 8 * v97) = v8;
          *(v14[7] + 8 * v97) = a1;

          v120 = v14[2];
          v59 = __OFADD__(v120, 1);
          v121 = v120 + 1;
          if (v59)
          {
            __break(1u);
LABEL_118:
            isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
            if ((isStackAllocationSafe & 1) == 0)
            {
              v134 = swift_slowAlloc();
              v10 = sub_224BF57EC(v134, v10, isUniquelyReferenced_nonNull_native, sub_224BE29F8, 0);
              v145 = v8;
              MEMORY[0x22AA5EED0](v134, -1, -1);
              v14 = (v10 & 0xC000000000000001);
              if ((v10 & 0xC000000000000001) != 0)
              {
                goto LABEL_45;
              }

LABEL_120:
              if (!*(v10 + 16))
              {
LABEL_121:

LABEL_122:
                v135 = *MEMORY[0x277D85DE8];
                return result;
              }

              goto LABEL_46;
            }

LABEL_25:
            v137 = v10;
            v136 = &v136;
            MEMORY[0x28223BE20](isStackAllocationSafe);
            v138 = &v136 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
            bzero(v138, v37);
            v139 = 0;
            a1 = 0;
            v39 = isUniquelyReferenced_nonNull_native + 56;
            v40 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
            v41 = -1;
            if (v40 < 64)
            {
              v41 = ~(-1 << v40);
            }

            v42 = v41 & *(isUniquelyReferenced_nonNull_native + 56);
            v14 = ((v40 + 63) >> 6);
            v43 = &qword_27D6F3F98[13];
            v44 = &qword_27D6F3F98[13];
            *&v140 = isUniquelyReferenced_nonNull_native;
            while (v42)
            {
              v45 = __clz(__rbit64(v42));
              v42 &= v42 - 1;
LABEL_36:
              v10 = v45 | (a1 << 6);
              v48 = *(*(isUniquelyReferenced_nonNull_native + 48) + 8 * v10);
              v49 = *&v48[v43[477]];
              v50 = v48;
              BSDispatchQueueAssert();
              v51 = v44[484];
              swift_beginAccess();
              v52 = *&v50[v51];
              if (*(v52 + 16))
              {

                v53 = sub_224A5C3D0(1u);
                if (v54)
                {
                  v55 = v44;
                  v56 = v43;
                  v57 = *(*(v52 + 56) + 8 * v53);

                  v58 = *(v57 + 16);

                  v43 = v56;
                  v44 = v55;
                  isUniquelyReferenced_nonNull_native = v140;

                  if (v58)
                  {
                    *&v138[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
                    v59 = __OFADD__(v139++, 1);
                    if (v59)
                    {
                      __break(1u);
                    }
                  }
                }

                else
                {
                }
              }

              else
              {
              }
            }

            v46 = a1;
            while (1)
            {
              a1 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                break;
              }

              if (a1 >= v14)
              {
                v10 = sub_224B05540(v138, v137, v139, isUniquelyReferenced_nonNull_native);
                goto LABEL_44;
              }

              v47 = *(v39 + 8 * a1);
              ++v46;
              if (v47)
              {
                v45 = __clz(__rbit64(v47));
                v42 = (v47 - 1) & v47;
                goto LABEL_36;
              }
            }

LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
            goto LABEL_115;
          }

          v14[2] = v121;
        }

        v68 = v88;
        v69 = v144;
        v66 = v141;
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
        inited = swift_initStackObject();
        *(inited + 16) = v140;
        *(inited + 32) = v90;
        v104 = v90;
        sub_224D57EF8(inited);
        v106 = v105;
        swift_setDeallocating();
        v107 = *(inited + 16);
        swift_arrayDestroy();
        a1 = swift_isUniquelyReferenced_nonNull_native();
        v147 = v14;
        isUniquelyReferenced_nonNull_native = sub_224B0BAE0(v8);
        v109 = v14[2];
        v110 = (v108 & 1) == 0;
        v111 = v109 + v110;
        if (__OFADD__(v109, v110))
        {
          goto LABEL_113;
        }

        v112 = v108;
        if (v14[3] >= v111)
        {
          if ((a1 & 1) == 0)
          {
            sub_224B27BB0();
          }
        }

        else
        {
          sub_224B13884(v111, a1);
          v113 = sub_224B0BAE0(v8);
          if ((v112 & 1) != (v114 & 1))
          {
            goto LABEL_125;
          }

          isUniquelyReferenced_nonNull_native = v113;
        }

        v115 = v144;
        v14 = v147;
        if (v112)
        {
          v84 = v147[7];
          v85 = *(v84 + 8 * isUniquelyReferenced_nonNull_native);
          *(v84 + 8 * isUniquelyReferenced_nonNull_native) = v106;
        }

        else
        {
          v147[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
          *(v14[6] + 8 * isUniquelyReferenced_nonNull_native) = v8;
          *(v14[7] + 8 * isUniquelyReferenced_nonNull_native) = v106;

          v116 = v14[2];
          v59 = __OFADD__(v116, 1);
          v117 = v116 + 1;
          if (v59)
          {
            goto LABEL_114;
          }

          v14[2] = v117;
        }

        v68 = v88;
        v69 = v115;
        v66 = v141;
        isUniquelyReferenced_nonNull_native = v142;
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }
      }
    }

    while (1)
    {
      v88 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      if (v88 >= isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_98;
      }

      v87 = *(v66 + 8 * v88);
      ++v86;
      if (v87)
      {
        goto LABEL_71;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

LABEL_73:
  v91 = sub_224DAF878();
  if (v91)
  {
    v146 = v91;
    type metadata accessor for ChronoServicesClient();
    swift_dynamicCast();
    v90 = v147;
    v88 = v68;
    v89 = v69;
    if (v147)
    {
      goto LABEL_75;
    }
  }

LABEL_98:
  sub_224A3B7E4();
  a1 = (v14 + 8);
  v123 = 1 << *(v14 + 32);
  v124 = -1;
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  v125 = v124 & v14[8];
  isUniquelyReferenced_nonNull_native = (v123 + 63) >> 6;

  v126 = 0;
  if (!v125)
  {
LABEL_102:
    while (1)
    {
      v127 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v127 >= isUniquelyReferenced_nonNull_native)
      {

        goto LABEL_122;
      }

      v125 = *(a1 + 8 * v127);
      ++v126;
      if (v125)
      {
        goto LABEL_105;
      }
    }

    __break(1u);
    goto LABEL_110;
  }

  while (1)
  {
    v127 = v126;
LABEL_105:
    v128 = (v127 << 9) | (8 * __clz(__rbit64(v125)));
    v129 = *(v14[7] + v128);
    v130 = *(v14[6] + v128);

    v10 = MEMORY[0x22AA5E4C0](v131);
    v132 = v145;
    sub_224BE2A2C(v143, v130, v129);
    v145 = v132;
    if (v132)
    {
      break;
    }

    v125 &= v125 - 1;

    objc_autoreleasePoolPop(v10);

    v126 = v127;
    if (!v125)
    {
      goto LABEL_102;
    }
  }

  objc_autoreleasePoolPop(v10);
  __break(1u);
LABEL_125:
  sub_224DAF608();
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}