void sub_1CFBCE894(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v66 = a8;
  v67 = a4;
  v68 = a3;
  v63 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v60 - v13;
  v14 = sub_1CFC9D938();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v62 = &v60 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v60 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v60 - v27;
  v29 = sub_1CFC9C918();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    swift_beginAccess();
    v36 = swift_unknownObjectWeakLoadStrong();
    if (v36)
    {
      v37 = v36;
      v61 = a9;
      (*(v30 + 16))(v33, a7, v29);
      v38 = (*(v30 + 88))(v33, v29);
      if (v38 == *MEMORY[0x1E6993738])
      {
        sub_1CFC9C6A8();
        sub_1CFC9C698();
        v39 = sub_1CFC9D918();
        v40 = sub_1CFC9FAF8();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1CFB9F000, v39, v40, "CallReportingViewModel: we are showing the native spam reporting and blocking for facetime", v41, 2u);
          MEMORY[0x1D3873280](v41, -1, -1);
        }

        (*(v64 + 8))(v28, v65);
        sub_1CFBCF050(v66, v61, v37);
      }

      else if (v38 == *MEMORY[0x1E6993728])
      {
        sub_1CFC9C6A8();
        sub_1CFC9C698();
        v42 = sub_1CFC9D918();
        v43 = sub_1CFC9FAF8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1CFB9F000, v42, v43, "CallReportingViewModel: we are showing the carrier reporting and blocking option", v44, 2u);
          MEMORY[0x1D3873280](v44, -1, -1);
        }

        (*(v64 + 8))(v26, v65);
        sub_1CFBCF4D0(v66, v61, v37, v63);
      }

      else if (v38 == *MEMORY[0x1E6993740])
      {
        sub_1CFC9C6A8();
        sub_1CFC9C698();
        v45 = sub_1CFC9D918();
        v46 = sub_1CFC9FAF8();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_1CFB9F000, v45, v46, "CallReportingViewModel: we are showing the third party reporting and blocking option", v47, 2u);
          MEMORY[0x1D3873280](v47, -1, -1);
        }

        (*(v64 + 8))(v23, v65);
        sub_1CFBD3020(v66, v37, a10);
      }

      else if (v38 == *MEMORY[0x1E6993730])
      {
        sub_1CFBCFB68(v66, v61, v37);
      }

      else if (v38 == *MEMORY[0x1E6993748])
      {
        sub_1CFBCFE98(v66, v61, v37);
      }

      else if (v38 == *MEMORY[0x1E6993750])
      {
        sub_1CFBD39CC(v66, v37);
      }

      else
      {
        v48 = *MEMORY[0x1E6993758];
        v49 = v38;
        sub_1CFC9C6A8();
        if (v49 == v48)
        {
          v50 = v62;
          sub_1CFC9C698();
          v51 = sub_1CFC9D918();
          v52 = sub_1CFC9FAF8();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_1CFB9F000, v51, v52, "CallReportingViewModel: we are showing none flow", v53, 2u);
            MEMORY[0x1D3873280](v53, -1, -1);
          }

          (*(v64 + 8))(v50, v65);
        }

        else
        {
          sub_1CFC9C698();
          v54 = sub_1CFC9D918();
          v55 = sub_1CFC9FAF8();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&dword_1CFB9F000, v54, v55, "CallReportingViewModel: we are showing unknown/unsupported flow", v56, 2u);
            MEMORY[0x1D3873280](v56, -1, -1);
          }

          (*(v64 + 8))(v18, v65);
          (*(v30 + 8))(v33, v29);
        }
      }

      v68(1);
      if (qword_1EC4ECFF8 != -1)
      {
        swift_once();
      }

      v57 = sub_1CFC9F998();
      v58 = v69;
      (*(*(v57 - 8) + 56))(v69, 1, 1, v57);
      v59 = swift_allocObject();
      *(v59 + 16) = 0;
      *(v59 + 24) = 0;
      sub_1CFBDC030(0, 0, v58, &unk_1CFCA2660, v59);
    }
  }
}

void sub_1CFBCF050(void *a1, uint64_t a2, void *a3)
{
  sub_1CFC9C9C8();
  v4 = sub_1CFC9F728();

  v25 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  sub_1CFC9C9D8();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = sub_1CFC9F728();

  v30 = sub_1CFBD3FBC;
  v31 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1CFBDBE60;
  v29 = &block_descriptor_23;
  v7 = _Block_copy(&aBlock);

  v8 = objc_opt_self();
  v24 = [v8 actionWithTitle:v6 style:1 handler:{v7, &v28}];
  _Block_release(v7);

  v9 = sub_1CFC9FC78();
  sub_1CFC9C8E8();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = a3;

  v12 = a3;
  v13 = sub_1CFC9F728();

  v30 = sub_1CFBD3FC4;
  v31 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1CFBDBE60;
  v29 = &block_descriptor_30;
  v14 = _Block_copy(&aBlock);

  v15 = [v8 actionWithTitle:v13 style:2 handler:v14];
  _Block_release(v14);

  sub_1CFC9C8F8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v9;
  v17[4] = a1;
  v17[5] = v12;
  v18 = v12;

  v19 = a1;
  v20 = sub_1CFC9F728();

  v30 = sub_1CFBD3FD0;
  v31 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1CFBDBE60;
  v29 = &block_descriptor_37;
  v21 = _Block_copy(&aBlock);

  v22 = [v8 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v25 addAction_];
  [v25 addAction_];
  [v25 addAction_];
  [v18 presentViewController:v25 animated:1 completion:0];
}

void sub_1CFBCF4D0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v44 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v44 - v9;
  sub_1CFC9C8D8();
  sub_1CFC9C9F8();

  v10 = sub_1CFC9F728();

  v11 = [objc_opt_self() alertControllerWithTitle:v10 message:0 preferredStyle:0];
  v45 = v11;

  sub_1CFC9C8E8();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = v12;
  v13[5] = a3;
  v46 = a2;
  v14 = a1;

  v15 = a3;
  v16 = sub_1CFC9F728();

  v52 = sub_1CFBD40A4;
  v53 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CFBDBE60;
  v51 = &block_descriptor_53;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:2 handler:v17];
  _Block_release(v17);

  [v11 addAction_];
  sub_1CFC9C8F8();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v22 = v46;
  v21[2] = v46;
  v21[3] = v14;
  v21[4] = v20;
  v21[5] = v15;
  v23 = v22;
  v24 = v14;
  v46 = v15;

  v25 = sub_1CFC9F728();

  v52 = sub_1CFBD4100;
  v53 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CFBDBE60;
  v51 = &block_descriptor_60;
  v26 = _Block_copy(&aBlock);

  v27 = [v18 actionWithTitle:v25 style:2 handler:v26];
  _Block_release(v26);

  v28 = v45;
  [v45 addAction_];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v24;
  v33 = v24;

  v34 = sub_1CFC9F728();

  v52 = sub_1CFBD410C;
  v53 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = sub_1CFBDBE60;
  v51 = &block_descriptor_67;
  v35 = _Block_copy(&aBlock);

  v36 = [v18 actionWithTitle:v34 style:1 handler:v35];
  _Block_release(v35);

  [v28 addAction_];
  v37 = v28;
  v38 = [v37 popoverPresentationController];
  if (v38)
  {
    v39 = v38;
    [v38 setPermittedArrowDirections_];
  }

  v40 = [v37 popoverPresentationController];

  if (v40)
  {
    [v40 setSourceView_];
  }

  [v46 presentViewController:v37 animated:1 completion:0];
  if (qword_1EC4ECFF8 != -1)
  {
    swift_once();
  }

  v41 = sub_1CFC9F998();
  v42 = v47;
  (*(*(v41 - 8) + 56))(v47, 1, 1, v41);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  sub_1CFBDC030(0, 0, v42, &unk_1CFCA2678, v43);
}

void sub_1CFBCFB68(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1CFC9C968();
  v4 = sub_1CFC9F728();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  sub_1CFC9C9D8();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1CFC9F728();

  v22 = sub_1CFBD41F0;
  v23 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1CFBDBE60;
  v21 = &block_descriptor_97;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v17 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v10 = sub_1CFC9FC78();
  sub_1CFC9C978();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = v10;
  v12[4] = a3;

  v13 = a3;
  v14 = sub_1CFC9F728();

  v22 = sub_1CFBD41F8;
  v23 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1CFBDBE60;
  v21 = &block_descriptor_104;
  v15 = _Block_copy(&aBlock);

  v16 = [v9 actionWithTitle:v14 style:2 handler:v15];
  _Block_release(v15);

  [v5 addAction_];
  [v5 addAction_];
  [v13 presentViewController:v5 animated:1 completion:0];
}

void sub_1CFBCFE98(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1CFC9C968();
  v4 = sub_1CFC9F728();

  v5 = [objc_opt_self() alertControllerWithTitle:v4 message:0 preferredStyle:0];

  sub_1CFC9C9D8();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = sub_1CFC9F728();

  v28 = sub_1CFBD4410;
  v29 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1CFBDBE60;
  v27 = &block_descriptor_113;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v23 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  v10 = sub_1CFC9FC68();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  aBlock = MEMORY[0x1E69E7CC0];
  v13 = *(v10 + 16);
  while (1)
  {
    if (v13 == v11)
    {

      sub_1CFC9C9B8();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v12;
      v18[4] = a3;

      v19 = a3;
      v20 = sub_1CFC9F728();

      v28 = sub_1CFBD4460;
      v29 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1CFBDBE60;
      v27 = &block_descriptor_120;
      v21 = _Block_copy(&aBlock);

      v22 = [v9 actionWithTitle:v20 style:2 handler:v21];
      _Block_release(v21);

      [v5 addAction_];
      [v5 addAction_];
      [v19 presentViewController:v5 animated:1 completion:0];

      return;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v14 = *(v10 + 8 * v11++ + 32);
    if (v14)
    {
      v15 = v14;
      MEMORY[0x1D3871DC0]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      v12 = aBlock;
    }
  }

  __break(1u);
}

void sub_1CFBD0288()
{
  v0 = sub_1CFC9D938();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1CFBB531C(0xD000000000000027, 0x80000001CFCAA600, &v12);
    _os_log_impl(&dword_1CFB9F000, v5, v6, "CallReportingViewModel: in %s, user did tap on cancel", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3873280](v8, -1, -1);
    MEMORY[0x1D3873280](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1CFBD0470(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_1CFC9D938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v17 = sub_1CFC9D918();
    v18 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1CFBB531C(0xD000000000000027, 0x80000001CFCAA600, &v30);
      _os_log_impl(&dword_1CFB9F000, v17, v18, "CallReportingViewModel: in %s, user did tap on block all", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D3873280](v21, -1, -1);
      v22 = v20;
      a4 = v29;
      MEMORY[0x1D3873280](v22, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    MEMORY[0x1D386EF60](a3);
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC4F2A18;
    v24 = sub_1CFC9F998();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v23;
    v25[5] = a3;
    v25[6] = a4;
    v26 = v23;

    v27 = a4;
    sub_1CFBDC030(0, 0, v9, &unk_1CFCA26C8, v25);
  }
}

void sub_1CFBD078C()
{
  v0 = sub_1CFC9D938();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1CFBB531C(0xD000000000000039, 0x80000001CFCAA550, &v12);
    _os_log_impl(&dword_1CFB9F000, v5, v6, "CallReportingViewModel: in %s, user did tap on cancel", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3873280](v8, -1, -1);
    MEMORY[0x1D3873280](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1CFBD0974(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_1CFC9D938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v17 = sub_1CFC9D918();
    v18 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = a4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1CFBB531C(0xD000000000000039, 0x80000001CFCAA550, &v30);
      _os_log_impl(&dword_1CFB9F000, v17, v18, "CallReportingViewModel: in %s, user did tap on block", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D3873280](v21, -1, -1);
      v22 = v20;
      a4 = v29;
      MEMORY[0x1D3873280](v22, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    MEMORY[0x1D386EF60](a3);
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC4F2A18;
    v24 = sub_1CFC9F998();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v23;
    v25[5] = a3;
    v25[6] = a4;
    v26 = v23;

    v27 = a4;
    sub_1CFBDC030(0, 0, v9, &unk_1CFCA2670, v25);
  }
}

void sub_1CFBD0C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - v10;
  v12 = sub_1CFC9D938();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v19 = sub_1CFC9D918();
    v20 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v31 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v32 = a5;
      v33 = v23;
      v24 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1CFBB531C(0xD000000000000039, 0x80000001CFCAA550, &v33);
      _os_log_impl(&dword_1CFB9F000, v19, v20, "CallReportingViewModel: in %s, user did tap on block and report", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v25 = v24;
      a5 = v32;
      MEMORY[0x1D3873280](v25, -1, -1);
      MEMORY[0x1D3873280](v22, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    MEMORY[0x1D386EF60](a3);
    sub_1CFC9CA38();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v26 = qword_1EC4F2A18;
    v27 = sub_1CFC9F998();
    (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v26;
    v28[5] = a3;
    v28[6] = a5;
    v29 = v26;

    v30 = a5;
    sub_1CFBDC030(0, 0, v11, &unk_1CFCA2668, v28);
  }
}

void sub_1CFBD0FBC()
{
  v0 = sub_1CFC9D938();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1CFBB531C(0xD000000000000032, 0x80000001CFCAA630, &v12);
    _os_log_impl(&dword_1CFB9F000, v5, v6, "CallReportingViewModel: in %s, user did tap on cancel", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3873280](v8, -1, -1);
    MEMORY[0x1D3873280](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1CFBD11A4(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = sub_1CFC9D938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v13 = sub_1CFC9D918();
    v14 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1CFBB531C(0xD000000000000032, 0x80000001CFCAA630, &v18);
      _os_log_impl(&dword_1CFB9F000, v13, v14, "CallReportingViewModel: in %s, user did tap on block unknown", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D3873280](v16, -1, -1);
      MEMORY[0x1D3873280](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_1CFC9CA18();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    v17 = sub_1CFC82A10(a3);
    sub_1CFBD4A54(v17, a4);
  }

  return result;
}

uint64_t sub_1CFBD13E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_1CFC9D938();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v16 = sub_1CFC9D918();
  v17 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = a4;
    v19 = a5;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_1CFB9F000, v16, v17, "Spamreporting: carrier reporting, user did tap block", v18, 2u);
    v21 = v20;
    a5 = v19;
    MEMORY[0x1D3873280](v21, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v22 = sub_1CFC9FC78();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    MEMORY[0x1D386EF60](v22);
  }

  if (qword_1EC4ECFF8 != -1)
  {
    swift_once();
  }

  v25 = qword_1EC4F2A18;
  v26 = sub_1CFC9F998();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  v27[5] = v22;
  v27[6] = a5;
  v28 = v25;
  v29 = a5;
  sub_1CFBDC030(0, 0, v10, &unk_1CFCA2688, v27);
}

uint64_t sub_1CFBD16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_1CFC9D938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v15 = sub_1CFC9D918();
  v16 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v9;
    v18 = a5;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_1CFB9F000, v15, v16, "Spamreporting: carrier reporting, user did tap block and report", v17, 2u);
    v20 = v19;
    a5 = v18;
    v9 = v33;
    MEMORY[0x1D3873280](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v21 = sub_1CFC9FC78();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    MEMORY[0x1D386EF60](v21);
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    sub_1CFC9C928();
  }

  if (qword_1EC4ECFF8 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC4F2A18;
  v27 = sub_1CFC9F998();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v26;
  v28[5] = v21;
  v28[6] = a5;
  v29 = v26;
  v30 = a5;
  sub_1CFBDC030(0, 0, v9, &unk_1CFCA2680, v28);
}

void sub_1CFBD19F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CFC9C908();
  }
}

uint64_t sub_1CFBD1A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[39] = a6;
  v7[40] = a7;
  v7[37] = a4;
  v7[38] = a5;
  v8 = sub_1CFC9D938();
  v7[41] = v8;
  v9 = *(v8 - 8);
  v7[42] = v9;
  v10 = *(v9 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  sub_1CFC9F968();
  v7[45] = sub_1CFC9F958();
  v12 = sub_1CFC9F938();
  v7[46] = v12;
  v7[47] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1CFBD1B58, v12, v11);
}

uint64_t sub_1CFBD1B58()
{
  v25 = v0;
  v1 = v0[44];
  v2 = v0[37];
  v3 = v0[38];
  v0[48] = sub_1CFC9C6A8();
  sub_1CFC9C698();
  v4 = v2;
  v5 = v3;
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[44];
  v10 = v0[41];
  v11 = v0[42];
  if (v8)
  {
    v23 = v0[44];
    v12 = v0[37];
    v13 = v0[38];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v14 = 136315650;
    *(v14 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v24);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v12;
    *(v14 + 22) = 2112;
    *(v14 + 24) = v13;
    *v15 = v12;
    v15[1] = v13;
    v17 = v12;
    v18 = v13;
    _os_log_impl(&dword_1CFB9F000, v6, v7, "CallReportingViewModel: in %s, Presenting ClassificationViewController with communication: %@ for call: %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED770, &qword_1CFCA2CF0);
    swift_arrayDestroy();
    MEMORY[0x1D3873280](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1D3873280](v16, -1, -1);
    MEMORY[0x1D3873280](v14, -1, -1);

    v19 = *(v11 + 8);
    v19(v23, v10);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
  }

  v0[49] = v19;
  v20 = v0[39];
  v0[2] = v0;
  v0[3] = sub_1CFBD1E20;
  v21 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED778, &qword_1CFCA26B0);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1CFBD24BC;
  v0[21] = &block_descriptor_90;
  v0[22] = v21;
  [v20 activateExtensionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFBD1E20()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 376);
  v5 = *(v1 + 368);
  if (v3)
  {
    v6 = sub_1CFBD226C;
  }

  else
  {
    v6 = sub_1CFBD1F50;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1CFBD1F50()
{
  v1 = v0[40];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[51] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[39];
    v0[10] = v0;
    v0[11] = sub_1CFBD20EC;
    v5 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED780, &qword_1CFCA26B8);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1CFBD2568;
    v0[29] = &block_descriptor_93;
    v0[30] = v5;
    [v3 presentViewController:v4 animated:1 completion:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    v6 = v0[45];

    v8 = v0[43];
    v7 = v0[44];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1CFBD20EC()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1CFBD21F4, v2, v1);
}

uint64_t sub_1CFBD21F4()
{
  v1 = v0[51];
  v2 = v0[45];

  v4 = v0[43];
  v3 = v0[44];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CFBD226C()
{
  v32 = v0;
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[43];
  v6 = v0[37];
  v5 = v0[38];

  swift_willThrow();
  sub_1CFC9C698();
  v7 = v6;
  v8 = v5;
  v9 = sub_1CFC9D918();
  v10 = sub_1CFC9FAD8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[49];
  v13 = v0[50];
  v15 = v0[42];
  v14 = v0[43];
  v16 = v0[41];
  if (v11)
  {
    v29 = v0[43];
    v30 = v0[49];
    v18 = v0[37];
    v17 = v0[38];
    v28 = v0[41];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v19 = 136315650;
    *(v19 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v31);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v18;
    *(v19 + 22) = 2112;
    *(v19 + 24) = v17;
    *v20 = v18;
    v20[1] = v17;
    v22 = v18;
    v23 = v17;
    _os_log_impl(&dword_1CFB9F000, v9, v10, "CallReportingViewModel: in %s, not able to activate extension. communication: %@ for call: %@", v19, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED770, &qword_1CFCA2CF0);
    swift_arrayDestroy();
    MEMORY[0x1D3873280](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1D3873280](v21, -1, -1);
    MEMORY[0x1D3873280](v19, -1, -1);

    v30(v29, v28);
  }

  else
  {

    v12(v14, v16);
  }

  v25 = v0[43];
  v24 = v0[44];

  v26 = v0[1];

  return v26();
}

uint64_t sub_1CFBD24BC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1CFBD2568(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

void sub_1CFBD259C()
{
  v0 = sub_1CFC9D938();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, &v12);
    _os_log_impl(&dword_1CFB9F000, v5, v6, "CallReportingViewModel: in %s, user did tap on cancel", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1D3873280](v8, -1, -1);
    MEMORY[0x1D3873280](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1CFBD2784(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CFC9D938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v13 = sub_1CFC9D918();
    v14 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, &v19);
      _os_log_impl(&dword_1CFB9F000, v13, v14, "CallReportingViewModel: in %s, user did tap on block", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D3873280](v16, -1, -1);
      MEMORY[0x1D3873280](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_1CFC9C948();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED790, &qword_1CFCA26D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFCA1DD0;
    *(inited + 32) = [a3 initiator];
    sub_1CFBD4A54(inited, a4);

    swift_setDeallocating();
    return sub_1CFBC2FB0(inited + 32, &qword_1EC4ED798, qword_1CFCA26D8);
  }

  return result;
}

uint64_t sub_1CFBD2A24(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1CFC9D938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v13 = sub_1CFC9D918();
    v14 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, &v19);
      _os_log_impl(&dword_1CFB9F000, v13, v14, "CallReportingViewModel: in %s, user did tap on block and report", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1D3873280](v16, -1, -1);
      MEMORY[0x1D3873280](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_1CFC9C948();
    sub_1CFC9CA38();
    if (qword_1EC4ECFF8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED790, &qword_1CFCA26D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFCA1DD0;
    *(inited + 32) = [a3 initiator];
    sub_1CFBD4A54(inited, a4);

    swift_setDeallocating();
    return sub_1CFBC2FB0(inited + 32, &qword_1EC4ED798, qword_1CFCA26D8);
  }

  return result;
}

id sub_1CFBD2D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClassificationControllerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFBD2DF8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(sub_1CFC9C918() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1CFBCE894(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *(v4 + v11), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1CFBD2ED8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CFBD4A14;

  return sub_1CFBD4F68();
}

void sub_1CFBD2FAC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1CFBD3020(void *a1, uint64_t a2, uint64_t a3)
{
  v86 = a3;
  v87 = a2;
  v4 = sub_1CFC9D938();
  v89 = *(v4 - 8);
  v5 = *(v89 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v82 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v82 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v82 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v82 - v19;
  v90 = sub_1CFC9BFB8();
  v21 = *(v90 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v90);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v82 - v26;
  v28 = [a1 date];
  if (!v28)
  {
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v38 = sub_1CFC9D918();
    v39 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v4;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v91 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v91);
      _os_log_impl(&dword_1CFB9F000, v38, v39, "CallReportingViewModel: in %s, Unable to show reporting extension for call because the date is nil", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1D3873280](v42, -1, -1);
      MEMORY[0x1D3873280](v41, -1, -1);

      return (*(v89 + 8))(v8, v40);
    }

    else
    {

      return (*(v89 + 8))(v8, v4);
    }
  }

  v88 = v21;
  v29 = v28;
  sub_1CFC9BF88();

  v30 = [a1 isoCountryCode];
  if (!v30)
  {
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v44 = sub_1CFC9D918();
    v45 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v4;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v91 = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v91);
      _os_log_impl(&dword_1CFB9F000, v44, v45, "CallReportingViewModel: in %s, Unable to show reporting extension for call because the isoCountryCode is nil", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1D3873280](v48, -1, -1);
      MEMORY[0x1D3873280](v47, -1, -1);

      v49 = *(v89 + 8);
      v50 = v11;
LABEL_13:
      v55 = v46;
LABEL_24:
      v49(v50, v55);
      return (*(v88 + 8))(v27, v90);
    }

    v49 = *(v89 + 8);
    v50 = v11;
LABEL_23:
    v55 = v4;
    goto LABEL_24;
  }

  v31 = v30;
  v32 = [a1 callerId];
  if (!v32)
  {

    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v51 = sub_1CFC9D918();
    v52 = sub_1CFC9FAD8();
    if (os_log_type_enabled(v51, v52))
    {
      v46 = v4;
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v91 = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1CFBB531C(0xD000000000000040, 0x80000001CFCAA590, &v91);
      _os_log_impl(&dword_1CFB9F000, v51, v52, "CallReportingViewModel: in %s, Unable to show reporting extension for call because the callerId is nil", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x1D3873280](v54, -1, -1);
      MEMORY[0x1D3873280](v53, -1, -1);

      v49 = *(v89 + 8);
      v50 = v14;
      goto LABEL_13;
    }

    v49 = *(v89 + 8);
    v50 = v14;
    goto LABEL_23;
  }

  v33 = v32;
  v85 = v4;
  v34 = [a1 callerId];
  if (v34)
  {
    v35 = v34;
    sub_1CFC9F768();
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  (*(v88 + 16))(v25, v27, v90);
  if (v37)
  {
    v56 = sub_1CFC9F728();
  }

  else
  {
    v56 = 0;
  }

  v57 = objc_allocWithZone(MEMORY[0x1E696D160]);
  v58 = sub_1CFC9BF68();
  v59 = [v57 initWithSender:v56 dateReceived:v58];

  v60 = *(v88 + 8);
  v88 += 8;
  v84 = v60;
  v60(v25, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1CFCA2540;
  *(v61 + 32) = v59;
  v62 = objc_allocWithZone(MEMORY[0x1E696D158]);
  sub_1CFBA2D80(0, &qword_1EC4ED768, 0x1E696D160);
  v83 = v59;
  v63 = sub_1CFC9F898();

  v64 = [v62 initWithCallCommunications_];

  v65 = objc_allocWithZone(MEMORY[0x1E696D170]);
  v66 = v64;
  v67 = [v65 initUnactivatedVCWithRequest:v66 sender:v33 isoCountryCode:v31];

  [v67 setDelegate_];
  v68 = sub_1CFC9F998();
  (*(*(v68 - 8) + 56))(v20, 1, 1, v68);
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC9F968();
  v70 = v83;
  v71 = a1;
  v72 = v67;

  v73 = sub_1CFC9F958();
  v74 = swift_allocObject();
  v75 = MEMORY[0x1E69E85E0];
  v74[2] = v73;
  v74[3] = v75;
  v74[4] = v70;
  v74[5] = v71;
  v74[6] = v72;
  v74[7] = v69;

  sub_1CFBDC030(0, 0, v20, &unk_1CFCA26A0, v74);

  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v76 = v72;
  v77 = sub_1CFC9D918();
  v78 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v79 = 138412290;
    *(v79 + 4) = v76;
    *v80 = v76;
    v81 = v76;
    _os_log_impl(&dword_1CFB9F000, v77, v78, "Created classification view controller: %@, waiting for ready", v79, 0xCu);
    sub_1CFBC2FB0(v80, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v80, -1, -1);
    MEMORY[0x1D3873280](v79, -1, -1);
  }

  (*(v89 + 8))(v16, v85);
  return v84(v27, v90);
}

void sub_1CFBD39CC(void *a1, void *a2)
{
  v4 = sub_1CFC9D938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C988();
  if (v9)
  {
    sub_1CFC9C9E8();

    sub_1CFC9CA08();
    v10 = sub_1CFC9F728();

    v11 = sub_1CFC9F728();

    v37 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:0];

    sub_1CFC9C9D8();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v13 = sub_1CFC9F728();

    v42 = sub_1CFBD446C;
    v43 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1CFBDBE60;
    v41 = &block_descriptor_124;
    v14 = _Block_copy(&aBlock);

    v15 = objc_opt_self();
    v36 = [v15 actionWithTitle:v13 style:1 handler:v14];
    _Block_release(v14);

    sub_1CFC9C8E8();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a1;
    v17[4] = a2;

    v18 = a1;
    v19 = a2;
    v20 = sub_1CFC9F728();

    v42 = sub_1CFBD4474;
    v43 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1CFBDBE60;
    v41 = &block_descriptor_131;
    v21 = _Block_copy(&aBlock);

    v22 = [v15 actionWithTitle:v20 style:2 handler:v21];
    _Block_release(v21);

    sub_1CFC9C8F8();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = v18;
    v24[4] = v19;
    v25 = v18;
    v26 = v19;

    v27 = sub_1CFC9F728();

    v42 = sub_1CFBD44C8;
    v43 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1CFBDBE60;
    v41 = &block_descriptor_138;
    v28 = _Block_copy(&aBlock);

    v29 = [v15 actionWithTitle:v27 style:2 handler:v28];
    _Block_release(v28);

    v30 = v37;
    [v37 addAction_];
    [v30 addAction_];
    v31 = v36;
    [v30 addAction_];
    [v26 presentViewController:v30 animated:1 completion:0];
  }

  else
  {
    sub_1CFC9C6A8();
    sub_1CFC9C698();
    v32 = sub_1CFC9D918();
    v33 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1CFBB531C(0xD00000000000003ELL, 0x80000001CFCAA670, &aBlock);
      _os_log_impl(&dword_1CFB9F000, v32, v33, "CallReportingViewModel: in %s, call initiator is nil", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1D3873280](v35, -1, -1);
      MEMORY[0x1D3873280](v34, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1CFBD3FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD4A14;

  return sub_1CFBD514C(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1CFBD410C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CFBD19F8();
}

uint64_t sub_1CFBD4114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CFBD4A14;

  return sub_1CFBD1A54(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1CFBD4254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFBD514C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CFBD431C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_127Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBD44D4(void *a1, void *a2)
{
  v4 = sub_1CFC9F638();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9F658();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFC9D938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1CFC9C6A8();
  sub_1CFC9C698();
  v16 = a2;
  v17 = a2;
  v18 = a1;
  v19 = sub_1CFC9D918();
  v20 = sub_1CFC9FAF8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = Strong;
    v23 = v22;
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v17;
    *v22 = v18;
    v22[1] = v16;
    v24 = v18;
    v25 = v17;
    _os_log_impl(&dword_1CFB9F000, v19, v20, "Completed classification request: %@ with response: %@", v21, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED770, &qword_1CFCA2CF0);
    swift_arrayDestroy();
    v26 = v23;
    Strong = v36;
    MEMORY[0x1D3873280](v26, -1, -1);
    MEMORY[0x1D3873280](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v27 = sub_1CFC9FC28();
  v28 = swift_allocObject();
  *(v28 + 16) = Strong;
  aBlock[4] = sub_1CFBD4968;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_144;
  v29 = _Block_copy(aBlock);
  v30 = Strong;

  v31 = v37;
  sub_1CFC9F648();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1CFBD4988(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBCCC94();
  v32 = v40;
  v33 = v42;
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v31, v32, v29);
  _Block_release(v29);

  (*(v41 + 8))(v32, v33);
  return (*(v38 + 8))(v31, v39);
}

id sub_1CFBD4968()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_1CFBD4988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFBD4A54(uint64_t a1, void *a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v37 - v5;
  v46 = sub_1CFC9D768();
  v6 = *(v46 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CFC9D788();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v45);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v37 - v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = (a1 + 32);
    v41 = *MEMORY[0x1E696ED80];
    v17 = (v6 + 104);
    v44 = v10 + 32;
    v42 = *MEMORY[0x1E696ED90];
    v18 = MEMORY[0x1E69E7CC0];
    v19 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    while (1)
    {
      v21 = *v16++;
      v20 = v21;
      if (v21)
      {
        v22 = v20;
        if ([v22 v19[225]] == 3)
        {
          (*v17)(v9, v42, v46);
          v23 = [v22 value];
          sub_1CFC9F768();

          sub_1CFC9D778();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1CFC7B354(0, v18[2] + 1, 1, v18);
          }

          v25 = v18[2];
          v24 = v18[3];
          if (v25 >= v24 >> 1)
          {
            v18 = sub_1CFC7B354(v24 > 1, v25 + 1, 1, v18);
          }

          v18[2] = v25 + 1;
          (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, v47, v45);
LABEL_18:
          v19 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
          goto LABEL_4;
        }

        if ([v22 v19[225]] == 2)
        {
          (*v17)(v9, v41, v46);
          v26 = [v22 value];
          sub_1CFC9F768();

          sub_1CFC9D778();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1CFC7B354(0, v18[2] + 1, 1, v18);
          }

          v28 = v18[2];
          v27 = v18[3];
          if (v28 >= v27 >> 1)
          {
            v18 = sub_1CFC7B354(v27 > 1, v28 + 1, 1, v18);
          }

          v18[2] = v28 + 1;
          (*(v10 + 32))(v18 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v28, v43, v45);
          goto LABEL_18;
        }
      }

LABEL_4:
      if (!--v15)
      {
        goto LABEL_20;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_20:
  if (!v18[2])
  {
  }

  v29 = sub_1CFC9F998();
  v30 = v38;
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v32 = v39;
  v33 = v40;
  v31[4] = v39;
  v31[5] = v18;
  v31[6] = v33;
  v34 = v32;
  v35 = v33;
  sub_1CFBDC030(0, 0, v30, &unk_1CFCA2720, v31);
}

id sub_1CFBD4F38()
{
  result = [objc_allocWithZone(type metadata accessor for SafetyCheckHelper()) init];
  qword_1EC4F2A18 = result;
  return result;
}

uint64_t sub_1CFBD4F84()
{
  sub_1CFC9D348();
  *(v0 + 16) = sub_1CFC9D338();
  v1 = *(MEMORY[0x1E699A160] + 4);
  v4 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CFBD503C;

  return v4();
}

uint64_t sub_1CFBD503C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1CFBD514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = sub_1CFC9F638();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = sub_1CFC9F658();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = sub_1CFC9D368();
  v6[25] = v13;
  v14 = *(v13 - 8);
  v6[26] = v14;
  v15 = *(v14 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFBD52E0, 0, 0);
}

uint64_t sub_1CFBD52E0()
{
  v1 = v0[17];
  v0[30] = *(v0[16] + OBJC_IVAR____TtC10CallsAppUI17SafetyCheckHelper_blockingController);
  v2 = *(MEMORY[0x1E699A150] + 4);
  v5 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1CFBD53A0;

  return v5(v1, 0);
}

uint64_t sub_1CFBD53A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[31];
  v8 = *v2;
  v4[32] = v1;

  if (v1)
  {
    v6 = sub_1CFBD56DC;
  }

  else
  {
    v6 = sub_1CFBD54BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CFBD54BC()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v20 = v0[23];
    v21 = v0[22];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    sub_1CFBD6E04();
    v19 = sub_1CFC9FC28();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1CFBD6F94;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_1;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v20 + 8))(v2, v21);
    v11 = v0[7];
  }

  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1CFBD56DC()
{
  v1 = *(v0 + 256);
  *(v0 + 112) = v1;
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 256);
  if (v5)
  {
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);

    (*(v10 + 32))(v8, v7, v11);
    v12 = *(v10 + 104);
    v12(v9, *MEMORY[0x1E699A170], v11);
    v13 = sub_1CFC9D358();
    v14 = *(v10 + 8);
    *(v0 + 264) = v14;
    *(v0 + 272) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);
    if (v13 & 1) != 0 || (v15 = *(v0 + 216), v16 = *(v0 + 200), v12(v15, *MEMORY[0x1E699A178], v16), v17 = sub_1CFC9D358(), v14(v15, v16), (v17))
    {
      sub_1CFC9D348();
      *(v0 + 280) = sub_1CFC9D338();
      v18 = *(MEMORY[0x1E699A160] + 4);
      v31 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
      v19 = swift_task_alloc();
      *(v0 + 288) = v19;
      *v19 = v0;
      v19[1] = sub_1CFBD5A00;

      return v31();
    }

    else
    {
      v27 = *(v0 + 136);
      v28 = *(MEMORY[0x1E699A150] + 4);
      v32 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
      v29 = swift_task_alloc();
      *(v0 + 296) = v29;
      *v29 = v0;
      v29[1] = sub_1CFBD5B90;
      v30 = *(v0 + 240);

      return v32(v27, 0);
    }
  }

  else
  {

    v22 = *(v0 + 224);
    v21 = *(v0 + 232);
    v23 = *(v0 + 216);
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1CFBD5A00()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *v0;

  v5 = v1[17];
  v6 = *(MEMORY[0x1E699A150] + 4);
  v10 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v7 = swift_task_alloc();
  v1[37] = v7;
  *v7 = v4;
  v7[1] = sub_1CFBD5B90;
  v8 = v1[30];

  return v10(v5, 0);
}

uint64_t sub_1CFBD5B90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[37];
  v8 = *v2;

  if (v1)
  {

    v6 = sub_1CFBD6F8C;
  }

  else
  {
    v6 = sub_1CFBD5CB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CFBD5CB0()
{
  v1 = v0[34];
  (v0[33])(v0[28], v0[25]);

  v2 = v0[12];
  if (v2)
  {
    v3 = v0[24];
    v4 = v0[21];
    v21 = v0[23];
    v22 = v0[22];
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[18];
    sub_1CFBD6E04();
    v20 = sub_1CFC9FC28();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v0[6] = sub_1CFBD6F94;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_1;
    v9 = _Block_copy(v0 + 2);
    v10 = v7;
    v11 = v2;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v3, v4, v9);
    _Block_release(v9);

    (*(v6 + 8))(v4, v5);
    (*(v21 + 8))(v3, v22);
    v12 = v0[7];
  }

  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1CFBD5EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = sub_1CFC9F638();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = sub_1CFC9F658();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v13 = sub_1CFC9D368();
  v6[25] = v13;
  v14 = *(v13 - 8);
  v6[26] = v14;
  v15 = *(v14 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFBD607C, 0, 0);
}

uint64_t sub_1CFBD607C()
{
  v1 = v0[17];
  v0[30] = *(v0[16] + OBJC_IVAR____TtC10CallsAppUI17SafetyCheckHelper_blockingController);
  v2 = *(MEMORY[0x1E699A150] + 4);
  v5 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1CFBD613C;

  return v5(0, v1);
}

uint64_t sub_1CFBD613C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[31];
  v8 = *v2;
  v4[32] = v1;

  if (v1)
  {
    v6 = sub_1CFBD6478;
  }

  else
  {
    v6 = sub_1CFBD6258;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CFBD6258()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[21];
    v20 = v0[23];
    v21 = v0[22];
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[18];
    sub_1CFBD6E04();
    v19 = sub_1CFC9FC28();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v1;
    v0[6] = sub_1CFBD6F70;
    v0[7] = v7;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_16;
    v8 = _Block_copy(v0 + 2);
    v9 = v6;
    v10 = v1;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v2, v3, v8);
    _Block_release(v8);

    (*(v5 + 8))(v3, v4);
    (*(v20 + 8))(v2, v21);
    v11 = v0[7];
  }

  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  v15 = v0[24];
  v16 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1CFBD6478()
{
  v1 = *(v0 + 256);
  *(v0 + 112) = v1;
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED788, &qword_1CFCA26C0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 256);
  if (v5)
  {
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);

    (*(v10 + 32))(v8, v7, v11);
    v12 = *(v10 + 104);
    v12(v9, *MEMORY[0x1E699A170], v11);
    v13 = sub_1CFC9D358();
    v14 = *(v10 + 8);
    *(v0 + 264) = v14;
    *(v0 + 272) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v9, v11);
    if (v13 & 1) != 0 || (v15 = *(v0 + 216), v16 = *(v0 + 200), v12(v15, *MEMORY[0x1E699A178], v16), v17 = sub_1CFC9D358(), v14(v15, v16), (v17))
    {
      sub_1CFC9D348();
      *(v0 + 280) = sub_1CFC9D338();
      v18 = *(MEMORY[0x1E699A160] + 4);
      v31 = (*MEMORY[0x1E699A160] + MEMORY[0x1E699A160]);
      v19 = swift_task_alloc();
      *(v0 + 288) = v19;
      *v19 = v0;
      v19[1] = sub_1CFBD679C;

      return v31();
    }

    else
    {
      v27 = *(v0 + 136);
      v28 = *(MEMORY[0x1E699A150] + 4);
      v32 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
      v29 = swift_task_alloc();
      *(v0 + 296) = v29;
      *v29 = v0;
      v29[1] = sub_1CFBD692C;
      v30 = *(v0 + 240);

      return v32(0, v27);
    }
  }

  else
  {

    v22 = *(v0 + 224);
    v21 = *(v0 + 232);
    v23 = *(v0 + 216);
    v24 = *(v0 + 192);
    v25 = *(v0 + 168);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1CFBD679C()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *v0;

  v5 = v1[17];
  v6 = *(MEMORY[0x1E699A150] + 4);
  v10 = (*MEMORY[0x1E699A150] + MEMORY[0x1E699A150]);
  v7 = swift_task_alloc();
  v1[37] = v7;
  *v7 = v4;
  v7[1] = sub_1CFBD692C;
  v8 = v1[30];

  return v10(0, v5);
}

uint64_t sub_1CFBD692C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[37];
  v8 = *v2;

  if (v1)
  {

    v6 = sub_1CFBD6C84;
  }

  else
  {
    v6 = sub_1CFBD6A4C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1CFBD6A4C()
{
  v1 = v0[34];
  (v0[33])(v0[28], v0[25]);

  v2 = v0[12];
  if (v2)
  {
    v3 = v0[24];
    v4 = v0[21];
    v21 = v0[23];
    v22 = v0[22];
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[18];
    sub_1CFBD6E04();
    v20 = sub_1CFC9FC28();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v0[6] = sub_1CFBD6F70;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFC56F38;
    v0[5] = &block_descriptor_16;
    v9 = _Block_copy(v0 + 2);
    v10 = v7;
    v11 = v2;
    sub_1CFC9F648();
    v0[15] = MEMORY[0x1E69E7CC0];
    sub_1CFBD6E50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
    sub_1CFBCCC94();
    sub_1CFC9FF58();
    MEMORY[0x1D3872170](0, v3, v4, v9);
    _Block_release(v9);

    (*(v6 + 8))(v4, v5);
    (*(v21 + 8))(v3, v22);
    v12 = v0[7];
  }

  v14 = v0[28];
  v13 = v0[29];
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[21];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1CFBD6C84()
{
  v1 = *(v0 + 272);
  (*(v0 + 264))(*(v0 + 224), *(v0 + 200));

  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);

  v7 = *(v0 + 8);

  return v7();
}

id sub_1CFBD6D98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CFBD6E04()
{
  result = qword_1EE04FF80;
  if (!qword_1EE04FF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04FF80);
  }

  return result;
}

unint64_t sub_1CFBD6E50()
{
  result = qword_1EE04D130;
  if (!qword_1EE04D130)
  {
    sub_1CFC9F638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D130);
  }

  return result;
}

uint64_t sub_1CFBD6EA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFBD5EE8(a1, v4, v5, v6, v7, v8);
}

uint64_t SearchContactCell.title.getter()
{
  v1 = sub_1CFC9BDF8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = objc_opt_self();
  v8 = [v3 contact];
  v9 = [v7 stringFromContact:v8 style:0];

  if (v9)
  {
    sub_1CFC9F768();
  }

  v10 = sub_1CFC9F728();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7A8, &qword_1CFCA2730);
  sub_1CFC9F238();
  v11 = sub_1CFC9F728();

  v12 = [v10 attributedStringToHighlightText:v11 style:0];

  sub_1CFC9BE18();
  return sub_1CFC9EDE8();
}

uint64_t SearchContactCell.titleColor.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t SearchContactCell.subtitle.getter()
{
  v1 = *v0;
  result = sub_1CFBD71D4();
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CFBD71D4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E695CDC0]) init];
  v3 = [v0 matchInfo];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = [v3 matchedProperties];
  if (v5)
  {
    v6 = v5;
    sub_1CFC9F6A8();

    v7 = objc_opt_self();
    v8 = sub_1CFC9F698();
    v9 = [v7 matchedProperties:v8 contains:*MEMORY[0x1E695C310]];

    if (v9)
    {

      v10 = [v1 contact];
      v11 = [v10 nickname];
LABEL_8:
      v14 = v11;

      v15 = sub_1CFC9F768();
      return v15;
    }

    v12 = sub_1CFC9F698();

    v13 = [v7 matchedProperties:v12 contains:*MEMORY[0x1E695C328]];

    if (v13)
    {
      v10 = [v1 contact];
      v11 = [v10 organizationName];
      goto LABEL_8;
    }
  }

  v17 = [v1 contact];
  v18 = [v2 summaryForContact:v17 matchInfo:v4];

  if (v18)
  {
    v19 = [v18 string];
    v20 = sub_1CFC9F768();

    return v20;
  }

  v21 = [v4 matchedProperties];
  if (!v21)
  {
    goto LABEL_16;
  }

  v22 = v21;
  sub_1CFC9F6A8();

  v23 = objc_opt_self();
  v24 = sub_1CFC9F698();

  v25 = [v23 matchedProperties:v24 contains:*MEMORY[0x1E695C330]];

  if (!v25 || (v26 = [v1 preferredPhoneNumber]) == 0)
  {
LABEL_16:

    return 0;
  }

  v27 = v26;
  v28 = [v26 value];
  v29 = [v28 formattedStringValue];

  if (v29)
  {
    v30 = v2;
    v2 = v4;
    v4 = v29;
  }

  else
  {
    v31 = [v27 value];
    v32 = [v31 stringValue];

    v30 = v32;
  }

  v33 = sub_1CFC9F768();

  return v33;
}

void sub_1CFBD75F0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v59 = type metadata accessor for RecentsCircleButtonStyle(0);
  v3 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED878, &qword_1CFCA2A18);
  v62 = *(v61 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v13 = &v58 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED880, &qword_1CFCA2A20);
  v64 = *(v63 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v58 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED888, &qword_1CFCA2A28);
  v16 = *(*(v72 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v72);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v58 - v20;
  v21 = *a1;
  v71 = [*a1 contact];
  v69 = [v21 preferredPhoneNumber];
  v22 = *(a1 + 64);
  v70 = *(a1 + 56);
  v67 = v22;
  v79 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED820, &qword_1CFCA2990);
  sub_1CFC9F228();
  v65 = v75;
  v66 = v76;
  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  v23[3] = *(a1 + 32);
  v23[4] = v24;
  v25 = *(a1 + 80);
  v23[5] = *(a1 + 64);
  v23[6] = v25;
  v26 = *(a1 + 16);
  v23[1] = *a1;
  v23[2] = v26;
  sub_1CFBDA3B8(a1, &v75);
  sub_1CFC9F298();
  v74 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED890, &qword_1CFCA2A30);
  v28 = sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
  v29 = sub_1CFBA57C0(&qword_1EC4ED898, &qword_1EC4ED890, &qword_1CFCA2A30);
  sub_1CFC9EED8();
  (*(v7 + 8))(v10, v6);
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v30 = v59;
  v31 = *(v59 + 20);
  sub_1CFC9CD28();
  sub_1CFBDA7AC();
  sub_1CFC9DEB8();
  v75 = v6;
  v76 = v27;
  v77 = v28;
  v78 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1CFBDAB80(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle);
  v34 = v60;
  v35 = v61;
  sub_1CFC9EEC8();
  sub_1CFBDA800(v5);
  (*(v62 + 8))(v13, v35);
  v75 = v35;
  v76 = v30;
  v77 = OpaqueTypeConformance2;
  v78 = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v63;
  sub_1CFC9F008();
  (*(v64 + 8))(v34, v36);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [objc_opt_self() bundleForClass_];
  v39 = sub_1CFC9BE28();
  v41 = v40;

  v75 = v39;
  v76 = v41;
  sub_1CFBB4460();
  v42 = sub_1CFC9EDF8();
  v44 = v43;
  LOBYTE(v35) = v45;
  v46 = v68;
  sub_1CFC9E178();
  sub_1CFBB44C0(v42, v44, v35 & 1);

  sub_1CFBC2FB0(v19, &qword_1EC4ED888, &qword_1CFCA2A28);
  sub_1CFBBAF3C(v46, v19);
  v47 = v73;
  v48 = v71;
  v49 = v69;
  *v73 = v71;
  v47[1] = v49;
  v50 = v67;
  v47[2] = v70;
  v47[3] = v50;
  v51 = v65;
  v52 = v66;
  v47[4] = v65;
  v47[5] = v52;
  v53 = v47;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8A0, &qword_1CFCA2A38);
  sub_1CFBBAF3C(v19, v53 + *(v54 + 48));

  v55 = v48;
  v56 = v49;

  v57 = v51;
  sub_1CFBC2FB0(v46, &qword_1EC4ED888, &qword_1CFCA2A28);
  sub_1CFBC2FB0(v19, &qword_1EC4ED888, &qword_1CFCA2A28);
}

uint64_t sub_1CFBD7E84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFBD7EC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v64 = sub_1CFC9F3A8();
  v57 = *(v64 - 8);
  v3 = *(v57 + 64);
  v4 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - v6;
  v8 = sub_1CFC9C028();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1CFC9F718();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8A8, &qword_1CFCA2A40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  sub_1CFC9F708();
  sub_1CFBDA658();
  sub_1CFC9FDB8();
  sub_1CFC9C018();
  v67 = sub_1CFC9F788();
  v68 = v20;
  v65 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8B0, &qword_1CFCA2A48);
  sub_1CFBDA894();
  sub_1CFBB4460();
  v21 = v19;
  sub_1CFC9F3D8();
  v62 = v7;
  sub_1CFC9F398();
  v22 = [objc_opt_self() supportsFaceTimeAudioCalls];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v59 = 0;
  v60 = 0;
  if (v22)
  {
    v27 = *a1;
    v23 = [*a1 contact];
    v24 = [v27 preferredPhoneNumber];
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    v66 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED820, &qword_1CFCA2990);
    sub_1CFC9F228();
    v28 = v67;
    v59 = v68;

    v29 = v23;
    v30 = v24;
    v60 = v28;
    v31 = v28;
  }

  v61 = v23;
  v53 = v26;
  v54 = v21;
  v55 = v13;
  v56 = v17;
  v32 = *(v13 + 16);
  v32(v17, v21, v12);
  v33 = v57;
  v52 = v12;
  v34 = *(v57 + 16);
  v35 = v63;
  v34(v63, v62, v64);
  v36 = v25;
  v37 = v24;
  v38 = v58;
  v39 = v17;
  v40 = v52;
  v32(v58, v39, v52);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8C8, qword_1CFCA2A50);
  v42 = v64;
  v34(&v38[*(v41 + 48)], v35, v64);
  v43 = &v38[*(v41 + 64)];
  v44 = v60;
  v45 = v61;
  v46 = v53;
  v47 = v59;
  sub_1CFBDA944(v61, v37, v36, v53, v60);
  sub_1CFBDA9B4(v45, v37, v36, v46, v44);
  *v43 = v45;
  *(v43 + 1) = v37;
  *(v43 + 2) = v36;
  *(v43 + 3) = v46;
  *(v43 + 4) = v44;
  *(v43 + 5) = v47;
  v48 = *(v33 + 8);
  v48(v62, v42);
  v49 = *(v55 + 8);
  v49(v54, v40);
  sub_1CFBDA9B4(v61, v37, v36, v46, v44);
  v48(v63, v64);
  return (v49)(v56, v40);
}

uint64_t sub_1CFBD83F0(uint64_t a1)
{
  v2 = [*a1 contact];
  v3 = [v2 phoneNumbers];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D0, &unk_1CFCA4E60);
  v4 = sub_1CFC9F8A8();

  v11 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 48);
  v5[3] = *(a1 + 32);
  v5[4] = v6;
  v7 = *(a1 + 80);
  v5[5] = *(a1 + 64);
  v5[6] = v7;
  v8 = *(a1 + 16);
  v5[1] = *a1;
  v5[2] = v8;
  sub_1CFBDA3B8(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED8D8, &unk_1CFCA2A80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED838, &qword_1CFCA7FC0);
  sub_1CFBA57C0(&qword_1EC4ED8E0, &qword_1EC4ED8D8, &unk_1CFCA2A80);
  sub_1CFBA57C0(&qword_1EC4ED8E8, &qword_1EC4ED8D0, &unk_1CFCA4E60);
  sub_1CFBA57C0(&qword_1EC4ED8C0, &qword_1EC4ED838, &qword_1CFCA7FC0);
  return sub_1CFC9F3B8();
}

uint64_t sub_1CFBD85F0(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  v5 = a2[3];
  v4[3] = a2[2];
  v4[4] = v5;
  v6 = a2[5];
  v4[5] = a2[4];
  v4[6] = v6;
  v7 = a2[1];
  v4[1] = *a2;
  v4[2] = v7;
  sub_1CFBDA3B8(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
  return sub_1CFC9F298();
}

uint64_t sub_1CFBD86F8(void *a1)
{
  v2 = sub_1CFC9C028();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1CFC9F718();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1CFC9BDA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 label];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1CFC9F768();
    v15 = v14;

    v22 = v13;
    v23 = v15;
    sub_1CFC9BD98();
    sub_1CFBB4460();
    v16 = sub_1CFC9FEF8();
    v18 = v17;
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_1CFC9F708();
    sub_1CFBDA658();
    sub_1CFC9FDB8();
    sub_1CFC9C018();
    v16 = sub_1CFC9F788();
    v18 = v19;
  }

  v22 = v16;
  v23 = v18;
  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t SearchContactCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v17 = v1[2];
  v18 = v3;
  v4 = v1[5];
  v19 = v1[4];
  v20 = v4;
  v5 = v1[1];
  v15 = *v1;
  v16 = v5;
  SearchContactCell.title.getter();
  v14[3] = sub_1CFC9D018();
  v14[4] = MEMORY[0x1E6995C08];
  __swift_allocate_boxed_opaque_existential_0Tm(v14);

  sub_1CFC9D008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7B0, &qword_1CFCA2738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7B8, &unk_1CFCA2740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7C0, &qword_1CFCA3EB0);
  sub_1CFBDA23C();
  sub_1CFBA57C0(&qword_1EC4ED7F0, &qword_1EC4ED7B8, &unk_1CFCA2740);
  sub_1CFBB76B4();
  sub_1CFC9CE48();
  v6 = v17;
  v7 = swift_allocObject();
  v8 = v18;
  *(v7 + 3) = v17;
  *(v7 + 4) = v8;
  v9 = v20;
  *(v7 + 5) = v19;
  *(v7 + 6) = v9;
  v10 = v16;
  *(v7 + 1) = v15;
  *(v7 + 2) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7F8, &qword_1CFCA2760);
  *(a1 + *(v11 + 52)) = v6;
  v12 = (a1 + *(v11 + 56));
  *v12 = sub_1CFBDA3B0;
  v12[1] = v7;
  sub_1CFBDA3B8(&v15, v14);
}

uint64_t sub_1CFBD8C1C(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7D8, &unk_1CFCA2750);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CFCA2540;
  *(v6 + 32) = [*a1 contact];
  sub_1CFC9D028();
  LOBYTE(a1) = sub_1CFC9EC18();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v7 = &v5[*(v2 + 36)];
  *v7 = a1;
  *(v7 + 1) = v8;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  *(v7 + 4) = v11;
  v7[40] = 0;
  sub_1CFBDA2F8();
  sub_1CFC9EFA8();
  return sub_1CFBC2FB0(v5, &qword_1EC4ED7D8, &unk_1CFCA2750);
}

void sub_1CFBD8E58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1CFC9E588();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED870, &qword_1CFCA2A10);
  sub_1CFBD75F0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1CFBD8EB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = **(v1 + 16);
  result = sub_1CFBD71D4();
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = result;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
  a1[1] = v5;
  if (!v5)
  {
    v6 = 0;
  }

  a1[2] = 0;
  a1[3] = v6;
  return result;
}

uint64_t sub_1CFBD8F00(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v3 = *a1;
  v4 = a1[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7A8, &qword_1CFCA2730);
  return sub_1CFC9F248();
}

uint64_t sub_1CFBD8F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED838, &qword_1CFCA7FC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-v7 - 8];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v25[0] = v9;
  v25[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
  sub_1CFC9F238();
  v11 = v27;
  if (v27)
  {
    v23 = v8;
    v12 = v4;
    v13 = a2;
    v14 = *a1;
    v26 = *(a1 + 8);
    v27 = v9;
    v15 = *(a1 + 24);
    v25[0] = v10;
    v16 = swift_allocObject();
    v17 = *(a1 + 16);
    *(v16 + 16) = *a1;
    *(v16 + 32) = v17;
    *(v16 + 48) = *(a1 + 32);
    *(v16 + 64) = v11;
    v18 = v14;
    a2 = v13;
    v4 = v12;
    sub_1CFBA29FC(&v26, v24, &qword_1EC4ED818, &qword_1CFCA2988);

    sub_1CFBA29FC(&v27, v24, &qword_1EC4ED820, &qword_1CFCA2990);
    sub_1CFBA29FC(v25, v24, &qword_1EC4ED828, &qword_1CFCA2998);
    v19 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
    sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
    v20 = v23;
    sub_1CFC9F298();

    (*(v5 + 32))(a2, v20, v4);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 56))(a2, v21, 1, v4);
}

uint64_t sub_1CFBD91F4()
{
  v0 = sub_1CFC9C028();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1CFC9F718();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFC9F708();
  sub_1CFBDA658();
  sub_1CFC9FDB8();
  sub_1CFC9C018();
  sub_1CFC9F788();
  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t sub_1CFBD9354(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1CFC9F968();
  *(v1 + 24) = sub_1CFC9F958();
  v3 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBD93EC, v3, v2);
}

uint64_t sub_1CFBD93EC()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1CFBD9C94();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1CFBD9450@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v14 = *v1;
  v15 = v3;
  v16 = v1[2];
  *a1 = sub_1CFC9F538();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED808, &qword_1CFCA2968);
  sub_1CFBD8F68(&v14, a1 + *(v5 + 44));
  v17 = *(&v14 + 1);
  v6 = v14;
  v18 = *(&v16 + 1);
  v19 = v16;
  v7 = swift_allocObject();
  v8 = v15;
  v7[1] = v14;
  v7[2] = v8;
  v7[3] = v16;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED810, &qword_1CFCA2980) + 36));
  v10 = *(sub_1CFC9E008() + 20);
  v11 = v6;
  sub_1CFBA29FC(&v17, v13, &qword_1EC4ED818, &qword_1CFCA2988);

  sub_1CFBA29FC(&v19, v13, &qword_1EC4ED820, &qword_1CFCA2990);
  sub_1CFBA29FC(&v18, v13, &qword_1EC4ED828, &qword_1CFCA2998);
  result = sub_1CFC9F978();
  *v9 = &unk_1CFCA2978;
  v9[1] = v7;
  return result;
}

uint64_t sub_1CFBD95A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = type metadata accessor for RecentsCircleButtonStyle(0);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED860, &unk_1CFCA29D0);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED868, &unk_1CFCA4230);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v59 = v18;
  v60 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
  sub_1CFC9F238();
  v20 = v65;
  if (v65)
  {
    v49 = v17;
    v21 = v13;
    v22 = a2;
    v23 = *a1;
    v63 = *(a1 + 8);
    v64 = v18;
    v51 = v14;
    v24 = *(a1 + 24);
    v65 = v19;
    v25 = swift_allocObject();
    v26 = *(a1 + 16);
    *(v25 + 16) = *a1;
    *(v25 + 32) = v26;
    *(v25 + 48) = *(a1 + 32);
    *(v25 + 64) = v20;
    v27 = v23;
    a2 = v22;
    v13 = v21;
    sub_1CFBA29FC(&v63, &v59, &qword_1EC4ED818, &qword_1CFCA2988);

    sub_1CFBA29FC(&v64, &v59, &qword_1EC4ED820, &qword_1CFCA2990);
    sub_1CFBA29FC(&v65, &v59, &qword_1EC4ED828, &qword_1CFCA2998);
    v50 = v20;
    v28 = v52;
    sub_1CFC9F298();
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    v29 = v58;
    v30 = *(v58 + 20);
    sub_1CFC9CD28();
    sub_1CFBDA7AC();
    sub_1CFC9DEB8();
    v31 = sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
    v32 = sub_1CFBDAB80(&unk_1EE04F608, type metadata accessor for RecentsCircleButtonStyle);
    v33 = v53;
    v34 = v55;
    sub_1CFC9EEC8();
    sub_1CFBDA800(v6);
    (*(v54 + 8))(v28, v34);
    v59 = v34;
    v60 = v29;
    v61 = v31;
    v62 = v32;
    swift_getOpaqueTypeConformance2();
    v35 = v49;
    v36 = v57;
    sub_1CFC9F008();
    (*(v56 + 8))(v33, v36);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38 = [objc_opt_self() bundleForClass_];
    v39 = sub_1CFC9BE28();
    v41 = v40;

    v59 = v39;
    v60 = v41;
    sub_1CFBB4460();
    v42 = sub_1CFC9EDF8();
    v44 = v43;
    LOBYTE(v34) = v45;
    sub_1CFC9E178();
    v46 = v44;
    v14 = v51;
    sub_1CFBB44C0(v42, v46, v34 & 1);

    sub_1CFBC2FB0(v35, &qword_1EC4ED868, &unk_1CFCA4230);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  return (*(v14 + 56))(a2, v47, 1, v13);
}

uint64_t sub_1CFBD9C54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

void sub_1CFBD9C94()
{
  v1 = v0[1];
  if (v1)
  {
    v25 = v1;
    v2 = [v25 value];
    v3 = [v2 stringValue];

    if (!v3)
    {
      sub_1CFC9F768();
      v3 = sub_1CFC9F728();
    }

    v4 = [v3 IDSFormattedDestinationID];

    if (v4 && (v5 = [objc_opt_self() sharedManager], v6 = objc_msgSend(v5, sel_faceTimeVideoAvailabilityForDestination_, v4), v5, v4, v6 == 1))
    {
      v7 = [v25 value];
      v8 = [v7 stringValue];

      if (!v8)
      {
        sub_1CFC9F768();
        v8 = sub_1CFC9F728();
      }

      v9 = [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithDestinationID_];

      v10 = v0[4];
      v30 = v0[5];
      v31 = v10;
      *&v29 = v10;
      *(&v29 + 1) = v30;
      v28 = v9;
      sub_1CFBA29FC(&v31, v27, &qword_1EC4ED820, &qword_1CFCA2990);
      sub_1CFBA29FC(&v30, v27, &qword_1EC4ED828, &qword_1CFCA2998);
      v11 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
      sub_1CFC9F248();

      sub_1CFBC2FB0(&v31, &qword_1EC4ED820, &qword_1CFCA2990);
      sub_1CFBC2FB0(&v30, &qword_1EC4ED828, &qword_1CFCA2998);
    }

    else
    {
    }
  }

  else
  {
    v26 = v0;
    v12 = [*v0 handles];
    v13 = sub_1CFC9F8A8();

    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 40);
      do
      {
        v17 = *(v15 - 1);
        v16 = *v15;

        v18 = sub_1CFC9F728();
        v19 = [v18 IDSFormattedDestinationID];

        if (v19 && (v20 = [objc_opt_self() sharedManager], v21 = objc_msgSend(v20, sel_faceTimeVideoAvailabilityForDestination_, v19), v20, v19, v21 == 1))
        {
          v22 = objc_allocWithZone(MEMORY[0x1E69D8C00]);
          v23 = sub_1CFC9F728();

          v24 = [v22 initWithDestinationID_];

          v29 = *(v26 + 2);
          v31 = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED830, &unk_1CFCA29A0);
          sub_1CFC9F248();
        }

        else
        {
        }

        v15 += 2;
        --v14;
      }

      while (v14);
    }

    else
    {
    }
  }
}

uint64_t sub_1CFBDA09C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v17 = *v1;
  v18 = v3;
  v19 = v1[2];
  *a1 = sub_1CFC9F538();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED850, &qword_1CFCA29B8);
  sub_1CFBD95A4(&v17, a1 + *(v5 + 44));
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x1E69D8FA0];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED858, &unk_1CFCA29C0);
  v9 = a1 + *(v8 + 52);
  sub_1CFC9FCA8();

  v10 = v17;
  v22 = v19;
  v20 = *(&v17 + 1);
  v21 = *(&v19 + 1);
  v11 = swift_allocObject();
  v12 = v18;
  *(v11 + 1) = v17;
  *(v11 + 2) = v12;
  *(v11 + 3) = v19;
  v13 = (a1 + *(v8 + 56));
  *v13 = sub_1CFBDA6FC;
  v13[1] = v11;
  v14 = v10;
  sub_1CFBA29FC(&v20, v16, &qword_1EC4ED818, &qword_1CFCA2988);

  sub_1CFBA29FC(&v22, v16, &qword_1EC4ED820, &qword_1CFCA2990);
  return sub_1CFBA29FC(&v21, v16, &qword_1EC4ED828, &qword_1CFCA2998);
}

unint64_t sub_1CFBDA23C()
{
  result = qword_1EC4ED7C8;
  if (!qword_1EC4ED7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED7B0, &qword_1CFCA2738);
    sub_1CFBDA2F8();
    sub_1CFBDAB80(&qword_1EE04FFC8, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED7C8);
  }

  return result;
}

unint64_t sub_1CFBDA2F8()
{
  result = qword_1EC4ED7D0;
  if (!qword_1EC4ED7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED7D8, &unk_1CFCA2750);
    sub_1CFBA57C0(&qword_1EC4ED7E0, &qword_1EC4ED7E8, &unk_1CFCA5850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED7D0);
  }

  return result;
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

uint64_t sub_1CFBDA428(uint64_t *a1, int a2)
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

uint64_t sub_1CFBDA470(uint64_t result, int a2, int a3)
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

uint64_t sub_1CFBDA4E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CFBDA530(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CFBDA5C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD431C;

  return sub_1CFBD9354(v0 + 16);
}

unint64_t sub_1CFBDA658()
{
  result = qword_1EC4ED848;
  if (!qword_1EC4ED848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4ED848);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1CFBDA780()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  return v2(v1);
}

unint64_t sub_1CFBDA7AC()
{
  result = qword_1EE04FFA0;
  if (!qword_1EE04FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04FFA0);
  }

  return result;
}

uint64_t sub_1CFBDA800(uint64_t a1)
{
  v2 = type metadata accessor for RecentsCircleButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBDA85C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

unint64_t sub_1CFBDA894()
{
  result = qword_1EC4ED8B8;
  if (!qword_1EC4ED8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED8B0, &qword_1CFCA2A48);
    sub_1CFBA57C0(&qword_1EC4ED8C0, &qword_1EC4ED838, &qword_1CFCA7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED8B8);
  }

  return result;
}

id sub_1CFBDA944(id result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    v6 = result;

    v7 = v6;
    v8 = a2;

    return a5;
  }

  return result;
}

void *sub_1CFBDA9B4(void *result, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

unint64_t sub_1CFBDAA98()
{
  result = qword_1EC4ED8F0;
  if (!qword_1EC4ED8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED810, &qword_1CFCA2980);
    sub_1CFBA57C0(&qword_1EC4ED8F8, &qword_1EC4ED900, qword_1CFCA2A90);
    sub_1CFBDAB80(&qword_1EC4ED908, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED8F0);
  }

  return result;
}

uint64_t sub_1CFBDAB80(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CFBDAD54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionLinkActivityItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFBDAF04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = [v2 tuConversationLink];
  v12 = [v11 URL];

  if (v12)
  {
    sub_1CFC9BEF8();

    v13 = sub_1CFC9BF28();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  }

  else
  {
    v13 = sub_1CFC9BF28();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  sub_1CFBDB620(v8, v10);
  sub_1CFC9BF28();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    result = sub_1CFBDB690(v10);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = v13;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
    return (*(v14 + 32))(boxed_opaque_existential_0Tm, v10, v13);
  }

  return result;
}

id sub_1CFBDB3B0()
{
  v1 = v0;
  v2 = sub_1CFC9BF28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v11 = [v1 tuConversationLink];
  v12 = [v11 URL];

  if (v12)
  {
    sub_1CFC9BEF8();

    v12 = sub_1CFC9BEE8();
    (*(v3 + 8))(v9, v2);
  }

  [v10 setOriginalURL_];

  v13 = [v1 tuConversationLink];
  v14 = [v13 URL];

  if (v14)
  {
    sub_1CFC9BEF8();

    v14 = sub_1CFC9BEE8();
    (*(v3 + 8))(v7, v2);
  }

  [v10 setURL_];

  v15 = [objc_allocWithZone(MEMORY[0x1E696EC50]) init];
  v16 = [v1 title];
  if (v16)
  {
    v17 = v16;
    [v15 setTitle_];
  }

  [v10 setSpecialization_];

  return v10;
}

uint64_t sub_1CFBDB620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBDB690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1CFBDB6F8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E6999338]) init];
  *&v4[OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_model] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for SmartActionsBannerView();
  v10 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1CFBDB8AC(0);
  v11 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
  [v10 addSubview_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints_];

  return v10;
}

id sub_1CFBDB8AC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
  v5 = *&v1[OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 bundleForClass_];
  sub_1CFC9BE28();

  v10 = sub_1CFC9F728();

  [v8 setTitle_];

  if (a1)
  {
    v11 = *&v2[OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_model];
    *&v2[OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_model] = a1;
    swift_retain_n();

    v12 = *&v2[v4];
    swift_getKeyPath();
    aBlock[0] = a1;
    sub_1CFBDBFD8();
    v13 = v12;
    sub_1CFC9C158();

    v14 = *(a1 + 16);
    v15 = *(a1 + 24);

    v16 = sub_1CFC9F728();

    [v13 setSubtitle_];
  }

  else
  {
    v17 = *&v2[v4];
    v18 = sub_1CFC9F728();
    [v17 setSubtitle_];
  }

  [*&v2[v4] setAccessoryType_];
  [*&v2[v4] setActionButtonType_];
  v19 = *&v2[v4];
  v20 = sub_1CFC9F728();
  [v19 setActionTitle_];

  v21 = *&v2[v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CFCA2540;
  v23 = v21;

  v24 = sub_1CFC9F728();
  v25 = [objc_opt_self() _systemImageNamed_];

  v26 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  v27 = [objc_opt_self() blueColor];
  [v26 setTintColor_];

  [v26 setContentMode_];

  *(v22 + 32) = v26;
  sub_1CFBDBF84();
  v28 = sub_1CFC9F898();

  [v23 setImageSGViews_];

  v29 = *&v2[v4];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v29;

  v32 = sub_1CFC9F728();
  aBlock[4] = sub_1CFBDBFD0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_2;
  v33 = _Block_copy(aBlock);
  v34 = [objc_opt_self() actionWithTitle:v32 handler:v33];

  _Block_release(v33);

  [v31 setDismissAction_];

  [*&v2[v4] reload];
  [v2 addSubview_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v2[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  return [v2 reloadInputViews];
}

void sub_1CFBDBDE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner;
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC10CallsAppUI22SmartActionsBannerView_banner) setHidden_];
    [*&v2[v1] reload];
  }
}

void sub_1CFBDBE60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1CFBDBEE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartActionsBannerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CFBDBF84()
{
  result = qword_1EE04CF30;
  if (!qword_1EE04CF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04CF30);
  }

  return result;
}

unint64_t sub_1CFBDBFD8()
{
  result = qword_1EE04D8E0;
  if (!qword_1EE04D8E0)
  {
    type metadata accessor for VoicemailSmartActionsBannerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D8E0);
  }

  return result;
}

uint64_t sub_1CFBDC030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CFBA29FC(a3, v27 - v11, &qword_1EC4ED950, &qword_1CFCA2710);
  v13 = sub_1CFC9F998();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CFBC2FB0(v12, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CFC9F938();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CFC9F7A8() + 32;
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

      sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);

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

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
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

uint64_t sub_1CFBDC330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CFBA29FC(a3, v27 - v11, &qword_1EC4ED950, &qword_1CFCA2710);
  v13 = sub_1CFC9F998();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CFBC2FB0(v12, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CFC9F938();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1CFC9F7A8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA40, &qword_1CFCA2CB8);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);

      return v24;
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

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA40, &qword_1CFCA2CB8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1CFBDC644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1CFBA29FC(a3, v27 - v11, &qword_1EC4ED950, &qword_1CFCA2710);
  v13 = sub_1CFC9F998();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1CFBC2FB0(v12, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1CFC9F938();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_1CFC9F7A8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);

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

      sub_1CFBC2FB0(v27[0], &qword_1EC4ED950, &qword_1CFCA2710);

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

  sub_1CFBC2FB0(a3, &qword_1EC4ED950, &qword_1CFCA2710);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

CallsAppUI::AppType_optional __swiftcall AppType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x656D695465636146 && rawValue._object == 0xE800000000000000;
  if (v5 || (sub_1CFCA02B8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x656E6F6850 && object == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1CFCA02B8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t AppType.init(communicationDetailsAppType:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1CFC9CFF8();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == *MEMORY[0x1E6995BF0])
  {
    v7 = 0;
  }

  else if (result == *MEMORY[0x1E6995BE8])
  {
    v7 = 1;
  }

  else
  {
    result = (*(v5 + 8))(a1, v4);
    v7 = 2;
  }

  *a2 = v7;
  return result;
}

uint64_t AppType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656E6F6850;
  }

  else
  {
    result = 0x656D695465636146;
  }

  *v0;
  return result;
}

uint64_t sub_1CFBDCB6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656E6F6850;
  }

  else
  {
    v4 = 0x656D695465636146;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x656E6F6850;
  }

  else
  {
    v6 = 0x656D695465636146;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1CFCA02B8();
  }

  return v9 & 1;
}

uint64_t sub_1CFBDCC10()
{
  v1 = *v0;
  sub_1CFCA0338();
  sub_1CFC9F7C8();

  return sub_1CFCA0378();
}

uint64_t sub_1CFBDCC90()
{
  *v0;
  sub_1CFC9F7C8();
}

uint64_t sub_1CFBDCCFC()
{
  v1 = *v0;
  sub_1CFCA0338();
  sub_1CFC9F7C8();

  return sub_1CFCA0378();
}

void sub_1CFBDCD84(uint64_t *a1@<X8>)
{
  v2 = 0x656D695465636146;
  if (*v1)
  {
    v2 = 0x656E6F6850;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CFBDCDC0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper);
  }

  else
  {
    v3 = v0;
    sub_1CFC9D238();
    sub_1CFC9D228();
    v4 = sub_1CFC9D278();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v2 = sub_1CFC9D248();
    v7 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1CFBDCE68()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager);
  }

  else
  {
    v4 = v0;
    sub_1CFC9CB08();
    v5 = sub_1CFC9CAF8();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1CFBDCED8()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton);
  }

  else
  {
    v4 = sub_1CFBDCF3C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1CFBDCF3C(uint64_t a1)
{
  v2 = sub_1CFC9FE58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  type metadata accessor for SymbolScale(0);
  sub_1CFC9CD28();
  v10 = [objc_opt_self() configurationWithScale_];
  sub_1CFC9CD28();
  v11 = sub_1CFC9F728();
  v12 = [objc_opt_self() systemImageNamed_];

  sub_1CFC9FE38();
  v13 = v10;
  sub_1CFC9FE08();
  sub_1CFC9FE28();
  sub_1CFBA2D80(0, &qword_1EE04CEF0, 0x1E69DC738);
  (*(v3 + 16))(v7, v9, v2);
  v14 = sub_1CFC9FE68();
  v15 = [objc_opt_self() labelColor];
  [v14 setTintColor_];

  [v14 addTarget:a1 action:sel_shareMessage forControlEvents:64];
  [v14 setPreferredBehavioralStyle_];

  (*(v3 + 8))(v9, v2);
  return v14;
}

uint64_t sub_1CFBDD32C@<X0>(uint64_t a1@<X8>)
{
  sub_1CFC9FE18();
  v2 = sub_1CFC9FE58();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1CFBDD39C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9FE58();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t VoicemailDetailViewController.__allocating_init(item:appType:deleteAction:callbackAction:contactDetailViewController:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v37 = v9;
  v16 = objc_allocWithZone(v9);
  v17 = *a2;
  v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
  v18 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  v19 = type metadata accessor for VoicemailSmartActionsBannerViewModel();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v22 + 40) = sub_1CFBE56E8(v23);
  *(v22 + 48) = 0;
  sub_1CFC9C188();
  *&v16[v18] = v22;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems] = v23;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager] = 0;
  *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton] = 0;
  v24 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item;
  v25 = sub_1CFC9C448();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&v16[v24], a1, v25);
  v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_appType] = v17;
  v27 = &v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction];
  *v27 = a3;
  v27[1] = a4;
  v28 = &v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction];
  *v28 = a5;
  v28[1] = a6;
  v29 = &v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController];
  *v29 = a7;
  v29[1] = a8;

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v32 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  v33 = result;
  v34 = sub_1CFC9FFD8();
  result = v33;
  if (!v34)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x1D3872640](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(result + 32);
LABEL_6:
    v32 = v31;

LABEL_9:
    *&v16[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v32;
    v40.receiver = v16;
    v40.super_class = v37;
    v35 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
    v35[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
    v36 = v35;
    sub_1CFBDDA1C();

    (*(v26 + 8))(a1, v25);
    return v36;
  }

  __break(1u);
  return result;
}

unint64_t VoicemailDetailViewController.init(item:appType:deleteAction:callbackAction:contactDetailViewController:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v16 = *a2;
  v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
  v17 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  v18 = type metadata accessor for VoicemailSmartActionsBannerViewModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0xE000000000000000;
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v21 + 40) = sub_1CFBE56E8(v22);
  *(v21 + 48) = 0;
  sub_1CFC9C188();
  *&v9[v17] = v21;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems] = v22;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager] = 0;
  *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton] = 0;
  v23 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item;
  v24 = sub_1CFC9C448();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v9[v23], a1, v24);
  v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_appType] = v16;
  v26 = &v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction];
  *v26 = a3;
  v26[1] = a4;
  v27 = &v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction];
  *v27 = a5;
  v27[1] = a6;
  v28 = &v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController];
  *v28 = a7;
  v28[1] = a8;

  result = sub_1CFC9C428();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v31 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  v32 = result;
  v33 = sub_1CFC9FFD8();
  result = v32;
  if (!v33)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1D3872640](0, result);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(result + 32);
LABEL_6:
    v31 = v30;

LABEL_9:
    *&v9[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v31;
    v39.receiver = v9;
    v39.super_class = ObjectType;
    v34 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
    v34[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear] = 0;
    v35 = v34;
    sub_1CFBDDA1C();

    (*(v25 + 8))(a1, v24);
    return v35;
  }

  __break(1u);
  return result;
}

void sub_1CFBDDA1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v17 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v6 = sub_1CFC9C208();
  v7 = [v5 smartVoicemailActionsEnabled];

  if (v7)
  {
    if (v6)
    {
      v8 = sub_1CFC9F998();
      v9 = *(*(v8 - 8) + 56);
      v9(v4, 1, 1, v8);
      sub_1CFC9F968();
      v10 = v0;
      v11 = sub_1CFC9F958();
      v12 = swift_allocObject();
      v13 = MEMORY[0x1E69E85E0];
      v12[2] = v11;
      v12[3] = v13;
      v12[4] = v10;
      sub_1CFBDC030(0, 0, v4, &unk_1CFCA2E58, v12);

      v9(v4, 1, 1, v8);
      v14 = v10;
      v15 = sub_1CFC9F958();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = v13;
      v16[4] = v14;
      sub_1CFBDC030(0, 0, v4, &unk_1CFCA2E68, v16);
    }
  }
}

BOOL sub_1CFBDDC38()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView;
  v2 = [*(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView) givenName];
  v3 = sub_1CFC9F768();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return 0;
  }

  v7 = [*(v0 + v1) organizationName];
  v8 = sub_1CFC9F768();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    return 0;
  }

  v13 = [*(v0 + v1) familyName];
  v14 = sub_1CFC9F768();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  return v17 == 0;
}

Swift::Void __swiftcall VoicemailDetailViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for VoicemailDetailContainerView();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  if (sub_1CFBDDC38())
  {
    v10 = sub_1CFC9C408();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1CFC9D5F8();

      if (v12)
      {
        v13 = sub_1CFC9C778();

LABEL_13:
        v18 = *&v1[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView];
        *&v1[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v13;

        goto LABEL_14;
      }
    }

    v14 = sub_1CFC9C428();
    if (v14 >> 62)
    {
      v16 = v14;
      v17 = sub_1CFC9FFD8();
      v14 = v16;
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1D3872640](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v15 = *(v14 + 32);
      }

      v13 = v15;

      goto LABEL_13;
    }

    v13 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_13;
  }

LABEL_14:
  v19 = sub_1CFBDE120();
  v20 = *&v1[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel];
  *&v1[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel] = v19;

  sub_1CFBDE4AC();
  sub_1CFBDE77C(v9);
  sub_1CFBE57FC(v9, v7);
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED940, &qword_1CFCA2B30));
  v22 = sub_1CFC9E6C8();
  [v1 addChildViewController_];
  v23 = [v22 view];
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v1 view];
  if (!v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;

  v29 = [v1 view];
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;

  [v24 setFrame_];
  v33 = [v22 view];

  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v33 setAutoresizingMask_];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = v34;
  v36 = [v22 view];

  if (v36)
  {
    [v35 addSubview_];

    [v22 didMoveToParentViewController_];

    sub_1CFBE5860(v9);
    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1CFBDE120()
{
  v1 = sub_1CFC9C448();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item);
  v6 = sub_1CFBDDC38();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC9D718();

  v11 = sub_1CFC9D708();
  v12 = type metadata accessor for VoicemailDetailContainerViewModel();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1CFC287E0(v4, v6, v11, &unk_1CFCA2E00, v7, sub_1CFBE6D2C, v8, sub_1CFBE6D34, v9, sub_1CFBE6D3C, v10);

  v16 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v17 = sub_1CFC9C208();
  v18 = [v16 smartVoicemailActionsEnabled];

  if (v18 && (v17 & 1) != 0)
  {
    if (*(v15 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions) == 1)
    {
      *(v15 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v21[1] = v15;
      sub_1CFBE710C(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
      sub_1CFC9C148();
    }
  }

  return v15;
}

void sub_1CFBDE4AC()
{
  v1 = v0;
  v2 = sub_1CFC9D0E8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFBE0C18(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA0, &unk_1CFCA2DC0));
  v6 = sub_1CFC9E108();
  v7 = objc_allocWithZone(sub_1CFC9D108());
  v8 = v6;
  v9 = sub_1CFC9D0F8();
  v10 = [v1 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v11 == 2)
  {
    v12 = [objc_opt_self() currentDevice];
    v13 = [v12 userInterfaceIdiom];

    if (v13 != 6)
    {
      v14 = [v1 navigationItem];
      v15 = [v14 titleView];

      [v15 removeFromSuperview];
      v16 = [v1 navigationItem];
      [v16 setTitleView_];
    }
  }

  v17 = [v1 navigationItem];
  [v17 setTitleView_];

  v18 = [v1 navigationItem];
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v21 = sub_1CFC9F728();

  [v18 setBackButtonTitle_];
}

uint64_t sub_1CFBDE77C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel);

  v4 = sub_1CFBDCED8();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v1 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v7 = type metadata accessor for VoicemailDetailContainerView();
  v8 = v7[5];
  type metadata accessor for VoicemailDetailContainerViewModel();
  sub_1CFBE710C(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);

  sub_1CFC9F418();
  v9 = v7[6];
  type metadata accessor for VoicemailSmartActionsBannerViewModel();
  sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9F418();
  v10 = (a1 + v7[7]);
  *v10 = sub_1CFBE6BC4;
  v10[1] = v5;
  *(a1 + v7[8]) = v4;
  *(a1 + v7[9]) = v6;
  v11 = a1 + v7[10];
  result = sub_1CFC9F228();
  *v11 = v13;
  *(v11 + 8) = v14;
  return result;
}

Swift::Void __swiftcall VoicemailDetailViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v17.receiver = v2;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1);
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (!v6 || (v7 = [v4 currentDevice], v8 = objc_msgSend(v7, sel_userInterfaceIdiom), v7, v8 == 5))
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED948, &unk_1CFCA2B38));
    v11 = sub_1CFC9E108();
    v12 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

    [v12 setStyle_];
    v13 = [objc_opt_self() systemGreenColor];
    [v12 setTintColor_];

    v14 = [v2 navigationItem];
    [v14 setRightBarButtonItem:v12 animated:1];
  }

  v15 = [v2 navigationItem];
  [v15 setBackButtonDisplayMode_];

  v16 = [v2 navigationItem];
  [v16 setLargeTitleDisplayMode_];
}

uint64_t sub_1CFBDEC1C(uint64_t a1)
{
  v1[5] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = sub_1CFC9F968();
  v1[8] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBDECF0, v4, v3);
}

uint64_t sub_1CFBDECF0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  v5 = sub_1CFC9F998();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v8 = sub_1CFC9F958();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;

  sub_1CFBDC030(0, 0, v3, &unk_1CFCA2E48, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1CFBDEE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFBDEEF0, v6, v5);
}

uint64_t sub_1CFBDEEF0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction + 8);
    v9 = (*(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction) + **(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction));
    v4 = *(*(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction) + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1CFBDF044;

    return v9();
  }

  else
  {
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1CFBDF044()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFBDF164, v4, v3);
}

uint64_t sub_1CFBDF164()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = [v1 navigationController];
  v4 = v0[9];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 popViewControllerAnimated_];

    v4 = v6;
  }

  v7 = v0[1];

  return v7();
}

void sub_1CFBDF220()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1CFBDF274();
  }
}

uint64_t sub_1CFBDF274()
{
  v82 = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v73 = &v65 - v2;
  v3 = sub_1CFC9BEB8();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9C008();
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v65 - v12;
  v13 = sub_1CFC9BF28();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v74 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v65 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v65 - v23;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v24 = sub_1CFC9D938();
  __swift_project_value_buffer(v24, qword_1EE052308);
  v25 = sub_1CFC9D918();
  v26 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1CFB9F000, v25, v26, "Voicemail share button tapped", v27, 2u);
    MEMORY[0x1D3873280](v27, -1, -1);
  }

  result = sub_1CFC9C408();
  if (result)
  {
    v29 = result;
    v70 = v19;
    sub_1CFC9D5D8();

    v30 = v78;
    v68 = *(v14 + 32);
    v69 = v14 + 32;
    v68(v78, v22, v13);
    v31 = sub_1CFC9C408();
    if (v31)
    {
      v32 = v31;
      sub_1CFC9D598();

      (*(v76 + 32))(v75, v11, v77);
      v33 = objc_allocWithZone(MEMORY[0x1E6988168]);
      v34 = sub_1CFC9BEE8();
      v35 = [v33 initWithURL:v34 options:0];

      v36 = *MEMORY[0x1E69872D0];
      v37 = objc_allocWithZone(MEMORY[0x1E6987E60]);
      v67 = v35;
      v66 = [v37 initWithAsset:v35 presetName:v36];
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_1CFCA00D8();

      v80 = 0x69616D6563696F76;
      v81 = 0xEA00000000002D6CLL;
      sub_1CFBE710C(&unk_1EC4EDA68, MEMORY[0x1E69695A8]);
      v38 = v13;
      v39 = sub_1CFCA0288();
      MEMORY[0x1D3871D30](v39);

      MEMORY[0x1D3871D30](1630825774, 0xE400000000000000);
      v40 = v80;
      v41 = v81;
      v42 = v74;
      sub_1CFC9BED8();
      v80 = v40;
      v81 = v41;
      v44 = v71;
      v43 = v72;
      (*(v71 + 104))(v6, *MEMORY[0x1E6968F70], v72);
      sub_1CFBB4460();
      v45 = v70;
      sub_1CFC9BF18();
      (*(v44 + 8))(v6, v43);
      v71 = *(v14 + 8);
      v72 = v14 + 8;
      (v71)(v42, v38);

      v46 = [objc_opt_self() defaultManager];
      v47 = v45;
      v48 = sub_1CFC9BEE8();
      v80 = 0;
      LOBYTE(v42) = [v46 removeItemAtURL:v48 error:&v80];

      if (v42)
      {
        v49 = v80;
      }

      else
      {
        v50 = v80;
        v51 = sub_1CFC9BE88();

        swift_willThrow();
      }

      v52 = sub_1CFC9F998();
      v53 = v73;
      (*(*(v52 - 8) + 56))(v73, 1, 1, v52);
      v54 = v74;
      (*(v14 + 16))(v74, v45, v38);
      sub_1CFC9F968();
      v55 = v66;
      v65 = v66;
      v56 = v79;
      v57 = sub_1CFC9F958();
      v58 = (*(v14 + 80) + 40) & ~*(v14 + 80);
      v59 = v38;
      v60 = (v15 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      v62 = MEMORY[0x1E69E85E0];
      *(v61 + 2) = v57;
      *(v61 + 3) = v62;
      *(v61 + 4) = v55;
      v68(&v61[v58], v54, v59);
      *&v61[v60] = v56;
      sub_1CFBDC030(0, 0, v53, &unk_1CFCA2D00, v61);

      v63 = v71;
      (v71)(v47, v59);
      (*(v76 + 8))(v75, v77);
      result = v63(v78, v59);
    }

    else
    {
      result = (*(v14 + 8))(v30, v13);
    }
  }

  v64 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CFBDFA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1CFC9F998();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_1CFC9F968();
    v7 = v5;
    v8 = sub_1CFC9F958();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_1CFBDC030(0, 0, v3, &unk_1CFCA2E38, v9);
  }
}

void sub_1CFBDFBAC(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CFBDFC08(a1 & 1);
  }
}

void sub_1CFBDFC08(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45[-1] - v4;
  v6 = sub_1CFC9C318();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9C3B8();
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x1E6993678])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v13 = sub_1CFC9D938();
    __swift_project_value_buffer(v13, qword_1EE052308);
    v14 = v12;
    v15 = sub_1CFC9D918();
    v16 = sub_1CFC9FAC8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_1CFB9F000, v15, v16, "Reporting spam for message %@", v17, 0xCu);
      sub_1CFBC2FB0(v18, &qword_1EC4ED770, &qword_1CFCA2CF0);
      MEMORY[0x1D3873280](v18, -1, -1);
      MEMORY[0x1D3873280](v17, -1, -1);
    }

    if (sub_1CFC9D688() == 0xD00000000000003BLL && 0x80000001CFCAAB50 == v20)
    {
    }

    else
    {
      v22 = sub_1CFCA02B8();

      if ((v22 & 1) == 0)
      {
        sub_1CFBDCDC0();
        v46 = sub_1CFC9D698();
        v47 = sub_1CFBE710C(&qword_1EC4EDA60, MEMORY[0x1E699BEF8]);
        v45[0] = v14;
        v23 = v14;
        sub_1CFC9D258();

        goto LABEL_23;
      }
    }

    v37 = sub_1CFBDCE68();
    sub_1CFC9CAE8();

    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v11 != *MEMORY[0x1E6993658])
  {
    (*(v7 + 8))(v10, v6);
    if ((a1 & 1) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

  (*(v7 + 96))(v10, v6);
  v25 = *v10;
  v24 = *(v10 + 1);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v26 = sub_1CFC9D938();
  __swift_project_value_buffer(v26, qword_1EE052308);
  v27 = v25;
  v28 = sub_1CFC9D918();
  v29 = sub_1CFC9FAC8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_1CFB9F000, v28, v29, "Reporting spam for call %@", v30, 0xCu);
    sub_1CFBC2FB0(v31, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v31, -1, -1);
    MEMORY[0x1D3873280](v30, -1, -1);
  }

  if (sub_1CFC9D688() == 0xD00000000000003BLL && 0x80000001CFCAAB50 == v33)
  {
  }

  else
  {
    v35 = sub_1CFCA02B8();

    if ((v35 & 1) == 0)
    {
      sub_1CFBDCDC0();
      v46 = sub_1CFBA2D80(0, &qword_1EC4EDA50, 0x1E6993590);
      v47 = MEMORY[0x1E69D8A20];
      v45[0] = v27;
      v36 = v27;
      sub_1CFC9D258();

LABEL_23:
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      if ((a1 & 1) == 0)
      {
        return;
      }

      goto LABEL_29;
    }
  }

  v43 = sub_1CFBDCE68();
  sub_1CFC9CAD8();

  if ((a1 & 1) == 0)
  {
    return;
  }

LABEL_29:
  v38 = sub_1CFC9F998();
  (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC9F968();

  v40 = sub_1CFC9F958();
  v41 = swift_allocObject();
  v42 = MEMORY[0x1E69E85E0];
  v41[2] = v40;
  v41[3] = v42;
  v41[4] = v39;

  sub_1CFBDC030(0, 0, v5, &unk_1CFCA2CE8, v41);
}

uint64_t sub_1CFBE028C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_1CFC9F998();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  sub_1CFC9F968();

  v11 = sub_1CFC9F958();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v9;
  v12[5] = a1;
  v12[6] = a2;

  sub_1CFBDC030(0, 0, v7, &unk_1CFCA2D90, v12);
}

uint64_t sub_1CFBE0424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_1CFC9C008();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  sub_1CFC9F968();
  v6[12] = sub_1CFC9F958();
  v11 = sub_1CFC9F938();
  v6[13] = v11;
  v6[14] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE051C, v11, v10);
}

uint64_t sub_1CFBE051C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1CFC9C2E8();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v0[16] = sub_1CFC9C2D8();
    v7 = *(v3 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel);
    swift_getKeyPath();
    v0[5] = v7;
    sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);

    sub_1CFC9C158();

    v8 = *(v7 + 32);

    if (*(v8 + 16))
    {
      v9 = sub_1CFC94B54(v0[7], v0[8]);
      if (v10)
      {
        (*(v0[10] + 16))(v0[11], *(v8 + 56) + *(v0[10] + 72) * v9, v0[9]);

        v14 = *(MEMORY[0x1E6993638] + 4);
        v15 = swift_task_alloc();
        v0[17] = v15;
        *v15 = v0;
        v15[1] = sub_1CFBE0758;
        v9 = v0[11];
        v10 = 0;
        v11 = 0xE000000000000000;
        v12 = 0;
        v13 = 0xE000000000000000;

        return MEMORY[0x1EEDF2810](v9, v10, v11, v12, v13);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x1EEDF2810](v9, v10, v11, v12, v13);
  }

  v16 = v0[12];

  v17 = v0[11];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1CFBE0758()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  v6 = v2[11];
  v7 = v2[10];
  v8 = v2[9];
  if (v0)
  {
    (*(v7 + 8))(v2[11], v2[9]);

    v9 = v2[13];
    v10 = v2[14];
    v11 = sub_1CFBE0984;
  }

  else
  {
    v12 = v2[16];

    (*(v7 + 8))(v6, v8);
    v9 = v2[13];
    v10 = v2[14];
    v11 = sub_1CFBE0914;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1CFBE0914()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1CFBE0984()
{
  v1 = v0[12];

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = sub_1CFC9D938();
  __swift_project_value_buffer(v3, qword_1EE052308);
  v4 = v2;
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[15];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1CFB9F000, v5, v6, "Process actions failed with error: %@", v10, 0xCu);
    sub_1CFBC2FB0(v11, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v11, -1, -1);
    MEMORY[0x1D3873280](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[11];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1CFBE0C18@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_1CFC9C448();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  sub_1CFBE0FA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CFCA2540;
  v10 = *(v1 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView);
  *(v9 + 32) = v10;
  v11 = v10;
  sub_1CFBDDC38();
  v12 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel;
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel))
  {

    sub_1CFC20038();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1CFC9D128();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1CFC9D118();
  if (*(v1 + v12) && (v16 = *(v1 + v12), , sub_1CFC202E8(), , (v17 = *(v1 + v12)) != 0))
  {
    swift_getKeyPath();
    v30 = v17;
    sub_1CFBE710C(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);

    sub_1CFC9C158();

    v18 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
    swift_beginAccess();
    v19 = v26;
    v20 = v27;
    v21 = v17 + v18;
    v22 = v28;
    (*(v27 + 16))(v26, v21, v28);

    sub_1CFC9C3A8();
    (*(v20 + 8))(v19, v22);
  }

  else
  {
    v23 = sub_1CFC9BFB8();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  }

  return sub_1CFC9D0D8();
}

uint64_t sub_1CFBE0FA4()
{
  if (sub_1CFBDDC38())
  {
    result = sub_1CFC9C3D8();
    if (v1)
    {
      return result;
    }
  }

  else
  {
    v2 = sub_1CFC9C408();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1CFC9D5F8();

      if (v4)
      {
        v5 = [v4 value];
        v6 = sub_1CFC9F768();

        return v6;
      }
    }
  }

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_1CFC9BE28();

  return v9;
}

void sub_1CFBE111C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController);
    v2 = *(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactDetailViewController + 8);
    v4 = *(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView);
    v5 = v3();

    if (v5)
    {
      v6 = [v1 navigationController];
      if (v6)
      {
        v7 = v6;
        [v6 pushViewController:v5 animated:1];
      }

      v1 = v5;
    }
  }
}

Swift::Void __swiftcall VoicemailDetailViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  if ([v1 isMovingToParentViewController])
  {
    v4 = [v1 traitCollection];
    v5 = [v4 horizontalSizeClass];

    if (v5 == 2)
    {
      v6 = [objc_opt_self() currentDevice];
      v7 = [v6 userInterfaceIdiom];

      if (v7 != 6)
      {
        sub_1CFBDE4AC();
      }
    }
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1);
}

Swift::Void __swiftcall VoicemailDetailViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1);
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  [v4 setProximityMonitoringEnabled_];

  if ([v1 isMovingFromParentViewController])
  {
    v5 = [v3 currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 != 6)
    {
      v7 = [v1 navigationItem];
      v8 = [v7 titleView];

      [v8 removeFromSuperview];
      v9 = [v1 navigationItem];
      [v9 setTitleView_];
    }
  }
}

uint64_t sub_1CFBE14CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction);
    v2 = *(result + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_callbackAction + 8);
    v3 = result;

    v1();
  }

  return result;
}

uint64_t sub_1CFBE154C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_1CFC9F638();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = sub_1CFC9F658();
  v4[14] = v8;
  v9 = *(v8 - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  sub_1CFC9F968();
  v4[18] = sub_1CFC9F958();
  v13 = sub_1CFC9F938();
  v4[19] = v13;
  v4[20] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE16D4, v13, v12);
}

uint64_t sub_1CFBE16D4()
{
  v1 = v0[17];
  v2 = v0[10] + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item;
  sub_1CFC9C338();
  v3 = sub_1CFC9C008();
  v0[21] = v3;
  v4 = *(v3 - 8);
  v0[22] = v4;
  result = (*(v4 + 48))(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[23] = v6;
    *v6 = v0;
    v6[1] = sub_1CFBE17FC;
    v7 = v0[17];

    return (sub_1CFC8505C)(v7);
  }

  return result;
}

uint64_t sub_1CFBE17FC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 192) = a1;

  (*(v4 + 8))(v6, v5);
  v7 = *(v2 + 160);
  v8 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1CFBE1988, v8, v7);
}

uint64_t sub_1CFBE1988()
{
  v1 = v0[18];

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_1CFC9D938();
  __swift_project_value_buffer(v3, qword_1EE052308);

  v4 = sub_1CFC9D918();
  v5 = sub_1CFC9FAC8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&dword_1CFB9F000, v4, v5, "Smart actions recieved count=%ld", v8, 0xCu);
    MEMORY[0x1D3873280](v8, -1, -1);
  }

  else
  {
    v9 = v0[24];
  }

  v10 = *(v0[10] + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel);
  v11 = *(v0[24] + 16);
  if ((*(v10 + 48) ^ (v11 != 0)))
  {
    v12 = v11 != 0;
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v10;
    *(v13 + 24) = v12;
    v0[8] = v10;
    sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);

    sub_1CFC9C148();
  }

  else
  {
    *(v10 + 48) = v11 != 0;
  }

  v14 = v0[24];
  v15 = v0[16];
  v16 = v0[15];
  v28 = v0[14];
  v29 = v0[17];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];
  v20 = v0[11];
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v27 = sub_1CFC9FC28();
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v19;
  v0[6] = sub_1CFBE7104;
  v0[7] = v21;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1CFC56F38;
  v0[5] = &block_descriptor_119;
  v22 = _Block_copy(v0 + 2);
  v23 = v19;
  sub_1CFC9F648();
  v0[9] = MEMORY[0x1E69E7CC0];
  sub_1CFBE710C(&qword_1EE04D130, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBCCC94();
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v15, v17, v22);
  _Block_release(v22);

  (*(v18 + 8))(v17, v20);
  (*(v16 + 8))(v15, v28);
  v24 = v0[7];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1CFBE1DB4(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v88 = sub_1CFC9C008();
  v3 = *(v88 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v88);
  v87 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v80 = v73 - v7;
  v8 = sub_1CFC9C248();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  v89 = sub_1CFBE56E8(MEMORY[0x1E69E7CC0]);
  v14 = sub_1CFBE54FC(v13);
  v15 = *(a1 + 16);
  if (!v15)
  {
LABEL_40:
    v68 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
    v69 = v84;
    v70 = *(v84 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel);

    sub_1CFC2C1A8(v89);

    v71 = *(v69 + v68);

    sub_1CFC2BED8(v14);
  }

  v17 = *(v9 + 16);
  v16 = v9 + 16;
  v78 = v3;
  v79 = v17;
  v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v82 = (v3 + 32);
  v83 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  v76 = (v16 - 8);
  v77 = v8;
  v19 = *(v16 + 56);
  v73[1] = v3 + 40;
  v74 = v19;
  v81 = v12;
  v75 = v16;
  while (1)
  {
    v85 = v18;
    v86 = v15;
    v79(v12);
    v21 = *(v84 + v83);
    swift_getKeyPath();
    v90 = v21;
    sub_1CFBE710C(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);

    sub_1CFC9C158();

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);

    if (!v23 && v22 == 0xE000000000000000)
    {
    }

    else
    {
      v25 = sub_1CFCA02B8();

      if ((v25 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v26 = *(v84 + v83);

    v27 = sub_1CFC9C218();
    if (*(v27 + 16) && (v28 = sub_1CFC94B54(0x656C746974, 0xE500000000000000), (v29 & 1) != 0))
    {
      v30 = (*(v27 + 56) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];

      v90 = v31;
      v91 = v32;
      sub_1CFBB4460();
      v33 = sub_1CFC9FED8();
      v35 = v34;
    }

    else
    {

      v33 = 0;
      v35 = 0xE000000000000000;
    }

    if (*(v26 + 16) == v33 && *(v26 + 24) == v35 || (v36 = *(v26 + 24), (sub_1CFCA02B8() & 1) != 0))
    {
      *(v26 + 16) = v33;
      *(v26 + 24) = v35;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v73[-4] = v26;
      v73[-3] = v33;
      v73[-2] = v35;
      v90 = v26;
      sub_1CFC9C148();
    }

LABEL_21:
    v38 = sub_1CFC9C228();
    v40 = sub_1CFC8551C(v38, v39);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = v42 ? v44 : 0;
    if (v42)
    {
      v48 = v40;
    }

    else
    {
      v46 = 0xE000000000000000;
      v48 = 0;
    }

    v49 = v42 ? v42 : 0xE000000000000000;

    v50 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v50;
    sub_1CFBE516C(v47, v46, v48, v49, isUniquelyReferenced_nonNull_native);

    v89 = v90;
    v52 = v80;
    sub_1CFC9C238();
    v53 = *v82;
    (*v82)(v87, v52, v88);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v90 = v14;
    v55 = sub_1CFC94B54(v48, v49);
    v57 = v14[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      break;
    }

    v61 = v56;
    if (v14[3] < v60)
    {
      sub_1CFC7C288(v60, v54);
      v55 = sub_1CFC94B54(v48, v49);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_43;
      }

LABEL_35:
      v63 = v78;
      if (v61)
      {
        goto LABEL_3;
      }

      goto LABEL_36;
    }

    if (v54)
    {
      goto LABEL_35;
    }

    v67 = v55;
    sub_1CFC7BA60();
    v55 = v67;
    v63 = v78;
    if (v61)
    {
LABEL_3:
      v20 = v55;

      v14 = v90;
      (*(v63 + 40))(*(v90 + 56) + *(v63 + 72) * v20, v87, v88);
      v12 = v81;
      (*v76)(v81, v77);
      goto LABEL_4;
    }

LABEL_36:
    v14 = v90;
    *(v90 + 8 * (v55 >> 6) + 64) |= 1 << v55;
    v64 = (v14[6] + 16 * v55);
    *v64 = v48;
    v64[1] = v49;
    v53((v14[7] + *(v63 + 72) * v55), v87, v88);
    v12 = v81;
    (*v76)(v81, v77);
    v65 = v14[2];
    v59 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v59)
    {
      goto LABEL_42;
    }

    v14[2] = v66;
LABEL_4:
    v18 = v85 + v74;
    v15 = v86 - 1;
    if (v86 == 1)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1CFCA0308();
  __break(1u);
  return result;
}

uint64_t sub_1CFBE2490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  sub_1CFC9F968();
  v4[7] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE2584, v7, v6);
}

uint64_t sub_1CFBE2584()
{
  v1 = v0[6];
  v2 = v0[2] + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item;
  sub_1CFC9C338();
  v3 = sub_1CFC9C008();
  v0[10] = v3;
  v4 = *(v3 - 8);
  v0[11] = v4;
  result = (*(v4 + 48))(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1CFBE26AC;
    v7 = v0[6];

    return (sub_1CFC8579C)(v7);
  }

  return result;
}

uint64_t sub_1CFBE26AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 104) = a1;

  (*(v4 + 8))(v6, v5);
  v7 = *(v2 + 72);
  v8 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1CFBE2838, v8, v7);
}

uint64_t sub_1CFBE2838()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[2];

  v4 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems;
  v5 = *(v3 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems);
  *(v3 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems) = v1;

  if (*(v3 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel))
  {
    v48 = *(v0[11] + 56);
    result = v48(v0[5], 1, 1, v0[10]);
    v7 = *(v3 + v4);
    if (v7 >> 62)
    {
      goto LABEL_29;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        if (v8 < 1)
        {
          __break(1u);
          return result;
        }

        v47 = v7 & 0xC000000000000001;
        v9 = v7;

        v10 = v9;
        v11 = 0;
        v12 = MEMORY[0x1E69E7CC0];
        v13 = MEMORY[0x1E69E7CC0];
        v45 = v8;
        v46 = v9;
        while (1)
        {
          if (v47)
          {
            v14 = MEMORY[0x1D3872640](v11, v10);
          }

          else
          {
            v14 = *(v10 + 8 * v11 + 32);
          }

          v15 = v14;
          v16 = sub_1CFC9C278();
          v18 = v17;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_1CFC7B37C(0, *(v12 + 2) + 1, 1, v12);
          }

          v20 = *(v12 + 2);
          v19 = *(v12 + 3);
          if (v20 >= v19 >> 1)
          {
            v12 = sub_1CFC7B37C((v19 > 1), v20 + 1, 1, v12);
          }

          *(v12 + 2) = v20 + 1;
          v21 = &v12[16 * v20];
          *(v21 + 4) = v16;
          *(v21 + 5) = v18;
          v22 = sub_1CFC9C268();
          if ((v22 & 0xC000000000000001) == 0)
          {
            break;
          }

          v23 = MEMORY[0x1D3872640](0, v22);
LABEL_16:
          v24 = v23;

          v25 = sub_1CFC9C298();
          v27 = v26;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1CFC7B248(0, *(v13 + 2) + 1, 1, v13);
          }

          v29 = *(v13 + 2);
          v28 = *(v13 + 3);
          if (v29 >= v28 >> 1)
          {
            v13 = sub_1CFC7B248((v28 > 1), v29 + 1, 1, v13);
          }

          *(v13 + 2) = v29 + 1;
          v30 = &v13[16 * v29];
          *(v30 + 4) = v25;
          *(v30 + 5) = v27;
          v31 = sub_1CFC9C268();
          if ((v31 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x1D3872640](0, v31);
          }

          else
          {
            if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v32 = *(v31 + 32);
          }

          v33 = v32;
          ++v11;
          v34 = v0[10];
          v35 = v0[5];
          v36 = v0[3];

          sub_1CFC9C288();

          sub_1CFBC2FB0(v35, &qword_1EC4ED570, &unk_1CFCA2470);
          v48(v36, 0, 1, v34);
          sub_1CFBE7074(v36, v35);
          v10 = v46;
          if (v45 == v11)
          {

            goto LABEL_31;
          }
        }

        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v37 = v7;
        result = sub_1CFC9FFD8();
        v7 = v37;
        v8 = result;
        if (!result)
        {
          goto LABEL_30;
        }
      }

      v23 = *(v22 + 32);
      goto LABEL_16;
    }

LABEL_30:

    v12 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v39 = v0[4];
    v38 = v0[5];
    sub_1CFC1E1DC(v12);
    sub_1CFC1E38C(v13);
    sub_1CFBA29FC(v38, v39, &qword_1EC4ED570, &unk_1CFCA2470);
    sub_1CFC1E4FC(v39);

    sub_1CFBC2FB0(v38, &qword_1EC4ED570, &unk_1CFCA2470);
  }

  v41 = v0[5];
  v40 = v0[6];
  v43 = v0[3];
  v42 = v0[4];

  v44 = v0[1];

  return v44();
}

uint64_t sub_1CFBE2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v8 = sub_1CFC9BF28();
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v6[20] = *(v9 + 64);
  v6[21] = swift_task_alloc();
  v10 = sub_1CFC9C448();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();
  v6[25] = sub_1CFC9F968();
  v6[26] = sub_1CFC9F958();
  v14 = sub_1CFC9F938();
  v6[27] = v14;
  v6[28] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE2DD4, v14, v13);
}

uint64_t sub_1CFBE2DD4()
{
  if (v0[14])
  {
    v1 = v0[25];
    v2 = *MEMORY[0x1E6987478];
    v3 = sub_1CFC9F958();
    v0[29] = v3;
    v4 = *(MEMORY[0x1E69E59F0] + 4);
    v5 = swift_task_alloc();
    v0[30] = v5;
    *v5 = v0;
    v5[1] = sub_1CFBE32A8;
    v6 = v0[15];
    v7 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE68110](v6, v2, v3, v7);
  }

  else
  {
    v8 = v0[26];

    v9 = v0[24];
    v10 = v0[22];
    v11 = v0[23];
    v12 = v0[21];
    v42 = v12;
    v13 = v0[19];
    v43 = v13;
    v40 = v0[18];
    v46 = v0[17];
    v47 = v0[16];
    v14 = v0[15];
    v45 = v14;
    v15 = *(v11 + 16);
    v15(v9, &v47[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item], v10);
    v16 = *(v13 + 16);
    v16(v12, v14, v40);
    v44 = v16;
    v17 = v16;
    v41 = type metadata accessor for VoicemailActivtyItem(0);
    v18 = objc_allocWithZone(v41);
    v15(&v18[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_item], v9, v10);
    v17(&v18[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL], v12, v40);
    v0[11] = v18;
    v0[12] = v41;
    v19 = objc_msgSendSuper2((v0 + 11), sel_init);
    (*(v43 + 8))(v12, v40);
    (*(v11 + 8))(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1CFCA1DD0;
    *(v20 + 56) = v41;
    *(v20 + 32) = v19;
    v21 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v22 = v19;
    v23 = sub_1CFC9F898();

    v24 = [v21 initWithActivityItems:v23 applicationActivities:0];

    v44(v42, v45, v40);
    v25 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v26 = swift_allocObject();
    (*(v43 + 32))(v26 + v25, v42, v40);
    v0[6] = sub_1CFBE69B4;
    v0[7] = v26;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CFBE3C54;
    v0[5] = &block_descriptor_3;
    v27 = _Block_copy(v0 + 2);
    v28 = v0[7];

    [v24 setCompletionWithItemsHandler_];
    _Block_release(v27);
    v29 = sub_1CFC9F998();
    (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
    v30 = v24;
    v31 = v47;
    v32 = sub_1CFC9F958();
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v30;
    v33[5] = v31;
    sub_1CFBDC030(0, 0, v46, &unk_1CFCA2D18, v33);

    v35 = v0[24];
    v36 = v0[21];
    v37 = v0[17];

    v38 = v0[1];

    return v38();
  }
}

uint64_t sub_1CFBE32A8()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_1CFBE37E0;
  }

  else
  {
    v7 = v2[29];

    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_1CFBE33C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CFBE33C4()
{
  v1 = v0[26];

  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v35 = v5;
  v6 = v0[19];
  v36 = v6;
  v33 = v0[18];
  v39 = v0[17];
  v40 = v0[16];
  v7 = v0[15];
  v38 = v7;
  v8 = *(v4 + 16);
  v8(v2, &v40[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_item], v3);
  v9 = *(v6 + 16);
  v9(v5, v7, v33);
  v37 = v9;
  v10 = v9;
  v34 = type metadata accessor for VoicemailActivtyItem(0);
  v11 = objc_allocWithZone(v34);
  v8(&v11[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_item], v2, v3);
  v10(&v11[OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL], v5, v33);
  v0[11] = v11;
  v0[12] = v34;
  v12 = objc_msgSendSuper2((v0 + 11), sel_init);
  (*(v36 + 8))(v5, v33);
  (*(v4 + 8))(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED590, &qword_1CFCA2488);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CFCA1DD0;
  *(v13 + 56) = v34;
  *(v13 + 32) = v12;
  v14 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
  v15 = v12;
  v16 = sub_1CFC9F898();

  v17 = [v14 initWithActivityItems:v16 applicationActivities:0];

  v37(v35, v38, v33);
  v18 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v19 = swift_allocObject();
  (*(v36 + 32))(v19 + v18, v35, v33);
  v0[6] = sub_1CFBE69B4;
  v0[7] = v19;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1CFBE3C54;
  v0[5] = &block_descriptor_3;
  v20 = _Block_copy(v0 + 2);
  v21 = v0[7];

  [v17 setCompletionWithItemsHandler_];
  _Block_release(v20);
  v22 = sub_1CFC9F998();
  (*(*(v22 - 8) + 56))(v39, 1, 1, v22);
  v23 = v17;
  v24 = v40;
  v25 = sub_1CFC9F958();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v23;
  v26[5] = v24;
  sub_1CFBDC030(0, 0, v39, &unk_1CFCA2D18, v26);

  v28 = v0[24];
  v29 = v0[21];
  v30 = v0[17];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1CFBE37E0()
{
  v24 = v0;
  v1 = v0[29];
  v2 = v0[26];

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v3 = v0[31];
  v4 = sub_1CFC9D938();
  __swift_project_value_buffer(v4, qword_1EE052308);
  v5 = v3;
  v6 = sub_1CFC9D918();
  v7 = sub_1CFC9FAF8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[31];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[10];
    v15 = sub_1CFCA0318();
    v17 = sub_1CFBB531C(v15, v16, &v23);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1CFB9F000, v6, v7, "Failed to export voicemail: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D3873280](v11, -1, -1);
    MEMORY[0x1D3873280](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[17];

  v21 = v0[1];

  return v21();
}

void sub_1CFBE39D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFC9D938();
    __swift_project_value_buffer(v5, qword_1EE052308);
    v6 = a4;
    oslog = sub_1CFC9D918();
    v7 = sub_1CFC9FAF8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1CFB9F000, oslog, v7, "Share sheet completed with error: %@", v8, 0xCu);
      sub_1CFBC2FB0(v9, &qword_1EC4ED770, &qword_1CFCA2CF0);
      MEMORY[0x1D3873280](v9, -1, -1);
      MEMORY[0x1D3873280](v8, -1, -1);
    }

    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = [objc_opt_self() defaultManager];
    v14 = sub_1CFC9BEE8();
    v23[0] = 0;
    v15 = [v13 removeItemAtURL:v14 error:v23];

    v16 = v23[0];
    if (v15)
    {
      v17 = *MEMORY[0x1E69E9840];

      v18 = v16;
    }

    else
    {
      v19 = v23[0];
      v20 = sub_1CFC9BE88();

      swift_willThrow();
      v21 = *MEMORY[0x1E69E9840];
    }
  }
}

uint64_t sub_1CFBE3C54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_1CFC9F8A8();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

uint64_t sub_1CFBE3D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBE3DA8, v7, v6);
}

uint64_t sub_1CFBE3DA8()
{
  v1 = *(v0 + 32);

  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1 || (v5 = [v2 currentDevice], v6 = objc_msgSend(v5, sel_userInterfaceIdiom), v5, v6 == 5))
  {
    v7 = *(v0 + 16);
    [v7 setModalPresentationStyle_];
    v8 = [v7 popoverPresentationController];
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = [v2 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 6)
  {
    v16 = *(v0 + 16);
    [v16 setModalPresentationStyle_];
    v8 = [v16 popoverPresentationController];
    if (v8)
    {
LABEL_4:
      v9 = v8;
      v10 = *(v0 + 24);
      v11 = sub_1CFBDCED8();
      [v9 setSourceView_];
    }
  }

LABEL_5:
  [*(v0 + 24) presentViewController:*(v0 + 16) animated:1 completion:0];
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1CFBE3FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFBE404C, v6, v5);
}

uint64_t sub_1CFBE404C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction + 8);
    v9 = (*(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction) + **(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction));
    v4 = *(*(Strong + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_deleteAction) + 4);
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1CFBE41A0;

    return v9();
  }

  else
  {
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1CFBE41A0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFBE7180, v4, v3);
}

uint64_t sub_1CFBE4314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1CFC9F968();
  *(v4 + 24) = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBE43AC, v6, v5);
}

uint64_t sub_1CFBE43AC()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_1CFBE44C8();
  v4 = [objc_opt_self() viewControllerForNewContact_];
  [v4 setDelegate_];
  [v4 setAllowsEditing_];
  [v4 setAllowsActions_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v2 presentViewController:v5 animated:1 completion:0];

  v6 = v0[1];

  return v6();
}

unint64_t sub_1CFBE44C8()
{
  result = sub_1CFC9C428();
  if (result >> 62)
  {
    v3 = result;
    v4 = sub_1CFC9FFD8();
    result = v3;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v2 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1D3872640](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v1 = *(result + 32);
  }

  v2 = v1;

LABEL_9:
  v5 = sub_1CFC9C408();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1CFC9D5F8();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1CFC9C778();

      v6 = v2;
      v2 = v9;
    }
  }

  return v2;
}

id VoicemailDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VoicemailDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall VoicemailDetailViewController.contactViewController(_:didCompleteWith:)(CNContactViewController *_, CNContact_optional didCompleteWith)
{
  isa = didCompleteWith.value.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_1CFC9F998();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1CFC9F968();
  v9 = isa;
  v10 = v2;
  v11 = sub_1CFC9F958();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = isa;
  v12[5] = v10;
  sub_1CFBDC030(0, 0, v7, &unk_1CFCA2B50, v12);
}

uint64_t sub_1CFBE4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFBE49E0, v7, v6);
}

uint64_t sub_1CFBE49E0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 24);
  if (v2)
  {
    v4 = *(v0 + 16);
    v5 = *&v3[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView];
    *&v3[OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_contactForView] = v4;
    v6 = v4;

    sub_1CFBDE4AC();
    v7 = [v3 presentedViewController];
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v9 = [*(v0 + 24) presentedViewController];
    if (!v9)
    {
      goto LABEL_7;
    }

    v6 = v9;
    [v9 dismissViewControllerAnimated:1 completion:0];
  }

LABEL_7:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1CFBE4C44()
{
  result = sub_1CFC9C3D8();
  if (!v1)
  {
    v2 = sub_1CFC9C408();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1CFC9D648();

      return v4;
    }

    else
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = [objc_opt_self() bundleForClass_];
      v7 = sub_1CFC9BE28();

      return v7;
    }
  }

  return result;
}

uint64_t sub_1CFBE4D48@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI20VoicemailActivtyItem_messageURL;
  v4 = sub_1CFC9BF28();
  a1[3] = v4;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  v6 = *(*(v4 - 8) + 16);

  return v6(boxed_opaque_existential_0Tm, v1 + v3, v4);
}

id VoicemailActivtyItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoicemailActivtyItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoicemailActivtyItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFBE516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CFC94B54(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1CFC7C608(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1CFC94B54(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1CFCA0308();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1CFC7BCE0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_1CFBE52F4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1CFBE53E8;

  return v6(v2 + 32);
}

uint64_t sub_1CFBE53E8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_1CFBE54FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB0, &qword_1CFCA2ED8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAB8, &qword_1CFCA2EE0);
    v8 = sub_1CFCA0238();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1CFBA29FC(v10, v6, &qword_1EC4EDAB0, &qword_1CFCA2ED8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1CFC94B54(*v6, v13);
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
      v19 = sub_1CFC9C008();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFBE56E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAA8, &qword_1CFCA2ED0);
    v3 = sub_1CFCA0238();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1CFC94B54(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CFBE57FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailDetailContainerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBE5860(uint64_t a1)
{
  v2 = type metadata accessor for VoicemailDetailContainerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFBE58C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFBE4948(a1, v4, v5, v7, v6);
}

void sub_1CFBE5984()
{
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_playMessageOnAppear) = 0;
  v1 = OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionsViewModel;
  v2 = type metadata accessor for VoicemailSmartActionsBannerViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xE000000000000000;
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 32) = sub_1CFBE54FC(MEMORY[0x1E69E7CC0]);
  *(v5 + 40) = sub_1CFBE56E8(v6);
  *(v5 + 48) = 0;
  sub_1CFC9C188();
  *(v0 + v1) = v5;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_detailViewContainer) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController_smartActionDataItems) = v6;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___carrierVoiceSpamReportHelper) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___spamReportManager) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI29VoicemailDetailViewController____lazy_storage___shareButton) = 0;
  sub_1CFCA01D8();
  __break(1u);
}

unint64_t sub_1CFBE5A9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDAC0, &qword_1CFCA2EE8);
    v3 = sub_1CFCA0238();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CFC94B54(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFBE5BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EDA88, &unk_1CFCA2D30);
    v3 = sub_1CFCA0238();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1CFC94BCC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CFBE5C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA78, &qword_1CFCA2D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA80, &qword_1CFCA2D28);
    v8 = sub_1CFCA0238();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1CFBA29FC(v10, v6, &qword_1EC4EDA78, &qword_1CFCA2D20);
      result = sub_1CFBB9DA4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1CFC9CF08();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1CFC9CEA8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1CFBE5E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_1CFC9D7C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDA98, &unk_1CFCA2D40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E696EC58]) init];
  sub_1CFBE4C44();
  v15 = sub_1CFC9F728();

  [v14 setName_];

  sub_1CFC9BEC8();
  sub_1CFC9D7B8();
  sub_1CFC9D7A8();
  sub_1CFBA29FC(v13, v11, &qword_1EC4EDA98, &unk_1CFCA2D40);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4EDA98, &unk_1CFCA2D40);
    v16 = 0;
  }

  else
  {
    sub_1CFC9D798();
    (*(v5 + 8))(v11, v4);
    v16 = sub_1CFC9F728();
  }

  [v14 setType_];

  sub_1CFC9C3A8();
  v17 = sub_1CFC9BFB8();
  v18 = *(v17 - 8);
  v19 = 0;
  if ((*(v18 + 48))(v3, 1, v17) != 1)
  {
    v19 = sub_1CFC9BF68();
    (*(v18 + 8))(v3, v17);
  }

  [v14 setCreationDate_];

  v20 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  [v20 setSpecialization_];

  sub_1CFBC2FB0(v13, &qword_1EC4EDA98, &unk_1CFCA2D40);
  return v20;
}

unint64_t sub_1CFBE6270()
{
  result = qword_1EC4ED958;
  if (!qword_1EC4ED958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4ED958);
  }

  return result;
}

uint64_t sub_1CFBE6310()
{
  result = sub_1CFC9C448();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1CFBE6428()
{
  result = sub_1CFC9C448();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1CFC9BF28();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CFBE65A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFBD4A14;

  return sub_1CFBE52F4(a1, v5);
}

uint64_t sub_1CFBE6660(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFBD4A14;

  return sub_1CFC68FBC(a1, v5);
}

uint64_t sub_1CFBE6718(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFBD431C;

  return sub_1CFC68FBC(a1, v5);
}

uint64_t sub_1CFBE67D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE3FB4(a1, v4, v5, v6);
}

uint64_t sub_1CFBE6884(uint64_t a1)
{
  v4 = *(sub_1CFC9BF28() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CFBD4A14;

  return sub_1CFBE2C3C(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_1CFBE69B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(*(sub_1CFC9BF28() - 8) + 80);

  sub_1CFBE39D4(a1, a2, a3, a4);
}

uint64_t sub_1CFBE6A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFBE3D10(a1, v4, v5, v7, v6);
}

uint64_t sub_1CFBE6B0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CFBD4A14;

  return sub_1CFC68DCC(a1, v5);
}

uint64_t sub_1CFBE6BCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFBE0424(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CFBE6C9C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFBDEC1C(v0);
}

uint64_t sub_1CFBE6D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE4314(a1, v4, v5, v6);
}

uint64_t sub_1CFBE6E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBDEE58(a1, v4, v5, v6);
}

uint64_t sub_1CFBE6ECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE154C(a1, v4, v5, v6);
}

uint64_t objectdestroy_92Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CFBE6FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFBE2490(a1, v4, v5, v6);
}

uint64_t sub_1CFBE7074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFBE710C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFBE71A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1CFC9D938();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1CFC9D928();
}

id PhonePaneViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1CFC9F728();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PhonePaneViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1CFC9F728();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for PhonePaneViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id PhonePaneViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PhonePaneViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PhonePaneViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PhonePaneViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhonePaneViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CFBE7530@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFC9E4E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAD0, &qword_1CFCA2F20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for PhonePanedView(0);
  sub_1CFBA29FC(v1 + *(v12 + 40), v11, &qword_1EC4EDAD0, &qword_1CFCA2F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFBCCE88(v11, a1, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  }

  v14 = *v11;
  sub_1CFC9FAE8();
  v15 = sub_1CFC9EB68();
  sub_1CFC9D858();

  sub_1CFC9E4D8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t PhonePanedView.init(paneConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v3 = sub_1CFC9E0A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = sub_1CFC9F448();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1CFC9F228();
  v18 = v41;
  *a2 = v40;
  *(a2 + 16) = v18;
  LOBYTE(v38) = 0;
  sub_1CFC9F228();
  v19 = *(&v40 + 1);
  *(a2 + 24) = v40;
  *(a2 + 32) = v19;
  v20 = type metadata accessor for PhonePanedView(0);
  v21 = v20[6];
  (*(v11 + 104))(v17, *MEMORY[0x1E697D710], v10);
  (*(v11 + 16))(v15, v17, v10);
  sub_1CFC9F228();
  (*(v11 + 8))(v17, v10);
  v22 = a2 + v20[8];
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1CFC9F228();
  v23 = v40;
  v24 = v41;
  *v22 = v40;
  *(v22 + 16) = v24;
  v25 = v20[9];

  sub_1CFC9E098();
  (*(v4 + 16))(v36, v9, v3);
  sub_1CFC9F228();
  (*(v4 + 8))(v9, v3);
  v26 = v20[10];
  *(a2 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAD0, &qword_1CFCA2F20);
  swift_storeEnumTagMultiPayload();
  v27 = a2 + v20[11];
  LOBYTE(v38) = 0;
  sub_1CFC9F228();
  v28 = *(&v40 + 1);
  *v27 = v40;
  *(v27 + 8) = v28;
  v29 = (a2 + v20[7]);
  v30 = v37;
  v38 = v37;
  type metadata accessor for PhonePaneConfiguration(0);

  sub_1CFC9F228();
  v31 = *(&v40 + 1);
  *v29 = v40;
  v29[1] = v31;
  swift_getKeyPath();
  *&v40 = v30;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v33 = *(v30 + 16);
  v32 = *(v30 + 24);
  v40 = v23;
  v41 = v24;
  v38 = v33;
  v39 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAE8, &qword_1CFCA2F50);
  sub_1CFC9F248();
}

__n128 PhonePanedView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  v2 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v65 - v3;
  v4 = type metadata accessor for PhonePanedView(0);
  v80 = *(v4 - 8);
  v81 = *(v80 + 64);
  v5 = v4 - 8;
  v66 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1CFC9F448();
  v67 = *(v68 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB00, &qword_1CFCA2F68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v65 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB08, &qword_1CFCA2F70);
  v70 = *(v69 - 8);
  v19 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v82 = v65 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB10, &qword_1CFCA2F78);
  v75 = *(v74 - 8);
  v21 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v83 = v65 - v22;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB18, &qword_1CFCA2F80);
  v76 = *(v77 - 8);
  v23 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v65 - v24;
  v25 = v1;
  sub_1CFBE84FC(v18);
  v26 = sub_1CFC9E1E8();
  v27 = sub_1CFC9EBB8();
  v28 = &v18[*(v15 + 36)];
  *v28 = v26;
  v28[8] = v27;
  v29 = *(v5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB20, &qword_1CFCA2F88);
  v79 = v25;
  sub_1CFC9F258();
  MEMORY[0x1D3871890](v11);
  sub_1CFBC2FB0(v14, &qword_1EC4EDAF8, &qword_1CFCA2F60);
  v65[0] = v7;
  sub_1CFBF4E04(v25, v7);
  v30 = *(v80 + 80);
  v80 = (v30 + 16) & ~v30;
  v65[1] = v30;
  v31 = swift_allocObject();
  sub_1CFBF4E68(v7, v31 + ((v30 + 16) & ~v30));
  v32 = sub_1CFBF6EDC(&qword_1EC4EDB30, &qword_1EC4EDB00, &qword_1CFCA2F68, sub_1CFBF4EE4);
  v33 = sub_1CFBF4FC8(&qword_1EC4EDB68, MEMORY[0x1E697D718]);
  v34 = v68;
  sub_1CFC9F088();

  v35 = v34;
  (*(v67 + 8))(v10, v34);
  sub_1CFBC2FB0(v18, &qword_1EC4EDB00, &qword_1CFCA2F68);
  v36 = v71;
  v37 = v79;
  sub_1CFBE7530(v71);
  v38 = v37;
  v39 = v65[0];
  sub_1CFBF4E04(v38, v65[0]);
  v40 = v80;
  v41 = swift_allocObject();
  v42 = v39;
  sub_1CFBF4E68(v39, v41 + v40);
  *&v85 = v15;
  *(&v85 + 1) = v35;
  *&v86 = v32;
  *(&v86 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_1CFBF534C();
  v45 = v82;
  v46 = v69;
  v47 = v73;
  sub_1CFC9F088();

  sub_1CFBC2FB0(v36, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v48 = v46;
  (*(v70 + 8))(v45, v46);
  v49 = v79;
  v50 = (v79 + *(v66 + 36));
  v52 = *v50;
  v51 = v50[1];
  *&v85 = v52;
  *(&v85 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v53 = v84;
  swift_getKeyPath();
  *&v85 = v53;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v54 = v53[15];

  v84 = v54;
  sub_1CFBF4E04(v49, v42);
  v55 = v80;
  v56 = swift_allocObject();
  sub_1CFBF4E68(v42, v56 + v55);
  sub_1CFBF5480();
  *&v85 = v48;
  *(&v85 + 1) = v47;
  *&v86 = OpaqueTypeConformance2;
  *(&v86 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  sub_1CFBF4FC8(&qword_1EC4EDB88, sub_1CFBF5480);
  v57 = v72;
  v58 = v74;
  v59 = v83;
  sub_1CFC9F088();

  (*(v75 + 8))(v59, v58);
  sub_1CFC9F538();
  sub_1CFC9E268();
  v60 = v78;
  (*(v76 + 32))(v78, v57, v77);
  v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB90, &qword_1CFCA2FE0) + 36);
  v62 = v90;
  *(v61 + 64) = v89;
  *(v61 + 80) = v62;
  *(v61 + 96) = v91;
  v63 = v86;
  *v61 = v85;
  *(v61 + 16) = v63;
  result = v88;
  *(v61 + 32) = v87;
  *(v61 + 48) = result;
  return result;
}

uint64_t sub_1CFBE84FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB60, &qword_1CFCA2FA8);
  v32 = *(v37 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v31 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC30, &qword_1CFCA3510);
  v5 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v31 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB50, &qword_1CFCA2FA0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v31 - v8;
  v10 = type metadata accessor for PhonePanedView(0);
  v11 = &v1[*(v10 + 28)];
  v13 = *v11;
  v12 = *(v11 + 1);
  v38 = *v11;
  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v14 = v40;
  swift_getKeyPath();
  v38 = v14;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v15 = *(v14 + 184);

  swift_getKeyPath();
  v38 = v15;
  sub_1CFBF4FC8(&qword_1EC4EDC18, type metadata accessor for PhonePaneTabConfiguration);
  sub_1CFC9C158();

  v16 = *(v15 + 16);

  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = &v2[*(v10 + 32)];
    v19 = *v18;
    v20 = *(v18 + 2);
    v40 = v19;
    v41 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAE8, &qword_1CFCA2F50);
    v21 = sub_1CFC9F258();
    MEMORY[0x1EEE9AC00](v21);
    *(&v31 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC38, &qword_1CFCA3518);
    sub_1CFBA57C0(&qword_1EC4EDC40, &qword_1EC4EDC38, &qword_1CFCA3518);
    v22 = v31;
    sub_1CFC9F3F8();
    v23 = v32;
    v24 = v37;
    (*(v32 + 16))(v35, v22, v37);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDB48, &qword_1EC4EDB50, &qword_1CFCA2FA0);
    sub_1CFBA57C0(&qword_1EC4EDB58, &qword_1EC4EDB60, &qword_1CFCA2FA8);
    sub_1CFC9E798();
    return (*(v23 + 8))(v22, v24);
  }

  else
  {
    sub_1CFBE9B94(v9);
    v38 = v13;
    v39 = v12;
    sub_1CFC9F238();
    v26 = v40;
    swift_getKeyPath();
    v38 = v26;
    sub_1CFC9C158();

    v28 = *(v26 + 16);
    v27 = *(v26 + 24);

    v29 = v35;
    v30 = &v9[*(v34 + 52)];
    *v30 = v28;
    *(v30 + 1) = v27;
    sub_1CFBA29FC(v9, v29, &qword_1EC4EDB50, &qword_1CFCA2FA0);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDB48, &qword_1EC4EDB50, &qword_1CFCA2FA0);
    sub_1CFBA57C0(&qword_1EC4EDB58, &qword_1EC4EDB60, &qword_1CFCA2FA8);
    sub_1CFC9E798();
    return sub_1CFBC2FB0(v9, &qword_1EC4EDB50, &qword_1CFCA2FA0);
  }
}

uint64_t sub_1CFBE8ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for PhonePanedView(0) + 28));
  v7 = *v3;
  v8 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  swift_beginAccess();
  v4 = *(v9 + 192);
  sub_1CFBB256C(v4);

  if (v4)
  {
    v6 = sub_1CFC9F438();
    v4(v6 & 1);
    return sub_1CFBABFA0(v4);
  }

  return result;
}

uint64_t sub_1CFBE8C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a1;
  v84 = a2;
  v4 = sub_1CFC9E0A8();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1CFC9E948();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v74[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v74[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v80 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v74[-v26];
  v79 = v25;
  v28 = *(v25 + 48);
  sub_1CFBA29FC(v83, &v74[-v26], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v84, &v27[v28], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v83 = v9;
  v29 = *(v9 + 48);
  if (v29(v27, 1, v8) == 1)
  {
    if (v29(&v27[v28], 1, v8) == 1)
    {
      return sub_1CFBC2FB0(v27, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    }

    goto LABEL_6;
  }

  sub_1CFBA29FC(v27, v20, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v29(&v27[v28], 1, v8) == 1)
  {
    (*(v83 + 8))(v20, v8);
LABEL_6:
    v77 = v29;
    sub_1CFBC2FB0(v27, &qword_1EC4EDC20, &qword_1CFCA3508);
    v31 = v82;
    goto LABEL_7;
  }

  v77 = v29;
  v39 = v83;
  v40 = v18;
  v41 = v78;
  (*(v83 + 32))(v78, &v27[v28], v8);
  sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50]);
  v75 = sub_1CFC9F6F8();
  v42 = *(v39 + 8);
  v43 = v41;
  v18 = v40;
  v42(v43, v8);
  v42(v20, v8);
  result = sub_1CFBC2FB0(v27, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v31 = v82;
  if (v75)
  {
    return result;
  }

LABEL_7:
  v32 = v83;
  (*(v83 + 104))(v18, *MEMORY[0x1E697FF40], v8);
  (*(v32 + 56))(v18, 0, 1, v8);
  v33 = v80;
  v34 = *(v79 + 48);
  sub_1CFBA29FC(v84, v80, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v18, &v33[v34], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v35 = v77;
  if (v77(v33, 1, v8) != 1)
  {
    v84 = v18;
    v38 = v76;
    sub_1CFBA29FC(v33, v76, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    if (v35(&v33[v34], 1, v8) != 1)
    {
      v44 = v83;
      v45 = v78;
      (*(v83 + 32))(v78, &v33[v34], v8);
      sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50]);
      v46 = v38;
      v47 = sub_1CFC9F6F8();
      v48 = *(v44 + 8);
      v48(v45, v8);
      sub_1CFBC2FB0(v84, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v48(v46, v8);
      v31 = v82;
      sub_1CFBC2FB0(v33, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v37 = v81;
      if ((v47 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    sub_1CFBC2FB0(v84, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v83 + 8))(v38, v8);
    v37 = v81;
LABEL_12:
    sub_1CFBC2FB0(v33, &qword_1EC4EDC20, &qword_1CFCA3508);
    goto LABEL_17;
  }

  sub_1CFBC2FB0(v18, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v36 = v35(&v33[v34], 1, v8);
  v37 = v81;
  if (v36 != 1)
  {
    goto LABEL_12;
  }

  sub_1CFBC2FB0(v33, &qword_1EC4EDAF0, &qword_1CFCA2F58);
LABEL_16:
  v49 = type metadata accessor for PhonePanedView(0);
  v50 = (a3 + *(v49 + 28));
  v52 = *v50;
  v51 = v50[1];
  *&v87 = v52;
  *(&v87 + 1) = v51;
  v53 = v52;
  v83 = v52;
  v84 = v49;
  v54 = v51;
  v80 = v51;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v78 = v85;
  *&v87 = v53;
  *(&v87 + 1) = v54;
  sub_1CFC9F238();
  v55 = v85;
  swift_getKeyPath();
  *&v87 = v55;
  v77 = sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v57 = v55[9];
  v56 = v55[10];
  v58 = v55[11];
  v59 = v55[12];
  v61 = v55[13];
  v60 = v55[14];
  v62 = v55[15];

  v63 = v62;

  *&v87 = v57;
  *(&v87 + 1) = v56;
  v88 = v58;
  v89 = v59;
  v90 = v61;
  v91 = v60;
  v92 = v63;
  v37 = v81;
  sub_1CFBF1648(&v87);

  *&v87 = v83;
  *(&v87 + 1) = v80;
  sub_1CFC9F238();
  v64 = v85;
  swift_getKeyPath();
  *&v87 = v64;
  sub_1CFC9C158();

  v66 = *(v64 + 2);
  v65 = *(v64 + 3);

  v67 = a3 + *(v84 + 8);
  v68 = *v67;
  v69 = *(v67 + 16);
  v87 = v68;
  v88 = v69;
  v85 = v66;
  v86 = v65;
  v31 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAE8, &qword_1CFCA2F50);
  sub_1CFC9F248();
LABEL_17:
  v70 = *(type metadata accessor for PhonePanedView(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  sub_1CFC9F238();
  v71 = sub_1CFC9E088();
  v72 = *(v37 + 8);
  result = v72(v7, v31);
  if ((v71 & 1) == 0)
  {
    do
    {
      sub_1CFC9F238();
      sub_1CFC9E068();
      sub_1CFC9F248();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
      sub_1CFC9F238();
      v73 = sub_1CFC9E088();
      result = v72(v7, v31);
    }

    while ((v73 & 1) == 0);
  }

  return result;
}

uint64_t sub_1CFBE9594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CFC9E0A8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46[1] = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9E948();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v46[0] = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v48 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v46 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v46 - v23;
  v47 = a3;
  sub_1CFBE7530(v46 - v23);
  (*(v8 + 104))(v22, *MEMORY[0x1E697FF38], v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  v25 = *(v12 + 56);
  sub_1CFBA29FC(v24, v15, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v22, &v15[v25], &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v26 = *(v8 + 48);
  if (v26(v15, 1, v7) != 1)
  {
    sub_1CFBA29FC(v15, v48, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    if (v26(&v15[v25], 1, v7) != 1)
    {
      v28 = v46[0];
      (*(v8 + 32))(v46[0], &v15[v25], v7);
      sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50]);
      v29 = v48;
      v30 = sub_1CFC9F6F8();
      v31 = *(v8 + 8);
      v31(v28, v7);
      sub_1CFBC2FB0(v22, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      sub_1CFBC2FB0(v24, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v31(v29, v7);
      result = sub_1CFBC2FB0(v15, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      if ((v30 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1CFBC2FB0(v22, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v24, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v8 + 8))(v48, v7);
    return sub_1CFBC2FB0(v15, &qword_1EC4EDC20, &qword_1CFCA3508);
  }

  sub_1CFBC2FB0(v22, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBC2FB0(v24, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v26(&v15[v25], 1, v7) != 1)
  {
    return sub_1CFBC2FB0(v15, &qword_1EC4EDC20, &qword_1CFCA3508);
  }

  sub_1CFBC2FB0(v15, &qword_1EC4EDAF0, &qword_1CFCA2F58);
LABEL_8:
  v32 = type metadata accessor for PhonePanedView(0);
  v33 = (v47 + *(v32 + 28));
  v35 = *v33;
  v34 = v33[1];
  v49 = v35;
  v50 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v36 = v56;
  swift_getKeyPath();
  v49 = v36;
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v38 = v36[9];
  v37 = v36[10];
  v40 = v36[11];
  v39 = v36[12];
  v42 = v36[13];
  v41 = v36[14];
  v43 = v36[15];

  v44 = v43;

  v49 = v38;
  v50 = v37;
  v51 = v40;
  v52 = v39;
  v53 = v42;
  v54 = v41;
  v55 = v44;
  v45 = *(v32 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
  sub_1CFC9F238();
  sub_1CFBF6410();
  sub_1CFC9E078();

  return sub_1CFC9F248();
}

uint64_t sub_1CFBE9B94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC48, &qword_1CFCA3520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC50, &qword_1CFCA3528);
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v8 = &v49 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC58, &qword_1CFCA3530);
  v9 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v49 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC60, &qword_1CFCA3538);
  v11 = *(v58 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v14 = &v49 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    v55 = &v49;
    v18 = MEMORY[0x1EEE9AC00](v17);
    v54 = &v49 - 4;
    *(&v49 - 2) = v2;
    MEMORY[0x1EEE9AC00](v18);
    v53 = &v49 - 4;
    *(&v49 - 2) = v2;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCE8, &qword_1CFCA3588);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDCF0, &qword_1CFCA3590);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCF8, &qword_1CFCA3598);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD00, &qword_1CFCA35A0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD08, &qword_1CFCA35A8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD10, &qword_1CFCA35B0);
    v23 = sub_1CFBF6568();
    v24 = sub_1CFBA57C0(&qword_1EC4EDD40, &qword_1EC4EDD10, &qword_1CFCA35B0);
    v61 = v21;
    v62 = v22;
    v63 = v23;
    v64 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = v20;
    v62 = OpaqueTypeConformance2;
    v26 = swift_getOpaqueTypeConformance2();
    v61 = v19;
    v62 = v26;
    swift_getOpaqueTypeConformance2();
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDD48, &qword_1CFCA35C8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
    v29 = sub_1CFBA57C0(&qword_1EC4EDD50, &qword_1EC4EDD48, &qword_1CFCA35C8);
    v30 = sub_1CFBF6410();
    v31 = sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580);
    v61 = v27;
    v62 = &type metadata for PaneContent;
    v63 = v28;
    v64 = v29;
    v65 = v30;
    v66 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1CFC9E698();
    v32 = v58;
    (*(v11 + 16))(v57, v14, v58);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDCD8, &qword_1EC4EDC60, &qword_1CFCA3538);
    sub_1CFBA57C0(&qword_1EC4EDCE0, &qword_1EC4EDC50, &qword_1CFCA3528);
    sub_1CFC9E798();
    return (*(v11 + 8))(v14, v32);
  }

  else
  {
    v34 = *(type metadata accessor for PhonePanedView(0) + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB28, &qword_1CFCA2F90);
    v35 = sub_1CFC9F258();
    v55 = &v49;
    MEMORY[0x1EEE9AC00](v35);
    v54 = &v49 - 4;
    *(&v49 - 2) = v2;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC68, &qword_1CFCA3540);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC70, &qword_1CFCA3548);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC78, &qword_1CFCA3550);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC80, &qword_1CFCA3558);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC88, &qword_1CFCA3560);
    v37 = v5;
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDC90, &qword_1CFCA3568);
    v39 = sub_1CFBF6474();
    v40 = sub_1CFBF6410();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
    v42 = sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580);
    v43 = sub_1CFBB4460();
    v61 = v41;
    v62 = MEMORY[0x1E69E6158];
    v63 = v42;
    v64 = v43;
    v44 = swift_getOpaqueTypeConformance2();
    v61 = v36;
    v62 = &type metadata for PaneContent;
    v63 = v38;
    v64 = v39;
    v65 = v40;
    v66 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = sub_1CFBA57C0(&qword_1EC4EDCD0, &qword_1EC4EDC80, &qword_1CFCA3558);
    v61 = v51;
    v62 = v50;
    v63 = v45;
    v64 = v46;
    v47 = swift_getOpaqueTypeConformance2();
    v61 = v52;
    v62 = v47;
    swift_getOpaqueTypeConformance2();
    sub_1CFC9E1D8();
    v48 = v59;
    (*(v37 + 16))(v57, v8, v59);
    swift_storeEnumTagMultiPayload();
    sub_1CFBA57C0(&qword_1EC4EDCD8, &qword_1EC4EDC60, &qword_1CFCA3538);
    sub_1CFBA57C0(&qword_1EC4EDCE0, &qword_1EC4EDC50, &qword_1CFCA3528);
    sub_1CFC9E798();
    return (*(v37 + 8))(v8, v48);
  }
}

uint64_t sub_1CFBEA460@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF30, &qword_1CFCA3790);
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v112 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v117 = &v91 - v7;
  v94 = sub_1CFC9E948();
  v95 = *(v94 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508);
  v11 = *(v10 - 8);
  v96 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v102 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v116 = (&v91 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v91 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF38, &qword_1CFCA3798);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v91 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED038, &qword_1CFCA37A0);
  v103 = *(v25 - 8);
  Kind = v103[4].Kind;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v91 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF40, &qword_1CFCA37A8);
  v104 = *(v106 - 8);
  v29 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v31 = &v91 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF48, &qword_1CFCA37B0);
  v110 = *(v32 - 8);
  v111 = v32;
  v33 = *(v110 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v109 = &v91 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v118 = &v91 - v36;
  sub_1CFBE9B94(v24);
  v119 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  v38 = sub_1CFBF6F68();
  v39 = sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
  v105 = v21;
  v108 = v37;
  v98 = v38;
  v40 = v92;
  v107 = v39;
  sub_1CFC9F048();
  sub_1CFBC2FB0(v24, &qword_1EC4EDF38, &qword_1CFCA3798);
  v41 = (a1 + *(type metadata accessor for PhonePanedView(0) + 28));
  v43 = *v41;
  v42 = v41[1];
  v101 = v43;
  v120 = v43;
  v121 = v42;
  v100 = v42;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v44 = v124;
  swift_getKeyPath();
  v120 = v44;
  v97 = sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v46 = v44[1].Kind;
  Description = v44[1].Description;

  v47 = v103[2].Kind;
  v48 = v28;
  v49 = v93;
  v103 = v25;
  v50 = v25;
  v51 = v94;
  v47(v31, v48, v50);
  v52 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED040, "d") + 36)];
  *v52 = v46;
  *(v52 + 1) = Description;
  v53 = v95;
  v52[16] = 1;
  sub_1CFBE7530(v49);
  v54 = v116;
  (*(v53 + 104))(v116, *MEMORY[0x1E697FF38], v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  v55 = *(v96 + 56);
  sub_1CFBA29FC(v49, v40, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v54, v40 + v55, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v56 = *(v53 + 48);
  if (v56(v40, 1, v51) == 1)
  {
    sub_1CFBC2FB0(v54, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v49, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    if (v56(v40 + v55, 1, v51) == 1)
    {
      sub_1CFBC2FB0(v40, &qword_1EC4EDAF0, &qword_1CFCA2F58);
      v57 = 1;
      goto LABEL_10;
    }

LABEL_6:
    sub_1CFBC2FB0(v40, &qword_1EC4EDC20, &qword_1CFCA3508);
    v57 = 2;
    goto LABEL_10;
  }

  sub_1CFBA29FC(v40, v102, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v56(v40 + v55, 1, v51) == 1)
  {
    sub_1CFBC2FB0(v116, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v49, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v53 + 8))(v102, v51);
    goto LABEL_6;
  }

  v58 = v91;
  (*(v53 + 32))(v91, v40 + v55, v51);
  sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50]);
  v59 = v102;
  v60 = sub_1CFC9F6F8();
  v61 = *(v53 + 8);
  v61(v58, v51);
  sub_1CFBC2FB0(v116, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBC2FB0(v49, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v61(v59, v51);
  sub_1CFBC2FB0(v40, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v60)
  {
    v57 = 1;
  }

  else
  {
    v57 = 2;
  }

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF58, &qword_1CFCA37B8);
  v62 = *(sub_1CFC9E258() - 8);
  v63 = *(v62 + 72);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CFCA1DD0;
  sub_1CFC9E248();
  v66 = v107;
  v67 = v108;
  v120 = v105;
  v121 = v108;
  v122 = v98;
  v123 = v107;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = v103;
  v121 = MEMORY[0x1E69E6158];
  v122 = OpaqueTypeConformance2;
  v123 = MEMORY[0x1E69E6168];
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v106;
  MEMORY[0x1D38715A0](v57, v65, v106, v69);

  (*(v104 + 8))(v31, v70);
  v120 = v101;
  v121 = v100;
  sub_1CFC9F238();
  v71 = v124;
  swift_getKeyPath();
  v120 = v71;
  sub_1CFC9C158();

  v72 = v71[11].Description;

  swift_getKeyPath();
  v120 = v72;
  sub_1CFBF4FC8(&qword_1EC4EDC18, type metadata accessor for PhonePaneTabConfiguration);
  sub_1CFC9C158();

  v73 = v72[1].Kind;

  v124 = v73;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF60, &qword_1CFCA37E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF68, &qword_1CFCA37E8);
  sub_1CFBA57C0(&qword_1EC4EDF70, &qword_1EC4EDF60, &qword_1CFCA37E0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4ED048, &qword_1CFCA37F0);
  v75 = sub_1CFBC2DC4();
  v120 = &type metadata for PaneHostView;
  v121 = v67;
  v122 = v75;
  v123 = v66;
  v76 = swift_getOpaqueTypeConformance2();
  v120 = v74;
  v121 = MEMORY[0x1E69E6158];
  v122 = v76;
  v123 = MEMORY[0x1E69E6168];
  swift_getOpaqueTypeConformance2();
  v77 = v117;
  sub_1CFC9F3B8();
  v78 = v109;
  v79 = v110;
  v80 = *(v110 + 16);
  v81 = v111;
  v80(v109, v118, v111);
  v82 = v114;
  v116 = *(v114 + 16);
  v83 = v112;
  v84 = v77;
  v85 = v115;
  (v116)(v112, v84, v115);
  v86 = v113;
  v80(v113, v78, v81);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF78, &qword_1CFCA37F8);
  (v116)(&v86[*(v87 + 48)], v83, v85);
  v88 = *(v82 + 8);
  v88(v117, v85);
  v89 = *(v79 + 8);
  v89(v118, v81);
  v88(v83, v85);
  return (v89)(v78, v81);
}

uint64_t sub_1CFBEB258(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PhonePanedView(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v4 = *(v10 + 64);

  v5 = [v4 title];

  if (v5)
  {
    sub_1CFC9F768();
  }

  sub_1CFC9F238();
  swift_getKeyPath();
  sub_1CFC9C158();

  v6 = *(v9 + 48);
  v7 = *(v9 + 56);

  sub_1CFBB4460();
  return sub_1CFC9F218();
}

uint64_t sub_1CFBEB434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED048, &qword_1CFCA37F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-v7];
  v9 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v9;
  v17[2] = *(a1 + 32);
  v18 = *(a1 + 48);
  v15 = v17;
  v16 = v18;
  v10 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFBC2DC4();
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFC9F048();

  v11 = v17[0];
  (*(v5 + 32))(a2, v8, v4);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED050, &qword_1CFCA1E00) + 36);
  *v12 = v11;
  *(v12 + 16) = 1;
}

uint64_t sub_1CFBEB604(void *a1)
{
  if (a1[3])
  {
    v1 = a1[2];
    v2 = a1[3];
  }

  v3 = a1[4];
  v4 = a1[5];
  sub_1CFBB4460();

  return sub_1CFC9F218();
}

uint64_t sub_1CFBEB698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v56 = a2;
  v3 = sub_1CFC9E538();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhonePanedView(0);
  v48 = *(v6 - 8);
  v47 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC88, &qword_1CFCA3560);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v42 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC78, &qword_1CFCA3550);
  v13 = *(v12 - 8);
  v49 = v12;
  v50 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC70, &qword_1CFCA3548);
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v42 - v19;
  v57 = sub_1CFC9E588();
  v58 = 0x4030000000000000;
  LOBYTE(v59) = 0;
  sub_1CFBF6B54();
  *v11 = sub_1CFC9F588();
  sub_1CFBEBC48(a1, v11 + *(v8 + 44));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC90, &qword_1CFCA3568);
  v21 = sub_1CFBF6474();
  v22 = sub_1CFBF6410();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EDCC0, &qword_1CFCA3580);
  v24 = sub_1CFBA57C0(&qword_1EC4EDCC8, &qword_1EC4EDCC0, &qword_1CFCA3580);
  v25 = sub_1CFBB4460();
  v57 = v23;
  v58 = MEMORY[0x1E69E6158];
  v59 = v24;
  v60 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1CFC9EFE8();
  sub_1CFBC2FB0(v11, &qword_1EC4EDC88, &qword_1CFCA3560);
  v26 = v46;
  sub_1CFBF4E04(v43, v46);
  v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v28 = swift_allocObject();
  sub_1CFBF4E68(v26, v28 + v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC80, &qword_1CFCA3558);
  v57 = v8;
  v58 = &type metadata for PaneContent;
  v59 = v20;
  v60 = v21;
  v61 = v22;
  v62 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_1CFBA57C0(&qword_1EC4EDCD0, &qword_1EC4EDC80, &qword_1CFCA3558);
  v32 = v44;
  v33 = v45;
  v34 = v49;
  sub_1CFC9F058();
  v35 = v34;
  (*(v50 + 8))(v32, v34);

  v36 = v53;
  v37 = v54;
  v38 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x1E697C438], v55);
  v57 = v35;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  swift_getOpaqueTypeConformance2();
  v39 = v51;
  sub_1CFC9F018();
  (*(v37 + 8))(v36, v38);
  return (*(v52 + 8))(v33, v39);
}

uint64_t sub_1CFBEBC48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v138 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE8, &qword_1CFCA3750);
  v3 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v113 - v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEF0, &qword_1CFCA3758);
  v5 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v125 = &v113 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEF8, &qword_1CFCA3760);
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = *(v136 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v124 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v123 = &v113 - v11;
  v12 = sub_1CFC9E948();
  v13 = *(v12 - 8);
  v128 = v12;
  v129 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDC20, &qword_1CFCA3508);
  v17 = *(v16 - 8);
  v130 = v16 - 8;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v127 = &v113 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF0, &qword_1CFCA2F58);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v115 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v140 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v141 = &v113 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF00, &qword_1CFCA3768);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v135 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v139 = &v113 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF08, &qword_1CFCA3770);
  v133 = *(v32 - 8);
  v134 = v32;
  v33 = *(v133 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v132 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v113 - v36;
  v126 = a1;
  sub_1CFBEE7C4(a1, v152);
  v38 = *&v152[0];
  v39 = BYTE8(v152[0]);
  sub_1CFC9F538();
  sub_1CFC9E268();
  *&v153[55] = v158;
  *&v153[71] = v159;
  *&v153[87] = v160;
  *&v153[103] = v161;
  *&v153[7] = v155;
  *&v153[23] = v156;
  v154 = v39;
  *&v153[39] = v157;
  v40 = sub_1CFC9E1E8();
  v41 = sub_1CFC9EBB8();
  *(&v152[4] + 9) = *&v153[64];
  *(&v152[5] + 9) = *&v153[80];
  *(&v152[6] + 9) = *&v153[96];
  *(v152 + 9) = *v153;
  *(&v152[1] + 9) = *&v153[16];
  *(&v152[2] + 9) = *&v153[32];
  *&v152[0] = v38;
  BYTE8(v152[0]) = v39;
  *(&v152[3] + 9) = *&v153[48];
  *(&v152[7] + 1) = *&v153[111];
  *&v152[8] = v40;
  BYTE8(v152[8]) = v41;
  v42 = (a1 + *(type metadata accessor for PhonePanedView(0) + 28));
  v43 = *v42;
  v118 = v42[1];
  v119 = v43;
  *&v150[0] = v43;
  *(&v150[0] + 1) = v118;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDB78, &qword_1CFCA2FB0);
  sub_1CFC9F238();
  v44 = v142;
  swift_getKeyPath();
  *&v150[0] = v44;
  v116 = sub_1CFBF4FC8(&qword_1EC4EDAE0, type metadata accessor for PhonePaneConfiguration);
  sub_1CFC9C158();

  v46 = *(v44 + 32);
  v45 = *(v44 + 40);

  if (v45)
  {
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (v45)
  {
    v48 = v45;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  *&v142 = v47;
  *(&v142 + 1) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF10, &qword_1CFCA3778);
  sub_1CFBF6EDC(&qword_1EC4EDF18, &qword_1EC4EDF10, &qword_1CFCA3778, sub_1CFBF6568);
  sub_1CFBB4460();
  v131 = v37;
  v50 = v127;
  v49 = v128;
  sub_1CFC9EF48();

  v150[5] = v152[5];
  v150[6] = v152[6];
  v151[0] = v152[7];
  *(v151 + 9) = *(&v152[7] + 9);
  v150[1] = v152[1];
  v150[2] = v152[2];
  v150[3] = v152[3];
  v150[4] = v152[4];
  v51 = v141;
  v150[0] = v152[0];
  v52 = v129;
  sub_1CFBC2FB0(v150, &qword_1EC4EDF10, &qword_1CFCA3778);
  sub_1CFBE7530(v51);
  v53 = v140;
  (*(v52 + 104))(v140, *MEMORY[0x1E697FF38], v49);
  (*(v52 + 56))(v53, 0, 1, v49);
  v54 = *(v130 + 56);
  sub_1CFBA29FC(v51, v50, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBA29FC(v53, v50 + v54, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v55 = *(v52 + 48);
  if (v55(v50, 1, v49) == 1)
  {
    sub_1CFBC2FB0(v53, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v51, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    v56 = v55(v50 + v54, 1, v49);
    v57 = v139;
    if (v56 == 1)
    {
      sub_1CFBC2FB0(v50, &qword_1EC4EDAF0, &qword_1CFCA2F58);
LABEL_15:
      (*(v136 + 56))(v57, 1, 1, v137);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v58 = v115;
  sub_1CFBA29FC(v50, v115, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  if (v55(v50 + v54, 1, v49) == 1)
  {
    sub_1CFBC2FB0(v140, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    sub_1CFBC2FB0(v141, &qword_1EC4EDAF0, &qword_1CFCA2F58);
    (*(v52 + 8))(v58, v49);
LABEL_12:
    sub_1CFBC2FB0(v50, &qword_1EC4EDC20, &qword_1CFCA3508);
    goto LABEL_13;
  }

  v100 = v114;
  (*(v52 + 32))(v114, v50 + v54, v49);
  sub_1CFBF4FC8(&qword_1EE04D278, MEMORY[0x1E697FF50]);
  v101 = sub_1CFC9F6F8();
  v102 = *(v52 + 8);
  v102(v100, v49);
  sub_1CFBC2FB0(v140, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  sub_1CFBC2FB0(v141, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v102(v58, v49);
  sub_1CFBC2FB0(v50, &qword_1EC4EDAF0, &qword_1CFCA2F58);
  v57 = v139;
  if (v101)
  {
    goto LABEL_15;
  }

LABEL_13:
  v60 = v118;
  v59 = v119;
  *&v142 = v119;
  *(&v142 + 1) = v118;
  sub_1CFC9F238();
  v61 = v149;
  swift_getKeyPath();
  *&v142 = v61;
  sub_1CFC9C158();

  v62 = *(v61 + 120);

  *&v142 = v59;
  *(&v142 + 1) = v60;
  sub_1CFC9F238();
  v63 = v149;
  swift_getKeyPath();
  *&v142 = v63;
  sub_1CFC9C158();

  v65 = *(v63 + 72);
  v64 = *(v63 + 80);

  sub_1CFC9F538();
  sub_1CFC9E268();
  sub_1CFC9CD28();
  v66 = v149;
  v67 = v122;
  v68 = &v122[*(v120 + 36)];
  v69 = *(sub_1CFC9E228() + 20);
  v70 = *MEMORY[0x1E697F468];
  v71 = sub_1CFC9E608();
  (*(*(v71 - 8) + 104))(&v68[v69], v70, v71);
  *v68 = v66;
  *(v68 + 1) = v66;
  *&v68[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF20, &qword_1CFCA3780) + 36)] = 256;
  v72 = v144;
  *(v67 + 72) = v145;
  v73 = v147;
  *(v67 + 88) = v146;
  *(v67 + 104) = v73;
  *(v67 + 120) = v148;
  v74 = v143;
  *(v67 + 24) = v142;
  *(v67 + 40) = v74;
  *v67 = v62;
  *(v67 + 8) = v65;
  *(v67 + 16) = v64;
  *(v67 + 56) = v72;
  LOBYTE(v64) = sub_1CFC9EC08();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v125;
  sub_1CFBCCE88(v67, v125, &qword_1EC4EDEE8, &qword_1CFCA3750);
  v84 = v83 + *(v121 + 36);
  *v84 = v64;
  *(v84 + 8) = v76;
  *(v84 + 16) = v78;
  *(v84 + 24) = v80;
  *(v84 + 32) = v82;
  *(v84 + 40) = 0;
  LOBYTE(v64) = sub_1CFC9EBD8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v124;
  sub_1CFBCCE88(v83, v124, &qword_1EC4EDEF0, &qword_1CFCA3758);
  v94 = v137;
  v95 = v93 + *(v137 + 36);
  *v95 = v64;
  *(v95 + 8) = v86;
  *(v95 + 16) = v88;
  *(v95 + 24) = v90;
  *(v95 + 32) = v92;
  *(v95 + 40) = 0;
  v96 = v93;
  v97 = v123;
  sub_1CFBCCE88(v96, v123, &qword_1EC4EDEF8, &qword_1CFCA3760);
  v98 = v97;
  v99 = v139;
  sub_1CFBCCE88(v98, v139, &qword_1EC4EDEF8, &qword_1CFCA3760);
  (*(v136 + 56))(v99, 0, 1, v94);
  v57 = v99;
LABEL_16:
  v104 = v132;
  v103 = v133;
  v105 = *(v133 + 16);
  v106 = v131;
  v107 = v134;
  v105(v132, v131, v134);
  v108 = v135;
  sub_1CFBA29FC(v57, v135, &qword_1EC4EDF00, &qword_1CFCA3768);
  v109 = v138;
  v105(v138, v104, v107);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDF28, &qword_1CFCA3788);
  sub_1CFBA29FC(v108, &v109[*(v110 + 48)], &qword_1EC4EDF00, &qword_1CFCA3768);
  sub_1CFBC2FB0(v57, &qword_1EC4EDF00, &qword_1CFCA3768);
  v111 = *(v103 + 8);
  v111(v106, v107);
  sub_1CFBC2FB0(v108, &qword_1EC4EDF00, &qword_1CFCA3768);
  return (v111)(v104, v107);
}