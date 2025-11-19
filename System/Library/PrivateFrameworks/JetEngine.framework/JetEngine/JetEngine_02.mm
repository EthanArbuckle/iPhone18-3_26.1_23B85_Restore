uint64_t sub_1AB03EAEC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t type metadata accessor for DiskJetPackResourceBundle()
{
  result = qword_1EB434E18;
  if (!qword_1EB434E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for JSPackageIndex()
{
  result = qword_1EB433EA0;
  if (!qword_1EB433EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AB03EBC4(uint64_t a1)
{
  v3 = type metadata accessor for DiskJetPackResourceBundle();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437860);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB437860);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AAAEC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for DiskJetPackResourceBundle);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB439210(v5);
    sub_1AB059DC8(v5, type metadata accessor for DiskJetPackResourceBundle);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB4398C0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB03C634(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB03C634((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v9 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v9, v1 + v13, &unk_1EB437860);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t static ClassicDataVaultUtilities.createDataVault(at:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &type metadata for ClassicDataVaultUtilities._DefaultDataVaultAccessor;
  sub_1AB03EEF0(a1, a2, a3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1AB03EEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v38[1] = *MEMORY[0x1E69E9840];
  v37 = sub_1AB45F764();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45F6E4();
  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = sub_1AB460514();
  v12 = [v10 fileExistsAtPath_];

  if (v12)
  {
    v13 = sub_1AB4600F4();
    v14 = sub_1AB460104() | v13;
    LOWORD(v14) = v14 | sub_1AB460114();
    v15 = sub_1AB460614();
    v16 = chmod((v15 + 32), v14);

    if (v16)
    {
      v18 = MEMORY[0x1AC59B420](v17);
LABEL_13:
      sub_1AB2AECA8();
      swift_allocError();
      goto LABEL_14;
    }

    sub_1AB460614();
    v28 = rootless_check_datavault_flag();

    if (v28 == 1)
    {
      sub_1AB460614();
      sub_1AB460614();
      v30 = rootless_convert_to_datavault();

      if (v30)
      {
        v18 = MEMORY[0x1AC59B420](v31) | 0x2000000000000000;
        goto LABEL_13;
      }
    }

    else if (v28)
    {
      v18 = MEMORY[0x1AC59B420](v29) | 0x4000000000000000;
      goto LABEL_13;
    }
  }

  v33 = v6;
  v34 = v8;
  sub_1AB45F684();
  sub_1AB45F6E4();
  (*(v3 + 8))(v5, v37);
  v19 = [v9 defaultManager];
  v20 = sub_1AB460514();
  v38[0] = 0;
  v21 = [v19 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:v38];

  if (v21)
  {
    v22 = v38[0];

    sub_1AB4600F4();
    sub_1AB460104();
    sub_1AB460114();
    v6 = v33;
    v8 = v34;
    sub_1AB460614();
    sub_1AB460614();
    v23 = rootless_mkdir_datavault();

    if (v23)
    {
      v18 = MEMORY[0x1AC59B420](v24) | 0x8000000000000000;
      goto LABEL_13;
    }
  }

  v25 = v38[0];
  v26 = sub_1AB45F594();

  swift_willThrow();

  v18 = v26 | 0x6000000000000000;
  sub_1AB2AECA8();
  swift_allocError();
  v6 = v33;
  v8 = v34;
LABEL_14:
  *v27 = v6;
  v27[1] = v8;
  v27[2] = v18;
  return swift_willThrow();
}

void *PipelinePhase.init(mapOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  return sub_1AB03F338(a1, a2, a3, a4, sub_1AB03F6C8, a5);
}

{
  return sub_1AB03F338(a1, a2, a3, a4, sub_1AB03F5E4, a5);
}

uint64_t sub_1AB03F300()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *sub_1AB03F338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  result = swift_allocObject();
  result[2] = a3;
  result[3] = a4;
  result[4] = a1;
  result[5] = a2;
  *a6 = a5;
  a6[1] = result;
  return result;
}

void *PipelineTask.mapTask<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  type metadata accessor for MapPipelineTask();
  (*(v8 + 16))(v10, v4, a3);
  AnyPipelineTask.init<A>(_:)(v10, a3, &v14);
  v11 = MapPipelineTask.__allocating_init(previous:body:)(&v14, a1, a2);

  return v11;
}

char *sub_1AB03F544(void *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = *a1;
  type metadata accessor for AnyPipelineTask();
  AnyPipelineTask.run()();
  sub_1AB01C3F4(v7);
  v5 = Promise.map<A>(on:_:)(v7, a2, a3);

  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

char *sub_1AB03F5F0(void *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = *a1;
  type metadata accessor for AnyPipelineTask();
  AnyPipelineTask.run()();
  v5 = type metadata accessor for Promise();
  WitnessTable = swift_getWitnessTable();
  sub_1AB01C3F4(v9);
  v7 = Promise.flatMap<A>(on:_:)(v9, a2, a3, v5, WitnessTable);

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

uint64_t sub_1AB03F6E4(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v61 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v59 = v53 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v53 - v9;
  v11 = [objc_opt_self() defaultManager];
  v60 = " bundle doesn't exist";
  *&v62 = a1;
  sub_1AB45F664();
  sub_1AB45F6F4();
  v12 = sub_1AB460514();

  LODWORD(a1) = [v11 fileExistsAtPath_];

  if (a1)
  {
    sub_1AB45F6F4();
    v13 = sub_1AB460514();

    v64 = 0;
    v14 = [v11 contentsOfDirectoryAtPath:v13 error:&v64];

    v15 = v64;
    v16 = v10;
    if (!v14)
    {
      v51 = v64;
      sub_1AB45F594();

      swift_willThrow();
      return (*(v4 + 8))(v10, v3);
    }

    v63 = v11;
    v58 = v1;
    v17 = sub_1AB460954();
    v18 = v15;

    v19 = v17;
    v20 = *(v17 + 16);
    if (v20)
    {
      v54 = v10;
      v55 = v4;
      v56 = (v4 + 8);
      v57 = v3;
      v53[1] = v19;
      v21 = (v19 + 40);
      v22 = v63;
      do
      {
        v24 = *(v21 - 1);
        v23 = *v21;
        v25 = qword_1EB434DF8;

        if (v25 != -1)
        {
          swift_once();
        }

        v26 = v24 == qword_1EB46C220 && v23 == *algn_1EB46C228;
        if (v26 || (sub_1AB461DA4() & 1) != 0)
        {
        }

        else
        {
          v27 = v61;
          sub_1AB45F664();
          v28 = v59;
          sub_1AB45F664();

          v29 = *v56;
          v30 = v27;
          v31 = v57;
          (*v56)(v30, v57);
          sub_1AB45F6F4();
          v32 = v31;
          v22 = v63;
          v29(v28, v32);
          v33 = sub_1AB460514();

          v64 = 0;
          v34 = [v22 removeItemAtPath:v33 error:&v64];

          if (v34)
          {
            v35 = v64;
          }

          else
          {
            v36 = v64;
            v37 = sub_1AB45F594();

            swift_willThrow();
            v58 = 0;
          }
        }

        v21 += 2;
        --v20;
      }

      while (v20);

      v3 = v57;
      v16 = v54;
      v4 = v55;
    }

    else
    {
    }
  }

  else
  {
    v63 = v11;
    v38 = v10;
    v58 = v1;
    v39 = v4;
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    v40 = qword_1ED4D1D98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v41 = swift_allocObject();
    v62 = xmmword_1AB4D4720;
    *(v41 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v42 = swift_allocObject();
    *(v42 + 16) = v62;
    v67 = MEMORY[0x1E69E6158];
    v64 = 0xD000000000000039;
    v65 = 0x80000001AB505350;
    *(v42 + 48) = 0u;
    *(v42 + 32) = 0u;
    sub_1AB0169C4(&v64, v42 + 32);
    *(v42 + 64) = 0;
    *(v41 + 32) = v42;
    v43 = sub_1AB461094();
    if (os_log_type_enabled(v40, v43))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v44 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v44[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v44 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v16 = v38;
      v46 = swift_allocObject();
      *(v46 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v64 = v41;
      v65 = sub_1AB0223E4;
      v66 = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v47 = sub_1AB460484();
      v49 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v50 = swift_allocObject();
      *(v50 + 16) = v62;
      *(v50 + 56) = MEMORY[0x1E69E6158];
      *(v50 + 64) = sub_1AB016854();
      *(v50 + 32) = v47;
      *(v50 + 40) = v49;
      sub_1AB45FF14();

      v4 = v39;
    }

    else
    {

      v4 = v39;
      v16 = v38;
    }
  }

  return (*(v4 + 8))(v16, v3);
}

__n128 DiskJetPackLoader.init(signingPolicy:keyProvider:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *a2;
  v5 = a2[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = *(a2 + 4);
  return result;
}

id static DiskJetPackLoader.sharedUnpackQueue.getter()
{
  if (qword_1EB4343C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB4343D0;

  return v1;
}

void *DiskJetPackLoader.bundle(from:baseURL:automaticallyCleanUp:on:)(void *a1, uint64_t a2, int a3, void *a4)
{
  v8 = a4[3];
  v9 = a4[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a4, v8);

  return sub_1AB03E4F4(a1, a2, a3, v10, v4, v8, v9);
}

uint64_t sub_1AB040054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB0400C4(uint64_t a1, uint64_t a2)
{
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB042F2C;
  v9[1] = v7;
  v9[2] = sub_1AB199B28;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB040C28(v9);

  sub_1AB014AC0(v9, &unk_1EB43D1D0);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

uint64_t sub_1AB040250()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB040298(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = *a1;
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439760);
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = 0;
  v14 = sub_1AB460BE4();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1AB4D8DE0;
  v15[5] = v10;
  v15[6] = v11;

  sub_1AB39BBA8(0, 0, v8, &unk_1AB4D8DE8, v15);

  return v11;
}

uint64_t sub_1AB040470()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0404B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0404F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AB027460;

  return sub_1AB04303C(a1, v4, v5, v6);
}

uint64_t sub_1AB0405AC()
{
  v1 = (*(v0 + 32))();
  *(v0 + 48) = sub_1AB0303EC(v1);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1AB199524;

  return BaseObjectGraph._withAllDependenciesResolved.getter();
}

uint64_t _s9JetEngine10DependencyV11_satisfying4withACxm_xyYaYbKctcs8SendableRzlufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for DependencyPromise();
  result = sub_1AB04074C(a2, a3);
  a4[4] = v7;
  a4[1] = result;
  return result;
}

uint64_t sub_1AB04074C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  return v4;
}

uint64_t sub_1AB0407C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB061A78, 0, 0);
}

uint64_t sub_1AB0407E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return sub_1AB040880(a1);
}

uint64_t sub_1AB040880(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0408A0, 0, 0);
}

uint64_t sub_1AB0408A0()
{
  v6 = v0;

  sub_1AB033004(v5, v1);
  sub_1AB030B7C(v5);
  v0[4] = sub_1AB05FF60();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AB063AC8;
  v3 = v0[2];

  return Promise.then()(v3);
}

uint64_t sub_1AB0409B0()
{
  sub_1AB019310();
  result = sub_1AB461334();
  qword_1EB432F70 = result;
  return result;
}

uint64_t sub_1AB040A20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1AB014A58(v7, v19, a2);
  v9 = v19[0];
  if (v21)
  {
    **(*(v19[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1AB0149B0(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB040B60(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  a2(&v10);
  v8[0] = sub_1AB3B937C;
  v8[1] = a4;
  v8[2] = sub_1AB199764;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB040C28(v8);

  return sub_1AB014AC0(v8, &unk_1EB43D1D0);
}

void sub_1AB040C28(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA09C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA09C(v4);
      v15 = MEMORY[0x1E69E7D48];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {

    os_unfair_lock_unlock(v3 + 4);
    sub_1AB042EF8(v4);
    v15 = MEMORY[0x1E69E7D48];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB43D1D0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB0256D0(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB0256D0((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7D48]);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB040E2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB042F48(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB040F08()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1AB38C4EC;
  v3 = v0[3];

  return sub_1AB0407C0((v0 + 2), &unk_1AB4EFD80, v3, v1);
}

uint64_t BaseObjectGraph._withAllDependenciesResolved.getter()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1AB040F08, 0, 0);
}

uint64_t sub_1AB041008(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB0410A4(a1, v1);
}

uint64_t sub_1AB0410A4(uint64_t a1, void *a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0410EC, 0, 0);
}

uint64_t sub_1AB0410EC()
{
  v1 = v0[8];
  swift_beginAccess();
  v0[10] = v1[3];
  v0[11] = v1[4];
  v0[5] = v1[2];

  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1AB38FE08;

  return sub_1AB04122C((v0 + 6));
}

uint64_t sub_1AB0411BC(uint64_t a1)
{
  *(v1 + 216) = a1;
  *(v1 + 224) = type metadata accessor for StartUpPerformanceEvent();

  return MEMORY[0x1EEE6DFA0](sub_1AB0412D8, 0, 0);
}

uint64_t sub_1AB04122C(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1AB043060;

  return sub_1AB0411BC(v3);
}

uint64_t sub_1AB0412D8()
{
  if (!*(*(v0 + 216) + 16) || (v1 = sub_1AB016558(*(v0 + 224)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v5 = off_1ED4D19F8;
    v6 = *(off_1ED4D19F8 + 2);

    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D8);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_16:

      v4 = 0;
      goto LABEL_17;
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365D8);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1AB343AC4;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1AB0AB648(v0 + 176, v11, v14, v15, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 216) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    v4 = v3;
LABEL_17:
    v10 = *(v0 + 8);

    return v10(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365E0);
  if (swift_dynamicCast())
  {
    v16 = sub_1AB130F08();

    *(v0 + 176) = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    v4 = v16;
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365E8);
  if (swift_dynamicCast())
  {
    v3 = sub_1AB132948();

    *(v0 + 176) = v3;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B0E0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1AB32A0D4;

    return sub_1AB33E000();
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FEF80);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB041894()
{
  if (*(v0 + 40))
  {

    v1 = sub_1AB0318FC();

    v2 = v1;
  }

  else
  {
    v2 = 2;
  }

  *(v0 + 64) = v2;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1AB297828;
  v4 = *(v0 + 16);

  return (sub_1AB043194)(v4);
}

uint64_t sub_1AB041974()
{
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v0 + 4;
  *(v3 + 24) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396B8);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1AB294808;

  return MEMORY[0x1EEE6DD58](v0 + 2, v2, v4, 0, 0, &unk_1AB4E3BF0, v3, v2);
}

uint64_t sub_1AB041A94()
{
  result = sub_1AB45F244();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB041B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[87] = a4;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439670);
  v4[88] = swift_task_alloc();
  v5 = type metadata accessor for _ResolvedDependency();
  v4[89] = v5;
  v4[90] = *(v5 - 8);
  v4[91] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v4[92] = v6;
  v4[93] = *(v6 - 8);
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439680);
  v4[96] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439688);
  v4[97] = v7;
  v4[98] = *(v7 - 8);
  v4[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v8 = sub_1AB45FF84();
  v4[106] = v8;
  v4[107] = *(v8 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB041E10, 0, 0);
}

uint64_t sub_1AB041E10()
{
  v87 = v0;
  if (qword_1EB434BA8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = sub_1AB45FFC4();
    __swift_project_value_buffer(v1, qword_1EB46C230);
    sub_1AB45FFA4();
    sub_1AB45FF54();
    v2 = sub_1AB45FFA4();
    v3 = sub_1AB461234();
    if (sub_1AB461314())
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v2, v3, v5, "ResolveDependencies", "", v4, 2u);
      MEMORY[0x1AC59F020](v4, -1, -1);
    }

    v6 = (v0 + 632);
    v7 = *(v0 + 872);
    v8 = *(v0 + 864);
    v9 = *(v0 + 856);
    v10 = *(v0 + 848);
    v11 = *(v0 + 696);
    v12 = *(v0 + 688);

    v13 = v10;
    v14 = v12;
    (*(v9 + 16))(v8, v7, v13);
    sub_1AB460014();
    swift_allocObject();
    v15 = v11;
    *(v0 + 880) = sub_1AB460004();
    v16 = v11 + 64;
    v17 = -1;
    v18 = -1 << *(v11 + 32);
    if (-v18 < 64)
    {
      v17 = ~(-1 << -v18);
    }

    v19 = v17 & *(v11 + 64);
    v20 = (63 - v18) >> 6;

    v21 = 0;
    v82 = v15;
    v80 = v16;
    v81 = v14;
    if (v19)
    {
      break;
    }

LABEL_10:
    if (v20 <= v21 + 1)
    {
      v23 = v21 + 1;
    }

    else
    {
      v23 = v20;
    }

    v24 = v23 - 1;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v19 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        v21 = v24;
        *(v0 + 56) = 0u;
        goto LABEL_19;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v22 = v21;
LABEL_18:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v26 = v25 | (v22 << 6);
    v27 = *(*(v15 + 48) + 8 * v26);
    sub_1AB0165C4(*(v15 + 56) + 32 * v26, v0 + 336);
    *(v0 + 56) = v27;
    sub_1AB014B78((v0 + 336), (v0 + 64));
LABEL_19:
    v28 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v28;
    *(v0 + 48) = *(v0 + 88);
    v29 = *(v0 + 16);
    if (!v29)
    {
      break;
    }

    sub_1AB014B78((v0 + 24), (v0 + 400));
    if (*(v14 + 16) && (sub_1AB016558(v29), (v30 & 1) != 0))
    {
      sub_1AB0165C4(v0 + 400, v0 + 432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439690);
      if (swift_dynamicCast())
      {
        v31 = *(v0 + 840);
        v83 = *(v0 + 832);
        sub_1AB0149B0((v0 + 96), v0 + 256);
        v32 = sub_1AB460BE4();
        v33 = *(v32 - 8);
        (*(v33 + 56))(v31, 1, 1, v32);
        sub_1AB01494C(v0 + 256, v0 + 296);
        v34 = swift_allocObject();
        v34[2] = 0;
        v35 = v34 + 2;
        v34[3] = 0;
        v34[4] = v29;
        sub_1AB0149B0((v0 + 296), (v34 + 5));
        sub_1AB014A58(v31, v83, &qword_1EB4384A0);
        v36 = (*(v33 + 48))(v83, 1, v32);
        v37 = *(v0 + 832);
        if (v36 == 1)
        {
          sub_1AB014AC0(*(v0 + 832), &qword_1EB4384A0);
          if (*v35)
          {
            goto LABEL_25;
          }

LABEL_32:
          v38 = 0;
          v40 = 0;
        }

        else
        {
          sub_1AB460BD4();
          (*(v33 + 8))(v37, v32);
          if (!*v35)
          {
            goto LABEL_32;
          }

LABEL_25:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v38 = sub_1AB460AE4();
          v40 = v39;
          swift_unknownObjectRelease();
        }

        v51 = **(v0 + 680);

        if (v40 | v38)
        {
          v52 = v0 + 528;
          *(v0 + 528) = 0;
          *(v0 + 536) = 0;
          *(v0 + 544) = v38;
          *(v0 + 552) = v40;
        }

        else
        {
          v52 = 0;
        }

        v15 = v82;
        v63 = *(v0 + 840);
        *(v0 + 608) = 1;
        *(v0 + 616) = v52;
        *(v0 + 624) = v51;
        swift_task_create();

        sub_1AB014AC0(v63, &qword_1EB4384A0);
        v64 = v0 + 256;
        goto LABEL_48;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439698);
      if (swift_dynamicCast())
      {
        v41 = *(v0 + 824);
        v84 = *(v0 + 816);
        sub_1AB0149B0((v0 + 136), v0 + 176);
        v42 = sub_1AB460BE4();
        v43 = *(v42 - 8);
        (*(v43 + 56))(v41, 1, 1, v42);
        sub_1AB01494C(v0 + 176, v0 + 216);
        v44 = swift_allocObject();
        v44[2] = 0;
        v45 = v44 + 2;
        v44[3] = 0;
        v44[4] = v29;
        sub_1AB0149B0((v0 + 216), (v44 + 5));
        sub_1AB014A58(v41, v84, &qword_1EB4384A0);
        v46 = (*(v43 + 48))(v84, 1, v42);
        v47 = *(v0 + 816);
        if (v46 == 1)
        {
          sub_1AB014AC0(*(v0 + 816), &qword_1EB4384A0);
          if (*v45)
          {
            goto LABEL_30;
          }

LABEL_42:
          v48 = 0;
          v50 = 0;
        }

        else
        {
          sub_1AB460BD4();
          (*(v43 + 8))(v47, v42);
          if (!*v45)
          {
            goto LABEL_42;
          }

LABEL_30:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v48 = sub_1AB460AE4();
          v50 = v49;
          swift_unknownObjectRelease();
        }

        v65 = **(v0 + 680);

        if (v50 | v48)
        {
          v66 = v0 + 496;
          *(v0 + 496) = 0;
          *(v0 + 504) = 0;
          *(v0 + 512) = v48;
          *(v0 + 520) = v50;
        }

        else
        {
          v66 = 0;
        }

        v15 = v82;
        v67 = *(v0 + 824);
        *(v0 + 584) = 1;
        *(v0 + 592) = v66;
        *(v0 + 600) = v65;
        swift_task_create();

        sub_1AB014AC0(v67, &qword_1EB4384A0);
        v64 = v0 + 176;
LABEL_48:
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
        v6 = (v0 + 632);
        v14 = v81;
        goto LABEL_49;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
      if (swift_dynamicCast())
      {
        v53 = *(v0 + 808);
        v79 = *(v0 + 800);
        v54 = sub_1AB460BE4();
        v55 = *(v54 - 8);
        v85 = *v6;
        (*(v55 + 56))(v53, 1, 1, v54);
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        v57 = (v56 + 16);
        *(v56 + 24) = 0;
        *(v56 + 32) = v29;
        *(v56 + 40) = v85;
        sub_1AB014A58(v53, v79, &qword_1EB4384A0);
        v58 = v55;
        LODWORD(v55) = (*(v55 + 48))(v79, 1, v54);
        swift_unknownObjectRetain();
        v59 = *(v0 + 800);
        if (v55 == 1)
        {
          sub_1AB014AC0(*(v0 + 800), &qword_1EB4384A0);
          if (*v57)
          {
            goto LABEL_38;
          }

LABEL_53:
          v60 = 0;
          v62 = 0;
        }

        else
        {
          sub_1AB460BD4();
          (*(v58 + 8))(v59, v54);
          if (!*v57)
          {
            goto LABEL_53;
          }

LABEL_38:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v60 = sub_1AB460AE4();
          v62 = v61;
          swift_unknownObjectRelease();
        }

        v68 = **(v0 + 680);

        if (v62 | v60)
        {
          v69 = v0 + 464;
          *(v0 + 464) = 0;
          *(v0 + 472) = 0;
          *(v0 + 480) = v60;
          *(v0 + 488) = v62;
        }

        else
        {
          v69 = 0;
        }

        v14 = v81;
        v15 = v82;
        v70 = *(v0 + 808);
        *(v0 + 560) = 1;
        *(v0 + 568) = v69;
        *(v0 + 576) = v68;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1AB014AC0(v70, &qword_1EB4384A0);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
        v6 = (v0 + 632);
LABEL_49:
        v16 = v80;
        goto LABEL_50;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
LABEL_50:
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 432);
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 400);
      if (!v19)
      {
        goto LABEL_10;
      }
    }
  }

  v71 = *(v0 + 696);

  *(v0 + 648) = v71;

  sub_1AB01CBBC(v72, &v86);
  v73 = MEMORY[0x1E69E7CC0];
  if (v86)
  {
    v74 = v86;
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  sub_1AB460D04();
  *(v0 + 904) = v74;
  *(v0 + 888) = v73;
  v75 = swift_task_alloc();
  *(v0 + 896) = v75;
  *v75 = v0;
  v75[1] = sub_1AB063EC8;
  v76 = *(v0 + 776);
  v77 = *(v0 + 768);

  return MEMORY[0x1EEE6DAD8](v77, 0, 0, v76, v0 + 656);
}

uint64_t sub_1AB042978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB042A40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB042A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  v7 = sub_1AB45F9B4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for MonotonicTimeReference();
  v6[17] = swift_task_alloc();
  v6[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396A0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for _ResolvedDependency();
  v6[22] = swift_task_alloc();
  v6[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439678);
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB042C24, 0, 0);
}

uint64_t sub_1AB042C24()
{
  v17 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v16);
  v7 = *(v2 + 20);
  *(v0 + 232) = v7;
  *(v1 + v7) = v16;
  v8 = *(v5 + 16);
  *(v0 + 200) = v8;
  *(v0 + 208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v1, v4);
  ObjectType = swift_getObjectType();
  v10 = *(v6 + 24);
  *(v0 + 40) = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  v15 = (v10 + *v10);
  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_1AB063400;
  v13 = *(v0 + 72);

  return v15(boxed_opaque_existential_0, ObjectType, v13);
}

uint64_t AsyncObjectGraphBuilder.satisfying(allOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  (*(a4 + 16))(a3, a4);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1AB0400C4(sub_1AB042F40, v8);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437680);
  a5[3] = result;
  a5[4] = &off_1F200A3D8;
  v11 = MEMORY[0x1E69E7CC0];
  *a5 = v9;
  a5[1] = v11;
  return result;
}

uint64_t sub_1AB042EC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB042F48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1AB3991C0;

  return v9(v6 + 16);
}

uint64_t sub_1AB04303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0405AC, 0, 0);
}

uint64_t sub_1AB043060(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB041894, 0, 0);
  }
}

uint64_t sub_1AB043194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v3[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB041974, 0, 0);
}

uint64_t type metadata accessor for _ResolvedDependency()
{
  result = qword_1EB432F60;
  if (!qword_1EB432F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB043204(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1AB027554;

  return sub_1AB0432CC(a1, a2, v7, v6);
}

uint64_t sub_1AB0432CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB027460;

  return sub_1AB041B1C(a1, a2, v8, a4);
}

uint64_t sub_1AB043384(uint64_t a1)
{
  sub_1AB06202C(a1);
  if (v2)
  {
    return 0;
  }

  sub_1AB0318FC();
  sub_1AB460184();
  v3 = sub_1AB460154();
  v4 = *(v1 + 48);

  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));

  if (v5 == 1)
  {

    sub_1AB460124();
  }

  sub_1AB3858E0(v3);
  return v3;
}

uint64_t sub_1AB043434()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Bag.fetchBag(forProfile:as:wantsAutomaticUpdates:)(uint64_t *a1, void *a2, int a3)
{
  v31 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v30 - v5;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v30 = *(Configuration - 8);
  v7 = *(v30 + 64);
  v8 = MEMORY[0x1EEE9AC00](Configuration);
  v9 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  if (qword_1EB4343E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1AB45FD64();
  v17 = __swift_project_value_buffer(v16, qword_1EB46C1D8);
  *(v9 + 3) = v15;
  *(v9 + 4) = 0;
  *v9 = v12;
  *(v9 + 1) = v13;
  *(v9 + 2) = v14;
  v9[40] = 0;
  v18 = *(v16 - 8);
  (*(v18 + 16))(&v9[*(Configuration + 28)], v17, v16);
  v19 = v32;
  *(v9 + 4) = v32;
  sub_1AB043888(v9, v11);
  v11[40] = v31 & 1;
  v20 = v19;

  sub_1AB0438EC(v9, type metadata accessor for Bag.FetchConfiguration);
  (*(v18 + 24))(&v11[*(Configuration + 28)], v17, v16);
  sub_1AB043888(v11, v9);
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = swift_allocObject();
  sub_1AB04394C(v9, v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC80);
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = MEMORY[0x1E69E7CC0];
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = 0;
  v26 = sub_1AB460BE4();
  v27 = v33;
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = &unk_1AB4F0AB0;
  v28[5] = v22;
  v28[6] = v23;

  sub_1AB39BBA8(0, 0, v27, &unk_1AB4F0AB8, v28);

  sub_1AB0438EC(v11, type metadata accessor for Bag.FetchConfiguration);
  return v23;
}

uint64_t type metadata accessor for Bag.FetchConfiguration()
{
  result = qword_1EB433A70;
  if (!qword_1EB433A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB043888(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  (*(*(Configuration - 8) + 16))(a2, a1, Configuration);
  return a2;
}

uint64_t sub_1AB0438EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AB04394C(uint64_t a1, uint64_t a2)
{
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  (*(*(Configuration - 8) + 32))(a2, a1, Configuration);
  return a2;
}

uint64_t sub_1AB0439B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1AB08FD24;

  return v9(v6 + 16);
}

uint64_t sub_1AB043AA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return static Bag.fetchBag(using:)(a1, a2);
}

uint64_t static Bag.fetchBag(using:)(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BC90);
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB043C10, 0, 0);
}

uint64_t sub_1AB043C10()
{
  if (qword_1EB433A90 != -1)
  {
    swift_once();
  }

  v1 = byte_1EB4334E0;
  *(v0 + 217) = byte_1EB4334E0;
  v2 = *(v0 + 312);
  if (v1 == 1)
  {
    v3 = sub_1AB043CC8(v2);
  }

  else
  {
    v3 = sub_1AB39BF50(v2);
  }

  *(v0 + 344) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1AB0442AC, 0, 0);
}

uint64_t sub_1AB043CC8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  Configuration = type metadata accessor for Bag.FetchConfiguration();
  v6 = *(Configuration - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](Configuration - 8);
  if (qword_1EB435688 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v8 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v9 = swift_allocObject();
  v37 = xmmword_1AB4D4720;
  *(v9 + 16) = xmmword_1AB4D4720;
  v43 = sub_1AB0168A8(0, 50, 0, MEMORY[0x1E69E7CC0]);
  v10._object = 0x80000001AB50C470;
  v10._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = *a1;
  v12 = a1[1];
  v42[3] = MEMORY[0x1E69E6158];
  v42[0] = v11;
  v42[1] = v12;
  sub_1AB014A58(v42, v38, &unk_1EB437E60);
  v39 = 0u;
  v40 = 0u;

  sub_1AB0169C4(v38, &v39);
  v41 = 0;
  v13 = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1AB0168A8(0, *(v13 + 2) + 1, 1, v13);
    v43 = v13;
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1AB0168A8((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[40 * v15];
  v17 = v39;
  v18 = v40;
  v16[64] = v41;
  *(v16 + 2) = v17;
  *(v16 + 3) = v18;
  v43 = v13;
  sub_1AB014AC0(v42, &unk_1EB437E60);
  v19._countAndFlagsBits = 0x5620676E69737520;
  v19._object = 0xE900000000000033;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  *(v9 + 32) = v43;
  v20 = sub_1AB461094();
  if (os_log_type_enabled(v8, v20))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v21 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    v36 = v6;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v39 = v9;
    *(&v39 + 1) = sub_1AB01A8D8;
    *&v40 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v24 = sub_1AB460484();
    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v27 = swift_allocObject();
    *(v27 + 16) = v37;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1AB016854();
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    sub_1AB45FF14();

    v6 = v36;
  }

  else
  {
  }

  sub_1AB043888(a1, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v29 = swift_allocObject();
  sub_1AB04394C(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BCA0);
  v30 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v30 + 16) = v31;
  *(v30 + 24) = MEMORY[0x1E69E7CC0];
  *(v30 + 32) = 0;
  v32 = sub_1AB460BE4();
  (*(*(v32 - 8) + 56))(v4, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = &unk_1AB4F0B38;
  v33[5] = v29;
  v33[6] = v30;

  sub_1AB39BBA8(0, 0, v4, &unk_1AB4F0B50, v33);

  return v30;
}

uint64_t sub_1AB0442AC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_1AB08F9BC;
  v0[18] = swift_continuation_init();
  v2 = (v0 + 18);
  *(v2 + 72) = 1;
  sub_1AB044378(v2);
  sub_1AB014AC0(v2, &unk_1EB437750);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB044378(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAD5C(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAD5C(v4);
      v15 = MEMORY[0x1E69E7D60];
      v16 = v4;
      v17 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB43A1B4(v4);
    v15 = MEMORY[0x1E69E7D60];
    v16 = v4;
    v17 = 1;
LABEL_12:
    sub_1AB025694(v16, v17, v15);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437750);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB04457C(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB04457C((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB025694(v12, v13, MEMORY[0x1E69E7D60]);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB0445A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB04467C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB04467C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_1AB08F4CC;

  return v9(v6 + 16);
}

uint64_t sub_1AB044770(uint64_t a1)
{
  v4 = *(type metadata accessor for Bag.FetchConfiguration() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1AB027554;

  return sub_1AB04484C(a1, v1 + v5);
}

uint64_t sub_1AB04484C(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_1AB45FCC4();
  v2[16] = swift_task_alloc();
  v3 = sub_1AB45FD74();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_1AB45FDA4();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0449AC, 0, 0);
}

uint64_t sub_1AB0449AC()
{
  v1 = *(v0[15] + 32);
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    sub_1AB45FD84();
  }

  else
  {
    sub_1AB45FD94();
  }

  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v0[15];
  (*(v5 + 32))(v3, v0[23], v6);
  v0[26] = *v7;
  v0[27] = v7[1];
  v0[28] = v7[2];
  v0[29] = v7[3];

  sub_1AB45FCB4();
  (*(v5 + 16))(v4, v3, v6);
  sub_1AB45FCE4();
  v8 = v0[15];
  v9 = *(type metadata accessor for Bag.FetchConfiguration() + 28);
  v10 = swift_task_alloc();
  v0[30] = v10;
  *v10 = v0;
  v10[1] = sub_1AB08F14C;

  return MEMORY[0x1EEDEE0A8](v0 + 2, v8 + v9);
}

void *sub_1AB044C10(void *result, void *a2)
{
  v2 = *a2 < *result;
  if (*a2 == *result)
  {
    v2 = a2[1] < result[1];
  }

  if (v2)
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x203A747261747328, 0xE800000000000000);
    sub_1AB1FE5AC();
    MEMORY[0x1AC59BA20](0x203A646E65202CLL, 0xE700000000000000);
    sub_1AB1FE5AC();
    MEMORY[0x1AC59BA20](41, 0xE100000000000000);
    MEMORY[0x1AC59BA20](0, 0xE000000000000000);

    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AB044D4C(uint64_t a1)
{
  v2 = type metadata accessor for MonotonicTimeReference();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB044DB8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB044DF8(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  v6 = sub_1AB461D54();
  if (v6)
  {
    v7 = v6;
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    v7 = swift_allocError();
    (*(v2 + 32))(v8, v4, a1);
  }

  v9 = sub_1AB45F584();

  IsEqual = AMSErrorIsEqual();
  return IsEqual;
}

uint64_t sub_1AB044F60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB045058()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_1AB26FB78;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 296);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 256);
    v3 = sub_1AB04517C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t JetPackAssetDiskCacheSQLiteMetadataStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AssetSQLiteDatabase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9JetEngine19AssetSQLiteDatabase_url;
  v2 = sub_1AB45F764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB045284(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JetPackAssetSession.__deallocating_deinit()
{

  sub_1AB026354(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t JetPackAssetDiskCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_assetsURL;
  v2 = sub_1AB45F764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC9JetEngine21JetPackAssetDiskCache_metadataStore);

  return swift_deallocClassInstance();
}

uint64_t InMemoryJetPackResourceBundle.data(withName:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1AB014DB4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 16 * v4;
  v7 = *v6;
  sub_1AB017200(*v6, *(v6 + 8));
  return v7;
}

uint64_t sub_1AB045464()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AB26F620;
  }

  else
  {
    v2 = sub_1AB045578;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB045578()
{
  sub_1AB0455EC(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

void sub_1AB0455EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 6);
  sub_1AB045644();
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_1AB0456A0(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v13 = *(a2 + 8);
  v19 = MEMORY[0x1E69E7CC0];
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v18[0] = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB045904(*(a1 + 16), v15);
  swift_task_localValuePop();
  if (v17)
  {
    sub_1AB0149B0(v15, v18);
  }

  else
  {
    v18[0] = a1;

    swift_task_localValuePush();
    v5 = sub_1AB048608(*(a1 + 16));
    swift_task_localValuePop();
    if (v5)
    {
      v6 = sub_1AB016760(0, &qword_1ED4D1F60);
      v7 = &protocol witness table for ACAccountStore;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    v18[0] = v5;
    v18[3] = v6;
    v18[4] = v7;
    if (v17)
    {
      sub_1AB014AC0(v15, &qword_1EB438A70);
    }
  }

  v15[0] = v3;
  v15[1] = v4;
  v16 = v13;
  v14 = a1;

  swift_task_localValuePush();
  sub_1AB045DD8(*(a1 + 16), &v14);
  swift_task_localValuePop();

  swift_task_localValuePush();
  v8 = sub_1AB046230(*(a1 + 16));
  swift_task_localValuePop();

  swift_task_localValuePush();
  v9 = sub_1AB0466F8(*(a1 + 16));
  swift_task_localValuePop();
  v10 = _s9JetEngine7JSStackC25makeStandardPrerequisites5using3bag10urlSession7process15accountProviderSayAC12PrerequisiteOGAC0E19GlobalConfigurationV_AA3BagVSgSo13AMSURLSessionCSgSo14AMSProcessInfoCSgAA07AccountM0_pSgtFZ_0(v15, &v14, v8, v9, v18);

  swift_unknownObjectRelease();
  sub_1AB047020(v10);

  sub_1AB047020(v11);
  sub_1AB014AC0(v18, &qword_1EB438A70);
  return v19;
}

uint64_t sub_1AB045904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436578);
  if (*(a1 + 16) && (v5 = sub_1AB016558(v4), (v6 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v5, v14);
    sub_1AB014B78(v14, &v16);
    sub_1AB0165C4(&v16, v15);
    if (swift_dynamicCast())
    {
      sub_1AB0149B0(v14, a2);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367D8);
    if (swift_dynamicCast())
    {
      sub_1AB1321A0(&qword_1EB436578, &unk_1AB4D41D0, sub_1AB13DB40);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367E0);
    if (swift_dynamicCast())
    {
      v13 = *&v14[0];

      sub_1AB41FF9C("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      sub_1AB133BEC(&qword_1EB436578, &unk_1AB4D41D0, sub_1AB150BCC);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41FFC0("JetEngine/DependencyDictionary.swift", 36, 2, 239, *&v14[0], *(&v14[0] + 1));
      swift_unknownObjectRelease();
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED4D19F8;
    v8 = *(off_1ED4D19F8 + 2);
    v9 = off_1ED4D19F8 + 32;

    if (v8)
    {
      v10 = 0;
      while (1)
      {
        v16 = *&v9[16 * v10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367D0);
        if (swift_dynamicCast())
        {
          if (*&v14[0])
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          goto LABEL_13;
        }
      }

      v8 = v10;
    }

LABEL_13:
    v11 = v7[2];
    if (v8 == v11)
    {

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v8 >= v11)
    {
      __break(1u);
    }

    else
    {
      v16 = *&v9[16 * v8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367D0);
      if ((swift_dynamicCast() & 1) != 0 && *&v14[0])
      {

        return sub_1AB01D05C(a1, *&v14[0], *(&v14[0] + 1), a2);
      }
    }

    __break(1u);
  }

  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v16, v17);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0x50746E756F636341, 0xEF72656469766F72);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB045DD8@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t)@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for Bag), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v14);
    sub_1AB014B78(v14, &v15);
    sub_1AB0165C4(&v15, v14);
    if (swift_dynamicCast())
    {
      *a2 = v12;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436868);
    if (swift_dynamicCast())
    {
      sub_1AB131420(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436870);
    if (swift_dynamicCast())
    {

      sub_1AB41C4A4("JetEngine/DependencyDictionary.swift", 36, 2, 231, v12);

      sub_1AB132E6C(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41C4B4("JetEngine/DependencyDictionary.swift", 36, 2, 239, v12, v13);
      swift_unknownObjectRelease();
      *a2 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v14[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436878);
        if (swift_dynamicCast())
        {
          if (v15)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      *a2 = 0;
      return result;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v14[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436878);
      if ((swift_dynamicCast() & 1) != 0 && v15)
      {

        return sub_1AB01D05C(a1, v15, *(&v15 + 1), a2);
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v15, v16);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](6775106, 0xE300000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB046230(uint64_t a1)
{
  v2 = sub_1AB016760(0, &qword_1ED4D1050);
  if (*(a1 + 16) && (v3 = sub_1AB016558(v2), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v3, v15);
    sub_1AB014B78(v15, &v16);
    sub_1AB0165C4(&v16, v15);
    if (swift_dynamicCast())
    {
      v5 = v13;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367A8);
    if (swift_dynamicCast())
    {
      v5 = sub_1AB131C6C(&qword_1ED4D1050, 0x1E698CBA8, sub_1AB1580B8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367B0);
    if (swift_dynamicCast())
    {

      sub_1AB41FFE4("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      v5 = sub_1AB1336AC(&qword_1ED4D1050, 0x1E698CBA8, sub_1AB1580B8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41FFF8("JetEngine/DependencyDictionary.swift", 36, 2, 239, v13, v14);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v15[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367A0);
        if (swift_dynamicCast())
        {
          if (v16)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 0;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v15[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367A0);
      if ((swift_dynamicCast() & 1) != 0 && v16)
      {

        sub_1AB01D05C(a1, v16, *(&v16 + 1), &v16);
        return v16;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v16, v17);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  v12 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v12);

  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB0466F8(uint64_t a1)
{
  v2 = sub_1AB016760(0, &unk_1ED4D1398);
  if (*(a1 + 16) && (v3 = sub_1AB016558(v2), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v3, v15);
    sub_1AB014B78(v15, &v16);
    sub_1AB0165C4(&v16, v15);
    if (swift_dynamicCast())
    {
      v5 = v13;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368C8);
    if (swift_dynamicCast())
    {
      v5 = sub_1AB131C6C(&unk_1ED4D1398, 0x1E698CAC8, sub_1AB1580B8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368D0);
    if (swift_dynamicCast())
    {

      sub_1AB417E1C("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      v5 = sub_1AB1336AC(&unk_1ED4D1398, 0x1E698CAC8, sub_1AB1580B8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB417E30("JetEngine/DependencyDictionary.swift", 36, 2, 239, v13, v14);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v15[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368D8);
        if (swift_dynamicCast())
        {
          if (v16)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 0;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v15[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4368D8);
      if ((swift_dynamicCast() & 1) != 0 && v16)
      {

        sub_1AB01D05C(a1, v16, *(&v16 + 1), &v16);
        return v16;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v16, v17);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  v12 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v12);

  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

unint64_t sub_1AB046CB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1AB461924();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1AB014DB4(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

char *sub_1AB046EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AB047020(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AB046EE0(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t JSStack.__allocating_init(asPartOf:virtualMachine:configuration:customPrerequisites:qualityOfService:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 + 1);
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  LOBYTE(v16) = *a3;
  BYTE1(v16) = v8;
  *(&v16 + 1) = v9;
  v17 = v10;
  v11 = sub_1AB0456A0(a1, &v16);

  sub_1AB0177B8(v9);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  *&v16 = a1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB0472B0(*(a1 + 16), &v16);
  swift_task_localValuePop();
  v15[0] = a1;

  swift_task_localValuePush();
  sub_1AB047758(*(a1 + 16), v15);
  swift_task_localValuePop();
  swift_allocObject();
  sub_1AB047C28(v11, a5, &v16, a2, v15);
  v13 = v12;

  return v13;
}

uint64_t sub_1AB0472B0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1AB016558(&type metadata for SentryConfiguration), (v5 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v4, v16);
    sub_1AB014B78(v16, &v18);
    sub_1AB0165C4(&v18, v17);
    if (swift_dynamicCast())
    {
      v6 = v16[5];
      a2[4] = v16[4];
      a2[5] = v6;
      a2[6] = v16[6];
      v7 = v16[1];
      *a2 = v16[0];
      a2[1] = v7;
      v8 = v16[3];
      a2[2] = v16[2];
      a2[3] = v8;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436780);
    if (swift_dynamicCast())
    {
      sub_1AB131E28(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436788);
    if (swift_dynamicCast())
    {
      v15 = *&v16[0];

      sub_1AB42000C("JetEngine/DependencyDictionary.swift", 36, 2, 231, v15);

      sub_1AB13386C(a2);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB4208E4("JetEngine/DependencyDictionary.swift", 36, 2, 239, *&v16[0]);
      swift_unknownObjectRelease();
      a2[5] = 0u;
      a2[6] = 0u;
      a2[3] = 0u;
      a2[4] = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v9 = off_1ED4D19F8;
    v10 = *(off_1ED4D19F8 + 2);
    v11 = off_1ED4D19F8 + 32;

    if (v10)
    {
      v12 = 0;
      while (1)
      {
        v18 = *&v11[16 * v12];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436778);
        if (swift_dynamicCast())
        {
          if (*&v16[0])
          {
            break;
          }
        }

        if (v10 == ++v12)
        {
          goto LABEL_13;
        }
      }

      v10 = v12;
    }

LABEL_13:
    v13 = v9[2];
    if (v10 == v13)
    {

      a2[5] = 0u;
      a2[6] = 0u;
      a2[3] = 0u;
      a2[4] = 0u;
      a2[1] = 0u;
      a2[2] = 0u;
      *a2 = 0u;
      return result;
    }

    if (v10 >= v13)
    {
      __break(1u);
    }

    else
    {
      v18 = *&v11[16 * v10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436778);
      if ((swift_dynamicCast() & 1) != 0 && *&v16[0])
      {

        return sub_1AB01D05C(a1, *&v16[0], *(&v16[0] + 1), a2);
      }
    }

    __break(1u);
  }

  *&v16[0] = 0;
  *(&v16[0] + 1) = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v18, v19);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0xD000000000000013, 0x80000001AB4FF220);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB047758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436748);
  if (*(a1 + 16) && (v5 = sub_1AB016558(v4), (v6 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v5, v14);
    sub_1AB014B78(v14, &v16);
    sub_1AB0165C4(&v16, v15);
    if (swift_dynamicCast())
    {
      sub_1AB0149B0(v14, a2);
LABEL_25:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436758);
    if (swift_dynamicCast())
    {
      sub_1AB1321A0(&qword_1EB436748, &unk_1AB4D4480, sub_1AB13EE00);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436760);
    if (swift_dynamicCast())
    {
      v13 = *&v14[0];

      sub_1AB421184("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      sub_1AB133BEC(&qword_1EB436748, &unk_1AB4D4480, sub_1AB151F38);

      goto LABEL_25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB4211A4("JetEngine/DependencyDictionary.swift", 36, 2, 239, *&v14[0], *(&v14[0] + 1));
      swift_unknownObjectRelease();
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v7 = off_1ED4D19F8;
    v8 = *(off_1ED4D19F8 + 2);
    v9 = off_1ED4D19F8 + 32;

    if (v8)
    {
      v10 = 0;
      while (1)
      {
        v16 = *&v9[16 * v10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436750);
        if (swift_dynamicCast())
        {
          if (*&v14[0])
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          goto LABEL_13;
        }
      }

      v8 = v10;
    }

LABEL_13:
    v11 = v7[2];
    if (v8 == v11)
    {

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (v8 >= v11)
    {
      __break(1u);
    }

    else
    {
      v16 = *&v9[16 * v8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436750);
      if ((swift_dynamicCast() & 1) != 0 && *&v14[0])
      {

        return sub_1AB01D05C(a1, *&v14[0], *(&v14[0] + 1), a2);
      }
    }

    __break(1u);
  }

  *&v14[0] = 0;
  *(&v14[0] + 1) = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v16, v17);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  MEMORY[0x1AC59BA20](0x6143746E65746E49, 0xEB00000000656863);
  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

void sub_1AB047C28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v38 = *v6;
  v6[25] = 0;
  v6[26] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v6[5] = MEMORY[0x1E69E7CC0];
  v48 = a3;
  sub_1AB014A58(a3, (v6 + 6), &qword_1EB4389B0);
  type metadata accessor for RunLoopWorkerThread();
  v10 = swift_allocObject();
  v10[5] = 0;
  v10[6] = 0;
  v10[2] = 0xD00000000000001BLL;
  v10[3] = 0x80000001AB504040;
  v10[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v10[7] = v9;
  v6[3] = v10;

  sub_1AB048280(a2, 0);

  v11 = v6[3];
  v12 = swift_allocObject();
  v12[2] = 0x747865746E6F63;
  v12[3] = 0xE700000000000000;
  v12[4] = a4;
  v13 = *(v11 + 32);
  v14 = a4;

  [v13 lock];
  v15 = CFRunLoopGetCurrent();
  v16 = *(v11 + 40);
  if (v15)
  {
    v17 = v15;
    if (v16)
    {
      type metadata accessor for CFRunLoop(0);
      sub_1AB049958(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
      v18 = v16;
      v19 = sub_1AB45FC14();

      if ((v19 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      [v13 unlock];
      sub_1AB04C638(v14, v45);

      v20 = v45[0];
      goto LABEL_10;
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

LABEL_8:
  [v13 unlock];
  v21 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389B8);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = 0;
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = sub_1AB04C634;
  v23[4] = v12;
  v23[5] = v21;

  v24 = v21;
  sub_1AB0484A4(sub_1AB04C5B8, v23);

  sub_1AB461254();
  os_unfair_lock_lock((v22 + 24));
  v25 = *(v22 + 16);
  v20 = v25;
  os_unfair_lock_unlock((v22 + 24));
  if (!v25)
  {

    __break(1u);
    return;
  }

LABEL_10:
  v6[4] = v20;
  sub_1AB014A58(a5, &v43, &qword_1EB4389F0);
  if (v44)
  {
    sub_1AB0149B0(&v43, v45);
    v26 = v46;
  }

  else
  {
    v26 = type metadata accessor for NoOpIntentCache();
    v27 = swift_allocObject();
    v46 = v26;
    v47 = &off_1F1FFFC60;
    v45[0] = v27;
  }

  v28 = __swift_project_boxed_opaque_existential_1Tm(v45, v26);
  v6[24] = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6 + 21);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v28, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v30 = sub_1AB050708(a1);
  v31 = type metadata accessor for JSLazyProvider();
  v32 = objc_allocWithZone(v31);
  swift_unknownObjectWeakInit();
  *&v32[OBJC_IVAR____TtC9JetEngine14JSLazyProvider_lazyDependencies] = v30;
  swift_unknownObjectWeakAssign();
  v42.receiver = v32;
  v42.super_class = v31;
  v6[2] = objc_msgSendSuper2(&v42, sel_init);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v33 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v33[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v33 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_22;
  }

  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if ((byte_1EB435998 & 1) == 0)
  {
    type metadata accessor for TracingSupport();
    v35 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389C8);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v35 + 16) = v36;
    v6[20] = v35;
    v37 = v6[4];
    sub_1AB050AB8(a1, v45);
    sub_1AB049B10(v37, v45);
    sub_1AB014AC0(v45, &qword_1EB4389D0);
    goto LABEL_24;
  }

LABEL_22:
  v6[20] = 0;
LABEL_24:
  sub_1AB051D70(a1);
  if (v40)
  {
  }

  sub_1AB014AC0(a5, &qword_1EB4389F0);
  sub_1AB014AC0(v48, &qword_1EB4389B0);
}

void sub_1AB048280(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x1E696AF00]);
  v18 = sub_1AB04C5A8;
  v19 = v3;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1AB01D528;
  v17 = &block_descriptor_52;
  v7 = _Block_copy(&v14);

  v8 = [v6 initWithBlock_];
  _Block_release(v7);

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1AB4615D4();

  v14 = 0xD00000000000001ELL;
  v15 = 0x80000001AB50F530;
  MEMORY[0x1AC59BA20](*(v3 + 16), *(v3 + 24));
  MEMORY[0x1AC59BA20](93, 0xE100000000000000);
  v9 = sub_1AB460514();

  [v8 setName_];

  v10 = [v8 threadDictionary];
  v11 = sub_1AB460514();
  v12 = [objc_opt_self() valueWithNonretainedObject_];
  [v10 setObject:v12 forKeyedSubscript:v11];

  if (a2)
  {
    v13 = 25;
  }

  else
  {
    v13 = a1;
  }

  [v8 setQualityOfService_];
  [v8 start];
}

id sub_1AB0484A4(uint64_t a1, uint64_t a2)
{
  v5 = v2[4];
  [v5 lock];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();
  v7 = v2[7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[7] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1AB048B18(0, v7[2] + 1, 1, v7);
    v2[7] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1AB048B18((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1AB021150;
  v11[5] = v6;
  v2[7] = v7;
  swift_endAccess();
  v12 = v2[5];
  if (v12)
  {
    v13 = v2[6];
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      CFRunLoopSourceSignal(v14);
      CFRunLoopWakeUp(v15);
    }
  }

  return [v5 unlock];
}

uint64_t sub_1AB048608(uint64_t a1)
{
  v2 = sub_1AB016760(0, &qword_1ED4D1F60);
  if (*(a1 + 16) && (v3 = sub_1AB016558(v2), (v4 & 1) != 0))
  {
    sub_1AB0165C4(*(a1 + 56) + 32 * v3, v15);
    sub_1AB014B78(v15, &v16);
    sub_1AB0165C4(&v16, v15);
    if (swift_dynamicCast())
    {
      v5 = v13;
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      return v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367C0);
    if (swift_dynamicCast())
    {
      v5 = sub_1AB131C6C(&qword_1ED4D1F60, 0x1E6959A48, sub_1AB1580B8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367C8);
    if (swift_dynamicCast())
    {

      sub_1AB41A0E4("JetEngine/DependencyDictionary.swift", 36, 2, 231, v13);

      v5 = sub_1AB1336AC(&qword_1ED4D1F60, 0x1E6959A48, sub_1AB1580B8);

      goto LABEL_22;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365B0);
    if (swift_dynamicCast())
    {
      sub_1AB41AA24("JetEngine/DependencyDictionary.swift", 36, 2, 239, v13, v14);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      return 0;
    }
  }

  else
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);
    v8 = off_1ED4D19F8 + 32;

    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v15[0] = *&v8[16 * v9];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367B8);
        if (swift_dynamicCast())
        {
          if (v16)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          goto LABEL_13;
        }
      }

      v7 = v9;
    }

LABEL_13:
    v10 = v6[2];
    if (v7 == v10)
    {

      return 0;
    }

    if (v7 >= v10)
    {
      __break(1u);
    }

    else
    {
      v15[0] = *&v8[16 * v7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4367B8);
      if ((swift_dynamicCast() & 1) != 0 && v16)
      {

        sub_1AB01D05C(a1, v16, *(&v16 + 1), &v16);
        return v16;
      }
    }

    __break(1u);
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
  __swift_project_boxed_opaque_existential_1Tm(&v16, v17);
  sub_1AB461D64();
  MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
  v12 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v12);

  MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB048AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

void sub_1AB048B2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 1;
  *&v97[0] = sub_1AB2241D4;
  *(&v97[0] + 1) = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v96 = sub_1AB0C16BC;
  *(&v96 + 1) = &block_descriptor_335;
  v7 = _Block_copy(&aBlock);

  [v4 setExceptionHandler_];
  _Block_release(v7);
  v86 = [v4 globalObject];
  if (!v86)
  {
    goto LABEL_61;
  }

  v8 = *(a1 + 16);
  v87 = objc_opt_self();
  v9 = [v87 valueWithObject:v8 inContext:v4];
  if (!v9)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    sub_1AB461FC4();
    __break(1u);
    return;
  }

  v83 = a1;
  v10 = v9;
  v11 = sub_1AB460514();
  [v86 setValue:v10 forProperty:v11];

  v12 = *(a2 + 16);
  v84 = v4;
  v82 = a2;
  v88 = v12;
  if (v12)
  {
    v13 = a2 + 32;
    do
    {
      sub_1AB054B5C(v13, &v102);
      if (v105 > 2u)
      {
        sub_1AB0508F0(&v102);
      }

      else if (v105)
      {
        if (v105 == 1)
        {
          v14 = v103;
          *(&v96 + 1) = swift_getObjectType();
          *&aBlock = v14;
          swift_unknownObjectRetain();
          v15 = v4;
          v16 = sub_1AB461D84();
          __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
          v17 = [v87 valueWithObject:v16 inContext:v15];
          swift_unknownObjectRelease();

          if (!v17)
          {
            goto LABEL_60;
          }

          v18 = v17;
          v19 = sub_1AB460514();

          [v86 setValue:v18 forProperty:v19];
          swift_unknownObjectRelease();

          v4 = v84;
        }

        else
        {
          v24 = v103;
          v25 = swift_allocObject();
          *(v25 + 16) = v24;
          *&v97[0] = sub_1AB088B60;
          *(&v97[0] + 1) = v25;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v96 = sub_1AB054BC4;
          *(&v96 + 1) = &block_descriptor_366;
          v26 = _Block_copy(&aBlock);

          v27 = [v87 valueWithObject:v26 inContext:v4];
          if (!v27)
          {
            goto LABEL_59;
          }

          v28 = v27;
          _Block_release(v26);
          v29 = v28;
          v30 = sub_1AB460514();

          [v86 setValue:v29 forProperty:v30];
        }
      }

      else
      {
        sub_1AB0149B0(&v102, v99);
        sub_1AB01494C(v99, v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F40);
        if (swift_dynamicCast())
        {
          v97[0] = v91;
          v97[1] = v92;
          v98 = v93;
          aBlock = v89;
          v96 = v90;
          sub_1AB0165C4(v97 + 8, &v89);
          swift_beginAccess();
          v20 = *(v83 + 40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v83 + 40) = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v20 = sub_1AB05303C(0, *(v20 + 2) + 1, 1, v20);
            *(v83 + 40) = v20;
          }

          v23 = *(v20 + 2);
          v22 = *(v20 + 3);
          if (v23 >= v22 >> 1)
          {
            v20 = sub_1AB05303C((v22 > 1), v23 + 1, 1, v20);
          }

          *(v20 + 2) = v23 + 1;
          sub_1AB014B78(&v89, &v20[32 * v23 + 32]);
          *(v83 + 40) = v20;
          swift_endAccess();
          sub_1AB05314C(&aBlock);
        }

        else
        {
          v93 = 0;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          sub_1AB014AC0(&v89, &qword_1EB438A50);
        }

        v31 = v100;
        v32 = v101;
        __swift_project_boxed_opaque_existential_1Tm(v99, v100);
        v33 = sub_1AB0531A0(v4, v31, v32);
        if (v85)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          v79 = swift_allocObject();
          swift_weakInit();
          v80 = swift_allocObject();
          *(v80 + 16) = v79;
          *(v80 + 24) = 0;
          *&v97[0] = sub_1AB2241D4;
          *(&v97[0] + 1) = v80;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v65 = &block_descriptor_374;
          goto LABEL_56;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v99);
      }

      v13 += 48;
      --v12;
    }

    while (v12);
  }

  v34 = sub_1AB460514();
  v35 = [v86 valueForProperty_];

  if (!v35)
  {
    goto LABEL_63;
  }

  *(&v90 + 1) = &type metadata for JSStrongReference;
  *&v91 = &protocol witness table for JSStrongReference;
  *&v89 = v35;
  JSCallable.init(_:)(&v89, &aBlock);
  v36 = v88;
  if (!*(&v96 + 1))
  {

    sub_1AB014AC0(&aBlock, &qword_1EB438A30);
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = 0;
    *&v97[0] = sub_1AB2241D4;
    *(&v97[0] + 1) = v64;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v65 = &block_descriptor_343;
    goto LABEL_56;
  }

  v102 = aBlock;
  v103 = v96;
  v104 = *&v97[0];
  if (v88)
  {
    v37 = v82 + 32;
    v38 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      sub_1AB054B5C(v37, &aBlock);
      sub_1AB054B5C(&aBlock, &v89);
      if (BYTE8(v91) != 3)
      {
        sub_1AB0508F0(&aBlock);
        p_aBlock = &v89;
LABEL_37:
        sub_1AB0508F0(p_aBlock);
        goto LABEL_28;
      }

      v41 = v89;
      v42 = v90;
      *(&v90 + 1) = swift_getObjectType();
      *&v89 = v42;
      swift_unknownObjectRetain();
      v43 = v4;
      v44 = sub_1AB461D84();
      __swift_destroy_boxed_opaque_existential_1Tm(&v89);
      v45 = [v87 valueWithObject:v44 inContext:v43];
      swift_unknownObjectRelease();

      if (!v45)
      {
        v56 = sub_1AB014DB4(v41, *(&v41 + 1));
        v58 = v57;

        if ((v58 & 1) == 0)
        {
          sub_1AB0508F0(&aBlock);
          swift_unknownObjectRelease();
          goto LABEL_28;
        }

        v59 = swift_isUniquelyReferenced_nonNull_native();
        *&v89 = v38;
        if (!v59)
        {
          sub_1AB1D8CF4();
          v38 = v89;
        }

        sub_1AB19037C(v56, v38);
        swift_unknownObjectRelease();
        p_aBlock = &aBlock;
        goto LABEL_37;
      }

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v89 = v38;
      v48 = sub_1AB014DB4(v41, *(&v41 + 1));
      v49 = v38[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v52 = v47;
      if (v38[3] >= v51)
      {
        if (v46)
        {
          v4 = v84;
          if (v47)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_1AB1D8CF4();
          v4 = v84;
          if (v52)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_1AB1D3614(v51, v46);
        v53 = sub_1AB014DB4(v41, *(&v41 + 1));
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_65;
        }

        v48 = v53;
        v4 = v84;
        if (v52)
        {
LABEL_27:

          v38 = v89;
          v39 = *(v89 + 56);
          v40 = *(v39 + 8 * v48);
          *(v39 + 8 * v48) = v45;
          swift_unknownObjectRelease();

          sub_1AB0508F0(&aBlock);
          goto LABEL_28;
        }
      }

      v38 = v89;
      *(v89 + 8 * (v48 >> 6) + 64) |= 1 << v48;
      *(v38[6] + 16 * v48) = v41;
      *(v38[7] + 8 * v48) = v45;
      swift_unknownObjectRelease();
      sub_1AB0508F0(&aBlock);
      v60 = v38[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_58;
      }

      v38[2] = v62;
LABEL_28:
      v37 += 48;
      if (!--v36)
      {
        goto LABEL_51;
      }
    }
  }

  v38 = MEMORY[0x1E69E7CC8];
LABEL_51:
  v99[0] = v38;
  sub_1AB221D48(v82, v86, v99);
  v66 = sub_1AB460514();
  v67 = [v86 valueForProperty_];

  if (!v67)
  {
    goto LABEL_64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1AB4D4720;
  v69 = v99[0];
  *(v68 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE0);
  *(v68 + 32) = v69;
  v70.super.isa = JSCallable.call(withArguments:)(v68).super.isa;
  if (v71)
  {
    sub_1AB087F9C(&v102);

    v72 = swift_allocObject();
    swift_weakInit();
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = 0;
    *&v97[0] = sub_1AB2241D4;
    *(&v97[0] + 1) = v73;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v65 = &block_descriptor_351;
  }

  else
  {
    isa = v70.super.isa;

    v75 = isa;
    v76 = sub_1AB460514();
    [v67 setValue:v75 forProperty:v76];

    sub_1AB087F9C(&v102);
    v77 = swift_allocObject();
    swift_weakInit();
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = 0;
    *&v97[0] = sub_1AB2241D4;
    *(&v97[0] + 1) = v78;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v65 = &block_descriptor_359;
  }

LABEL_56:
  *&v96 = sub_1AB0C16BC;
  *(&v96 + 1) = v65;
  v81 = _Block_copy(&aBlock);

  [v4 setExceptionHandler_];
  _Block_release(v81);
}

uint64_t sub_1AB04981C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t JSStack.withUnsafeContext(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  sub_1AB0484A4(sub_1AB054C2C, v5);
}

uint64_t sub_1AB049958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB0499A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AB0499E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t objectdestroy_53Tm(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t objectdestroy_53Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB049ACC(uint64_t result)
{
  if (result)
  {

    sub_1AB04BA80();
  }

  return result;
}

void sub_1AB049B10(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EB4358A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB4358A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  v45 = sub_1AB0168A8(0, 41, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0xD000000000000028;
  v8._object = 0x80000001AB504A20;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  *(&v42 + 1) = MEMORY[0x1E69E6158];
  *&v41 = 0xD000000000000031;
  *(&v41 + 1) = 0x80000001AB504A50;
  sub_1AB014A58(&v41, v44, &unk_1EB437E60);
  aBlock = 0u;
  v38 = 0u;
  sub_1AB0169C4(v44, &aBlock);
  LOBYTE(v39) = 0;
  v9 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = aBlock;
  v14 = v38;
  v12[64] = v39;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  v45 = v9;
  sub_1AB014AC0(&v41, &unk_1EB437E60);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  *(v7 + 32) = v45;
  v16 = sub_1AB461094();
  if (os_log_type_enabled(v6, v16))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v17 = a1;
    v18 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v18[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v18 + 5);
    v20 = a2;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v21 = swift_allocObject();
    *(v21 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&aBlock = v7;
    *(&aBlock + 1) = sub_1AB0223E4;
    *&v38 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v22 = sub_1AB460484();
    v24 = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AB4D4720;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1AB016854();
    *(v25 + 32) = v22;
    *(v25 + 40) = v24;
    sub_1AB45FF14();

    a2 = v20;
    a1 = v17;
  }

  else
  {
  }

  v26 = *(v3 + 16);
  os_unfair_lock_lock(v26 + 5);
  os_unfair_lock_opaque = v26[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v26 + 5);
  if (!os_unfair_lock_opaque)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    sub_1AB016760(0, &qword_1ED4D2060);
    v29 = sub_1AB461124();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v31 = swift_allocObject();
    swift_weakInit();
    sub_1AB014A58(a2, &v41, &qword_1EB4389D0);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    v33 = v42;
    *(v32 + 32) = v41;
    *(v32 + 48) = v33;
    *(v32 + 64) = v43;
    *(v32 + 72) = v28;
    v39 = sub_1AB224014;
    v40 = v32;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v38 = sub_1AB21D930;
    *(&v38 + 1) = &block_descriptor_399;
    v34 = _Block_copy(&aBlock);

    v35 = sub_1AB460614();
    swift_beginAccess();
    notify_register_dispatch((v35 + 32), (v28 + 16), v29, v34);
    swift_endAccess();

    _Block_release(v34);

    LODWORD(v29) = *(v28 + 16);
    os_unfair_lock_lock(v26 + 5);
    v26[4]._os_unfair_lock_opaque = v29;
    os_unfair_lock_unlock(v26 + 5);
  }

  os_unfair_lock_lock(v26 + 5);
  v36 = v26[4]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v26 + 5);
  sub_1AB050E30(a1, a2, v36);
}

uint64_t sub_1AB04A0D4()
{
  MEMORY[0x1AC59F150](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB04A10C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB04A144()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_1AB04A1A0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = CFAbsoluteTimeGetCurrent() + a3;
  v6 = *MEMORY[0x1E695E480];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = sub_1AB021150;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1AB4442F8;
  v12[3] = &block_descriptor_3_2;
  v8 = _Block_copy(v12);

  v9 = CFRunLoopTimerCreateWithHandler(v6, v5, 0.0, 0, 0, v8);
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = v9;
  sub_1AB0484A4(sub_1AB07D354, v10);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1AB04A318()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB04A350()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t JSStack.performRequest(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v11 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = *(a1 + 48);

  sub_1AB09AE18(0xD000000000000016, 0x80000001AB504140, &v13);
  if (!*(&v14 + 1))
  {
    sub_1AB014AC0(&v13, &unk_1EB437E60);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = v12;
LABEL_6:
  *&v13 = v2;
  *(&v13 + 1) = v3;

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v4, v5);
  v8 = v13;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v9 = sub_1AB21F680(v2, v3, v4, v5, v8, *(&v8 + 1), v11, v6, v16, 0, 0, &v13, v7, v1);

  sub_1AB014AC0(&v13, &qword_1EB4389E0);
  return v9;
}

uint64_t sub_1AB04A54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PackagingLog.LogTypes(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PackagingLog.LogTypes(uint64_t result, int a2, int a3)
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

uint64_t sub_1AB04A5F4(uint64_t a1)
{
  v2 = type metadata accessor for DiskJetPackResourceBundle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB04A650(uint64_t *a1, void (*a2)(uint64_t *, double))
{
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  a2(&v10, v5);
  sub_1AB04A724(v7);
  return sub_1AB04A5F4(v7);
}

void sub_1AB04A724(uint64_t a1)
{
  v3 = type metadata accessor for DiskJetPackResourceBundle();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437860);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB437860);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB437860);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for DiskJetPackResourceBundle);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB437860);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB4398C0;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17);
        sub_1AB014A58(v42, v39, v17);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for DiskJetPackResourceBundle);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for DiskJetPackResourceBundle);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for DiskJetPackResourceBundle);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for DiskJetPackResourceBundle);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC34, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t _s9JetEngine7JSStackC25makeStandardPrerequisites5using3bag10urlSession7process15accountProviderSayAC12PrerequisiteOGAC0E19GlobalConfigurationV_AA3BagVSgSo13AMSURLSessionCSgSo14AMSProcessInfoCSgAA07AccountM0_pSgtFZ_0(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v74 = *(a1 + 1);
  v75 = *a1;
  v76 = *(a1 + 16);
  v77 = *(a1 + 8);
  v82 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AB4DEAB0;
  v6 = type metadata accessor for JSCryptoObject();
  v7 = &unk_1E794B000;
  v8 = [objc_allocWithZone(v6) init];
  strcpy((v5 + 32), "cryptography");
  *(v5 + 45) = 0;
  *(v5 + 46) = -5120;
  *(v5 + 48) = v8;
  *(v5 + 72) = 1;
  v9 = type metadata accessor for JSNotifyObject();
  v10 = [objc_allocWithZone(v9) init];
  *(v5 + 80) = 0x796669746F6ELL;
  *(v5 + 88) = 0xE600000000000000;
  *(v5 + 96) = v10;
  *(v5 + 120) = 1;
  v11 = type metadata accessor for JSPlistObject();
  v12 = [objc_allocWithZone(v11) init];
  *(v5 + 128) = 0x7473696C70;
  *(v5 + 136) = 0xE500000000000000;
  *(v5 + 144) = v12;
  *(v5 + 168) = 1;
  v13 = type metadata accessor for JSHostObject();
  v14 = [objc_allocWithZone(v13) init];
  *(v5 + 176) = 1953722216;
  *(v5 + 184) = 0xE400000000000000;
  *(v5 + 192) = v14;
  *(v5 + 216) = 1;
  v15 = type metadata accessor for JSRandomObject();
  v16 = [objc_allocWithZone(v15) init];
  *(v5 + 224) = 0x6D6F646E6172;
  *(v5 + 232) = 0xE600000000000000;
  *(v5 + 240) = v16;
  *(v5 + 264) = 1;
  v17 = [objc_allocWithZone(v6) init];
  strcpy((v5 + 272), "cryptography");
  *(v5 + 285) = 0;
  *(v5 + 286) = -5120;
  *(v5 + 288) = v17;
  *(v5 + 312) = 3;
  v18 = [objc_allocWithZone(v9) init];
  *(v5 + 320) = 0x796669746F6ELL;
  *(v5 + 328) = 0xE600000000000000;
  *(v5 + 336) = v18;
  *(v5 + 360) = 3;
  v19 = [objc_allocWithZone(v11) init];
  *(v5 + 368) = 0x7473696C70;
  *(v5 + 376) = 0xE500000000000000;
  *(v5 + 384) = v19;
  *(v5 + 408) = 3;
  v20 = [objc_allocWithZone(v13) init];
  *(v5 + 416) = 1953722216;
  *(v5 + 424) = 0xE400000000000000;
  *(v5 + 432) = v20;
  *(v5 + 456) = 3;
  v21 = [objc_allocWithZone(v15) init];
  *(v5 + 464) = 0x6D6F646E6172;
  *(v5 + 472) = 0xE600000000000000;
  *(v5 + 480) = v21;
  *(v5 + 504) = 3;
  strcpy((v5 + 512), "exportService");
  *(v5 + 526) = -4864;
  *(v5 + 528) = sub_1AB0538FC;
  *(v5 + 536) = 0;
  *(v5 + 552) = 2;
  *(v5 + 560) = 0xD000000000000010;
  *(v5 + 568) = 0x80000001AB5049C0;
  *(v5 + 576) = sub_1AB3D2DA0;
  *(v5 + 584) = 0;
  *(v5 + 600) = 2;
  if (v82)
  {
    v22 = type metadata accessor for JSBagObject();
    v23 = objc_allocWithZone(v22);
    *&v23[OBJC_IVAR____TtC9JetEngine11JSBagObject_bag] = v82;
    v93.receiver = v23;
    v93.super_class = v22;
    swift_unknownObjectRetain_n();
    v24 = objc_msgSendSuper2(&v93, sel_init);
    v5 = sub_1AB046EE0(1, 13, 1, v5);
    *(v5 + 16) = 13;
    *(v5 + 608) = 6775138;
    *(v5 + 616) = 0xE300000000000000;
    *(v5 + 624) = v24;
    *(v5 + 648) = 1;
    v25 = *(v5 + 24);
    v26 = v24;
    if (v25 <= 0x1B)
    {
      v5 = sub_1AB046EE0((v25 > 1), 14, 1, v5);
    }

    *(v5 + 16) = 14;
    *(v5 + 656) = 6775138;
    *(v5 + 664) = 0xE300000000000000;
    *(v5 + 672) = v26;
    *(v5 + 696) = 3;
    if (a3 && a4)
    {
      sub_1AB014A58(a5, &v91, &qword_1EB438A70);
      if (v92)
      {
        sub_1AB0149B0(&v91, &v95);
        v88[0] = v75;
        v88[1] = v74;
        v89 = v77;
        v90 = v76;
        v87 = v82;
        sub_1AB01494C(&v95, v86);
        v27 = a3;
        v28 = a4;
        swift_unknownObjectRetain();
        v29 = v27;
        v30 = v28;
        sub_1AB04B604(v77);
        v81 = v29;
        sub_1AB095C08(v29, v88, &v87, v86, v30, &v91);
        sub_1AB01494C(&v91, v86);
        v31 = type metadata accessor for JSNetObject();
        v32 = objc_allocWithZone(v31);
        sub_1AB01494C(v86, v32 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
        v85.receiver = v32;
        v85.super_class = v31;
        v33 = objc_msgSendSuper2(&v85, sel_init);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        sub_1AB096838(&v91);
        v34 = type metadata accessor for JSPlatformObject();
        v35 = objc_allocWithZone(v34);
        *&v35[OBJC_IVAR____TtC9JetEngine16JSPlatformObject_bag] = v82;
        *&v35[OBJC_IVAR____TtC9JetEngine16JSPlatformObject_process] = v30;
        v84.receiver = v35;
        v84.super_class = v34;
        swift_unknownObjectRetain();
        v79 = v30;
        v36 = objc_msgSendSuper2(&v84, sel_init);
        v38 = *(v5 + 16);
        v37 = *(v5 + 24);
        v39 = v38 + 1;
        v40 = v33;
        if (v38 >= v37 >> 1)
        {
          v70 = v37 > 1;
          v71 = v40;
          v5 = sub_1AB046EE0(v70, v38 + 1, 1, v5);
          v40 = v71;
        }

        *(v5 + 16) = v39;
        v41 = v5 + 48 * v38;
        *(v41 + 32) = 7628142;
        *(v41 + 40) = 0xE300000000000000;
        *(v41 + 48) = v40;
        *(v41 + 56) = v91;
        *(v41 + 72) = 1;
        v42 = *(v5 + 24);
        v43 = v38 + 2;
        v44 = v40;
        if ((v38 + 2) > (v42 >> 1))
        {
          v5 = sub_1AB046EE0((v42 > 1), v38 + 2, 1, v5);
        }

        *(v5 + 16) = v43;
        v45 = v5 + 48 * v39;
        *(v45 + 32) = 7628142;
        *(v45 + 40) = 0xE300000000000000;
        *(v45 + 48) = v44;
        *(v45 + 56) = v91;
        *(v45 + 72) = 3;
        v46 = *(v5 + 24);
        v47 = v38 + 3;
        v48 = v36;
        if ((v38 + 3) > (v46 >> 1))
        {
          v72 = v46 > 1;
          v73 = v48;
          v5 = sub_1AB046EE0(v72, v38 + 3, 1, v5);
          v48 = v73;
        }

        *(v5 + 16) = v47;
        v49 = v5 + 48 * v43;
        *(v49 + 32) = 0x6D726F6674616C70;
        *(v49 + 40) = 0xE800000000000000;
        *(v49 + 48) = v48;
        *(v49 + 56) = v91;
        *(v49 + 72) = 1;
        v50 = *(v5 + 24);
        v51 = v48;
        if ((v38 + 4) > (v50 >> 1))
        {
          v5 = sub_1AB046EE0((v50 > 1), v38 + 4, 1, v5);
        }

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1Tm(&v95);
        *(v5 + 16) = v38 + 4;
        v52 = v5 + 48 * v47;
        *(v52 + 32) = 0x6D726F6674616C70;
        *(v52 + 40) = 0xE800000000000000;
        *(v52 + 48) = v51;
        *(v52 + 56) = v91;
        *(v52 + 72) = 3;
        v7 = &unk_1E794B000;
      }

      else
      {
        swift_unknownObjectRelease();

        sub_1AB014AC0(&v91, &qword_1EB438A70);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EB433A58 != -1)
    {
      swift_once();
    }

    v53 = qword_1EB46C108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1AB4D4720;
    v92 = MEMORY[0x1E69E6158];
    *&v91 = 0xD000000000000033;
    *(&v91 + 1) = 0x80000001AB5049E0;
    *(v55 + 48) = 0u;
    *(v55 + 32) = 0u;
    sub_1AB0169C4(&v91, v55 + 32);
    *(v55 + 64) = 0;
    *(v54 + 32) = v55;
    *&v91 = v53;
    LOBYTE(v95) = 3;
    OSLogger.log(contentsOf:withLevel:)(v54, &v95);
  }

  sub_1AB014A58(a5, &v95, &qword_1EB438A70);
  if (v96)
  {
    sub_1AB0149B0(&v95, &v91);
    sub_1AB01494C(&v91, &v95);
    v56 = type metadata accessor for JSCookieProviderObject();
    v57 = objc_allocWithZone(v56);
    sub_1AB01494C(&v95, v57 + OBJC_IVAR____TtC9JetEngine22JSCookieProviderObject_accountProvider);
    v94.receiver = v57;
    v94.super_class = v56;
    v58 = objc_msgSendSuper2(&v94, v7[370]);
    __swift_destroy_boxed_opaque_existential_1Tm(&v95);
    v59 = *(v5 + 16);
    v60 = *(v5 + 24);
    v61 = v59 + 1;
    v62 = v58;
    if (v59 >= v60 >> 1)
    {
      v69 = v62;
      v5 = sub_1AB046EE0((v60 > 1), v59 + 1, 1, v5);
      v62 = v69;
    }

    *(v5 + 16) = v61;
    v63 = v5 + 48 * v59;
    strcpy((v63 + 32), "cookieProvider");
    *(v63 + 47) = -18;
    *(v63 + 48) = v62;
    *(v63 + 56) = v95;
    *(v63 + 72) = 1;
    v64 = *(v5 + 24);
    v65 = v59 + 2;
    v66 = v62;
    if (v65 > (v64 >> 1))
    {
      v5 = sub_1AB046EE0((v64 > 1), v65, 1, v5);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v91);
    *(v5 + 16) = v65;
    v67 = v5 + 48 * v61;
    strcpy((v67 + 32), "cookieProvider");
    *(v67 + 47) = -18;
    *(v67 + 48) = v66;
    *(v67 + 56) = v95;
    *(v67 + 72) = 3;
  }

  else
  {
    sub_1AB014AC0(&v95, &qword_1EB438A70);
  }

  return v5;
}

uint64_t sub_1AB04B604(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AB04B614()
{
  v1 = v0;
  v31 = *MEMORY[0x1E69E9840];
  v2 = sub_1AB4601B4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1AB4601F4();
  v25 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CFRunLoopGetCurrent();
  context.version = 0;
  context.info = v1;
  memset(&context.retain, 0, 56);
  context.perform = sub_1AB049ACC;
  v8 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  v9 = *MEMORY[0x1E695E8E0];
  CFRunLoopAddSource(v7, v8, *MEMORY[0x1E695E8E0]);
  v10 = v1[4];
  [v10 lock];
  v11 = v1[5];
  v1[5] = v7;
  v24 = v7;

  v12 = v1[6];
  v1[6] = v8;
  v23 = v8;

  [v10 unlock];
  v13 = sub_1AB04BA80();
  do
  {
    v14 = MEMORY[0x1AC59DDE0](v13);
    v15 = CFRunLoopRunInMode(v9, 1.0e10, 1u);
    objc_autoreleasePoolPop(v14);
  }

  while ((v15 - 1) > 1);
  [v10 lock];
  v16 = v1[5];
  v1[5] = 0;

  v17 = v1[6];
  v1[6] = 0;

  swift_beginAccess();
  v18 = MEMORY[0x1E69E7CC0];
  v1[7] = MEMORY[0x1E69E7CC0];

  [v10 unlock];
  sub_1AB016760(0, &qword_1ED4D2060);
  v19 = sub_1AB461124();
  aBlock[4] = sub_1AB444D38;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_28;
  v20 = _Block_copy(aBlock);

  _s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v28 = v18;
  sub_1AB0499A0(&qword_1ED4D2050, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438540);
  sub_1AB01649C();
  sub_1AB4614E4();
  MEMORY[0x1AC59C480](0, v6, v4, v20);
  _Block_release(v20);

  (*(v27 + 8))(v4, v2);
  (*(v25 + 8))(v6, v26);
}

id sub_1AB04BA80()
{
  v1 = *(v0 + 32);
  [v1 lock];
  swift_beginAccess();
  v2 = *(v0 + 56);
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  result = [v1 unlock];
  v4 = *(v2 + 16);
  if (!v4)
  {
  }

  if (v4 == 1)
  {
    v5 = *(v2 + 32);

    v5(v6);
  }

  else
  {
    v7 = 0;
    v8 = v2 + 40;
    while (v7 < *(v2 + 16))
    {
      ++v7;
      v9 = *(v8 - 8);

      v11 = MEMORY[0x1AC59DDE0](v10);
      v9();
      objc_autoreleasePoolPop(v11);

      v8 += 16;
      if (v4 == v7)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DiskJetPackResourceBundle.fileURL(atPath:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *a1;
  v12 = *(v2 + 8);
  v20 = *(v5 + 16);
  v21 = v12;
  v19 = OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url;
  v20(&v18 - v9, v12 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v4);
  if (*(v11 + 16))
  {
    v24 = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    sub_1AB04E498();
    sub_1AB460484();
  }

  sub_1AB45F664();

  v13 = *(v5 + 8);
  v13(v10, v4);
  v20(v8, v21 + v19, v4);
  v14 = v22;
  v15 = sub_1AB04BE00();
  if (v14)
  {
    v13(v8, v4);
  }

  else
  {
    v16 = v15;
    result = (v13)(v8, v4);
    if (v16)
    {
      return result;
    }

    sub_1AB2C835C();
    swift_allocError();
    swift_willThrow();
  }

  return (v13)(v23, v4);
}

uint64_t sub_1AB04BE00()
{
  v2 = sub_1AB45F764();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v22 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v22 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  sub_1AB45F5F4();
  sub_1AB020AE0(v14);
  if (v1)
  {
    (*(v3 + 8))(v12, v2);
  }

  else
  {
    v22[1] = v0;
    v15 = *(v3 + 8);
    v15(v12, v2);
    v16 = sub_1AB45F624();
    v15(v14, v2);
    sub_1AB45F5F4();
    sub_1AB020AE0(v9);
    v15(v6, v2);
    v17 = sub_1AB45F624();
    v15(v9, v2);
    v18 = *(v16 + 16);
    if (*(v17 + 16) >= v18)
    {
      if (v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = *(v16 + v19 + 32) == *(v17 + v19 + 32) && *(v16 + v19 + 40) == *(v17 + v19 + 40);
          if (!v20 && (sub_1AB461DA4() & 1) == 0)
          {
            break;
          }

          v19 += 16;
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        LOBYTE(v2) = 0;
      }

      else
      {
LABEL_14:
        LOBYTE(v2) = 1;
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1AB04C09C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  type metadata accessor for DiskJetPackResourceBundle();
  v7 = swift_projectBox();
  v8 = [a3 readData];
  v9 = sub_1AB45F854();
  v11 = v10;

  swift_beginAccess();

  sub_1AB017200(v9, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41[0] = *v7;
  *v7 = 0x8000000000000000;
  sub_1AB021CCC(v9, v11, a1, a2, isUniquelyReferenced_nonNull_native);

  *v7 = v41[0];
  swift_endAccess();
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {
    sub_1AB460594();
    v13 = sub_1AB460564();
    v15 = v14;
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED4D1D98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AB4D4720;
    v42 = sub_1AB0168A8(0, 28, 0, MEMORY[0x1E69E7CC0]);
    v18._object = 0x80000001AB50AC20;
    v18._countAndFlagsBits = 0xD00000000000001BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    if (v15)
    {
      v19 = MEMORY[0x1E69E6158];
    }

    else
    {
      v13 = 0;
      v19 = 0;
      v41[2] = 0;
    }

    v41[0] = v13;
    v41[1] = v15;
    v41[3] = v19;
    sub_1AB014A58(v41, v37, &unk_1EB437E60);
    v38 = 0u;
    v39 = 0u;
    sub_1AB0169C4(v37, &v38);
    v40 = 0;
    v20 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AB0168A8(0, *(v20 + 2) + 1, 1, v20);
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1AB0168A8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v24 = v38;
    v25 = v39;
    v23[64] = v40;
    *(v23 + 2) = v24;
    *(v23 + 3) = v25;
    v42 = v20;
    sub_1AB014AC0(v41, &unk_1EB437E60);
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v26);
    *(v17 + 32) = v42;
    v27 = sub_1AB461094();
    if (os_log_type_enabled(v16, v27))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v28 = MEMORY[0x1E69E6158];
      v29 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v29 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v31 = swift_allocObject();
      *(v31 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v38 = v17;
      *(&v38 + 1) = sub_1AB01A8D8;
      *&v39 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v32 = sub_1AB460484();
      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1AB4D4720;
      *(v35 + 56) = v28;
      *(v35 + 64) = sub_1AB016854();
      *(v35 + 32) = v32;
      *(v35 + 40) = v34;
      sub_1AB45FF14();
    }
  }

  sub_1AB017254(v9, v11);
  return 1;
}

uint64_t sub_1AB04C5BC(uint64_t a1, void (*a2)(void))
{
  os_unfair_lock_lock((a1 + 24));

  a2();
  os_unfair_lock_unlock((a1 + 24));
  return sub_1AB461264();
}

void sub_1AB04C638(uint64_t a1@<X2>, void *a2@<X8>)
{
  MEMORY[0x1AC59BA20]();
  v4 = [objc_allocWithZone(MEMORY[0x1E696EB40]) initWithVirtualMachine_];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_1AB460514();

  [v5 setName_];

  [v5 setInspectable_];
  v7 = [v5 globalObject];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v5 globalObject];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  v11 = sub_1AB460514();
  [v8 setValue:v10 forProperty:v11];

  v12 = [v5 globalObject];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v38 = a2;
  v14 = sub_1AB460514();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D9850;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v16;
  v17 = [objc_opt_self() valueWithNewObjectInContext_];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  *(inited + 72) = sub_1AB016760(0, &qword_1ED4D1B98);
  *(inited + 48) = v18;
  v19 = sub_1AB460544();
  v20 = MEMORY[0x1E69E6370];
  *(inited + 80) = v19;
  *(inited + 88) = v21;
  *(inited + 120) = v20;
  *(inited + 96) = 0;
  *(inited + 128) = sub_1AB460544();
  *(inited + 136) = v22;
  *(inited + 168) = v20;
  *(inited + 144) = 0;
  *(inited + 176) = sub_1AB460544();
  *(inited + 184) = v23;
  *(inited + 216) = v20;
  *(inited + 192) = 0;
  sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
  swift_arrayDestroy();
  v24 = sub_1AB4602D4();

  [v13 defineProperty:v14 descriptor:v24];

  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v25 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v25 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_14:
    *v38 = v5;
    return;
  }

  v27 = [v5 globalObject];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1AB460514();
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1AB4D9850;
    *(v30 + 32) = sub_1AB460544();
    *(v30 + 40) = v31;
    v32 = type metadata accessor for JSDebugObject();
    v33 = [objc_allocWithZone(v32) init];
    *(v30 + 72) = v32;
    *(v30 + 48) = v33;
    *(v30 + 80) = sub_1AB460544();
    *(v30 + 88) = v34;
    *(v30 + 120) = v20;
    *(v30 + 96) = 0;
    *(v30 + 128) = sub_1AB460544();
    *(v30 + 136) = v35;
    *(v30 + 168) = v20;
    *(v30 + 144) = 0;
    *(v30 + 176) = sub_1AB460544();
    *(v30 + 184) = v36;
    *(v30 + 216) = v20;
    *(v30 + 192) = 0;
    sub_1AB01B220(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    v37 = sub_1AB4602D4();

    [v28 defineProperty:v29 descriptor:v37];

    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

id sub_1AB04CB5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0);
  v3 = sub_1AB4609B4();
  *(v3 + 16) = 256;
  bzero((v3 + 32), 0x1000uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8D8);
  v4 = swift_allocObject();
  *(v4 + 32) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *&v1[OBJC_IVAR____TtC9JetEngine13JSDebugObject_newPoints] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438578);
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 0;
  *&v1[OBJC_IVAR____TtC9JetEngine13JSDebugObject_isDebugPointsEnabled] = v5;
  sub_1AB45F194();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9JetEngine13JSDebugObject_encoder] = sub_1AB45F184();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1AB04CC98(uint64_t result, unsigned int a2)
{
  if (a2 > 5)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

void JSStack.init(prerequisites:sentryConfiguration:virtualMachine:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v56 = *v3;
  v3[25] = 0;
  v3[26] = 0;
  v8 = objc_opt_self();
  v9 = sub_1AB460514();
  LODWORD(v8) = [v8 BOOLForEntitlement_];

  if (v8)
  {
    sub_1AB461084();
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    sub_1AB45FF24();
  }

  v57 = a1;
  v10 = MEMORY[0x1E69E7CC0];
  v4[5] = MEMORY[0x1E69E7CC0];
  v55 = a2;
  sub_1AB014A58(a2, (v4 + 6), &qword_1EB4389B0);
  type metadata accessor for RunLoopWorkerThread();
  v11 = swift_allocObject();
  v11[5] = 0;
  v11[6] = 0;
  v11[2] = 0xD00000000000001BLL;
  v11[3] = 0x80000001AB504040;
  v11[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v11[7] = v10;
  v4[3] = v11;

  sub_1AB048280(25, 0);

  v12 = v4[3];
  v13 = swift_allocObject();
  v13[2] = 0x747865746E6F63;
  v13[3] = 0xE700000000000000;
  v13[4] = a3;
  v14 = *(v12 + 32);
  v60 = a3;

  [v14 lock];
  v15 = CFRunLoopGetCurrent();
  v16 = *(v12 + 40);
  v17 = &unk_1E794B000;
  if (v15)
  {
    v18 = v15;
    if (v16)
    {
      type metadata accessor for CFRunLoop(0);
      sub_1AB049958(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
      v19 = v16;
      v17 = &unk_1E794B000;
      v20 = sub_1AB45FC14();

      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_10:
      [v14 v17[457]];
      v21 = v60;
      sub_1AB04C638(v60, v58);

      v22 = v58[0];
      goto LABEL_14;
    }
  }

  else if (!v16)
  {
    goto LABEL_10;
  }

LABEL_12:
  [v14 v17[457]];
  v23 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389B8);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = 0;
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = sub_1AB04C634;
  v25[4] = v13;
  v25[5] = v23;

  v26 = v23;
  sub_1AB0484A4(sub_1AB04C5B8, v25);

  sub_1AB461254();
  os_unfair_lock_lock((v24 + 24));
  v27 = *(v24 + 16);
  v22 = v27;
  os_unfair_lock_unlock((v24 + 24));
  if (!v27)
  {

    __break(1u);
    goto LABEL_38;
  }

LABEL_14:
  v4[4] = v22;
  v28 = type metadata accessor for NoOpIntentCache();
  v29 = swift_allocObject();
  v4[24] = v28;
  v4[21] = v29;
  v30 = sub_1AB050708(v57);
  v31 = type metadata accessor for JSLazyProvider();
  v32 = objc_allocWithZone(v31);
  swift_unknownObjectWeakInit();
  *&v32[OBJC_IVAR____TtC9JetEngine14JSLazyProvider_lazyDependencies] = v30;
  swift_unknownObjectWeakAssign();
  v59.receiver = v32;
  v59.super_class = v31;
  v4[2] = objc_msgSendSuper2(&v59, sel_init);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v33 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v33[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v33 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_23:
    v4[20] = 0;
    goto LABEL_25;
  }

  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if (byte_1EB435998)
  {
    goto LABEL_23;
  }

  type metadata accessor for TracingSupport();
  v35 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389C8);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v35 + 16) = v36;
  v4[20] = v35;
  v37 = v4[4];
  sub_1AB050AB8(v57, v58);
  sub_1AB049B10(v37, v58);
  sub_1AB014AC0(v58, &qword_1EB4389D0);
LABEL_25:
  v38 = v4[3];
  v39 = swift_allocObject();
  v39[2] = v4;
  v39[3] = v57;
  v39[4] = v56;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1AB093AB8;
  *(v40 + 24) = v39;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1AB0522BC;
  *(v41 + 24) = v40;
  v42 = *(v38 + 32);
  swift_retain_n();

  [v42 lock];
  v43 = CFRunLoopGetCurrent();
  v44 = *(v38 + 40);
  if (!v43)
  {
    if (v44)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v45 = v43;
  if (!v44)
  {

    goto LABEL_33;
  }

  type metadata accessor for CFRunLoop(0);
  sub_1AB049958(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
  v46 = v44;
  v47 = sub_1AB45FC14();

  if (v47)
  {
LABEL_30:
    [v42 unlock];
    sub_1AB0522BC();

    if (v54)
    {
LABEL_35:
      swift_willThrow();

      sub_1AB44411C();
      swift_willThrow();

      sub_1AB014AC0(v55, &qword_1EB4389B0);

      return;
    }

    v48 = v58[0];
    goto LABEL_36;
  }

LABEL_33:

  [v42 unlock];
  v49 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389C0);
  v50 = swift_allocObject();
  *(v50 + 28) = 0;
  *(v50 + 16) = 0;
  *(v50 + 24) = -1;
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = sub_1AB05225C;
  v51[4] = v41;
  v51[5] = v49;

  v52 = v49;
  sub_1AB0484A4(sub_1AB0521CC, v51);

  sub_1AB461254();
  os_unfair_lock_lock((v50 + 28));
  v48 = *(v50 + 16);
  v53 = *(v50 + 24);
  sub_1AB053C7C(v48, *(v50 + 24));
  os_unfair_lock_unlock((v50 + 28));
  if (v53 != 255)
  {

    if (v53)
    {
      goto LABEL_35;
    }

LABEL_36:

    sub_1AB04E6E4(v48, 0);

    sub_1AB014AC0(v55, &qword_1EB4389B0);
    return;
  }

LABEL_38:
  __break(1u);
}

uint64_t sub_1AB04D60C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB04D66C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1AB45F764() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  return sub_1AB04D74C(a1, v2 + 16, v2 + v6, *(v2 + v6 + *(v5 + 64)), v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8, a2);
}

uint64_t sub_1AB04D74C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  LODWORD(v74) = a4;
  v76 = a3;
  v65 = a6;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v73 = type metadata accessor for DiskJetPackResourceBundle();
  MEMORY[0x1EEE9AC00](v73);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB45F764();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v65 - v21;
  v68 = *a1;
  sub_1AB01494C(a2, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B7A0);
  v23 = swift_dynamicCast();
  v66 = v6;
  v75 = v10;
  v71 = v16;
  if (v23)
  {
    v25 = *(&v80 + 1);
    v24 = *v81;
    __swift_project_boxed_opaque_existential_1Tm(&v79, *(&v80 + 1));
    (*(v24 + 8))(v25, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(&v79);
  }

  else
  {
    *v81 = 0;
    v79 = 0u;
    v80 = 0u;
    sub_1AB014AC0(&v79, &qword_1EB43B7A8);
    (*(v12 + 56))(v22, 1, 1, v11);
  }

  v26 = v22;
  v27 = v12;
  v70 = v12;
  v28 = v73;
  v77 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 16);
  v67 = v27 + 16;
  v32 = v71;
  v31(v71, v76, v11);
  v78 = v31;
  v33 = v11;
  v76 = v26;
  sub_1AB014A58(v26, v20, &unk_1EB4395B0);
  *v30 = sub_1AB021978(MEMORY[0x1E69E7CC0]);
  sub_1AB014A58(v20, v30 + v28[6], &unk_1EB4395B0);
  v34 = v72;
  v31(v72, v32, v11);
  type metadata accessor for JetPackResourceBundleDiskLocation();
  swift_allocObject();
  v35 = sub_1AB04E15C(v34, v74 & 1);
  v36 = v70;
  sub_1AB014AC0(v20, &unk_1EB4395B0);
  v37 = *(v36 + 8);
  v37(v32, v33);
  *(v30 + 8) = v35;
  v73 = objc_opt_self();
  v38 = [v73 defaultManager];
  v74 = v30;
  v39 = v75;
  sub_1AB04E424(v30, v75);
  v78(v32, *(v39 + 8) + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v33);
  sub_1AB04A5F4(v39);
  sub_1AB45F6F4();
  v37(v32, v33);
  v40 = sub_1AB460514();

  LOBYTE(v30) = [v38 fileExistsAtPath_];

  if ((v30 & 1) == 0)
  {
    v41 = [v73 defaultManager];
    sub_1AB04E424(v74, v39);
    v78(v32, *(v39 + 8) + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v33);
    sub_1AB04A5F4(v39);
    v42 = sub_1AB45F654();
    v37(v32, v33);
    *&v79 = 0;
    v43 = [v41 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:&v79];

    if (!v43)
    {
      v64 = v79;
      sub_1AB45F594();

      swift_willThrow();
      goto LABEL_21;
    }

    v44 = v79;
  }

  v45 = [objc_allocWithZone(MEMORY[0x1E69AB848]) init];
  v46 = v69;
  sub_1AB03FFF8(v69, &v79);
  v47 = swift_allocObject();
  v48 = v80;
  *(v47 + 16) = v79;
  *(v47 + 32) = v48;
  *(v47 + 48) = *v81;
  *(v47 + 64) = *&v81[16];
  aBlock[4] = sub_1AB03C7D8;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB03C67C;
  aBlock[3] = &block_descriptor_35;
  v49 = _Block_copy(aBlock);

  [v45 setKeyForIdentifier_];
  _Block_release(v49);
  v50 = v77;
  *v81 = sub_1AB04F568;
  *&v81[8] = v77;
  *&v79 = MEMORY[0x1E69E9820];
  *(&v79 + 1) = 1107296256;
  *&v80 = sub_1AB03C264;
  *(&v80 + 1) = &block_descriptor_33_0;
  v51 = _Block_copy(&v79);

  [v45 setFileEntryFound_];
  _Block_release(v51);
  *v81 = sub_1AB04C094;
  *&v81[8] = v50;
  *&v79 = MEMORY[0x1E69E9820];
  *(&v79 + 1) = 1107296256;
  *&v80 = sub_1AB021C48;
  *(&v80 + 1) = &block_descriptor_36_0;
  v52 = _Block_copy(&v79);

  [v45 setDataSegmentFound_];
  _Block_release(v52);
  v53 = *(v46 + 8);
  if ((v53 & 0x3000000000000000) == 0x2000000000000000 && v53 == 0x2000000000000000 && *v46 == 2)
  {
    v54 = xmmword_1AB4E32F0;
  }

  else
  {
    v83 = 0;
    v82 = 0u;
    *&v81[8] = 0u;
    *(&v80 + 1) = &type metadata for DefaultCoreAnalyticsLoggerProvider;
    *v81 = &protocol witness table for DefaultCoreAnalyticsLoggerProvider;
    sub_1AB3A2940();
    sub_1AB360680(&v79);
    v54 = *v46;
  }

  v79 = v54;
  v55 = sub_1AB021B20();
  v56 = *(v46 + 8);
  v57 = (v56 >> 60) & 3;
  v58 = !v57 || v57 != 1 && !(*v46 & 0xFFFFFFFFFFFFFFFELL | v56 ^ 0x2000000000000000);
  aBlock[0] = 0;
  v59 = [v45 processStream:v68 signatureVerifier:v55 options:v58 error:{aBlock, v65}];

  if (v59)
  {
    v60 = aBlock[0];
    sub_1AB014AC0(v76, &unk_1EB4395B0);

    v61 = v74;
    swift_beginAccess();
    sub_1AB04E424(v61, v65);
  }

  v63 = aBlock[0];
  sub_1AB45F594();

  swift_willThrow();
LABEL_21:
  sub_1AB014AC0(v76, &unk_1EB4395B0);
}

uint64_t sub_1AB04E0C8()
{
  sub_1AB021B04(v0[2], v0[3]);
  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t type metadata accessor for JetPackResourceBundleDiskLocation()
{
  result = qword_1EB434DE0;
  if (!qword_1EB434DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB04E15C(char *a1, int a2)
{
  v23 = a2;
  v3 = sub_1AB45F9E4();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v20 = &v19 - v14;
  if (qword_1EB434DF8 != -1)
  {
    swift_once();
  }

  sub_1AB45F664();
  sub_1AB45F664();
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1AB45F9D4();
  sub_1AB45F9C4();
  (*(v21 + 8))(v5, v22);
  v16 = v20;
  sub_1AB45F664();

  v15(a1, v6);
  v15(v13, v6);
  v17 = v24;
  (*(v7 + 32))(v24 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v16, v6);
  *(v17 + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_automaticallyCleanUp) = v23 & 1;
  return v17;
}

uint64_t sub_1AB04E424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiskJetPackResourceBundle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB04E498()
{
  result = qword_1ED4D21F0;
  if (!qword_1ED4D21F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4366C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D21F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13AMSURLRequestCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

char *Promise.join<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Promise();
  v8 = Promise.__allocating_init()();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = v8;
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v8;
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  swift_retain_n();
  swift_unknownObjectRetain();
  Promise.then(perform:orCatchError:on:)(sub_1AB05027C, v9, sub_1AB1821B8, v10, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v8;
}

uint64_t sub_1AB04E6A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1AB04E6E4(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_1AB04E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v6 = *(a3 + 16);
  *(v3 + 32) = *a3;
  *(v3 + 48) = v6;
  *(v3 + 96) = *(a3 + 32);
  *(v3 + 64) = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AB04E7C4();
  v7 = swift_task_alloc();
  *(v3 + 72) = v7;
  *v7 = v3;
  v7[1] = sub_1AB0874E0;

  return static NSURLSessionConfiguration.appleServices(forProcess:withBag:)(a1, a2);
}

unint64_t sub_1AB04E7C4()
{
  result = qword_1EB435620;
  if (!qword_1EB435620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB435620);
  }

  return result;
}

uint64_t static NSURLSessionConfiguration.appleServices(forProcess:withBag:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436D20);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB04E8E0, 0, 0);
}

uint64_t sub_1AB04E8E0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 27;
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v8 = v1[19];
  v9 = v1[18];
  v10 = [swift_getObjCClassFromMetadata() defaultSessionConfiguration];
  v1[24] = v10;
  v11 = [v10 ams:v9 configureWithClientInfo:v8 bag:?];
  v1[25] = v11;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1AB08735C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  sub_1AB460AF4();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1AB087608;
  v1[13] = &block_descriptor_4;
  [v11 resultWithCompletion_];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v2);
}

void *sub_1AB04EAD8@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = [*v5 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = swift_allocObject();
  result[2] = v9;
  result[3] = a4;
  result[4] = 0;
  *a5 = result;
  return result;
}

uint64_t sub_1AB04EB88@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x1EEE9AC00])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_1AB04EE30@<X0>(uint64_t a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v1[2];
  v17[0] = 0;
  v5 = v3;
  v6 = [v4 valueWithError_];
  v7 = v17[0];
  if (v6)
  {
    v17[0] = v6;
    MEMORY[0x1EEE9AC00](v6);
    v8 = *(v5 + 112);
    v9 = *(v5 + 120);
    v15[2] = v8;
    v15[3] = v9;
    v16 = v10;
    sub_1AB461354();
    v11 = v7;
    sub_1AB04EB88(sub_1AB04EB54, v15, MEMORY[0x1E69E73E0], v9, v12, a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = v17[0];
    sub_1AB45F594();

    return swift_willThrow();
  }
}

uint64_t InMemoryJetPackResourceBundle.inMemorySource(fromPath:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - v13;
  v15 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = *a1;
  v17 = *v3;
  if (*(*v3 + 16) && (v18 = sub_1AB059C08(v16), (v19 & 1) != 0))
  {
    v44 = v9;
    v20 = (*(v17 + 56) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    sub_1AB017200(*v20, v22);
    sub_1AB460594();
    v23 = sub_1AB460564();
    if (v24)
    {
      v41 = v24;
      v42 = v23;
      v25 = type metadata accessor for InMemoryJetPackResourceBundle();
      sub_1AB03BC60(v3 + *(v25 + 24), v12);
      v26 = sub_1AB45F764();
      v27 = *(v26 - 8);
      v28 = (*(v27 + 48))(v12, 1, v26);
      v43 = v21;
      if (v28 == 1)
      {
        sub_1AB03BCD0(v12);
        v29 = 1;
        v30 = v22;
      }

      else
      {
        v40 = a2;
        if (*(v16 + 16))
        {
          v45 = v16;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
          sub_1AB04E498();
          sub_1AB460484();
        }

        v30 = v22;
        sub_1AB45F664();

        (*(v27 + 8))(v12, v26);
        v29 = 0;
        a2 = v40;
      }

      v33 = v44;
      v34 = *(v27 + 56);
      v34(v14, v29, 1, v26);
      sub_1AB03BC60(v14, v33);
      v35 = type metadata accessor for JSSource();
      a2[3] = v35;
      a2[4] = &protocol witness table for JSSource;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
      v37 = *(v35 + 20);
      v34(boxed_opaque_existential_0 + v37, 1, 1, v26);
      v38 = v41;
      *boxed_opaque_existential_0 = v42;
      boxed_opaque_existential_0[1] = v38;
      sub_1AB04F3C8(v33, boxed_opaque_existential_0 + v37);
      sub_1AB017254(v43, v30);
      return sub_1AB03BCD0(v14);
    }

    else
    {
      sub_1AB2C83B0();
      swift_allocError();
      swift_willThrow();
      return sub_1AB017254(v21, v22);
    }
  }

  else
  {
    sub_1AB3C8A80();
    swift_allocError();
    *v31 = v16;
    swift_willThrow();
  }
}

uint64_t type metadata accessor for JSSource()
{
  result = qword_1EB435690;
  if (!qword_1EB435690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AB04F3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t JetPackResourceBundle.version.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = (*(a2 + 8))(0x6E6F6973726576, 0xE700000000000000, a1, a2);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;
  sub_1AB460594();
  v10 = sub_1AB460564();
  sub_1AB03BD58(v8, v9);
  return v10;
}

uint64_t sub_1AB04F570(void *a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DiskJetPackResourceBundle();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  swift_beginAccess();
  sub_1AB04E424(v11, v10);
  (*(v5 + 16))(v7, *(v10 + 1) + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url, v4);
  sub_1AB04A5F4(v10);
  sub_1AB45F6F4();
  (*(v5 + 8))(v7, v4);
  v12 = sub_1AB460514();

  v18[0] = 0;
  LODWORD(a1) = [a1 writeStream:a2 toDirectory:v12 error:v18];

  if (a1)
  {
    v13 = v18[0];
  }

  else
  {
    v14 = v18[0];
    v15 = sub_1AB45F594();

    swift_willThrow();
  }

  return 1;
}

uint64_t static JetPackPath.sourcePath.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ED4D0AE0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED4D0AE8;
}

uint64_t DiskJetPackResourceBundle.memoryMappedSource(atPath:virtualMachine:cacheURL:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v86 = a1;
  v82 = a3;
  v83 = a2;
  v78 = a4;
  v88[1] = *MEMORY[0x1E69E9840];
  v77 = type metadata accessor for JSBytecodeSource(0);
  v5 = MEMORY[0x1EEE9AC00](v77);
  v85 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v84 = &v67 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  v21 = sub_1AB45F764();
  v80 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v67 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v67 - v28;
  v30 = v87;
  v31 = *v86;
  v88[0] = *v86;
  result = DiskJetPackResourceBundle.fileURL(atPath:)(v88, &v67 - v28);
  if (!v30)
  {
    v68 = v31;
    v71 = v15;
    v72 = v24;
    v86 = v20;
    v87 = v27;
    v76 = v29;
    v70 = 0;
    v69 = type metadata accessor for DiskJetPackResourceBundle();
    v33 = *(v69 + 24);
    v73 = v4;
    sub_1AB03BC60(v4 + v33, v18);
    v34 = v80;
    v74 = *(v80 + 48);
    v75 = v21;
    if (v74(v18, 1, v21) == 1)
    {
      sub_1AB03BCD0(v18);
      v35 = 1;
      v36 = v86;
      v37 = v87;
      v38 = v75;
    }

    else
    {
      v36 = v86;
      v37 = v87;
      if (v68[2])
      {
        v88[0] = v68;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
        sub_1AB04E498();
        sub_1AB460484();
      }

      sub_1AB45F664();

      v38 = v75;
      (*(v34 + 8))(v18, v75);
      v35 = 0;
    }

    (*(v34 + 56))(v36, v35, 1, v38);
    v39 = *(v34 + 16);
    v39(v37, v76, v38);
    v40 = v71;
    sub_1AB03BC60(v36, v71);
    v41 = v74;
    v42 = v38;
    if (v74(v40, 1, v38) == 1)
    {
      v43 = v72;
      v39(v72, (*(v73 + 8) + OBJC_IVAR____TtC9JetEngine33JetPackResourceBundleDiskLocation_url), v38);
      v44 = v41(v40, 1, v38);
      v45 = v84;
      if (v44 != 1)
      {
        sub_1AB03BCD0(v40);
      }
    }

    else
    {
      v43 = v72;
      (*(v34 + 32))(v72, v40, v38);
      v45 = v84;
    }

    sub_1AB03BC60(v82, v45);
    v39(v85, v87, v42);
    v46 = v81;
    sub_1AB03BC60(v45, v81);
    v47 = sub_1AB45F654();
    v48 = sub_1AB45F654();
    if (v74(v46, 1, v42) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = sub_1AB45F654();
      (*(v34 + 8))(v46, v42);
    }

    v50 = v83;
    v51 = objc_opt_self();
    v88[0] = 0;
    v52 = [v51 scriptOfType:0 memoryMappedFromASCIIFile:v47 withSourceURL:v48 andBytecodeCache:v49 inVirtualMachine:v50 error:v88];

    if (v52)
    {
      v53 = v88[0];
      sub_1AB03BCD0(v84);
      v54 = *(v34 + 8);
      v55 = v75;
      v54(v43, v75);
      v54(v87, v55);
      v56 = v77;
      v57 = v85;
      *&v85[*(v77 + 20)] = v52;
      *(v57 + *(v56 + 24)) = v50;
      v58 = v79;
      sub_1AB050024(v57, v79);
      v59 = v78;
      v78[3] = &type metadata for JSManagedSourceProvider;
      v59[4] = &off_1F1FFD5B0;
      v60 = swift_allocObject();
      *v59 = v60;
      v60[5] = v56;
      v60[6] = &protocol witness table for JSBytecodeSource;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60 + 2);
      sub_1AB050088(v58, boxed_opaque_existential_0, type metadata accessor for JSBytecodeSource);
      v60[10] = v69;
      v62 = __swift_allocate_boxed_opaque_existential_0(v60 + 7);
      sub_1AB050088(v73, v62, type metadata accessor for DiskJetPackResourceBundle);
      v63 = v50;
      sub_1AB0500F0(v58);
      sub_1AB03BCD0(v86);
      return (v54)(v76, v55);
    }

    else
    {
      v64 = v88[0];
      sub_1AB45F594();

      swift_willThrow();
      sub_1AB03BCD0(v84);
      v65 = *(v34 + 8);
      v66 = v75;
      v65(v43, v75);
      v65(v87, v66);
      sub_1AB03BCD0(v86);
      v65(v76, v66);
      return (v65)(v85, v66);
    }
  }

  return result;
}

uint64_t sub_1AB04FFC4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB050024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSBytecodeSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB050088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB0500F0(uint64_t a1)
{
  v2 = type metadata accessor for JSBytecodeSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DiskJetPackResourceBundle.fileData(atPath:)(uint64_t *a1)
{
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  DiskJetPackResourceBundle.fileURL(atPath:)(&v10, v7);
  if (!v2)
  {
    v1 = sub_1AB45F784();
    (*(v5 + 8))(v7, v4);
  }

  return v1;
}

uint64_t sub_1AB05028C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v13, v12);
  v14 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a4;
  *(v15 + 3) = a5;
  *(v15 + 4) = a6;
  *(v15 + 5) = a3;
  (*(v10 + 32))(&v15[v14], v13, a4);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a3;
  v21 = &type metadata for SyncTaskScheduler;
  v22 = &protocol witness table for SyncTaskScheduler;
  v17 = *(a6 + 16);
  swift_retain_n();
  v17(sub_1AB050520, v15, sub_1AB1825A4, v16, v20, a5, a6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_1AB050460()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB050560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v16 - v11;
  v14 = *(v13 + 48);
  (*(*(a4 - 8) + 16))(&v16 - v11, a3, a4, v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(&v12[v14], a1, AssociatedTypeWitness);
  Promise.resolve(_:)(v12);
  return (*(v9 + 8))(v12, TupleTypeMetadata2);
}

void static JSStack.StandardGlobalConfiguration.default.getter(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 1;
}

uint64_t sub_1AB050708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    sub_1AB054B5C(v2, v26);
    sub_1AB054B5C(v26, v23);
    if ((v25 & 0xFE) != 4)
    {
      sub_1AB0508F0(v26);
      v4 = v23;
LABEL_4:
      sub_1AB0508F0(v4);
      goto LABEL_5;
    }

    v22 = v24;
    v6 = v23[0];
    v5 = v23[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = v3;
    v8 = sub_1AB014DB4(v6, v5);
    v10 = v3[2];
    v11 = (v9 & 1) == 0;
    v12 = __OFADD__(v10, v11);
    v13 = v10 + v11;
    if (v12)
    {
      break;
    }

    v14 = v9;
    if (v3[3] < v13)
    {
      sub_1AB1D335C(v13, isUniquelyReferenced_nonNull_native);
      v8 = sub_1AB014DB4(v6, v5);
      if ((v14 & 1) != (v15 & 1))
      {
        goto LABEL_21;
      }

LABEL_12:
      if (v14)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v17 = v8;
    sub_1AB1D8B74();
    v8 = v17;
    if (v14)
    {
LABEL_13:
      v16 = v8;

      v3 = v23[0];
      *(*(v23[0] + 56) + 16 * v16) = v22;

      v4 = v26;
      goto LABEL_4;
    }

LABEL_15:
    v3 = v23[0];
    *(v23[0] + 8 * (v8 >> 6) + 64) |= 1 << v8;
    v18 = (v3[6] + 16 * v8);
    *v18 = v6;
    v18[1] = v5;
    *(v3[7] + 16 * v8) = v22;
    sub_1AB0508F0(v26);
    v19 = v3[2];
    v12 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v12)
    {
      goto LABEL_20;
    }

    v3[2] = v20;
LABEL_5:
    v2 += 48;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t objectdestroy_8Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_8Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_8Tm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_8Tm_2(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t objectdestroy_8Tm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB050AB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = result + 32; ; i += 48)
  {
    sub_1AB054B5C(i, &v17);
    if (!v20)
    {
      break;
    }

    result = sub_1AB0508F0(&v17);
LABEL_4:
    if (!--v2)
    {
      return result;
    }
  }

  sub_1AB0149B0(&v17, v21);
  sub_1AB014A58(a2, &v17, &qword_1EB4389D0);
  if (!v19)
  {
    sub_1AB014AC0(a2, &qword_1EB4389D0);
    sub_1AB014AC0(&v17, &qword_1EB4389D0);
    result = sub_1AB0149B0(v21, a2);
    goto LABEL_4;
  }

  sub_1AB014AC0(&v17, &qword_1EB4389D0);
  if (qword_1EB433A58 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB46C108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  v8 = MEMORY[0x1E69E6158];
  v19 = MEMORY[0x1E69E6158];
  *&v17 = 0xD000000000000068;
  *(&v17 + 1) = 0x80000001AB5048A0;
  *(v7 + 48) = 0u;
  *(v7 + 32) = 0u;
  sub_1AB0169C4(&v17, v7 + 32);
  *(v7 + 64) = 0;
  *(v6 + 32) = v7;
  v9 = sub_1AB461094();
  if (os_log_type_enabled(v5, v9))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v10 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v10[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v10 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v17 = v6;
    *(&v17 + 1) = sub_1AB0223E4;
    v18 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v13 = sub_1AB460484();
    v15 = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AB4D4720;
    *(v16 + 56) = v8;
    *(v16 + 64) = sub_1AB016854();
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    sub_1AB45FF14();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

void sub_1AB050E30(void *a1, uint64_t a2, int token)
{
  v106 = *MEMORY[0x1E69E9840];
  state64 = 0;
  notify_get_state(token, &state64);
  if (qword_1EB4358A0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EB4358A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AB4D4720;
  v92 = sub_1AB0168A8(0, 62, 0, MEMORY[0x1E69E7CC0]);
  v8._countAndFlagsBits = 0xD000000000000026;
  v8._object = 0x80000001AB504A90;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v105 = MEMORY[0x1E69E72F0];
  LODWORD(v102) = token;
  sub_1AB014A58(&v102, &v100, &unk_1EB437E60);
  aBlock = 0u;
  v97 = 0u;
  sub_1AB0169C4(&v100, &aBlock);
  LOBYTE(v98) = 0;
  v9 = v92;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AB0168A8(0, *(v92 + 2) + 1, 1, v92);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[40 * v11];
  v13 = aBlock;
  v14 = v97;
  v12[64] = v98;
  *(v12 + 2) = v13;
  *(v12 + 3) = v14;
  sub_1AB014AC0(&v102, &unk_1EB437E60);
  v15._countAndFlagsBits = 0xD000000000000016;
  v15._object = 0x80000001AB504AC0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  v105 = MEMORY[0x1E69E76D8];
  v102 = state64;
  sub_1AB014A58(&v102, &v100, &unk_1EB437E60);
  aBlock = 0u;
  v97 = 0u;
  sub_1AB0169C4(&v100, &aBlock);
  LOBYTE(v98) = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
  }

  v17 = *(v9 + 2);
  v16 = *(v9 + 3);
  if (v17 >= v16 >> 1)
  {
    v9 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v9);
  }

  *(v9 + 2) = v17 + 1;
  v18 = &v9[40 * v17];
  v19 = aBlock;
  v20 = v97;
  v18[64] = v98;
  *(v18 + 2) = v19;
  *(v18 + 3) = v20;
  sub_1AB014AC0(&v102, &unk_1EB437E60);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  *(v7 + 32) = v9;
  v22 = sub_1AB461094();
  if (os_log_type_enabled(v6, v22))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v23 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v23 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v25 = swift_allocObject();
    *(v25 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&aBlock = v7;
    *(&aBlock + 1) = sub_1AB0223E4;
    *&v97 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v26 = sub_1AB460484();
    v28 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1AB4D4720;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1AB016854();
    *(v29 + 32) = v26;
    *(v29 + 40) = v28;
    sub_1AB45FF14();
  }

  if (state64 == 1)
  {
    v30 = [a1 globalObject];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1AB460514();
      v33 = [v31 valueForProperty_];

      if (v33)
      {
        v34 = [v33 isUndefined];

        if (!v34)
        {
LABEL_41:
          v69 = swift_allocObject();
          *(v69 + 16) = xmmword_1AB4D4720;
          v94 = sub_1AB0168A8(0, 34, 0, MEMORY[0x1E69E7CC0]);
          v70._countAndFlagsBits = 0xD000000000000021;
          v70._object = 0x80000001AB504B30;
          LogMessage.StringInterpolation.appendLiteral(_:)(v70);
          v71 = [a1 name];
          if (v71)
          {
            v72 = v71;
            v73 = sub_1AB460544();
            v75 = v74;

            v76 = MEMORY[0x1E69E6158];
          }

          else
          {
            v73 = 0;
            v75 = 0;
            v76 = 0;
            v104 = 0;
          }

          v102 = v73;
          v103 = v75;
          v105 = v76;
          sub_1AB014A58(&v102, &v100, &unk_1EB437E60);
          aBlock = 0u;
          v97 = 0u;
          sub_1AB0169C4(&v100, &aBlock);
          LOBYTE(v98) = 0;
          v77 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_1AB0168A8(0, *(v94 + 2) + 1, 1, v94);
          }

          v79 = *(v77 + 2);
          v78 = *(v77 + 3);
          if (v79 >= v78 >> 1)
          {
            v77 = sub_1AB0168A8((v78 > 1), v79 + 1, 1, v77);
          }

          *(v77 + 2) = v79 + 1;
          v80 = &v77[40 * v79];
          v81 = aBlock;
          v82 = v97;
          v80[64] = v98;
          *(v80 + 2) = v81;
          *(v80 + 3) = v82;
          sub_1AB014AC0(&v102, &unk_1EB437E60);
          v83._countAndFlagsBits = 0;
          v83._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v83);
          *(v69 + 32) = v77;
          v84 = sub_1AB461094();
          if (os_log_type_enabled(v6, v84))
          {
            if (qword_1EB4359F8 != -1)
            {
              swift_once();
            }

            v85 = off_1EB435A00;
            os_unfair_lock_lock(off_1EB435A00 + 5);
            v86 = LOBYTE(v85[4]._os_unfair_lock_opaque);
            os_unfair_lock_unlock(v85 + 5);
            if (v86 == 2)
            {
              LOBYTE(v86) = os_variant_has_internal_content();
            }

            v87 = swift_allocObject();
            *(v87 + 16) = (v86 & 1) == 0;
            *&aBlock = v69;
            *(&aBlock + 1) = sub_1AB0223E4;
            *&v97 = v87;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
            sub_1AB016A34();
            v88 = sub_1AB460484();
            v90 = v89;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
            v91 = swift_allocObject();
            *(v91 + 16) = xmmword_1AB4D4720;
            *(v91 + 56) = MEMORY[0x1E69E6158];
            *(v91 + 64) = sub_1AB016854();
            *(v91 + 32) = v88;
            *(v91 + 40) = v90;
            sub_1AB45FF14();
          }

          sub_1AB220930(0xD000000000000012, 0x80000001AB504B60, a1);
          return;
        }

        sub_1AB014A58(a2, &v100, &qword_1EB4389D0);
        if (v101)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4387F0);
          if (swift_dynamicCast())
          {
            if (*(&v97 + 1))
            {
              sub_1AB0149B0(&aBlock, &v102);
              sub_1AB01494C(&v102, &v100);
              v35 = swift_allocObject();
              sub_1AB0149B0(&v100, v35 + 16);
              v36 = swift_allocObject();
              *(v36 + 16) = sub_1AB224024;
              *(v36 + 24) = v35;
              v98 = sub_1AB088B60;
              v99 = v36;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v97 = sub_1AB054BC4;
              *(&v97 + 1) = &block_descriptor_421;
              v37 = _Block_copy(&aBlock);

              v38 = [objc_opt_self() valueWithObject:v37 inContext:a1];
              if (v38)
              {
                v39 = v38;
                _Block_release(v37);

                v40 = [a1 globalObject];
                if (v40)
                {
                  v41 = v40;
                  v42 = sub_1AB460514();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_1AB4D9850;
                  *(inited + 32) = sub_1AB460544();
                  *(inited + 40) = v44;
                  *(inited + 72) = sub_1AB016760(0, &qword_1ED4D1B98);
                  *(inited + 48) = v39;
                  v45 = sub_1AB460544();
                  v46 = MEMORY[0x1E69E6370];
                  *(inited + 80) = v45;
                  *(inited + 88) = v47;
                  *(inited + 120) = v46;
                  *(inited + 96) = 0;
                  *(inited + 128) = sub_1AB460544();
                  *(inited + 136) = v48;
                  *(inited + 168) = v46;
                  *(inited + 144) = 0;
                  *(inited + 176) = sub_1AB460544();
                  *(inited + 184) = v49;
                  *(inited + 216) = v46;
                  *(inited + 192) = 0;
                  v50 = v39;
                  sub_1AB01B220(inited);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
                  swift_arrayDestroy();
                  v51 = sub_1AB4602D4();

                  [v41 defineProperty:v42 descriptor:v51];

                  __swift_destroy_boxed_opaque_existential_1Tm(&v102);
                  goto LABEL_41;
                }

LABEL_58:
                __break(1u);
                return;
              }

LABEL_57:
              __break(1u);
              goto LABEL_58;
            }
          }

          else
          {
            v98 = 0;
            aBlock = 0u;
            v97 = 0u;
          }
        }

        else
        {
          sub_1AB014AC0(&v100, &qword_1EB4389D0);
          aBlock = 0u;
          v97 = 0u;
          v98 = 0;
        }

        sub_1AB014AC0(&aBlock, qword_1EB4387F8);
        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_57;
  }

  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1AB4D4720;
  v93 = sub_1AB0168A8(0, 45, 0, MEMORY[0x1E69E7CC0]);
  v53._countAndFlagsBits = 0xD00000000000002CLL;
  v53._object = 0x80000001AB504AE0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v53);
  v105 = MEMORY[0x1E69E6158];
  v102 = 1701602409;
  v103 = 0xE400000000000000;
  sub_1AB014A58(&v102, &v100, &unk_1EB437E60);
  aBlock = 0u;
  v97 = 0u;
  sub_1AB0169C4(&v100, &aBlock);
  LOBYTE(v98) = 0;
  v54 = v93;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = sub_1AB0168A8(0, *(v93 + 2) + 1, 1, v93);
  }

  v56 = *(v54 + 2);
  v55 = *(v54 + 3);
  if (v56 >= v55 >> 1)
  {
    v54 = sub_1AB0168A8((v55 > 1), v56 + 1, 1, v54);
  }

  *(v54 + 2) = v56 + 1;
  v57 = &v54[40 * v56];
  v58 = aBlock;
  v59 = v97;
  v57[64] = v98;
  *(v57 + 2) = v58;
  *(v57 + 3) = v59;
  sub_1AB014AC0(&v102, &unk_1EB437E60);
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v60);
  *(v52 + 32) = v54;
  v61 = sub_1AB461094();
  if (os_log_type_enabled(v6, v61))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v62 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    v63 = LOBYTE(v62[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v62 + 5);
    if (v63 == 2)
    {
      LOBYTE(v63) = os_variant_has_internal_content();
    }

    v64 = swift_allocObject();
    *(v64 + 16) = (v63 & 1) == 0;
    *&aBlock = v52;
    *(&aBlock + 1) = sub_1AB0223E4;
    *&v97 = v64;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v65 = sub_1AB460484();
    v67 = v66;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1AB4D4720;
    *(v68 + 56) = MEMORY[0x1E69E6158];
    *(v68 + 64) = sub_1AB016854();
    *(v68 + 32) = v65;
    *(v68 + 40) = v67;
    sub_1AB45FF14();
  }
}

uint64_t sub_1AB051D28()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1AB051D70(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = objc_opt_self();
  v6 = sub_1AB460514();
  LODWORD(v5) = [v5 BOOLForEntitlement_];

  if (v5)
  {
    sub_1AB461084();
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    sub_1AB45FF24();
  }

  v7 = v2[3];
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = a1;
  v8[4] = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1AB0522D4;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AB0522BC;
  *(v10 + 24) = v9;
  v11 = *(v7 + 32);
  swift_retain_n();

  [v11 lock];
  v12 = CFRunLoopGetCurrent();
  v13 = *(v7 + 40);
  if (!v12)
  {
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v14 = v12;
  if (!v13)
  {

    goto LABEL_13;
  }

  type metadata accessor for CFRunLoop(0);
  sub_1AB049958(&qword_1ED4D13C0, type metadata accessor for CFRunLoop);
  v15 = v13;
  v16 = sub_1AB45FC14();

  if (v16)
  {
LABEL_10:
    [v11 unlock];
    sub_1AB0522BC();

    if (!v23)
    {

LABEL_16:

      return;
    }

LABEL_15:
    swift_willThrow();

    sub_1AB44411C();
    swift_willThrow();
    goto LABEL_16;
  }

LABEL_13:

  [v11 unlock];
  v17 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389C0);
  v18 = swift_allocObject();
  *(v18 + 28) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = -1;
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_1AB05225C;
  v19[4] = v10;
  v19[5] = v17;

  v20 = v17;
  sub_1AB0484A4(sub_1AB0521CC, v19);

  sub_1AB461254();
  os_unfair_lock_lock((v18 + 28));
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  sub_1AB053C7C(v21, *(v18 + 24));
  os_unfair_lock_unlock((v18 + 28));
  if (v22 == 255)
  {
    __break(1u);
  }

  else
  {

    if (v22)
    {
      goto LABEL_15;
    }

    sub_1AB052240(v21, v22);
  }
}

uint64_t sub_1AB0521D0(uint64_t a1, void (*a2)(void))
{
  os_unfair_lock_lock((a1 + 28));
  sub_1AB052240(*(a1 + 16), *(a1 + 24));
  a2();
  os_unfair_lock_unlock((a1 + 28));
  return sub_1AB461264();
}

void sub_1AB052240(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1AB04E6E4(a1, a2 & 1);
  }
}

void *sub_1AB052260@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v4);
  *a1 = v4;
  *(a1 + 8) = 0;
  return result;
}

void sub_1AB052338(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 1;
  *&v97[0] = sub_1AB223F6C;
  *(&v97[0] + 1) = v6;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v96 = sub_1AB0C16BC;
  *(&v96 + 1) = &block_descriptor_10;
  v7 = _Block_copy(&aBlock);

  [v4 setExceptionHandler_];
  _Block_release(v7);
  v86 = [v4 globalObject];
  if (!v86)
  {
    goto LABEL_61;
  }

  v8 = *(a1 + 16);
  v87 = objc_opt_self();
  v9 = [v87 valueWithObject:v8 inContext:v4];
  if (!v9)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    sub_1AB461FC4();
    __break(1u);
    return;
  }

  v83 = a1;
  v10 = v9;
  v11 = sub_1AB460514();
  [v86 setValue:v10 forProperty:v11];

  v12 = *(a2 + 16);
  v84 = v4;
  v82 = a2;
  v88 = v12;
  if (v12)
  {
    v13 = a2 + 32;
    do
    {
      sub_1AB054B5C(v13, &v102);
      if (v105 > 2u)
      {
        sub_1AB0508F0(&v102);
      }

      else if (v105)
      {
        if (v105 == 1)
        {
          v14 = v103;
          *(&v96 + 1) = swift_getObjectType();
          *&aBlock = v14;
          swift_unknownObjectRetain();
          v15 = v4;
          v16 = sub_1AB461D84();
          __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
          v17 = [v87 valueWithObject:v16 inContext:v15];
          swift_unknownObjectRelease();

          if (!v17)
          {
            goto LABEL_60;
          }

          v18 = v17;
          v19 = sub_1AB460514();

          [v86 setValue:v18 forProperty:v19];
          swift_unknownObjectRelease();

          v4 = v84;
        }

        else
        {
          v24 = v103;
          v25 = swift_allocObject();
          *(v25 + 16) = v24;
          *&v97[0] = sub_1AB054C14;
          *(&v97[0] + 1) = v25;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v96 = sub_1AB054BC4;
          *(&v96 + 1) = &block_descriptor_297;
          v26 = _Block_copy(&aBlock);

          v27 = [v87 valueWithObject:v26 inContext:v4];
          if (!v27)
          {
            goto LABEL_59;
          }

          v28 = v27;
          _Block_release(v26);
          v29 = v28;
          v30 = sub_1AB460514();

          [v86 setValue:v29 forProperty:v30];
        }
      }

      else
      {
        sub_1AB0149B0(&v102, v99);
        sub_1AB01494C(v99, v94);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F40);
        if (swift_dynamicCast())
        {
          v97[0] = v91;
          v97[1] = v92;
          v98 = v93;
          aBlock = v89;
          v96 = v90;
          sub_1AB0165C4(v97 + 8, &v89);
          swift_beginAccess();
          v20 = *(v83 + 40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v83 + 40) = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v20 = sub_1AB05303C(0, *(v20 + 2) + 1, 1, v20);
            *(v83 + 40) = v20;
          }

          v23 = *(v20 + 2);
          v22 = *(v20 + 3);
          if (v23 >= v22 >> 1)
          {
            v20 = sub_1AB05303C((v22 > 1), v23 + 1, 1, v20);
          }

          *(v20 + 2) = v23 + 1;
          sub_1AB014B78(&v89, &v20[32 * v23 + 32]);
          *(v83 + 40) = v20;
          swift_endAccess();
          sub_1AB05314C(&aBlock);
        }

        else
        {
          v93 = 0;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          sub_1AB014AC0(&v89, &qword_1EB438A50);
        }

        v31 = v100;
        v32 = v101;
        __swift_project_boxed_opaque_existential_1Tm(v99, v100);
        v33 = sub_1AB0531A0(v4, v31, v32);
        if (v85)
        {

          __swift_destroy_boxed_opaque_existential_1Tm(v99);
          v79 = swift_allocObject();
          swift_weakInit();
          v80 = swift_allocObject();
          *(v80 + 16) = v79;
          *(v80 + 24) = 0;
          *&v97[0] = sub_1AB2241D4;
          *(&v97[0] + 1) = v80;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v65 = &block_descriptor_305;
          goto LABEL_56;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v99);
      }

      v13 += 48;
      --v12;
    }

    while (v12);
  }

  v34 = sub_1AB460514();
  v35 = [v86 valueForProperty_];

  if (!v35)
  {
    goto LABEL_63;
  }

  *(&v90 + 1) = &type metadata for JSStrongReference;
  *&v91 = &protocol witness table for JSStrongReference;
  *&v89 = v35;
  JSCallable.init(_:)(&v89, &aBlock);
  v36 = v88;
  if (!*(&v96 + 1))
  {

    sub_1AB014AC0(&aBlock, &qword_1EB438A30);
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = 0;
    *&v97[0] = sub_1AB2241D4;
    *(&v97[0] + 1) = v64;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v65 = &block_descriptor_275;
    goto LABEL_56;
  }

  v102 = aBlock;
  v103 = v96;
  v104 = *&v97[0];
  if (v88)
  {
    v37 = v82 + 32;
    v38 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      sub_1AB054B5C(v37, &aBlock);
      sub_1AB054B5C(&aBlock, &v89);
      if (BYTE8(v91) != 3)
      {
        sub_1AB0508F0(&aBlock);
        p_aBlock = &v89;
LABEL_37:
        sub_1AB0508F0(p_aBlock);
        goto LABEL_28;
      }

      v41 = v89;
      v42 = v90;
      *(&v90 + 1) = swift_getObjectType();
      *&v89 = v42;
      swift_unknownObjectRetain();
      v43 = v4;
      v44 = sub_1AB461D84();
      __swift_destroy_boxed_opaque_existential_1Tm(&v89);
      v45 = [v87 valueWithObject:v44 inContext:v43];
      swift_unknownObjectRelease();

      if (!v45)
      {
        v56 = sub_1AB014DB4(v41, *(&v41 + 1));
        v58 = v57;

        if ((v58 & 1) == 0)
        {
          sub_1AB0508F0(&aBlock);
          swift_unknownObjectRelease();
          goto LABEL_28;
        }

        v59 = swift_isUniquelyReferenced_nonNull_native();
        *&v89 = v38;
        if (!v59)
        {
          sub_1AB1D8CF4();
          v38 = v89;
        }

        sub_1AB19037C(v56, v38);
        swift_unknownObjectRelease();
        p_aBlock = &aBlock;
        goto LABEL_37;
      }

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *&v89 = v38;
      v48 = sub_1AB014DB4(v41, *(&v41 + 1));
      v49 = v38[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v52 = v47;
      if (v38[3] >= v51)
      {
        if (v46)
        {
          v4 = v84;
          if (v47)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_1AB1D8CF4();
          v4 = v84;
          if (v52)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_1AB1D3614(v51, v46);
        v53 = sub_1AB014DB4(v41, *(&v41 + 1));
        if ((v52 & 1) != (v54 & 1))
        {
          goto LABEL_65;
        }

        v48 = v53;
        v4 = v84;
        if (v52)
        {
LABEL_27:

          v38 = v89;
          v39 = *(v89 + 56);
          v40 = *(v39 + 8 * v48);
          *(v39 + 8 * v48) = v45;
          swift_unknownObjectRelease();

          sub_1AB0508F0(&aBlock);
          goto LABEL_28;
        }
      }

      v38 = v89;
      *(v89 + 8 * (v48 >> 6) + 64) |= 1 << v48;
      *(v38[6] + 16 * v48) = v41;
      *(v38[7] + 8 * v48) = v45;
      swift_unknownObjectRelease();
      sub_1AB0508F0(&aBlock);
      v60 = v38[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_58;
      }

      v38[2] = v62;
LABEL_28:
      v37 += 48;
      if (!--v36)
      {
        goto LABEL_51;
      }
    }
  }

  v38 = MEMORY[0x1E69E7CC8];
LABEL_51:
  v99[0] = v38;
  sub_1AB221D48(v82, v86, v99);
  v66 = sub_1AB460514();
  v67 = [v86 valueForProperty_];

  if (!v67)
  {
    goto LABEL_64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1AB4D4720;
  v69 = v99[0];
  *(v68 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE0);
  *(v68 + 32) = v69;
  v70.super.isa = JSCallable.call(withArguments:)(v68).super.isa;
  if (v71)
  {
    sub_1AB087F9C(&v102);

    v72 = swift_allocObject();
    swift_weakInit();
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = 0;
    *&v97[0] = sub_1AB2241D4;
    *(&v97[0] + 1) = v73;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v65 = &block_descriptor_283;
  }

  else
  {
    isa = v70.super.isa;

    v75 = isa;
    v76 = sub_1AB460514();
    [v67 setValue:v75 forProperty:v76];

    sub_1AB087F9C(&v102);
    v77 = swift_allocObject();
    swift_weakInit();
    v78 = swift_allocObject();
    *(v78 + 16) = v77;
    *(v78 + 24) = 0;
    *&v97[0] = sub_1AB2241D4;
    *(&v97[0] + 1) = v78;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v65 = &block_descriptor_291;
  }

LABEL_56:
  *&v96 = sub_1AB0C16BC;
  *(&v96 + 1) = v65;
  v81 = _Block_copy(&aBlock);

  [v4 setExceptionHandler_];
  _Block_release(v81);
}

char *sub_1AB05303C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AB0531D8(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSBytecodeSource.evaluate(against:in:)(JSValue_optional against, JSContext in)
{
  v3 = v2;
  v4 = *&against.is_nil;
  if (against.value.super.isa)
  {
    isa = against.value.super.isa;
    v6 = [*&against.is_nil globalObject];
    if (!v6 || (v7 = v6, sub_1AB016760(0, &qword_1ED4D1B98), v8 = isa, v9 = sub_1AB4612C4(), v7, v8, (v9 & 1) == 0))
    {
      v17 = 0x80000001AB502F30;
      sub_1AB0C3EF0();
      swift_allocError();
      v24 = 0xD00000000000004ALL;
LABEL_11:
      *v23 = v24;
      *(v23 + 8) = v17;
      *(v23 + 16) = 0;
      *(v23 + 24) = 1;
      *(v23 + 32) = 0;
      *(v23 + 40) = 1;
      *(v23 + 48) = 0u;
      *(v23 + 64) = 0u;
      *(v23 + 80) = 0u;
      *(v23 + 96) = 0;
      swift_willThrow();
      return v17;
    }
  }

  v10 = [v4 virtualMachine];
  v11 = type metadata accessor for JSBytecodeSource(0);
  if (!v10 || (v12 = v11, v13 = *(v3 + *(v11 + 24)), sub_1AB016760(0, &qword_1ED4D0BF0), v14 = v13, v15 = sub_1AB4612C4(), v14, v10, (v15 & 1) == 0))
  {
    v17 = 0x80000001AB502EE0;
    sub_1AB0C3EF0();
    swift_allocError();
    v24 = 0xD000000000000042;
    goto LABEL_11;
  }

  result.super.isa = [v4 evaluateJSScript_];
  if (result.super.isa)
  {
    v17 = result.super.isa;
    v18 = [v4 exception];
    if (v18)
    {
      v19 = v18;
      [v4 setException_];
      sub_1AB0C3EF0();
      swift_allocError();
      v21 = v20;
      v22 = v19;
      JSError.init(_:)(v22, v21);
      swift_willThrow();
    }

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB0534E4(uint64_t (*a1)(void *, void *, uint64_t), uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 currentContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 currentThis];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 currentArguments];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1AB460954();

        v12 = sub_1AB0537F0(v11);

        if (v12)
        {
          v13 = a1(v6, v8, v12);

          return v13;
        }
      }
    }
  }

  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB4FF710);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436AB0);
  v16 = sub_1AB4605E4();
  MEMORY[0x1AC59BA20](v16);

  MEMORY[0x1AC59BA20](0xD00000000000001DLL, 0x80000001AB4FF730);
  result = sub_1AB461884();
  __break(1u);
  return result;
}

uint64_t sub_1AB0537B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0537F0(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1AB461754();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1AB0165C4(i, v5);
    sub_1AB016760(0, &qword_1ED4D1B98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1AB461724();
    sub_1AB461764();
    sub_1AB461774();
    sub_1AB461734();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_1AB0538FC(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    v4 = a1;
    v5 = a3;
    v6 = sub_1AB4618F4();
    a3 = v5;
    v7 = v6;
    a1 = v4;
    if (v7 < 2)
    {
      goto LABEL_3;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_3:
    sub_1AB0C3EF0();
    swift_allocError();
    *v3 = 0xD00000000000002BLL;
    *(v3 + 8) = 0x80000001AB50D950;
    *(v3 + 16) = 0;
    *(v3 + 24) = 1;
    *(v3 + 32) = 0;
    *(v3 + 40) = 1;
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
    *(v3 + 80) = 0u;
    *(v3 + 96) = 0;
    swift_willThrow();
    return;
  }

  if ((a3 & 0xC000000000000001) == 0)
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      if (v8 != 1)
      {
        v9 = a1;
        v10 = *(a3 + 40);
        v11 = *(a3 + 32);
        v12 = v10;
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v9 = a1;
  v21 = a3;
  v11 = MEMORY[0x1AC59C990](0, a3);
  v12 = MEMORY[0x1AC59C990](1, v21);
LABEL_9:
  v13 = v12;
  v14 = [v9 globalObject];
  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  v16 = sub_1AB460514();
  v17 = [v15 valueForProperty_];

  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = [v11 toString];
  if (v18)
  {
    v19 = v18;
    v20 = v13;
    [v17 setValue:v20 forProperty:v19];

    return;
  }

LABEL_18:
  __break(1u);
}

id JSCallable.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v7 = v6;
    result = [v6 context];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result JSGlobalContextRef];

    v11 = [v7 JSValueRef];
    if (JSValueGetType(v10, v11) == kJSTypeObject)
    {
      IsFunction = JSObjectIsFunction(v10, v11);

      if (IsFunction)
      {
        sub_1AB01494C(a1, v14);
        v13 = v14[1];
        *a2 = v14[0];
        *(a2 + 16) = v13;
        *(a2 + 32) = v15;
        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }
    }

    else
    {
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_1AB053C54()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_1AB053C7C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AB053C94(result, a2 & 1);
  }

  return result;
}

id sub_1AB053C94(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_32Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1AB053D30(uint64_t a1, void (*a2)(id))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);

    a2(v4);
  }
}

void sub_1AB053DBC(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA7EC(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA7EC(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB437ED4(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &qword_1EB439F20);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB053F70(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB053F70((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB053F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB053FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB054064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AB0540CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439810);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB439810);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AA7BC(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB017FB8(v11, v5, &unk_1EB437770);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB437CA4(v5);
    sub_1AB014AC0(v5, &unk_1EB437770);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB437780);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0543B4(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0543B4((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v13, &unk_1EB439810);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t sub_1AB0543D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB014A58(v3 + 48, v16, &qword_1EB4389B0);
  v6 = v17;
  result = sub_1AB014AC0(v16, &qword_1EB4389B0);
  if (v6)
  {

    v8 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = v8;
    v14 = &type metadata for SyncTaskScheduler;
    v15 = &protocol witness table for SyncTaskScheduler;
    v16[0] = sub_1AB22363C;
    v16[1] = v10;
    v16[2] = sub_1AB223690;
    v17 = v12;
    sub_1AB01494C(v13, v18);
    v18[40] = 0;

    sub_1AB0CFD84(v16);

    sub_1AB014AC0(v16, &unk_1EB4397D0);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return result;
}

id sub_1AB0545F0()
{
  v1 = [*(*v0 + 16) value];

  return v1;
}

uint64_t sub_1AB05462C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *v3;
  (*(a3 + 8))(v9);
  if (!v4)
  {
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    a1 = (*(v7 + 16))(a1, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return a1;
}

unint64_t sub_1AB0546E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
  v4 = sub_1AB461F94();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:a1];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v5;
  return result;
}

unint64_t sub_1AB0547A8()
{
  result = qword_1EB434E30;
  if (!qword_1EB434E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB434E30);
  }

  return result;
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CustomJSValueConvertible._jsValue(in:)(JSContext in)
{
  (*(v1 + 8))(v7);
  if (!v2)
  {
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    in.super.isa = (*(v5 + 16))(in.super.isa, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return in.super.isa;
}

unint64_t Optional<A>.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    v17 = [objc_opt_self() valueWithUndefinedInContext_];
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58);
    result = sub_1AB0547A8();
    a4[4] = result;
    *a4 = v17;
  }

  else
  {
    (*(v9 + 32))(v12, v14, v8);
    v19 = (*(a3 + 16))(a1, v8, a3);
    if (!v4)
    {
      v20 = v19;
      a4[3] = sub_1AB054C38();
      a4[4] = &protocol witness table for JSValue;
      *a4 = v20;
    }

    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

id sub_1AB054BC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

unint64_t sub_1AB054C38()
{
  result = qword_1ED4D1B98;
  if (!qword_1ED4D1B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4D1B98);
  }

  return result;
}

JSValue __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSReference.unwrap()()
{
  result.super.isa = (*(v0 + 8))();
  if (!result.super.isa)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    *v2 = 0xD00000000000001CLL;
    *(v2 + 8) = 0x80000001AB508660;
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0;
    return swift_willThrow();
  }

  return result;
}

id Promise<A>.toAMSPromise(on:)(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D418);
  v4 = *(v3 + 80);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = v5;
  Promise.then(perform:orCatchError:on:)(sub_1AB07EBC4, v6, sub_1AB442F40, v7, a1);

  return v8;
}

uint64_t sub_1AB055070()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0550D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437628);
    v3 = sub_1AB4615A4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1AB4620A4();

      sub_1AB460684();
      result = sub_1AB462104();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1AB461DA4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1AB055238()
{
  v0 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v0, qword_1ED4D06C8);
  __swift_project_value_buffer(v0, qword_1ED4D06C8);
  return sub_1AB45FFB4();
}

uint64_t sub_1AB0552BC(uint64_t a1)
{
  v3[4] = &type metadata for OSLogger;
  v3[5] = &protocol witness table for OSLogger;
  if (qword_1ED4D2218 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(off_1ED4D2220 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB2241F8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v3[1] = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A268);
  swift_allocObject();
  result = sub_1AB4622D4();
  qword_1EB435770 = result;
  return result;
}

id MetricsPipeline.wrappedPipeline.getter()
{
  sub_1AB0560F8(v0, v6);
  v1 = type metadata accessor for WrappedMetricsPipeline();
  v2 = objc_allocWithZone(v1);
  sub_1AB0560F8(v6, v2 + OBJC_IVAR___JEWrappedMetricsPipeline_pipeline);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1AB056154(v6);
  return v3;
}

void sub_1AB0554A8()
{
  sub_1AB45F764();
  if (v0 <= 0x3F)
  {
    sub_1AB0556A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.url()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  v2[13] = swift_task_alloc();
  v3 = sub_1AB45F764();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB058174, 0, 0);
}

unint64_t sub_1AB05562C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AB015798();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1AB0556A4()
{
  if (!qword_1EB4359F0)
  {
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4359F0);
    }
  }
}

uint64_t sub_1AB05570C()
{
  result = type metadata accessor for JetPackAsset(319);
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

void sub_1AB055794()
{
  sub_1AB05587C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JetPackAsset.Metadata(319);
    if (v1 <= 0x3F)
    {
      sub_1AB0559D8(319, &qword_1EB435618);
      if (v2 <= 0x3F)
      {
        sub_1AB0559D8(319, &qword_1EB4359F0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1AB05587C()
{
  result = qword_1EB4356F8;
  if (!qword_1EB4356F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB4356F8);
  }

  return result;
}

void sub_1AB0558E0()
{
  sub_1AB0559D8(319, &qword_1EB4359F0);
  if (v0 <= 0x3F)
  {
    sub_1AB45F9B4();
    if (v1 <= 0x3F)
    {
      sub_1AB0559D8(319, &qword_1EB4356E0);
      if (v2 <= 0x3F)
      {
        sub_1AB0559D8(319, &qword_1EB4353D0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AB0559D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AB461354();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t ValidatedJetPackLoadingCoordinator.getJetPackAsset<A>(unpackAsset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v6[27] = *(a4 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for JetPackAsset(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E40);
  v6[34] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E48);
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437E50);
  v6[38] = v9;
  v6[39] = *(v9 - 8);
  v6[40] = swift_task_alloc();
  v6[41] = type metadata accessor for ValidatedJetPackLoadingCoordinator.ValidatedJetPackResult();
  v10 = sub_1AB461354();
  v6[42] = v10;
  v6[43] = *(v10 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0649B4, 0, 0);
}

uint64_t sub_1AB055D00(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  v9 = *(v2 + 48);
  v16[2] = *(v2 + 32);
  v16[3] = v9;
  v17 = *(v2 + 64);
  v10 = *(v2 + 16);
  v16[0] = *v2;
  v16[1] = v10;
  v13 = v16;
  v14 = a2;
  v15 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5);
  return sub_1AB460DD4();
}

void sub_1AB055E54(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAE1C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AAE1C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB43A550(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB437740);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB056008(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB056008((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_1AB05602C()
{
  v1 = v0 + 2;
  v2 = v0[30];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB098DB8;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB058B94(v3);
  sub_1AB014AC0(v3, &qword_1EB43BD80);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB056184()
{
  v1 = [*(v0 + 264) URLForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386D0);
  inited = swift_initStackObject();
  inited[2] = v1;
  inited[3] = sub_1AB098298;
  inited[4] = 0;
  *(v0 + 296) = sub_1AB0568F0();

  return MEMORY[0x1EEE6DFA0](sub_1AB05602C, 0, 0);
}

uint64_t sub_1AB05628C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-v9];
  v11 = type metadata accessor for URLJetPackAssetRequest();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AB28E900(a2, v13, type metadata accessor for URLJetPackAssetRequest);
  sub_1AB28E8B8(&qword_1ED4D04A8, type metadata accessor for URLJetPackAssetRequest);
  sub_1AB461564();
  v14 = *a1;
  if (*(*a1 + 16) && (v15 = sub_1AB02B1D8(v40), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    sub_1AB02B2E4(v40);
    if (qword_1EB435780 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v18 = v41;
    v19 = v42;
    __swift_project_boxed_opaque_existential_1Tm(v40, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AB4D4720;
    v43 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
    v21._object = 0x80000001AB506410;
    v21._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    v39[3] = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v39);
    sub_1AB28E900(a2, boxed_opaque_existential_0, type metadata accessor for URLJetPackAssetRequest);
    sub_1AB014A58(v39, v35, &unk_1EB437E60);
    v36 = 0u;
    v37 = 0u;
    sub_1AB017CC4(v35, &v36, &unk_1EB437E60);
    v38 = 0;
    v23 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[40 * v25];
    v27 = v36;
    v28 = v37;
    v26[64] = v38;
    *(v26 + 2) = v27;
    *(v26 + 3) = v28;
    v43 = v23;
    sub_1AB014AC0(v39, &unk_1EB437E60);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v29);
    *(v20 + 32) = v43;
    Logger.info(_:)(v20, v18, v19);

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  else
  {
    sub_1AB02B2E4(v40);
    v30 = sub_1AB460BE4();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a3;
    v31[5] = a4;

    v17 = sub_1AB3B2D0C(0, 0, v10, &unk_1AB4E3760, v31);
    sub_1AB28E900(a2, v13, type metadata accessor for URLJetPackAssetRequest);
    sub_1AB461564();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36 = *a1;
    sub_1AB02B338(v17, v40, isUniquelyReferenced_nonNull_native);
    sub_1AB02B2E4(v40);
    *a1 = v36;
  }

  return v17;
}

uint64_t sub_1AB0567BC(uint64_t a1)
{
  *(v2 + 200) = a1;
  v3 = sub_1AB45F764();
  *(v2 + 208) = v3;
  *(v2 + 216) = *(v3 - 8);
  *(v2 + 224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v4 = *(v1 + 56);
  *(v2 + 264) = *v1;
  *(v2 + 280) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AB056184, 0, 0);
}

void *sub_1AB0568F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437730);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13[-1] - v2;
  *(&v13[-1] - v2) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD88);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v4[2] = v5;
  sub_1AB017FB8(v3, v4 + *(*v4 + 96), &unk_1EB437730);
  sub_1AB056B20([*(v0 + 16) valuePromise]);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = swift_allocObject();
  v8[2] = v4;
  v8[3] = v7;
  v8[4] = v6;
  v9 = sub_1AB015664();
  swift_retain_n();

  v10 = sub_1AB461124();
  v15[3] = v9;
  v15[4] = &protocol witness table for OS_dispatch_queue;
  v15[0] = v10;
  v13[0] = sub_1AB098DAC;
  v13[1] = v8;
  v13[2] = sub_1AB3AA28C;
  v13[3] = v4;
  sub_1AB01494C(v15, v14);
  v14[40] = 0;

  sub_1AB055E54(v13);
  sub_1AB014AC0(v13, &unk_1EB437740);

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v4;
}

uint64_t sub_1AB056B20(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AA8);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB07D3EC;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058080;
  v11 = &block_descriptor_9_0;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB225A3C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_12;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1AB056CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB064FDC, 0, 0);
}

uint64_t sub_1AB056CF8(void *a1, void *a2)
{
  type metadata accessor for InMemoryJetPackResourceBundle();
  v4 = swift_projectBox();
  v5 = [a2 readData];
  v6 = sub_1AB45F854();
  v8 = v7;

  v9 = [a1 pathname];
  v10 = sub_1AB460544();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  JetPackPath.init(_:)(v13);
  swift_beginAccess();
  sub_1AB017200(v6, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v4;
  *v4 = 0x8000000000000000;
  sub_1AB056E38(v6, v8, v17, isUniquelyReferenced_nonNull_native);

  *v4 = v16;
  swift_endAccess();
  sub_1AB017254(v6, v8);
  return 1;
}

uint64_t sub_1AB056E38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AB059C08(a3);
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
      sub_1AB056FAC(v16, a4 & 1);
      v11 = sub_1AB059C08(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1AB1D9D60();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    v23 = *v22;
    v24 = v22[1];
    *v22 = a1;
    v22[1] = a2;

    return sub_1AB017254(v23, v24);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  *(v21[6] + 8 * v11) = a3;
  v26 = (v21[7] + 16 * v11);
  *v26 = a1;
  v26[1] = a2;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}