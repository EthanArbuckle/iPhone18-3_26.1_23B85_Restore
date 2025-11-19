CFTypeRef dyld_process_create_for_task(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v9 = 0;
  v3 = [[_DYProcess alloc] initWithTask:a1 queue:0 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v4)
  {
    KernReturn = extractKernReturn(v4);
    v7 = 0;
    if (a2)
    {
      *a2 = KernReturn;
    }
  }

  else
  {
    v7 = CFRetain(v3);
  }

  return v7;
}

char *sub_1AE4A36C4(mach_port_name_t a1, void *a2)
{
  v4 = v2;
  v7 = OBJC_IVAR____DYProcess_impl;
  *&v4[OBJC_IVAR____DYProcess_impl] = 0;
  type metadata accessor for Process.Impl();
  swift_allocObject();
  v8 = a2;
  v9 = sub_1AE4A37D0(a1, a2);
  if (v3)
  {

    v10 = *&v4[v7];

    type metadata accessor for _DYProcess(v11);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v9;
    swift_beginAccess();
    v13 = *&v4[v7];
    *&v4[v7] = v12;

    v15.receiver = v4;
    v15.super_class = _DYProcess;
    v4 = objc_msgSendSuper2(&v15, sel_init);
  }

  return v4;
}

uint64_t sub_1AE4A37D0(mach_port_name_t name, id a2)
{
  v4 = v2;
  v7 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v7;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 4;
  *(v2 + 64) = 0;
  v8 = MEMORY[0x1E69E9A60];
  v9 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1);
  if (v9)
  {
    sub_1AE4C9430();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();
LABEL_5:

    v16 = *(v4 + 16);

    v17 = *(v4 + 24);

    if (!v9)
    {
      mach_port_deallocate(*v8, *(v4 + 32));
    }

    sub_1AE4BD9E8(*(v4 + 40), *(v4 + 48), *(v4 + 56));

    type metadata accessor for Process.Impl();
    swift_deallocPartialClassInstance();
    return v4;
  }

  *(v4 + 32) = name;
  v11 = *(v4 + 64);
  *(v4 + 64) = a2;
  a2 = a2;

  *(v4 + 72) = 1;
  v12 = sub_1AE4A39D4(*(v4 + 32), v24);
  if (v3)
  {
    v14 = v25;
    sub_1AE4C9430();
    v22 = v24[1];
    v23 = v24[0];
    swift_allocError();
    *v15 = v23;
    *(v15 + 16) = v22;
    *(v15 + 32) = v14;
    goto LABEL_5;
  }

  *(v4 + 80) = v12;
  *(v4 + 88) = v13;
  v19 = *(v4 + 64);
  if (v19)
  {
    v20 = qword_1EB5DD1C0;
    v21 = v19;
    if (v20 != -1)
    {
      swift_once();
    }

    v26 = 1;
    sub_1AE4EAF90();
  }

  else
  {
  }

  return v4;
}

_BYTE *sub_1AE4A39D4(lsl::MemoryManager *a1, uint64_t *a2)
{
  v54 = a2;
  v3 = v2;
  v79 = *MEMORY[0x1E69E9840];
  v59 = sub_1AE4EAA30();
  v5 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *MEMORY[0x1E6968FF8];
  v56 = (v7 + 104);
  v55 = (v7 + 8);
  v8 = 100;
  v9 = MEMORY[0x1E69E9A60];
  while (1)
  {
    *task_info_out = 0;
    v71 = 0;
    v72 = 0;
    LODWORD(task_info_outCnt[0]) = 5;
    v10 = task_info(a1, 0x11u, task_info_out, task_info_outCnt);
    if (v10)
    {
      v37 = v10;
      v74 = v10;
      sub_1AE4C9430();
      v76 = 0;
      v77 = 0;
      v75 = 0;
      LOBYTE(v78) = 0;
      swift_willThrowTypedImpl();
      v38 = 0;
      v36 = 0;
      v39 = 0;
      LOBYTE(v40) = 0;
      goto LABEL_44;
    }

    v11 = *task_info_out;
    if (v72)
    {
      if (v72 != 1)
      {
        goto LABEL_40;
      }

      LODWORD(task_info_outCnt[0]) = 0;
      *task_info_out = 0;
      safe = vm_read_safe(a1, v11, 0x170uLL, task_info_out, task_info_outCnt);
      if (safe)
      {
LABEL_33:
        v37 = safe;
        v74 = safe;
        sub_1AE4C9430();
        v76 = 0;
        v77 = 0;
        v75 = 0;
        LOBYTE(v78) = 0;
        swift_willThrowTypedImpl();
        LOBYTE(v40) = 0;
        goto LABEL_43;
      }

      v13 = LODWORD(task_info_outCnt[0]);
      if (LODWORD(task_info_outCnt[0]) < 0x170)
      {
        goto LABEL_34;
      }

      v14 = *task_info_out;
      if (!*task_info_out)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v15 = *(*task_info_out + 184);
      v16 = *(*task_info_out + 304);
      v17 = *(*task_info_out + 312);
    }

    else
    {
      LODWORD(task_info_outCnt[0]) = 0;
      *task_info_out = 0;
      safe = vm_read_safe(a1, v11, 0xE0uLL, task_info_out, task_info_outCnt);
      if (safe)
      {
        goto LABEL_33;
      }

      v13 = LODWORD(task_info_outCnt[0]);
      if (LODWORD(task_info_outCnt[0]) < 0xE0)
      {
LABEL_34:
        v37 = 4;
        v74 = 4;
        v75 = 0;
        v76 = 0;
        v77 = 0;
        LOBYTE(v40) = -64;
        LOBYTE(v78) = -64;
        sub_1AE4C9430();
        swift_willThrowTypedImpl();
        mach_vm_deallocate(*v9, *task_info_out, LODWORD(task_info_outCnt[0]));
        goto LABEL_43;
      }

      v14 = *task_info_out;
      if (!*task_info_out)
      {
        goto LABEL_48;
      }

      v15 = *(*task_info_out + 104);
      v16 = *(*task_info_out + 168);
      v17 = *(*task_info_out + 172);
    }

    mach_vm_deallocate(*v9, v14, v13);
    if (!v17 || !v15)
    {
      break;
    }

    LODWORD(task_info_outCnt[0]) = 0;
    *task_info_out = 0;
    v18 = vm_read_safe(a1, v16, v17, task_info_out, task_info_outCnt);
    if (v18)
    {
      v74 = v18;
      sub_1AE4C9430();
      v76 = 0;
      v77 = 0;
      v75 = 0;
      LOBYTE(v78) = 0;
      swift_willThrowTypedImpl();
    }

    else
    {
      v19 = *task_info_out;
      if (!*task_info_out)
      {
        goto LABEL_49;
      }

      v20 = LODWORD(task_info_outCnt[0]);
      v21 = v58;
      (*v56)(v58, v57, v59);
      sub_1AE4EAA20();
      if (v20)
      {
        v22 = sub_1AE4EA9D0();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();

        v25 = sub_1AE4EA970();
        v26 = sub_1AE4AB51C(v25, v20);
        v28 = v27;
      }

      else
      {
        v29 = sub_1AE4EAA20();
        v29(v19, 0);

        v26 = 0;
        v28 = 0xC000000000000000;
      }

      (*v55)(v21, v59);
      v77 = &type metadata for Snapshot.DefaultDelegate;
      v78 = &off_1F240DAF0;
      sub_1AE4A6E5C(&v74, task_info_out);
      __swift_mutable_project_boxed_opaque_existential_1(task_info_out, v73);
      v68 = &type metadata for Snapshot.DefaultDelegate;
      v69 = &off_1F240DAF0;
      v30 = type metadata accessor for Snapshot.DecoderContext(0);
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      v33 = swift_allocObject();
      __swift_mutable_project_boxed_opaque_existential_1(task_info_outCnt, &type metadata for Snapshot.DefaultDelegate);
      *(v33 + 5) = &type metadata for Snapshot.DefaultDelegate;
      *(v33 + 6) = &off_1F240DAF0;
      *(v33 + 7) = 0;
      v34 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
      v35 = sub_1AE4EAC50();
      (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
      *&v33[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache] = 0;
      v33[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion] = 0;
      *&v33[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide] = 0;
      *&v33[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize] = 8;
      __swift_destroy_boxed_opaque_existential_1(task_info_outCnt);
      __swift_destroy_boxed_opaque_existential_1(task_info_out);
      type metadata accessor for Snapshot.Impl();
      v36 = swift_allocObject();

      sub_1AE4A423C(v26, v28, v33, &v62);
      if (!v3)
      {
        goto LABEL_46;
      }

      v3 = 0;
      v37 = v62;
      v38 = v63;
      v36 = v64;
      v39 = v65;
      v40 = v66;
      __swift_destroy_boxed_opaque_existential_1(&v74);

      v41 = v40 >> 6;
      if (v40 >> 6 <= 1)
      {
        v9 = MEMORY[0x1E69E9A60];
        if (v41)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9A60];
        if (v41 == 2)
        {
          sub_1AE4DFB40(v37, v38, v36, v39, v40);
        }

        else if (v40 != 192 || v37 != 1 || v36 | v38 | v39)
        {
LABEL_31:
          v74 = v37;
          v75 = v38;
          v76 = v36;
          v77 = v39;
          LOBYTE(v78) = v40;
          sub_1AE4C9430();
          swift_willThrowTypedImpl();
          goto LABEL_44;
        }
      }
    }

    if (!--v8)
    {
      v37 = 3;
      goto LABEL_42;
    }
  }

  v60 = 0;
  v61 = 0;
  if (!scavengeProcess(a1, &v61, &v60))
  {
LABEL_40:
    v37 = 4;
LABEL_42:
    v74 = v37;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    LOBYTE(v40) = -64;
    LOBYTE(v78) = -64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();
LABEL_43:
    v38 = 0;
    v36 = 0;
    v39 = 0;
    goto LABEL_44;
  }

  result = v61;
  if (v61)
  {
    if (v60 < 0)
    {
      goto LABEL_50;
    }

    v43 = sub_1AE4E59B8(v61, v60);
    v45 = v44;
    free(v61);
    v77 = &type metadata for Snapshot.DefaultDelegate;
    v78 = &off_1F240DAF0;
    sub_1AE4A6E5C(&v74, task_info_out);
    __swift_mutable_project_boxed_opaque_existential_1(task_info_out, v73);
    v68 = &type metadata for Snapshot.DefaultDelegate;
    v69 = &off_1F240DAF0;
    v46 = type metadata accessor for Snapshot.DecoderContext(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    v49 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(task_info_outCnt, &type metadata for Snapshot.DefaultDelegate);
    *(v49 + 5) = &type metadata for Snapshot.DefaultDelegate;
    *(v49 + 6) = &off_1F240DAF0;
    *(v49 + 7) = 0;
    v50 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
    v51 = sub_1AE4EAC50();
    (*(*(v51 - 8) + 56))(&v49[v50], 1, 1, v51);
    *&v49[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache] = 0;
    v49[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion] = 0;
    *&v49[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide] = 0;
    *&v49[OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize] = 8;
    __swift_destroy_boxed_opaque_existential_1(task_info_outCnt);
    __swift_destroy_boxed_opaque_existential_1(task_info_out);
    type metadata accessor for Snapshot.Impl();
    v36 = swift_allocObject();

    sub_1AE4A423C(v43, v45, v49, &v62);
    if (!v3)
    {
LABEL_46:
      __swift_destroy_boxed_opaque_existential_1(&v74);
      goto LABEL_45;
    }

    v37 = v62;
    v38 = v63;
    v36 = v64;
    v39 = v65;
    LOBYTE(v40) = v66;
    __swift_destroy_boxed_opaque_existential_1(&v74);

LABEL_44:
    v52 = v54;
    *v54 = v37;
    v52[1] = v38;
    v52[2] = v36;
    v52[3] = v39;
    *(v52 + 32) = v40;
LABEL_45:
    v53 = *MEMORY[0x1E69E9840];
    return v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE4A41E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AE4A423C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v161 = a4;
  v160 = *v4;
  *&v158 = sub_1AE4EAB10();
  *&v159 = *(v158 - 8);
  v8 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v10 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v146 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD520, &qword_1AE4EDB98);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = (&v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v146 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v146 - v23);
  v4[9] = a3;
  v166 = a3;

  sub_1AE4A6FD8(a1, a2);
  v162 = a1;
  v163 = a2;
  v25 = v164;
  v26 = sub_1AE4A702C(a1, a2, v184);
  v165 = v4;
  v164 = v25;
  if (!v25)
  {
    v154 = v24;
    v155 = v22;
    v157 = v14;
    v153 = v10;
    v35 = v159;
    v156 = v19;
    v4[2] = v26;
    v4[3] = v27;
    v36 = v4 + 2;
    v36[2] = v28;
    v36[3] = v29;
    swift_beginAccess();
    v37 = sub_1AE4AA0F0(0x2E737365636F7270uLL, 0xED00007473696C70, v184);
    v39 = v38;
    swift_endAccess();
    if (v39 >> 60 == 15)
    {
      sub_1AE4C9430();
      v31 = swift_allocError();
      *v40 = 2;
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      *(v40 + 32) = -64;
      swift_willThrow();
      v32 = 0;
      goto LABEL_6;
    }

    sub_1AE4AB600(v37, v39);
    v41 = sub_1AE4AB614(v37, v39);
    sub_1AE4ABE40(v37, v39);
    v42 = sub_1AE4AC2B4(v41);
    v44 = v43;
    v46 = v45;
    v152 = v37;

    v69 = v46;
    v70 = v165;
    v165[6] = v42;
    v70[7] = v44;
    v70[8] = v69;

    sub_1AE4AC9B8(v71, v44, v69, v167);

    v73 = v70[6];
    v72 = v70[7];
    v74 = v70[8];

    v75 = sub_1AE4AC6E0(0x7367616C66, 0xE500000000000000, 0, v73, v72, v74);
    if (v75)
    {
      v76 = sub_1AE4A6A00(v75);
      v77 = v35;

      v78 = v166;
    }

    else
    {

      v76 = 0;
      v78 = v166;
      v77 = v35;
    }

    v79 = v165;
    v165[10] = v76;
    v81 = v79[6];
    v80 = v79[7];
    v82 = v79[8];

    v83 = sub_1AE4AC6E0(828601188, 0xE400000000000000, 0, v81, v80, v82);
    if (!v83)
    {

      sub_1AE4ABE40(v152, v39);
      sub_1AE4A41E8(v162, v163);
LABEL_41:
      v58 = v165;
      *(v78 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion) = (v165[10] & 4) != 0;

      return v58;
    }

    v84 = sub_1AE4AC2B4(v83);
    v150 = v85;
    v151 = v86;

    type metadata accessor for SharedCache.ProcessRecord();
    v19 = swift_allocObject();
    v87 = v150;
    v19[2] = v84;
    v19[3] = v87;
    v19[4] = v151;
    v88 = *(v78 + 56);
    *(v78 + 56) = v19;
    v148 = v84;

    v89 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v19[2], v19[3], v19[4]);
    if (v89)
    {
      v90 = sub_1AE4AF28C(v89);
      v92 = v91;

      v93 = v154;
      MEMORY[0x1B27010F0](v90, v92);
      v94 = sub_1AE4EAC50();
      v95 = *(v94 - 8);
      v96 = *(v95 + 56);
      v151 = v94;
      v150 = v96;
      v149 = v95 + 56;
      v96(v93, 0, 1);
      v97 = OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCachePath;
      swift_beginAccess();
      v146 = v97;
      sub_1AE4B06C8(v93, v78 + v97, &qword_1EB5DD520, &qword_1AE4EDB98);
      swift_endAccess();
      v98 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v19[2], v19[3], v19[4]);
      if (v98)
      {
        v100 = sub_1AE4AEC7C(v98, v99);
        v102 = v101;

        v103 = v157;
        sub_1AE4B0730(v100, v102);
        (*(v77 + 56))(v103, 0, 1, v158);
        v104 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v19[2], v19[3], v19[4]);
        if (v104)
        {
          v105 = sub_1AE4AF28C(v104);
          v107 = v106;

          v108 = v105;
          v109 = v155;
          MEMORY[0x1B27010F0](v108, v107);
          v150(v109, 0, 1, v151);
          if (qword_1EB5DD140 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v110 = qword_1EB5DD188;

          os_unfair_lock_lock(v110 + 4);
          v111 = v157;
          sub_1AE4B0920(v157, &qword_1EB5DD170, v109, 0, &v173);
          v154 = v19;
          v123 = v173;
          v124 = v174;
          v147 = v175;
          os_unfair_lock_unlock(v110 + 4);
          swift_endAccess();

          sub_1AE4B4558(v109, &qword_1EB5DD520, &qword_1AE4EDB98);
          sub_1AE4B4558(v111, &qword_1EB5DD4B8, "R3");
          if (v123)
          {
            v157 = v124;
            v19 = v39;
            v112 = v156;
            goto LABEL_36;
          }

          v112 = v156;
          v19 = v39;
          v113 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, v154[2], v154[3], v154[4]);
          v115 = v158;
          if (v113)
          {
            v116 = sub_1AE4AEC7C(v113, v114);
            v118 = v117;

            v119 = v153;
            sub_1AE4B0730(v116, v118);
            v120 = sub_1AE4D1B1C();
            v157 = v121;
            v147 = v122;
            (*(v159 + 8))(v119, v115);
            if (!v120)
            {
              sub_1AE4ABE40(v152, v19);
              sub_1AE4A41E8(v162, v163);

LABEL_40:

              goto LABEL_41;
            }

LABEL_36:
            v125 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, v154[2], v154[3], v154[4]);
            if (v125)
            {
              v126 = sub_1AE4AF28C(v125);
              v128 = v127;

              MEMORY[0x1B27010F0](v126, v128);
              v150(v112, 0, 1, v151);
              v129 = v146;
              swift_beginAccess();
              sub_1AE4B06C8(v112, v78 + v129, &qword_1EB5DD520, &qword_1AE4EDB98);
              swift_endAccess();
              type metadata accessor for SharedCache.Impl();
              swift_allocObject();

              v131 = sub_1AE4B45DC(v130, v157, v147, v78);
              v132 = v78;

              v133 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, v154[2], v154[3], v154[4]);
              if (v133)
              {
                v134 = sub_1AE4A6A00(v133);

                v135 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, v131[2], v131[3], v131[4]);
                if (v135)
                {
                  v136 = sub_1AE4A6A00(v135);

                  sub_1AE4ABE40(v152, v19);
                  sub_1AE4A41E8(v162, v163);

                  v137 = v134 - v136;
                  v78 = v132;
                  *(v132 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCacheSlide) = v137;
                  v138 = *(v132 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache);
                  *(v132 + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_sharedCache) = v131;
                  goto LABEL_40;
                }

LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  v30 = v185;
  sub_1AE4C9530();
  v159 = v184[0];
  v158 = v184[1];
  v31 = swift_allocError();
  v32 = 0;
  v33 = v158;
  *v34 = v159;
  *(v34 + 16) = v33;
  *(v34 + 32) = v30;
LABEL_6:
  v186 = v31;
  v47 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  if (swift_dynamicCast())
  {
    sub_1AE4DFB64(v179, v180, v181, v182, v183);
    v178 = v31;
    v48 = v31;
    swift_dynamicCast();
    v49 = v173;
    v50 = v174;
    v52 = v175;
    v51 = v176;
    v53 = v177 | 0x80;
    v168 = v173;
    v169 = v174;
    v170 = v175;
    v171 = v176;
    v172 = v177 | 0x80;
    sub_1AE4C9430();
LABEL_10:
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v162, v163);

    goto LABEL_13;
  }

  v186 = v31;
  v54 = v31;
  if (swift_dynamicCast())
  {
    sub_1AE4DB684(v173, v174, v175, v176);
    v178 = v31;
    v55 = v31;
    swift_dynamicCast();
    v49 = v168;
    v50 = v169;
    v52 = v170;
    v51 = v171;
    v179 = v168;
    v180 = v169;
    v181 = v170;
    v182 = v171;
    v53 = 64;
    v183 = 64;
    sub_1AE4C9430();
    goto LABEL_10;
  }

  LODWORD(v159) = 0;

  v186 = v31;
  v56 = v31;
  if (swift_dynamicCast())
  {
    sub_1AE4DFB40(v179, v180, v181, v182, v183);
    v178 = v31;
    v57 = v31;
    swift_dynamicCast();
    v49 = v173;
    v50 = v174;
    v52 = v175;
    v51 = v176;
    v53 = v177;
    v168 = v173;
    v169 = v174;
    v170 = v175;
    v171 = v176;
    v172 = v177;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v162, v163);

    v32 = v159;
LABEL_13:
    v58 = v165;
    if (v164)
    {
      if (!v32)
      {
LABEL_16:
        v60 = v58[9];

        swift_deallocPartialClassInstance();
        v61 = v161;
        *v161 = v49;
        v61[1] = v50;
        v61[2] = v52;
        v61[3] = v51;
        *(v61 + 32) = v53;
        return v58;
      }
    }

    else
    {
      v63 = v165;
      v64 = v165[2];
      v65 = v165[3];
      v66 = v165[4];
      LODWORD(v159) = v32;
      v67 = v165[5];

      v58 = v63;

      v68 = v67;
      LODWORD(v67) = v159;
      sub_1AE4A41E8(v66, v68);
      if (!v67)
      {
        goto LABEL_16;
      }
    }

    v59 = v58[6];

    goto LABEL_16;
  }

LABEL_49:

  sub_1AE4EB140();
  __break(1u);
  v140 = v139;
  v142 = v141;
  v144 = v143;
  sub_1AE4C78AC();
  swift_allocError();
  *v145 = v19;
  *(v145 + 8) = v140;
  *(v145 + 16) = v142;
  *(v145 + 24) = v144;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1AE4A5694()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v3 - v2;
  if (!v2)
  {
    v4 = 0;
  }

  if ((v1 & 0x8000000000000000) != 0 || v4 < v1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v0[1];
  if ((v5 & 0x8000000000000000) != 0 || v4 < v5)
  {
    goto LABEL_13;
  }

  if (v5 > v1)
  {
    if (v2)
    {
      v6 = *(v2 + v1);
      *v0 = sub_1AE4A7CA4(1uLL, v1, v5, v2, v3);
      v0[1] = v7;
      v0[2] = v8;
      v0[3] = v9;
      return;
    }

    goto LABEL_14;
  }

  if (v2)
  {
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1AE4A5774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, unsigned __int8 a10, unint64_t *a11)
{
  v134 = a4;
  v148 = *MEMORY[0x1E69E9840];
  if (a6 < 0)
  {
    goto LABEL_138;
  }

  v13 = a5;
  v121 = a8;
  v17 = *(a5 + 33);

  if (!a6)
  {
LABEL_124:

    v95 = v121;
    *v121 = 0;
    v95[1] = 0;
    goto LABEL_127;
  }

  v18 = 0;
  v119 = a11;
  v128 = a10;
  v19 = a9;
  v20 = &v134[-a3];
  v124 = &v134[-a3];
  if (!a3)
  {
    v20 = 0;
  }

  v21 = a1 < 0 || v20 < a1;
  v22 = v21;
  v24 = a2 < 0 || v20 < a2;
  v131 = v24;
  v132 = v22;
  v25 = qword_1AE4ED448[v17];
  v129 = v17;
  v130 = a2 - a1;
  v122 = a9;
  v125 = a1;
  v126 = a2;
  v123 = a7;
  v120 = a3;
  v127 = a6;
  v135 = v25;
  while (1)
  {
    v26 = v25 * v18;
    if ((v25 * v18) >> 64 != (v25 * v18) >> 63)
    {
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
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
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
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (__OFADD__(v26, v25))
    {
      goto LABEL_133;
    }

    if (v132)
    {
      goto LABEL_134;
    }

    if (v131)
    {
      goto LABEL_135;
    }

    if (v130 < v26 + v25)
    {
      break;
    }

    *&v145 = a1;
    *(&v145 + 1) = a2;
    v146 = a3;
    v147 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();
    v28 = v142 + v26;
    if (__OFADD__(v142, v26))
    {
      goto LABEL_136;
    }

    v29 = v28 + v135;
    if (__OFADD__(v28, v135))
    {
      goto LABEL_137;
    }

    if (a3)
    {
      v27 = v124;
      v21 = v124 < v29;
      LOBYTE(v29) = v129;
      if (v21)
      {
        break;
      }
    }

    else
    {
      v21 = v29 < 1;
      LOBYTE(v29) = v129;
      if (!v21)
      {
        break;
      }
    }

    v29 = v29;
    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        if (!a3)
        {
          goto LABEL_154;
        }

        v30 = bswap32(*(a3 + v28));
        if (v128)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (!a3)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          *(&v142 + 6) = 0;
          *&v142 = 0;
          if (a3 > 0)
          {
            goto LABEL_177;
          }

          if (a3 < 0)
          {
            __break(1u);
LABEL_160:
            v118 = v13;
            if (v19)
            {
              goto LABEL_178;
            }

            __break(1u);
LABEL_162:
            if (v19)
            {
              goto LABEL_178;
            }

            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            v118 = v13;
            v99 = v27 + a3;
            *&v142 = v27 + a3;
            *(&v142 + 1) = v19;
            v143 = 1;
            v144 = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v100 = swift_allocError();
            *v101 = v99;
            *(v101 + 8) = v19;
            *(v101 + 16) = 1;
            *(v101 + 24) = 64;
          }

          else
          {
            *&v145 = &v142;
            *(&v145 + 1) = &v142;
            v146 = 1;
            LOBYTE(v147) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
            v100 = swift_allocError();
            *v113 = &v142;
            *(v113 + 8) = &v142;
            *(v113 + 16) = 1;
            *(v113 + 24) = 64;
          }

          goto LABEL_176;
        }

        v30 = bswap64(*(a3 + v28));
        if (v128)
        {
LABEL_54:

          if (v30 == v19)
          {
            goto LABEL_120;
          }

          goto LABEL_110;
        }
      }
    }

    else if (v29)
    {
      if (!a3)
      {
        goto LABEL_155;
      }

      v30 = bswap32(*(a3 + v28)) >> 16;
      if (v128)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (!a3)
      {
        goto LABEL_156;
      }

      v30 = *(a3 + v28);
      if (v128)
      {
        goto LABEL_54;
      }
    }

    v31 = v13[8];
    v32 = v13[9];
    swift_retain_n();
    sub_1AE4A63DC(a7, v19, 0);
    v33 = v31(v13, v30);
    a3 = v33;
    v34 = v13[2];
    v35 = v13[3];
    v29 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      v27 = &v149;
      v118 = v13;
      if (v29 != 2)
      {
        goto LABEL_157;
      }

      v50 = *(v34 + 16);
      v13 = *(v34 + 24);
      v51 = sub_1AE4EA990();
      if (v51)
      {
        v52 = v51;
        v53 = sub_1AE4EA9B0();
        if (__OFSUB__(v50, v53))
        {
          goto LABEL_149;
        }

        v19 = (v50 - v53 + v52);
        v54 = __OFSUB__(v13, v50);
        v55 = v13 - v50;
        if (v54)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v19 = 0;
        v54 = __OFSUB__(v13, v50);
        v55 = v13 - v50;
        if (v54)
        {
          goto LABEL_141;
        }
      }

      v62 = sub_1AE4EA9A0();
      if (v62 >= v55)
      {
        v63 = v55;
      }

      else
      {
        v63 = v62;
      }

      v64 = &v19[v63];
      if (v19)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0;
      }

      v29 = v65 - v19;
      if (v19)
      {
        v27 = v29;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < a3)
      {
        goto LABEL_143;
      }

      if (a3 < 0)
      {
        goto LABEL_145;
      }

      if (v27 <= a3)
      {
        goto LABEL_162;
      }

      v13 = v118;
      v27 = &v150;
      a7 = v123;
      if (!v19)
      {
        goto LABEL_164;
      }

      if (v29 <= a3)
      {
        goto LABEL_148;
      }

      v66 = v19[a3];
      *&v145 = a3 + 1;
      *(&v145 + 1) = v29;
      v146 = v19;
      v147 = v64;
      v67 = v133;
      sub_1AE4A65CC(v66);
      v72 = v68;
      if (v67)
      {
        goto LABEL_172;
      }

      if (v66 >> 4 > 0xD || ((1 << (v66 >> 4)) & 0x2472) == 0)
      {
        goto LABEL_175;
      }

      v43 = 0;
      v73 = v146;
      if (v146)
      {
        goto LABEL_108;
      }

      result = MEMORY[0x1EEE9AC00](v68);
      a3 = v114;
      v115 = 0;
      v116 = 0;
      v117 = v72;
      v19 = v122;
      if ((v122 & 0x1000000000000000) == 0)
      {
        if ((v122 & 0x2000000000000000) != 0)
        {
          goto LABEL_166;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          goto LABEL_130;
        }
      }
    }

    else if (v29)
    {
      v56 = v34;
      v57 = v34 >> 32;
      v58 = v57 - v56;
      if (v57 < v56)
      {
        goto LABEL_139;
      }

      v59 = sub_1AE4EA990();
      if (v59)
      {
        v60 = v59;
        v61 = sub_1AE4EA9B0();
        if (__OFSUB__(v56, v61))
        {
          goto LABEL_150;
        }

        v19 = (v56 - v61 + v60);
      }

      else
      {
        v19 = 0;
      }

      v75 = sub_1AE4EA9A0();
      if (v75 >= v58)
      {
        v76 = v58;
      }

      else
      {
        v76 = v75;
      }

      v77 = &v19[v76];
      if (v19)
      {
        v78 = v77;
      }

      else
      {
        v78 = 0;
      }

      v29 = v78 - v19;
      if (v19)
      {
        v27 = v29;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < a3)
      {
        goto LABEL_144;
      }

      if (a3 < 0)
      {
        goto LABEL_146;
      }

      if (v27 <= a3)
      {
        goto LABEL_160;
      }

      v27 = &v150;
      a7 = v123;
      if (!v19)
      {
        goto LABEL_165;
      }

      if (v29 <= a3)
      {
        goto LABEL_147;
      }

      v79 = v19[a3];
      *&v145 = a3 + 1;
      *(&v145 + 1) = v29;
      v146 = v19;
      v147 = v77;
      v80 = v133;
      sub_1AE4A65CC(v79);
      v72 = v81;
      if (v80)
      {
        v118 = v13;
LABEL_172:
        v102 = v69;
        v103 = v70;
        v104 = v71;
        sub_1AE4C78AC();
        v100 = swift_allocError();
        *v105 = v72;
LABEL_173:
        *(v105 + 8) = v102;
        *(v105 + 16) = v103;
        *(v105 + 24) = v104;
        while (1)
        {
LABEL_176:
          v136 = v100;
          v107 = v100;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
          swift_dynamicCast();
          v19 = *(&v145 + 1);
          v108 = v145;
          a3 = v146;
          v109 = v147;
          v142 = v145;
          v143 = v146;
          v144 = v147;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();

          sub_1AE4A67B4(v123, v122, 0);

          swift_allocError();
          *v110 = __PAIR128__(v19, v108);
          *(v110 + 16) = a3;
          *(v110 + 24) = v109;
          swift_unexpectedError();
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          v111 = &v19[v29];
          *&v142 = &v19[a3];
          *(&v142 + 1) = &v19[v29];
          v143 = 1;
          v144 = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v100 = swift_allocError();
          *v112 = &v19[a3];
          *(v112 + 8) = v111;
          *(v112 + 16) = 1;
          *(v112 + 24) = 64;
        }
      }

      if (v79 >> 4 > 0xD || ((1 << (v79 >> 4)) & 0x2472) == 0)
      {
LABEL_174:
        v118 = v13;
LABEL_175:
        sub_1AE4C78AC();
        v100 = swift_allocError();
        *(v106 + 8) = 0;
        *(v106 + 16) = 0;
        *v106 = 0;
        *(v106 + 24) = 0x80;
        swift_willThrow();
        goto LABEL_176;
      }

      v43 = 0;
      v73 = v146;
      if (v146)
      {
LABEL_108:
        v82 = v145;
        v83 = DWORD2(v145) - v145;
        v84 = v122;
        sub_1AE4A63DC(a7, v122, 0);
        v85 = v72;
        v19 = v84;
        v47 = sub_1AE4A66EC(a7, v84, (v82 + v73), v83, v85);
        v133 = 0;
        sub_1AE4A67B4(a7, v84, 0);

        v48 = a7;
        v49 = v84;
LABEL_109:
        sub_1AE4A67B4(v48, v49, 0);

        a3 = v120;
        if (v47)
        {
          goto LABEL_120;
        }

        goto LABEL_110;
      }

      result = MEMORY[0x1EEE9AC00](v81);
      a3 = v114;
      v115 = 0;
      v116 = 0;
      v117 = v72;
      v19 = v122;
      if ((v122 & 0x1000000000000000) == 0)
      {
        if ((v122 & 0x2000000000000000) != 0)
        {
          goto LABEL_168;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          goto LABEL_129;
        }
      }
    }

    else
    {
      v136 = v13[2];
      v137 = v35;
      v138 = BYTE2(v35);
      v139 = BYTE3(v35);
      v140 = BYTE4(v35);
      v141 = BYTE5(v35);
      if (BYTE6(v35) < v33)
      {
        goto LABEL_140;
      }

      if (v33 < 0)
      {
        goto LABEL_142;
      }

      v27 = &v136;
      v19 = &v136 + BYTE6(v35);
      if (BYTE6(v35) <= v33)
      {
        goto LABEL_169;
      }

      v36 = *(&v136 + v33);
      *&v145 = v33 + 1;
      *(&v145 + 1) = BYTE6(v35);
      v146 = &v136;
      v147 = &v136 + BYTE6(v35);
      v37 = v133;
      sub_1AE4A65CC(v36);
      v42 = v38;
      a7 = v123;
      if (v37)
      {
        v118 = v13;
        v102 = v39;
        v103 = v40;
        v104 = v41;
        sub_1AE4C78AC();
        v100 = swift_allocError();
        *v105 = v42;
        goto LABEL_173;
      }

      if (v36 >> 4 > 0xD || ((1 << (v36 >> 4)) & 0x2472) == 0)
      {
        goto LABEL_174;
      }

      v43 = 0;
      v44 = v146;
      if (v146)
      {
        v45 = v145;
        v46 = DWORD2(v145) - v145;
        v19 = v122;
        sub_1AE4A63DC(v123, v122, 0);
        v47 = sub_1AE4A66EC(a7, v19, (v45 + v44), v46, v42);
        v133 = 0;
        sub_1AE4A67B4(a7, v19, 0);

        v48 = a7;
        v49 = v19;
        goto LABEL_109;
      }

      result = MEMORY[0x1EEE9AC00](v38);
      a3 = v114;
      v115 = 0;
      v116 = 0;
      v117 = v42;
      v19 = v122;
      if ((v122 & 0x1000000000000000) == 0)
      {
        if ((v122 & 0x2000000000000000) != 0)
        {
          goto LABEL_167;
        }

        if ((a7 & 0x1000000000000000) != 0)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          v98 = v121;
          *v121 = v13;
          v98[1] = v43;
          goto LABEL_127;
        }
      }
    }

    sub_1AE4A63DC(a7, v122, 0);
    sub_1AE4EB090();
    v133 = 0;
    sub_1AE4A67B4(a7, v19, 0);

    sub_1AE4A67B4(a7, v19, 0);
    v86 = v142;

    a3 = v120;
    if (v86)
    {
LABEL_120:
      v87 = v18 + v127;
      if (!__OFADD__(v18, v127))
      {
        v88 = v133;
        if ((v135 * v87) >> 64 == (v135 * v87) >> 63)
        {
          v43 = sub_1AE4A67C4(v129, v135 * v87, v125, v126, a3, v134);
          v90 = v89;
          v92 = v91;
          v94 = v93;

          if (v88)
          {

            goto LABEL_126;
          }

          goto LABEL_131;
        }

LABEL_152:
        __break(1u);
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_110:
    ++v18;

    a2 = v126;
    a1 = v125;
    v25 = v135;
    if (v127 == v18)
    {
      goto LABEL_124;
    }
  }

  v43 = 1;
  v146 = 0;
  v145 = 1uLL;
  v94 = 0x80;
  LOBYTE(v147) = 0x80;
  sub_1AE4C78AC();
  result = swift_willThrowTypedImpl();
  v90 = 0;
  v92 = 0;
LABEL_126:
  v96 = v119;
  *v119 = v43;
  v96[1] = v90;
  v96[2] = v92;
  *(v96 + 24) = v94;
LABEL_127:
  v97 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4A63DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AE4A63F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = qword_1AE4ED448[*(a1 + 32)];
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 56);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v21, 0, 14);
      goto LABEL_17;
    }

    v9 = *(a3 + 16);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      v13 = v9 - v12 + v11;
      sub_1AE4EA9A0();
      if (v13)
      {
LABEL_15:
        v19 = *(v13 + v7);
LABEL_18:
        v20 = *MEMORY[0x1E69E9840];
        return bswap32(v19);
      }
    }

    else
    {
      sub_1AE4EA9A0();
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    v21[0] = a3;
    LOWORD(v21[1]) = a4;
    BYTE2(v21[1]) = BYTE2(a4);
    BYTE3(v21[1]) = BYTE3(a4);
    BYTE4(v21[1]) = BYTE4(a4);
    BYTE5(v21[1]) = BYTE5(a4);
LABEL_17:
    v19 = *(v21 + v7);
    goto LABEL_18;
  }

  v14 = a3;
  if (a3 > a3 >> 32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = sub_1AE4EA990();
  if (!v15)
  {
LABEL_26:
    result = sub_1AE4EA9A0();
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v17 = sub_1AE4EA9B0();
  if (__OFSUB__(v14, v17))
  {
    goto LABEL_23;
  }

  v13 = v14 - v17 + v16;
  result = sub_1AE4EA9A0();
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1AE4A65CC(char a1)
{
  if ((a1 & 0xF) == 0xF)
  {
    sub_1AE4A5694();
    if (!v1)
    {
      v3 = v2;
      if (sub_1AE4AC038(v2) == 6)
      {
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
      }

      else
      {
        if ((v3 & 8) != 0)
        {
          v4 = 0;
        }

        else
        {
          v4 = 1 << (v3 & 7);
        }

        v5 = sub_1AE4AC220(v4);
        if (v5 > 1u)
        {
          if (v5 == 2)
          {
            sub_1AE4AD394(1);
          }

          else
          {
            sub_1AE4AC124(1uLL);
          }
        }

        else
        {
          sub_1AE4A5694();
        }
      }
    }
  }
}

BOOL sub_1AE4A66EC(_BOOL8 result, uint64_t a2, char *__s2, int a4, size_t __n)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      if (__s2)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        return strncmp(v6, __s2, __n) == 0;
      }

      goto LABEL_13;
    }

LABEL_10:
    sub_1AE4EB090();
    if (!v5)
    {
      return v10;
    }

    return v7;
  }

  *__s1 = result;
  v9 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (__s2)
  {
    v6 = __s1;
    return strncmp(v6, __s2, __n) == 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A67B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1AE4A67C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result;
  v7 = qword_1AE4ED448[result];
  v8 = __OFADD__(a2, v7);
  v9 = a2 + v7;
  if (v8)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = a6 - a5;
  if (!a5)
  {
    v12 = 0;
  }

  if (a3 < 0 || v12 < a3)
  {
    goto LABEL_13;
  }

  if (a4 < 0 || v12 < a4)
  {
    goto LABEL_14;
  }

  if (a4 - a3 < v9)
  {
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  result = sub_1AE4EB230();
  if (!__OFADD__(v14, a2))
  {
    return sub_1AE4A6900(v6, v14 + a2, a5, a6);
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1AE4A6900(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = qword_1AE4ED448[result];
  v5 = __OFADD__(a2, v4);
  v6 = a2 + v4;
  if (v5)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a3)
  {
    if (a4 - a3 >= v6)
    {
      goto LABEL_4;
    }

LABEL_9:
    v7 = 1;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return v7;
  }

  if (v6 > 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (result <= 1u)
  {
    if (result)
    {
      if (a3)
      {
        return bswap32(*(a3 + a2)) >> 16;
      }

      goto LABEL_21;
    }

    if (a3)
    {
      return *(a3 + a2);
    }

    goto LABEL_19;
  }

  if (result == 2)
  {
    if (a3)
    {
      return bswap32(*(a3 + a2));
    }

    goto LABEL_20;
  }

  if (a3)
  {
    return bswap64(*(a3 + a2));
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1AE4A6A00(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  v4 = (*(a1 + 64))();
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      *(&v49 + 6) = 0;
      *&v49 = 0;
      if (v4 <= 0)
      {
        v52 = v4;
        v53 = &v49;
        v54 = &v49;
        goto LABEL_36;
      }

      goto LABEL_45;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = sub_1AE4EA990();
    if (v11)
    {
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_46;
    }

    v15 = sub_1AE4EA9A0();
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 >= v5)
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_18:
    v17 = v6;
    v18 = v6 >> 32;
    v19 = v18 - v17;
    if (v18 < v17)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v11 = sub_1AE4EA990();
    if (v11)
    {
      v20 = sub_1AE4EA9B0();
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_49;
      }

      v11 += v17 - v20;
    }

    v21 = sub_1AE4EA9A0();
    if (v21 >= v19)
    {
      v16 = v19;
    }

    else
    {
      v16 = v21;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 < v5)
    {
      goto LABEL_47;
    }

LABEL_29:
    v22 = (v16 + v11);
    if (!v11)
    {
      v22 = 0;
    }

    *&v52 = v5;
    *(&v52 + 1) = v6;
    v53 = v11;
    v54 = v22;
    sub_1AE4A5694();
    v27 = v23;
    if (v1)
    {
      goto LABEL_37;
    }

    sub_1AE4A65CC(v23);
    v29 = v28;
    v30 = sub_1AE4AC038(v27);
    if (v30 == 6)
    {
      goto LABEL_39;
    }

    sub_1AE4AD198(v30, v29, v52, *(&v52 + 1), &v48, &v49);
    v31 = v49;
    goto LABEL_42;
  }

  if (v8)
  {
    goto LABEL_18;
  }

  *&v49 = *(a1 + 16);
  WORD4(v49) = v7;
  BYTE10(v49) = BYTE2(v7);
  BYTE11(v49) = BYTE3(v7);
  BYTE12(v49) = BYTE4(v7);
  BYTE13(v49) = BYTE5(v7);
  if (BYTE6(v7) < v4)
  {
    __break(1u);
    goto LABEL_44;
  }

  *&v52 = v4;
  *(&v52 + 1) = BYTE6(v7);
  v53 = &v49;
  v54 = &v49 + BYTE6(v7);
LABEL_36:
  sub_1AE4A5694();
  v27 = v32;
  if (v1)
  {
LABEL_37:
    v33 = v24;
    v34 = v25;
    v35 = v26;
    sub_1AE4C78AC();
    v36 = swift_allocError();
    *v37 = v27;
    *(v37 + 8) = v33;
    *(v37 + 16) = v34;
    *(v37 + 24) = v35;
LABEL_41:
    v47 = v36;
    v43 = v36;
    v44 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
    swift_dynamicCast();
    v31 = v52;
    v49 = v52;
    v50 = v53;
    v51 = v54;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    goto LABEL_42;
  }

  sub_1AE4A65CC(v32);
  v39 = v38;
  v40 = sub_1AE4AC038(v27);
  if (v40 == 6)
  {
LABEL_39:
    sub_1AE4C78AC();
    v41 = swift_allocError();
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    *v42 = 0;
    *(v42 + 24) = 0x80;
    swift_willThrow();
    v36 = v41;
    goto LABEL_41;
  }

  sub_1AE4AD198(v40, v39, v52, *(&v52 + 1), &v48, &v47);
  v31 = v47;
LABEL_42:
  v45 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1AE4A6E5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_1AE4A6F30(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t sub_1AE4A6FD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *sub_1AE4A702C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a3;
  v6 = a1;
  v68 = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v60 = a1;
      WORD4(v60) = a2;
      BYTE10(v60) = BYTE2(a2);
      BYTE11(v60) = BYTE3(a2);
      BYTE12(v60) = BYTE4(a2);
      BYTE13(v60) = BYTE5(a2);
      v8 = &v60 + BYTE6(a2);
      v9 = &v60;
LABEL_28:
      sub_1AE4A7668(v9, v8, &v64);
      v19 = v3;
      goto LABEL_29;
    }

    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v21 = sub_1AE4EA990();
      if (v21)
      {
        v22 = sub_1AE4EA9B0();
        if (__OFSUB__(v6, v22))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
        }

        v21 += v6 - v22;
      }

      v23 = sub_1AE4EA9A0();
      if (v23 >= v20)
      {
        v24 = (v6 >> 32) - v6;
      }

      else
      {
        v24 = v23;
      }

      v25 = (v24 + v21);
      if (v21)
      {
        v8 = v25;
      }

      else
      {
        v8 = 0;
      }

      v9 = v21;
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v7 != 2)
  {
    *(&v60 + 6) = 0;
    *&v60 = 0;
    v9 = &v60;
    v8 = &v60;
    goto LABEL_28;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_1AE4EA990();
  if (v13)
  {
    v14 = sub_1AE4EA9B0();
    if (__OFSUB__(v11, v14))
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v13 += v11 - v14;
  }

  if (__OFSUB__(v12, v11))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v15 = sub_1AE4EA9A0();
  if (v15 >= v12 - v11)
  {
    v16 = v12 - v11;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 + v13;
  if (v13)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  sub_1AE4A7668(v13, v18, &v64);
  v19 = v3;
  v6 = a1;
  v4 = a3;
LABEL_29:
  v26 = *(&v64 + 1);
  if (*(&v64 + 1) >> 60 == 15)
  {
    sub_1AE4A6FD8(v6, a2);
    v27 = v6;
    v26 = a2;
    if (v7 > 1)
    {
      goto LABEL_31;
    }

    goto LABEL_45;
  }

  v27 = v64;
  v7 = *(&v64 + 1) >> 62;
  if ((*(&v64 + 1) >> 62) <= 1)
  {
LABEL_45:
    if (!v7)
    {
      *&v60 = v27;
      WORD4(v60) = v26;
      BYTE10(v60) = BYTE2(v26);
      BYTE11(v60) = BYTE3(v26);
      BYTE12(v60) = BYTE4(v26);
      BYTE13(v60) = BYTE5(v26);
      v39 = &v60 + BYTE6(v26);
LABEL_48:
      v38 = v19;
      sub_1AE4A7D34(&v60, v39, &v64);
      if (v19)
      {
        v56 = v27;
        v57 = v6;
        goto LABEL_61;
      }

      v52 = v6;
      goto LABEL_64;
    }

    v57 = v6;
    if (v27 >> 32 >= v27)
    {
      v40 = sub_1AE4EA990();
      v56 = v27;
      if (v40)
      {
        v41 = sub_1AE4EA9B0();
        if (__OFSUB__(v27, v41))
        {
          goto LABEL_75;
        }

        v40 += v27 - v41;
      }

      v42 = sub_1AE4EA9A0();
      if (v42 >= (v27 >> 32) - v27)
      {
        v43 = (v27 >> 32) - v27;
      }

      else
      {
        v43 = v42;
      }

      v44 = v43 + v40;
      if (v40)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v38 = v19;
      sub_1AE4A7D34(v40, v45, &v64);
      if (v19)
      {
        goto LABEL_61;
      }

      sub_1AE4A41E8(v6, a2);
      v53 = v64;
LABEL_66:
      v46 = v53;

      sub_1AE4A6FD8(v27, v26);

      sub_1AE4A41E8(v27, v26);
      goto LABEL_67;
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_31:
  if (v7 != 2)
  {
    *(&v60 + 6) = 0;
    *&v60 = 0;
    v39 = &v60;
    goto LABEL_48;
  }

  v57 = v6;
  v29 = *(v27 + 16);
  v28 = *(v27 + 24);
  v30 = sub_1AE4EA990();
  if (v30)
  {
    v31 = sub_1AE4EA9B0();
    if (__OFSUB__(v29, v31))
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 += v29 - v31;
  }

  v32 = __OFSUB__(v28, v29);
  v33 = v28 - v29;
  if (v32)
  {
    goto LABEL_71;
  }

  v34 = sub_1AE4EA9A0();
  if (v34 >= v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = v35 + v30;
  if (v30)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v38 = v19;
  sub_1AE4A7D34(v30, v37, &v64);
  if (!v19)
  {
    v52 = v57;
LABEL_64:
    sub_1AE4A41E8(v52, a2);
    v53 = v64;
    goto LABEL_66;
  }

  v56 = v27;
LABEL_61:
  v59 = v4;
  v46 = v38;
  v47 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v48 = v64;
  v50 = v65;
  v49 = v66;
  v51 = v67;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v63 = v67;
  sub_1AE4C9530();
  swift_willThrowTypedImpl();

  sub_1AE4A41E8(v57, a2);
  sub_1AE4A41E8(v56, v26);
  *v59 = v48;
  *(v59 + 16) = v50;
  *(v59 + 24) = v49;
  *(v59 + 32) = v51;
LABEL_67:
  v54 = *MEMORY[0x1E69E9840];
  return v46;
}

uint64_t sub_1AE4A7564(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v6 - v5;
  if (!v5)
  {
    v7 = 0;
  }

  if (v4 < 0 || v7 < v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[1];
  if (v8 < 0 || v7 < v8)
  {
    goto LABEL_17;
  }

  if (v8 - v4 <= 3)
  {
    if (v5)
    {
      v9 = v5 + v4;
      v10 = v5 + v8;
      sub_1AE4C9530();
      swift_willThrowTypedImpl();
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = xmmword_1AE4EC800;
      *(a2 + 32) = 5;
      return v10;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v11 = *(v5 + v4);
    v12 = bswap32(v11);
    if (result)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }

    *v2 = sub_1AE4A7CA4(4uLL, v4, v8, v5, v6);
    v2[1] = v13;
    v2[2] = v14;
    v2[3] = v15;
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A7668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v42 = a2;
  v5 = a2 - a1;
  if (!a1)
  {
    v5 = 0;
  }

  v39 = 0;
  v40 = v5;
  v41 = a1;
  result = sub_1AE4A7564(1, v37);
  if (v3)
  {
    result = sub_1AE4DFB64(v37[0], v37[1], v37[2], v37[3], v38);
LABEL_20:
    *a3 = xmmword_1AE4ED4C0;
    return result;
  }

  if (result > 1885502052)
  {
    switch(result)
    {
      case 0x70627A65:
        v7 = 0;
        v8 = 2049;
        break;
      case 0x70627A7A:
        v7 = 0;
        v8 = 517;
        break;
      case 0x70627A78:
        v7 = 0;
        v8 = 774;
        break;
      default:
        goto LABEL_20;
    }

LABEL_18:
    v44 = v8;
    goto LABEL_19;
  }

  if (result != 1885501997)
  {
    if (result == 1885502004)
    {
      v7 = 0;
      v8 = 256;
    }

    else
    {
      if (result != 1885502050)
      {
        goto LABEL_20;
      }

      v7 = 0;
      v8 = 1794;
    }

    goto LABEL_18;
  }

  v44 = 0;
  v7 = 1;
LABEL_19:
  result = sub_1AE4C59E0(1uLL);
  if (v7)
  {
    v9 = v39;
    v10 = v41;
    v11 = v42 - v41;
    if (v41)
    {
      v12 = v42 - v41;
    }

    else
    {
      v12 = 0;
    }

    if ((v39 & 0x8000000000000000) == 0 && v12 >= v39)
    {
      v13 = v40;
      v15 = v40 < 0 || v12 < v40;
      while (!v15)
      {
        if ((v13 - v9) < 1)
        {
          goto LABEL_121;
        }

        if (v10)
        {
          if (v11 < v9)
          {
            goto LABEL_158;
          }

          if (v11 < v13)
          {
            goto LABEL_130;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_162;
          }

          if (v13)
          {
            goto LABEL_130;
          }
        }

        if (v13 - v9 <= 7)
        {
          if (!v10)
          {
            goto LABEL_167;
          }

LABEL_123:
          sub_1AE4C94DC();
          swift_willThrowTypedImpl();
          *a3 = xmmword_1AE4ED4C0;
          return sub_1AE4A41E8(0, 0xC000000000000000);
        }

        if (!v10)
        {
          goto LABEL_165;
        }

        v16 = v9 + 8;
        if (__OFADD__(v9, 8))
        {
          goto LABEL_131;
        }

        if (v11 < v16 || (v16 & 0x8000000000000000) != 0 || v11 < v9 || v11 < v13)
        {
          goto LABEL_132;
        }

        if (v13 < v16)
        {
          goto LABEL_133;
        }

        if (v16 < v9)
        {
          goto LABEL_134;
        }

        v17 = (v10 + v16);
        if ((v13 - v16) <= 7)
        {
          goto LABEL_123;
        }

        v18 = v9 + 16;
        if (__OFADD__(v16, 8))
        {
          goto LABEL_135;
        }

        if ((v18 & 0x8000000000000000) != 0 || v11 < v18)
        {
          goto LABEL_136;
        }

        if (v13 < v18)
        {
          goto LABEL_137;
        }

        if (v18 < v16)
        {
          goto LABEL_138;
        }

        v19 = *(v10 + v9);
        if ((bswap64(v19) & 0x8000000000000000) != 0)
        {
          goto LABEL_139;
        }

        v20 = *v17;
        if (v19)
        {
          result = sub_1AE4EAA50();
        }

        v21 = bswap64(v20);
        if (v21 < 0)
        {
          goto LABEL_140;
        }

        if (!v20 || (v13 - v18) < 0 || (v9 = v13, (v13 - v18) >= v21))
        {
          v9 = v18 + v21;
          if (__OFADD__(v18, v21))
          {
            goto LABEL_156;
          }

          if (v9 < 0 || v11 < v9)
          {
            goto LABEL_157;
          }

          if (v13 < v9)
          {
            goto LABEL_141;
          }
        }

        if (v9 < v18)
        {
          goto LABEL_142;
        }

        if (v11 < v9)
        {
          goto LABEL_69;
        }
      }

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
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

LABEL_69:
    __break(1u);
  }

  v22 = result;
  compression_decode_scratch_buffer_size(v44);
  result = swift_slowAlloc();
  scratch_buffer = result;
  if (v22 < 0)
  {
    goto LABEL_164;
  }

  result = swift_slowAlloc();
  v23 = v39;
  v24 = v41;
  v25 = v42 - v41;
  if (v41)
  {
    v26 = v42 - v41;
  }

  else
  {
    v26 = 0;
  }

  if ((v39 & 0x8000000000000000) == 0 && v26 >= v39)
  {
    v27 = result;
    v28 = v40;
    v30 = v40 < 0 || v26 < v40;
    v43 = v30;
    while (!v43)
    {
      if (v28 - v23 < 1)
      {
        *a3 = xmmword_1AE4EE4A0;
        sub_1AE4A6FD8(0, 0xC000000000000000);
        MEMORY[0x1B27020A0](v27, -1, -1);
        MEMORY[0x1B27020A0](scratch_buffer, -1, -1);
        return sub_1AE4A41E8(0, 0xC000000000000000);
      }

      if (v24)
      {
        if (v25 < v23)
        {
          goto LABEL_159;
        }

        if (v25 < v28)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v23)
        {
          goto LABEL_163;
        }

        if (v28 > 0)
        {
          goto LABEL_144;
        }
      }

      if ((v28 - v23) <= 7)
      {
        if (!v24)
        {
          goto LABEL_168;
        }

LABEL_126:
        sub_1AE4C94DC();
        swift_willThrowTypedImpl();
LABEL_127:
        *a3 = xmmword_1AE4ED4C0;
        MEMORY[0x1B27020A0](v27, -1, -1);
        MEMORY[0x1B27020A0](scratch_buffer, -1, -1);
        return sub_1AE4A41E8(0, 0xC000000000000000);
      }

      if (!v24)
      {
        goto LABEL_166;
      }

      v31 = v23 + 8;
      if (__OFADD__(v23, 8))
      {
        goto LABEL_145;
      }

      if (v25 < v31 || (v31 & 0x8000000000000000) != 0 || v25 < v23 || v25 < v28)
      {
        goto LABEL_146;
      }

      if (v28 < v31)
      {
        goto LABEL_147;
      }

      if (v31 < v23)
      {
        goto LABEL_148;
      }

      if ((v28 - v31) <= 7)
      {
        goto LABEL_126;
      }

      v32 = v23 + 16;
      if (__OFADD__(v31, 8))
      {
        goto LABEL_149;
      }

      if ((v32 & 0x8000000000000000) != 0 || v25 < v32)
      {
        goto LABEL_150;
      }

      if (v28 < v32)
      {
        goto LABEL_151;
      }

      if (v32 < v31)
      {
        goto LABEL_152;
      }

      v33 = *(v24 + v23);
      v34 = bswap64(v33);
      v35 = bswap64(*(v24 + v31));
      if (((v35 | v34) & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }

      result = compression_decode_buffer(v27, v34, (v24 + v32), v35, scratch_buffer, v44);
      if (result < 0 || result != v34)
      {
        goto LABEL_127;
      }

      if (v33)
      {
        result = sub_1AE4EAA50();
      }

      if (v35 <= 0 || (v28 - v32) < 0 || (v23 = v28, (v28 - v32) >= v35))
      {
        v23 = v32 + v35;
        if (__OFADD__(v32, v35))
        {
          goto LABEL_160;
        }

        if (v23 < 0 || v25 < v23)
        {
          goto LABEL_161;
        }

        if (v28 < v23)
        {
          goto LABEL_154;
        }
      }

      if (v23 < v32)
      {
        goto LABEL_155;
      }

      if (v25 < v23)
      {
        goto LABEL_120;
      }
    }

LABEL_143:
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
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    return result;
  }

LABEL_120:
  __break(1u);
LABEL_121:
  *a3 = xmmword_1AE4EE4A0;
  sub_1AE4A6FD8(0, 0xC000000000000000);
  return sub_1AE4A41E8(0, 0xC000000000000000);
}

unint64_t sub_1AE4A7CA4(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a4)
  {
    v5 = a5 - a4;
  }

  else
  {
    v5 = 0;
  }

  if ((a2 & 0x8000000000000000) != 0 || v5 < a2)
  {
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) != 0 || v5 < a3)
  {
    goto LABEL_19;
  }

  if (result)
  {
    v6 = a3;
    if (a3 - a2 < result)
    {
LABEL_15:
      if (v6 >= a2)
      {
        return v6;
      }

      goto LABEL_20;
    }
  }

  v6 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if ((v6 & 0x8000000000000000) != 0 || v5 < v6)
    {
      goto LABEL_23;
    }

    if (v6 > a3)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A7D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *&v86 = sub_1AE4EAC50();
  v7 = *(v86 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v86);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v73 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v73 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v83 = &v73 - v19;
  result = MEMORY[0x1EEE9AC00](v18);
  if (a1)
  {
    v22 = a2 - a1;
  }

  else
  {
    v22 = 0;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    *&v85 = &v73 - v21;
    v23 = 0;
    v89 = 0;
    v90 = v22;
    v91 = a1;
    v92 = a2;
    v82 = (v7 + 4);
    v81 = (v7 + 2);
    v80 = v7 + 5;
    v84 = (v7 + 1);
    v24 = MEMORY[0x1E69E7CC8];
    v25 = v22;
    v26 = MEMORY[0x1E69E7CC8];
    while ((v25 & 0x8000000000000000) == 0 && v22 >= v25)
    {
      if (v25 <= v23)
      {
        *a3 = v26;
        a3[1] = v24;
        return result;
      }

      result = sub_1AE4A83A4(&v89, v87, &v93);
      if (v3)
      {
        v70 = v88;
        v85 = v87[1];
        v86 = v87[0];

        sub_1AE4C9530();
        result = swift_allocError();
        v71 = v85;
        *v72 = v86;
        *(v72 + 16) = v71;
        *(v72 + 32) = v70;
        return result;
      }

      if (v98 >> 1 >= 0x7FuLL || (v27 = v97 | (v98 << 32), v27 >> 38 == 2))
      {
        v23 = v89;
        if (v91)
        {
          v22 = v92 - v91;
        }

        else
        {
          v22 = 0;
        }

        if (v89 < 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v76 = v7;
        v28 = v17;
        v78 = v14;
        v79 = v11;
        v77 = 0;
        v30 = v95;
        v29 = v96;
        v32 = v93;
        v31 = v94;
        if (v27 >> 38)
        {

          MEMORY[0x1B27010F0](v32, v31);
          v46 = v30;
          v14 = v78;
          MEMORY[0x1B27010F0](v46, v29);
          v11 = v79;
          (*v82)(v79, v14, v86);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = v24;
          v48 = sub_1AE4A9844(v28);
          v50 = v24[2];
          v51 = (v49 & 1) == 0;
          v52 = __OFADD__(v50, v51);
          v53 = v50 + v51;
          if (v52)
          {
            goto LABEL_55;
          }

          v54 = v49;
          if (v24[3] >= v53)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v69 = v48;
              sub_1AE4E9E8C();
              v48 = v69;
            }
          }

          else
          {
            sub_1AE4D9C5C(v53, isUniquelyReferenced_nonNull_native);
            v48 = sub_1AE4A9844(v28);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_57;
            }
          }

          v17 = v28;
          v7 = v76;
          v76 = v26;
          v24 = v99;
          if (v54)
          {
            v63 = v86;
            (v7[5])(v99[7] + v7[9] * v48, v11, v86);
          }

          else
          {
            v67 = v48;
            v68 = v83;
            v63 = v86;
            (*v81)(v83, v17, v86);
            sub_1AE4DADFC(v67, v68, v11, v24);
          }

          sub_1AE4A9FD0(&v93);
          result = (*v84)(v17, v63);
          v23 = v89;
          if (v91)
          {
            v22 = v92 - v91;
          }

          else
          {
            v22 = 0;
          }

          v3 = v77;
          v26 = v76;
          if (v89 < 0)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v75 = a3;
          sub_1AE4AC0C0(v93, v94, v95, v96, v27);
          v33 = v85;
          MEMORY[0x1B27010F0](v32, v31);
          if ((v27 & 0x100000000) != 0)
          {
            v34 = 0;
          }

          else
          {
            v34 = v27;
          }

          v74 = v34;
          v35 = swift_isUniquelyReferenced_nonNull_native();
          v99 = v26;
          v37 = sub_1AE4A9844(v33);
          v38 = v26;
          v39 = v26[2];
          v40 = (v36 & 1) == 0;
          v41 = v39 + v40;
          if (__OFADD__(v39, v40))
          {
            goto LABEL_56;
          }

          v42 = v36;
          v43 = v38[3];
          v73 = v28;
          if (v43 >= v41)
          {
            if ((v35 & 1) == 0)
            {
              sub_1AE4E98F4();
            }
          }

          else
          {
            sub_1AE4A9B00(v41, v35);
            v44 = sub_1AE4A9844(v85);
            if ((v42 & 1) != (v45 & 1))
            {
              goto LABEL_57;
            }

            v37 = v44;
          }

          v56 = v85;
          v57 = v99;
          v58 = HIDWORD(v27) & 1;
          v7 = v76;
          if (v42)
          {
            v59 = v99;
            v60 = v99[7] + 24 * v37;
            *v60 = v30;
            *(v60 + 8) = v29;
            *(v60 + 16) = v74;
            *(v60 + 20) = v58;
            v61 = v86;
            v62 = v56;
          }

          else
          {
            v64 = v83;
            v62 = v85;
            (*v81)(v83);
            v65 = v74 | (v58 << 32);
            v66 = v64;
            v61 = v86;
            v59 = v57;
            sub_1AE4A9EF4(v37, v66, v30, v29, v65, v57);
          }

          sub_1AE4A9FD0(&v93);
          result = (*v84)(v62, v61);
          v23 = v89;
          if (v91)
          {
            v22 = v92 - v91;
          }

          else
          {
            v22 = 0;
          }

          v3 = v77;
          a3 = v75;
          v11 = v79;
          v14 = v78;
          v17 = v73;
          if (v89 < 0)
          {
LABEL_52:
            __break(1u);
            break;
          }

          v26 = v59;
        }
      }

      v25 = v90;
      if (v22 < v23)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_1AE4EB1C0();
  __break(1u);
  return result;
}

unint64_t sub_1AE4A83A4@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v70 = *a1;
  v71 = v7;
  *&v72 = v10;
  *(&v72 + 1) = v9;
  result = sub_1AE4A7564(0, v68);
  if (v3)
  {
    v13 = v68[0];
    v12 = v68[1];
    v14 = v69;
LABEL_11:
    *a2 = v13;
    *(a2 + 16) = v12;
    *(a2 + 32) = v14;
    return result;
  }

  if (result != 825246017)
  {
    v64 = result;
    v65 = 0;
    v66 = 0u;
    v14 = 2;
    v67 = 2;
    v24 = result;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = 0uLL;
    v13 = v24;
    goto LABEL_11;
  }

  v15 = sub_1AE4A8B88(0, v68);
  v57 = v7;
  v73 = v10;
  v58 = v9;
  v53 = a3;
  v17 = v70;
  v16 = v71;
  v18 = v72;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  sub_1AE4EB230();
  v60 = v17;
  v61 = v16;
  v62 = v18;
  result = sub_1AE4EB230();
  v19 = v15;
  v20 = v59 + v15;
  if (__OFADD__(v59, v15))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v21 = v20 - 6;
  v22 = v73;
  if (__OFSUB__(v20, 6))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v54 = v19;
  if (v21 < v63)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v64 = v8;
  v65 = v7;
  *&v66 = v73;
  *(&v66 + 1) = v58;
  v23 = &v64;
  result = sub_1AE4EB230();
  if (v63 < v60 || v61 < v21)
  {
    v60 = v8;
    v61 = v7;
    *&v62 = v22;
    *(&v62 + 1) = v58;
    sub_1AE4EB230();
    v64 = v63;
    v65 = v21;
    v66 = v63;
    v14 = 4;
    v67 = 4;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = v63;
    *&v13 = v63;
    *(&v13 + 1) = v21;
    goto LABEL_11;
  }

  if (v63 < v8 || v7 < v21)
  {
    goto LABEL_100;
  }

  v48 = 0;
  v46 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v55 = 0;
  v25 = 0;
  v60 = v63;
  v61 = v21;
  *&v62 = v73;
  *(&v62 + 1) = v58;
  v51 = 4;
  v56 = 1;
  v47 = 0x100000000;
  do
  {
LABEL_16:
    v26 = v60;
    v27 = *(&v62 + 1);
    v28 = v62;
    v29 = *(&v62 + 1) - v62;
    if (!v62)
    {
      v29 = 0;
    }

    if (v60 < 0 || v29 < v60)
    {
LABEL_82:
      __break(1u);
LABEL_83:

      v43 = 0;
LABEL_84:
      v44 = 0;
      v41 = 0;
      goto LABEL_85;
    }

    v30 = v61;
    while (1)
    {
      if (v30 < 0 || v29 < v30)
      {
        __break(1u);
        goto LABEL_97;
      }

      if (v30 <= v26)
      {
        goto LABEL_65;
      }

      result = sub_1AE4A8C90(&v60, v68);
      v23 = result;
      v33 = v31;
      if (v32 > 4u)
      {
        break;
      }

      if (v32 <= 1u)
      {
        if (v32)
        {

          v26 = v60;
          v27 = *(&v62 + 1);
          v28 = v62;
          v29 = *(&v62 + 1) - v62;
          if (!v62)
          {
            v29 = 0;
          }

          if (v60 < 0)
          {
            goto LABEL_82;
          }

          v30 = v61;
          v55 = v33;
          v49 = v23;
        }

        else
        {

          v26 = v60;
          v27 = *(&v62 + 1);
          v28 = v62;
          v29 = *(&v62 + 1) - v62;
          if (!v62)
          {
            v29 = 0;
          }

          if (v60 < 0)
          {
            goto LABEL_82;
          }

          v30 = v61;
          v25 = v33;
          v50 = v23;
        }
      }

      else
      {
        if (v32 != 2)
        {
          if (v32 == 3)
          {
            result = sub_1AE4A9574(result, v31, 3u);
            v47 = 0;
            v48 = v23;
            goto LABEL_16;
          }

          if (result > 0x45u)
          {
            if (result == 70)
            {
              v34 = 1;
            }

            else
            {
              if (result != 76)
              {
LABEL_95:

                v45 = v23;
                v64 = v23;
                sub_1AE4C9530();
                v65 = 0;
                v66 = 0u;
                v67 = 0;
                swift_willThrowTypedImpl();
                result = sub_1AE4A9574(v23, v33, 4u);
                v12 = 0uLL;
                v14 = 0;
                v13 = v45;
                goto LABEL_11;
              }

              v34 = 3;
            }
          }

          else
          {
            v34 = result;
            if (result)
            {
              if (result != 68)
              {
                goto LABEL_95;
              }

              v34 = 2;
            }
          }

          v51 = v34;
          result = sub_1AE4A9574(result, v31, 4u);
          v26 = v60;
          v27 = *(&v62 + 1);
          v28 = v62;
          v29 = *(&v62 + 1) - v62;
          if (!v62)
          {
            v29 = 0;
          }

          if (v60 < 0)
          {
            goto LABEL_82;
          }

          goto LABEL_25;
        }

        result = sub_1AE4A9574(result, v31, 2u);
        v26 = v60;
        v27 = *(&v62 + 1);
        v28 = v62;
        v29 = *(&v62 + 1) - v62;
        if (!v62)
        {
          v29 = 0;
        }

        if (v60 < 0)
        {
          goto LABEL_82;
        }

        v56 = 0;
        v30 = v61;
        v52 = v23;
      }

LABEL_26:
      if (v29 < v26)
      {
        goto LABEL_82;
      }
    }

    if (v32 == 6)
    {
      v23 = 0;
      result = sub_1AE4A9574(result, v31, 6u);
LABEL_22:
      v26 = v60;
      v27 = *(&v62 + 1);
      v28 = v62;
      v29 = *(&v62 + 1) - v62;
      if (!v62)
      {
        v29 = 0;
      }

      if (v60 < 0)
      {
        goto LABEL_82;
      }

LABEL_25:
      v30 = v61;
      goto LABEL_26;
    }

    if (v32 == 255)
    {
      goto LABEL_22;
    }

    v26 = 0;
    result = sub_1AE4A9574(result, v31, 5u);
    v35 = __CFADD__(v46, v23);
    v46 += v23;
  }

  while (!v35);
  __break(1u);
LABEL_65:
  v36 = v52;
  if (v56)
  {
    v36 = 0;
  }

  if (v36 < 0)
  {
    goto LABEL_101;
  }

  v37 = v27;
  result = v54 + v36;
  if (__OFADD__(v54, v36))
  {
    goto LABEL_102;
  }

  result = sub_1AE4A7CA4(result, v8, v57, v73, v58);
  *v5 = result;
  v5[1] = v38;
  v5[2] = v39;
  v5[3] = v40;
  if (v51 > 1u)
  {
    v23 = v53;
    v5 = v25;
    if (v51 == 2)
    {

      v43 = 0;
      v5 = 0;
      goto LABEL_84;
    }

    if (v51 != 3)
    {

      v64 = 4;
      v65 = 0;
      v66 = 0u;
      v14 = 6;
      v67 = 6;
      sub_1AE4C9530();
      result = swift_willThrowTypedImpl();
      v12 = 0uLL;
      v13 = xmmword_1AE4EC800;
      goto LABEL_11;
    }

    if (!v25)
    {
      goto LABEL_83;
    }

    v41 = v55;
    if (v55)
    {
      v42 = 0x4000000000;
      v44 = v49;
      v43 = v50;
      goto LABEL_86;
    }

    v43 = 0;
    v5 = 0;
    v44 = 0;
LABEL_85:
    v42 = 0xFE00000000;
LABEL_86:
    *v23 = v43;
    *(v23 + 8) = v5;
    *(v23 + 16) = v44;
    *(v23 + 24) = v41;
    *(v23 + 32) = v42;
    *(v23 + 36) = BYTE4(v42);
    return result;
  }

  v5 = v25;
  if (!v51)
  {

    v43 = 0;
    v5 = 0;
    v44 = 0;
    v41 = 0;
    v42 = 0xFE00000000;
    v23 = v53;
    goto LABEL_86;
  }

  if (!v25)
  {
    v64 = 2;
    v65 = 0;
    v66 = 0u;
    v14 = 6;
    v67 = 6;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = 0uLL;
    v13 = xmmword_1AE4EC810;
    goto LABEL_11;
  }

  if (v56)
  {

    v64 = 3;
    v65 = 0;
    v66 = 0u;
    v14 = 6;
    v67 = 6;
    sub_1AE4C9530();
    result = swift_willThrowTypedImpl();
    v12 = 0uLL;
    v13 = xmmword_1AE4EE4B0;
    goto LABEL_11;
  }

  v64 = v26;
  v65 = v30;
  *&v66 = v28;
  *(&v66 + 1) = v37;
  result = sub_1AE4EB230();
  if (v46 < 0)
  {
    goto LABEL_103;
  }

  v44 = *(&v63 + 1) + v46;
  v23 = v53;
  v43 = v50;
  if (__OFADD__(*(&v63 + 1), v46))
  {
    goto LABEL_104;
  }

  if (v52 < 0)
  {
    goto LABEL_105;
  }

  v41 = v44 + v52;
  if (__OFADD__(v44, v52))
  {
    goto LABEL_106;
  }

  if (v41 >= v44)
  {
    v42 = v47 | v48;
    goto LABEL_86;
  }

LABEL_107:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A8B88(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v6 - v5;
  if (!v5)
  {
    v7 = 0;
  }

  if (v4 < 0 || v7 < v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v2[1];
  if (v8 < 0 || v7 < v8)
  {
    goto LABEL_17;
  }

  if (v8 - v4 <= 1)
  {
    if (v5)
    {
      v9 = v5 + v4;
      v10 = v5 + v8;
      sub_1AE4C9530();
      swift_willThrowTypedImpl();
      *a2 = v9;
      *(a2 + 8) = v10;
      *(a2 + 16) = xmmword_1AE4EC810;
      *(a2 + 32) = 5;
      return v10;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v11 = bswap32(*(v5 + v4)) >> 16;
    if (result)
    {
      v10 = v11;
    }

    else
    {
      v10 = *(v5 + v4);
    }

    *v2 = sub_1AE4A7CA4(2uLL, v4, v8, v5, v6);
    v2[1] = v12;
    v2[2] = v13;
    v2[3] = v14;
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1AE4A8C90(uint64_t *a1, uint64_t a2)
{
  result = sub_1AE4A7564(0, v39);
  if (v2)
  {
    v6 = v39[0];
    v7 = v39[1];
    v8 = v40;
LABEL_3:
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    return result;
  }

  LODWORD(v9) = result;
  LOBYTE(v10) = sub_1AE4A9284(result);
  v11 = sub_1AE4A9330(v9);
  result = 0;
  switch(v11)
  {
    case 1:
      goto LABEL_32;
    case 2:
      goto LABEL_62;
    case 3:
    case 11:
      v12 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v13 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v13 < 8)
      {
        goto LABEL_12;
      }

      v14 = v12 + 8;
      if (__OFADD__(v12, 8))
      {
        goto LABEL_89;
      }

      v15 = v9 - a2;
      if (!a2)
      {
        v15 = 0;
      }

      if (v14 < 0 || v15 < v14)
      {
        goto LABEL_94;
      }

      if (v10 < v14)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_12:
      if (v14 >= v12)
      {
LABEL_82:
        result = 0;
        *a1 = v14;
        a1[1] = v10;
        a1[2] = a2;
        a1[3] = v9;
        return result;
      }

      __break(1u);
LABEL_14:
      v16 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v17 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v17 >= 0xC)
      {
        v14 = v16 + 12;
        if (__OFADD__(v16, 12))
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        v18 = v9 - a2;
        if (!a2)
        {
          v18 = 0;
        }

        if (v14 < 0 || v18 < v14)
        {
          goto LABEL_101;
        }

        if (v10 < v14)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }
      }

      if (v14 >= v16)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_23:
      v19 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v20 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v20 >= 0x14)
      {
        v14 = v19 + 20;
        if (__OFADD__(v19, 20))
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        v21 = v9 - a2;
        if (!a2)
        {
          v21 = 0;
        }

        if (v14 < 0 || v21 < v14)
        {
          goto LABEL_102;
        }

        if (v10 < v14)
        {
          goto LABEL_91;
        }
      }

      if (v14 >= v19)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_32:
      v22 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v23 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v23 >= 2)
      {
        v14 = v22 + 2;
        if (__OFADD__(v22, 2))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v24 = v9 - a2;
        if (!a2)
        {
          v24 = 0;
        }

        if (v14 < 0 || v24 < v14)
        {
          goto LABEL_103;
        }

        if (v10 < v14)
        {
          goto LABEL_92;
        }
      }

      if (v14 >= v22)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_41:
      v25 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v26 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v26 >= 0x20)
      {
        v14 = v25 + 32;
        if (__OFADD__(v25, 32))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v27 = v9 - a2;
        if (!a2)
        {
          v27 = 0;
        }

        if (v14 < 0 || v27 < v14)
        {
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          JUMPOUT(0x1AE4A9248);
        }

        if (v10 >= v14)
        {
          goto LABEL_48;
        }

        goto LABEL_93;
      }

LABEL_48:
      if (v14 >= v25)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_50:
      if (v10 != 5 && v10 != 2)
      {
LABEL_73:
        v8 = 1;
        sub_1AE4C9530();
        result = swift_willThrowTypedImpl();
        v7 = 0uLL;
        v6 = v9;
        goto LABEL_3;
      }

      return sub_1AE4C58DC(0, v39);
    case 4:
      if (v10 != 5 && v10 != 2)
      {
        goto LABEL_73;
      }

      return sub_1AE4A8B88(0, v39);
    case 5:
      goto LABEL_71;
    case 6:
      goto LABEL_50;
    case 7:
      if (v10 == 3)
      {
        return sub_1AE4A7564(0, v39);
      }

LABEL_62:
      v29 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v30 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (v30 < 4)
      {
        goto LABEL_69;
      }

      v14 = v29 + 4;
      if (__OFADD__(v29, 4))
      {
        goto LABEL_95;
      }

      v31 = v9 - a2;
      if (!a2)
      {
        v31 = 0;
      }

      if (v14 < 0 || v31 < v14)
      {
        goto LABEL_96;
      }

      if (v10 < v14)
      {
        goto LABEL_88;
      }

LABEL_69:
      if (v14 >= v29)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_71:
      if (v10 != 5 && v10 != 2)
      {
        goto LABEL_73;
      }

      return sub_1AE4A7564(0, v39);
    case 8:
      goto LABEL_23;
    case 9:
      goto LABEL_41;
    case 10:
      v28 = sub_1AE4A8B88(0, v39);
      if (v10 <= 1u)
      {
        return sub_1AE4A9588(v28, v39);
      }

      v35 = sub_1AE4A7CA4(v28, *a1, a1[1], a1[2], a1[3]);
      result = 0;
      *a1 = v35;
      a1[1] = v36;
      a1[2] = v37;
      a1[3] = v38;
      return result;
    case 12:
      goto LABEL_14;
    case 13:
      return result;
    case 14:
      goto LABEL_73;
    default:
      if (v10 == 4)
      {
        return sub_1AE4A9480(v39);
      }

      v32 = *a1;
      v10 = a1[1];
      a2 = a1[2];
      v9 = a1[3];
      v33 = sub_1AE4BA9B0(*a1, v10, a2, v9);
      v14 = v10;
      if (!v33)
      {
        goto LABEL_81;
      }

      v14 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_107;
      }

      v34 = v9 - a2;
      if (!a2)
      {
        v34 = 0;
      }

      if (v14 < 0 || v34 < v14)
      {
        goto LABEL_108;
      }

      if (v10 < v14)
      {
        goto LABEL_105;
      }

LABEL_81:
      if (v14 >= v32)
      {
        goto LABEL_82;
      }

      goto LABEL_106;
  }
}

uint64_t sub_1AE4A9284(int a1)
{
  v1 = a1 & 0xFFFFFF;
  if ((a1 & 0xFFFFFFu) > 0x544143)
  {
    if (v1 == 5521732)
    {
      return 2;
    }

    if (v1 != 5521744)
    {
      if (v1 == 5521752)
      {
        return 5;
      }

      return 6;
    }

    return 0;
  }

  else
  {
    if (v1 == 4935244)
    {
      return 1;
    }

    if (v1 != 5265748)
    {
      if (v1 == 5458755)
      {
        return 3;
      }

      return 6;
    }

    return 4;
  }
}

uint64_t sub_1AE4A9330(unsigned int a1)
{
  v1 = HIBYTE(a1) - 42;
  result = 0;
  switch(v1)
  {
    case 0:
      result = 13;
      break;
    case 7:
      return result;
    case 8:
      result = 1;
      break;
    case 10:
      result = 2;
      break;
    case 14:
      result = 3;
      break;
    case 23:
      result = 4;
      break;
    case 24:
      result = 5;
      break;
    case 25:
      result = 6;
      break;
    case 28:
      result = 7;
      break;
    case 29:
      result = 8;
      break;
    case 30:
      result = 9;
      break;
    case 38:
      result = 10;
      break;
    case 41:
      result = 11;
      break;
    case 42:
      result = 12;
      break;
    default:
      result = 14;
      break;
  }

  return result;
}

unint64_t sub_1AE4A9480(unint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if ((v2 & 0x8000000000000000) != 0 || v5 < v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[1];
  if ((v6 & 0x8000000000000000) != 0 || v5 < v6)
  {
    goto LABEL_14;
  }

  if (v6 > v2)
  {
    if (v3)
    {
      v7 = *(v3 + v2);
      *v1 = sub_1AE4A7CA4(1uLL, v2, v6, v3, v4);
      v1[1] = v8;
      v1[2] = v9;
      v1[3] = v10;
      return v7;
    }

    goto LABEL_15;
  }

  if (v3)
  {
    v11 = result;
    v12 = v3 + v2;
    v7 = v3 + v6;
    sub_1AE4C9530();
    swift_willThrowTypedImpl();
    *v11 = v12;
    *(v11 + 8) = v7;
    *(v11 + 16) = xmmword_1AE4EC840;
    *(v11 + 32) = 5;
    return v7;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1AE4A9574(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1AE4AC060(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AE4A9588(int64_t a1, uint64_t a2)
{
  v5 = *(*(sub_1AE4EAD70() - 8) + 64);
  result = MEMORY[0x1EEE9AC00]();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = v2[2];
  v11 = v2[3];
  if (v10)
  {
    v12 = v11 - v10;
  }

  else
  {
    v12 = 0;
  }

  if (v9 < 0 || v12 < v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v2[1];
  if (v13 < 0 || v12 < v13)
  {
    goto LABEL_19;
  }

  if (v13 - v9 >= a1)
  {
    v20 = *v2;
    v21 = v13;
    v22 = v10;
    v23 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    result = sub_1AE4EB230();
    if (!__OFADD__(v25, a1))
    {
      if (v25 + a1 >= v25)
      {
        v20 = v25;
        v21 = v25 + a1;
        v22 = v10;
        v23 = v11;
        sub_1AE4EAD60();
        sub_1AE4AC078(&qword_1EB5DD158, &qword_1EB5DD298, &qword_1AE4ECE10);
        v17 = sub_1AE4EAD50();
        if (v18)
        {
          v8 = v17;
          sub_1AE4A97B4(a1);
          return v8;
        }

        v20 = 0;
        v21 = 0;
        v16 = 1;
        v22 = 0;
        v23 = 1;
        v24 = 5;
        sub_1AE4C9530();
        swift_willThrowTypedImpl();
        v14 = 0;
        v15 = 0;
        a1 = 0;
LABEL_16:
        *a2 = v14;
        *(a2 + 8) = v15;
        *(a2 + 16) = a1;
        *(a2 + 24) = v16;
        *(a2 + 32) = 5;
        return v8;
      }

      goto LABEL_21;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10)
  {
    v14 = v10 + v9;
    v15 = v10 + v13;
    v20 = v10 + v9;
    v21 = v10 + v13;
    v22 = a1;
    v23 = 0;
    v24 = 5;
    sub_1AE4C9530();
    swift_willThrowTypedImpl();
    v16 = 0;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_1AE4A97B4(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v1;
      v3 = v1[2];
      if (v3)
      {
        v4 = v1[3] - v3;
      }

      else
      {
        v4 = 0;
      }

      if ((v2 & 0x8000000000000000) == 0 && v4 >= v2)
      {
        v5 = v1[1];
        if ((v5 & 0x8000000000000000) == 0 && v4 >= v5)
        {
          if (v5 - v2 < result)
          {
LABEL_25:
            __break(1u);
            return result;
          }

          v6 = v2 + result;
          if (!__OFADD__(v2, result))
          {
            if ((v6 & 0x8000000000000000) == 0 && v4 >= v6)
            {
              if (v5 >= v6)
              {
                if (v6 >= v2)
                {
                  *v1 = v6;
                  return result;
                }

                goto LABEL_24;
              }

LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AE4A9844(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1AE4EAC50();
  v5 = MEMORY[0x1E69E83A8];
  sub_1AE4A9918(&qword_1EB5DD1A8, MEMORY[0x1E69E83A8]);
  v6 = sub_1AE4EACE0();
  return sub_1AE4A9960(a1, v6, MEMORY[0x1E69E83A8], &qword_1EB5DD168, v5, MEMORY[0x1E69E83C0]);
}

uint64_t sub_1AE4A9918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AE4A9960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1AE4A9918(v24, v25);
      v20 = sub_1AE4EAD20();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1AE4A9B00(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1AE4EAC50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5DD610, &qword_1AE4EDC48);
  v48 = a2;
  result = sub_1AE4EB170();
  v14 = result;
  if (*(v11 + 16))
  {
    v55 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    v47 = v11;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v54 = *(v7 + 72);
      v30 = v29 + v54 * v28;
      if (v48)
      {
        (*v49)(v55, v30, v6);
      }

      else
      {
        (*v45)(v55, v30, v6);
      }

      v31 = *(v11 + 56) + 24 * v28;
      v32 = *(v31 + 20);
      v52 = *(v31 + 16);
      v53 = v32;
      v33 = *(v31 + 8);
      v50 = *v31;
      v51 = v33;
      v34 = *(v14 + 40);
      sub_1AE4AA0A8(&qword_1EB5DD1A8, MEMORY[0x1E69E83A8]);
      result = sub_1AE4EACE0();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v54 * v22, v55, v6);
      v23 = *(v14 + 56) + 24 * v22;
      v24 = v51;
      *v23 = v50;
      *(v23 + 8) = v24;
      LOBYTE(v24) = v53;
      *(v23 + 16) = v52;
      *(v23 + 20) = v24;
      ++*(v14 + 16);
      v7 = v46;
      v11 = v47;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v11 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1AE4A9EF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_1AE4EAC50();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  *(v15 + 20) = BYTE4(a5) & 1;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_1AE4A9FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD7D8, &qword_1AE4EE5C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE4AA038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 37))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 36) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 36) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t get_enum_tag_for_layout_string_4Dyld10AARDecoderV12ArchiveEntryO(uint64_t a1)
{
  v1 = *(a1 + 36) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AE4AA0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AE4AA0F0(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v69 = a3;
  v4 = v3;
  v75 = *MEMORY[0x1E69E9840];
  v7 = sub_1AE4EAA30();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1AE4EAC50();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v61[-v17];

  MEMORY[0x1B27010F0](a1, a2);
  v19 = v3[1];
  MEMORY[0x1B2700FF0](0, 0xE000000000000000);
  sub_1AE4AA894(v16, v19);
  v20 = *(v12 + 8);
  v20(v16, v11);
  v21 = *v4;
  if (!*(*v4 + 16))
  {
    goto LABEL_10;
  }

  v22 = sub_1AE4A9844(v18);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

  v65 = v20;
  v25 = *(v21 + 56) + 24 * v22;
  v27 = *v25;
  v26 = *(v25 + 8);
  v20 = *(v25 + 16);
  if (*(v25 + 20) == 1)
  {
    if (v20 > 1)
    {
LABEL_46:
      *&v71 = a1;
      *(&v71 + 1) = a2;
      v72 = 0;
      v73 = 0;
      v46 = 3;
      v74 = 3;
      sub_1AE4C9530();
      swift_willThrowTypedImpl();
      v65(v18, v11);

      v31 = 0;
      v40 = 0;
      v47 = a1;
LABEL_69:
      v54 = v69;
      *v69 = v47;
      v54[1] = a2;
      v54[2] = v31;
      v54[3] = v40;
      *(v54 + 32) = v46;
      goto LABEL_12;
    }

    v28 = v4[2];
    a1 = v4[3];
    v29 = a1 >> 62;
    v20 = v65;
    if ((a1 >> 62) <= 1)
    {
      if (!v29)
      {
        *&v71 = v4[2];
        WORD4(v71) = a1;
        BYTE10(v71) = BYTE2(a1);
        BYTE11(v71) = BYTE3(a1);
        BYTE12(v71) = BYTE4(a1);
        BYTE13(v71) = BYTE5(a1);
        v30 = v26 - v27;
        if (!__OFSUB__(v26, v27))
        {
          goto LABEL_77;
        }

        __break(1u);
LABEL_10:
        v31 = 0;
LABEL_11:
        v20(v18, v11);
LABEL_12:
        v32 = *MEMORY[0x1E69E9840];
        return v31;
      }

      v64 = v26;
      a2 = v27;
      v27 = v28;
      if (v28 <= v28 >> 32)
      {
        v48 = sub_1AE4EA990();
        if (v48)
        {
          v49 = v48;
          v50 = sub_1AE4EA9B0();
          if (!__OFSUB__(v27, v50))
          {
            v4 = (v27 - v50 + v49);
            sub_1AE4EA9A0();
            if (v4)
            {
              v28 = v64;
              v30 = v64 - a2;
              if (!__OFSUB__(v64, a2))
              {
                goto LABEL_75;
              }

              __break(1u);
              goto LABEL_54;
            }

LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          goto LABEL_81;
        }

LABEL_89:
        sub_1AE4EA9A0();
        goto LABEL_90;
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v29 != 2)
    {
LABEL_54:
      *(&v71 + 6) = 0;
      *&v71 = 0;
      v30 = v26 - v27;
      if (!__OFSUB__(v26, v27))
      {
        goto LABEL_77;
      }

      __break(1u);
LABEL_57:
      v31 = v23;
      v40 = v23 >> 32;
      goto LABEL_58;
    }

    v64 = v26;
    a2 = v27;
    v27 = *(v28 + 16);
    v36 = sub_1AE4EA990();
    if (v36)
    {
      v37 = v36;
      v38 = sub_1AE4EA9B0();
      if (__OFSUB__(v27, v38))
      {
        goto LABEL_80;
      }

      v4 = (v27 - v38 + v37);
      sub_1AE4EA9A0();
      if (v4)
      {
        v28 = v64;
        v30 = v64 - a2;
        if (!__OFSUB__(v64, a2))
        {
          goto LABEL_75;
        }

        __break(1u);
LABEL_25:
        v29 = v23;
        v35 = v23 >> 32;
        goto LABEL_26;
      }
    }

    else
    {
      sub_1AE4EA9A0();
    }

    __break(1u);
    goto LABEL_89;
  }

  v23 = v4[2];
  v34 = v4[3];
  v28 = v34 >> 62;
  if ((v34 >> 62) <= 1)
  {
    if (!v28)
    {
      v29 = 0;
      v35 = BYTE6(v34);
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  if (v28 != 2)
  {
    goto LABEL_28;
  }

  v29 = *(v23 + 16);
  v35 = *(v23 + 24);
LABEL_26:
  if (v35 >= v29)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_28:
  v29 = 0;
  v35 = 0;
LABEL_29:
  if (v27 < v29 || v35 < v26)
  {
    if (v28 <= 1)
    {
      a1 = v65;
      if (!v28)
      {
        v31 = 0;
        v40 = BYTE6(v34);
        goto LABEL_68;
      }

      goto LABEL_57;
    }

LABEL_43:
    a1 = v65;
    if (v28 != 2)
    {
LABEL_67:
      v31 = 0;
      v40 = 0;
      goto LABEL_68;
    }

    v31 = *(v23 + 16);
    v40 = *(v23 + 24);
LABEL_58:
    if (v40 < v31)
    {
      __break(1u);
      goto LABEL_60;
    }

LABEL_68:
    *&v71 = v27;
    *(&v71 + 1) = v26;
    v72 = v31;
    v73 = v40;
    v47 = v27;
    v46 = 4;
    v74 = 4;
    a2 = v26;
    sub_1AE4C9530();
    swift_willThrowTypedImpl();
    (a1)(v18, v11);
    goto LABEL_69;
  }

  v64 = v26;
  v41 = sub_1AE4EAA60();
  v63 = v27;
  v43 = v42;
  v62 = sub_1AE4AAEBC(v41, v42);
  sub_1AE4A41E8(v41, v43);
  v44 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v20 != v62)
  {
    *&v71 = *v4;
    v70 = 1;
    sub_1AE4AB118(v63, v64, 0x100000001uLL, v18, isUniquelyReferenced_nonNull_native);
    *v4 = v71;
    goto LABEL_46;
  }

  *&v71 = *v4;
  v70 = 1;
  v27 = v63;
  sub_1AE4AB118(v63, v64, 0x100000001uLL, v18, isUniquelyReferenced_nonNull_native);
  *v4 = v71;
  v28 = v4[2];
  a1 = v4[3];
  v29 = a1 >> 62;
  v20 = v65;
  if ((a1 >> 62) > 1)
  {
LABEL_60:
    if (v29 == 2)
    {
      a2 = v27;
      v27 = *(v28 + 16);
      v51 = sub_1AE4EA990();
      if (v51)
      {
        v52 = v51;
        v53 = sub_1AE4EA9B0();
        if (!__OFSUB__(v27, v53))
        {
          v4 = (v27 - v53 + v52);
          sub_1AE4EA9A0();
          if (v4)
          {
            v30 = v64 - a2;
            if (!__OFSUB__(v64, a2))
            {
              goto LABEL_75;
            }

            __break(1u);
            goto LABEL_67;
          }

          goto LABEL_92;
        }

        goto LABEL_84;
      }

LABEL_91:
      sub_1AE4EA9A0();
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    *(&v71 + 6) = 0;
    *&v71 = 0;
    v30 = v64 - v27;
    if (!__OFSUB__(v64, v27))
    {
LABEL_77:
      v59 = v68;
      (*(v67 + 104))(v68, *MEMORY[0x1E6969020], v66);
      v60 = &v71 + v27;
      goto LABEL_78;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  if (!v29)
  {
    *&v71 = v4[2];
    WORD4(v71) = a1;
    BYTE10(v71) = BYTE2(a1);
    v29 = HIDWORD(a1);
    BYTE11(v71) = BYTE3(a1);
    BYTE12(v71) = BYTE4(a1);
    BYTE13(v71) = BYTE5(a1);
    v28 = v64;
    v30 = v64 - v27;
    if (!__OFSUB__(v64, v27))
    {
      goto LABEL_77;
    }

    __break(1u);
    goto LABEL_43;
  }

  a2 = v27;
  v55 = v28;
  if (v28 > v28 >> 32)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v56 = sub_1AE4EA990();
  if (!v56)
  {
LABEL_93:
    result = sub_1AE4EA9A0();
    goto LABEL_94;
  }

  v57 = v56;
  v58 = sub_1AE4EA9B0();
  if (__OFSUB__(v55, v58))
  {
    goto LABEL_85;
  }

  v4 = (v55 - v58 + v57);
  result = sub_1AE4EA9A0();
  if (v4)
  {
    v30 = v64 - a2;
    if (__OFSUB__(v64, a2))
    {
      goto LABEL_86;
    }

LABEL_75:
    v59 = v68;
    (*(v67 + 104))(v68, *MEMORY[0x1E6969020], v66);
    v60 = v4 + a2;
LABEL_78:
    v31 = sub_1AE4AB2E4(v60, v30, v59);
    goto LABEL_11;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AA894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD738, &qword_1AE4EE488);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v61 - v10;
  v11 = sub_1AE4EAC50();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v74 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v72 = &v61 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - v21;
  v67 = v12[2];
  v68 = v12 + 2;
  v67(&v61 - v21, a1, v11);
  v65 = v12;
  v23 = v12[4];
  v77 = v12 + 4;
  v70 = v23;
  v23(v20, v3, v11);
  v64 = v20;
  v69 = v22;
  v24 = sub_1AE4EABD0();
  v73 = v3;
  result = MEMORY[0x1B2701000](v24);
  if (a2)
  {
    v26 = 0;
    v63 = a2 + 64;
    v71 = (v65 + 1);
    v66 = a2;
    while (1)
    {
      v61 = v26 + 1;
      v27 = 1 << *(a2 + 32);
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v29 = v28 & *(a2 + 64);
      v30 = (v27 + 63) >> 6;

      v62 = 0;
      v31 = 0;
LABEL_8:
      v32 = v31;
      v33 = v70;
      if (!v29)
      {
        break;
      }

      while (1)
      {
        v34 = v32;
LABEL_17:
        v37 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v38 = v66;
        v39 = v65[9] * (v37 | (v34 << 6));
        v40 = v69;
        v41 = v11;
        v42 = v11;
        v43 = v67;
        v67(v69, *(v66 + 48) + v39, v41);
        v44 = v64;
        v43(v64, *(v38 + 56) + v39, v42);
        v11 = v42;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD740, &unk_1AE4EE490);
        v46 = *(v45 + 48);
        v47 = v76;
        v48 = v40;
        v33 = v70;
        v70(v76, v48, v42);
        v33(&v47[v46], v44, v42);
        (*(*(v45 - 8) + 56))(v47, 0, 1, v45);
        v36 = v34;
        v49 = v47;
LABEL_18:
        v50 = v75;
        sub_1AE4AAE4C(v49, v75);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD740, &unk_1AE4EE490);
        v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
        v53 = v74;
        if (v52 == 1)
        {
          break;
        }

        v32 = v36;
        v54 = *(v51 + 48);
        v55 = v72;
        v33(v72, v50, v11);
        v33(v53, (v50 + v54), v11);
        if (sub_1AE4EABB0())
        {
          sub_1AE4EAB80();
          v67(v69, v53, v11);
          v59 = sub_1AE4EABA0();
          MEMORY[0x1B2701000](v59);
          v60 = *v71;
          (*v71)(v53, v11);
          result = (v60)(v55, v11);
          v62 = 1;
          v31 = v36;
          goto LABEL_8;
        }

        v56 = *v71;
        (*v71)(v53, v11);
        result = (v56)(v55, v11);
        if (!v29)
        {
          goto LABEL_10;
        }
      }

      a2 = v66;

      v26 = v61;
      if (((v61 != 32) & v62) == 0)
      {
        return result;
      }
    }

LABEL_10:
    if (v30 <= v32 + 1)
    {
      v35 = v32 + 1;
    }

    else
    {
      v35 = v30;
    }

    v36 = v35 - 1;
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v30)
      {
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD740, &unk_1AE4EE490);
        v58 = v76;
        (*(*(v57 - 8) + 56))(v76, 1, 1, v57);
        v49 = v58;
        v29 = 0;
        goto LABEL_18;
      }

      v29 = *(v63 + 8 * v34);
      ++v32;
      if (v29)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4AAE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD738, &qword_1AE4EE488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE4AAEBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AE4EAA90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_14;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_23;
    }

    v11 = HIDWORD(a1) - a1;
LABEL_10:
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v11))
    {
      if (v10 == 2)
      {
        v14 = *(a1 + 16);
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  if (v10)
  {
    goto LABEL_8;
  }

  v11 = BYTE6(a2);
LABEL_14:
  sub_1AE4A6FD8(a1, a2);
  sub_1AE4EAAA0();
  sub_1AE4AB0C0();
  sub_1AE4EB020();
  if (v18)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v15 = dword_1F240C898[(v17[14] ^ HIBYTE(v15)) + 8] ^ (v15 << 8);
      sub_1AE4EB020();
    }

    while (v18 != 1);
  }

  (*(v5 + 8))(v9, v4);
  if (v11)
  {
    do
    {
      v15 = dword_1F240C898[(v11 ^ HIBYTE(v15)) + 8] ^ (v15 << 8);
      v16 = v11 >= 0x100;
      LODWORD(v11) = v11 >> 8;
    }

    while (v16);
  }

  return ~v15;
}

unint64_t sub_1AE4AB0C0()
{
  result = qword_1EB5DD198;
  if (!qword_1EB5DD198)
  {
    sub_1AE4EAA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DD198);
  }

  return result;
}

uint64_t sub_1AE4AB118(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v29 = a1;
  v30 = a2;
  v10 = sub_1AE4EAC50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_1AE4A9844(a4);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  result = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 >= result && (a5 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v22 >= result && (a5 & 1) == 0)
  {
    result = sub_1AE4E98F4();
    goto LABEL_9;
  }

  sub_1AE4A9B00(result, a5 & 1);
  v23 = *v6;
  result = sub_1AE4A9844(a4);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1AE4EB1C0();
    __break(1u);
    return result;
  }

  v17 = result;
LABEL_9:
  v25 = v30;
  v26 = *v6;
  if (v21)
  {
    v27 = v26[7] + 24 * v17;
    *v27 = v29;
    *(v27 + 8) = v25;
    *(v27 + 16) = a3;
    *(v27 + 20) = BYTE4(a3) & 1;
  }

  else
  {
    (*(v11 + 16))(v14, a4, v10);
    return sub_1AE4A9EF4(v17, v14, v29, v25, a3 | ((HIDWORD(a3) & 1) << 32), v26);
  }

  return result;
}

uint64_t sub_1AE4AB2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AE4EAA30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AE4EAA20();
  if (a2)
  {
    v11 = sub_1AE4EA9D0();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_1AE4EA970();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6969010])
    {
      v15 = sub_1AE4EA9C0();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_1AE4AB51C(v14, a2);
  }

  else
  {
    v17 = sub_1AE4EAA20();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_1AE4AB51C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1AE4EAA40();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1AE4EA990();
  if (v3)
  {
    result = sub_1AE4EA9B0();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1AE4EA9A0();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1AE4C91C8(v3, v7);

  return v8;
}

uint64_t sub_1AE4AB600(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AE4A6FD8(a1, a2);
  }

  return a1;
}

uint64_t *sub_1AE4AB614(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    a1 = *(a1 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    a1 = a1;
    v5 = v3 >> 32;
  }

  if (v5 < a1)
  {
    __break(1u);
  }

LABEL_9:
  v6 = sub_1AE4EAA60();
  v8 = v7;
  type metadata accessor for BPList.Metadata();
  swift_allocObject();
  result = sub_1AE4AB6F4(v6, v8);
  if (!v2)
  {
    v10 = result[6];
  }

  return result;
}

uint64_t *sub_1AE4AB6F4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v37 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v2[2] = a1;
  v2[3] = a2;
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      *v32 = a1;
      *&v32[8] = a2;
      v32[10] = BYTE2(a2);
      v32[11] = BYTE3(a2);
      v32[12] = BYTE4(a2);
      v32[13] = BYTE5(a2);
      sub_1AE4ABA40(v32, &v32[BYTE6(a2)], &v34);
      if (!v3)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (v8 == 2)
  {
    v9 = v3;
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);

    v12 = sub_1AE4EA990();
    if (v12)
    {
      v13 = sub_1AE4EA9B0();
      if (__OFSUB__(v10, v13))
      {
        goto LABEL_28;
      }

      v12 += v10 - v13;
    }

    v14 = __OFSUB__(v11, v10);
    v15 = v11 - v10;
    if (!v14)
    {
LABEL_16:
      v17 = sub_1AE4EA9A0();
      if (v17 >= v15)
      {
        v18 = v15;
      }

      else
      {
        v18 = v17;
      }

      v19 = v18 + v12;
      if (v12)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v3 = v9;
      sub_1AE4ABA40(v12, v20, &v34);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_12:
    v15 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = v3;

      v12 = sub_1AE4EA990();
      if (!v12)
      {
        goto LABEL_16;
      }

      v16 = sub_1AE4EA9B0();
      if (!__OFSUB__(a1, v16))
      {
        v12 += a1 - v16;
        goto LABEL_16;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *&v32[6] = 0;
  *v32 = 0;
  sub_1AE4ABA40(v32, v32, &v34);
  if (!v3)
  {
LABEL_25:
    v23 = v34;
    v24 = BYTE1(v34);
    v25 = v35;
    v26 = v36;
    *(v2 + 32) = v34;
    *(v2 + 33) = v24;
    *(v2 + 5) = v25;
    v2[7] = v26;
    v27 = *(&off_1E7A26640 + v23);
    v28 = off_1F240D438[v23];
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a2;
    v4[8] = v28;
    v4[9] = v29;
    goto LABEL_26;
  }

LABEL_23:
  v21 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v22 = v34;
  *v32 = v34;
  *&v32[8] = v35;
  v33 = v36;
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

  sub_1AE4A41E8(a1, a2);
  sub_1AE4A41E8(v2[2], v2[3]);
  swift_deallocPartialClassInstance();
  v4 = v22;
LABEL_26:
  v30 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1AE4ABA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = a2 - a1;
  if (!a1)
  {
    v10 = 0;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v35 = v10;
    result = sub_1AE4AC124(1uLL);
    v15 = result;
    if (v4)
    {
      v16 = v12;
      v17 = v13;
      v18 = v14;
      sub_1AE4C78AC();
      result = swift_allocError();
      *v19 = v15;
      *(v19 + 8) = v16;
      *(v19 + 16) = v17;
      *(v19 + 24) = v18;
      return result;
    }

    if (result != 0x62706C6973743030)
    {
      sub_1AE4C78AC();
      swift_allocError();
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *v22 = v15;
      *(v22 + 24) = 0;
      return swift_willThrow();
    }

    if (a1)
    {
      v20 = a2 - a1;
    }

    else
    {
      v20 = 0;
    }

    if (v20 < 0)
    {
      __break(1u);
    }

    else if ((v35 & 0x8000000000000000) == 0 && v20 >= v35)
    {
      if (v35 < 32)
      {
        sub_1AE4C78AC();
        swift_allocError();
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *v21 = 1;
        *(v21 + 24) = 0x80;
        return swift_willThrow();
      }

      v23 = 0;
      if ((25 - v35) >= 0x1A)
      {
        v23 = v35 - 26;
      }

      if (v35 >= v23)
      {
        sub_1AE4A5694();
        v25 = v24;
        sub_1AE4A5694();
        v6 = v26;
        v5 = sub_1AE4AC124(1uLL);
        v8 = sub_1AE4AC124(1uLL);
        v3 = sub_1AE4AC124(1uLL);
        v7 = sub_1AE4AC220(v25);
        goto LABEL_22;
      }

LABEL_30:
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_30;
  }

  __break(1u);
LABEL_22:
  *a3 = v7;
  result = sub_1AE4AC220(v6);
  v30 = result;
  if (v4)
  {
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_1AE4C78AC();
    result = swift_allocError();
    *v34 = v30;
    *(v34 + 8) = v31;
    *(v34 + 16) = v32;
    *(v34 + 24) = v33;
    return result;
  }

  *(a3 + 1) = result;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  *(a3 + 8) = v5;
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(a3 + 16) = v8;
  if ((v3 & 0x8000000000000000) == 0)
  {
    *(a3 + 24) = v3;
    return result;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1AE4ABE40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AE4A41E8(a1, a2);
  }

  return a1;
}

uint64_t sub_1AE4ABE5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = qword_1AE4ED448[*(a1 + 32)];
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = *(a1 + 56);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v21, 0, 14);
      goto LABEL_17;
    }

    v9 = *(a3 + 16);
    v10 = sub_1AE4EA990();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      v13 = v9 - v12 + v11;
      sub_1AE4EA9A0();
      if (v13)
      {
LABEL_15:
        v19 = *(v13 + v7);
LABEL_18:
        v20 = *MEMORY[0x1E69E9840];
        return bswap32(v19) >> 16;
      }
    }

    else
    {
      sub_1AE4EA9A0();
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    v21[0] = a3;
    LOWORD(v21[1]) = a4;
    BYTE2(v21[1]) = BYTE2(a4);
    BYTE3(v21[1]) = BYTE3(a4);
    BYTE4(v21[1]) = BYTE4(a4);
    BYTE5(v21[1]) = BYTE5(a4);
LABEL_17:
    v19 = *(v21 + v7);
    goto LABEL_18;
  }

  v14 = a3;
  if (a3 > a3 >> 32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = sub_1AE4EA990();
  if (!v15)
  {
LABEL_26:
    result = sub_1AE4EA9A0();
    __break(1u);
    goto LABEL_27;
  }

  v16 = v15;
  v17 = sub_1AE4EA9B0();
  if (__OFSUB__(v14, v17))
  {
    goto LABEL_23;
  }

  v13 = v14 - v17 + v16;
  result = sub_1AE4EA9A0();
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AC038(unsigned __int8 a1)
{
  v1 = (a1 >> 4) - 1;
  if (v1 > 0xC)
  {
    return 6;
  }

  else
  {
    return byte_1AE4ED4A8[v1];
  }
}

uint64_t sub_1AE4AC060(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AE4AC078(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1AE4AC0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = (a5 >> 38) & 3;
  if (v6)
  {
    if (v6 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1AE4AC124(unint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 7)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = bswap64(*(v3 + v2));
    if (result)
    {
      v7 = v8;
    }

    else
    {
      v7 = *(v3 + v2);
    }

    *v1 = sub_1AE4A7CA4(8uLL, v2, v6, v3, v4);
    v1[1] = v9;
    v1[2] = v10;
    v1[3] = v11;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AC220(unsigned __int8 a1)
{
  if (a1 - 1) < 8u && ((0x8Bu >> (a1 - 1)))
  {
    return qword_1AE4ED468[(a1 - 1)];
  }

  v1 = a1;
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();
  return v1;
}

uint64_t sub_1AE4AC2B4(uint64_t a1)
{
  v2 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  v4 = (*(a1 + 64))();
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v41[0] = *(v2 + 16);
      LOWORD(v41[1]) = v7;
      BYTE2(v41[1]) = BYTE2(v7);
      BYTE3(v41[1]) = BYTE3(v7);
      BYTE4(v41[1]) = BYTE4(v7);
      BYTE5(v41[1]) = BYTE5(v7);
      if (BYTE6(v7) >= v4)
      {
        *&v44 = v4;
        *(&v44 + 1) = BYTE6(v7);
        *&v45 = v41;
        *(&v45 + 1) = v41 + BYTE6(v7);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = sub_1AE4EA990();
    if (v11)
    {
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_47;
    }

    v15 = sub_1AE4EA9A0();
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 >= v5)
    {
LABEL_29:
      v22 = v16 + v11;
      if (!v11)
      {
        v22 = 0;
      }

      *&v44 = v5;
      *(&v44 + 1) = v6;
      *&v45 = v11;
      *(&v45 + 1) = v22;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v17 = v6;
    v18 = v6 >> 32;
    v19 = v18 - v17;
    if (v18 < v17)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v11 = sub_1AE4EA990();
    if (v11)
    {
      v20 = sub_1AE4EA9B0();
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_50;
      }

      v11 += v17 - v20;
    }

    v21 = sub_1AE4EA9A0();
    if (v21 >= v19)
    {
      v16 = v19;
    }

    else
    {
      v16 = v21;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 < v5)
    {
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  memset(v41, 0, 14);
  if (v4 > 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v44 = v4;
  *&v45 = v41;
  *(&v45 + 1) = v41;
LABEL_34:
  sub_1AE4A5694();
  v27 = v23;
  if (v1)
  {
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1AE4C78AC();
    v31 = swift_allocError();
    *v32 = v27;
    *(v32 + 8) = v28;
    *(v32 + 16) = v29;
    *(v32 + 24) = v30;
  }

  else
  {
    sub_1AE4A65CC(v23);
    v37 = sub_1AE4AC038(v27);
    if (v37 == 4)
    {
      v42 = v44;
      v43 = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
      sub_1AE4EB230();
      goto LABEL_38;
    }

    if (v37 == 6)
    {
      sub_1AE4C78AC();
      v38 = swift_allocError();
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *v39 = 0;
      *(v39 + 24) = 0x80;
      swift_willThrow();
      v31 = v38;
    }

    else
    {
      *&v43 = 0;
      v42 = 6uLL;
      BYTE8(v43) = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v31 = swift_allocError();
      *(v40 + 8) = 0;
      *(v40 + 16) = 0;
      *v40 = 6;
      *(v40 + 24) = 0x80;
    }
  }

  v41[2] = v31;
  v33 = v31;
  v34 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v2 = v44;
  v42 = v44;
  *&v43 = v45;
  BYTE8(v43) = BYTE8(v45);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

LABEL_38:
  v35 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1AE4AC6E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a1;
  v18 = a2;
  v19 = a3 & 1;
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v21, 0, 14);
      if (a5 <= 0)
      {
        sub_1AE4A5774(a5, 0, v21, v21, a4, a6, a1, v22, a2, a3 & 1, &v20);
        goto LABEL_11;
      }

LABEL_15:
      __break(1u);
    }

    v9 = *(v7 + 16);
    v10 = *(v7 + 24);
  }

  else
  {
    if (!v8)
    {
      v21[0] = *(a4 + 16);
      LOWORD(v21[1]) = v6;
      BYTE2(v21[1]) = BYTE2(v6);
      BYTE3(v21[1]) = BYTE3(v6);
      BYTE4(v21[1]) = BYTE4(v6);
      BYTE5(v21[1]) = BYTE5(v6);
      if (BYTE6(v6) >= a5)
      {
        sub_1AE4A5774(a5, BYTE6(v6), v21, v21 + BYTE6(v6), a4, a6, a1, v22, a2, a3 & 1, &v20);
LABEL_11:
        result = v22[0];
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_14;
    }

    v9 = v7;
    v10 = v7 >> 32;
    if (v7 >> 32 < v7)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  result = sub_1AE4AD03C(v9, v10, v6 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4AD158, v13, a5);
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4AC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 1668248176;
  v10 = sub_1AE4AC6E0(1668248176, 0xE400000000000000, 0, a1, a2, a3);
  if (!v10)
  {
    v18 = xmmword_1AE4EE3D0;
LABEL_5:
    v51 = v18;
    v52 = xmmword_1AE4EC830;
    v53 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0xE400000000000000;
    v17 = 96;
    goto LABEL_8;
  }

  v11 = sub_1AE4A6A00(v10);
  if (v4)
  {
    v9 = v11;
    v15 = v12;
    v16 = v13;
    v17 = v14;
    *&v51 = v11;
    *(&v51 + 1) = v12;
    *&v52 = v13;
    *(&v52 + 1) = v14;
    v53 = 64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

LABEL_8:
    *a4 = v9;
    *(a4 + 8) = v15;
    *(a4 + 16) = v16;
    *(a4 + 24) = v17;
    *(a4 + 32) = 64;
    return result;
  }

  v9 = 1952541808;

  v19 = sub_1AE4AC6E0(1952541808, 0xE400000000000000, 0, a1, a2, a3);
  if (!v19)
  {
    v18 = xmmword_1AE4EE3C0;
    goto LABEL_5;
  }

  sub_1AE4A6A00(v19);

  v21 = sub_1AE4AC6E0(1701669236, 0xE400000000000000, 0, a1, a2, a3);
  if (!v21)
  {
    v51 = xmmword_1AE4EE3B0;
    v52 = xmmword_1AE4EC830;
    v53 = 64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v16 = 0;
    v15 = 0xE400000000000000;
    v17 = 96;
    v9 = 1701669236;
    goto LABEL_8;
  }

  sub_1AE4A6A00(v21);

  v9 = 1952543859;
  v22 = sub_1AE4AC6E0(1952543859, 0xE400000000000000, 0, a1, a2, a3);
  if (!v22)
  {
    v18 = xmmword_1AE4EE3A0;
    goto LABEL_5;
  }

  sub_1AE4A6A00(v22);
  v9 = 1953066601;

  v23 = sub_1AE4AC6E0(1953066601, 0xE400000000000000, 0, a1, a2, a3);
  if (!v23)
  {
    v18 = xmmword_1AE4EE390;
    goto LABEL_5;
  }

  sub_1AE4A6A00(v23);

  v24 = sub_1AE4AC6E0(0x7367616C66, 0xE500000000000000, 0, a1, a2, a3);
  if (v24)
  {
    sub_1AE4A6A00(v24);
  }

  v25 = sub_1AE4AC6E0(1684632947, 0xE400000000000000, 0, a1, a2, a3);
  if (!v25)
  {
    goto LABEL_22;
  }

  v27 = sub_1AE4AEC7C(v25, v26);
  v30 = v27;
  v31 = v28;
  v32 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v32 != 2)
    {
LABEL_34:
      v51 = 7uLL;
      v17 = 128;
      *&v52 = 0;
      *(&v52 + 1) = 128;
      v53 = 64;
      sub_1AE4C9430();
      swift_willThrowTypedImpl();

      result = sub_1AE4A41E8(v30, v31);
      v15 = 0;
      v16 = 0;
      v9 = 7;
      goto LABEL_8;
    }

    v35 = *(v27 + 16);
    v34 = *(v27 + 24);
    v36 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (v36)
    {
      __break(1u);
      goto LABEL_27;
    }
  }

  else if (v32)
  {
    LODWORD(v33) = HIDWORD(v27) - v27;
    if (__OFSUB__(HIDWORD(v27), v27))
    {
      __break(1u);
      v48 = v29;
      sub_1AE4C78AC();
      swift_allocError();
      *v49 = v54;
      *(v49 + 8) = v31;
      *(v49 + 16) = v30;
      *(v49 + 24) = v48;
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v33 = v33;
  }

  else
  {
    v33 = BYTE6(v28);
  }

  if (v33 != 16)
  {
    goto LABEL_34;
  }

  sub_1AE4A41E8(v30, v31);
LABEL_22:
  sub_1AE4ADEE4(1936158057, 0xE400000000000000, 0, a1, a2, a3, &v50);
  sub_1AE4B00A8(1937010529, 0xE400000000000000, 1, a1, a2, a3, &v50);
LABEL_27:
  v37 = sub_1AE4AC6E0(1886809701, 0xE400000000000000, 0, a1, a2, a3);
  if (v37)
  {
    v54 = sub_1AE4AC2B4(v37);
    v39 = v38;
    v41 = v40;

    v42 = sub_1AE4AC6E0(1953460082, 0xE400000000000000, 0, v54, v39, v41);
    if (v42)
    {
      sub_1AE4AF28C(v42);
    }

    else
    {
    }
  }

  result = sub_1AE4AC6E0(828601188, 0xE400000000000000, 0, a1, a2, a3);
  if (result)
  {
    v43 = sub_1AE4AC2B4(result);
    v45 = v44;
    v47 = v46;

    sub_1AE4B0154(v43, v45, v47, &v50);
  }

  return result;
}

uint64_t sub_1AE4AD03C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  result = sub_1AE4EA990();
  v12 = result;
  if (result)
  {
    result = sub_1AE4EA9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AE4EA9A0();
  if (result >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = result;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 < a6)
  {
    goto LABEL_16;
  }

  a4(&v21, a6);
  if (!v6)
  {
    return v21;
  }

  sub_1AE4C78AC();
  result = swift_allocError();
  *v17 = v18;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  return result;
}

void sub_1AE4AD198(char a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  if (a1 != 3)
  {
    v14 = 2;
    v15 = 0x80;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v16 = 0;
    v17 = 0;
LABEL_16:
    *a5 = v14;
    *(a5 + 8) = v16;
    *(a5 + 16) = v17;
    *(a5 + 24) = v15;
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  sub_1AE4EB230();
  sub_1AE4EB230();
  v11 = 1 << a2;
  if (a2 <= 0x3F)
  {
    v12 = 1 << a2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v25 + v12;
  if (__OFADD__(v25, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v26)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v26 < a3 || v13 > a4)
  {
    goto LABEL_31;
  }

  if (a2 > 0x3F)
  {
    LOBYTE(v11) = 0;
    goto LABEL_14;
  }

  if (a2 == 63)
  {
    goto LABEL_32;
  }

  if (a2 > 7)
  {
LABEL_33:
    __break(1u);
    return;
  }

LABEL_14:
  v18 = sub_1AE4AC220(v11);
  v14 = v18;
  if (v6)
  {
    v15 = v19;
    goto LABEL_16;
  }

  if (v18 > 1u)
  {
    if (v18 == 2)
    {
      v22 = sub_1AE4AD394(1);
      v21 = v22;
    }

    else
    {
      v21 = sub_1AE4AC124(1uLL);
    }
  }

  else if (v18)
  {
    v23 = sub_1AE4AFFA4(1);
    v21 = v23;
  }

  else
  {
    sub_1AE4A5694();
    v21 = v20;
  }

  *a6 = v21;
}

uint64_t sub_1AE4AD394(uint64_t result)
{
  v2 = *v1;
  v3 = v1[2];
  v4 = v1[3];
  v5 = v4 - v3;
  if (!v3)
  {
    v5 = 0;
  }

  if (v2 < 0 || v5 < v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v1[1];
  if (v6 < 0 || v5 < v6)
  {
    goto LABEL_17;
  }

  if (v6 - v2 <= 3)
  {
    if (v3)
    {
      v7 = v3 + v2;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      return v7;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    v8 = *(v3 + v2);
    v9 = bswap32(v8);
    if (result)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }

    *v1 = sub_1AE4A7CA4(4uLL, v2, v6, v3, v4);
    v1[1] = v10;
    v1[2] = v11;
    v1[3] = v12;
    return v7;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AD490(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void *, unint64_t, uint64_t *))
{
  v12 = a2;
  v13 = a1;
  v102 = *MEMORY[0x1E69E9840];
  result = sub_1AE4AC6E0(a1, a2, 0, a4, a5, a6);
  if (!result)
  {
    if ((a3 & 1) == 0)
    {
      *&v99 = v13;
      *(&v99 + 1) = v12;
      v100 = xmmword_1AE4EC830;
      v101 = 64;
      sub_1AE4C9430();
      swift_willThrowTypedImpl();

      v19 = 0;
      v20 = 96;
      goto LABEL_107;
    }

LABEL_108:
    v83 = *MEMORY[0x1E69E9840];
    return result;
  }

  v15 = sub_1AE4ADF90(result);
  v13 = v15;
  v12 = v16;
  v19 = v17;
  if (v8)
  {
    v20 = v18;
    *&v99 = v15;
    *(&v99 + 1) = v16;
    *&v100 = v17;
    *(&v100 + 1) = v18;
    v101 = 64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();
    goto LABEL_106;
  }

  v92 = v15;
  v93 = v16;
  v94 = v17;
  v95 = 0;

  v21 = sub_1AE4AE3BC();
  if (!v21)
  {
LABEL_83:

    goto LABEL_108;
  }

  v23 = v21;
  v24 = v22;
  v84 = a7;
  v85 = a8;
  while (1)
  {
    v25 = v23[8];
    v26 = v23[9];

    v28 = v25(v27, v24);
    v29 = v28;
    v30 = v23[2];
    v31 = v23[3];
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2)
      {
        *(&v97 + 6) = 0;
        *&v97 = 0;
        if (v28 > 0)
        {
          goto LABEL_128;
        }

        if ((v28 & 0x8000000000000000) == 0)
        {
          *&v99 = &v97;
          *(&v99 + 1) = &v97;
          *&v100 = 1;
          BYTE8(v100) = 64;
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          v68 = swift_allocError();
          *v73 = &v97;
          *(v73 + 8) = &v97;
LABEL_95:
          *(v73 + 16) = 1;
          *(v73 + 24) = 64;
          goto LABEL_100;
        }

LABEL_129:
        __break(1u);
      }

      v39 = *(v30 + 16);
      v40 = *(v30 + 24);
      v41 = sub_1AE4EA990();
      if (v41)
      {
        v42 = v41;
        v43 = sub_1AE4EA9B0();
        if (__OFSUB__(v39, v43))
        {
          goto LABEL_123;
        }

        v44 = v39 - v43 + v42;
        v45 = __OFSUB__(v40, v39);
        v46 = v40 - v39;
        if (v45)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v44 = 0;
        v45 = __OFSUB__(v40, v39);
        v46 = v40 - v39;
        if (v45)
        {
          goto LABEL_115;
        }
      }

      result = sub_1AE4EA9A0();
      if (result >= v46)
      {
        v55 = v46;
      }

      else
      {
        v55 = result;
      }

      v56 = v44 + v55;
      if (v44)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      v58 = v57 - v44;
      if (v44)
      {
        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

      a7 = v84;
      if (v59 < v29)
      {
        goto LABEL_118;
      }

      if (v29 < 0)
      {
        goto LABEL_119;
      }

      if (v59 <= v29)
      {
        goto LABEL_98;
      }

      if (!v44)
      {
        goto LABEL_131;
      }

      if (v58 <= v29)
      {
        goto LABEL_122;
      }

LABEL_69:
      v63 = *(v44 + v29);
      *&v99 = v29 + 1;
      *(&v99 + 1) = v58;
      *&v100 = v44;
      *(&v100 + 1) = v56;
      sub_1AE4A65CC(v63);
      v36 = v64;
      v65 = v63 >> 4;
      if (v63 >> 4 == 13)
      {
        v97 = v99;
        v98 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        v54 = v86;
        goto LABEL_71;
      }

      if (v65 <= 0xA && ((1 << v65) & 0x472) != 0)
      {
        *&v98 = 0;
        v97 = 6uLL;
        BYTE8(v98) = 0x80;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v68 = swift_allocError();
        *(v69 + 8) = 0;
        *(v69 + 16) = 0;
        *v69 = 6;
        *(v69 + 24) = 0x80;
        goto LABEL_105;
      }

LABEL_90:
      sub_1AE4C78AC();
      v71 = swift_allocError();
      *(v72 + 8) = 0;
      *(v72 + 16) = 0;
      *v72 = 0;
      *(v72 + 24) = 0x80;
      swift_willThrow();
      v68 = v71;
      goto LABEL_105;
    }

    if (v32)
    {
      break;
    }

    v86 = v23[2];
    v87 = v31;
    v88 = BYTE2(v31);
    v89 = BYTE3(v31);
    v90 = BYTE4(v31);
    v91 = BYTE5(v31);
    if (BYTE6(v31) < v28)
    {
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
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
      goto LABEL_129;
    }

    if (v28 < 0)
    {
      goto LABEL_116;
    }

    v33 = &v86 + BYTE6(v31);
    if (BYTE6(v31) <= v28)
    {
      v74 = &v86 + v28;
      *&v99 = &v86 + v28;
      *(&v99 + 1) = &v86 + BYTE6(v31);
      *&v100 = 1;
      BYTE8(v100) = 64;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v68 = swift_allocError();
      *v73 = v74;
      *(v73 + 8) = v33;
      goto LABEL_95;
    }

    v34 = *(&v86 + v28);
    v35 = v28 + 1;
    v36 = v34 & 0xF;
    if ((v34 & 0xF) == 0xF)
    {
      v37 = &v86 + v35;
      if (BYTE6(v31) <= v35)
      {
        goto LABEL_102;
      }

      v37 = *v37;
      if (v37 >> 4 > 0xD || ((1 << (v37 >> 4)) & 0x2472) == 0)
      {
LABEL_109:
        *&v100 = 0;
        v99 = v37;
        v79 = 32;
        BYTE8(v100) = 32;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v33 = 0;
        v78 = 0;
        goto LABEL_104;
      }

      v38 = v28 + 2;
      if ((v37 & 8) != 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = (1 << (v37 & 7));
      }

      if (v37 > 3)
      {
        if (v37 == 4)
        {
          if ((BYTE6(v31) - v38) <= 3)
          {
            v37 = &v86 + v38;
            *&v99 = &v86 + v38;
            *(&v99 + 1) = &v86 + BYTE6(v31);
            v78 = 4;
LABEL_103:
            *&v100 = v78;
            v79 = 64;
            BYTE8(v100) = 64;
            sub_1AE4C78AC();
            swift_willThrowTypedImpl();
LABEL_104:
            sub_1AE4C78AC();
            v68 = swift_allocError();
            *v80 = v37;
            *(v80 + 8) = v33;
            *(v80 + 16) = v78;
            *(v80 + 24) = v79;
            goto LABEL_105;
          }

          v35 = v28 + 6;
          if (BYTE6(v31) < (v28 + 6))
          {
            goto LABEL_125;
          }

          v36 = bswap32(*(&v86 + v38));
        }

        else
        {
          if (v37 != 8)
          {
            goto LABEL_109;
          }

          if ((BYTE6(v31) - v38) < 8)
          {
            v37 = &v86 + v38;
            *&v99 = &v86 + v38;
            *(&v99 + 1) = &v86 + BYTE6(v31);
            v78 = 8;
            goto LABEL_103;
          }

          v35 = v28 + 10;
          if (BYTE6(v31) < (v28 + 10))
          {
            goto LABEL_127;
          }

          v36 = bswap64(*(&v86 + v38));
        }
      }

      else if (v37 == 1)
      {
        v37 = &v86 + v38;
        if (BYTE6(v31) <= v38)
        {
LABEL_102:
          *&v99 = v37;
          *(&v99 + 1) = &v86 + BYTE6(v31);
          v78 = 1;
          goto LABEL_103;
        }

        v36 = *v37;
        v35 = v28 + 3;
      }

      else
      {
        if (v37 != 2)
        {
          goto LABEL_109;
        }

        if ((BYTE6(v31) - v38) <= 1)
        {
          v37 = &v86 + v38;
          *&v99 = &v86 + v38;
          *(&v99 + 1) = &v86 + BYTE6(v31);
          v78 = 2;
          goto LABEL_103;
        }

        v35 = v28 + 4;
        if (BYTE6(v31) < (v28 + 4))
        {
          goto LABEL_126;
        }

        v36 = bswap32(*(&v86 + v38)) >> 16;
      }
    }

    v53 = v34 >> 4;
    if (v53 != 13)
    {
      if (v53 <= 0xA && ((1 << v53) & 0x472) != 0)
      {
        *&v100 = 0;
        v99 = 6uLL;
        BYTE8(v100) = 0x80;
        sub_1AE4C78AC();
        swift_willThrowTypedImpl();
        v68 = swift_allocError();
        *(v70 + 8) = 0;
        *(v70 + 16) = 0;
        *v70 = 6;
        *(v70 + 24) = 0x80;
        goto LABEL_105;
      }

      goto LABEL_90;
    }

    *&v99 = v35;
    *(&v99 + 1) = BYTE6(v31);
    *&v100 = &v86;
    *(&v100 + 1) = &v86 + BYTE6(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    sub_1AE4EB230();
    v54 = v97;
LABEL_71:

    v85(v66, v54, v36, &v96);

    v23 = sub_1AE4AE3BC();
    v24 = v67;
    if (!v23)
    {
      goto LABEL_83;
    }
  }

  v47 = v30;
  v48 = v30 >> 32;
  v49 = v48 - v47;
  if (v48 < v47)
  {
    goto LABEL_114;
  }

  v50 = sub_1AE4EA990();
  if (v50)
  {
    v51 = v50;
    v52 = sub_1AE4EA9B0();
    if (__OFSUB__(v47, v52))
    {
      goto LABEL_124;
    }

    v44 = v47 - v52 + v51;
  }

  else
  {
    v44 = 0;
  }

  result = sub_1AE4EA9A0();
  if (result >= v49)
  {
    v60 = v49;
  }

  else
  {
    v60 = result;
  }

  v56 = v44 + v60;
  if (v44)
  {
    v61 = v56;
  }

  else
  {
    v61 = 0;
  }

  v58 = v61 - v44;
  if (v44)
  {
    v62 = v58;
  }

  else
  {
    v62 = 0;
  }

  if (v62 < v29)
  {
    goto LABEL_117;
  }

  if (v29 < 0)
  {
    goto LABEL_120;
  }

  if (v62 > v29)
  {
    if (!v44)
    {
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v58 <= v29)
    {
      goto LABEL_121;
    }

    goto LABEL_69;
  }

  if (v44)
  {
    goto LABEL_99;
  }

  __break(1u);
LABEL_98:
  if (v44)
  {
LABEL_99:
    v75 = v44 + v29;
    v76 = v44 + v58;
    *&v97 = v75;
    *(&v97 + 1) = v76;
    *&v98 = 1;
    BYTE8(v98) = 64;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v68 = swift_allocError();
    *v77 = v75;
    *(v77 + 8) = v76;
    *(v77 + 16) = 1;
    *(v77 + 24) = 64;
LABEL_100:
    a7 = v84;
LABEL_105:
    v86 = v68;
    v81 = v68;
    v82 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
    swift_dynamicCast();
    v12 = *(&v99 + 1);
    v13 = v99;
    v19 = v100;
    v20 = BYTE8(v100);
    v97 = v99;
    *&v98 = v100;
    BYTE8(v98) = BYTE8(v100);
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    v99 = __PAIR128__(v12, v13);
    *&v100 = v19;
    *(&v100 + 1) = v20;
    v101 = 64;
    sub_1AE4C9430();
    swift_willThrowTypedImpl();

LABEL_106:

LABEL_107:
    *a7 = v13;
    *(a7 + 8) = v12;
    *(a7 + 16) = v19;
    *(a7 + 24) = v20;
    *(a7 + 32) = 64;
    goto LABEL_108;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1AE4ADEE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *MEMORY[0x1E69E9840];
  result = sub_1AE4ADF30(a1, a2, a3, a4, a5, a6, a7);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4ADF30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *MEMORY[0x1E69E9840];
  result = sub_1AE4AD490(a1, a2, a3, a4, a5, a6, a7, sub_1AE4AE874);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4ADF90(uint64_t a1)
{
  v2 = a1;
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  v4 = (*(a1 + 64))();
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v41[0] = *(v2 + 16);
      LOWORD(v41[1]) = v7;
      BYTE2(v41[1]) = BYTE2(v7);
      BYTE3(v41[1]) = BYTE3(v7);
      BYTE4(v41[1]) = BYTE4(v7);
      BYTE5(v41[1]) = BYTE5(v7);
      if (BYTE6(v7) >= v4)
      {
        *&v44 = v4;
        *(&v44 + 1) = BYTE6(v7);
        *&v45 = v41;
        *(&v45 + 1) = v41 + BYTE6(v7);
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_44;
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = sub_1AE4EA990();
    if (v11)
    {
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_46;
    }

    v15 = sub_1AE4EA9A0();
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 >= v5)
    {
LABEL_29:
      v22 = v16 + v11;
      if (!v11)
      {
        v22 = 0;
      }

      *&v44 = v5;
      *(&v44 + 1) = v6;
      *&v45 = v11;
      *(&v45 + 1) = v22;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v17 = v6;
    v18 = v6 >> 32;
    v19 = v18 - v17;
    if (v18 < v17)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v11 = sub_1AE4EA990();
    if (v11)
    {
      v20 = sub_1AE4EA9B0();
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_49;
      }

      v11 += v17 - v20;
    }

    v21 = sub_1AE4EA9A0();
    if (v21 >= v19)
    {
      v16 = v19;
    }

    else
    {
      v16 = v21;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 < v5)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  memset(v41, 0, 14);
  if (v4 > 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v44 = v4;
  *&v45 = v41;
  *(&v45 + 1) = v41;
LABEL_34:
  sub_1AE4A5694();
  v27 = v23;
  if (v1)
  {
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1AE4C78AC();
    v31 = swift_allocError();
    *v32 = v27;
    *(v32 + 8) = v28;
    *(v32 + 16) = v29;
    *(v32 + 24) = v30;
  }

  else
  {
    sub_1AE4A65CC(v23);
    v33 = sub_1AE4AC038(v27);
    if (v33 == 6)
    {
      sub_1AE4C78AC();
      v34 = swift_allocError();
      *(v35 + 8) = 0;
      *(v35 + 16) = 0;
      *v35 = 0;
      *(v35 + 24) = 0x80;
      swift_willThrow();
      v31 = v34;
    }

    else
    {
      if (v33 >= 5)
      {
        v42 = v44;
        v43 = v45;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
        sub_1AE4EB230();
        goto LABEL_41;
      }

      *&v43 = 0;
      v42 = 4uLL;
      BYTE8(v43) = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v31 = swift_allocError();
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *v36 = 4;
      *(v36 + 24) = 0x80;
    }
  }

  v41[2] = v31;
  v37 = v31;
  v38 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
  swift_dynamicCast();
  v2 = v44;
  v42 = v44;
  *&v43 = v45;
  BYTE8(v43) = BYTE8(v45);
  sub_1AE4C78AC();
  swift_willThrowTypedImpl();

LABEL_41:
  v39 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1AE4AE3BC()
{
  result = 0;
  v27[4] = *MEMORY[0x1E69E9840];
  if (v0[3] < v0[2])
  {
    v2 = *v0;
    v3 = v0[1];
    MEMORY[0x1EEE9AC00](0);
    v26[2] = v0;
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        memset(v27, 0, 14);
        if (v3 > 0)
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v18 = *(v2 + 33);
        v19 = qword_1AE4ED448[v18];
        v20 = v19 * v4;
        if ((v19 * v4) >> 64 != (v19 * v4) >> 63)
        {
          goto LABEL_23;
        }

        v11 = v18;
        v12 = v27;
        v13 = v20;
        v14 = v3;
        v15 = 0;
LABEL_14:
        sub_1AE4A67C4(v11, v13, v14, v15, v27, v12);
        goto LABEL_15;
      }

      v16 = *(v5 + 16);
      v17 = *(v5 + 24);
    }

    else
    {
      if (!v7)
      {
        v27[0] = *(v2 + 16);
        LOWORD(v27[1]) = v6;
        BYTE2(v27[1]) = BYTE2(v6);
        BYTE3(v27[1]) = BYTE3(v6);
        BYTE4(v27[1]) = BYTE4(v6);
        BYTE5(v27[1]) = BYTE5(v6);
        if (BYTE6(v6) < v3)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v8 = *(v2 + 33);
        v9 = qword_1AE4ED448[v8];
        v10 = v9 * v4;
        if ((v9 * v4) >> 64 != (v9 * v4) >> 63)
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
        }

        v11 = v8;
        v12 = v27 + BYTE6(v6);
        v13 = v10;
        v14 = v3;
        v15 = BYTE6(v6);
        goto LABEL_14;
      }

      v16 = v5;
      v17 = v5 >> 32;
      if (v5 >> 32 < v5)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    sub_1AE4AE738(v16, v17, v6 & 0x3FFFFFFFFFFFFFFFLL, sub_1AE4AE854, v26, v3);
LABEL_15:

    v21 = v0[3];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      v0[3] = v23;
      v24 = *v0;

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE4AE738(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6)
{
  result = sub_1AE4EA990();
  v12 = result;
  if (result)
  {
    result = sub_1AE4EA9B0();
    if (__OFSUB__(a1, result))
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  v13 = __OFSUB__(a2, a1);
  v14 = a2 - a1;
  if (v13)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1AE4EA9A0();
  if (result >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = result;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 < a6)
  {
    goto LABEL_16;
  }

  a4(&v21, a6);
  if (!v6)
  {
    return v21;
  }

  sub_1AE4C78AC();
  result = swift_allocError();
  *v17 = v18;
  *(v17 + 16) = v19;
  *(v17 + 24) = v20;
  return result;
}

uint64_t sub_1AE4AE874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v48 = a4;
  v5 = v4;
  v9 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, a1, a2, a3);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AE4A6A00(v9);
    if (v4)
    {
LABEL_7:
      v17 = v11;
      v18 = v12;
      v19 = v13;
      v20 = v14;
      *&v45 = v11;
      *(&v45 + 1) = v12;
      *&v46 = v13;
      BYTE8(v46) = v14;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
LABEL_8:

LABEL_9:
      v21 = v20;
      *&v45 = v17;
      *(&v45 + 1) = v18;
      *&v46 = v19;
      *(&v46 + 1) = v20;
      v22 = 64;
      v47 = 64;
      sub_1AE4C9430();
      result = swift_willThrowTypedImpl();
LABEL_10:
      v24 = v48;
      *v48 = v17;
      v24[1] = v18;
      v24[2] = v19;
      v24[3] = v21;
      *(v24 + 32) = v22;
      return result;
    }

    v5 = 0;
    v42 = v10;
  }

  else
  {
    v42 = 0;
  }

  v15 = sub_1AE4AC6E0(1919181921, 0xE400000000000000, 0, a1, a2, a3);
  v16 = v15;
  if (v15)
  {
    v11 = sub_1AE4A6A00(v15);
    if (v5)
    {
      goto LABEL_7;
    }

    v5 = 0;
  }

  v25 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, a1, a2, a3);
  if (v25)
  {
    result = sub_1AE4AEC7C(v25, v26);
    v17 = result;
    v18 = v27;
    if (v5)
    {
      v19 = v28;
      v20 = v29;
      *&v45 = result;
      *(&v45 + 1) = v27;
      *&v46 = v28;
      BYTE8(v46) = v29;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      goto LABEL_8;
    }

    v5 = 0;
    v30 = v27 >> 62;
    if ((v27 >> 62) <= 1)
    {
      if (!v30)
      {
        if (BYTE6(v27) != 16)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result != 16)
        {
          goto LABEL_37;
        }

LABEL_23:

        sub_1AE4A41E8(v17, v18);
        goto LABEL_24;
      }

LABEL_39:
      __break(1u);
      return result;
    }

    if (v30 == 2)
    {
      v32 = *(result + 16);
      v31 = *(result + 24);
      v33 = __OFSUB__(v31, v32);
      v34 = v31 - v32;
      if (v33)
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v34 == 16)
      {
        goto LABEL_23;
      }
    }

LABEL_37:
    *&v46 = 0;
    v45 = 7uLL;
    v20 = 0x80;
    BYTE8(v46) = 0x80;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v17, v18);
    v18 = 0;
    v19 = 0;
    v17 = 7;
    goto LABEL_9;
  }

LABEL_24:
  v35 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, a1, a2, a3);
  if (v35)
  {
    v36 = sub_1AE4AF28C(v35);
    v18 = v39;
    if (v5)
    {
LABEL_29:
      v17 = v36;
      v19 = v37;
      v20 = v38;
      *&v45 = v36;
      *(&v45 + 1) = v18;
      *&v46 = v37;
      BYTE8(v46) = v38;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      goto LABEL_8;
    }

    v5 = 0;
  }

  v40 = sub_1AE4AC6E0(1701603686, 0xE400000000000000, 0, a1, a2, a3);
  if (v40)
  {
    v36 = sub_1AE4AF28C(v40);
    v18 = v41;
    if (v5)
    {
      goto LABEL_29;
    }

    v5 = 0;
  }

  if (!(v16 | v42))
  {
    v45 = 0u;
    v46 = 0u;
    v22 = -64;
    v47 = -64;
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    goto LABEL_10;
  }

  result = sub_1AE4AFAB0(1936156019, 0xE400000000000000, 0, a1, a2, a3, v43);
  if (v5)
  {
    v17 = v43[0];
    v18 = v43[1];
    v19 = v43[2];
    v21 = v43[3];
    v22 = v44;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1AE4AEC7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v77 = *MEMORY[0x1E69E9840];
  v6 = sub_1AE4EAA30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v68[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 72);
  v12 = (*(a1 + 64))(a1, a2);
  v13 = v12;
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (v16)
    {
      goto LABEL_28;
    }

    v68[0] = *(a1 + 16);
    LOWORD(v68[1]) = v15;
    BYTE2(v68[1]) = BYTE2(v15);
    BYTE3(v68[1]) = BYTE3(v15);
    BYTE4(v68[1]) = BYTE4(v15);
    BYTE5(v68[1]) = BYTE5(v15);
    if (BYTE6(v15) < v12)
    {
      __break(1u);
      goto LABEL_59;
    }

    v73 = v12;
    v74 = BYTE6(v15);
    v75 = v68;
    v76 = v68 + BYTE6(v15);
    sub_1AE4A5694();
    v21 = v17;
    if (v2)
    {
LABEL_48:
      v54 = v18;
      v55 = v19;
      v56 = v20;
      sub_1AE4C78AC();
      v57 = swift_allocError();
      *v58 = v21;
      *(v58 + 8) = v54;
      *(v58 + 16) = v55;
      *(v58 + 24) = v56;
LABEL_53:
      v68[0] = v57;
      v63 = v57;
      v64 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
      swift_dynamicCast();
      v65 = v73;
      v69 = v73;
      v70 = v74;
      v71 = v75;
      v72 = v76;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();

LABEL_54:
      v66 = *MEMORY[0x1E69E9840];
      return v65;
    }

    sub_1AE4A65CC(v17);
    v23 = v22;
    v13 = 0;
    v24 = sub_1AE4AC038(v21);
    v14 = v24;
    if (v24 == 6)
    {
      goto LABEL_50;
    }

    if (v24)
    {
LABEL_52:
      v70 = 0;
      v71 = 0;
      v69 = 5;
      v72 = 0x80;
      sub_1AE4C78AC();
      swift_willThrowTypedImpl();
      v57 = swift_allocError();
      *(v62 + 8) = 0;
      *(v62 + 16) = 0;
      *v62 = 5;
      *(v62 + 24) = 0x80;
      goto LABEL_53;
    }

    v3 = v75;
    if (v75)
    {
LABEL_56:
      v51 = v73;
      (*(v7 + 104))(v10, *MEMORY[0x1E6969010], v6);
      goto LABEL_57;
    }

    __break(1u);
  }

  if (v16 != 2)
  {
    memset(v68, 0, 14);
    if (v13 > 0)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v73 = v13;
    v74 = 0;
    v75 = v68;
    v76 = v68;
    v52 = v3;
    sub_1AE4A5694();
    v21 = v53;
    if (v52)
    {
      goto LABEL_48;
    }

    sub_1AE4A65CC(v53);
    v23 = v59;
    result = sub_1AE4AC038(v21);
    if (result == 6)
    {
      goto LABEL_50;
    }

    if (result)
    {
      goto LABEL_52;
    }

    v3 = v75;
    if (!v75)
    {
      __break(1u);
      goto LABEL_67;
    }

    goto LABEL_56;
  }

  v67 = v7;
  v26 = *(v14 + 16);
  v25 = *(v14 + 24);
  v27 = sub_1AE4EA990();
  if (v27)
  {
    v28 = sub_1AE4EA9B0();
    if (__OFSUB__(v26, v28))
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
    }

    v27 += v26 - v28;
  }

  v29 = __OFSUB__(v25, v26);
  v7 = v25 - v26;
  if (v29)
  {
    goto LABEL_61;
  }

  v30 = sub_1AE4EA9A0();
  if (v30 >= v7)
  {
    v31 = v7;
  }

  else
  {
    v31 = v30;
  }

  if (v27)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32 < v13)
  {
    goto LABEL_62;
  }

  v33 = (v31 + v27);
  if (!v27)
  {
    v33 = 0;
  }

  v73 = v13;
  v74 = v32;
  v75 = v27;
  v76 = v33;
  v34 = v3;
  sub_1AE4A5694();
  v21 = v35;
  if (v34)
  {
    goto LABEL_48;
  }

  sub_1AE4A65CC(v35);
  v23 = v36;
  v13 = 0;
  v37 = sub_1AE4AC038(v21);
  v14 = v37;
  if (v37 == 6)
  {
LABEL_50:
    sub_1AE4C78AC();
    v60 = swift_allocError();
    *(v61 + 8) = 0;
    *(v61 + 16) = 0;
    *v61 = 0;
    *(v61 + 24) = 0x80;
    swift_willThrow();
    v57 = v60;
    goto LABEL_53;
  }

  if (v37)
  {
    goto LABEL_52;
  }

  v3 = v75;
  if (v75)
  {
LABEL_45:
    v51 = v73;
    (*(v67 + 104))(v10, *MEMORY[0x1E6969010], v6);
LABEL_57:
    v65 = sub_1AE4AB2E4(v3 + v51, v23, v10);
    goto LABEL_54;
  }

  __break(1u);
LABEL_28:
  v67 = v7;
  v38 = v14;
  v39 = v14 >> 32;
  v40 = v39 - v38;
  if (v39 < v38)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v41 = sub_1AE4EA990();
  if (v41)
  {
    v42 = sub_1AE4EA9B0();
    if (__OFSUB__(v38, v42))
    {
      goto LABEL_65;
    }

    v41 += v38 - v42;
  }

  v43 = sub_1AE4EA9A0();
  if (v43 >= v40)
  {
    v44 = v40;
  }

  else
  {
    v44 = v43;
  }

  if (v41)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if (v45 < v13)
  {
    goto LABEL_63;
  }

  v46 = (v44 + v41);
  if (!v41)
  {
    v46 = 0;
  }

  v73 = v13;
  v74 = v45;
  v75 = v41;
  v76 = v46;
  v47 = v3;
  sub_1AE4A5694();
  v21 = v48;
  if (v47)
  {
    goto LABEL_48;
  }

  sub_1AE4A65CC(v48);
  v23 = v49;
  result = sub_1AE4AC038(v21);
  if (result == 6)
  {
    goto LABEL_50;
  }

  if (result)
  {
    goto LABEL_52;
  }

  v3 = v75;
  if (v75)
  {
    goto LABEL_45;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AF28C(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 72);
  v4 = (*(a1 + 64))();
  v5 = v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v43[0] = *(a1 + 16);
      LOWORD(v43[1]) = v7;
      BYTE2(v43[1]) = BYTE2(v7);
      BYTE3(v43[1]) = BYTE3(v7);
      BYTE4(v43[1]) = BYTE4(v7);
      BYTE5(v43[1]) = BYTE5(v7);
      if (BYTE6(v7) >= v4)
      {
        v47 = v4;
        v48 = BYTE6(v7);
        v49 = v43;
        v50 = (v43 + BYTE6(v7));
        goto LABEL_34;
      }

      __break(1u);
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  if (v8 == 2)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = sub_1AE4EA990();
    if (v11)
    {
      v12 = sub_1AE4EA9B0();
      if (__OFSUB__(v9, v12))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (v13)
    {
      goto LABEL_44;
    }

    v15 = sub_1AE4EA9A0();
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 >= v5)
    {
LABEL_29:
      v22 = v16 + v11;
      if (!v11)
      {
        v22 = 0;
      }

      v47 = v5;
      v48 = v6;
      v49 = v11;
      v50 = v22;
      goto LABEL_34;
    }

    __break(1u);
LABEL_18:
    v17 = v6;
    v18 = v6 >> 32;
    v19 = v18 - v17;
    if (v18 < v17)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v11 = sub_1AE4EA990();
    if (v11)
    {
      v20 = sub_1AE4EA9B0();
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_47;
      }

      v11 += v17 - v20;
    }

    v21 = sub_1AE4EA9A0();
    if (v21 >= v19)
    {
      v16 = v19;
    }

    else
    {
      v16 = v21;
    }

    if (v11)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    if (v6 < v5)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  memset(v43, 0, 14);
  if (v4 > 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v47 = v4;
  v48 = 0;
  v49 = v43;
  v50 = v43;
LABEL_34:
  sub_1AE4A5694();
  v27 = v23;
  if (v1)
  {
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1AE4C78AC();
    v31 = swift_allocError();
    *v32 = v27;
    *(v32 + 8) = v28;
    *(v32 + 16) = v29;
    *(v32 + 24) = v30;
LABEL_39:
    v43[0] = v31;
    v38 = v31;
    v39 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD290, &qword_1AE4EDB70);
    swift_dynamicCast();
    v42 = v47;
    v45[0] = v47;
    v45[1] = v48;
    v45[2] = v49;
    v46 = v50;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    goto LABEL_40;
  }

  sub_1AE4A65CC(v23);
  v34 = v33;
  v35 = sub_1AE4AC038(v27);
  if (v35 == 6)
  {
    sub_1AE4C78AC();
    v36 = swift_allocError();
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *v37 = 0;
    *(v37 + 24) = 0x80;
    swift_willThrow();
    v31 = v36;
    goto LABEL_39;
  }

  sub_1AE4AF684(v35, v34, v47, v48, v49, v50, &v44, v45);
  v42 = v45[0];
LABEL_40:
  v40 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t sub_1AE4AF684@<X0>(uint64_t result@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  if (result != 2)
  {
    if (result == 1)
    {
      result = sub_1AE4AF8A4(a2);
      v14 = result;
      if (v8)
      {
        v15 = v13;
LABEL_16:
        *a7 = v14;
        *(a7 + 8) = v11;
        *(a7 + 16) = v12;
        *(a7 + 24) = v15;
        return result;
      }

      goto LABEL_23;
    }

    v14 = 3;
LABEL_15:
    v15 = 0x80;
    sub_1AE4C78AC();
    result = swift_willThrowTypedImpl();
    v11 = 0;
    v12 = 0;
    goto LABEL_16;
  }

  v16 = a6 - a5;
  if (!a5)
  {
    v16 = 0;
  }

  if (a3 < 0 || v16 < a3)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a4 < 0 || v16 < a4)
  {
    goto LABEL_26;
  }

  if (a2 + 0x4000000000000000 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = 2 * a2;
  if (a4 - a3 < 2 * a2)
  {
    v14 = 1;
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
  result = sub_1AE4EB230();
  v20 = v21 + v17;
  if (__OFADD__(v21, v17))
  {
    goto LABEL_28;
  }

  if (v20 < v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v21 < a3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v20 > a4)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD2B0, &qword_1AE4ECE20);
  sub_1AE4AC078(&qword_1EB5DD2B8, &qword_1EB5DD2B0, &qword_1AE4ECE20);
  sub_1AE4C915C();
  result = sub_1AE4EADB0();
  if (!v11)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_23:
  *a8 = v14;
  a8[1] = v11;
  return result;
}

uint64_t sub_1AE4AF8A4(int64_t a1)
{
  v3 = sub_1AE4EAD70();
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *v1;
  v7 = v1[2];
  if (v7)
  {
    v8 = v1[3] - v7;
  }

  else
  {
    v8 = 0;
  }

  if (v6 < 0 || v8 < v6)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v1[1];
  if (v9 < 0 || v8 < v9)
  {
    goto LABEL_18;
  }

  if (v9 - v6 >= a1)
  {
    v14 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD298, &qword_1AE4ECE10);
    result = sub_1AE4EB230();
    if (!__OFADD__(v13, a1))
    {
      if (v13 + a1 >= v13)
      {
        sub_1AE4EAD60();
        sub_1AE4AC078(&qword_1EB5DD158, &qword_1EB5DD298, &qword_1AE4ECE10);
        v11 = sub_1AE4EAD50();
        if (v12)
        {
          v10 = v11;
          sub_1AE4A97B4(a1);
        }

        else
        {
          sub_1AE4C78AC();
          swift_willThrowTypedImpl();
          return 0;
        }

        return v10;
      }

      goto LABEL_20;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v7)
  {
    v10 = v7 + v6;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    return v10;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1AE4AFAB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *MEMORY[0x1E69E9840];
  result = sub_1AE4AD490(a1, a2, a3, a4, a5, a6, a7, sub_1AE4AFB98);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1AE4AFB10@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v10 = qword_1AE4ED448[*(*a5 + 33)];
  v11 = a5[3];
  if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
  {
    result = sub_1AE4A67C4(*(*a5 + 33), v10 * v11, result, a2, a3, a4);
    if (v7)
    {
      *a6 = result;
      *(a6 + 8) = v12;
      *(a6 + 16) = v13;
      *(a6 + 24) = v14;
    }

    else
    {
      *a7 = result;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE4AFB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1AE4AC6E0(1684632949, 0xE400000000000000, 0, a1, a2, a3);
  if (!v9)
  {
    goto LABEL_11;
  }

  result = sub_1AE4AEC7C(v9, v10);
  v15 = result;
  v16 = v12;
  if (v4)
  {
LABEL_14:
    v25 = v13;
    v26 = v14;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

LABEL_22:
    sub_1AE4C9430();
    result = swift_willThrowTypedImpl();
    *a4 = v15;
    *(a4 + 8) = v16;
    *(a4 + 16) = v25;
    *(a4 + 24) = v26;
    *(a4 + 32) = 64;
    return result;
  }

  v5 = 0;
  v17 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(result + 16);
      v18 = *(result + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v21 == 16)
      {
        goto LABEL_10;
      }
    }

LABEL_20:
    v26 = 0x80;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();

    sub_1AE4A41E8(v15, v16);
    v16 = 0;
    v25 = 0;
    v15 = 7;
    goto LABEL_22;
  }

  if (!v17)
  {
    if (BYTE6(v12) != 16)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if (HIDWORD(result) - result != 16)
  {
    goto LABEL_20;
  }

LABEL_10:

  sub_1AE4A41E8(v15, v16);
LABEL_11:
  v22 = sub_1AE4AC6E0(1701667182, 0xE400000000000000, 0, a1, a2, a3);
  if (!v22)
  {
    v26 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v25 = 0;
    v16 = 0xE400000000000000;
    v15 = 1701667182;
    goto LABEL_22;
  }

  v23 = sub_1AE4AF28C(v22);
  v16 = v24;
  if (v5)
  {
    v15 = v23;
    goto LABEL_14;
  }

  v15 = 1702521203;

  v27 = sub_1AE4AC6E0(1702521203, 0xE400000000000000, 0, a1, a2, a3);
  if (!v27)
  {
    goto LABEL_21;
  }

  sub_1AE4A6A00(v27);

  v15 = 1702523750;
  v28 = sub_1AE4AC6E0(1702523750, 0xE400000000000000, 0, a1, a2, a3);
  if (!v28)
  {
    goto LABEL_21;
  }

  sub_1AE4A6A00(v28);
  v15 = 1919181168;

  v29 = sub_1AE4AC6E0(1919181168, 0xE400000000000000, 0, a1, a2, a3);
  if (!v29 || (sub_1AE4A6A00(v29), v15 = 1836213616, , (v30 = sub_1AE4AC6E0(1836213616, 0xE400000000000000, 0, a1, a2, a3)) == 0))
  {
LABEL_21:
    v26 = 96;
    sub_1AE4C78AC();
    swift_willThrowTypedImpl();
    v25 = 0;
    v16 = 0xE400000000000000;
    goto LABEL_22;
  }

  sub_1AE4A6A00(v30);
}