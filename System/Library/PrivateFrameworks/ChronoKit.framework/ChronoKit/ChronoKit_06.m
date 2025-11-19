uint64_t sub_1BF418C40(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = sub_1BF4E7194();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3985D8(a1, v12);
  if (!v1)
  {
    sub_1BF38C8B4(&qword_1EDC9FD98, &qword_1EBDD8F40, &qword_1BF4EF090);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
    v13 = v16;
  }

  return v13 & 1;
}

uint64_t sub_1BF418E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = sub_1BF4E7194();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BF3985D8(a1, v13);
  if (!v2)
  {
    v18 = v5;
    v15 = v19;
    sub_1BF38C8B4(&qword_1EBDD8F58, &qword_1EBDD8F48, &qword_1BF4EFDA0);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v18 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    v16 = sub_1BF4E7394();
    return (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  return result;
}

void sub_1BF4190E8(uint64_t a1)
{
  v44 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v38 - v5;
  v6 = *(v44 + 80);
  v45 = *(v6 - 8);
  isa = v45[8].isa;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v38 - v16;
  v18 = sub_1BF4E7194();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 160) == 1)
  {
    v43 = v3;
    sub_1BF3985D8(a1, v17);
    v42 = 0;
    (*(v19 + 56))(v17, 0, 1, v18);
    (*(v19 + 32))(v22, v17, v18);
    if (qword_1EDC9EFD8 != -1)
    {
      swift_once();
    }

    v23 = sub_1BF4E7B54();
    __swift_project_value_buffer(v23, qword_1EDCA6A48);
    v24 = v45;
    v41 = v45[2].isa;
    (v41)(v13, a1, v6);
    v25 = sub_1BF4E7B34();
    v26 = sub_1BF4E8E84();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = v26;
      v28 = v27;
      v39 = swift_slowAlloc();
      v48 = v39;
      *v28 = 136446210;
      (v41)(v10, v13, v6);
      v29 = v24[1].isa;
      v29(v13, v6);
      v30 = *(*(v44 + 104) + 8);
      v45 = v25;
      v31 = sub_1BF4E96A4();
      v33 = v32;
      v29(v10, v6);
      v34 = sub_1BF38D65C(v31, v33, &v48);

      *(v28 + 4) = v34;
      v25 = v45;
      _os_log_impl(&dword_1BF389000, v45, v40, "%{public}s marked as removed from store", v28, 0xCu);
      v35 = v39;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1BFB5A5D0](v35, -1, -1);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
    }

    else
    {
      (v24[1].isa)(v13, v6);
    }

    v36 = v46;
    LOBYTE(v48) = 1;
    sub_1BF4E7604();
    sub_1BF38C8B4(&qword_1EDC9D5B8, &qword_1EBDD8F40, &qword_1BF4EF090);
    v37 = v42;
    sub_1BF4E7044();
    if (v37)
    {
    }

    (*(v47 + 8))(v36, v43);
    (*(v19 + 8))(v22, v18);
  }
}

id sub_1BF419688(uint64_t a1)
{
  v3 = *(*(*(*v1 + 10) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15[3] = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3985D8(a1, v10);
  v11 = v1[2];
  sub_1BF4E7164();
  v12 = sub_1BF4E88E4();

  v13 = [v11 fileExistsAtPath_];

  (*(v7 + 8))(v10, v6);
  return v13;
}

char *sub_1BF419ACC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BB8, &unk_1BF4ED400);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BC0, qword_1BF4ED410);
  v26 = *(v24 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1BF4E7194();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF3985D8(a1, v17);
  if (!v1)
  {
    v21 = v9;
    v22 = v14;
    v23 = v13;
    sub_1BF38C8B4(&qword_1EDC9F088, &qword_1EBDD8BC0, qword_1BF4ED410);
    v18 = v24;
    sub_1BF4E7034();
    v20 = v26;
    (*(v26 + 56))(v6, 0, 1, v18);
    (*(v20 + 32))(v12, v6, v18);
    sub_1BF4E7614();
    (*(v20 + 8))(v12, v18);
    (*(v22 + 8))(v17, v23);
    return v25;
  }

  return v12;
}

uint64_t sub_1BF419F18(id *a1, id *a2)
{
  v113[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for WidgetEntryKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v97 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v105 = &v97 - v13;
  v14 = sub_1BF4E6D64();
  v15 = *(v14 - 8);
  v108 = v14;
  v109 = v15;
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BF4E8424();
  v100 = *(v101 - 8);
  v18 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v104 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BF4E7194();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v97 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v103 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v97 - v32;
  v34 = *(v21 + 56);
  v34(&v97 - v32, 1, 1, v20, v31);
  v35 = a1;
  v111 = a2;
  v36 = v106;
  sub_1BF3F4FF4(a1, v26);
  v107 = v33;
  if (v36)
  {
    v37 = v21;
    v38 = v20;
    v39 = a1;
    v44 = v108;
    v45 = v110;
    v46 = v111;
    v47 = v107;
    v48 = v109;
    if (*(v111 + 160) == 1)
    {
      v106 = v39;
      v49 = v107;
      v113[0] = v36;
      v50 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v51 = v105;
      v52 = swift_dynamicCast();
      v53 = v48[7];
      if (v52)
      {
        v53(v51, 0, 1, v44);
        (v48[4])(v45, v51, v44);
        if (sub_1BF41B748())
        {
          v47 = v49;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v54 = sub_1BF4E7B54();
          __swift_project_value_buffer(v54, qword_1EDCA6940);
          v55 = v99;
          sub_1BF41C6B4(v106, v99, type metadata accessor for WidgetEntryKey);
          v56 = sub_1BF4E7B34();
          v57 = sub_1BF4E8E84();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v113[0] = v59;
            *v58 = 136446210;
            v111 = v36;
            v60 = v98;
            sub_1BF41C6B4(v55, v98, type metadata accessor for WidgetEntryKey);
            sub_1BF41C71C(v55, type metadata accessor for WidgetEntryKey);
            v61 = WidgetEntryKey.description.getter();
            v63 = v62;
            sub_1BF41C71C(v60, type metadata accessor for WidgetEntryKey);
            v64 = sub_1BF38D65C(v61, v63, v113);

            *(v58 + 4) = v64;
            _os_log_impl(&dword_1BF389000, v56, v57, "Not removing item for key %{public}s because of keybag", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v59);
            MEMORY[0x1BFB5A5D0](v59, -1, -1);
            MEMORY[0x1BFB5A5D0](v58, -1, -1);

            (v109[1])(v110, v108);
          }

          else
          {
            sub_1BF41C71C(v55, type metadata accessor for WidgetEntryKey);

            (v109[1])(v110, v44);
          }

          goto LABEL_26;
        }

        (v48[1])(v45, v44);
      }

      else
      {
        v53(v51, 1, 1, v44);
        sub_1BF38C9B4(v51, &qword_1EBDD8BF0, &qword_1BF4ED508);
      }

      v47 = v49;
      v66 = v103;
      sub_1BF38C94C(v49, v103, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v37 + 48))(v66, 1, v38) == 1)
      {
        sub_1BF38C9B4(v66, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v67 = v46;
        v68 = v37;
        v69 = *(v37 + 32);
        v70 = v102;
        v69(v102, v66, v38);
        v71 = v67[2];
        v72 = sub_1BF4E7094();
        v113[0] = 0;
        v73 = [v71 removeItemAtURL:v72 error:v113];

        if (v73)
        {
          v111 = v68;
          v74 = qword_1EDC9EFD8;
          v75 = v113[0];
          if (v74 != -1)
          {
            swift_once();
          }

          v76 = sub_1BF4E7B54();
          __swift_project_value_buffer(v76, qword_1EDCA6A48);
          v77 = v97;
          sub_1BF41C6B4(v106, v97, type metadata accessor for WidgetEntryKey);
          v78 = v36;
          v79 = sub_1BF4E7B34();
          v80 = sub_1BF4E8E84();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v110 = v38;
            v82 = v81;
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v113[0] = v109;
            *v82 = 136446466;
            v83 = v98;
            sub_1BF41C6B4(v77, v98, type metadata accessor for WidgetEntryKey);
            sub_1BF41C71C(v77, type metadata accessor for WidgetEntryKey);
            v84 = WidgetEntryKey.description.getter();
            v86 = v85;
            sub_1BF41C71C(v83, type metadata accessor for WidgetEntryKey);
            v87 = sub_1BF38D65C(v84, v86, v113);

            *(v82 + 4) = v87;
            *(v82 + 12) = 2114;
            v88 = v36;
            v89 = _swift_stdlib_bridgeErrorToNSError();
            *(v82 + 14) = v89;
            v90 = v108;
            *v108 = v89;
            _os_log_impl(&dword_1BF389000, v79, v80, "Removing item for key %{public}s because  %{public}@", v82, 0x16u);
            sub_1BF38C9B4(v90, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v90, -1, -1);
            v91 = v109;
            __swift_destroy_boxed_opaque_existential_1Tm(v109);
            MEMORY[0x1BFB5A5D0](v91, -1, -1);
            MEMORY[0x1BFB5A5D0](v82, -1, -1);

            (v111[1])(v102, v110);
          }

          else
          {
            sub_1BF41C71C(v77, type metadata accessor for WidgetEntryKey);

            (v111[1])(v102, v38);
          }
        }

        else
        {
          v92 = v113[0];
          v93 = sub_1BF4E6FF4();

          swift_willThrow();
          v68[1](v70, v38);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    sub_1BF38C9B4(v47, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    goto LABEL_27;
  }

  sub_1BF38C9B4(v33, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v21 + 16))(v33, v26, v20);
  (v34)(v33, 0, 1, v20);
  v40 = v111;
  swift_beginAccess();
  sub_1BF38E49C((v40 + 15), v113);
  v41 = v113[4];
  __swift_project_boxed_opaque_existential_1(v113, v113[3]);
  v106 = v35;
  v42 = [*v35 extensionIdentity];
  v43 = v104;
  v41[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  if (v111[20])
  {
    v65 = v111[2];
    sub_1BF3B36F0(v26, v65);
  }

  sub_1BF3F4084(&v112);
  (*(v100 + 8))(v43, v101);
  (*(v21 + 8))(v26, v20);
  sub_1BF38C9B4(v107, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v94 = v112;
LABEL_27:
  v95 = *MEMORY[0x1E69E9840];
  return v94 & 1;
}

uint64_t sub_1BF41AB54(id *a1, uint64_t *a2)
{
  v114[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ControlEntryKey();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v99 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v98 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v109 = (&v98 - v13);
  v107 = sub_1BF4E6D64();
  v110 = *(v107 - 8);
  v14 = v110[8];
  MEMORY[0x1EEE9AC00](v107);
  v111 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF4E8424();
  v102 = *(v16 - 8);
  v103 = v16;
  v17 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BF4E7194();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v98 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v105 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v98 - v32;
  v34 = *(v20 + 56);
  v34(&v98 - v32, 1, 1, v19, v31);
  v108 = v26;
  v35 = v26;
  v36 = a1;
  v113 = a2;
  v37 = v112;
  sub_1BF3F5278(a1, v35);
  v104 = a1;
  if (v37)
  {
    v38 = v20;
    v39 = v19;
    v45 = v110;
    v44 = v111;
    v46 = v109;
    if (*(v113 + 160) == 1)
    {
      v47 = v113;
      v112 = v23;
      v114[0] = v37;
      v48 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      v49 = v107;
      v50 = swift_dynamicCast();
      v51 = v45[7];
      if (v50)
      {
        v51(v46, 0, 1, v49);
        (v45[4])(v44, v46, v49);
        if (sub_1BF41B748())
        {
          v52 = v104;
          if (qword_1EDC9D4C0 != -1)
          {
            swift_once();
          }

          v53 = sub_1BF4E7B54();
          __swift_project_value_buffer(v53, qword_1EDCA6940);
          v54 = v101;
          sub_1BF41C6B4(v52, v101, type metadata accessor for ControlEntryKey);
          v55 = sub_1BF4E7B34();
          v56 = sub_1BF4E8E84();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v114[0] = v112;
            *v57 = 136446210;
            v113 = v37;
            v58 = v100;
            sub_1BF41C6B4(v54, v100, type metadata accessor for ControlEntryKey);
            sub_1BF41C71C(v54, type metadata accessor for ControlEntryKey);
            v59 = v45;
            v60 = ControlEntryKey.description.getter();
            v62 = v61;
            sub_1BF41C71C(v58, type metadata accessor for ControlEntryKey);
            v63 = sub_1BF38D65C(v60, v62, v114);

            *(v57 + 4) = v63;
            _os_log_impl(&dword_1BF389000, v55, v56, "Not removing item for key %{public}s because of keybag", v57, 0xCu);
            v64 = v112;
            __swift_destroy_boxed_opaque_existential_1Tm(v112);
            MEMORY[0x1BFB5A5D0](v64, -1, -1);
            MEMORY[0x1BFB5A5D0](v57, -1, -1);

            (v59[1])(v111, v107);
          }

          else
          {
            sub_1BF41C71C(v54, type metadata accessor for ControlEntryKey);

            (v45[1])(v111, v107);
          }

          goto LABEL_26;
        }

        v65 = v39;
        v70 = v49;
        v66 = v38;
        (v45[1])(v44, v70);
      }

      else
      {
        v51(v46, 1, 1, v49);
        sub_1BF38C9B4(v46, &qword_1EBDD8BF0, &qword_1BF4ED508);
        v65 = v39;
        v66 = v38;
      }

      v71 = v105;
      sub_1BF38C94C(v33, v105, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      if ((*(v66 + 48))(v71, 1, v65) == 1)
      {
        sub_1BF38C9B4(v71, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
      }

      else
      {
        v72 = v112;
        (*(v66 + 32))(v112, v71, v65);
        v73 = v47[2];
        v74 = sub_1BF4E7094();
        v114[0] = 0;
        v75 = [v73 removeItemAtURL:v74 error:v114];

        if (v75)
        {
          v113 = v66;
          v76 = qword_1EDC9EFD8;
          v77 = v114[0];
          if (v76 != -1)
          {
            swift_once();
          }

          v78 = sub_1BF4E7B54();
          __swift_project_value_buffer(v78, qword_1EDCA6A48);
          v79 = v99;
          sub_1BF41C6B4(v104, v99, type metadata accessor for ControlEntryKey);
          v80 = v37;
          v81 = sub_1BF4E7B34();
          v82 = sub_1BF4E8E84();

          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v114[0] = v110;
            *v83 = 136446466;
            v84 = v100;
            sub_1BF41C6B4(v79, v100, type metadata accessor for ControlEntryKey);
            sub_1BF41C71C(v79, type metadata accessor for ControlEntryKey);
            v85 = ControlEntryKey.description.getter();
            v111 = v65;
            v86 = v85;
            v88 = v87;
            sub_1BF41C71C(v84, type metadata accessor for ControlEntryKey);
            v89 = sub_1BF38D65C(v86, v88, v114);

            *(v83 + 4) = v89;
            *(v83 + 12) = 2114;
            v90 = v37;
            v91 = _swift_stdlib_bridgeErrorToNSError();
            *(v83 + 14) = v91;
            v92 = v109;
            *v109 = v91;
            _os_log_impl(&dword_1BF389000, v81, v82, "Removing item for key %{public}s because  %{public}@", v83, 0x16u);
            sub_1BF38C9B4(v92, &unk_1EBDD9260, &qword_1BF4EC380);
            MEMORY[0x1BFB5A5D0](v92, -1, -1);
            v93 = v110;
            __swift_destroy_boxed_opaque_existential_1Tm(v110);
            MEMORY[0x1BFB5A5D0](v93, -1, -1);
            MEMORY[0x1BFB5A5D0](v83, -1, -1);

            (v113[1])(v112, v111);
          }

          else
          {
            sub_1BF41C71C(v79, type metadata accessor for ControlEntryKey);

            (v113[1])(v112, v65);
          }
        }

        else
        {
          v94 = v114[0];
          v95 = sub_1BF4E6FF4();

          swift_willThrow();
          (*(v66 + 8))(v72, v65);
        }
      }
    }

LABEL_26:
    swift_willThrow();
    v69 = v33;
    goto LABEL_27;
  }

  v112 = v23;
  sub_1BF38C9B4(v33, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  (*(v20 + 16))(v33, v108, v19);
  (v34)(v33, 0, 1, v19);
  v40 = v113;
  swift_beginAccess();
  sub_1BF38E49C((v40 + 15), v114);
  v41 = v114[4];
  __swift_project_boxed_opaque_existential_1(v114, v114[3]);
  v42 = [*v36 extensionIdentity];
  v43 = v106;
  v41[2]();

  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  v67 = v108;
  if (v113[20])
  {
    v68 = v113[2];
    sub_1BF3B36F0(v67, v68);
  }

  (*(v102 + 8))(v43, v103);
  (*(v20 + 8))(v67, v19);
  v69 = v33;
LABEL_27:
  sub_1BF38C9B4(v69, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v96 = *MEMORY[0x1E69E9840];
  return 1;
}

BOOL sub_1BF41B748()
{
  v0 = sub_1BF4E6D54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  sub_1BF4E6D64();
  sub_1BF41C66C(&qword_1EDC9F110, MEMORY[0x1E6967E98]);
  sub_1BF4E6FC4();
  sub_1BF4E6CF4();
  sub_1BF41C66C(&qword_1EDC9F118, MEMORY[0x1E6967E70]);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v8(v7, v0);
  if (v11 == v10)
  {
    return 1;
  }

  sub_1BF4E6FC4();
  sub_1BF4E6D04();
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  v8(v5, v0);
  v8(v7, v0);
  return v11 == v10;
}

uint64_t BaseCacheManager.__allocating_init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  BaseCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t URL.hasRequiresReloadExtendedAttribute.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F38, &qword_1BF4F7A30);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
  sub_1BF38C8B4(&qword_1EDC9FD98, &qword_1EBDD8F40, &qword_1BF4EF090);
  sub_1BF4E7034();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1BF38C94C(v6, v4, &qword_1EBDD8F38, &qword_1BF4F7A30);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD8F38, &qword_1BF4F7A30);
    sub_1BF38C9B4(v4, &qword_1EBDD8F38, &qword_1BF4F7A30);
    return 0;
  }

  else
  {
    sub_1BF4E7614();
    sub_1BF38C9B4(v6, &qword_1EBDD8F38, &qword_1BF4F7A30);
    v9 = v11[7];
    (*(v8 + 8))(v4, v7);
  }

  return v9;
}

uint64_t BaseCacheManager.__deallocating_deinit()
{
  BaseCacheManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF41BF44(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit20CacheManagementErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF41C18C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF41C1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BF41C23C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1BF41C66C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF41C6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BF41C71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WidgetExtensionInfo.version.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WidgetExtensionInfo.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t WidgetExtensionInfo.localizedDisplayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t WidgetExtensionInfo.localizedDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t WidgetExtensionInfo.pluginUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 28);
  v4 = sub_1BF4E7394();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.pluginUUID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 28);
  v4 = sub_1BF4E7394();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.lastModifiedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 32);
  v4 = sub_1BF4E7334();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.isInternal.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 40);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.bundleURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 40);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.dataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 44);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.dataContainerURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 44);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.systemDataContainerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 48);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.systemDataContainerURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 48);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.requestedDataProtection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetExtensionInfo() + 52);

  return sub_1BF414A5C(v3, a1);
}

uint64_t WidgetExtensionInfo.requestedDataProtection.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetExtensionInfo() + 52);

  return sub_1BF41D048(a1, v3);
}

uint64_t sub_1BF41D048(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t WidgetExtensionInfo.wantsLocation.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.containerBundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 60);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetExtensionInfo.containerBundleURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 60);
  v4 = sub_1BF4E7194();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetExtensionInfo.effectiveContainerBundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetExtensionInfo() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WidgetExtensionInfo.effectiveContainerBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 64));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.localizedContainerDisplayName.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetExtensionInfo() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WidgetExtensionInfo.localizedContainerDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 68));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.containerBundleVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetExtensionInfo() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WidgetExtensionInfo.containerBundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.sdkVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetExtensionInfo() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WidgetExtensionInfo.sdkVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 76));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.platform.setter(uint64_t a1)
{
  result = type metadata accessor for WidgetExtensionInfo();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.watchKitExtensionIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetExtensionInfo() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WidgetExtensionInfo.watchKitExtensionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.pushEnvironment.getter()
{
  v1 = (v0 + *(type metadata accessor for WidgetExtensionInfo() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WidgetExtensionInfo.pushEnvironment.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WidgetExtensionInfo() + 88));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t WidgetExtensionInfo.isDevelopmentExtension.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo();
  *(v1 + *(result + 92)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.availableLocalizations.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo() + 96));
}

uint64_t WidgetExtensionInfo.availableLocalizations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 96);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.allowsMixedLocalizations.setter(char a1)
{
  result = type metadata accessor for WidgetExtensionInfo();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t WidgetExtensionInfo.nominatedContainingBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 104);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void *WidgetExtensionInfo.entitlements.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetExtensionInfo() + 108));
  v2 = v1;
  return v1;
}

void WidgetExtensionInfo.entitlements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetExtensionInfo() + 108);

  *(v1 + v3) = a1;
}

uint64_t WidgetExtensionInfo.bundleStub.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(type metadata accessor for WidgetExtensionInfo() + 40);
  v9 = sub_1BF4E7194();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, v0 + v8, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  v11 = v6;

  return sub_1BF4E82D4();
}

uint64_t WidgetExtensionInfo.init(id:version:localizedDisplayName:pluginUUID:lastModifiedDate:isInternal:bundleURL:dataContainerURL:systemDataContainerURL:requestedDataProtection:wantsLocation:containerBundleURL:effectiveContainerBundleIdentifier:localizedContainerDisplayName:containerBundleVersion:sdkVersion:platform:watchKitExtensionIdentifier:pushEnvironment:isDevelopmentExtension:availableLocalizations:allowsMixedLocalizations:nominatedContainingBundleIdentifiers:entitlements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33)
{
  v39 = type metadata accessor for WidgetExtensionInfo();
  v40 = v39[13];
  v41 = sub_1BF4E8424();
  (*(*(v41 - 8) + 56))(&a9[v40], 1, 1, v41);
  v42 = &a9[v39[17]];
  v43 = &a9[v39[21]];
  v58 = &a9[v39[22]];
  v59 = v39[27];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  v44 = v39[7];
  v45 = sub_1BF4E7394();
  (*(*(v45 - 8) + 32))(&a9[v44], a6, v45);
  v46 = v39[8];
  v47 = sub_1BF4E7334();
  (*(*(v47 - 8) + 32))(&a9[v46], a7, v47);
  a9[v39[9]] = a8;
  v48 = v39[10];
  v49 = sub_1BF4E7194();
  v50 = *(*(v49 - 8) + 32);
  v50(&a9[v48], a10, v49);
  v50(&a9[v39[11]], a11, v49);
  v50(&a9[v39[12]], a12, v49);
  sub_1BF41D048(a13, &a9[v40]);
  a9[v39[14]] = a14;
  result = (v50)(&a9[v39[15]], a15, v49);
  v52 = &a9[v39[16]];
  *v52 = a16;
  *(v52 + 1) = a17;
  *v42 = a18;
  *(v42 + 1) = a19;
  v53 = &a9[v39[18]];
  *v53 = a20;
  *(v53 + 1) = a21;
  v54 = &a9[v39[19]];
  *v54 = a22;
  *(v54 + 1) = a23;
  *&a9[v39[20]] = a24;
  *v43 = a25;
  *(v43 + 1) = a26;
  *v58 = a27;
  *(v58 + 1) = a28;
  a9[v39[23]] = a29;
  *&a9[v39[24]] = a30;
  a9[v39[25]] = a31;
  *&a9[v39[26]] = a32;
  *&a9[v59] = a33;
  return result;
}

uint64_t WidgetExtensionInfo.matches(_:)(uint64_t *a1)
{
  v2 = v1;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v4 = *v1;
  v5 = *a1;
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  v6 = v1[1] == a1[1] && v1[2] == a1[2];
  if (!v6 && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for WidgetExtensionInfo();
  v8 = *(v7 + 32);
  if ((sub_1BF4E72D4() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[4];
  v10 = a1[4];
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v10 || (v2[3] != a1[3] || v9 != v10) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v11 = *(v7 + 68);
  v12 = (v2 + v11);
  v13 = *(v2 + v11 + 8);
  v14 = (a1 + v11);
  v15 = v14[1];
  result = (v13 | v15) == 0;
  if (v13)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    if (*v12 == *v14 && v13 == v15)
    {
      return 1;
    }

    else
    {

      return sub_1BF4E9734();
    }
  }

  return result;
}

uint64_t WidgetExtensionInfo.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  sub_1BF4E90B4();
  v3 = v1[1];
  v4 = v1[2];
  sub_1BF4E89F4();
  LODWORD(v2) = *(type metadata accessor for WidgetExtensionInfo() + 32);
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  return sub_1BF4E8884();
}

void WidgetExtensionInfo.hashRecordVersion(into:)()
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v1 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v55 - v5;
  v7 = sub_1BF4E8314();
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = *v0;
  v70 = v0;
  *&v71 = v14;
  v15 = sub_1BF4E9034();
  v16 = sub_1BF422528(&qword_1EDC9D6D0, MEMORY[0x1E69941C0]);
  v17 = v72;
  sub_1BF4E7AA4();
  if (v17)
  {
    return;
  }

  v61 = v14;
  v62 = v16;
  v63 = v15;
  v64 = v13;
  v65 = v10;
  v66 = v6;
  v67 = v7;
  v72 = v3;
  v18 = v70;
  v71 = *(v70 + 3);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F68, &unk_1BF4EF420);
  sub_1BF41EB50(&unk_1EDC96410, &qword_1EBDD8F68, &unk_1BF4EF420);
  sub_1BF4E7AA4();
  v20 = type metadata accessor for WidgetExtensionInfo();
  LOBYTE(v71) = *(v18 + v20[9]);
  sub_1BF4E7AA4();
  v21 = v20[10];
  v22 = sub_1BF4E7194();
  v23 = sub_1BF422528(&qword_1EDC9D618, MEMORY[0x1E6968FB0]);
  sub_1BF4E7AA4();
  v24 = v20[11];
  sub_1BF4E7AA4();
  v25 = v20[12];
  sub_1BF4E7AA4();
  v26 = v20[13];
  v59 = v23;
  v60 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  sub_1BF41EA9C();
  sub_1BF4E7AA4();
  LOBYTE(v71) = *(v18 + v20[14]);
  sub_1BF4E7AA4();
  v27 = v20[15];
  sub_1BF4E7AA4();
  v28 = (v18 + v20[16]);
  v30 = *v28;
  v29 = v28[1];
  *&v71 = v30;
  *(&v71 + 1) = v29;
  sub_1BF4E7AA4();
  v31 = v18;
  v71 = *(v18 + v20[17]);
  sub_1BF4E7AA4();
  v32 = (v18 + v20[18]);
  v34 = *v32;
  v33 = v32[1];
  *&v71 = v34;
  *(&v71 + 1) = v33;
  sub_1BF4E7AA4();
  v35 = (v18 + v20[19]);
  v37 = *v35;
  v36 = v35[1];
  *&v71 = v37;
  *(&v71 + 1) = v36;
  sub_1BF4E7AA4();
  if (HIDWORD(*(v18 + v20[20])))
  {
    __break(1u);
LABEL_11:
    v51 = v66;
    v58(v66, v31 + v21, v22);
    v56(v51, 0, 1, v22);
    v52 = v55;

    v53 = v65;
    sub_1BF4E82D4();
    v54 = v72;
    sub_1BF4E82F4();
    v19(v53, v67);
    sub_1BF41EC38();
    sub_1BF4E7AA4();
    sub_1BF38C9B4(v54, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    return;
  }

  LODWORD(v71) = *(v18 + v20[20]);
  sub_1BF4E7AA4();
  v71 = *(v18 + v20[21]);
  sub_1BF4E7AA4();
  v71 = *(v18 + v20[22]);
  sub_1BF4E7AA4();
  LOBYTE(v71) = *(v18 + v20[23]);
  sub_1BF4E7AA4();
  *&v71 = *(v18 + v20[24]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF41EB50(&qword_1EDC963E8, &unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF4E7AA4();
  LOBYTE(v71) = *(v18 + v20[25]);
  sub_1BF4E7AA4();
  *&v71 = *(v18 + v20[26]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F70, &unk_1BF4EF430);
  sub_1BF41EBB0(&qword_1EDC96400, &qword_1EDC9D5B0);
  sub_1BF4E7AA4();
  v60 = 0;
  v38 = *(v18 + v20[27]);
  if (!v38 || (sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288), v39 = v38, v40 = v60, sub_1BF4E7AB4(), v39, (v60 = v40) == 0))
  {
    v41 = v18[1];
    v42 = v31[2];
    v43 = *(v22 - 8);
    v44 = *(v43 + 16);
    v45 = v66;
    v57 = v43 + 16;
    v58 = v44;
    v44(v66, v31 + v21, v22);
    v56 = *(v43 + 56);
    v56(v45, 0, 1, v22);
    v46 = v61;

    v47 = v64;
    v55 = v46;
    v61 = v41;
    v59 = v42;
    sub_1BF4E82D4();
    v48 = sub_1BF4E82E4();
    v49 = *(v68 + 8);
    v68 += 8;
    v19 = v49;
    v49(v47, v67);
    *&v71 = v48;
    v50 = v60;
    sub_1BF4E7AA4();

    if (!v50)
    {
      goto LABEL_11;
    }
  }
}

unint64_t sub_1BF41EA9C()
{
  result = qword_1EDC96450;
  if (!qword_1EDC96450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
    sub_1BF422528(&qword_1EDC96468, MEMORY[0x1E69859A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC96450);
  }

  return result;
}

uint64_t sub_1BF41EB50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1BF41EBB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F70, &unk_1BF4EF430);
    sub_1BF421E90(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF41EC38()
{
  result = qword_1EDC9D608;
  if (!qword_1EDC9D608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF422528(&qword_1EDC9D618, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D608);
  }

  return result;
}

uint64_t WidgetExtensionInfo.hashValue.getter()
{
  v1 = v0;
  sub_1BF4E9804();
  v2 = *v0;
  sub_1BF4E90B4();
  v3 = v1[1];
  v4 = v1[2];
  sub_1BF4E89F4();
  LODWORD(v2) = *(type metadata accessor for WidgetExtensionInfo() + 32);
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

unint64_t sub_1BF41EDAC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x55556E6967756C70;
      break;
    case 4:
    case 7:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6E7265746E497369;
      break;
    case 6:
      result = 0x5255656C646E7562;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x636F4C73746E6177;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0xD000000000000023;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x69737265566B6473;
      break;
    case 16:
      result = 0x6D726F6674616C70;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 18:
      result = 0x69766E4568737570;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD000000000000024;
      break;
    case 23:
      result = 0x6D656C7469746E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF41F070(uint64_t a1)
{
  v3 = v1;
  sub_1BF4E9804();
  v4 = *v1;
  sub_1BF4E90B4();
  v5 = v3[1];
  v6 = v3[2];
  sub_1BF4E89F4();
  v7 = *(a1 + 32);
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t sub_1BF41F128(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  sub_1BF4E90B4();
  v6 = v4[1];
  v7 = v4[2];
  sub_1BF4E89F4();
  v8 = *(a2 + 32);
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  return sub_1BF4E8884();
}

uint64_t sub_1BF41F1C4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1BF4E9804();
  v5 = *v2;
  sub_1BF4E90B4();
  v6 = v4[1];
  v7 = v4[2];
  sub_1BF4E89F4();
  v8 = *(a2 + 32);
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

id sub_1BF41F278@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1BF41F288(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BF41EDAC(*a1);
  v5 = v4;
  if (v3 == sub_1BF41EDAC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF4E9734();
  }

  return v8 & 1;
}

uint64_t sub_1BF41F310()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF41EDAC(v1);
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF41F374()
{
  sub_1BF41EDAC(*v0);
  sub_1BF4E89F4();
}

uint64_t sub_1BF41F3C8()
{
  v1 = *v0;
  sub_1BF4E9804();
  sub_1BF41EDAC(v1);
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF41F428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF4224D4();
  *a2 = result;
  return result;
}

unint64_t sub_1BF41F458@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BF41EDAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BF41F48C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF4224D4();
  *a1 = result;
  return result;
}

uint64_t sub_1BF41F4C0(uint64_t a1)
{
  v2 = sub_1BF421DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF41F4FC(uint64_t a1)
{
  v2 = sub_1BF421DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetExtensionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v124 = &v117 - v5;
  v6 = sub_1BF4E7194();
  v132 = *(v6 - 8);
  v133 = v6;
  v7 = v132[8];
  MEMORY[0x1EEE9AC00](v6);
  v123 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v117 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v117 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v127 = &v117 - v14;
  v130 = sub_1BF4E7334();
  v128 = *(v130 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v134 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1BF4E7394();
  v129 = *(v131 - 8);
  v17 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F78, &qword_1BF4EF440);
  v135 = *(v20 - 8);
  v21 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v117 - v22;
  v24 = type metadata accessor for WidgetExtensionInfo();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v28 + 52);
  v30 = sub_1BF4E8424();
  v31 = *(*(v30 - 8) + 56);
  v138 = v29;
  v31(&v27[v29], 1, 1, v30);
  v139 = v24;
  v140 = v27;
  v32 = *(v24 + 108);
  *&v27[v32] = 0;
  v34 = a1[3];
  v33 = a1[4];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1BF421DC0();
  v35 = v136;
  sub_1BF4E9854();
  if (v35)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v137);

    sub_1BF38C9B4(v140 + v138, &qword_1EBDD8AF8, &qword_1BF4EC370);

    goto LABEL_4;
  }

  v36 = v19;
  v37 = v134;
  v121 = v30;
  v120 = v32;
  sub_1BF4E9034();
  v143 = 0;
  sub_1BF422528(&qword_1EDC9D6C8, MEMORY[0x1E69941C0]);
  v38 = v23;
  sub_1BF4E95B4();
  v41 = v140;
  v40 = v141;
  *v140 = v141;
  LOBYTE(v141) = 1;
  v42 = sub_1BF4E9564();
  v43 = v135;
  *(v41 + 1) = v42;
  *(v41 + 2) = v44;
  LOBYTE(v141) = 2;
  v45 = sub_1BF4E9544();
  v117 = v40;
  v118 = 0;
  *(v41 + 3) = v45;
  *(v41 + 4) = v46;
  v119 = v46;
  LOBYTE(v141) = 3;
  sub_1BF422528(&qword_1EBDD8958, MEMORY[0x1E69695A8]);
  v47 = v36;
  v48 = v131;
  sub_1BF4E95B4();
  v49 = v139;
  (*(v129 + 32))(&v41[v139[7]], v47, v48);
  LOBYTE(v141) = 4;
  sub_1BF422528(&qword_1EDC9D5F0, MEMORY[0x1E6969530]);
  v50 = v130;
  sub_1BF4E95B4();
  (*(v128 + 32))(&v41[v49[8]], v37, v50);
  LOBYTE(v141) = 5;
  v51 = v49;
  v41[v49[9]] = sub_1BF4E9574() & 1;
  LOBYTE(v141) = 6;
  v52 = sub_1BF422528(&qword_1EBDD8F80, MEMORY[0x1E6968FB0]);
  v53 = v127;
  v54 = v20;
  v55 = v133;
  sub_1BF4E95B4();
  v68 = &v41[v51[10]];
  v69 = v132[4];
  v69(v68, v53, v55);
  LOBYTE(v141) = 7;
  v70 = v52;
  v71 = v126;
  sub_1BF4E95B4();
  v136 = 0;
  v69(v140 + v139[11], v71, v55);
  LOBYTE(v141) = 8;
  v72 = v125;
  v134 = v70;
  v73 = v136;
  sub_1BF4E95B4();
  v136 = v73;
  if (v73)
  {
    (*(v43 + 8))(v38, v54);
    LODWORD(v124) = 0;
    LODWORD(v126) = 0;
LABEL_28:
    v74 = v140;
    __swift_destroy_boxed_opaque_existential_1Tm(v137);

    v134 = 0;
    LODWORD(v135) = 0;
    LODWORD(v127) = 0;
    v75 = 0;
    LODWORD(v125) = 1;
    goto LABEL_12;
  }

  v76 = v118;
  v69(v140 + v139[12], v72, v55);
  LOBYTE(v141) = 9;
  sub_1BF422528(&qword_1EBDD8C08, MEMORY[0x1E69859A8]);
  v77 = v54;
  v78 = v38;
  v79 = v136;
  sub_1BF4E9554();
  v136 = v79;
  if (v79)
  {
    goto LABEL_32;
  }

  sub_1BF41D048(v124, v140 + v138);
  LOBYTE(v141) = 10;
  v80 = v136;
  v81 = sub_1BF4E9574();
  v136 = v80;
  if (v80 || (*(v140 + v139[14]) = v81 & 1, LOBYTE(v141) = 11, v82 = v136, sub_1BF4E95B4(), (v136 = v82) != 0))
  {
LABEL_32:
    (*(v135 + 8))(v38, v54);
    LODWORD(v126) = 0;
    LODWORD(v124) = 1;
    goto LABEL_28;
  }

  v69(v140 + v139[15], v123, v133);
  LOBYTE(v141) = 12;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v141) = 12;
    v83 = v136;
    v84 = sub_1BF4E9564();
    v136 = v83;
    if (v83)
    {
      (*(v135 + 8))(v38, v54);
      LODWORD(v124) = 1;
      LODWORD(v126) = 1;
      goto LABEL_28;
    }

    v90 = v84;
    v89 = v85;
  }

  else
  {
    v86 = *MEMORY[0x1E69941B0];
    v87 = v117;
    swift_beginAccess();
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v88 - 8) + 48))(v87 + v86, 1, v88))
    {
      swift_endAccess();
      v89 = 0xE700000000000000;
      v90 = 0x6E776F6E6B6E55;
    }

    else
    {
      v90 = sub_1BF4E76B4();
      v89 = v91;
      swift_endAccess();
    }
  }

  v92 = (v140 + v139[16]);
  *v92 = v90;
  v92[1] = v89;
  LOBYTE(v141) = 13;
  v93 = v136;
  v94 = sub_1BF4E9544();
  v134 = v95;
  v61 = v93;
  if (v93)
  {
    (*(v135 + 8))(v78, v77);
    LODWORD(v127) = 0;
    LODWORD(v135) = 0;
    v134 = 0;
    LODWORD(v125) = 1;
    v75 = 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v137);
    v56 = v140;

    if (v76)
    {

      LODWORD(v124) = 1;
      LODWORD(v126) = 1;
      LODWORD(v137) = 1;
      goto LABEL_7;
    }

    v136 = v93;
    LODWORD(v126) = 1;
    LODWORD(v124) = 1;
LABEL_12:
    LODWORD(v137) = v75;
    v56 = v140;
    v60 = v140[2];

    v61 = v136;
LABEL_7:
    (*(v129 + 8))(v56 + v139[7], v131);
    if (v125)
    {
      (*(v128 + 8))(v56 + v139[8], v130);
    }

    v140 = 0;
    v136 = v61;
    v57 = v139;
    v58 = v132[1];
    v59 = v133;
    v58(v56 + v139[10], v133);
    v58(v56 + v57[11], v59);
    if (v124)
    {
      v62 = v133;
      v58(v56 + v57[12], v133);
      sub_1BF38C9B4(v56 + v138, &qword_1EBDD8AF8, &qword_1BF4EC370);
      if (v126)
      {
        v58(v56 + v57[15], v62);
        v63 = v135;
        if (v137)
        {
LABEL_23:
          v66 = *(v56 + v57[16] + 8);

          if ((v127 & 1) == 0)
          {
LABEL_24:
            if (v63)
            {
LABEL_25:
              v67 = *(v56 + v57[19] + 8);
            }

LABEL_4:
          }

LABEL_20:
          v65 = *(v56 + v57[18] + 8);

          if (v63)
          {
            goto LABEL_25;
          }

          goto LABEL_4;
        }

LABEL_19:

        if (!v127)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }

      v63 = v135;
    }

    else
    {
      v63 = v135;
      v64 = v126;
      sub_1BF38C9B4(v56 + v138, &qword_1EBDD8AF8, &qword_1BF4EC370);
      if (v64)
      {
        (v132[1])(v56 + v57[15], v133);
        if (v137)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }

    if (v137)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v96 = (v140 + v139[17]);
  v97 = v134;
  *v96 = v94;
  v96[1] = v97;
  LOBYTE(v141) = 14;
  v98 = sub_1BF4E9564();
  v99 = (v140 + v139[18]);
  *v99 = v98;
  v99[1] = v100;
  LOBYTE(v141) = 15;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v141) = 15;
    v101 = sub_1BF4E9564();
  }

  else
  {
    v103 = *MEMORY[0x1E6994200];
    v101 = sub_1BF4E8914();
  }

  v104 = (v140 + v139[19]);
  *v104 = v101;
  v104[1] = v102;
  LOBYTE(v141) = 16;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v141) = 16;
    v105 = sub_1BF4E95C4();
  }

  else
  {
    v105 = 0;
  }

  v107 = v139;
  v106 = v140;
  *(v140 + v139[20]) = v105;
  v108 = (v106 + v107[21]);
  LOBYTE(v141) = 17;
  if (sub_1BF4E95E4())
  {
    LOBYTE(v141) = 17;
    *v108 = sub_1BF4E9564();
    v108[1] = v109;
  }

  else
  {
    *v108 = 0;
    v108[1] = 0;
  }

  LOBYTE(v141) = 18;
  v110 = sub_1BF4E9544();
  v111 = (v140 + v139[22]);
  *v111 = v110;
  v111[1] = v112;
  LOBYTE(v141) = 19;
  *(v140 + v139[23]) = sub_1BF4E9574() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  v143 = 20;
  sub_1BF421E14();
  sub_1BF4E95B4();
  *(v140 + v139[24]) = v141;
  LOBYTE(v141) = 21;
  *(v140 + v139[25]) = sub_1BF4E9574() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F70, &unk_1BF4EF430);
  v143 = 22;
  sub_1BF41EBB0(&qword_1EBDD8F88, &qword_1EBDD8F90);
  sub_1BF4E95B4();
  *(v140 + v139[26]) = v141;
  LOBYTE(v141) = 23;
  if (sub_1BF4E95E4())
  {
    v143 = 23;
    sub_1BF3BCF88();
    sub_1BF4E95B4();
    v114 = v141;
    v115 = v142;
    sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
    sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288);
    v116 = sub_1BF4E8EB4();
    (*(v135 + 8))(v78, v77);
    sub_1BF3B03C0(v114, v115);
    *(v140 + v120) = v116;
  }

  else
  {
    (*(v135 + 8))(v78, v77);
  }

  v113 = v140;
  sub_1BF38E804(v140, v122);
  __swift_destroy_boxed_opaque_existential_1Tm(v137);
  return sub_1BF38DB44(v113);
}

unint64_t WidgetExtensionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v52 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F98, &qword_1BF4EF448);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF421DC0();
  sub_1BF4E9864();
  *&v51 = *v3;
  v50 = 0;
  sub_1BF4E9034();
  sub_1BF422528(&qword_1EDC9D6D0, MEMORY[0x1E69941C0]);
  sub_1BF4E9674();
  if (v2)
  {
    goto LABEL_3;
  }

  v11 = v3[1];
  v12 = v3[2];
  LOBYTE(v51) = 1;
  sub_1BF4E9624();
  v15 = v3[3];
  v16 = v3[4];
  LOBYTE(v51) = 2;
  sub_1BF4E9604();
  v17 = type metadata accessor for WidgetExtensionInfo();
  v18 = v17[7];
  LOBYTE(v51) = 3;
  sub_1BF4E7394();
  sub_1BF422528(&qword_1EDC9D5E0, MEMORY[0x1E69695A8]);
  sub_1BF4E9674();
  v19 = v17[8];
  LOBYTE(v51) = 4;
  sub_1BF4E7334();
  sub_1BF422528(&qword_1EDC9D5F8, MEMORY[0x1E6969530]);
  sub_1BF4E9674();
  v20 = *(v3 + v17[9]);
  LOBYTE(v51) = 5;
  sub_1BF4E9634();
  v21 = v17[10];
  LOBYTE(v51) = 6;
  sub_1BF4E7194();
  sub_1BF422528(&qword_1EDC9D618, MEMORY[0x1E6968FB0]);
  sub_1BF4E9674();
  v22 = v17[11];
  LOBYTE(v51) = 7;
  sub_1BF4E9674();
  v23 = v17[12];
  LOBYTE(v51) = 8;
  sub_1BF4E9674();
  v49 = v17[13];
  LOBYTE(v51) = 9;
  sub_1BF4E8424();
  sub_1BF422528(&qword_1EDC96468, MEMORY[0x1E69859A8]);
  sub_1BF4E9614();
  v24 = *(v3 + v17[14]);
  LOBYTE(v51) = 10;
  sub_1BF4E9634();
  v25 = v17[15];
  LOBYTE(v51) = 11;
  sub_1BF4E9674();
  v26 = (v3 + v17[16]);
  v27 = *v26;
  v28 = v26[1];
  LOBYTE(v51) = 12;
  sub_1BF4E9624();
  v29 = (v3 + v17[17]);
  v30 = *v29;
  v31 = v29[1];
  LOBYTE(v51) = 13;
  sub_1BF4E9604();
  v32 = (v3 + v17[18]);
  v33 = *v32;
  v34 = v32[1];
  LOBYTE(v51) = 14;
  sub_1BF4E9624();
  v35 = (v3 + v17[19]);
  v36 = *v35;
  v37 = v35[1];
  LOBYTE(v51) = 15;
  sub_1BF4E9624();
  result = *(v3 + v17[20]);
  if (!HIDWORD(result))
  {
    LOBYTE(v51) = 16;
    sub_1BF4E9684();
    v51 = *(v3 + v17[22]);
    v50 = 18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F68, &unk_1BF4EF420);
    sub_1BF41EB50(&unk_1EDC96410, &qword_1EBDD8F68, &unk_1BF4EF420);
    sub_1BF4E9674();
    v38 = *(v3 + v17[23]);
    LOBYTE(v51) = 19;
    sub_1BF4E9634();
    *&v51 = *(v3 + v17[24]);
    v50 = 20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF41EB50(&qword_1EDC963E8, &unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF4E9674();
    v39 = *(v3 + v17[25]);
    LOBYTE(v51) = 21;
    sub_1BF4E9634();
    *&v51 = *(v3 + v17[26]);
    v50 = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F70, &unk_1BF4EF430);
    sub_1BF41EBB0(&qword_1EDC96400, &qword_1EDC9D5B0);
    sub_1BF4E9674();
    v40 = *(v3 + v17[27]);
    if (v40)
    {
      v41 = objc_opt_self();
      *&v51 = 0;
      v42 = v40;
      v43 = [v41 archivedDataWithRootObject:v42 requiringSecureCoding:1 error:&v51];
      v44 = v51;
      if (v43)
      {
        v45 = sub_1BF4E71C4();
        v47 = v46;

        *&v51 = v45;
        *(&v51 + 1) = v47;
        v50 = 23;
        sub_1BF3B01D8();
        sub_1BF4E9674();
        (*(v6 + 8))(v9, v5);

        result = sub_1BF3B03C0(v45, v47);
        goto LABEL_4;
      }

      v48 = v44;
      sub_1BF4E6FF4();

      swift_willThrow();
    }

LABEL_3:
    result = (*(v6 + 8))(v9, v5);
LABEL_4:
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t WidgetExtensionInfo.description.getter()
{
  v1 = v0;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](60, 0xE100000000000000);
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4EF430);
  MEMORY[0x1BFB58C90](0x203A6469202D20, 0xE700000000000000);
  v2 = [*v0 description];
  v3 = sub_1BF4E8914();
  v5 = v4;

  MEMORY[0x1BFB58C90](v3, v5);

  MEMORY[0x1BFB58C90](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  MEMORY[0x1BFB58C90](v1[1], v1[2]);
  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FABD0);
  v6 = type metadata accessor for WidgetExtensionInfo();
  MEMORY[0x1BFB58C90](*(v1 + v6[18]), *(v1 + v6[18] + 8));
  MEMORY[0x1BFB58C90](0x7265566B6473202CLL, 0xEE00203A6E6F6973);
  MEMORY[0x1BFB58C90](*(v1 + v6[19]), *(v1 + v6[19] + 8));
  MEMORY[0x1BFB58C90](0x6F6674616C70202CLL, 0xEC000000203A6D72);
  v17 = *(v1 + v6[20]);
  type metadata accessor for CHSPlatform(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD00000000000001ELL, 0x80000001BF4FABF0);
  MEMORY[0x1BFB58C90](*(v1 + v6[16]), *(v1 + v6[16] + 8));
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FAC10);
  v7 = v6[8];
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDC9F0F8;
  v9 = sub_1BF4E7254();
  v10 = [v8 stringFromDate_];

  v11 = sub_1BF4E8914();
  v13 = v12;

  MEMORY[0x1BFB58C90](v11, v13);

  MEMORY[0x1BFB58C90](0x7265746E49736920, 0xED0000203A6C616ELL);
  if (*(v1 + v6[9]))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v1 + v6[9]))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1BFB58C90](v14, v15);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t _s9ChronoKit19WidgetExtensionInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v67 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B18, &qword_1BF4EF790);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v67 - v15;
  sub_1BF3901C0(0, &qword_1EDC9FDA8, 0x1E69E58C0);
  v17 = *a1;
  v18 = *a2;
  if ((sub_1BF4E90A4() & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v19 = a1[4];
  v20 = a2[4];
  if (v19)
  {
    if (!v20 || (a1[3] != a2[3] || v19 != v20) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = type metadata accessor for WidgetExtensionInfo();
  v22 = v21[7];
  if ((sub_1BF4E7364() & 1) == 0)
  {
    return 0;
  }

  v23 = v21[8];
  if ((sub_1BF4E72D4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v21[9]) != *(a2 + v21[9]))
  {
    return 0;
  }

  v24 = v21[10];
  if ((sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v25 = v21[11];
  if ((sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v26 = v21[12];
  if ((sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v27 = v21[13];
  v28 = *(v13 + 48);
  sub_1BF414A5C(a1 + v27, v16);
  v68 = v28;
  sub_1BF414A5C(a2 + v27, &v16[v28]);
  v29 = *(v5 + 48);
  if (v29(v16, 1, v4) != 1)
  {
    sub_1BF414A5C(v16, v12);
    if (v29(&v16[v68], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v68], v4);
      sub_1BF422528(&qword_1EDC9FDE0, MEMORY[0x1E69859A8]);
      v30 = sub_1BF4E88C4();
      v31 = *(v5 + 8);
      v31(v8, v4);
      v31(v12, v4);
      sub_1BF38C9B4(v16, &qword_1EBDD8AF8, &qword_1BF4EC370);
      if ((v30 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_25;
    }

    (*(v5 + 8))(v12, v4);
LABEL_23:
    sub_1BF38C9B4(v16, &qword_1EBDD8B18, &qword_1BF4EF790);
    return 0;
  }

  if (v29(&v16[v68], 1, v4) != 1)
  {
    goto LABEL_23;
  }

  sub_1BF38C9B4(v16, &qword_1EBDD8AF8, &qword_1BF4EC370);
LABEL_25:
  if (*(a1 + v21[14]) != *(a2 + v21[14]))
  {
    return 0;
  }

  v32 = v21[15];
  if ((sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v33 = v21[16];
  v34 = *(a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  if ((v34 != *v36 || v35 != v36[1]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v37 = v21[17];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v21[18];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v46 = v21[19];
  v47 = *(a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v21[20]) != *(a2 + v21[20]))
  {
    return 0;
  }

  v50 = v21[21];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v54)
  {
    return 0;
  }

  v55 = v21[22];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 8);
  v58 = (a2 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1BF4E9734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  if (*(a1 + v21[23]) == *(a2 + v21[23]) && (sub_1BF4D1C7C(*(a1 + v21[24]), *(a2 + v21[24])) & 1) != 0 && *(a1 + v21[25]) == *(a2 + v21[25]) && (sub_1BF4D1D0C(*(a1 + v21[26]), *(a2 + v21[26])) & 1) != 0)
  {
    v60 = v21[27];
    v61 = *(a1 + v60);
    v62 = *(a2 + v60);
    if (v61)
    {
      if (v62)
      {
        sub_1BF3901C0(0, &unk_1EDC96320, 0x1E6994288);
        v63 = v62;
        v64 = v61;
        v65 = sub_1BF4E90A4();

        if (v65)
        {
          return 1;
        }
      }
    }

    else if (!v62)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1BF421DC0()
{
  result = qword_1EDC99F18[0];
  if (!qword_1EDC99F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC99F18);
  }

  return result;
}

unint64_t sub_1BF421E14()
{
  result = qword_1EDC963E0;
  if (!qword_1EDC963E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC963E0);
  }

  return result;
}

uint64_t sub_1BF421E90(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BF421F98()
{
  sub_1BF4E9034();
  if (v0 <= 0x3F)
  {
    sub_1BF42215C(319, &qword_1EDC9D750, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BF4E7394();
      if (v2 <= 0x3F)
      {
        sub_1BF4E7334();
        if (v3 <= 0x3F)
        {
          sub_1BF4E7194();
          if (v4 <= 0x3F)
          {
            sub_1BF415F08();
            if (v5 <= 0x3F)
            {
              type metadata accessor for CHSPlatform(319);
              if (v6 <= 0x3F)
              {
                sub_1BF42215C(319, &qword_1EDC963F0, MEMORY[0x1E69E62F8]);
                if (v7 <= 0x3F)
                {
                  sub_1BF4221B0();
                  if (v8 <= 0x3F)
                  {
                    sub_1BF422214();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1BF42215C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF4221B0()
{
  if (!qword_1EDC96408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    v0 = sub_1BF4E8CA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC96408);
    }
  }
}

void sub_1BF422214()
{
  if (!qword_1EDC96318)
  {
    sub_1BF3901C0(255, &unk_1EDC96320, 0x1E6994288);
    v0 = sub_1BF4E90F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC96318);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetExtensionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetExtensionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BF4223D0()
{
  result = qword_1EBDD8FA8;
  if (!qword_1EBDD8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8FA8);
  }

  return result;
}

unint64_t sub_1BF422428()
{
  result = qword_1EDC99F08;
  if (!qword_1EDC99F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC99F08);
  }

  return result;
}

unint64_t sub_1BF422480()
{
  result = qword_1EDC99F10;
  if (!qword_1EDC99F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC99F10);
  }

  return result;
}

uint64_t sub_1BF4224D4()
{
  v0 = sub_1BF4E9774();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BF422528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF422570()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1BF4225D4()
{
  result = qword_1EDC9B460;
  if (!qword_1EDC9B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9B460);
  }

  return result;
}

unint64_t sub_1BF42263C()
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v1 = *(v70 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = v59 - v3;
  v68 = sub_1BF4E7334();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = v59 - v8;
  v76 = 0;
  v77 = 0xE000000000000000;
  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](43);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v13 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v13);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v14 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v15 = sub_1BF4E7844();
  if (v15 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:

    while (1)
    {
LABEL_18:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v72 = v4;
  v73 = v1;
  v16 = sub_1BF3D7F44(v15);
  v18 = v17;
  v20 = v19;
  v74 = 0x676E69646E696240;
  v75 = 0xE800000000000000;
  v78 = *(v9 + 16) + 1;
  v21 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v21);

  v22 = v74;
  v23 = v75;
  MEMORY[0x1BFB58C90](v74, v75);
  sub_1BF3D8840(v16, v18, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = v9;
  sub_1BF3D6680(v16, v18, v20, v22, v23, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v16, v18, v20);
  v25 = v74;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v26 = sub_1BF3E4F48(v25);
  if (!v0)
  {
    v59[1] = 0;
    v27 = v26;

    v25 = sub_1BF3DA8A8(MEMORY[0x1E69E7CC0]);
    v28 = v27;
    v65 = v27[2];
    if (!v65)
    {
LABEL_13:

      return v25;
    }

    v29 = 0;
    v62 = (v72 + 16);
    v63 = (v27 + 4);
    v60 = (v72 + 8);
    v61 = (v73 + 8);
    v64 = v27;
    while (v29 < v28[2])
    {
      v73 = v25;
      v30 = *&v63[8 * v29];

      v31 = sub_1BF4E92F4();
      v33 = sub_1BF48063C(v31, v32, v30);
      v35 = v34;
      v37 = v36;
      v38 = ~v36;

      if (!v38)
      {
        goto LABEL_18;
      }

      v39 = sub_1BF4244EC(v33, v35, v37);
      v41 = v40;
      sub_1BF3DB1FC(v33, v35, v37);
      if (!v41)
      {
        goto LABEL_18;
      }

      v72 = v39;
      v42 = sub_1BF4E92F4();
      v44 = sub_1BF48063C(v42, v43, v30);
      v46 = v45;
      v48 = v47;
      v49 = ~v47;

      if (!v49)
      {
        goto LABEL_17;
      }

      sub_1BF424640(v44, v46, v48);
      v51 = v50;
      sub_1BF3DB1FC(v44, v46, v48);
      if (v51)
      {
        goto LABEL_17;
      }

      ++v29;
      v52 = v66;
      sub_1BF4E71E4();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
      sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0);
      sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0);
      sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0);
      sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0);
      v53 = v69;
      sub_1BF4E7784();
      v55 = v67;
      v54 = v68;
      (*v62)(v67, v52, v68);
      v56 = v73;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v56;
      sub_1BF3D6F04(v55, v53, v57);

      (*v61)(v53, v70);
      (*v60)(v52, v54);
      v25 = v76;
      v28 = v64;
      if (v65 == v29)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return v25;
}

uint64_t sub_1BF422E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](37);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v10 = sub_1BF4E7844();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = sub_1BF3D7F44(v10);
  v13 = v12;
  v15 = v14;
  v23 = *(v5 + 16) + 1;
  v16 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v11, v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v11, v13, v15, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v11, v13, v15);
  if (!swift_weakLoadStrong())
  {
LABEL_7:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v5);
  if (v3)
  {
  }

  else
  {

    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    swift_getTupleTypeMetadata2();
    v20 = sub_1BF4E8BF4();
    v21 = sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF3B0FE8(v20, v19, a3, v21);

    MEMORY[0x1EEE9AC00](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FB8, &unk_1BF4EF870);
    sub_1BF4E8834();
    sub_1BF38C8B4(&qword_1EDC963F8, &qword_1EBDD8FB8, &unk_1BF4EF870);
    sub_1BF4E8B14();

    return 0;
  }
}

uint64_t sub_1BF4232B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v45 = a3;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v40 - v9;
  v10 = *a2;
  v11 = sub_1BF4E92F4();
  v13 = sub_1BF48063C(v11, v12, v10);
  v15 = v14;
  v17 = v16;
  v18 = ~v16;

  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = sub_1BF4244EC(v13, v15, v17);
  v21 = v20;
  sub_1BF3DB1FC(v13, v15, v17);
  if (!v21)
  {
    goto LABEL_14;
  }

  v43 = v19;
  v46 = v5;
  v47 = v4;
  v22 = sub_1BF4E92F4();
  v24 = sub_1BF48063C(v22, v23, v10);
  v26 = v25;
  v28 = v27;
  v29 = ~v27;

  if (!v29 || (sub_1BF424370(v24, v26, v28, &v48), sub_1BF3DB1FC(v24, v26, v28), v30 = *(&v48 + 1), *(&v48 + 1) >> 60 == 15))
  {

    goto LABEL_10;
  }

  v31 = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
  sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0);
  sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0);
  sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0);
  sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0);
  v32 = v49;
  sub_1BF4E7784();
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  v33 = v44;
  v34 = sub_1BF4E8EB4();
  if (v33)
  {
    (*(v46 + 8))(v32, v47);
    sub_1BF3DB210(v31, v30);
  }

  v36 = v47;
  if (!v34)
  {
LABEL_14:
    while (1)
    {
LABEL_10:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v37 = v34;

  v38 = v46;
  (*(v46 + 16))(v41, v49, v36);
  *&v48 = v37;
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF4E8834();
  v39 = v37;
  sub_1BF4E8864();
  sub_1BF3DB210(v31, v30);

  return (*(v38 + 8))(v49, v36);
}

uint64_t ChronoMetadataStore.PreviewConfigurationStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1BF4237DC(void *a1, char *a2)
{
  v82 = a2;
  v86[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF4E7334();
  v81 = *(v5 - 8);
  v6 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v10 = *(Strong + 24);
  v11 = Strong;
  os_unfair_lock_lock(*(v10 + 16));
  v12 = *(v11 + 64);
  os_unfair_lock_unlock(*(v10 + 16));

  if (!v12)
  {
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (!a1)
  {
    sub_1BF424054();
LABEL_12:
    v74 = *MEMORY[0x1E69E9840];
    return;
  }

  v13 = objc_opt_self();
  v86[0] = 0;
  v14 = a1;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v86];
  v16 = v86[0];
  if (!v15)
  {
    v73 = v16;
    sub_1BF4E6FF4();

    swift_willThrow();
    goto LABEL_12;
  }

  v75 = v5;
  v76 = v14;
  v77 = v3;
  v78 = v2;
  v79 = sub_1BF4E71C4();
  v80 = v17;

  v86[0] = 0;
  v86[1] = 0xE000000000000000;
  v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](123);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FAD70);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v21 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v22 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v22);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v23 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v23);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FAD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v24 = sub_1BF4E7794();
  v26 = v25;

  v27 = sub_1BF3D8148(v24, v26);
  v29 = v28;
  v31 = v30;
  v84 = 0x676E69646E696240;
  v85 = 0xE800000000000000;
  v83 = *(v18 + 16) + 1;
  v32 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v32);

  v33 = v84;
  v34 = v85;
  MEMORY[0x1BFB58C90](v84, v85);
  sub_1BF3D8840(v27, v29, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84 = v18;
  sub_1BF3D6680(v27, v29, v31, v33, v34, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v27, v29, v31);

  v36 = v84;
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v37 = sub_1BF4E7844();
  if (v37 < 0)
  {
    goto LABEL_14;
  }

  v38 = sub_1BF3D7F44(v37);
  v40 = v39;
  v42 = v41;
  v84 = 0x676E69646E696240;
  v85 = 0xE800000000000000;
  v83 = *(v36 + 16) + 1;
  v43 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v43);

  v44 = v84;
  v45 = v85;
  MEMORY[0x1BFB58C90](v84, v85);
  sub_1BF3D8840(v38, v40, v42);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v36;
  sub_1BF3D6680(v38, v40, v42, v44, v45, v46);

  sub_1BF3D88B8(v38, v40, v42);
  v47 = v84;
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v82 = v8;
  v48 = v79;
  v49 = v80;
  sub_1BF3D8864(v79, v80);
  sub_1BF3D8864(v48, v49);
  v50 = sub_1BF3D8134(v48, v49);
  v52 = v51;
  v54 = v53;
  v84 = 0x676E69646E696240;
  v85 = 0xE800000000000000;
  v83 = *(v47 + 16) + 1;
  v55 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v55);

  v56 = v84;
  v57 = v85;
  MEMORY[0x1BFB58C90](v84, v85);
  sub_1BF3D8840(v50, v52, v54);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v47;
  sub_1BF3D6680(v50, v52, v54, v56, v57, v58);

  sub_1BF3D88B8(v50, v52, v54);
  sub_1BF3B03C0(v48, v49);
  v59 = v84;
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v60 = v82;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E71F4();
  v62 = v61;
  (*(v81 + 8))(v60, v75);
  v63 = sub_1BF3D833C(v62);
  v65 = v64;
  LOBYTE(v52) = v66;
  v84 = 0x676E69646E696240;
  v85 = 0xE800000000000000;
  v83 = *(v59 + 16) + 1;
  v67 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v67);

  v68 = v84;
  v69 = v85;
  MEMORY[0x1BFB58C90](v84, v85);
  sub_1BF3D8840(v63, v65, v52);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v84 = v59;
  sub_1BF3D6680(v63, v65, v52, v68, v69, v70);

  sub_1BF3D88B8(v63, v65, v52);
  v71 = v84;
  MEMORY[0x1BFB58C90](0x3B29202020200ALL, 0xE700000000000000);
  if (swift_weakLoadStrong())
  {
    v72 = v77;
    sub_1BF3E4F48(v71);

    if (!v72)
    {
    }

    sub_1BF3B03C0(v79, v80);

    goto LABEL_12;
  }

LABEL_15:
  sub_1BF4E9464();
  __break(1u);
}

uint64_t sub_1BF424054()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v19 = v0;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v8 = sub_1BF4E7794();
  v10 = v9;

  v11 = sub_1BF3D8148(v8, v10);
  v13 = v12;
  v15 = v14;
  v20 = *(v5 + 16) + 1;
  v16 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v11, v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v11, v13, v15, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  sub_1BF3D88B8(v11, v13, v15);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    result = sub_1BF4E9464();
    __break(1u);
    return result;
  }

  sub_1BF3E4F48(v5);

  if (!v19)
  {
  }

  return result;
}

uint64_t sub_1BF424370@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, __int128 *a4@<X8>)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E69E63B0];
      v6 = &off_1F3DF0098;
    }

    else
    {
      v5 = MEMORY[0x1E69E7360];
      v6 = &off_1F3DF0090;
    }

    v13 = v5;
    v14 = v6;
    *&v12 = a1;
  }

  else if (a3 == 2)
  {
    v13 = MEMORY[0x1E69E6158];
    v14 = &off_1F3DF00A0;
    *&v12 = a1;
    *(&v12 + 1) = a2;
  }

  else if (a3 == 3)
  {
    v13 = MEMORY[0x1E6969080];
    v14 = &off_1F3DF00A8;
    *&v12 = a1;
    *(&v12 + 1) = a2;
    sub_1BF3D8864(a1, a2);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v13 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v14 = &off_1F3DF0088;
    *&v12 = v7;
  }

  sub_1BF38E610(&v12, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  result = swift_dynamicCast();
  if (result)
  {
    v9 = v10;
  }

  else
  {
    result = sub_1BF3DB210(0, 0xF000000000000000);
    v9 = xmmword_1BF4EF860;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_1BF4244EC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v3 = MEMORY[0x1E69E63B0];
      v4 = &off_1F3DF0098;
    }

    else
    {
      v3 = MEMORY[0x1E69E7360];
      v4 = &off_1F3DF0090;
    }

    v10 = v3;
    v11 = v4;
    *&v9 = a1;
  }

  else if (a3 == 2)
  {
    v10 = MEMORY[0x1E69E6158];
    v11 = &off_1F3DF00A0;
    *&v9 = a1;
    *(&v9 + 1) = a2;
  }

  else if (a3 == 3)
  {
    v10 = MEMORY[0x1E6969080];
    v11 = &off_1F3DF00A8;
    *&v9 = a1;
    *(&v9 + 1) = a2;
    sub_1BF3D8864(a1, a2);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v10 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v11 = &off_1F3DF0088;
    *&v9 = v5;
  }

  sub_1BF38E610(&v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF424640(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v3 = MEMORY[0x1E69E63B0];
      v4 = &off_1F3DF0098;
    }

    else
    {
      v3 = MEMORY[0x1E69E7360];
      v4 = &off_1F3DF0090;
    }

    v12 = v3;
    v13 = v4;
    *&v11 = a1;
  }

  else if (a3 == 2)
  {
    v12 = MEMORY[0x1E69E6158];
    v13 = &off_1F3DF00A0;
    *&v11 = a1;
    *(&v11 + 1) = a2;
  }

  else if (a3 == 3)
  {
    v12 = MEMORY[0x1E6969080];
    v13 = &off_1F3DF00A8;
    *&v11 = a1;
    *(&v11 + 1) = a2;
    sub_1BF3D8864(a1, a2);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v12 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v13 = &off_1F3DF0088;
    *&v11 = v5;
  }

  sub_1BF38E610(&v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  v6 = swift_dynamicCast();
  v7 = v9;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1BF424908()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](98);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FAE90);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000022, 0x80000001BF4FAEB0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v1);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF424B3C()
{
  v1 = sub_1BF4E7854();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v45 = 0xE000000000000000;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](123);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FAE90);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000022, 0x80000001BF4FAEB0);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v5);

  if (!v0)
  {

    v44 = 0;
    v45 = 0xE000000000000000;
    v14 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](57);
    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
    v15 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v15);

    MEMORY[0x1BFB58C90](10272, 0xE200000000000000);
    v16 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v16);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v17 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v17);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v18 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v18);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v19 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v19);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8AE0);
    v20 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v20);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v22 = v40;
    v21 = v41;
    (*(v40 + 104))(v4, *MEMORY[0x1E6994188], v41);
    v23 = sub_1BF4E7844();
    result = (*(v22 + 8))(v4, v21);
    if (v23 < 0)
    {
      __break(1u);
    }

    else
    {
      v24 = sub_1BF3D7F44(v23);
      v26 = v25;
      v28 = v27;
      v42 = 0x676E69646E696240;
      v43 = 0xE800000000000000;
      v46 = *(v14 + 16) + 1;
      v29 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v29);

      v30 = v42;
      v31 = v43;
      MEMORY[0x1BFB58C90](v42, v43);
      sub_1BF3D8840(v24, v26, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v14;
      sub_1BF3D6680(v24, v26, v28, v30, v31, isUniquelyReferenced_nonNull_native);

      sub_1BF3D88B8(v24, v26, v28);
      v33 = v42;
      MEMORY[0x1BFB58C90](542327072, 0xE400000000000000);
      v34 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v34);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v35 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v35);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v36 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v36);

      MEMORY[0x1BFB58C90](0x204D4F524620, 0xE600000000000000);
      v37 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v37);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v33);

      v44 = 0;
      v45 = 0xE000000000000000;
      v38 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](16);
      MEMORY[0x1BFB58C90](0x504F524420202020, 0xEF20454C42415420);
      v39 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v39);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v38);
    }
  }

  return result;
}

uint64_t static ActivityCacheKey.allTargetContents(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v24[1] = a4;
  v9 = sub_1BF4E90F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v24 - v11;
  v13 = sub_1BF4E90F4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v24 - v15;
  v17 = sub_1BF4E7194();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, a1, v19);
  (*(*(a2 - 8) + 56))(v16, 1, 1, a2);
  (*(*(a3 - 8) + 56))(v12, 1, 1, a3);
  return sub_1BF4254BC(v21, v16, v12, a2, a3, a5);
}

uint64_t sub_1BF4254BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ActivityCacheKey();
  v13 = *(v12 + 68);
  (*(*(a4 - 8) + 56))(a6 + v13, 1, 1, a4);
  v14 = *(v12 + 72);
  (*(*(a5 - 8) + 56))(a6 + v14, 1, 1, a5);
  v15 = sub_1BF4E7194();
  (*(*(v15 - 8) + 32))(a6, a1, v15);
  v16 = sub_1BF4E90F4();
  (*(*(v16 - 8) + 40))(a6 + v13, a2, v16);
  v17 = sub_1BF4E90F4();
  return (*(*(v17 - 8) + 40))(a6 + v14, a3, v17);
}

uint64_t static ActivityCacheKey.allContent(for:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v28[0] = a5;
  v28[1] = a6;
  v12 = sub_1BF4E90F4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v28 - v14;
  v16 = sub_1BF4E90F4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - v18;
  v20 = sub_1BF4E7194();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, a2, v22);
  v26 = *(a3 - 8);
  (*(v26 + 16))(v19, a1, a3);
  (*(v26 + 56))(v19, 0, 1, a3);
  (*(*(a4 - 8) + 56))(v15, 1, 1, a4);
  return sub_1BF4254BC(v24, v19, v15, a3, a4, a7);
}

uint64_t ActivityCacheKey.init(baseURL:variantID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v41 = a9;
  v42 = a7;
  v37 = a6;
  v39 = a1;
  v16 = sub_1BF4E90F4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v40 = &v35 - v18;
  v19 = sub_1BF4E90F4();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v35 - v21;
  v38 = sub_1BF4E7194();
  v23 = *(v38 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v38);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v27, a1, v25);
  v28 = *(a3 - 8);
  v29 = *(v28 + 16);
  v36 = a2;
  v29(v22, a2, a3);
  (*(v28 + 56))(v22, 0, 1, a3);
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = v42;
  v48 = a8;
  v30 = type metadata accessor for VariantIdentifier();
  v31 = *(a4 - 8);
  v32 = a2 + *(v30 + 68);
  v33 = v40;
  (*(v31 + 16))(v40, v32, a4);
  (*(v31 + 56))(v33, 0, 1, a4);
  sub_1BF4254BC(v27, v22, v33, a3, a4, v41);
  (*(*(v30 - 8) + 8))(v36, v30);
  return (*(v23 + 8))(v39, v38);
}

uint64_t ActivityCacheKey.init(baseURL:target:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v36 = a9;
  v37 = a6;
  v33 = a1;
  v34 = a3;
  v32 = a2;
  v35 = a10;
  v14 = sub_1BF4E90F4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  v18 = sub_1BF4E90F4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v32 - v20;
  v22 = sub_1BF4E7194();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v27, a1, v22, v25);
  v28 = *(a4 - 8);
  (*(v28 + 16))(v21, a2, a4);
  (*(v28 + 56))(v21, 0, 1, a4);
  v29 = *(a5 - 8);
  v30 = v34;
  (*(v29 + 16))(v17, v34, a5);
  (*(v29 + 56))(v17, 0, 1, a5);
  sub_1BF4254BC(v27, v21, v17, a4, a5, v36);
  (*(v29 + 8))(v30, a5);
  (*(v28 + 8))(v32, a4);
  return (*(v23 + 8))(v33, v22);
}

uint64_t ActivityCacheKey.targetID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = *(a1 + 16);
  v6 = sub_1BF4E90F4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t ActivityCacheKey.contentID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = *(a1 + 24);
  v6 = sub_1BF4E90F4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t ActivityCacheKey.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E90F4();
  v39 = v3;
  v11 = sub_1BF4E90F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(*(TupleTypeMetadata2 - 8) + 64);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v16 = &v36 - v15;
  v17 = *(a1 + 72);
  v19 = *(v18 + 56);
  v20 = *(v10 - 8);
  (*(v20 + 16))(&v36 - v15, v1 + *(a1 + 68), v10, v14);
  v21 = *(v11 - 8);
  v22 = v1 + v17;
  v23 = v40;
  (*(v21 + 16))(&v16[v19], v22, v11);
  if ((*(v23 + 48))(v16, 1, v7) == 1)
  {
    (*(v21 + 8))(&v16[v19], v11);
    (*(v20 + 8))(v16, v10);
    return 0x656B2D6568636163;
  }

  else
  {
    v25 = (*(v38 + 48))(&v16[v19], 1, v39);
    (*(v23 + 32))(v41, v16, v7);
    if (v25 == 1)
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      MEMORY[0x1BFB58C90](0x656B2D6568636163, 0xEB000000003A3A79);
      v26 = *(a1 + 32);
      v27 = v41;
      sub_1BF4E96F4();
      MEMORY[0x1BFB58C90](10799, 0xE200000000000000);
      v24 = v42;
      (*(v23 + 8))(v27, v7);
      (*(v21 + 8))(&v16[v19], v11);
    }

    else
    {
      v28 = v38;
      v29 = &v16[v19];
      v30 = v37;
      v31 = v39;
      (*(v38 + 32))(v37, v29, v39);
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0x656B2D6568636163, 0xEB000000003A3A79);
      v32 = *(a1 + 32);
      v33 = v41;
      sub_1BF4E96F4();
      MEMORY[0x1BFB58C90](47, 0xE100000000000000);
      v34 = *(a1 + 48);
      sub_1BF4E96F4();
      v24 = v42;
      (*(v28 + 8))(v30, v31);
      (*(v23 + 8))(v33, v7);
    }
  }

  return v24;
}

uint64_t ActivityCacheKey<>.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43[1] = a3;
  v45 = a2;
  v6 = *(a1 + 24);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v44 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E90F4();
  v48 = v6;
  v15 = sub_1BF4E90F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(*(TupleTypeMetadata2 - 8) + 64);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v20 = v43 - v19;
  v21 = *(a1 + 68);
  v22 = *(a1 + 72);
  v24 = *(v23 + 56);
  v25 = *(v14 - 8);
  (*(v25 + 16))(v20, v4 + v21, v14, v18);
  v26 = *(v15 - 8);
  v27 = *(v26 + 16);
  v49 = v24;
  v27(&v20[v24], v4 + v22, v15);
  if ((*(v11 + 48))(v20, 1, v10) == 1)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1BF4E92E4();

    v50 = 0x656B2D6568636163;
    v51 = 0xEF402A2F2A3A3A79;
    sub_1BF4E7194();
    sub_1BF426950();
    v28 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v28);

    v29 = v50;
    (*(v26 + 8))(&v20[v49], v15);
    (*(v25 + 8))(v20, v14);
  }

  else
  {
    v43[0] = v4;
    v30 = (*(v47 + 48))(&v20[v49], 1, v48);
    v31 = v11;
    v32 = v46;
    (*(v11 + 32))(v46, v20, v10);
    if (v30 == 1)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1BF4E92E4();

      v50 = 0x656B2D6568636163;
      v51 = 0xEB000000003A3A79;
      v33 = sub_1BF4E9744();
      MEMORY[0x1BFB58C90](v33);

      MEMORY[0x1BFB58C90](4205103, 0xE300000000000000);
      sub_1BF4E7194();
      sub_1BF426950();
      v34 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v34);

      v29 = v50;
      (*(v11 + 8))(v32, v10);
      (*(v26 + 8))(&v20[v49], v15);
    }

    else
    {
      v36 = v47;
      v35 = v48;
      v37 = &v20[v49];
      v38 = v44;
      (*(v47 + 32))(v44, v37, v48);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1BF4E92E4();

      v50 = 0x656B2D6568636163;
      v51 = 0xEB000000003A3A79;
      v39 = sub_1BF4E9744();
      MEMORY[0x1BFB58C90](v39);

      MEMORY[0x1BFB58C90](47, 0xE100000000000000);
      v40 = sub_1BF4E9744();
      MEMORY[0x1BFB58C90](v40);

      MEMORY[0x1BFB58C90](64, 0xE100000000000000);
      sub_1BF4E7194();
      sub_1BF426950();
      v41 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v41);

      v29 = v50;
      (*(v36 + 8))(v38, v35);
      (*(v31 + 8))(v32, v10);
    }
  }

  return v29;
}

unint64_t sub_1BF426950()
{
  result = qword_1EDC9F100;
  if (!qword_1EDC9F100)
  {
    sub_1BF4E7194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F100);
  }

  return result;
}

uint64_t sub_1BF4269BC(uint64_t a1)
{
  result = sub_1BF4E7194();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_1BF4E90F4();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = sub_1BF4E90F4();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF426A60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BF4E7194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a3 + 24) - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v17 > v13)
  {
    v13 = v17;
  }

  v18 = *(v9 + 64);
  if (!v11)
  {
    ++v18;
  }

  v19 = *(v10 + 80);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v16)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(v6 - 8) + 64) + v19;
  if (a2 <= v13)
  {
    goto LABEL_40;
  }

  v24 = v22 + ((v18 + v20 + (v23 & ~v19)) & ~v20);
  v25 = 8 * v24;
  if (v24 <= 3)
  {
    v27 = ((a2 - v13 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (!v26)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 > 0xFF)
    {
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v27 < 2)
    {
LABEL_39:
      if (v13)
      {
LABEL_40:
        if (v8 == v13)
        {
          v31 = *(v7 + 48);

          return v31(a1);
        }

        else
        {
          v33 = (a1 + v23) & ~v19;
          if (v12 == v13)
          {
            v34 = (*(v10 + 48))(v33, v11);
          }

          else
          {
            v34 = (*(v15 + 48))((v33 + v18 + v20) & ~v20, v16, *(a3 + 24), v7);
          }

          if (v34 >= 2)
          {
            return v34 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v26 = *(a1 + v24);
  if (!*(a1 + v24))
  {
    goto LABEL_39;
  }

LABEL_26:
  v28 = (v26 - 1) << v25;
  if (v24 > 3)
  {
    v28 = 0;
  }

  if (v24)
  {
    if (v24 <= 3)
    {
      v29 = v24;
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v13 + (v30 | v28) + 1;
}

void sub_1BF426D4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BF4E7194();
  v9 = 0;
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a4 + 24);
  v17 = *(v16 - 8);
  v18 = *(v17 + 84);
  v19 = *(*(v8 - 8) + 64);
  v20 = *(v12 + 80);
  v21 = *(v17 + 80);
  v22 = v18 - 1;
  if (!v18)
  {
    v22 = 0;
  }

  if (v22 <= v15)
  {
    v23 = v15;
  }

  else
  {
    v23 = v22;
  }

  if (v13)
  {
    v24 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v24 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  if (v18)
  {
    v25 = *(v17 + 64);
  }

  else
  {
    v25 = *(v17 + 64) + 1;
  }

  v26 = ((v24 + v21 + ((v19 + v20) & ~v20)) & ~v21) + v25;
  if (a3 <= v23)
  {
    goto LABEL_29;
  }

  if (v26 <= 3)
  {
    v27 = ((a3 - v23 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v27))
    {
      v9 = 4;
      if (v23 >= a2)
      {
        goto LABEL_39;
      }

LABEL_30:
      v29 = ~v23 + a2;
      if (v26 >= 4)
      {
        bzero(a1, v26);
        *a1 = v29;
        v30 = 1;
        if (v9 > 1)
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }

      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v31 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v31;
            if (v9 > 1)
            {
LABEL_72:
              if (v9 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v9 > 1)
            {
              goto LABEL_72;
            }
          }

LABEL_69:
          if (v9)
          {
            a1[v26] = v30;
          }

          return;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v9 > 1)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    if (v27 >= 2)
    {
      v9 = v28;
    }

    else
    {
      v9 = 0;
    }

LABEL_29:
    if (v23 >= a2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v9 = 1;
  if (v23 < a2)
  {
    goto LABEL_30;
  }

LABEL_39:
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v26] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v9)
  {
    goto LABEL_45;
  }

  a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v11 == v23)
  {
    v32 = *(v10 + 56);
    v33 = v8;
    v34 = a1;
    v35 = a2;
    v36 = v11;

LABEL_49:
    v32(v34, v35, v36, v33);
    return;
  }

  v37 = &a1[v19 + v20] & ~v20;
  if (v14 == v23)
  {
    v38 = *(v12 + 56);

    v38(v37, (a2 + 1));
  }

  else
  {
    v39 = (v37 + v24 + v21) & ~v21;
    if (v22 >= a2)
    {
      v32 = *(v17 + 56);
      v35 = (a2 + 1);
      v34 = ((v37 + v24 + v21) & ~v21);
      v36 = v18;
      v33 = v16;

      goto LABEL_49;
    }

    if (v25 <= 3)
    {
      v40 = ~(-1 << (8 * v25));
    }

    else
    {
      v40 = -1;
    }

    if (v25)
    {
      v41 = v40 & (~v22 + a2);
      if (v25 <= 3)
      {
        v42 = v25;
      }

      else
      {
        v42 = 4;
      }

      bzero(((v37 + v24 + v21) & ~v21), v25);
      if (v42 > 2)
      {
        if (v42 == 3)
        {
          *v39 = v41;
          *(v39 + 2) = BYTE2(v41);
        }

        else
        {
          *v39 = v41;
        }
      }

      else if (v42 == 1)
      {
        *v39 = v41;
      }

      else
      {
        *v39 = v41;
      }
    }
  }
}

void sub_1BF427194()
{
  v0 = sub_1BF4E73D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1BF4E73B4();
  v6 = sub_1BF4E73A4();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_1EDC9F0F8 = v5;
}

id sub_1BF4272A0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EDC9F0E0 = result;
  return result;
}

uint64_t ReloadState.description.getter()
{
  v1 = *v0;
  v2 = 0x64616F6C6572;
  v3 = 0x64656C696166;
  v4 = 0x64656B636F6C62;
  if (v1 != 3)
  {
    v4 = 0x646573756170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E61656C63;
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

uint64_t ReloadState.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

unint64_t sub_1BF4273FC()
{
  result = qword_1EBDD8FC0;
  if (!qword_1EBDD8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8FC0);
  }

  return result;
}

uint64_t sub_1BF427450()
{
  v1 = *v0;
  v2 = 0x64616F6C6572;
  v3 = 0x64656C696166;
  v4 = 0x64656B636F6C62;
  if (v1 != 3)
  {
    v4 = 0x646573756170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E61656C63;
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

unint64_t sub_1BF4274EC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_1BF3EC78C(result), (v5 & 1) != 0))
  {
    v6 = (*(a2 + 56) + 24 * result);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    *a3 = *v6;
    a3[1] = v8;
    a3[2] = v9;
    sub_1BF3D8864(v7, v8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_1BF427568(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1BF4E9434();

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1BF3EC898(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
    }
  }

  return 0;
}

uint64_t sub_1BF427624(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1BF4E9434();

    if (v3)
    {
      type metadata accessor for _ReloadState(0);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1BF3ECA90(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

uint64_t Sequence<>.joined(separator:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[6] = sub_1BF427CEC(sub_1BF427C80, v10, a3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a4, MEMORY[0x1E69E7410], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v8 = sub_1BF4E8894();

  return v8;
}

uint64_t static Utilities.bundleIdentifier(for:)()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = BSBundleIDForAuditToken();
  if (v0)
  {
    v1 = v0;
    v2 = sub_1BF4E8914();
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t NSXPCConnection.bundleIdentifier.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  [v0 auditToken];
  v1 = BSBundleIDForAuditToken();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BF4E8914();
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t LocaleTokenDescriptor.token.getter()
{
  v1 = *v0;
  sub_1BF3D8864(*v0, *(v0 + 8));
  return v1;
}

uint64_t LocaleTokenDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BF4E92E4();

  strcpy(v7, "<LocaleToken: ");
  v4 = sub_1BF4E71B4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
  v5 = sub_1BF4E8774();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v7[0];
}

void static NSLocale.currentLocaleToken()(uint64_t *a1@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v10[0] = v2;
  v3 = [objc_opt_self() archivedPreferencesWithHash_];
  v4 = v10[0];

  v5 = sub_1BF4E8764();
  v6 = sub_1BF4E71C4();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v5;
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t static NSLocale.currentLocaleToken(for:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BF4EBEF0;
  (*(v5 + 16))(v8 + v7, a1, v4);
  v9 = _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(v8);
  swift_setDeallocating();
  (*(v5 + 8))(v8 + v7, v4);
  swift_deallocClassInstance();
  sub_1BF4274EC(a1, v9, a2);
}

uint64_t sub_1BF427C80()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  return sub_1BF4E8B54();
}

uint64_t sub_1BF427CEC(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v16;
  v53 = a5;
  v51 = *(a5 - 8);
  v17 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v49 - v21;
  v22 = sub_1BF4E90F4();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v49 - v26;
  v28 = *(*(a4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v56 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v62 = *(a3 - 1);
  v32 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_1BF4E8AC4();
  v70 = sub_1BF4E93E4();
  v65 = sub_1BF4E93F4();
  sub_1BF4E9394();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1BF4E8AB4();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1BF4E9104();
      result = (*v41)(v27, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v27, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v27, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v27, AssociatedTypeWitness);
      sub_1BF4E93D4();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1BF4E9104();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1BF4E93D4();
      sub_1BF4E9104();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t CollectionDifference.Change.changedElement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8FC8, &qword_1BF4EFAB8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return (*(*(v9 - 8) + 32))(a2, &v7[*(TupleTypeMetadata3 + 48)], v9);
}

uint64_t CollectionDifference.Change.offset.getter(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  v7 = *v5;
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8FC8, &qword_1BF4EFAB8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  (*(*(v8 - 8) + 8))(&v5[*(TupleTypeMetadata3 + 48)], v8);
  return v7;
}

uint64_t CollectionDifference<A>.grouping<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*(a3 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(&v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v17, v14);
  v18 = *(a3 + 16);
  v22 = v18;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a1;
  v27 = a2;
  swift_getWitnessTable();
  v19 = sub_1BF4E8814();
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](v19);
    *&v21[-32] = v18;
    *&v21[-24] = a4;
    *&v21[-16] = a5;
    *&v21[-8] = a6;
    sub_1BF4E94E4();
    sub_1BF4E8CA4();
    a6 = sub_1BF4E8794();
  }

  return a6;
}

uint64_t sub_1BF428824(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E94E4();
  CollectionDifference.Change.changedElement.getter(v10, v9);
  a2(v9);
  return (*(v6 + 8))(v9, a4);
}

uint64_t sub_1BF42892C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v48 = a6;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF4E94E4();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v45 - v19;
  v46 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v68 = *a1;
  v63 = v9;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v24 = sub_1BF4E8CA4();
  swift_getWitnessTable();
  v61 = v24;
  v25 = v62;
  v26 = sub_1BF4E8B24();
  v47 = v25;
  v68 = sub_1BF4E8734();
  if (!sub_1BF4E8C34())
  {
LABEL_15:

    v67 = v68;
    swift_getWitnessTable();
    return sub_1BF4E94F4();
  }

  v27 = 0;
  v56 = v26;
  v57 = 0;
  v28 = v11;
  v29 = 0;
  v30 = (v60 + 16);
  v54 = (v28 + 32);
  v55 = (v60 + 32);
  v52 = (v28 + 8);
  v53 = (v28 + 16);
  v50 = v23;
  v51 = v14;
  v49 = (v60 + 16);
  while (1)
  {
    v34 = sub_1BF4E8C14();
    sub_1BF4E8BD4();
    if (v34)
    {
      (*(v60 + 16))(v23, v26 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v27, v15);
      v35 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = sub_1BF4E9304();
      if (v46 != 8)
      {
        goto LABEL_18;
      }

      v67 = result;
      (*v30)(v23, &v67, v15);
      swift_unknownObjectRelease();
      v35 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    v62 = v35;
    v36 = v59;
    (*v55)(v59, v23, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8FC8, &qword_1BF4EFAB8);
    v38 = v9;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*v54)(v14, &v36[*(TupleTypeMetadata3 + 48)], v38);
    v40 = *(TupleTypeMetadata3 + 48);
    v41 = v58;
    v42 = &v58[*(TupleTypeMetadata3 + 64)];
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    *v58 = v29;
    (*v53)(&v41[v40], v14, v38);
    *v42 = 0;
    v42[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BF4E8C44();
    result = (*v52)(v14, v38);
    v32 = __OFADD__(v29++, 1);
    v26 = v56;
    if (v32)
    {
      goto LABEL_17;
    }

    v9 = v38;
LABEL_5:
    v33 = sub_1BF4E8C34();
    ++v27;
    v23 = v50;
    v14 = v51;
    if (v62 == v33)
    {
      goto LABEL_15;
    }
  }

  v43 = v29;
  v44 = v57;
  *v58 = v57;
  (*v53)(&v41[v40], v14, v38);
  *v42 = 0;
  v42[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1BF4E8C44();
  result = (*v52)(v14, v38);
  v57 = v44 + 1;
  v26 = v56;
  if (!__OFADD__(v44, 1))
  {
    v9 = v38;
    v29 = v43;
    v30 = v49;
    goto LABEL_5;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(uint64_t a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v2 = *(v72 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v72);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v65 - v7;
  if (sub_1BF3F34B4())
  {
    return MEMORY[0x1E69E7CC8];
  }

  v67 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    v75[0] = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v9, 0);
    v10 = v75[0];
    v68 = v2;
    v12 = v2[2];
    v11 = v2 + 2;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v69 = v11[7];
    v70 = v12;
    v71 = v11;
    v14 = (v11 - 1);
    do
    {
      v15 = v72;
      (v70)(v8, v13, v72);
      v16 = sub_1BF4E76B4();
      v18 = v17;
      (*v14)(v8, v15);
      v75[0] = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BF3A31DC((v19 > 1), v20 + 1, 1);
        v10 = v75[0];
      }

      *(v10 + 16) = v20 + 1;
      v21 = v10 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v13 += v69;
      --v9;
    }

    while (v9);
    v2 = v68;
  }

  v22 = objc_opt_self();
  v23 = sub_1BF4E8B84();

  v24 = [v22 archivedPreferencesWithHashesForBundleIDs_];

  if (!v24)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE0, &qword_1BF4EFBD0);
  v25 = sub_1BF4E8764();

  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = (v26 + 63) >> 6;
  v69 = v2 + 2;
  v70 = (v2 + 1);

  v30 = 0;
  v71 = MEMORY[0x1E69E7CC8];
  while (v28)
  {
LABEL_19:
    v32 = __clz(__rbit64(v28)) | (v30 << 6);
    v33 = (*(v25 + 48) + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    v36 = *(*(v25 + 56) + 8 * v32);
    v28 &= v28 - 1;
    v73 = 1752392040;
    v74 = 0xE400000000000000;

    sub_1BF4E9274();
    if (*(v36 + 16) && (v37 = sub_1BF3EC854(v75), (v38 & 1) != 0))
    {
      sub_1BF38D324(*(v36 + 56) + 32 * v37, v76);
      sub_1BF3EE198(v75);
      if (swift_dynamicCast())
      {
        v65 = v73;
        v66 = v74;

        sub_1BF4E7694();

        v39 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v39;
        v41 = sub_1BF3EC78C(v67);
        v43 = v39[2];
        v44 = (v42 & 1) == 0;
        v45 = __OFADD__(v43, v44);
        v46 = v43 + v44;
        if (v45)
        {
          goto LABEL_36;
        }

        if (v39[3] >= v46)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = v2;
            v62 = v41;
            v63 = v42;
            sub_1BF4A37D4();
            LOBYTE(v42) = v63;
            v41 = v62;
            v2 = v68;
          }
        }

        else
        {
          LODWORD(v71) = v42;
          sub_1BF49F30C(v46, isUniquelyReferenced_nonNull_native);
          v41 = sub_1BF3EC78C(v67);
          v47 = v42 & 1;
          LOBYTE(v42) = v71;
          if ((v71 & 1) != v47)
          {
            goto LABEL_38;
          }
        }

        v48 = v75[0];
        v71 = v75[0];
        if (v42)
        {
          v49 = (*(v75[0] + 56) + 24 * v41);
          v50 = *v49;
          v51 = v49[1];
          v52 = v49[2];
          v53 = v66;
          *v49 = v65;
          v49[1] = v53;
          v49[2] = v36;
          sub_1BF3B03C0(v50, v51);
        }

        else
        {
          *(v75[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
          v54 = v48[6] + v2[9] * v41;
          v55 = v2;
          v56 = v2[2];
          v57 = v41;
          v56(v54, v67, v72);
          v58 = (v48[7] + 24 * v57);
          v59 = v66;
          *v58 = v65;
          v58[1] = v59;
          v58[2] = v36;
          v60 = v48[2];
          v45 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v45)
          {
            goto LABEL_37;
          }

          v48[2] = v61;
          v2 = v55;
        }

        (*v70)(v67, v72);
      }
    }

    else
    {
      sub_1BF3EE198(v75);
    }
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      return v71;
    }

    v28 = *(v25 + 64 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1BF4E9794();
  __break(1u);
  return result;
}

uint64_t sub_1BF42943C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_1BF428824(a1, *(v1 + 48), *(v1 + 56), *(v1 + 16));
}

uint64_t sub_1BF429490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF4294D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1BF429528()
{
  v1 = *(v0 + 16);
  v2 = sub_1BF4E94E4();
  v3 = CollectionDifference.Change.offset.getter(v2);
  return v3 < CollectionDifference.Change.offset.getter(v2);
}

uint64_t sub_1BF429594@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E69E63B0];
      v6 = &off_1F3DF0098;
    }

    else
    {
      v5 = MEMORY[0x1E69E7360];
      v6 = &off_1F3DF0090;
    }

    a4[3] = v5;
    a4[4] = v6;
    *a4 = result;
  }

  else if (a3 == 2)
  {
    a4[3] = MEMORY[0x1E69E6158];
    a4[4] = &off_1F3DF00A0;
    *a4 = result;
    a4[1] = a2;
  }

  else if (a3 == 3)
  {
    a4[3] = MEMORY[0x1E6969080];
    a4[4] = &off_1F3DF00A8;
    *a4 = result;
    a4[1] = a2;

    return sub_1BF3D8864(result, a2);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    result = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    a4[3] = result;
    a4[4] = &off_1F3DF0088;
    *a4 = v8;
  }

  return result;
}

uint64_t sub_1BF4296A8(uint64_t *a1)
{
  sub_1BF38D324(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  if (!swift_dynamicCast())
  {
    sub_1BF3901C0(0, &qword_1EDC9D6B0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v10 = v25;
      v11 = sub_1BF429990();

      if (v11)
      {
        [v10 doubleValue];
        v13 = sub_1BF3D833C(v12);
LABEL_13:
        v9 = v13;

        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        goto LABEL_14;
      }

      if (sub_1BF429AF0())
      {
        v13 = sub_1BF3D7F44([v10 longLongValue]);
        goto LABEL_13;
      }
    }

    sub_1BF3901C0(0, &qword_1EDC9F9A8, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      v10 = v25;
      v14 = sub_1BF4E8914();
      v13 = sub_1BF3D8148(v14, v15);
    }

    else
    {
      sub_1BF3901C0(0, &qword_1EDC96300, 0x1E695DEF0);
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        v9 = 0;
        goto LABEL_14;
      }

      v10 = v25;
      v16 = sub_1BF4E71C4();
      v18 = v17;

      v13 = sub_1BF3D8134(v16, v18);
    }

    goto LABEL_13;
  }

  sub_1BF38E610(&v25, v24);
  sub_1BF38E49C(v24, v21);
  v2 = v22;
  v3 = v23;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  v5 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1BF429BBC(v7, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v9;
}

uint64_t sub_1BF429990()
{
  [v0 objCType];
  v1 = sub_1BF4E8A44();
  v3 = sub_1BF38F1F8(v1, v2);

  v17 = MEMORY[0x1E69E7CC0];
  sub_1BF3E14DC(0, 2, 0);
  v4 = v17;
  v6 = *(v17 + 16);
  v5 = *(v17 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_1BF3E14DC((v5 > 1), v6 + 1, 1);
    v4 = v17;
    v5 = *(v17 + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + v6 + 32) = 102;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    sub_1BF3E14DC((v5 > 1), v9, 1);
    v4 = v17;
  }

  *(v4 + 16) = v9;
  v10 = (v4 + 32);
  *(v4 + 32 + v8) = 100;
  if (*(v3 + 16) == 1)
  {
    v11 = *(v3 + 32);

    v12 = *(v4 + 16);
    do
    {
      v13 = v12-- != 0;
      v14 = v13;
      if (!v13)
      {
        break;
      }

      v15 = *v10++;
    }

    while (v15 != v11);
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

BOOL sub_1BF429AF0()
{
  [v0 objCType];
  v1 = sub_1BF4E8A44();
  v3 = sub_1BF38F1F8(v1, v2);

  if (*(v3 + 16) != 1)
  {

    return 1;
  }

  v4 = *(v3 + 32);

  if (v4 != 81)
  {
    return 1;
  }

  v5 = [v0 longLongValue];
  v6 = [v0 unsignedLongLongValue];
  return v5 >= 0 && v5 == v6;
}

uint64_t sub_1BF429BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[3] = a2;
  v10[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, a1, a2);
  sub_1BF38E49C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);

    v6 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v6;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v6 = v8;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit8SQLValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1BF429DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BF429E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1BF429E80(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BF429EA8(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        return sub_1BF408374(a1, a2, a4, a5);
      }
    }

    else if (a6 == 4 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

uint64_t ActivityCacheManager.cacheKeyProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 8));

  return sub_1BF38E610(a1, v1 + 8);
}

uint64_t ActivityCacheManager.cacheURLProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));

  return sub_1BF38E610(a1, v1 + 48);
}

uint64_t ActivityCacheManager.protectionLevelProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));

  return sub_1BF38E610(a1, v1 + 88);
}

uint64_t ActivityCacheManager.init(cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1BF38E610(a1, a6 + 8);
  sub_1BF38E610(a2, a6 + 48);
  result = sub_1BF38E610(a3, a6 + 88);
  *a6 = a4;
  *(a6 + 128) = a5 ^ 1;
  return result;
}

uint64_t ActivityCacheManager.protectionLevelForContent(from:)(void *a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 16))(*a1, v3, v4);
}

uint64_t ActivityCacheManager.content(key:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v12 - v8);
  sub_1BF42A350(a1, v3, (v12 - v8));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v11 = sub_1BF4E86B4();
    return (*(*(v11 - 8) + 32))(a2, v9, v11);
  }
}

uint64_t sub_1BF42A350@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v65 = a3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  v5 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v50 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v57 = (&v50 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9000, &qword_1BF4EFF48);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v50 - v13;
  v14 = sub_1BF4E8424();
  v52 = *(v14 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF4E7194();
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9008, qword_1BF4EFF50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = (&v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v50 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v50 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v63 = &v50 - v34;
  ActivityCacheManager.url(for:)(a1, v22);
  v59 = a2;
  v60 = a1;
  v50 = v14;
  v51 = v11;
  v36 = a2[14];
  v35 = a2[15];
  __swift_project_boxed_opaque_existential_1(a2 + 11, v36);
  v37 = *a1;
  v38 = v53;
  (*(v35 + 16))(v37, v36, v35);
  v49 = *(v51 + 48);
  (*(v61 + 32))(v29, v22, v62);
  (*(v52 + 32))(&v29[v49], v38, v50);
  swift_storeEnumTagMultiPayload();
  sub_1BF405354(v29, v32, &qword_1EBDD9008, qword_1BF4EFF50);
  v39 = v63;
  sub_1BF405354(v32, v63, &qword_1EBDD9008, qword_1BF4EFF50);
  sub_1BF38C94C(v39, v26, &qword_1EBDD9008, qword_1BF4EFF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BF38C9B4(v39, &qword_1EBDD9008, qword_1BF4EFF50);
    *v65 = *v26;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v41 = v58;
    sub_1BF405354(v26, v58, &qword_1EBDD9000, &qword_1BF4EFF48);
    v42 = v59;
    if (v59[16])
    {
      sub_1BF3B36F0(v41, *v59);
    }

    (*(v61 + 16))(v54, v41, v62);
    v43 = v55;
    sub_1BF4E8694();
    v45 = v56;
    v44 = v57;
    swift_storeEnumTagMultiPayload();
    sub_1BF405354(v43, v45, &qword_1EBDD8FE8, &unk_1BF4EFD80);
    v46 = v60;
    sub_1BF405354(v45, v44, &qword_1EBDD8FE8, &unk_1BF4EFD80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *v44;
      v66 = v47;
      sub_1BF42C838(&v66, v42, v46, v65);
    }

    else
    {
      v48 = sub_1BF4E86B4();
      (*(*(v48 - 8) + 32))(v65, v44, v48);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BF38C9B4(v41, &qword_1EBDD9000, &qword_1BF4EFF48);
    return sub_1BF38C9B4(v39, &qword_1EBDD9008, qword_1BF4EFF50);
  }
}

uint64_t ActivityCacheManager.content(for:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v19 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v19 - v15);
  sub_1BF42ABA8(a2, v19 - v15, type metadata accessor for ActivityKey);
  sub_1BF42ABA8(a1, v16 + *(v13 + 76), type metadata accessor for ActivityVariantKey);
  sub_1BF42A350(v16, v4, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19[1] = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    swift_willThrowTypedImpl();
    return sub_1BF38C9B4(v16, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  }

  else
  {
    sub_1BF38C9B4(v16, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v18 = sub_1BF4E86B4();
    return (*(*(v18 - 8) + 32))(a3, v11, v18);
  }
}

uint64_t sub_1BF42ABA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void **ActivityCacheManager.archiveFilePromise(for:from:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v79 = a2;
  v83 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v68 - v7;
  v9 = sub_1BF4E8424();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF0, &qword_1BF4EFD90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v68 - v23);
  v25 = sub_1BF4E7194();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  if (*(v3 + 128) == 1)
  {
    v71 = v31;
    v72 = &v68 - v29;
    v73 = v30;
    v74 = v28;
    v70 = v8;
    sub_1BF42ABA8(v79, v24, type metadata accessor for ActivityKey);
    sub_1BF42ABA8(a1, v24 + *(v21 + 68), type metadata accessor for ActivityVariantKey);
    v33 = *(v3 + 32);
    v32 = *(v3 + 40);
    __swift_project_boxed_opaque_existential_1((v3 + 8), v33);
    (*(v32 + 24))(v24, v33, v32);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_1BF38C9B4(v15, &qword_1EBDD8FF0, &qword_1BF4EFD90);
      v34 = *v24;
      sub_1BF3F79D0();
      swift_allocError();
      *v35 = v34;
      swift_willThrow();
      v36 = v34;
      sub_1BF38C9B4(v24, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    }

    else
    {
      sub_1BF405354(v15, v20, &qword_1EBDD8FF8, &qword_1BF4EFD98);
      v38 = *(v3 + 72);
      v39 = *(v3 + 80);
      __swift_project_boxed_opaque_existential_1((v3 + 48), v38);
      v40 = v72;
      (*(v39 + 24))(v20, v38, v39);
      sub_1BF38C9B4(v20, &qword_1EBDD8FF8, &qword_1BF4EFD98);
      sub_1BF38C9B4(v24, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v24 = *(v3 + 112);
      v41 = *(v3 + 120);
      __swift_project_boxed_opaque_existential_1((v3 + 88), v24);
      v42 = v78;
      v43 = v77;
      (*(v41 + 16))(*v79, v24, v41);
      if (v43)
      {
        (*(v73 + 8))(v40, v74);
      }

      else
      {
        v44 = *v3;
        v45 = v71;
        sub_1BF4E7134();
        v46 = sub_1BF4E7094();
        v47 = *(v73 + 8);
        v47(v45, v74);
        v79 = v44;
        *&v80 = 0;
        v48 = [v44 createDirectoryAtURL:v46 withIntermediateDirectories:1 attributes:0 error:&v80];

        v24 = v80;
        if (v48)
        {
          *&v80 = 0;
          *(&v80 + 1) = 0xE000000000000000;
          v49 = v24;
          sub_1BF4E92E4();

          *&v80 = 0x506E6F6973736573;
          *(&v80 + 1) = 0xEF2D72657474616CLL;
          sub_1BF42D700(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
          v50 = v74;
          v51 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v51);

          v69 = *(&v80 + 1);
          v77 = v80;
          v52 = *(v73 + 32);
          v52(v45, v40, v50);
          v53 = v42;
          v55 = v75;
          v54 = v76;
          v56 = v70;
          (*(v75 + 32))(v70, v53, v76);
          (*(v55 + 56))(v56, 0, 1, v54);
          v81 = sub_1BF3C82A8();
          v82 = &off_1F3DF3DC0;
          v57 = v79;
          *&v80 = v79;
          v58 = type metadata accessor for DataProtectedArchiveFilePromise(0);
          v59 = *(v58 + 48);
          v60 = *(v58 + 52);
          v24 = swift_allocObject();
          v61 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
          v62 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
          (*(*(v62 - 8) + 56))(v24 + v61, 1, 1, v62);
          *(v24 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
          v63 = v69;
          v24[2] = v77;
          v24[3] = v63;
          v52(v24 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v45, v50);
          sub_1BF38E610(&v80, (v24 + 4));
          sub_1BF405354(v56, v24 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel, &qword_1EBDD8AF8, &qword_1BF4EC370);
          v64 = v57;
        }

        else
        {
          v65 = v80;
          sub_1BF4E6FF4();

          swift_willThrow();
          (*(v75 + 8))(v42, v76);
          v47(v40, v74);
        }
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();
  }

  v66 = *MEMORY[0x1E69E9840];
  return v24;
}

id ActivityCacheManager.url(for:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF0, &qword_1BF4EFD90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - v11;
  v14 = v2[4];
  v13 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 1, v14);
  (*(v13 + 24))(a1, v14, v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BF38C9B4(v7, &qword_1EBDD8FF0, &qword_1BF4EFD90);
    v15 = *a1;
    sub_1BF3F79D0();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
    return v15;
  }

  else
  {
    sub_1BF405354(v7, v12, &qword_1EBDD8FF8, &qword_1BF4EFD98);
    v18 = v2[9];
    v19 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 6, v18);
    (*(v19 + 24))(v12, v18, v19);
    return sub_1BF38C9B4(v12, &qword_1EBDD8FF8, &qword_1BF4EFD98);
  }
}

uint64_t ActivityCacheManager.baseURL(for:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t ActivityCacheManager.remove(for:)(void **a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1BF4E7194();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 128) == 1)
  {
    v10 = v7;
    result = ActivityCacheManager.url(for:)(a1, v9);
    if (!v2)
    {
      v12 = *v1;
      v13 = sub_1BF4E7094();
      v19[0] = 0;
      LOBYTE(v12) = [v12 removeItemAtURL:v13 error:v19];

      if (v12)
      {
        v14 = *(v5 + 8);
        v15 = v19[0];
        result = v14(v9, v10);
      }

      else
      {
        v18 = v19[0];
        sub_1BF4E6FF4();

        swift_willThrow();
        result = (*(v5 + 8))(v9, v10);
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v16 = 1;
    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

id ActivityCacheManager.version(for:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = sub_1BF4E7194();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ActivityCacheManager.url(for:)(a1, v13);
  if (!v2)
  {
    v15 = v5;
    v16 = v19;
    sub_1BF42D6B0(&qword_1EBDD8F58);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v15 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    v17 = sub_1BF4E7394();
    return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  return result;
}

id ActivityCacheManager.markDataWithVersion(for:version:)(void **a1, uint64_t a2)
{
  v68 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v66 = *(v69 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v54 - v6;
  v67 = sub_1BF4E7394();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = sub_1BF4E7194();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 128) == 1)
  {
    v62 = v23;
    v63 = v22;
    result = ActivityCacheManager.url(for:)(a1, v25);
    if (!v3)
    {
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v27 = sub_1BF4E7B54();
      __swift_project_value_buffer(v27, qword_1EDCA6A48);
      sub_1BF38C94C(a1, v19, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v59 = v7;
      v28 = v67;
      v60 = *(v7 + 16);
      v61 = v7 + 16;
      v60(v12, v68, v67);
      v29 = sub_1BF4E7B34();
      v58 = sub_1BF4E8E84();
      if (os_log_type_enabled(v29, v58))
      {
        v30 = swift_slowAlloc();
        v55 = v30;
        v57 = swift_slowAlloc();
        v72 = v57;
        *v30 = 136446466;
        sub_1BF38C94C(v19, v16, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v70 = 91;
        v71 = 0xE100000000000000;
        v31 = [*v16 description];
        v56 = v29;
        v32 = v31;
        v33 = sub_1BF4E8914();
        v35 = v34;

        MEMORY[0x1BFB58C90](v33, v35);

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v36 = type metadata accessor for ActivityKey();
        v37 = *(v36 + 20);
        sub_1BF4E7454();
        sub_1BF42D700(&qword_1EDC9F098, MEMORY[0x1E6959BC8]);
        v38 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v38);
        v28 = v67;

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        MEMORY[0x1BFB58C90](*(v16 + *(v36 + 24)), *(v16 + *(v36 + 24) + 8));
        MEMORY[0x1BFB58C90](93, 0xE100000000000000);
        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v39 = v16 + *(v13 + 68);
        v40 = ActivityVariantKey.description.getter();
        MEMORY[0x1BFB58C90](v40);

        v41 = v70;
        v42 = v71;
        sub_1BF38C9B4(v16, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        sub_1BF38C9B4(v19, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v43 = sub_1BF38D65C(v41, v42, &v72);

        v44 = v55;
        *(v55 + 1) = v43;
        *(v44 + 6) = 2082;
        sub_1BF42D700(&unk_1EBDD92C0, MEMORY[0x1E69695A8]);
        v45 = sub_1BF4E96A4();
        v47 = v46;
        (*(v59 + 8))(v12, v28);
        v48 = sub_1BF38D65C(v45, v47, &v72);

        *(v44 + 14) = v48;
        v49 = v56;
        _os_log_impl(&dword_1BF389000, v56, v58, "%{public}s marking with version %{public}s", v44, 0x16u);
        v50 = v57;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v50, -1, -1);
        MEMORY[0x1BFB5A5D0](v44, -1, -1);
      }

      else
      {

        (*(v59 + 8))(v12, v28);
        sub_1BF38C9B4(v19, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      }

      v60(v64, v68, v28);
      v52 = MEMORY[0x1E69695A8];
      sub_1BF42D700(&qword_1EBDD8958, MEMORY[0x1E69695A8]);
      sub_1BF42D700(&qword_1EDC9D5E0, v52);
      v53 = v65;
      sub_1BF4E7604();
      sub_1BF42D6B0(&qword_1EBDD8F50);
      sub_1BF4E7044();
      (*(v66 + 8))(v53, v69);
      return (*(v62 + 8))(v25, v63);
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v51 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t ActivityCacheManager.ingestArchive(url:for:)(void *a1, void **a2)
{
  v63[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BF4E7194();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - v17;
  if (*(v2 + 128) == 1)
  {
    v61 = a1;
    v62 = v18;
    result = ActivityCacheManager.url(for:)(a2, &v57 - v17);
    if (!v3)
    {
      sub_1BF4E7134();
      v21 = *v2;
      v22 = sub_1BF4E7094();
      v63[0] = 0;
      v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v63];

      v24 = v63[0];
      if (!v23)
      {
        goto LABEL_13;
      }

      v25 = v63[0];
      v26 = sub_1BF4E7094();
      v63[0] = 0;
      v27 = [v21 removeItemAtURL:v26 error:v63];

      if (v27)
      {
        v28 = v63[0];
      }

      else
      {
        v30 = v63[0];
        v31 = sub_1BF4E6FF4();

        swift_willThrow();
      }

      v32 = sub_1BF4E7094();
      v33 = sub_1BF4E7094();
      v63[0] = 0;
      v34 = [v21 moveItemAtURL:v32 toURL:v33 error:v63];

      v24 = v63[0];
      if (v34)
      {
        v35 = qword_1EDC9EFD8;
        v36 = v63[0];
        if (v35 != -1)
        {
          swift_once();
        }

        v37 = sub_1BF4E7B54();
        __swift_project_value_buffer(v37, qword_1EDCA6A48);
        v38 = *(v62 + 16);
        v38(v12, v61, v6);
        v38(v9, v19, v6);
        v39 = sub_1BF4E7B34();
        v40 = sub_1BF4E8E84();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v58 = v41;
          v61 = swift_slowAlloc();
          v63[0] = v61;
          *v41 = 136446466;
          v57 = sub_1BF42D700(&qword_1EDC9F100, MEMORY[0x1E6968FB0]);
          v60 = v39;
          v42 = sub_1BF4E96A4();
          v44 = v43;
          v59 = v40;
          v62 = *(v62 + 8);
          (v62)(v12, v6);
          v45 = sub_1BF38D65C(v42, v44, v63);

          v46 = v58;
          *(v58 + 1) = v45;
          *(v46 + 6) = 2082;
          v47 = sub_1BF4E96A4();
          v49 = v48;
          (v62)(v9, v6);
          v50 = sub_1BF38D65C(v47, v49, v63);

          *(v46 + 14) = v50;
          v51 = v60;
          _os_log_impl(&dword_1BF389000, v60, v59, "Ingested activity archive from %{public}s to %{public}s", v46, 0x16u);
          v52 = v61;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v52, -1, -1);
          MEMORY[0x1BFB5A5D0](v46, -1, -1);

          v53 = v62;
          (v62)(v15, v6);
        }

        else
        {

          v53 = *(v62 + 8);
          v53(v9, v6);
          v53(v12, v6);
          v53(v15, v6);
        }

        result = (v53)(v19, v6);
      }

      else
      {
LABEL_13:
        v54 = v24;
        sub_1BF4E6FF4();

        swift_willThrow();
        v55 = *(v62 + 8);
        v55(v15, v6);
        result = (v55)(v19, v6);
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v29 = 1;
    result = swift_willThrow();
  }

  v56 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1BF42C838@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v86 = a4;
  v89[1] = *MEMORY[0x1E69E9840];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v7 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v9 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v80[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v80[-v17];
  v19 = sub_1BF4E6D64();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v80[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *a1;
  if (*(a2 + 128) != 1)
  {
    goto LABEL_19;
  }

  v87 = v24;
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  v26 = swift_dynamicCast();
  v27 = *(v20 + 56);
  if (v26)
  {
    v27(v18, 0, 1, v19);
    (*(v20 + 32))(v23, v18, v19);
    if (sub_1BF41B748())
    {
      if (qword_1EDC9D4C0 != -1)
      {
        swift_once();
      }

      v28 = sub_1BF4E7B54();
      __swift_project_value_buffer(v28, qword_1EDCA6940);
      sub_1BF38C94C(a3, v14, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v29 = sub_1BF4E7B34();
      v30 = sub_1BF4E8E84();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v82 = v31;
        v83 = swift_slowAlloc();
        v89[0] = v83;
        *v31 = 136446210;
        v32 = v85;
        sub_1BF38C94C(v14, v85, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v87 = 91;
        v88 = 0xE100000000000000;
        v33 = [*v32 description];
        v34 = sub_1BF4E8914();
        v81 = v30;
        v35 = v34;
        v37 = v36;

        MEMORY[0x1BFB58C90](v35, v37);

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v38 = type metadata accessor for ActivityKey();
        v39 = *(v38 + 20);
        sub_1BF4E7454();
        sub_1BF42D700(&qword_1EDC9F098, MEMORY[0x1E6959BC8]);
        v40 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v40);

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        MEMORY[0x1BFB58C90](*(v32 + *(v38 + 24)), *(v32 + *(v38 + 24) + 8));
        MEMORY[0x1BFB58C90](93, 0xE100000000000000);
        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v41 = v32 + *(v84 + 68);
        v42 = ActivityVariantKey.description.getter();
        MEMORY[0x1BFB58C90](v42);

        v43 = v87;
        v44 = v88;
        sub_1BF38C9B4(v32, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        sub_1BF38C9B4(v14, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v45 = sub_1BF38D65C(v43, v44, v89);

        v46 = v82;
        *(v82 + 1) = v45;
        v47 = v46;
        _os_log_impl(&dword_1BF389000, v29, v81, "Not removing item for key %{public}s because of keybag", v46, 0xCu);
        v48 = v83;
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x1BFB5A5D0](v48, -1, -1);
        MEMORY[0x1BFB5A5D0](v47, -1, -1);
      }

      else
      {

        sub_1BF38C9B4(v14, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      }

      (*(v20 + 8))(v23, v19);
      goto LABEL_19;
    }

    (*(v20 + 8))(v23, v19);
  }

  else
  {
    v27(v18, 1, 1, v19);
    sub_1BF38C9B4(v18, &qword_1EBDD8BF0, &qword_1BF4ED508);
  }

  v49 = *a2;
  v50 = sub_1BF4E7094();
  v87 = 0;
  v51 = [v49 removeItemAtURL:v50 error:&v87];

  if (v51)
  {
    v52 = qword_1EDC9EFD8;
    v53 = v87;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = sub_1BF4E7B54();
    __swift_project_value_buffer(v54, qword_1EDCA6A48);
    sub_1BF38C94C(a3, v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v55 = v24;
    v56 = sub_1BF4E7B34();
    v57 = sub_1BF4E8E84();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89[0] = v83;
      *v58 = 136446466;
      v60 = v85;
      sub_1BF38C94C(v9, v85, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v87 = 91;
      v88 = 0xE100000000000000;
      v61 = [*v60 description];
      v62 = sub_1BF4E8914();
      v64 = v63;

      MEMORY[0x1BFB58C90](v62, v64);

      MEMORY[0x1BFB58C90](58, 0xE100000000000000);
      v65 = type metadata accessor for ActivityKey();
      v66 = *(v65 + 20);
      sub_1BF4E7454();
      sub_1BF42D700(&qword_1EDC9F098, MEMORY[0x1E6959BC8]);
      v67 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v67);

      MEMORY[0x1BFB58C90](58, 0xE100000000000000);
      MEMORY[0x1BFB58C90](*(v60 + *(v65 + 24)), *(v60 + *(v65 + 24) + 8));
      MEMORY[0x1BFB58C90](93, 0xE100000000000000);
      MEMORY[0x1BFB58C90](58, 0xE100000000000000);
      v68 = v60 + *(v84 + 68);
      v69 = ActivityVariantKey.description.getter();
      MEMORY[0x1BFB58C90](v69);

      v70 = v87;
      v71 = v88;
      sub_1BF38C9B4(v60, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      sub_1BF38C9B4(v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v72 = sub_1BF38D65C(v70, v71, v89);

      *(v58 + 4) = v72;
      *(v58 + 12) = 2114;
      v73 = v24;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v74;
      *v59 = v74;
      _os_log_impl(&dword_1BF389000, v56, v57, "Removing item for key %{public}s because  %{public}@", v58, 0x16u);
      sub_1BF38C9B4(v59, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v59, -1, -1);
      v75 = v83;
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1BFB5A5D0](v75, -1, -1);
      MEMORY[0x1BFB5A5D0](v58, -1, -1);
    }

    else
    {

      sub_1BF38C9B4(v9, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    }
  }

  else
  {
    v76 = v87;
    v77 = sub_1BF4E6FF4();

    swift_willThrow();
  }

LABEL_19:
  *v86 = v24;
  result = v24;
  v79 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF42D1E0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1BF42D24C(void *a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 16))(*a1, v3, v4);
}

uint64_t sub_1BF42D2D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v12 - v8);
  sub_1BF42A350(a1, v3, (v12 - v8));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12[1] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v11 = sub_1BF4E86B4();
    return (*(*(v11 - 8) + 32))(a2, v9, v11);
  }
}

id sub_1BF42D450@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = sub_1BF4E7194();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ActivityCacheManager.url(for:)(a1, v13);
  if (!v2)
  {
    v15 = v5;
    v16 = v19;
    sub_1BF42D6B0(&qword_1EBDD8F58);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v15 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    v17 = sub_1BF4E7394();
    return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  }

  return result;
}

uint64_t sub_1BF42D6B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF42D700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of ActivityCacheKeyProviding.baseURL(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BF42D970(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1BF42D9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BF42DA54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider));
  v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier + 8);

  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);

  v4 = *(v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
}

uint64_t sub_1BF42DAC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable))
  {

    sub_1BF4E7BD4();
  }

  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v6 = sub_1BF4E7F64();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = *(v1 + v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider));
  v8 = *(v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__logIdentifier + 8);

  v9 = *(v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);

  return v1;
}

uint64_t sub_1BF42DBB4()
{
  sub_1BF42DAC8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF42DC14(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor;
  v6 = *(v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
  if (v6)
  {
    if (!a1)
    {
LABEL_7:
      *(v1 + v5) = a1;
      v10 = a1;

      os_unfair_lock_unlock(*(v3 + 16));

      return sub_1BF39FDFC();
    }

    sub_1BF42DD34();
    v7 = v6;
    v8 = a1;
    v9 = sub_1BF4E90A4();

    if ((v9 & 1) == 0)
    {
      v6 = *(v1 + v5);
      goto LABEL_7;
    }
  }

  else if (a1)
  {
    v6 = 0;
    goto LABEL_7;
  }

  os_unfair_lock_unlock(*(v3 + 16));
}

unint64_t sub_1BF42DD34()
{
  result = qword_1EDC9D720;
  if (!qword_1EDC9D720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9D720);
  }

  return result;
}

uint64_t sub_1BF42DF4C(uint64_t result, char a2)
{
  v3 = v2 + *(*v2 + 176);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BF42DF74()
{
  v1 = v0;
  sub_1BF4E92E4();

  strcpy(v8, "identifier: ");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v7 = *(v1 + *(*v1 + 160));
  v2 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x69746566696C203BLL, 0xEC000000203A656DLL);
  sub_1BF42E3DC();
  v3 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FAFA0);
  v4 = v1 + *(*v1 + 168);
  v5 = ReloadConfiguration.description.getter();
  MEMORY[0x1BFB58C90](v5);

  return v8[0];
}

uint64_t sub_1BF42E0F4()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 91;
  v24 = 0xE100000000000000;
  v22 = *(v0 + *(*v0 + 160));
  v10 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v11 = v0 + *(*v0 + 168);
  v22 = *(v11 + *(type metadata accessor for ReloadConfiguration(0) + 24));
  v12 = ReloadConfiguration.ReloadReason.description.getter();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  sub_1BF42E4D4(v11, v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    v13 = 0xE900000000000065;
    v14 = 0x74616964656D6D69;
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    if (qword_1EDC9F0F0 != -1)
    {
      swift_once();
    }

    v15 = qword_1EDC9F0F8;
    v16 = sub_1BF4E7254();
    v17 = [v15 stringFromDate_];

    v18 = sub_1BF4E8914();
    v13 = v19;

    (*(v2 + 8))(v5, v1);
    v14 = v18;
  }

  MEMORY[0x1BFB58C90](v14, v13);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return v23;
}

uint64_t sub_1BF42E3DC()
{
  v1 = v0;
  v2 = sub_1BF4E80A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8084();
  v7 = sub_1BF4E8074();
  (*(v3 + 8))(v6, v2);
  v8 = *(v1 + *(*v1 + 184));
  result = v7 - v8;
  if (v7 < v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF42E4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF42E538(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 208));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1BF42E560(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t static ReloadTask.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*a1 + 144);
  v7 = *(*(v2 + 112) + 8);
  v8 = a2 + *(*a2 + 144);
  v9 = *(v2 + 80);
  if ((sub_1BF4E88C4() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + *(*a1 + 152));
  v11 = *(a2 + *(*a2 + 152));
  v12 = *(v3 + 88);
  v13 = *(v3 + 128);
  if ((sub_1BF4E8D54() & 1) == 0 || *(a1 + *(*a1 + 160)) != *(a2 + *(*a2 + 160)))
  {
    return 0;
  }

  v14 = a1 + *(*a1 + 168);
  v15 = a2 + *(*a2 + 168);

  return _s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(v14, v15);
}

uint64_t sub_1BF42E754(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for ReloadConfiguration(319);
    if (v4 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = sub_1BF4E7B54();
      if (v5 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1BF42E928()
{
  result = qword_1EDC962E8;
  if (!qword_1EDC962E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC962E8);
  }

  return result;
}

uint64_t Budget.Level.hashValue.getter()
{
  v1 = *v0;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v1);
  return sub_1BF4E9844();
}

uint64_t Budget.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7334();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Budget.level.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Budget();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Budget.level.setter(char *a1)
{
  v2 = *a1;
  *(v1 + *(type metadata accessor for Budget() + 24)) = v2;

  return sub_1BF42EB2C();
}

uint64_t sub_1BF42EB2C()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Budget();
  v8 = v7;
  v9 = *(v0 + *(v7 + 32));
  if (v9 && *(v9 + 16) && (v10 = sub_1BF3EC380(*(v1 + *(v7 + 24))), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 40;
    if (*(v1 + *(v8 + 24)))
    {
      v12 = 10;
    }
  }

  *(v1 + *(v8 + 20)) = v12;
  sub_1BF4E7214();
  return (*(v3 + 40))(v1, v6, v2);
}

uint64_t Budget.maximumBudgetPerWindow.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Budget();
  v3 = v2;
  v4 = *(v0 + *(v2 + 32));
  if (v4)
  {
    if (*(v4 + 16))
    {
      v5 = sub_1BF3EC380(*(v1 + *(v2 + 24)));
      if (v6)
      {
        return *(*(v4 + 56) + 8 * v5);
      }
    }
  }

  if (*(v1 + *(v3 + 24)))
  {
    return 10;
  }

  return 40;
}

void (*Budget.level.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1BF4E7334();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = type metadata accessor for Budget();
  v5[4] = v9;
  *(v5 + 10) = *(v9 + 24);
  return sub_1BF42EDBC;
}

void sub_1BF42EDBC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 3);
    goto LABEL_11;
  }

  v4 = *v2;
  v5 = *(*v2 + *(*(v2 + 4) + 32));
  if (!v5 || !*(v5 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1BF3EC380(*(v4 + v2[10]));
  if ((v7 & 1) == 0)
  {
    v4 = *v2;
LABEL_8:
    v8 = 40;
    if (*(v4 + v2[10]))
    {
      v8 = 10;
    }

    goto LABEL_10;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  v4 = *v2;
LABEL_10:
  v3 = *(v2 + 3);
  v9 = *(v2 + 1);
  v10 = *(v2 + 2);
  *(v4 + *(*(v2 + 4) + 20)) = v8;
  sub_1BF4E7214();
  (*(v10 + 40))(v4, v3, v9);
LABEL_11:
  free(v3);

  free(v2);
}

uint64_t Budget.isExhausted.getter()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Budget();
  if (*(v0 + v13[5]) >= 1)
  {
    (*(v2 + 56))(v12, 1, 1, v1);
LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v14 = *(v0 + v13[7]);
  if (v14)
  {
    if (*(v14 + 16))
    {
      v15 = sub_1BF3EC380(*(v0 + v13[6]));
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
      }
    }
  }

  sub_1BF4E7284();
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  v18 = sub_1BF4E7264();
  v19 = *(v2 + 8);
  v19(v5, v1);
  if (v18)
  {
    (*(v2 + 32))(v12, v8, v1);
    v20 = 0;
  }

  else
  {
    v19(v8, v1);
    v20 = 1;
  }

  v21 = 1;
  (*(v2 + 56))(v12, v20, 1, v1);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_1BF42FF8C(v12);
  return v21;
}

uint64_t Budget.nextResetDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7334();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Budget();
  if (*(v1 + v10[5]) <= 0)
  {
    v13 = *(v1 + v10[7]);
    if (v13)
    {
      if (*(v13 + 16))
      {
        v14 = sub_1BF3EC380(*(v1 + v10[6]));
        if (v15)
        {
          v16 = *(*(v13 + 56) + 8 * v14);
        }
      }
    }

    sub_1BF4E7284();
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    v17 = sub_1BF4E7264();
    v18 = *(v20 + 8);
    v18(v6, v3);
    if (v17)
    {
      (*(v20 + 32))(a1, v9, v3);
      return (*(v20 + 56))(a1, 0, 1, v3);
    }

    else
    {
      v18(v9, v3);
      return (*(v20 + 56))(a1, 1, 1, v3);
    }
  }

  else
  {
    v11 = *(v20 + 56);

    return v11(a1, 1, 1, v3);
  }
}

int *Budget.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1BF4E7214();
  result = type metadata accessor for Budget();
  v3 = result[5];
  *(a1 + v3) = 0;
  v4 = result[6];
  *(a1 + v4) = 1;
  *(a1 + result[7]) = 0;
  *(a1 + result[8]) = 0;
  v5 = *(a1 + v4) == 0;
  v6 = 40;
  if (!v5)
  {
    v6 = 10;
  }

  *(a1 + v3) = v6;
  return result;
}

int *Budget.init(level:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BF4E7214();
  result = type metadata accessor for Budget();
  v5 = result[5];
  *(a2 + v5) = 0;
  v6 = result[6];
  *(a2 + v6) = v3;
  *(a2 + result[7]) = 0;
  *(a2 + result[8]) = 0;
  v7 = *(a2 + v6) == 0;
  v8 = 40;
  if (!v7)
  {
    v8 = 10;
  }

  *(a2 + v5) = v8;
  return result;
}

uint64_t Budget.init(startDate:remainingBudget:level:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  sub_1BF4E7214();
  v8 = type metadata accessor for Budget();
  v9 = v8[5];
  v10 = sub_1BF4E7334();
  result = (*(*(v10 - 8) + 40))(a4, a1, v10);
  *(a4 + v9) = a2;
  *(a4 + v8[6]) = v7;
  *(a4 + v8[7]) = 0;
  *(a4 + v8[8]) = 0;
  return result;
}

uint64_t Budget.init(startDate:remainingBudget:windowDuration:level:maximumBudgetPerWindow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a4;
  sub_1BF4E7214();
  v12 = type metadata accessor for Budget();
  v13 = v12[5];
  v14 = sub_1BF4E7334();
  result = (*(*(v14 - 8) + 40))(a6, a1, v14);
  *(a6 + v13) = a2;
  *(a6 + v12[7]) = a3;
  *(a6 + v12[8]) = a5;
  *(a6 + v12[6]) = v11;
  return result;
}

Swift::Void __swiftcall Budget.reduceBudget()()
{
  Budget.resetIfNecessary()();
  v1 = *(type metadata accessor for Budget() + 20);
  v2 = *(v0 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

Swift::Void __swiftcall Budget.resetIfNecessary()()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  if (sub_1BF4E7264())
  {
    sub_1BF4E7214();
    (*(v3 + 40))(v1, v9, v2);
  }

  v13 = type metadata accessor for Budget();
  v14 = v13;
  v15 = *(v1 + *(v13 + 28));
  if (v15)
  {
    if (*(v15 + 16))
    {
      v16 = sub_1BF3EC380(*(v1 + *(v13 + 24)));
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);
      }
    }
  }

  sub_1BF4E7284();
  v19 = sub_1BF4E7274();
  v20 = *(v3 + 8);
  v20(v6, v2);
  if (v19)
  {
    (*(v3 + 24))(v1, v12, v2);
    v21 = *(v1 + v14[8]);
    if (v21 && *(v21 + 16) && (v22 = sub_1BF3EC380(*(v1 + v14[6])), (v23 & 1) != 0))
    {
      v24 = *(*(v21 + 56) + 8 * v22);
    }

    else if (*(v1 + v14[6]))
    {
      v24 = 10;
    }

    else
    {
      v24 = 40;
    }

    v20(v12, v2);
    *(v1 + v14[5]) = v24;
  }

  else
  {
    v20(v12, v2);
  }
}

uint64_t Budget.hash(into:)(uint64_t a1)
{
  sub_1BF4E7334();
  sub_1BF430094(&qword_1EDC9F0D0, MEMORY[0x1E6969530]);
  sub_1BF4E8884();
  v3 = type metadata accessor for Budget();
  MEMORY[0x1BFB59A70](*(v1 + v3[5]));
  MEMORY[0x1BFB59A70](*(v1 + v3[6]));
  v4 = *(v1 + v3[7]);
  sub_1BF4E9824();
  if (v4)
  {
    sub_1BF42FD54(a1, v4);
  }

  v5 = *(v1 + v3[8]);
  if (!v5)
  {
    return sub_1BF4E9824();
  }

  sub_1BF4E9824();

  return sub_1BF42FC34(a1, v5);
}

uint64_t Budget.hashValue.getter()
{
  sub_1BF4E9804();
  Budget.hash(into:)(v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF42F9A4()
{
  sub_1BF4E9804();
  Budget.hash(into:)(v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF42F9E8()
{
  sub_1BF4E9804();
  Budget.hash(into:)(v1);
  return sub_1BF4E9844();
}

unint64_t sub_1BF42FA24(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1BF3EC380(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF42FB2C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_1BF3EC380(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF42FC34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  for (i = (v7 + 63) >> 6; v9; v4 ^= result)
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = *(*(a2 + 56) + 8 * v12);
    v9 &= v9 - 1;
    v16 = *(v3 + 32);
    v17 = *(v3 + 48);
    v18 = *(v3 + 64);
    v14 = *v3;
    v15 = *(v3 + 16);
    MEMORY[0x1BFB59A70](*(*(a2 + 48) + v12));
    MEMORY[0x1BFB59A70](v13);
    result = sub_1BF4E9844();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x1BFB59A70](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF42FD54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  for (i = (v7 + 63) >> 6; v9; v4 ^= result)
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9)) | (v11 << 6);
    v13 = *(*(a2 + 56) + 8 * v12);
    v9 &= v9 - 1;
    v17 = *(v3 + 32);
    v18 = *(v3 + 48);
    v19 = *(v3 + 64);
    v15 = *v3;
    v16 = *(v3 + 16);
    MEMORY[0x1BFB59A70](*(*(a2 + 48) + v12));
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1BFB59A90](v14);
    result = sub_1BF4E9844();
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x1BFB59A70](v4);
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL _s9ChronoKit6BudgetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BF4E72D4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Budget();
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a2 + v6);
  if (*(a1 + v6))
  {
    if (!v7)
    {
      return 0;
    }

    v8 = v4;
    v9 = sub_1BF42FA24(*(a1 + v6), v7);
    v4 = v8;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v10 = v4[8];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    return v12 && (sub_1BF42FB2C(v11, v12) & 1) != 0;
  }

  return !v12;
}

uint64_t type metadata accessor for Budget()
{
  result = qword_1EDC96670;
  if (!qword_1EDC96670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF42FF8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF42FFF8()
{
  result = qword_1EDC96680;
  if (!qword_1EDC96680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC96680);
  }

  return result;
}

uint64_t sub_1BF430094(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BF430104()
{
  sub_1BF4E7334();
  if (v0 <= 0x3F)
  {
    sub_1BF4301E8(319, &qword_1EDC96430, &qword_1EBDD9020, &qword_1BF4F0328);
    if (v1 <= 0x3F)
    {
      sub_1BF4301E8(319, &qword_1EDC96428, &qword_1EBDD9028, &qword_1BF4F0330);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF4301E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BF4E90F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ActivityVariantKey.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E8674();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityVariantKey.metrics.setter(uint64_t a1)
{
  v3 = sub_1BF4E8674();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ActivityVariantKey.family.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityVariantKey() + 20);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ActivityVariantKey()
{
  result = qword_1EDC9E550;
  if (!qword_1EDC9E550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityVariantKey.family.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityVariantKey() + 20);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityVariantKey.hostIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityVariantKey() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityVariantKey.hostIdentity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityVariantKey() + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityVariantKey.init(metrics:family:hostIdentity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BF4E8674();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ActivityVariantKey();
  v10 = *(v9 + 20);
  v11 = sub_1BF4E8364();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t ActivityVariantKey.filePathComponent.getter()
{
  v6 = sub_1BF4E8664();

  MEMORY[0x1BFB58C90](46, 0xE100000000000000);

  v1 = v0 + *(type metadata accessor for ActivityVariantKey() + 20);
  v2 = sub_1BF4E8354();
  v4 = v3;

  MEMORY[0x1BFB58C90](v2, v4);

  return v6;
}

uint64_t ActivityVariantKey.description.getter()
{
  v7 = sub_1BF4E8664();
  v8 = v1;

  MEMORY[0x1BFB58C90](46, 0xE100000000000000);

  v2 = v0 + *(type metadata accessor for ActivityVariantKey() + 20);
  v3 = sub_1BF4E8354();
  v5 = v4;

  MEMORY[0x1BFB58C90](v3, v5);

  MEMORY[0x1BFB58C90](v7, v8);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1BF43097C()
{
  v1 = 0x796C696D6166;
  if (*v0 != 1)
  {
    v1 = 0x6E65644974736F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7363697274656DLL;
  }
}

uint64_t sub_1BF4309DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF431E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF430A04(uint64_t a1)
{
  v2 = sub_1BF431AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF430A40(uint64_t a1)
{
  v2 = sub_1BF431AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityVariantKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9030, &qword_1BF4F03E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF431AD0();
  sub_1BF4E9864();
  v16 = 0;
  sub_1BF4E8674();
  sub_1BF431F20(&qword_1EDC96448, MEMORY[0x1E6985AA8]);
  sub_1BF4E9674();
  if (!v1)
  {
    v9 = type metadata accessor for ActivityVariantKey();
    v10 = *(v9 + 20);
    v15 = 1;
    sub_1BF4E8364();
    sub_1BF431F20(&qword_1EDC96478, MEMORY[0x1E69858D8]);
    sub_1BF4E9674();
    v11 = *(v9 + 24);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9D558, &unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF4E9674();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ActivityVariantKey.hash(into:)()
{
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
  sub_1BF4E8884();
  v0 = type metadata accessor for ActivityVariantKey();
  v1 = *(v0 + 20);
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
  sub_1BF4E8884();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  return sub_1BF4E8884();
}

uint64_t ActivityVariantKey.hashValue.getter()
{
  sub_1BF4E9804();
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
  sub_1BF4E8884();
  v0 = type metadata accessor for ActivityVariantKey();
  v1 = *(v0 + 20);
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
  sub_1BF4E8884();
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t ActivityVariantKey.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v33 = *(v35 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v31 - v4;
  v5 = sub_1BF4E8364();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E8674();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9038, &qword_1BF4F03F0);
  v38 = *(v43 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v31 - v13;
  v15 = type metadata accessor for ActivityVariantKey();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF431AD0();
  v42 = v14;
  v20 = v44;
  sub_1BF4E9854();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v32 = v15;
  v44 = v18;
  v21 = a1;
  v23 = v38;
  v22 = v39;
  v24 = v40;
  v47 = 0;
  sub_1BF431F20(&qword_1EDC96440, MEMORY[0x1E6985AA8]);
  v25 = v41;
  sub_1BF4E95B4();
  v26 = *(v37 + 32);
  v41 = v9;
  v26(v44, v25, v9);
  v46 = 1;
  sub_1BF431F20(&qword_1EDC96470, MEMORY[0x1E69858D8]);
  v27 = v8;
  sub_1BF4E95B4();
  v28 = v44;
  (*(v22 + 32))(&v44[*(v32 + 20)], v27, v24);
  v45 = 2;
  sub_1BF38C8B4(&qword_1EDC9D548, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  v29 = v35;
  sub_1BF4E95B4();
  (*(v23 + 8))(v42, v43);
  (*(v33 + 32))(v28 + *(v32 + 24), v36, v29);
  sub_1BF431B24(v28, v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return sub_1BF431B88(v28);
}

uint64_t sub_1BF43150C(uint64_t a1)
{
  sub_1BF4E9804();
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
  sub_1BF4E8884();
  v2 = *(a1 + 20);
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
  sub_1BF4E8884();
  v3 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t sub_1BF431664(uint64_t a1, uint64_t a2)
{
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
  sub_1BF4E8884();
  v3 = *(a2 + 20);
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
  sub_1BF4E8884();
  v4 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  return sub_1BF4E8884();
}

uint64_t sub_1BF4317A4(uint64_t a1, uint64_t a2)
{
  sub_1BF4E9804();
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8]);
  sub_1BF4E8884();
  v3 = *(a2 + 20);
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8]);
  sub_1BF4E8884();
  v4 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t _s9ChronoKit18ActivityVariantKeyV2eeoiySbAC_ACtFZ_0()
{
  if ((MEMORY[0x1BFB588A0]() & 1) != 0 && (v0 = type metadata accessor for ActivityVariantKey(), v1 = *(v0 + 20), sub_1BF4E8364(), sub_1BF431F20(&qword_1EDC9D790, MEMORY[0x1E69858D8]), sub_1BF4E8B54(), sub_1BF4E8B54(), v7 == v5))
  {
    v2 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9F008, &unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF4E8B54();
    sub_1BF4E8B54();
    if (v8 == v6)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_1BF4E9734();
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_1BF431AD0()
{
  result = qword_1EDC9E588[0];
  if (!qword_1EDC9E588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9E588);
  }

  return result;
}

uint64_t sub_1BF431B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityVariantKey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF431B88(uint64_t a1)
{
  v2 = type metadata accessor for ActivityVariantKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF431C54()
{
  sub_1BF4E8674();
  if (v0 <= 0x3F)
  {
    sub_1BF4E8364();
    if (v1 <= 0x3F)
    {
      sub_1BF3D9314();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BF431D04()
{
  result = qword_1EBDD9040;
  if (!qword_1EBDD9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9040);
  }

  return result;
}

unint64_t sub_1BF431D5C()
{
  result = qword_1EDC9E578;
  if (!qword_1EDC9E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9E578);
  }

  return result;
}

unint64_t sub_1BF431DB4()
{
  result = qword_1EDC9E580;
  if (!qword_1EDC9E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9E580);
  }

  return result;
}

uint64_t sub_1BF431E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974736F68 && a2 == 0xEC00000079746974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BF4E9734();

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

uint64_t sub_1BF431F20(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1BF431F90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A68, &qword_1BF4EC038);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1BF43209C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90E0, &qword_1BF4F06B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90E8, &qword_1BF4F06C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF4321E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90A0, &qword_1BF4F0680);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BF4322F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9048, &qword_1BF4F6DC0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BF43241C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90D8, &qword_1BF4F06B0);
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

void *sub_1BF432528(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A90, &qword_1BF4EC060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A98, &qword_1BF4EC068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF432694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90B0, &qword_1BF4F0688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BF432788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90F0, qword_1BF4F06C8);
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