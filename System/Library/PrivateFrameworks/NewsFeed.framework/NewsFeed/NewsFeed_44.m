uint64_t sub_1D5F4A97C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  v16 = sub_1D7264AAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = &type metadata for FormatGroupBinding.Command;
  v21 = swift_allocObject();
  *&v58 = v21;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  sub_1D5F58594(a1, a2, a3, a4, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v15, v11);
  if ((*(v23 + 88))(v11, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v11, v22);
LABEL_7:
    (*(v17 + 8))(v20, v16);
    goto LABEL_8;
  }

  v49 = v17;
  v50 = v16;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v20, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v15, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4B094()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatGroupBinding.Image;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = v0[1];
  v14[1] = *v0;
  v14[2] = v15;
  *(v14 + 41) = *(v0 + 25);
  sub_1D5F581E0(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4B790()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatGroupBinding.Text;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = *(v0 + 16);
  *(v14 + 16) = *v0;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v0 + 32);
  *(v14 + 64) = *(v0 + 48);
  sub_1D5F58648(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4BE7C(uint64_t a1, uint64_t a2, int a3)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v56 + 1) = &type metadata for FormatGroupBinding.Font;
  *&v55 = a1;
  *(&v55 + 1) = a2;
  BYTE2(v56) = BYTE2(a3);
  LOWORD(v56) = a3;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v19 = sub_1D7264A7C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v20 + 88))(v9, v19) != *MEMORY[0x1E69E75A8])
  {
    (*(v20 + 8))(v9, v19);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v46 = v15;
  v47 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v21 == result)
  {
    v23 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v55 = v53;
      v56 = v54[0];
      v57 = v54[1];
      sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);
      v25 = *(&v53 + 1);
      if (*(&v53 + 1))
      {
        v26 = v53;
        v27 = sub_1D5C73AB0(v53, *(&v53 + 1));
        if (v28)
        {
          v50[0] = v27;
          v50[1] = v28;
          sub_1D5BF4D9C();
          v29 = sub_1D7263A0C();
          v31 = v30;

          v32 = sub_1D5FD24A4(1uLL, v26, v25);
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v39 = MEMORY[0x1DA6F97E0](v32, v34, v36, v38);
          v41 = v40;

          *&v48[0] = v29;
          *(&v48[0] + 1) = v31;

          MEMORY[0x1DA6F9910](v39, v41);

          v25 = *(&v48[0] + 1);
          v26 = *&v48[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v54);
        sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v48, v50);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1D7273AE0;
          *(v42 + 32) = v26;
          *(v42 + 40) = v25;
          v43 = v51;
          v44 = v52;
          __swift_project_boxed_opaque_existential_1(v50, v51);
          v45 = (*(v44 + 8))(v43, v44);
          *&v53 = v42;
          sub_1D6985160(v45);
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
          v24 = v53;
          __swift_destroy_boxed_opaque_existential_1(v50);
        }

        else
        {
          v49 = 0;
          memset(v48, 0, sizeof(v48));
          sub_1D5BFB704(v48, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1D7273AE0;
          *(v24 + 32) = v26;
          *(v24 + 40) = v25;
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v55, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    (*(v46 + 8))(v18, v47);
LABEL_8:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4C55C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2 >> 8;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - v13;
  v15 = sub_1D7264AAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v57 + 1) = a3;
  *&v56 = a1;
  BYTE8(v56) = v4;
  BYTE9(v56) = v6;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v20 = sub_1D7264A7C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v14, v10);
  if ((*(v21 + 88))(v10, v20) != *MEMORY[0x1E69E75A8])
  {
    (*(v21 + 8))(v10, v20);
LABEL_7:
    (*(v16 + 8))(v19, v15);
    goto LABEL_8;
  }

  v47 = v16;
  v48 = v15;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v22 == result)
  {
    v24 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v24)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v56 = v54;
      v57 = v55[0];
      v58 = v55[1];
      sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);
      v26 = *(&v54 + 1);
      if (*(&v54 + 1))
      {
        v27 = v54;
        v28 = sub_1D5C73AB0(v54, *(&v54 + 1));
        if (v29)
        {
          v51[0] = v28;
          v51[1] = v29;
          sub_1D5BF4D9C();
          v30 = sub_1D7263A0C();
          v32 = v31;

          v33 = sub_1D5FD24A4(1uLL, v27, v26);
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v40 = MEMORY[0x1DA6F97E0](v33, v35, v37, v39);
          v42 = v41;

          *&v49[0] = v30;
          *(&v49[0] + 1) = v32;

          MEMORY[0x1DA6F9910](v40, v42);

          v26 = *(&v49[0] + 1);
          v27 = *&v49[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v49, v51);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1D7273AE0;
          *(v43 + 32) = v27;
          *(v43 + 40) = v26;
          v44 = v52;
          v45 = v53;
          __swift_project_boxed_opaque_existential_1(v51, v52);
          v46 = (*(v45 + 8))(v44, v45);
          *&v54 = v43;
          sub_1D6985160(v46);
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v19, v48);
          v25 = v54;
          __swift_destroy_boxed_opaque_existential_1(v51);
        }

        else
        {
          v50 = 0;
          memset(v49, 0, sizeof(v49));
          sub_1D5BFB704(v49, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1D7273AE0;
          *(v25 + 32) = v27;
          *(v25 + 40) = v26;
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v19, v48);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v56, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v47 + 8))(v19, v48);
LABEL_8:
    v25 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v14, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, __n128))
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  v18 = sub_1D7264AAC();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v64 + 1) = a4;
  *&v63 = a1;
  *(&v63 + 1) = a2;
  LOBYTE(v64) = a3;
  v24 = a3;
  v25 = v17;
  a5(a1, a2, v24, v21);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v26 = sub_1D7264A7C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    goto LABEL_7;
  }

  v55 = v19;
  sub_1D5F57E24(v25, v13);
  if ((*(v27 + 88))(v13, v26) != *MEMORY[0x1E69E75A8])
  {
    (*(v27 + 8))(v13, v26);
    v19 = v55;
LABEL_7:
    (*(v19 + 8))(v23, v18);
    v32 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D5D28118(v25, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v32;
  }

  v28 = v25;
  v54 = v18;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v29 == result)
  {
    v31 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v31)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v63 = v61;
      v64 = v62[0];
      v65 = v62[1];
      sub_1D5D28654(&v63, &v61, sub_1D5F57EB8);
      v33 = *(&v61 + 1);
      if (*(&v61 + 1))
      {
        v34 = v61;
        v35 = sub_1D5C73AB0(v61, *(&v61 + 1));
        if (v36)
        {
          v58[0] = v35;
          v58[1] = v36;
          sub_1D5BF4D9C();
          v37 = sub_1D7263A0C();
          v39 = v38;

          v40 = sub_1D5FD24A4(1uLL, v34, v33);
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = MEMORY[0x1DA6F97E0](v40, v42, v44, v46);
          v49 = v48;

          *&v56[0] = v37;
          *(&v56[0] + 1) = v39;

          MEMORY[0x1DA6F9910](v47, v49);

          v33 = *(&v56[0] + 1);
          v34 = *&v56[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v62);
        sub_1D5D28654(&v63, &v61, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v56, v58);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1D7273AE0;
          *(v50 + 32) = v34;
          *(v50 + 40) = v33;
          v51 = v59;
          v52 = v60;
          __swift_project_boxed_opaque_existential_1(v58, v59);
          v53 = (*(v52 + 8))(v51, v52);
          *&v61 = v50;
          sub_1D6985160(v53);
          sub_1D5F57F4C(&v63, sub_1D5F57EB8);
          (*(v55 + 8))(v23, v54);
          v32 = v61;
          __swift_destroy_boxed_opaque_existential_1(v58);
        }

        else
        {
          v57 = 0;
          memset(v56, 0, sizeof(v56));
          sub_1D5BFB704(v56, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1D7273AE0;
          *(v32 + 32) = v34;
          *(v32 + 40) = v33;
          sub_1D5F57F4C(&v63, sub_1D5F57EB8);
          (*(v55 + 8))(v23, v54);
        }

        goto LABEL_15;
      }

      sub_1D5F57F4C(&v63, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    (*(v55 + 8))(v23, v54);
    v32 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v25 = v28;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4D388(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  v19 = sub_1D7264AAC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v66 + 1) = a5;
  v24 = swift_allocObject();
  *&v65 = v24;
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  v25 = a3;
  v26 = v18;
  sub_1D5F58038(a1, a2, v25, a4);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v27 = sub_1D7264A7C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_7;
  }

  v56 = v20;
  v57 = v19;
  sub_1D5F57E24(v26, v14);
  if ((*(v28 + 88))(v14, v27) != *MEMORY[0x1E69E75A8])
  {
    (*(v28 + 8))(v14, v27);
    v19 = v57;
    v20 = v56;
LABEL_7:
    (*(v20 + 8))(v23, v19);
    v34 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D5D28118(v26, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v34;
  }

  v29 = v26;
  v30 = v23;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v31 == result)
  {
    v33 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v33)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v65 = v63;
      v66 = v64[0];
      v67 = v64[1];
      sub_1D5D28654(&v65, &v63, sub_1D5F57EB8);
      v35 = *(&v63 + 1);
      if (*(&v63 + 1))
      {
        v36 = v63;
        v37 = sub_1D5C73AB0(v63, *(&v63 + 1));
        if (v38)
        {
          v60[0] = v37;
          v60[1] = v38;
          sub_1D5BF4D9C();
          v39 = sub_1D7263A0C();
          v41 = v40;

          v42 = sub_1D5FD24A4(1uLL, v36, v35);
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
          v51 = v50;

          *&v58[0] = v39;
          *(&v58[0] + 1) = v41;

          MEMORY[0x1DA6F9910](v49, v51);

          v35 = *(&v58[0] + 1);
          v36 = *&v58[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v64);
        sub_1D5D28654(&v65, &v63, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v58, v60);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1D7273AE0;
          *(v52 + 32) = v36;
          *(v52 + 40) = v35;
          v53 = v61;
          v54 = v62;
          __swift_project_boxed_opaque_existential_1(v60, v61);
          v55 = (*(v54 + 8))(v53, v54);
          *&v63 = v52;
          sub_1D6985160(v55);
          sub_1D5F57F4C(&v65, sub_1D5F57EB8);
          (*(v56 + 8))(v30, v57);
          v34 = v63;
          __swift_destroy_boxed_opaque_existential_1(v60);
        }

        else
        {
          v59 = 0;
          memset(v58, 0, sizeof(v58));
          sub_1D5BFB704(v58, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_1D7273AE0;
          *(v34 + 32) = v36;
          *(v34 + 40) = v35;
          sub_1D5F57F4C(&v65, sub_1D5F57EB8);
          (*(v56 + 8))(v30, v57);
        }

        goto LABEL_15;
      }

      sub_1D5F57F4C(&v65, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v64);
    }

    (*(v56 + 8))(v30, v57);
    v34 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v26 = v29;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4DAB8(uint64_t a1, __int16 a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = &type metadata for FormatBoolBinding;
  *&v54 = a1;
  WORD4(v54) = a2;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4E1C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  v16 = sub_1D7264AAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = &type metadata for FormatTagBinding.Image;
  v21 = swift_allocObject();
  *&v58 = v21;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  sub_1D5F58484(a1, a2);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v15, v11);
  if ((*(v23 + 88))(v11, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v11, v22);
LABEL_7:
    (*(v17 + 8))(v20, v16);
    goto LABEL_8;
  }

  v49 = v17;
  v50 = v16;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v20, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v15, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4E8E0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIWORD(a3);
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v49 - v15;
  v17 = sub_1D7264AAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = a4;
  *&v58 = a1;
  *(&v58 + 1) = a2;
  LOWORD(v59) = v5;
  BYTE2(v59) = v8;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v16, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v16, v12);
  if ((*(v23 + 88))(v12, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v12, v22);
LABEL_7:
    (*(v18 + 8))(v21, v17);
    goto LABEL_8;
  }

  v49 = v18;
  v50 = v17;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v21, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v21, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v21, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v16, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4EFC8(char a1)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  v10 = sub_1D7264AAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for FormatHeadlineBinding.DateTime;
  v53[0] = a1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v15 = sub_1D7264A7C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v9, v5);
  if ((*(v16 + 88))(v5, v15) != *MEMORY[0x1E69E75A8])
  {
    (*(v16 + 8))(v5, v15);
LABEL_7:
    (*(v11 + 8))(v14, v10);
    goto LABEL_8;
  }

  v43 = v11;
  v44 = v10;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v17 == result)
  {
    v19 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v19)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      sub_1D5D28654(v53, &v50, sub_1D5F57EB8);
      v21 = v51;
      if (v51)
      {
        v22 = v50;
        v23 = sub_1D5C73AB0(v50, v51);
        if (v24)
        {
          v47[0] = v23;
          v47[1] = v24;
          sub_1D5BF4D9C();
          v25 = sub_1D7263A0C();
          v27 = v26;

          v28 = sub_1D5FD24A4(1uLL, v22, v21);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v35 = MEMORY[0x1DA6F97E0](v28, v30, v32, v34);
          v37 = v36;

          *&v45[0] = v25;
          *(&v45[0] + 1) = v27;

          MEMORY[0x1DA6F9910](v35, v37);

          v21 = *(&v45[0] + 1);
          v22 = *&v45[0];
        }

        v38 = v43;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v50, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v45, v47);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_1D7273AE0;
          *(v39 + 32) = v22;
          *(v39 + 40) = v21;
          v40 = v48;
          v41 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v42 = (*(v41 + 8))(v40, v41);
          v50 = v39;
          sub_1D6985160(v42);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
          v20 = v50;
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        else
        {
          v46 = 0;
          memset(v45, 0, sizeof(v45));
          sub_1D5BFB704(v45, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D7273AE0;
          *(v20 + 32) = v22;
          *(v20 + 40) = v21;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v43 + 8))(v14, v44);
LABEL_8:
    v20 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v9, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4F670(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a6;
  v11 = result;
  if (a3)
  {
    if (a6)
    {
      v12 = sub_1D6365C30(result, a2, a4, a5);
      v6 = 1;
LABEL_6:
      sub_1D5F586D0(a4, a5, v6 & 1);
      sub_1D5F586D0(v11, a2, a3 & 1);
      sub_1D5F5870C(v11, a2, a3 & 1);
      sub_1D5F5870C(a4, a5, v6 & 1);
      return v12 & 1;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  if (a6)
  {
    goto LABEL_5;
  }

  v13 = *(result + 16);
  if (v13 != *(a4 + 16))
  {
    v6 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  if (!v13 || result == a4)
  {
    v6 = 0;
    v12 = 1;
    goto LABEL_6;
  }

  v14 = (result + 32);
  v15 = (a4 + 32);
  while (v13)
  {
    v17 = *v14++;
    v16 = v17;
    v18 = *v15++;
    v12 = v16 == v18;
    if (v16 != v18 || v13-- == 1)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4F798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      sub_1D5E04CC4(a4);
      sub_1D5D2F2C4(a1, a2, 0);
      sub_1D5D2F2C4(a4, a5, 0);
      v12 = a4 ^ a1 ^ 1;
      return v12 & 1;
    }

LABEL_9:
    sub_1D5E04CC4(a4);
    sub_1D5D2F2C4(a1, a2, a3 & 1);
    sub_1D5D2F2C4(a4, a5, a6 & 1);
    v12 = 0;
    return v12 & 1;
  }

  if ((a6 & 1) == 0)
  {
    sub_1D5E04CC4(a1);
    goto LABEL_9;
  }

  if (a1 == a4 && a2 == a5)
  {
    v12 = 1;
    sub_1D5E04CC4(a4);
    sub_1D5E04CC4(a4);
    sub_1D5D2F2C4(a4, a2, 1);
    sub_1D5D2F2C4(a4, a2, 1);
    return v12 & 1;
  }

  v14 = sub_1D72646CC();
  sub_1D5E04CC4(a4);
  sub_1D5E04CC4(a1);
  sub_1D5D2F2C4(a1, a2, 1);
  sub_1D5D2F2C4(a4, a5, 1);
  return v14 & 1;
}

uint64_t sub_1D5F4F928(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0xFF00) == 0xC00)
  {
    return (a4 & 0xFF00) == 0xC00;
  }

  if ((a4 & 0xFF00) == 0xC00)
  {
    return 0;
  }

  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 1) != 0 || *&a1 != *&a3)
  {
    return 0;
  }

  v5 = FormatFontScalingStyle.rawValue.getter();
  v7 = v6;
  if (v5 == FormatFontScalingStyle.rawValue.getter() && v7 == v8)
  {

    return 1;
  }

  v9 = sub_1D72646CC();

  return (v9 & 1) != 0;
}

uint64_t static FormatFont.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 61 == 2)
      {
        v19 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v20 = *(v19 + 56);
        v21 = *(v19 + 48);
        v22 = *(v19 + 40);
        v23 = *(v19 + 32);
        v24 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 40);
        v28 = *(v24 + 48);
        v29 = *(v24 + 56);
        v59 = *(v19 + 16);
        *&v60 = v23;
        *(&v60 + 1) = v22;
        *&v61[0] = v21;
        WORD4(v61[0]) = v20;
        v55 = v25;
        *&v56 = v26;
        *(&v56 + 1) = v27;
        *&v57[0] = v28;
        WORD4(v57[0]) = v29;

        v12 = _s8NewsFeed16FormatRemoteFontV2eeoiySbAC_ACtFZ_0(&v59, &v55);
        goto LABEL_11;
      }

LABEL_26:
      v18 = 0;
      return v18 & 1;
    }

    if (v4 == 3)
    {
      if (v3 >> 61 == 3)
      {
        v5 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v6 = *(v5 + 40);
        v7 = *(v5 + 32);
        v8 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v9 = *(v8 + 32);
        v10 = *(v8 + 40);
        v59 = *(v5 + 16);
        *&v60 = v7;
        BYTE8(v60) = v6;
        v55 = *(v8 + 16);
        *&v56 = v9;
        BYTE8(v56) = v10;

        v12 = _s8NewsFeed17FormatBindingFontO2eeoiySbAC_ACtFZ_0(&v59, &v55, v11);
LABEL_11:
        v18 = v12;

        return v18 & 1;
      }

      goto LABEL_26;
    }

    if (v3 >> 61 != 4)
    {
      goto LABEL_26;
    }

    v30 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    v31 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v32 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    v33 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v34 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);
    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 48);
    v59 = *(v30 + 16);
    *&v60 = v33;
    BYTE8(v60) = v32;
    *&v61[0] = v31;
    *&v55 = v35;
    *(&v55 + 1) = v36;
    *&v56 = v37;
    BYTE8(v56) = v38;
    *&v57[0] = v39;

    sub_1D5F58038(v35, v36, v37, v38);

    if ((_s8NewsFeed17FormatBindingFontO2eeoiySbAC_ACtFZ_0(&v59, &v55, v40) & 1) == 0)
    {
      sub_1D5F57FEC(v35, v36, v37, v38);

      goto LABEL_26;
    }

    v41 = static FormatFont.== infix(_:_:)(v61, v57);
    sub_1D5F57FEC(v35, v36, v37, v38);

    if ((v41 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    v18 = 1;
    return v18 & 1;
  }

  if (v4)
  {
    if (v3 >> 61 != 1)
    {
      goto LABEL_26;
    }

    v42 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    v43 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v44 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v45 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v46 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    v47 = *(v42 + 48);
    v48 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    v49 = *(v48 + 32);
    v50 = *(v48 + 40);
    v51 = *(v48 + 48);
    v52 = v43 == *(v48 + 16) && v44 == *(v48 + 24);
    if (!v52 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v45 != v49)
    {
      goto LABEL_26;
    }

    v53 = sub_1D5F4F928(v46, v47, v50, v51);

    if ((v53 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v3 >> 61)
  {
    goto LABEL_26;
  }

  v13 = *(v3 + 64);
  v57[0] = *(v3 + 48);
  v57[1] = v13;
  v58 = *(v3 + 80);
  v14 = *(v3 + 32);
  v55 = *(v3 + 16);
  v56 = v14;
  v15 = *(v2 + 64);
  v61[0] = *(v2 + 48);
  v61[1] = v15;
  v62 = *(v2 + 80);
  v16 = *(v2 + 32);
  v59 = *(v2 + 16);
  v60 = v16;

  v18 = _s8NewsFeed16FormatSystemFontV2eeoiySbAC_ACtFZ_0(&v59, &v55, v17);

  return v18 & 1;
}

uint64_t sub_1D5F4FDC4(void *a1)
{
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 <= 1)
  {
    if (!v5)
    {
      v11 = *(v4 + 48);
      v30[1] = *(v4 + 32);
      v30[2] = v11;
      v30[3] = *(v4 + 64);
      v31 = *(v4 + 80);
      v30[0] = *(v4 + 16);
      v12 = *(v4 + 64);
      v27 = *(v4 + 48);
      v28 = v12;
      v29 = *(v4 + 80);
      v13 = *(v4 + 32);
      v25 = *(v4 + 16);
      v26 = v13;
      sub_1D5D3F188(v30, v24);
      v14 = sub_1D7259EBC();
      v7 = sub_1D6BED6FC(v14);

      sub_1D5D41588(v30);
      return v7;
    }

    v21 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);

    v16 = sub_1D7259EBC();
    if ((v21 & 0xFF00) == 0xC00)
    {
      sub_1D5C14A38();
      v7 = sub_1D72633EC();
      goto LABEL_14;
    }

    sub_1D5C14A38();
    LOBYTE(v30[0]) = HIBYTE(v21);
    v22 = sub_1D6F8A788();
    v7 = sub_1D72633AC();
LABEL_17:

    return v7;
  }

  v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 == 2)
  {
    v15 = *(v6 + 56);

    v16 = sub_1D7259EBC();
    if ((v15 & 0xFF00) == 0xC00)
    {
      sub_1D5C14A38();
      v7 = sub_1D72633EC();

LABEL_14:

      return v7;
    }

    sub_1D5C14A38();
    LOBYTE(v30[0]) = HIBYTE(v15);
    v22 = sub_1D6F8A788();
    v7 = sub_1D72633AC();

    goto LABEL_17;
  }

  if (v5 == 3)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    sub_1D5F58038(v7, v8, v9, v10);
    sub_1D5F50718(a1, v7, v8, v9, v10, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options, sub_1D6B744A8, v30, sub_1D6B7DBB4);
    sub_1D5F57FEC(v7, v8, v9, v10);
    if (!v2)
    {
      *&v25 = *&v30[0];
      v7 = sub_1D5F4FDC4(a1);
    }
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    v19 = *(v6 + 32);
    v20 = *(v6 + 40);
    *&v30[0] = *(v6 + 48);
    sub_1D5F58038(v17, v18, v19, v20);
    swift_retain_n();
    v7 = sub_1D5F4FDC4(a1);
    sub_1D5F57FEC(v17, v18, v19, v20);
  }

  return v7;
}

uint64_t sub_1D5F5022C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v35 = a4;
  v48 = a3;
  v37 = a2;
  v34 = a6;
  v8 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for FormatOption();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      return sub_1D5F53540();
    }

    else
    {
      v33 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = a1[5];
      v43 = a1[4];
      v44 = v22;
      v45 = a1[6];
      v23 = a1[1];
      v39 = *a1;
      v40 = v23;
      v24 = a1[3];
      v41 = a1[2];
      v42 = v24;
      v25 = off_1F51B1B98[0];
      v26 = v48;

      v25(v37, v26, v15);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_1D5D28118(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v27 = v48;
        *v11 = v37;
        v11[1] = v27;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        sub_1D5D28654(v11, v28, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        return sub_1D5F57F4C(v11, type metadata accessor for FormatLayoutError);
      }

      else
      {
        v29 = v48;

        v30 = v33;
        sub_1D5D5E2D4(v15, v33, type metadata accessor for FormatOption);
        v31 = *(v30 + 16);
        v47[4] = v43;
        v47[5] = v44;
        v47[6] = v45;
        v47[0] = v39;
        v47[1] = v40;
        v47[2] = v41;
        v47[3] = v42;

        v32 = v36;
        sub_1D6B74D28(&v38, v47, v31);
        if (!v32)
        {

          v46[3] = v42;
          v46[4] = v43;
          v46[5] = v44;
          v46[6] = v45;
          v46[0] = v39;
          v46[1] = v40;
          v46[2] = v41;
          sub_1D6B7E138(v38, v37, v29, v35, v46, v34);
        }

        sub_1D5F57F4C(v30, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v20 = 0xD00000000000006ELL;
    v20[1] = 0x80000001D73C3790;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void sub_1D5F50718(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, void (*a8)(__int128 *__return_ptr, void *, uint64_t)@<X7>, uint64_t *a9@<X8>, void (*a10)(void, uint64_t, uint64_t, uint64_t, void *))
{
  v38 = a8;
  v39 = a7;
  v43 = a6;
  v40 = a4;
  v41 = a9;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  v37 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v37, v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for FormatOption();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F535EC(a1, v42, *(&v42 + 1), v40 & 0xFFFFFF, v43, v41);
    }

    else
    {
      v43 = a1;
      v30 = *(&v42 + 1);

      v31 = v42;
      FormatOptionCollection.subscript.getter(v42, v30, v18);
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {
        sub_1D5D28118(v18, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v14 = v31;
        v14[1] = v30;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        sub_1D5D28654(v14, v32, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5F57F4C(v14, type metadata accessor for FormatLayoutError);
      }

      else
      {
        v33 = v31;

        sub_1D5D5E2D4(v18, v23, type metadata accessor for FormatOption);
        v34 = *(v23 + 2);

        v35 = v43;
        v36 = v57;
        v38(&v49, v43, v34);
        if (!v36)
        {

          a10(v49, v33, v30, v40, v35);
        }

        sub_1D5F57F4C(v23, type metadata accessor for FormatOption);
      }
    }
  }

  else if (a5)
  {
    v29 = v57;
    sub_1D6B7C1C8(*(a1 + *v43), &v49);
    if (!v29)
    {
      v47[6] = v55;
      v48[0] = v56[0];
      *(v48 + 9) = *(v56 + 9);
      v47[2] = v51;
      v47[3] = v52;
      v47[4] = v53;
      v47[5] = v54;
      v47[0] = v49;
      v47[1] = v50;
      v44[6] = v55;
      *v45 = v56[0];
      *(&v45[1] + 1) = *(v56 + 9);
      v44[2] = v51;
      v44[3] = v52;
      v44[4] = v53;
      v44[5] = v54;
      *&v45[5] = v42;
      v46 = v40;
      v44[0] = v49;
      v44[1] = v50;
      sub_1D715C20C(v44, v41);
      sub_1D5ECF320(v47);
    }
  }

  else
  {
    v28 = v57;
    sub_1D6B7C374(*(a1 + *v43), v27);
    if (!v28)
    {
      v49 = v42;
      LOWORD(v50) = v40;
      BYTE2(v50) = BYTE2(v40);
      sub_1D70DC564(v27, v41);
      sub_1D5F57F4C(v27, type metadata accessor for FeedHeadline);
    }
  }
}

void sub_1D5F50C20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F53974(a2, a3, a4 & 0xFFFFFF, sub_1D5FB61AC, sub_1D5FB6008, sub_1D5FB5E2C, sub_1D5FB5A80, a6);
    }

    else
    {
      sub_1D6F6FFE8(a1, a2, a3, a4, a6);
    }
  }

  else if (a5)
  {
    sub_1D5FB5410();
    if (!v6)
    {
      v22[6] = v30;
      v23[0] = v31[0];
      *(v23 + 9) = *(v31 + 9);
      v22[2] = v26;
      v22[3] = v27;
      v22[4] = v28;
      v22[5] = v29;
      v22[0] = v24;
      v22[1] = v25;
      v17[6] = v30;
      v18[0] = v31[0];
      *(v18 + 9) = *(v31 + 9);
      v17[2] = v26;
      v17[3] = v27;
      v17[4] = v28;
      v17[5] = v29;
      v19 = a2;
      v20 = a3;
      v21 = a4;
      v17[0] = v24;
      v17[1] = v25;
      sub_1D715C20C(v17, a6);
      sub_1D5ECF320(v22);
    }
  }

  else
  {
    sub_1D5FB543C();
    if (!v6)
    {
      *&v24 = a2;
      *(&v24 + 1) = a3;
      LOWORD(v25) = a4;
      BYTE2(v25) = BYTE2(a4);
      sub_1D70DC564(v16, a6);
      sub_1D5F57F4C(v16, type metadata accessor for FeedHeadline);
    }
  }
}

void sub_1D5F50E54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v31 = a4;
  v33 = a2;
  v30 = a6;
  v9 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for FormatOption();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F53974(v33, a3, v31 & 0xFFFFFF, sub_1D5F55D7C, sub_1D5F55B34, sub_1D5F55870, sub_1D5F54F8C, v30);
    }

    else
    {
      v28 = off_1F513B088[0];
      type metadata accessor for FormatDecorationContext();

      v29 = a3;
      v28(v33, a3, v16);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_1D5D28118(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v23 = v29;
        *v12 = v33;
        v12[1] = v23;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        sub_1D5D28654(v12, v24, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5F57F4C(v12, type metadata accessor for FormatLayoutError);
      }

      else
      {
        v25 = v29;

        sub_1D5D5E2D4(v16, v21, type metadata accessor for FormatOption);
        v26 = *(v21 + 2);

        v27 = v32;
        sub_1D6B766A8(&v34, a1, v26);
        if (!v27)
        {

          sub_1D6B82C0C(v34, v33, v25, v31, a1, v30);
        }

        sub_1D5F57F4C(v21, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v22 = 0xD000000000000066;
    v22[1] = 0x80000001D73C3700;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1D5F512D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v32 = a4;
  v34 = a2;
  v31 = a6;
  v9 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for FormatOption();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      return sub_1D5F53CF4();
    }

    else
    {

      v30 = a1;
      v24 = v34;
      FormatOptionCollection.subscript.getter(v34, a3, v16);

      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_1D5D28118(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v12 = v24;
        v12[1] = a3;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        sub_1D5D28654(v12, v25, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        return sub_1D5F57F4C(v12, type metadata accessor for FormatLayoutError);
      }

      else
      {

        sub_1D5D5E2D4(v16, v21, type metadata accessor for FormatOption);
        v26 = *(v21 + 2);

        v27 = v30;
        v28 = v33;
        sub_1D6B76F28(&v35, v30, v26);
        if (!v28)
        {

          sub_1D6B83D5C(v35, v34, a3, v32, v27, v31);
        }

        sub_1D5F57F4C(v21, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v22 = 0xD000000000000048;
    v22[1] = 0x80000001D73C36B0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_1D5F516EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      return sub_1D5F53DA0();
    }

    else
    {
      *v11 = a2;
      v11[1] = a3;
      swift_storeEnumTagMultiPayload();
      sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      sub_1D5D28654(v11, v14, type metadata accessor for FormatLayoutError);
      swift_willThrow();

      return sub_1D5F57F4C(v11, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v12 = 0xD00000000000005DLL;
    v12[1] = 0x80000001D73C3880;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void *sub_1D5F518FC(__int128 *a1, unint64_t *a2)
{
  v2 = a1[1];
  v183 = *a1;
  v184 = v2;
  v185 = a1[2];
  v157 = *(a1 + 7);
  v186 = *(a1 + 6);
  v3 = a1[5];
  v177 = a1[4];
  v178 = v3;
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v182 = *(a1 + 18);
  v180 = v5;
  v181 = v6;
  v179 = v4;
  v7 = *a2;
  if ((~*a2 & 0xF000000000000007) == 0)
  {
    sub_1D5EF032C();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v11 + v10));
    v12 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v12 - 8) + 56))(v11 + v10, 0, 1, v12);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v11, &v163);
    swift_setDeallocating();
    sub_1D5F57F4C(v11 + v10, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(v8 + 56) = &type metadata for FormatInspectionGroup;
    *(v8 + 64) = &off_1F518B2C0;
    v13 = swift_allocObject();
    *(v8 + 32) = v13;
    v14 = v164;
    *(v13 + 16) = v163;
    *(v13 + 32) = v14;
    *(v13 + 48) = v165;
    v15 = sub_1D7073500(v8);
    swift_setDeallocating();
    sub_1D5BFB704(v8 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
    swift_deallocClassInstance();
    return v15;
  }

  v17 = v7 >> 61;
  if ((v7 >> 61) <= 1)
  {
    if (!v17)
    {
      v36 = *(v7 + 48);
      v159 = *(v7 + 32);
      v160 = v36;
      v161 = *(v7 + 64);
      v162 = *(v7 + 80);
      v158 = *(v7 + 16);
      sub_1D5EF032C();
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_1D7279970;
      sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8();
      v38 = *(*(v37 - 8) + 72);
      v144 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_1D727E3C0;
      v39 = v141 + v144;
      sub_1D5D3F188(&v158, &v163);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6D6574737953, 0xE600000000000000, (v141 + v144));
      v40 = type metadata accessor for FormatInspectionItem(0);
      v41 = *(*(v40 - 8) + 56);
      v41(v141 + v144, 0, 1, v40);
      v165 = v160;
      v166 = v161;
      LOWORD(v167) = v162;
      v163 = v158;
      v164 = v159;
      v42 = sub_1D6BED6FC(v157);
      v43 = [v42 fontName];

      v44 = sub_1D726207C();
      v46 = v45;

      sub_1D711F844(1701667150, 0xE400000000000000, v44, v46, (v141 + v144 + v38));
      v41(v141 + v144 + v38, 0, 1, v40);
      v137 = 2 * v38;
      sub_1D711A80C(1702521171, 0xE400000000000000, v158, 0, (v141 + v144 + 2 * v38));
      v41(v141 + v144 + 2 * v38, 0, 1, v40);
      v139 = 3 * v38;
      sub_1D7121B54(0x746867696557, 0xE600000000000000, SBYTE2(v159), (v141 + v144 + 3 * v38));
      v41(v141 + v144 + 3 * v38, 0, 1, v40);
      v47 = *(&v159 + 1);
      sub_1D5D3F188(&v158, &v163);
      sub_1D7121E48(0x737469617254, 0xE600000000000000, v47, (v141 + v144 + 4 * v38));
      v41(v141 + v144 + 4 * v38, 0, 1, v40);
      v48 = v159;
      v49 = (v159 & 0xFF00) == 3072;
      if ((v159 & 0xFF00) == 0xC00)
      {
        v50 = 12;
      }

      else
      {
        v50 = BYTE1(v159);
      }

      v51 = 5 * v38;
      if ((v159 & 0xFF00) == 0xC00)
      {
        v52 = 0;
      }

      else
      {
        v52 = *(&v158 + 1);
      }

      sub_1D7121930(0x656C797453, 0xE500000000000000, v50, (v39 + v51));
      v41(v39 + v51, 0, 1, v40);
      sub_1D711A80C(0x657A69532078614DLL, 0xE800000000000000, v52, (v49 | v48) & 1, (v39 + 6 * v38));
      v41(v39 + 6 * v38, 0, 1, v40);
      sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v141, v173);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v151 + 56) = &type metadata for FormatInspectionGroup;
      *(v151 + 64) = &off_1F518B2C0;
      v53 = swift_allocObject();
      *(v151 + 32) = v53;
      v54 = v173[1];
      *(v53 + 16) = v173[0];
      *(v53 + 32) = v54;
      *(v53 + 48) = v174;
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1D7274590;
      v56 = (v55 + v144);
      v57 = v160;
      v147 = v161;
      v58 = v162;
      v59 = (v162 & 0xFF00) == 1280;
      if ((v162 & 0xFF00) == 0x500)
      {
        v60 = 4;
      }

      else
      {
        v60 = HIBYTE(v162);
      }

      if ((v162 & 0xFF00) == 0x500)
      {
        v61 = 0;
      }

      else
      {
        v61 = *(&v161 + 1);
      }

      if ((v162 & 0xFF00) == 0x500)
      {
        v62 = 0;
      }

      else
      {
        v62 = *(&v160 + 1);
      }

      if ((v162 & 0xFF00) == 0x500)
      {
        v57 = 10;
      }

      v149 = v57;
      sub_1D7121E98(0x6E6769736544, 0xE600000000000000, v60, v56);
      v41(v56, 0, 1, v40);
      sub_1D7121EA4(0x6564617247, 0xE500000000000000, v61, (v59 | v58) & 1, &v56[v38]);
      v41(&v56[v38], 0, 1, v40);
      sub_1D711A80C(0x746E616C53, 0xE500000000000000, v62, (v59 | v147) & 1, &v56[v137]);
      v41(&v56[v137], 0, 1, v40);
      sub_1D7121EB8(0x6874646957, 0xE500000000000000, v149, &v56[v139]);
      v41(&v56[v139], 0, 1, v40);
      sub_1D6795150(0x74744120746E6F46, 0xEF73657475626972, 0, 0, v55, v175);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v151 + 96) = &type metadata for FormatInspectionGroup;
      *(v151 + 104) = &off_1F518B2C0;
      v63 = swift_allocObject();
      *(v151 + 72) = v63;
      v64 = v175[1];
      *(v63 + 16) = v175[0];
      *(v63 + 32) = v64;
      *(v63 + 48) = v176;
      v163 = v183;
      v164 = v184;
      v165 = v185;
      *&v166 = v186;
      *(&v166 + 1) = v157;
      v169 = v179;
      v170 = v180;
      v171 = v181;
      v172 = v182;
      v167 = v177;
      v168 = v178;
      v65 = sub_1D6BED6FC(v157);
      sub_1D5D41588(&v158);
      v66 = sub_1D5F57318(&v163, v65);

      *(v151 + 136) = &type metadata for FormatInspection;
      *(v151 + 144) = &off_1F51E3FD0;
      *(v151 + 112) = v66;
      v35 = sub_1D7073500(v151);
      swift_setDeallocating();
      sub_1D5F572B0(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      goto LABEL_26;
    }

    v108 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    v110 = *(v108 + 16);
    v109 = *(v108 + 24);
    v111 = *(v108 + 32);
    v156 = *(v108 + 40);
    v112 = *(v108 + 48);
    sub_1D5EF032C();
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_1D7270C10;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v115 = *(*(v114 - 8) + 72);
    v116 = (*(*(v114 - 8) + 80) + 32) & ~*(*(v114 - 8) + 80);
    v140 = 4 * v115;
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_1D7279960;
    v118 = v117 + v116;

    sub_1D711F844(1701869908, 0xE400000000000000, 0x6D6F74737543, 0xE600000000000000, (v117 + v116));
    v119 = type metadata accessor for FormatInspectionItem(0);
    v120 = *(*(v119 - 8) + 56);
    v120(v117 + v116, 0, 1, v119);

    sub_1D711F844(1701667150, 0xE400000000000000, v110, v109, (v117 + v116 + v115));
    v120(v117 + v116 + v115, 0, 1, v119);
    sub_1D711A80C(1702521171, 0xE400000000000000, v111, 0, (v117 + v116 + 2 * v115));
    v120(v117 + v116 + 2 * v115, 0, 1, v119);
    if ((v112 & 0xFF00) == 0xC00)
    {
      v121 = 12;
    }

    else
    {
      v121 = HIBYTE(v112);
    }

    v122 = 3 * v115;
    if ((v112 & 0xFF00) == 0xC00)
    {
      v123 = 0;
    }

    else
    {
      v123 = v156;
    }

    sub_1D7121930(0x656C797453, 0xE500000000000000, v121, (v118 + v122));
    v120(v118 + v122, 0, 1, v119);
    sub_1D711A80C(0x657A69532078614DLL, 0xE800000000000000, v123, ((v112 & 0xFF00) == 3072) | v112 & 1, (v118 + v140));
    v120(v118 + v140, 0, 1, v119);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v117, &v158);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v146 + 56) = &type metadata for FormatInspectionGroup;
    *(v146 + 64) = &off_1F518B2C0;
    v124 = swift_allocObject();
    *(v124 + 48) = v160;
    *(v146 + 32) = v124;
    v125 = v159;
    *(v124 + 16) = v158;
    *(v124 + 32) = v125;
    v126 = a1[1];
    v163 = *a1;
    v164 = v126;
    v165 = a1[2];
    *&v166 = *(a1 + 6);
    *(&v166 + 1) = v157;
    v127 = a1[7];
    v169 = a1[6];
    v170 = v127;
    v171 = a1[8];
    v172 = *(a1 + 18);
    v128 = a1[5];
    v167 = a1[4];
    v168 = v128;
    sub_1D5C14A38();
    if ((v112 & 0xFF00) == 0xC00)
    {
      v129 = sub_1D72633EC();
    }

    else
    {
      v131 = sub_1D6F8A788();
      v129 = sub_1D72633AC();
    }

    v134 = sub_1D5F57318(&v163, v129);

    *(v146 + 96) = &type metadata for FormatInspection;
    *(v146 + 104) = &off_1F51E3FD0;
    *(v146 + 72) = v134;
    v133 = sub_1D7073500(v146);
    swift_setDeallocating();
    sub_1D5F572B0(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v133;
  }

  v18 = v7 & 0x1FFFFFFFFFFFFFFFLL;
  if (v17 == 2)
  {
    v67 = *(v18 + 24);
    v68 = *(v18 + 40);
    v152 = *(v18 + 48);
    v155 = *(v18 + 16);
    v69 = *(v18 + 56);
    sub_1D5EF032C();
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_1D7270C10;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v72 = *(*(v71 - 8) + 72);
    v73 = (*(*(v71 - 8) + 80) + 32) & ~*(*(v71 - 8) + 80);
    v138 = 4 * v72;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1D7279960;
    v75 = v74 + v73;

    sub_1D711F844(1701869908, 0xE400000000000000, 0x65746F6D6552, 0xE600000000000000, (v74 + v73));
    v76 = type metadata accessor for FormatInspectionItem(0);
    v77 = *(*(v76 - 8) + 56);
    v77(v74 + v73, 0, 1, v76);

    sub_1D711F844(1701667150, 0xE400000000000000, v155, v67, (v74 + v73 + v72));
    v77(v74 + v73 + v72, 0, 1, v76);
    sub_1D711A80C(1702521171, 0xE400000000000000, v68, 0, (v74 + v73 + 2 * v72));
    v77(v74 + v73 + 2 * v72, 0, 1, v76);
    if ((v69 & 0xFF00) == 0xC00)
    {
      v78 = 12;
    }

    else
    {
      v78 = HIBYTE(v69);
    }

    v79 = 3 * v72;
    if ((v69 & 0xFF00) == 0xC00)
    {
      v80 = 0;
    }

    else
    {
      v80 = v152;
    }

    sub_1D7121930(0x656C797453, 0xE500000000000000, v78, (v75 + v79));
    v77(v75 + v79, 0, 1, v76);
    sub_1D711A80C(0x657A69532078614DLL, 0xE800000000000000, v80, ((v69 & 0xFF00) == 3072) | v69 & 1, (v75 + v138));
    v77(v75 + v138, 0, 1, v76);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v74, &v158);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v142 + 56) = &type metadata for FormatInspectionGroup;
    *(v142 + 64) = &off_1F518B2C0;
    v81 = swift_allocObject();
    *(v81 + 48) = v160;
    *(v142 + 32) = v81;
    v82 = v159;
    *(v81 + 16) = v158;
    *(v81 + 32) = v82;
    v83 = a1[1];
    v163 = *a1;
    v164 = v83;
    v165 = a1[2];
    *&v166 = *(a1 + 6);
    *(&v166 + 1) = v157;
    v84 = a1[7];
    v169 = a1[6];
    v170 = v84;
    v171 = a1[8];
    v172 = *(a1 + 18);
    v85 = a1[5];
    v167 = a1[4];
    v168 = v85;
    sub_1D5C14A38();
    if ((v69 & 0xFF00) == 0xC00)
    {
      v86 = sub_1D72633EC();
    }

    else
    {
      v130 = sub_1D6F8A788();
      v86 = sub_1D72633AC();
    }

    v132 = sub_1D5F57318(&v163, v86);

    *(v142 + 96) = &type metadata for FormatInspection;
    *(v142 + 104) = &off_1F51E3FD0;
    *(v142 + 72) = v132;
    v133 = sub_1D7073500(v142);
    swift_setDeallocating();
    sub_1D5F572B0(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return v133;
  }

  if (v17 == 3)
  {
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 32);
    v22 = *(v18 + 40);
    sub_1D5EF032C();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v154 = *(*(v24 - 8) + 72);
    v25 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7270C10;
    v27 = v26 + v25;
    sub_1D5F58038(v19, v20, v21, v22);
    sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, (v26 + v25));
    v28 = type metadata accessor for FormatInspectionItem(0);
    v150 = *(*(v28 - 8) + 56);
    v150(v26 + v25, 0, 1, v28);
    v29 = sub_1D5F4D388(v19, v20, v21, v22, &type metadata for FormatBindingFont, &unk_1F5125490);
    sub_1D5F57FEC(v19, v20, v21, v22);
    *&v163 = v29;
    sub_1D5B581A0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v30 = sub_1D7261F3C();
    v32 = v31;

    sub_1D711F844(1752457552, 0xE400000000000000, v30, v32, (v27 + v154));
    v150(v27 + v154, 0, 1, v28);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v26, &v163);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v23 + 56) = &type metadata for FormatInspectionGroup;
    *(v23 + 64) = &off_1F518B2C0;
    v33 = swift_allocObject();
    *(v23 + 32) = v33;
    v34 = v164;
    *(v33 + 16) = v163;
    *(v33 + 32) = v34;
    *(v33 + 48) = v165;
    v35 = sub_1D7073500(v23);
    swift_setDeallocating();
    sub_1D5BFB704(v23 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
LABEL_26:
    swift_deallocClassInstance();
    return v35;
  }

  v87 = *(v18 + 16);
  v88 = *(v18 + 24);
  v89 = *(v18 + 32);
  v136 = *(v18 + 48);
  v90 = *(v18 + 40);
  sub_1D5EF032C();
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1D7273AE0;
  sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8();
  v143 = *(*(v92 - 8) + 72);
  v93 = (*(*(v92 - 8) + 80) + 32) & ~*(*(v92 - 8) + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_1D7270C10;
  v95 = (v94 + v93);
  v96 = v87;
  v153 = v87;
  v145 = v89;
  v148 = v90;
  sub_1D5F58038(v87, v88, v89, v90);

  sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, v95);
  v97 = type metadata accessor for FormatInspectionItem(0);
  v98 = *(*(v97 - 8) + 56);
  v98(v95, 0, 1, v97);
  sub_1D5F4D388(v96, v88, v89, v90, &type metadata for FormatBindingFont, &unk_1F5125490);
  sub_1D5B581A0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v99 = sub_1D7261F3C();
  v135 = v100;

  sub_1D5F572B0(0, &qword_1EC8803C0, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6F90]);
  v101 = swift_allocObject();
  *(v101 + 16) = xmmword_1D7273AE0;
  v163 = v183;
  v164 = v184;
  v165 = v185;
  *&v166 = v186;
  *(&v166 + 1) = v157;
  v169 = v179;
  v170 = v180;
  v171 = v181;
  v172 = v182;
  v167 = v177;
  v168 = v178;
  *&v158 = v136;

  v102 = sub_1D5F518FC(&v163, &v158);
  sub_1D5C8500C(v136);
  *(v101 + 56) = &type metadata for FormatInspection;
  *(v101 + 64) = &off_1F51E3FD0;
  *(v101 + 32) = v102;
  v103 = sub_1D5F62BFC(v101);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v101 + 32);
  swift_deallocClassInstance();
  v104 = sub_1D7073500(v103);

  sub_1D711AD20(0x676E69646E6942, 0xE700000000000000, v104, v99, v135, v95 + v143);
  v98((v95 + v143), 0, 1, v97);
  sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v94, &v163);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v91 + 56) = &type metadata for FormatInspectionGroup;
  *(v91 + 64) = &off_1F518B2C0;
  v105 = swift_allocObject();
  *(v91 + 32) = v105;
  v106 = v164;
  *(v105 + 16) = v163;
  *(v105 + 32) = v106;
  *(v105 + 48) = v165;
  v107 = sub_1D7073500(v91);
  swift_setDeallocating();
  sub_1D5BFB704(v91 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  swift_deallocClassInstance();
  sub_1D5F57FEC(v153, v88, v145, v148);

  return v107;
}

uint64_t sub_1D5F5343C(uint64_t a1, uint64_t a2)
{
  sub_1D5D28654(a1, &v16, sub_1D5E29ACC);
  v3 = v16;
  v4 = sub_1D726207C();
  v6 = v5;

  sub_1D5D28654(a2, &v14, sub_1D5E29ACC);
  v7 = v14;
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  __swift_destroy_boxed_opaque_existential_1(&v15);
  __swift_destroy_boxed_opaque_existential_1(&v17);
  return v12 & 1;
}

uint64_t sub_1D5F53540()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D5F535EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a4 >> 21) & 7;
  if (v17 <= 1)
  {
    if (v17)
    {
      sub_1D6750B04(*(a1 + *a5 + 8), &v30);
      if (!v6)
      {
        v22 = v30;
        *&v30 = a2;
        *(&v30 + 1) = a3;
        LOWORD(v31) = a4;
        BYTE2(v31) = BYTE2(a4) & 0x1F;
        sub_1D5EA5DE0(v22, a6);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1D6752174(*(a1 + *a5 + 8), v16);
      if (!v6)
      {
        *&v30 = a2;
        *(&v30 + 1) = a3;
        LOWORD(v31) = a4;
        BYTE2(v31) = BYTE2(a4);
        sub_1D70DC564(v16, a6);
        sub_1D5F57F4C(v16, type metadata accessor for FeedHeadline);
      }
    }
  }

  else if (v17 == 2)
  {
    sub_1D6751EC0(*(a1 + *a5 + 8), &v30);
    if (!v6)
    {
      v28[6] = v36;
      v29[0] = v37[0];
      *(v29 + 9) = *(v37 + 9);
      v28[2] = v32;
      v28[3] = v33;
      v28[4] = v34;
      v28[5] = v35;
      v28[0] = v30;
      v28[1] = v31;
      v23[6] = v36;
      v24[0] = v37[0];
      *(v24 + 9) = *(v37 + 9);
      v23[2] = v32;
      v23[3] = v33;
      v23[4] = v34;
      v23[5] = v35;
      v25 = a2;
      v26 = a3;
      v27 = a4;
      v23[0] = v30;
      v23[1] = v31;
      sub_1D715C20C(v23, a6);
      sub_1D5ECF320(v28);
    }
  }

  else if (v17 == 3)
  {
    sub_1D67505CC(*(a1 + *a5 + 8), &v30);
    if (!v6)
    {
      v18 = v30;
      *&v30 = a2;
      *(&v30 + 1) = a3;
      LOWORD(v31) = a4;
      BYTE2(v31) = BYTE2(a4) & 0x1F;
      v19 = FCFeedDescriptor.feedTag.getter();
      sub_1D5EA5DE0(v19, a6);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D67505CC(*(a1 + *a5 + 8), &v30);
    if (!v6)
    {
      v20 = v30;
      v21 = [objc_msgSend(v30 backingTag)];
      swift_unknownObjectRelease();
      if (v21)
      {
        *&v30 = a2;
        *(&v30 + 1) = a3;
        LOWORD(v31) = a4;
        BYTE2(v31) = BYTE2(a4) & 0x1F;
        sub_1D5EA5DE0(v21, a6);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }
}

void sub_1D5F53974(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int a3@<W3>, void (*a4)(__n128)@<X4>, void (*a5)(__int128 *__return_ptr, __n128)@<X5>, void (*a6)(__int128 *__return_ptr, __n128)@<X6>, void (*a7)(__int128 *__return_ptr, __n128)@<X7>, uint64_t *a8@<X8>)
{
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v39 = a8;
  v14 = type metadata accessor for FeedHeadline(0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (a3 >> 21) & 7;
  if (v19 <= 1)
  {
    if (v19)
    {
      a5(&v31, v16);
      if (!v8)
      {
        v24 = v31;
        v31 = v25;
        LOWORD(v32) = a3;
        BYTE2(v32) = BYTE2(a3) & 0x1F;
        sub_1D5EA5DE0(v24, v39);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      a4(v16);
      if (!v8)
      {
        v31 = v25;
        LOWORD(v32) = a3;
        BYTE2(v32) = BYTE2(a3);
        sub_1D70DC564(v18, v39);
        sub_1D5F57F4C(v18, type metadata accessor for FeedHeadline);
      }
    }
  }

  else if (v19 == 2)
  {
    a6(&v31, v16);
    if (!v8)
    {
      v29[6] = v37;
      v30[0] = v38[0];
      *(v30 + 9) = *(v38 + 9);
      v29[2] = v33;
      v29[3] = v34;
      v29[4] = v35;
      v29[5] = v36;
      v29[0] = v31;
      v29[1] = v32;
      v26[6] = v37;
      *v27 = v38[0];
      *(&v27[1] + 1) = *(v38 + 9);
      v26[2] = v33;
      v26[3] = v34;
      v26[4] = v35;
      v26[5] = v36;
      *&v27[5] = v25;
      v28 = a3;
      v26[0] = v31;
      v26[1] = v32;
      sub_1D715C20C(v26, v39);
      sub_1D5ECF320(v29);
    }
  }

  else if (v19 == 3)
  {
    a7(&v31, v16);
    if (!v8)
    {
      v20 = v31;
      v31 = v25;
      LOWORD(v32) = a3;
      BYTE2(v32) = BYTE2(a3) & 0x1F;
      v21 = FCFeedDescriptor.feedTag.getter();
      sub_1D5EA5DE0(v21, v39);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    a7(&v31, v16);
    if (!v8)
    {
      v22 = v31;
      v23 = [objc_msgSend(v31 backingTag)];
      swift_unknownObjectRelease();
      if (v23)
      {
        v31 = v25;
        LOWORD(v32) = a3;
        BYTE2(v32) = BYTE2(a3) & 0x1F;
        sub_1D5EA5DE0(v23, v39);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for FormatLayoutError();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1D5F53CF4()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v0 = 0xD000000000000048;
  v0[1] = 0x80000001D73C36B0;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D5F53DA0()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v0 = 0xD00000000000005DLL;
  v0[1] = 0x80000001D73C3880;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D5F53E4C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v20 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x6963655264656546, 0xEA00000000006570), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, v7);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    *v14 = 0x6963655264656546;
    *(v14 + 8) = 0xEA00000000006570;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v20);
  sub_1D5B63F14(v20, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B49474(0, qword_1EDF431A0);
  v10 = type metadata accessor for FeedRecipe();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedRecipe);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    sub_1D5F58758();
    swift_allocError();
    v19 = v18;
    *v18 = 0x6963655264656546;
    v18[1] = 0xEA00000000006570;
    sub_1D5B68374(v21, (v18 + 2));
    *(v19 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D5F54198@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v21 - v5;
  v7 = 0x80000001D73C3770;
  v8 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v8 + 16) || (v9 = sub_1D5B69D90(0xD000000000000013, 0x80000001D73C3770), (v10 & 1) == 0))
  {
    sub_1D5F58758();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(v8 + 16);
    if (v16)
    {
      v22 = 0x80000001D73C3770;
      v24[6] = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC(v24, v17 + 4, v16, v8);

      result = sub_1D5B87E38();
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v7 = v22;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0xD000000000000013;
    *(v15 + 8) = v7;
    *(v15 + 16) = v17;
    *(v15 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v8 + 56) + 40 * v9, v23);
  sub_1D5B63F14(v23, v24);
  sub_1D5B68374(v24, v23);
  sub_1D5B49474(0, qword_1EDF431A0);
  v11 = type metadata accessor for FeedPuzzleStatistic();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedPuzzleStatistic);
  }

  else
  {
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_1D5D28118(v6, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    *v19 = 0xD000000000000013;
    v19[1] = 0x80000001D73C3770;
    sub_1D5B68374(v24, (v19 + 2));
    *(v20 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }
}

uint64_t sub_1D5F544DC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7A7A755064656546, 0xEE0065707954656CLL), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v9 = swift_allocError();
    v11 = v10;
    v12 = *(v3 + 16);
    if (v12)
    {
      v24 = v9;
      v13 = sub_1D5B9A6D8(v12, 0);
      v14 = sub_1D5E2A8BC(&v18, v13 + 4, v12, v3);

      result = sub_1D5B87E38();
      if (v14 != v12)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v11, "FeedPuzzleType");
    *(v11 + 15) = -18;
    *(v11 + 16) = v13;
    *(v11 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v18);
  sub_1D5B63F14(&v18, v23);
  sub_1D5B68374(v23, v22);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    v7 = v19;
    *a1 = v18;
    a1[1] = v7;
    v8 = v21;
    a1[2] = v20;
    a1[3] = v8;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    memset(v17, 0, sizeof(v17));
    sub_1D5F587EC(v17, &unk_1EDF154F0, &type metadata for FeedPuzzleType);
    sub_1D5F58758();
    swift_allocError();
    v16 = v15;
    strcpy(v15, "FeedPuzzleType");
    v15[15] = -18;
    sub_1D5B68374(v23, (v15 + 16));
    v16[56] = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_1D5F54740@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7A7A755064656546, 0xEA0000000000656CLL), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(v3 + 16);
    if (v16)
    {
      v36 = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC(&v21, v17 + 4, v16, v3);

      result = sub_1D5B87E38();
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0x7A7A755064656546;
    *(v15 + 8) = 0xEA0000000000656CLL;
    *(v15 + 16) = v17;
    *(v15 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v21);
  sub_1D5B63F14(&v21, v35);
  sub_1D5B68374(v35, v34);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v7 = v32;
    a1[10] = v31;
    a1[11] = v7;
    a1[12] = v33;
    v8 = v28;
    a1[6] = v27;
    a1[7] = v8;
    v9 = v30;
    a1[8] = v29;
    a1[9] = v9;
    v10 = v24;
    a1[2] = v23;
    a1[3] = v10;
    v11 = v26;
    a1[4] = v25;
    a1[5] = v11;
    v12 = v22;
    *a1 = v21;
    a1[1] = v12;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    sub_1D5F587EC(&v21, &qword_1EDF12E30, &type metadata for FeedPuzzle);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    *v19 = 0x7A7A755064656546;
    v19[1] = 0xEA0000000000656CLL;
    sub_1D5B68374(v35, (v19 + 2));
    *(v20 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  return result;
}

uint64_t sub_1D5F549CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x726F705364656546, 0xEF746E6576457374), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v7 = swift_allocError();
    v9 = v8;
    v10 = *(v3 + 16);
    if (v10)
    {
      v20[6] = v7;
      v11 = sub_1D5B9A6D8(v10, 0);
      v12 = sub_1D5E2A8BC(v20, v11 + 4, v10, v3);

      result = sub_1D5B87E38();
      if (v12 != v10)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    *v9 = 0x726F705364656546;
    *(v9 + 8) = 0xEF746E6576457374;
    *(v9 + 16) = v11;
    *(v9 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, v19);
  sub_1D5B63F14(v19, v20);
  sub_1D5B68374(v20, v19);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18 & 1;
  }

  else
  {
    sub_1D5F5885C(0, 0);
    sub_1D5F58758();
    swift_allocError();
    v14 = v13;
    *v13 = 0x726F705364656546;
    v13[1] = 0xEF746E6576457374;
    sub_1D5B68374(v20, (v13 + 2));
    *(v14 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

uint64_t sub_1D5F54C3C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v20 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x4562655764656546, 0xEC0000006465626DLL), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, v7);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v14, "FeedWebEmbed");
    *(v14 + 13) = 0;
    *(v14 + 14) = -5120;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v20);
  sub_1D5B63F14(v20, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B49474(0, qword_1EDF431A0);
  v10 = type metadata accessor for FeedWebEmbed();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedWebEmbed);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
    sub_1D5F58758();
    swift_allocError();
    v19 = v18;
    strcpy(v18, "FeedWebEmbed");
    *(v18 + 13) = 0;
    *(v18 + 14) = -5120;
    sub_1D5B68374(v21, v18 + 16);
    *(v19 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D5F54F8C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    swift_allocError();
    v8 = v7;
    v9 = *(v3 + 16);
    if (v9)
    {
      v10 = sub_1D5B9A6D8(v9, 0);
      v11 = sub_1D5E2A8BC(v15, v10 + 4, v9, v3);

      result = sub_1D5B87E38();
      if (v11 != v9)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v8, "FeedDescriptor");
    *(v8 + 15) = -18;
    *(v8 + 16) = v10;
    *(v8 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, v14);
  sub_1D5B63F14(v14, v15);
  sub_1D5B68374(v15, v14);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a1 = v15[6];
  }

  else
  {
    sub_1D5F58758();
    swift_allocError();
    v13 = v12;
    strcpy(v12, "FeedDescriptor");
    v12[15] = -18;
    sub_1D5B68374(v15, (v12 + 16));
    v13[56] = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t sub_1D5F551BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v14 = swift_allocError();
    v16 = v15;
    v17 = *(v3 + 16);
    if (v17)
    {
      v58 = v14;
      v18 = sub_1D5B9A6D8(v17, 0);
      v19 = sub_1D5E2A8BC(&v40, v18 + 4, v17, v3);

      result = sub_1D5B87E38();
      if (v19 != v17)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    *v16 = 0x7779615064656546;
    *(v16 + 8) = 0xEB000000006C6C61;
    *(v16 + 16) = v18;
    *(v16 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v40);
  sub_1D5B63F14(&v40, v57);
  sub_1D5B68374(v57, v56);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
    result = nullsub_1();
    v7 = v53;
    *(a1 + 192) = v52;
    *(a1 + 208) = v7;
    *(a1 + 224) = v54;
    *(a1 + 240) = v55;
    v8 = v49;
    *(a1 + 128) = v48;
    *(a1 + 144) = v8;
    v9 = v51;
    *(a1 + 160) = v50;
    *(a1 + 176) = v9;
    v10 = v45;
    *(a1 + 64) = v44;
    *(a1 + 80) = v10;
    v11 = v47;
    *(a1 + 96) = v46;
    *(a1 + 112) = v11;
    v12 = v41;
    *a1 = v40;
    *(a1 + 16) = v12;
    v13 = v43;
    *(a1 + 32) = v42;
    *(a1 + 48) = v13;
  }

  else
  {
    sub_1D5F588A0(&v22);
    v52 = v34;
    v53 = v35;
    v54 = v36;
    v48 = v30;
    v49 = v31;
    v50 = v32;
    v51 = v33;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v47 = v29;
    v40 = v22;
    v41 = v23;
    v42 = v24;
    v43 = v25;
    v38[12] = v34;
    v38[13] = v35;
    v38[14] = v36;
    v38[8] = v30;
    v38[9] = v31;
    v38[10] = v32;
    v38[11] = v33;
    v38[4] = v26;
    v38[5] = v27;
    v38[6] = v28;
    v38[7] = v29;
    v38[0] = v22;
    v38[1] = v23;
    v55 = v37;
    v39 = v37;
    v38[2] = v24;
    v38[3] = v25;
    sub_1D5F587EC(v38, qword_1EDF34BC0, &type metadata for FeedPaywall);
    sub_1D5F58758();
    swift_allocError();
    v21 = v20;
    *v20 = 0x7779615064656546;
    v20[1] = 0xEB000000006C6C61;
    sub_1D5B68374(v57, (v20 + 2));
    *(v21 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  return result;
}

uint64_t sub_1D5F55520@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF12C58, type metadata accessor for FeedWeather, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v20 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x7461655764656546, 0xEB00000000726568), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, v7);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    *v14 = 0x7461655764656546;
    *(v14 + 8) = 0xEB00000000726568;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v20);
  sub_1D5B63F14(v20, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B49474(0, qword_1EDF431A0);
  v10 = type metadata accessor for FeedWeather(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedWeather);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF12C58, type metadata accessor for FeedWeather);
    sub_1D5F58758();
    swift_allocError();
    v19 = v18;
    *v18 = 0x7461655764656546;
    v18[1] = 0xEB00000000726568;
    sub_1D5B68374(v21, (v18 + 2));
    *(v19 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D5F55870@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v11 = swift_allocError();
    v13 = v12;
    v14 = *(v3 + 16);
    if (v14)
    {
      v39 = v11;
      v15 = sub_1D5B9A6D8(v14, 0);
      v16 = sub_1D5E2A8BC(&v29, v15 + 4, v14, v3);

      result = sub_1D5B87E38();
      if (v16 != v14)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    *v13 = 0x7573734964656546;
    *(v13 + 8) = 0xE900000000000065;
    *(v13 + 16) = v15;
    *(v13 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v29);
  sub_1D5B63F14(&v29, v38);
  sub_1D5B68374(v38, v37);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    result = nullsub_1();
    v7 = v36[0];
    a1[6] = v35;
    a1[7] = v7;
    *(a1 + 121) = *(v36 + 9);
    v8 = v32;
    a1[2] = v31;
    a1[3] = v8;
    v9 = v34;
    a1[4] = v33;
    a1[5] = v9;
    v10 = v30;
    *a1 = v29;
    a1[1] = v10;
  }

  else
  {
    sub_1D5D62850(&v19);
    v35 = v25;
    v36[0] = v26[0];
    *(v36 + 9) = *(v26 + 9);
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v29 = v19;
    v30 = v20;
    v27[6] = v25;
    v28[0] = v26[0];
    *(v28 + 9) = *(v26 + 9);
    v27[2] = v21;
    v27[3] = v22;
    v27[4] = v23;
    v27[5] = v24;
    v27[0] = v19;
    v27[1] = v20;
    sub_1D5F587EC(v27, &qword_1EDF34E30, &type metadata for FeedIssue);
    sub_1D5F58758();
    swift_allocError();
    v18 = v17;
    *v17 = 0x7573734964656546;
    v17[1] = 0xE900000000000065;
    sub_1D5B68374(v38, (v17 + 2));
    *(v18 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return result;
}

uint64_t sub_1D5F55B34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v7 = swift_allocError();
    v9 = v8;
    v10 = *(v3 + 16);
    if (v10)
    {
      v19[6] = v7;
      v11 = sub_1D5B9A6D8(v10, 0);
      v12 = sub_1D5E2A8BC(v19, v11 + 4, v10, v3);

      result = sub_1D5B87E38();
      if (v12 != v10)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v9, "FeedGroupTag");
    *(v9 + 13) = 0;
    *(v9 + 14) = -5120;
    *(v9 + 16) = v11;
    *(v9 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, v18);
  sub_1D5B63F14(v18, v19);
  sub_1D5B68374(v19, v18);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
  }

  else
  {
    sub_1D5F587AC(0, 0);
    sub_1D5F58758();
    swift_allocError();
    v14 = v13;
    strcpy(v13, "FeedGroupTag");
    *(v13 + 13) = 0;
    *(v13 + 14) = -5120;
    sub_1D5B68374(v19, v13 + 16);
    *(v14 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

uint64_t sub_1D5F55D7C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v20 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext() + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x6461654864656546, 0xEC000000656E696CLL), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v21[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC(v21, v16 + 4, v15, v7);

      result = sub_1D5B87E38();
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v14, "FeedHeadline");
    *(v14 + 13) = 0;
    *(v14 + 14) = -5120;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v20);
  sub_1D5B63F14(v20, v21);
  sub_1D5B68374(v21, v20);
  sub_1D5B49474(0, qword_1EDF431A0);
  v10 = type metadata accessor for FeedHeadline(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedHeadline);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF42030, type metadata accessor for FeedHeadline);
    sub_1D5F58758();
    swift_allocError();
    v19 = v18;
    strcpy(v18, "FeedHeadline");
    *(v18 + 13) = 0;
    *(v18 + 14) = -5120;
    sub_1D5B68374(v21, v18 + 16);
    *(v19 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }
}

uint64_t sub_1D5F560CC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFC84(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D5F56138(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D5F56138(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D726449C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5E29ACC();
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D5F56458(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D5F56234(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D5F56234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v32 = a3;
    v24 = v6;
    v25 = v5;
    while (1)
    {
      sub_1D5D28654(v5, v31, sub_1D5E29ACC);
      v7 = v5 - 40;
      sub_1D5D28654(v5 - 40, v30, sub_1D5E29ACC);
      sub_1D5D28654(v31, &v28, sub_1D5E29ACC);
      v8 = v28;
      v9 = sub_1D726207C();
      v11 = v10;

      sub_1D5D28654(v30, &v26, sub_1D5E29ACC);
      v12 = v26;
      v13 = sub_1D726207C();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {

        __swift_destroy_boxed_opaque_existential_1(v27);
        __swift_destroy_boxed_opaque_existential_1(v29);
        sub_1D5F57F4C(v30, sub_1D5E29ACC);
        result = sub_1D5F57F4C(v31, sub_1D5E29ACC);
LABEL_5:
        a3 = v32 + 1;
        v5 = v25 + 40;
        v6 = v24 - 1;
        if (v32 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = sub_1D72646CC();

      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1D5F57F4C(v30, sub_1D5E29ACC);
      result = sub_1D5F57F4C(v31, sub_1D5E29ACC);
      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v18 = *(v5 + 32);
      v20 = *v5;
      v19 = *(v5 + 16);
      v21 = *(v5 - 24);
      *v5 = *v7;
      *(v5 + 16) = v21;
      *(v5 + 32) = *(v5 - 8);
      *v7 = v20;
      *(v5 - 24) = v19;
      v5 -= 40;
      *(v7 + 32) = v18;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5F56458(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v115 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v6 = *v115;
    if (!*v115)
    {
      goto LABEL_144;
    }

    v4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_138:
      result = sub_1D62FF50C(v4);
    }

    v129 = result;
    v103 = *(result + 16);
    if (v103 >= 2)
    {
      v4 = 40;
      while (1)
      {
        v104 = *v8;
        if (!*v8)
        {
          goto LABEL_142;
        }

        v8 = (v103 - 1);
        v105 = *(result + 16 * v103);
        v106 = result;
        v107 = *(result + 16 * (v103 - 1) + 40);
        sub_1D5F56D7C((v104 + 40 * v105), (v104 + 40 * *(result + 16 * (v103 - 1) + 32)), v104 + 40 * v107, v6);
        if (v7)
        {
        }

        if (v107 < v105)
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1D62FF50C(v106);
        }

        if (v103 - 2 >= *(v106 + 2))
        {
          goto LABEL_132;
        }

        v108 = &v106[16 * v103];
        *v108 = v105;
        *(v108 + 1) = v107;
        v129 = v106;
        sub_1D62FF480(v8);
        result = v129;
        v103 = *(v129 + 16);
        v8 = a3;
        if (v103 <= 1)
        {
        }
      }
    }
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    if (v10 + 1 < v9)
    {
      v120 = v9;
      v113 = v11;
      v13 = *v8;
      sub_1D5D28654(*v8 + 40 * (v10 + 1), v128, sub_1D5E29ACC);
      sub_1D5D28654(v13 + 40 * v10, v127, sub_1D5E29ACC);
      v14 = sub_1D5F5343C(v128, v127);
      if (!v7)
      {
        v15 = v14;
        sub_1D5F57F4C(v127, sub_1D5E29ACC);
        result = sub_1D5F57F4C(v128, sub_1D5E29ACC);
        v16 = v10 + 2;
        v110 = v10;
        v4 = 40 * v10;
        v17 = v13 + 40 * v10 + 80;
        while (v120 != v16)
        {
          sub_1D5D28654(v17, v128, sub_1D5E29ACC);
          sub_1D5D28654(v17 - 40, v127, sub_1D5E29ACC);
          sub_1D5D28654(v128, &v125, sub_1D5E29ACC);
          v19 = v125;
          v6 = sub_1D726207C();
          v21 = v20;

          sub_1D5D28654(v127, &v123, sub_1D5E29ACC);
          v22 = v123;
          v23 = sub_1D726207C();
          v25 = v24;

          if (v6 == v23 && v21 == v25)
          {
            v18 = 0;
          }

          else
          {
            v18 = sub_1D72646CC();
          }

          __swift_destroy_boxed_opaque_existential_1(v124);
          __swift_destroy_boxed_opaque_existential_1(v126);
          sub_1D5F57F4C(v127, sub_1D5E29ACC);
          result = sub_1D5F57F4C(v128, sub_1D5E29ACC);
          ++v16;
          v17 += 40;
          if ((v15 ^ v18))
          {
            v120 = v16 - 1;
            break;
          }
        }

        v7 = 0;
        v11 = v113;
        v8 = a3;
        v12 = v110;
        if (v15)
        {
          v26 = v120;
          if (v120 < v110)
          {
            goto LABEL_137;
          }

          if (v110 < v120)
          {
            v27 = 40 * v120 - 40;
            v28 = v120;
            v29 = v110;
            do
            {
              if (v29 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_141;
                }

                v31 = (v30 + v4);
                v32 = (v30 + v27);
                v33 = *v31;
                v34 = v31[1];
                v35 = *(v31 + 4);
                v36 = *(v32 + 4);
                v37 = v32[1];
                *v31 = *v32;
                v31[1] = v37;
                *(v31 + 4) = v36;
                *(v32 + 4) = v35;
                *v32 = v33;
                v32[1] = v34;
              }

              ++v29;
              v27 -= 40;
              v4 += 40;
            }

            while (v29 < v28);
          }
        }

        else
        {
          v26 = v120;
        }

        goto LABEL_24;
      }

      sub_1D5F57F4C(v127, sub_1D5E29ACC);
      sub_1D5F57F4C(v128, sub_1D5E29ACC);
    }

    v26 = v10 + 1;
LABEL_24:
    v38 = v8[1];
    if (v26 >= v38)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v26, v12))
    {
      goto LABEL_134;
    }

    if (v26 - v12 >= a4)
    {
LABEL_33:
      v40 = v26;
      if (v26 < v12)
      {
        goto LABEL_133;
      }

      goto LABEL_34;
    }

    if (__OFADD__(v12, a4))
    {
      goto LABEL_135;
    }

    if (v12 + a4 >= v38)
    {
      v39 = v8[1];
    }

    else
    {
      v39 = v12 + a4;
    }

    if (v39 < v12)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v26 == v39)
    {
      goto LABEL_33;
    }

    v112 = v7;
    v114 = v11;
    v122 = *v8;
    v87 = *v8 + 40 * v26;
    v111 = v12;
    v88 = v12 - v26;
    v117 = v39;
LABEL_86:
    v119 = v87;
    v121 = v26;
    v118 = v88;
LABEL_87:
    sub_1D5D28654(v87, v128, sub_1D5E29ACC);
    v89 = v87 - 40;
    sub_1D5D28654(v87 - 40, v127, sub_1D5E29ACC);
    sub_1D5D28654(v128, &v125, sub_1D5E29ACC);
    v6 = v125;
    v90 = sub_1D726207C();
    v92 = v91;

    sub_1D5D28654(v127, &v123, sub_1D5E29ACC);
    v93 = v123;
    v94 = sub_1D726207C();
    v96 = v95;

    if (v90 != v94 || v92 != v96)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v124);
    __swift_destroy_boxed_opaque_existential_1(v126);
    v4 = sub_1D5E29ACC;
    sub_1D5F57F4C(v127, sub_1D5E29ACC);
    sub_1D5F57F4C(v128, sub_1D5E29ACC);
LABEL_85:
    v26 = v121 + 1;
    v87 = v119 + 40;
    v40 = v117;
    v88 = v118 - 1;
    if (v121 + 1 != v117)
    {
      goto LABEL_86;
    }

    v7 = v112;
    v11 = v114;
    v8 = a3;
    v12 = v111;
    if (v117 < v111)
    {
      goto LABEL_133;
    }

LABEL_34:
    v41 = v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v11 = v41;
    }

    else
    {
      result = sub_1D698BA94(0, *(v41 + 16) + 1, 1, v41);
      v11 = result;
    }

    v4 = *(v11 + 16);
    v42 = *(v11 + 24);
    v43 = v4 + 1;
    if (v4 >= v42 >> 1)
    {
      result = sub_1D698BA94((v42 > 1), v4 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v43;
    v44 = v11 + 16 * v4;
    *(v44 + 32) = v12;
    *(v44 + 40) = v40;
    v45 = *v115;
    if (!*v115)
    {
      goto LABEL_143;
    }

    v10 = v40;
    v6 = v7;
    if (v4)
    {
      while (2)
      {
        v7 = v43 - 1;
        if (v43 >= 4)
        {
          v50 = v11 + 32 + 16 * v43;
          v51 = *(v50 - 64);
          v52 = *(v50 - 56);
          v56 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          if (v56)
          {
            goto LABEL_120;
          }

          v55 = *(v50 - 48);
          v54 = *(v50 - 40);
          v56 = __OFSUB__(v54, v55);
          v48 = v54 - v55;
          v49 = v56;
          if (v56)
          {
            goto LABEL_121;
          }

          v57 = (v11 + 16 * v43);
          v59 = *v57;
          v58 = v57[1];
          v56 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v56)
          {
            goto LABEL_123;
          }

          v56 = __OFADD__(v48, v60);
          v61 = v48 + v60;
          if (v56)
          {
            goto LABEL_126;
          }

          if (v61 >= v53)
          {
            v79 = (v11 + 32 + 16 * v7);
            v81 = *v79;
            v80 = v79[1];
            v56 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v56)
            {
              goto LABEL_130;
            }

            if (v48 < v82)
            {
              v7 = v43 - 2;
            }
          }

          else
          {
LABEL_53:
            if (v49)
            {
              goto LABEL_122;
            }

            v62 = (v11 + 16 * v43);
            v64 = *v62;
            v63 = v62[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_125;
            }

            v68 = (v11 + 32 + 16 * v7);
            v70 = *v68;
            v69 = v68[1];
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_128;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_129;
            }

            if (v66 + v71 < v48)
            {
              goto LABEL_67;
            }

            if (v48 < v71)
            {
              v7 = v43 - 2;
            }
          }
        }

        else
        {
          if (v43 == 3)
          {
            v46 = *(v11 + 32);
            v47 = *(v11 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
            goto LABEL_53;
          }

          v72 = (v11 + 16 * v43);
          v74 = *v72;
          v73 = v72[1];
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_67:
          if (v67)
          {
            goto LABEL_124;
          }

          v75 = v11 + 16 * v7;
          v77 = *(v75 + 32);
          v76 = *(v75 + 40);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_127;
          }

          if (v78 < v66)
          {
            break;
          }
        }

        v4 = v7 - 1;
        if (v7 - 1 >= v43)
        {
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
LABEL_129:
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
          goto LABEL_136;
        }

        if (!*v8)
        {
          goto LABEL_140;
        }

        v83 = v11;
        v84 = *(v11 + 32 + 16 * v4);
        v85 = *(v11 + 32 + 16 * v7 + 8);
        sub_1D5F56D7C((*v8 + 40 * v84), (*v8 + 40 * *(v11 + 32 + 16 * v7)), *v8 + 40 * v85, v45);
        if (v6)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1D62FF50C(v83);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_119;
        }

        v86 = &v83[16 * v4];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        v129 = v83;
        result = sub_1D62FF480(v7);
        v11 = v129;
        v43 = *(v129 + 16);
        if (v43 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v9 = v8[1];
    v7 = v6;
    if (v10 >= v9)
    {
      goto LABEL_101;
    }
  }

  v4 = sub_1D72646CC();

  __swift_destroy_boxed_opaque_existential_1(v124);
  __swift_destroy_boxed_opaque_existential_1(v126);
  sub_1D5F57F4C(v127, sub_1D5E29ACC);
  result = sub_1D5F57F4C(v128, sub_1D5E29ACC);
  if ((v4 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (v122)
  {
    v98 = *(v87 + 32);
    v100 = *v87;
    v99 = *(v87 + 16);
    v101 = *(v87 - 24);
    *v87 = *v89;
    *(v87 + 16) = v101;
    *(v87 + 32) = *(v87 - 8);
    *v89 = v100;
    *(v87 - 24) = v99;
    v87 -= 40;
    *(v89 + 32) = v98;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_1D5F56D7C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = __src;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[40 * v11] <= a4)
    {
      memmove(a4, __src, 40 * v11);
      v7 = __src;
    }

    v58 = &v4[40 * v11];
    if (v10 < 40 || v7 <= __dst)
    {
      v27 = v7;
    }

    else
    {
      v51 = v4;
      do
      {
        v50 = v7;
        v29 = (v7 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          sub_1D5D28654(v30, v57, sub_1D5E29ACC);
          v33 = v29;
          sub_1D5D28654(v29, v56, sub_1D5E29ACC);
          sub_1D5D28654(v57, &v54, sub_1D5E29ACC);
          v34 = v54;
          v35 = sub_1D726207C();
          v37 = v36;

          sub_1D5D28654(v56, &v52, sub_1D5E29ACC);
          v38 = v52;
          v39 = sub_1D726207C();
          v41 = v40;

          v42 = v35 == v39 && v37 == v41;
          v43 = v42 ? 0 : sub_1D72646CC();

          __swift_destroy_boxed_opaque_existential_1(v53);
          __swift_destroy_boxed_opaque_existential_1(v55);
          sub_1D5F57F4C(v56, sub_1D5E29ACC);
          sub_1D5F57F4C(v57, sub_1D5E29ACC);
          if (v43)
          {
            break;
          }

          v29 = v33;
          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v4 = v51;
          v32 = v30 > v51;
          v30 -= 40;
          if (!v32)
          {
            v58 = (v31 + 40);
            v27 = v50;
            goto LABEL_44;
          }
        }

        v27 = v33;
        if ((v5 + 40) != v50)
        {
          v46 = *v33;
          v47 = *(v33 + 1);
          *(v5 + 32) = *(v33 + 4);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v7 = v27;
      }

      while (v27 > __dst);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
      v7 = __src;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_1D5D28654(v7, v57, sub_1D5E29ACC);
        sub_1D5D28654(v4, v56, sub_1D5E29ACC);
        sub_1D5D28654(v57, &v54, sub_1D5E29ACC);
        v14 = v54;
        v15 = sub_1D726207C();
        v17 = v16;

        sub_1D5D28654(v56, &v52, sub_1D5E29ACC);
        v18 = v52;
        v19 = sub_1D726207C();
        v21 = v20;

        v22 = v15 == v19 && v17 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_1D72646CC();

        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_1D5F57F4C(v56, sub_1D5E29ACC);
        sub_1D5F57F4C(v57, sub_1D5E29ACC);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__dst != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __dst += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v53);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_1D5F57F4C(v56, sub_1D5E29ACC);
      sub_1D5F57F4C(v57, sub_1D5E29ACC);
LABEL_15:
      v24 = v4;
      v22 = __dst == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__dst + 4) = *(v24 + 4);
      *__dst = v25;
      *(__dst + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v27 = __dst;
  }

LABEL_44:
  v48 = (v58 - v4) / 40;
  if (v27 != v4 || v27 >= &v4[40 * v48])
  {
    memmove(v27, v4, 40 * v48);
  }

  return 1;
}

unint64_t sub_1D5F57278(uint64_t a1)
{
  result = sub_1D5B55668();
  *(a1 + 8) = result;
  return result;
}

void sub_1D5F572B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_1D5F57318(uint64_t a1, void *a2)
{
  v75 = type metadata accessor for FormatInspectionItem(0);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75 - 8, v3);
  v5 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = &v69 - v9;
  v73 = a2;
  v11 = [a2 fontDescriptor];
  v12 = [v11 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_1D5B57228(&qword_1EDF1A790, type metadata accessor for AttributeName);
  v13 = sub_1D7261D3C();

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = sub_1D5E24080(*(v13 + 16), 0);
    v17 = sub_1D5E25E5C(&v84, (v16 + 4), v14, v13);
    v71 = *(&v85 + 1);
    inited = v17;
    v70 = v86;

    sub_1D5B87E38();
    if (inited == v14)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = v15;
LABEL_5:
  *&v84 = v16;
  sub_1D5F560CC(&v84);

  v18 = v84;
  v19 = *(v84 + 16);
  if (v19)
  {
    v81 = v15;
    sub_1D6997AF0(0, v19, 0);
    v20 = v81;
    inited = v18;
    v21 = v18 + 32;
    do
    {
      sub_1D5D28654(v21, &v84, sub_1D5E29ACC);
      sub_1D5D28654(&v84, v82, sub_1D5E29ACC);
      v22 = *&v82[0];
      v23 = sub_1D726207C();
      v25 = v24;

      v26 = v75;
      v76 = v84;
      v77 = v85;
      v78 = v86;

      sub_1D5B7C390((&v76 + 8), &v79);
      v76 = v79;
      v77 = v80;
      v27 = *(v26 + 24);
      if (*(&v80 + 1))
      {
        sub_1D5EA7510(&v76, v5 + v27);
        v28 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v28 - 8) + 56))(v5 + v27, 0, 1, v28);
        *v5 = v23;
        v5[1] = v25;
        v5[2] = 0;
        v5[3] = 0;
        v29 = v5 + *(v75 + 28);
        *v29 = 0;
        *(v29 + 1) = 0;
        v29[16] = -1;
        sub_1D5EA756C(&v76);
      }

      else
      {
        v30 = type metadata accessor for FormatInspectionItem.Value(0);
        (*(*(v30 - 8) + 56))(v5 + v27, 1, 1, v30);
        *v5 = v23;
        v5[1] = v25;
        v5[2] = 0;
        v5[3] = 0;
        v31 = v5 + *(v26 + 28);
        *v31 = 0;
        *(v31 + 1) = 0;
        v31[16] = -1;
      }

      sub_1D5D5E2D4(v5, v10, type metadata accessor for FormatInspectionItem);
      __swift_destroy_boxed_opaque_existential_1(v82 + 8);
      v81 = v20;
      v33 = *(v20 + 16);
      v32 = *(v20 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D6997AF0(v32 > 1, v33 + 1, 1);
        v20 = v81;
      }

      *(v20 + 16) = v33 + 1;
      sub_1D5D5E2D4(v10, v20 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v33, type metadata accessor for FormatInspectionItem);
      v21 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5EF032C();
  inited = swift_initStackObject();
  v69 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8();
  v71 = v34;
  v35 = *(*(v34 - 8) + 72);
  v36 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
  v37 = swift_allocObject();
  v70 = v37;
  *(v37 + 16) = xmmword_1D7279790;
  v38 = (v37 + v36);
  v39 = v73;
  v40 = [v73 familyName];
  v41 = sub_1D726207C();
  v43 = v42;

  sub_1D711F844(0x4E20796C696D6146, 0xEB00000000656D61, v41, v43, v38);
  v44 = *(v74 + 56);
  v74 += 56;
  v44(v38, 0, 1, v75);
  v45 = [v39 fontName];
  v46 = sub_1D726207C();
  v48 = v47;

  sub_1D711F844(0x6D614E20746E6F46, 0xE900000000000065, v46, v48, (v38 + v35));
  v49 = v75;
  v44((v38 + v35), 0, 1, v75);
  [v39 pointSize];
  sub_1D711A80C(0x695320746E696F50, 0xEA0000000000657ALL, v50, 0, (v38 + 2 * v35));
  v44((v38 + 2 * v35), 0, 1, v49);
  [v39 lineHeight];
  sub_1D711A80C(0x69654820656E694CLL, 0xEB00000000746867, v51, 0, (v38 + 3 * v35));
  v44((v38 + 3 * v35), 0, 1, v49);
  [v39 ascender];
  sub_1D711A80C(0x7265646E65637341, 0xE800000000000000, v52, 0, (v38 + 4 * v35));
  v44((v38 + 4 * v35), 0, 1, v49);
  [v39 descender];
  sub_1D711A80C(0x65646E6563736544, 0xE900000000000072, v53, 0, (v38 + 5 * v35));
  v44((v38 + 5 * v35), 0, 1, v49);
  [v39 capHeight];
  sub_1D711A80C(0x6769654820706143, 0xEA00000000007468, v54, 0, (v38 + 6 * v35));
  v44((v38 + 6 * v35), 0, 1, v49);
  [v39 leading];
  sub_1D711A80C(0x676E696461654CLL, 0xE700000000000000, v55, 0, (v38 + 7 * v35));
  v44((v38 + 7 * v35), 0, 1, v49);
  [v39 xHeight];
  sub_1D711A80C(0x74686769654878, 0xE700000000000000, v56, 0, &v38[v35]);
  v57 = v49;
  v44(&v38[v35], 0, 1, v49);
  sub_1D5F572B0(0, &qword_1EC8803C0, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6F90]);
  v58 = swift_initStackObject();
  *(v58 + 16) = v69;
  v59 = sub_1D5F62998(v20);

  sub_1D6795150(0x7475626972747441, 0xEA00000000007365, 0, 0, v59, v82);

  *(v58 + 56) = &type metadata for FormatInspectionGroup;
  *(v58 + 64) = &off_1F518B2C0;
  v60 = swift_allocObject();
  *(v58 + 32) = v60;
  *(v60 + 48) = v83;
  v61 = v82[1];
  *(v60 + 16) = v82[0];
  *(v60 + 32) = v61;
  v62 = sub_1D5F62BFC(v58);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v58 + 32);
  v63 = sub_1D7073500(v62);

  sub_1D711AD20(0x7475626972747441, 0xEA00000000007365, v63, 0, 0, v38 + 9 * v35);
  v44((v38 + 9 * v35), 0, 1, v57);
  sub_1D6795150(0x74654D20746E6F46, 0xEC00000073636972, 0, 0, v70, &v84);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v64 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v64 + 64) = &off_1F518B2C0;
  v65 = swift_allocObject();
  *(v64 + 32) = v65;
  *(v65 + 48) = v86;
  v66 = v85;
  *(v65 + 16) = v84;
  *(v65 + 32) = v66;
  v67 = sub_1D7073500(v64);
  swift_setDeallocating();
  sub_1D5BFB704(v64 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  return v67;
}

uint64_t sub_1D5F57E24(uint64_t a1, uint64_t a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5F57EB8()
{
  if (!qword_1EC8814B8)
  {
    sub_1D5B581A0(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8814B8);
    }
  }
}

uint64_t sub_1D5F57F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_14Tm_0()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5F57FEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return result;
}

uint64_t sub_1D5F58038(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return result;
}

uint64_t sub_1D5F58084(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a6 >> 5;
  if (v6 > 3)
  {
    if (v6 != 4 && v6 != 5)
    {
      if (v6 == 6)
      {
        return sub_1D5F58198(result, a2, a3, a4, a5, a6 & 1);
      }

      return result;
    }

    return sub_1D5F580D0(result, a2);
  }

  if (v6 == 1)
  {
    return sub_1D5F580D0(result, a2);
  }

  if (v6 == 3)
  {
    return sub_1D5F5816C(result, a2, a3, SBYTE1(a3));
  }

  return result;
}

uint64_t sub_1D5F580D0(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 59) & 2 | (a2 >> 2) & 1) <= 2)
  {
  }

  return result;
}

uint64_t sub_1D5F5816C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1D5F58198(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFE | (a2 >> 1) & 1;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      return sub_1D5F580D0(a2, a3);
    }
  }

  else
  {
    if (v7)
    {
      a2 &= ~2uLL;
    }

    return sub_1D5F580D0(result, a2);
  }

  return result;
}

uint64_t sub_1D5F582F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 > 8)
  {
    if (v7 == 9)
    {
      return sub_1D5E1E164(result, a2, a3, a4, a5, a6, a7 & 0xF);
    }

    else if (v7 == 12)
    {
      return sub_1D5E1E174(result, a2, a3);
    }
  }

  else if (a7 >> 4)
  {
    if (v7 == 3)
    {
      return sub_1D5E1E134(result, a2, a3, BYTE1(a3));
    }
  }

  else
  {
    return sub_1D5E1E074(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1D5F5844C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t (*a5)(void))
{
  if ((a4 >> 6) <= 1u)
  {
    return a5();
  }

  if (a4 >> 6 == 2)
  {
    return (a5)(a2, a3, a4 & 0x3F);
  }

  return result;
}

uint64_t sub_1D5F58484(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 59) & 2 | (a2 >> 2) & 1) <= 2)
  {
  }

  return result;
}

uint64_t sub_1D5F58594(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = (a4 >> 3) & 7;
  if (v7 <= 2)
  {
    if (v7 && v7 != 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v7 == 3)
  {
LABEL_8:

    return a5();
  }

  if (v7 == 4)
  {
    return sub_1D5F5844C(result, a2, a3, a4 & 0xC7, a6);
  }

  return result;
}

uint64_t objectdestroy_32Tm(void (*a1)(void, void, void, void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5F586A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1D5F586D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_1D5F5870C(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D5F58758()
{
  result = qword_1EC8814D0[0];
  if (!qword_1EC8814D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC8814D0);
  }

  return result;
}

void sub_1D5F587AC(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D5F587EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B581A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5F5885C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1D5F588A0(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D5F588D0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_1D5E42B34();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1D7284BA0;
    v2 = objc_opt_self();
    *(v1 + 32) = [v2 systemBlueColor];
    *(v1 + 40) = [v2 systemRedColor];
    *(v1 + 48) = [v2 systemGreenColor];
    *(v1 + 56) = [v2 systemCyanColor];
    *(v1 + 64) = [v2 systemGrayColor];
    *(v1 + 72) = [v2 systemPinkColor];
    *(v1 + 80) = [v2 systemPurpleColor];
    *(v1 + 88) = [v2 systemMintColor];
    *(v1 + 96) = [v2 systemIndigoColor];
    *(v1 + 104) = [v2 systemOrangeColor];
    *(v1 + 112) = [v2 systemBrownColor];
    *(v1 + 120) = [v2 systemTealColor];
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_1D5F58AA4(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = sub_1D5EC4E90(a1, *(v1 + 16));
  swift_endAccess();
  if (!v5)
  {
    v6 = sub_1D5F588D0();
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_4;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = *(v3 + 16);
    if ((v9 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v9 < 0)
    {
      v10 = *(v3 + 16);
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_1D7263BFC();
    if (!__OFADD__(v11, 1))
    {
      *(v3 + 16) = sub_1D5F58ED0(v10, v11 + 1);
      break;
    }

    __break(1u);
LABEL_17:
    v7 = sub_1D7263BFC();

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_4:
    if (HIDWORD(v7))
    {
LABEL_19:
      __break(1u);
LABEL_20:

      v5 = MEMORY[0x1DA6FB460](v7, v2);
    }

    else
    {
      result = arc4random_uniform(v7);
      v7 = result;
      v2 = *(v3 + 24);
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_20;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
      {
        __break(1u);
        goto LABEL_22;
      }

      v5 = *(v2 + 8 * result + 32);
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 16);
  sub_1D6D789C0(v5, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v13;
  swift_endAccess();
  result = sub_1D5EC4E90(a1, v13);
  if (result)
  {
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D5F58C54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F58C94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D5F5920C();
    v2 = sub_1D726411C();
    v19 = v2;
    sub_1D7263FEC();
    v3 = sub_1D726401C();
    if (v3)
    {
      v4 = v3;
      sub_1D5B5A498(0, qword_1EDF1A6A0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D5B5A498(0, &qword_1EDF1A690);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D6D69250(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D72636FC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D726401C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D5F58ED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D5F59128();
    v2 = sub_1D726411C();
    v16 = v2;
    sub_1D7263FEC();
    if (sub_1D726401C())
    {
      type metadata accessor for GroupLayoutKey();
      do
      {
        swift_dynamicCast();
        sub_1D5B5A498(0, qword_1EDF1A6A0);
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D6D6A3FC(v9 + 1, 1);
        }

        v2 = v16;
        sub_1D7264A0C();
        sub_1D72621EC();
        sub_1D72621EC();
        result = sub_1D7264A5C();
        v4 = v16 + 64;
        v5 = -1 << *(v16 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v16 + 48) + 8 * v8) = v15;
        *(*(v16 + 56) + 8 * v8) = v14;
        ++*(v16 + 16);
      }

      while (sub_1D726401C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1D5F59128()
{
  if (!qword_1EC895720)
  {
    type metadata accessor for GroupLayoutKey();
    sub_1D5B5A498(255, qword_1EDF1A6A0);
    sub_1D5F591B4();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895720);
    }
  }
}

unint64_t sub_1D5F591B4()
{
  result = qword_1EDF11A70;
  if (!qword_1EDF11A70)
  {
    type metadata accessor for GroupLayoutKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11A70);
  }

  return result;
}

void sub_1D5F5920C()
{
  if (!qword_1EDF03E50)
  {
    sub_1D5B5A498(255, qword_1EDF1A6A0);
    sub_1D5B5A498(255, &qword_1EDF1A690);
    sub_1D5F592A8();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03E50);
    }
  }
}

unint64_t sub_1D5F592A8()
{
  result = qword_1EDF04370;
  if (!qword_1EDF04370)
  {
    sub_1D5B5A498(255, qword_1EDF1A6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04370);
  }

  return result;
}

uint64_t sub_1D5F59310@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D7258F1C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E6984CE0])
  {
    *a1 = 40;
    return result;
  }

  if (result == *MEMORY[0x1E6984C08])
  {
    *a1 = 20;
    return result;
  }

  if (result == *MEMORY[0x1E6984C10])
  {
    *a1 = 16;
    return result;
  }

  if (result == *MEMORY[0x1E6984CC0])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x1E6984C98])
  {
    *a1 = 30;
  }

  else if (result == *MEMORY[0x1E6984CC8])
  {
    *a1 = 27;
  }

  else if (result == *MEMORY[0x1E6984CD8])
  {
    *a1 = 10;
  }

  else if (result == *MEMORY[0x1E6984CE8])
  {
    *a1 = 14;
  }

  else if (result == *MEMORY[0x1E6984CA0])
  {
    *a1 = 21;
  }

  else if (result == *MEMORY[0x1E6984C58])
  {
    *a1 = 9;
  }

  else if (result == *MEMORY[0x1E6984C28])
  {
    *a1 = 11;
  }

  else if (result == *MEMORY[0x1E6984CD0])
  {
    *a1 = 26;
  }

  else if (result == *MEMORY[0x1E6984C78])
  {
    *a1 = 18;
  }

  else if (result == *MEMORY[0x1E6984C80])
  {
    *a1 = 22;
  }

  else if (result == *MEMORY[0x1E6984D10])
  {
    *a1 = 37;
  }

  else if (result == *MEMORY[0x1E6984D18])
  {
    *a1 = 39;
  }

  else if (result == *MEMORY[0x1E6984C70])
  {
    *a1 = 33;
  }

  else if (result == *MEMORY[0x1E6984D20])
  {
    *a1 = 3;
  }

  else if (result == *MEMORY[0x1E6984C60])
  {
    *a1 = 34;
  }

  else if (result == *MEMORY[0x1E6984C18])
  {
    *a1 = 31;
  }

  else if (result == *MEMORY[0x1E6984C30])
  {
    *a1 = 28;
  }

  else if (result == *MEMORY[0x1E6984C38])
  {
    *a1 = 29;
  }

  else if (result == *MEMORY[0x1E6984C88])
  {
    *a1 = 13;
  }

  else if (result == *MEMORY[0x1E6984C68])
  {
    *a1 = 35;
  }

  else if (result == *MEMORY[0x1E6984CA8])
  {
    *a1 = 19;
  }

  else if (result == *MEMORY[0x1E6984CB0])
  {
    *a1 = 23;
  }

  else if (result == *MEMORY[0x1E6984C90])
  {
    *a1 = 17;
  }

  else if (result == *MEMORY[0x1E6984C40])
  {
    *a1 = 42;
  }

  else if (result == *MEMORY[0x1E6984C20])
  {
    *a1 = 43;
  }

  else if (result == *MEMORY[0x1E6984C00])
  {
    *a1 = 44;
  }

  else if (result == *MEMORY[0x1E6984C48])
  {
    *a1 = 5;
  }

  else if (result == *MEMORY[0x1E6984C50])
  {
    *a1 = 2;
  }

  else
  {
    if (result == *MEMORY[0x1E6984CB8])
    {
LABEL_8:
      *a1 = 25;
      return result;
    }

    if (result == *MEMORY[0x1E6984D28])
    {
      *a1 = 45;
    }

    else
    {
      *a1 = 0;
      return (*(v5 + 8))(v9, v4);
    }
  }

  return result;
}

uint64_t sub_1D5F59850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D5BEE810(a2, a3);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  sub_1D5BEE8A0(v9, v10);
  v4 = sub_1D7259EEC();
  v5 = sub_1D5BEE8E4();

  sub_1D5BEEACC(v9, v10);
  if ((v5 & 1) == 0)
  {
    sub_1D5C17350();
    swift_allocError();
    v7 = v6;
    *v6 = sub_1D7259EEC();
    *(v7 + 40) = 1;
    swift_willThrow();
  }
}

uint64_t _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0()
{
  sub_1D725AA4C();
  sub_1D5BF4D9C();
  v0 = sub_1D7263A6C();

  return v0;
}

uint64_t sub_1D5F59A90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_1D5BEE810(a3, a4);
  v10 = v5;
  LOBYTE(v11) = v6;
  v7 = *(type metadata accessor for GroupLayoutContext() + 20);
  v8 = [objc_opt_self() mainBundle];
  sub_1D6C07488(&v10, a2, a2 + v7, v8);
}

__int16 *FormatArrangementData.init(scoringContext:placeholders:debugCandidates:)@<X0>(__int16 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *a4 = a2;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

uint64_t FormatArrangementData.init(curations:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 4096;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D5F59B70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5F59BB8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D5F59C14(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D5F59C80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1D5F59CD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 10))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 8) >> 12) & 1 | (2 * (HIBYTE(*(a1 + 8)) & 0xC | (*(a1 + 8) >> 6) & 0xF))) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5F59D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 & 0x18) << 7) - (a2 << 12)) & 0x1C00 | (((-a2 >> 1) & 3) << 6);
    }
  }

  return result;
}

id sub_1D5F59DC8(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_editor] = a1;
  *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_uploadNavigationController] = a2;
  *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_uploadDiffNavigationController] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;

  v8 = a2;
  v9 = a3;
  v10 = objc_msgSendSuper2(&v13, sel_initWithStyle_, 1);
  [v10 setViewController:v8 forColumn:{0, v13.receiver, v13.super_class}];
  v11 = v9;
  [v10 setViewController:v11 forColumn:2];
  [v10 setViewController:v11 forColumn:3];

  return v10;
}

void sub_1D5F59F2C(void *a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_1D5F5A34C;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D5B6B06C;
    v5[3] = &block_descriptor_8;
    v4 = _Block_copy(v5);

    [a1 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_1D5F5A158()
{
  v5[0] = 0;
  v6 = 0xD000000000000010;
  v7 = 0x80000001D73C39F0;
  v8 = 0xD000000000000036;
  v9 = 0x80000001D73C3A10;
  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1D5F181F4(v5);
  }

  v1 = *(Strong + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_editor);
  v2 = Strong;

  v3 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_1D6AD3108(v5);
  }

  sub_1D5F181F4(v5);
}

uint64_t sub_1D5F5A374()
{
  result = type metadata accessor for FormatPurchaseData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F5A408()
{
  result = type metadata accessor for FeedAction(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5F5A4B8()
{
  result = type metadata accessor for FeedActionInternal(319);
  if (v1 <= 0x3F)
  {
    result = sub_1D5E2B010();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FormatPoint.description.getter()
{
  v0 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v1 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_1D5F5A658(uint64_t a1)
{
  result = sub_1D5F5A680();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F5A680()
{
  result = qword_1EC8815A0;
  if (!qword_1EC8815A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8815A0);
  }

  return result;
}

unint64_t sub_1D5F5A6D4(void *a1)
{
  a1[1] = sub_1D5C7B870();
  a1[2] = sub_1D5F5A70C();
  result = sub_1D5F5A760();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F5A70C()
{
  result = qword_1EDF12820;
  if (!qword_1EDF12820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12820);
  }

  return result;
}

unint64_t sub_1D5F5A760()
{
  result = qword_1EC8815A8;
  if (!qword_1EC8815A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8815A8);
  }

  return result;
}

uint64_t sub_1D5F5A7B4()
{
  v0 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v0);

  MEMORY[0x1DA6F9910](8236, 0xE200000000000000);
  v1 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v1);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 40;
}

id sub_1D5F5A858(uint64_t a1)
{
  v3 = sub_1D7261ABC();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D7261B2C();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v6);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7261ACC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D724540C();
  sub_1D724540C();
  v13 = *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView);
  sub_1D6BBC3F8();
  v14 = *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView);
  sub_1D6BBC3F8();
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel);
  result = [v15 setAttributedText_];
  if (a1)
  {

    v17 = sub_1D5E2EAA4(17.0);
    [v15 setAttributedText_];

    [v15 sizeToFit];
    *(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 1;
    [*(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) startAnimating];
    *(v14 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 1;
    [*(v14 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) startAnimating];
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    (*(v9 + 104))(v12, *MEMORY[0x1E69E7F88], v8);
    v18 = sub_1D72630CC();
    (*(v9 + 8))(v12, v8);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = v19;
    aBlock[4] = sub_1D5F5D6CC;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_9;
    v21 = _Block_copy(aBlock);

    v22 = v26;
    sub_1D7261AEC();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D5F5D6D4();
    sub_1D5B5BE5C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D5F5D72C();
    v23 = v28;
    v24 = v31;
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v22, v23, v21);
    _Block_release(v21);

    (*(v30 + 8))(v23, v24);
    (*(v27 + 8))(v22, v29);
  }

  return result;
}

void *sub_1D5F5AD14()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_statusView];
    type metadata accessor for DebugFormatNavigationItemManager();
    v4 = swift_allocObject();
    v5 = v3;
    v6 = v0;
    v2 = sub_1D6A13468(v6, v5, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1D5F5ADC0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem);
  }

  else
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D5F5AE48()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_doDismiss];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

id sub_1D5F5AF5C()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = objc_opt_self();
  v5 = [v4 secondarySystemBackgroundColor];
  [v3 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  [result addSubview_];

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result addSubview_];

    v10 = sub_1D5F5ADC0();
    [v10 _setPrefersNoPlatter_];

    v11 = [v1 navigationItem];
    sub_1D5E42B34();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D72816D0;
    sub_1D5B5A498(0, &qword_1EC88B4C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D72816C0;
    v14 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem];
    *(v13 + 32) = v14;
    v15 = v14;
    v16 = sub_1D726317C();

    *(v12 + 32) = v16;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D72816C0;
    sub_1D5F5AE48();
    *(v17 + 32) = v18;
    v19 = sub_1D726317C();

    *(v12 + 40) = v19;
    v20 = sub_1D726265C();

    [v11 setTrailingItemGroups_];

    v21 = [v1 navigationItem];
    v22 = [v4 secondarySystemBackgroundColor];
    sub_1D71CD7DC(v21, v22);

    v23 = *(*&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_statusView] + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffStatusView_onTargetTap);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = v23;

    v25 = sub_1D725D03C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D5F5B37C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D5F5B3D0();
  }
}

void sub_1D5F5B3D0()
{
  v0 = MEMORY[0x1E69D6E30];
  sub_1D5F5DB14(0, &qword_1EC881610, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E30]);
  v66 = v1;
  v64 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v65 = &v59 - v3;
  v4 = sub_1D725970C();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F5DB14(0, &unk_1EC890070, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], v0);
  v8 = v7;
  v71 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v60 = &v59 - v10;
  sub_1D5F5D9E4(0, &unk_1EC890040, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, v0);
  v68 = v11;
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v59 - v14;
  sub_1D5F5D9E4(0, &unk_1EC890050, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, v0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v59 - v20;
  sub_1D5B5BE5C(0, &unk_1EC8941A0, MEMORY[0x1E69D6E78], MEMORY[0x1E69E6F90]);
  v22 = *(sub_1D72597DC() - 8);
  v61 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D7273AE0;
  sub_1D5B677A8(0, &qword_1EC88F1B0, &qword_1EC8941B0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7284F00;
  sub_1D5F5D9E4(0, &qword_1EC881618, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget, MEMORY[0x1E69D6E50]);
  v25 = v24;
  if (qword_1EC87D678 != -1)
  {
    swift_once();
  }

  v26 = *MEMORY[0x1E69D6E28];
  (*(v18 + 104))(v21, v26, v17);
  sub_1D5E48934();

  v27 = sub_1D72597AC();
  *(v23 + 56) = v25;
  *(v23 + 64) = sub_1D5F5DA4C(&qword_1EC881620, &qword_1EC881618, sub_1D5F5D990, &type metadata for DebugFormatUploadTarget);
  *(v23 + 32) = v27;
  sub_1D5F5D9E4(0, &unk_1EC8900C0, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment, MEMORY[0x1E69D6E50]);
  v29 = v28;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  (*(v12 + 104))(v15, v26, v68);
  sub_1D5E4B768();

  v30 = sub_1D72597AC();
  *(v23 + 96) = v29;
  *(v23 + 104) = sub_1D5F5DA4C(&qword_1EC8900D0, &unk_1EC8900C0, sub_1D5F5D93C, &type metadata for DebugFormatBackendEnvironment);
  *(v23 + 72) = v30;
  sub_1D5F5DB14(0, &unk_1EC890080, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0], MEMORY[0x1E69D6E50]);
  v32 = v31;
  v33 = v60;
  v34 = v71;
  if (qword_1EC87D698 != -1)
  {
    swift_once();
  }

  v59 = *(v34 + 104);
  v59(v33, v26, v8);

  v35 = sub_1D725978C();
  *(v23 + 136) = v32;
  v36 = sub_1D5F5DAB0(&qword_1EC881628, &unk_1EC890080, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  LODWORD(v71) = v26;
  v37 = v36;
  *(v23 + 144) = v36;
  *(v23 + 112) = v35;
  v38 = v63;
  if (qword_1EC87D6A0 != -1)
  {
    swift_once();
  }

  v39 = v70;
  v40 = *(v69 + 104);
  LODWORD(v69) = *MEMORY[0x1E69D6D78];
  v68 = v40;
  v40(v38);
  v59(v33, v71, v8);

  v41 = sub_1D725979C();
  *(v23 + 176) = v32;
  *(v23 + 184) = v37;
  *(v23 + 152) = v41;
  sub_1D5F5DB14(0, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6E50]);
  v43 = v42;
  if (qword_1EC87D680 != -1)
  {
    swift_once();
  }

  v60 = "rmatUploadDiffViewController";
  v68(v38, v69, v39);
  v44 = v65;
  v45 = v66;
  v64 = *(v64 + 104);
  (v64)(v65, v71, v66);

  v46 = sub_1D72597BC();
  *(v23 + 216) = v43;
  v47 = sub_1D5F5DAB0(&qword_1EC8900E0, &qword_1EC881630, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  *(v23 + 224) = v47;
  *(v23 + 192) = v46;
  if (qword_1EC87D688 != -1)
  {
    swift_once();
  }

  v68(v38, v69, v70);
  (v64)(v44, v71, v45);

  v48 = sub_1D72597BC();
  *(v23 + 256) = v43;
  *(v23 + 264) = v47;
  *(v23 + 232) = v48;
  sub_1D72597CC();
  v49 = sub_1D725DFCC();
  swift_allocObject();
  v50 = sub_1D725DFBC();
  v73 = v49;
  v74 = MEMORY[0x1E69D7D00];
  v72 = v50;
  v51 = objc_allocWithZone(sub_1D725E42C());
  v52 = sub_1D725E41C();
  v53 = [objc_allocWithZone(sub_1D725EDBC()) initWithRootViewController_];

  v54 = v53;
  [v54 setModalPresentationStyle_];
  v55 = [v54 popoverPresentationController];
  v56 = v67;
  if (v55)
  {
    v57 = v55;
    [v55 setSourceView_];
  }

  v58 = [v54 popoverPresentationController];

  if (v58)
  {
    [v58 setPermittedArrowDirections_];
  }

  [v56 presentViewController:v54 animated:1 completion:0];
}

void sub_1D5F5BF2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff);
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteError);
      if (v3)
      {
        v4 = v3;
        v5 = sub_1D5EE7410(v3);
        v6 = sub_1D5EEAADC(v5);
        v8 = v7;
        v9 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_editor];
        v10 = type metadata accessor for DebugFormatErrorViewController();
        v11 = objc_allocWithZone(v10);
        v12 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView;
        v13 = objc_allocWithZone(MEMORY[0x1E69DD020]);

        v14 = v6;

        *&v11[v12] = [v13 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
        v15 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_styler;
        type metadata accessor for DebugFormatStyler();
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        *&v11[v15] = v16;
        *&v11[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_editor] = v9;
        v17 = &v11[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel];
        *v17 = v6;
        *(v17 + 1) = v8;
        v23.receiver = v11;
        v23.super_class = v10;
        v18 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
        v19 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
        [v19 setModalPresentationStyle_];
        v20 = [v19 popoverPresentationController];
        if (v20)
        {
          v21 = v20;
          v22 = sub_1D5F5ADC0();
          [v21 setBarButtonItem_];
        }

        [v19 setPreferredContentSize_];

        [v1 presentViewController:v19 animated:1 completion:0];
      }
    }
  }
}

id sub_1D5F5C1E0()
{
  v1 = v0;
  v67.receiver = v0;
  v67.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v67, sel_viewWillLayoutSubviews);
  sub_1D5F5AD14();
  sub_1D606BFAC();

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v68.origin.x = v5;
  v68.origin.y = v7;
  v68.size.width = v9;
  v68.size.height = v11;
  Width = CGRectGetWidth(v68);
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = result;
  [result safeAreaInsets];
  v15 = v14;

  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = result;
  [result safeAreaInsets];
  v18 = v17;

  v19 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView];
  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = result;
  [result safeAreaInsets];
  v22 = v21;

  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = result;
  v24 = (Width - v15) * 0.5 + -4.0;
  [result bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v69.origin.x = v26;
  v69.origin.y = v28;
  v69.size.width = v30;
  v69.size.height = v32;
  [v19 setFrame_];
  v33 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView];
  [v19 frame];
  MaxX = CGRectGetMaxX(v70);
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v35 = result;
  v36 = v18 + 32.0;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v71.origin.x = v38;
  v71.origin.y = v40;
  v71.size.width = v42;
  v71.size.height = v44;
  [v33 setFrame_];
  v45 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView];
  [v33 frame];
  v46 = CGRectGetMaxX(v72);
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v47 = result;
  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v73.origin.x = v49;
  v73.origin.y = v51;
  v73.size.width = v53;
  v73.size.height = v55;
  [v45 setFrame_];
  v56 = *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView];
  [v45 frame];
  v57 = CGRectGetMaxX(v74);
  result = [v1 view];
  if (result)
  {
    v58 = result;
    [result bounds];
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;

    v75.origin.x = v60;
    v75.origin.y = v62;
    v75.size.width = v64;
    v75.size.height = v66;
    return [v56 setFrame_];
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D5F5C600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7261ABC();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7261B2C();
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7273AE0;
  v13 = sub_1D5E2FD70();
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1D5B7E2C0();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1D7262EDC();
  sub_1D725C30C();

  type metadata accessor for DebugFormatUploadDiffChangeSet();
  swift_allocObject();

  v17 = sub_1D6CA0F94(v16);

  sub_1D5B5A498(0, &qword_1EDF1AA30);
  v18 = sub_1D726308C();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v17;
  aBlock[4] = sub_1D5F5D920;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_11;
  v20 = _Block_copy(aBlock);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5F5D6D4();
  sub_1D5B5BE5C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D5F5D72C();
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v11, v7, v20);
  _Block_release(v20);

  (*(v23 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v22);
}

void sub_1D5F5C9E0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  sub_1D5B677A8(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v6 = sub_1D5E2FD70();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_1D7262EDC();
  sub_1D725C30C();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff))
    {

      v13 = sub_1D5E2FD70();
      v15 = v14;

      v16 = sub_1D5E2FD70();
      if (v15)
      {
        if (v13 == v16 && v15 == v17)
        {

LABEL_13:
          v19 = *&v12[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView];
          *(v19 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 0;
          [*(v19 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) stopAnimating];
          v20 = *&v12[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView];
          *(v20 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_isLoading) = 0;
          [*(v20 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_activityIndicatorView) stopAnimating];
          sub_1D5F5CCA8(a1, a3);
          v21 = swift_allocObject();
          *(v21 + 16) = v24;
          v22 = sub_1D5E2FD70();
          *(v21 + 56) = v9;
          *(v21 + 64) = v10;
          *(v21 + 32) = v22;
          *(v21 + 40) = v23;
          sub_1D7262EDC();
          sub_1D725C30C();

          return;
        }

        v18 = sub_1D72646CC();

        if (v18)
        {
          goto LABEL_13;
        }

LABEL_11:

        return;
      }
    }

    else
    {
      sub_1D5E2FD70();
    }

    goto LABEL_11;
  }
}

void sub_1D5F5CCA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v52 = a1;
  sub_1D5B5BE5C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - v11;
  v13 = *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView];
  v15 = a2[2];
  v14 = a2[3];
  v16 = OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion;
  v17 = sub_1D725BD1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15 + v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v19 = *(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_titleLabel);
  if (v14 >> 62)
  {
    sub_1D7263BFC();
  }

  v20 = sub_1D6BBD35C(v12);
  [v19 setAttributedText_];

  v21 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_changeSet;
  swift_beginAccess();
  *(v13 + v21) = v14;

  v22 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView;
  [*(v13 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView) setContentOffset_];
  [*(v13 + v22) setScrollEnabled_];
  [*(v13 + v22) setScrollEnabled_];
  [*(v13 + v22) reloadData];
  sub_1D5F40BCC(v12);
  v23 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView];
  v24 = a2[4];
  sub_1D5D3A874(v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, v8);
  sub_1D6BBC554(v24, 0, v8);
  sub_1D5F40BCC(v8);
  *(v23 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_delegate + 8) = &off_1F5125828;
  swift_unknownObjectWeakAssign();
  v25 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView];
  v26 = v52;
  *&v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_numberOfLines] = *(v52 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localNumberOfLines);
  *&v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_changedHunkRanges] = *(v26 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localHunkRanges);

  [*(v13 + v22) contentSize];
  v27 = &v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentSize];
  *v27 = v28;
  *(v27 + 1) = v29;
  [v25 setNeedsLayout];
  [*(v13 + v22) adjustedContentInset];
  v30 = &v25[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentInsets];
  *v30 = v31;
  *(v30 + 1) = v32;
  *(v30 + 2) = v33;
  *(v30 + 3) = v34;
  [v25 setNeedsLayout];
  v35 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView];
  *&v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_numberOfLines] = *(v26 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteNumberOfLines);
  *&v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_changedHunkRanges] = *(v26 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteHunkRanges);

  v36 = OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView;
  [*(v23 + OBJC_IVAR____TtC8NewsFeed25DebugFormatUploadDiffView_tableView) contentSize];
  v37 = &v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentSize];
  *v37 = v38;
  *(v37 + 1) = v39;
  [v35 setNeedsLayout];
  [*(v23 + v36) adjustedContentInset];
  v40 = &v35[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadDiffGutterView_contentInsets];
  *v40 = v41;
  *(v40 + 1) = v42;
  *(v40 + 2) = v43;
  *(v40 + 3) = v44;
  [v35 setNeedsLayout];
  v45 = [v3 navigationController];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 navigationBar];

    [v47 setNeedsLayout];
  }

  v48 = [v3 view];
  if (v48)
  {
    v49 = v48;
    [v48 setNeedsLayout];

    v50 = [v3 view];
    if (v50)
    {
      v51 = v50;
      [v50 layoutIfNeeded];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D5F5D2C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BE5C(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  if (*&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView] == a1)
  {
    v15 = *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff];
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersions);
      sub_1D5D3A874(v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteVersion, v14);
      (*(v7 + 16))(v10, v15 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_localVersion, v6);
      v17 = objc_allocWithZone(type metadata accessor for DebugFormatUploadDiffVersionsViewController());

      v18 = sub_1D69BC1D8(v16, v14, v10);
      v19 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
      [v19 setModalPresentationStyle_];
      v20 = [v19 popoverPresentationController];
      if (v20)
      {
        v21 = v20;
        [v20 setSourceItem_];
      }

      [v3 presentViewController:v19 animated:1 completion:0];
    }
  }
}

id sub_1D5F5D528(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager] = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  v7 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView;
  v8 = type metadata accessor for DebugFormatUploadDiffView();
  v9 = objc_allocWithZone(v8);
  *&v2[v7] = sub_1D6BBC660(0);
  v10 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView;
  v11 = type metadata accessor for DebugFormatUploadDiffGutterView();
  v12 = objc_allocWithZone(v11);
  *&v2[v10] = sub_1D724552C(0);
  v13 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView;
  v14 = objc_allocWithZone(v8);
  *&v2[v13] = sub_1D6BBC660(1);
  v15 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView;
  v16 = objc_allocWithZone(v11);
  *&v2[v15] = sub_1D724552C(1);
  v17 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel;
  sub_1D725D04C();
  *&v2[v17] = sub_1D725D01C();
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_editor] = a1;
  v18 = objc_allocWithZone(type metadata accessor for DebugFormatUploadDiffStatusView());
  v19 = swift_retain_n();
  *&v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_statusView] = sub_1D5DEDBE8(v19);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

unint64_t sub_1D5F5D6D4()
{
  result = qword_1EDF3A8F0;
  if (!qword_1EDF3A8F0)
  {
    sub_1D7261ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A8F0);
  }

  return result;
}

unint64_t sub_1D5F5D72C()
{
  result = qword_1EDF1B560;
  if (!qword_1EDF1B560)
  {
    sub_1D5B5BE5C(255, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B560);
  }

  return result;
}

void sub_1D5F5D7B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_diff) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___navigationItemManager) = 0;
  v2 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffView;
  v5 = type metadata accessor for DebugFormatUploadDiffView();
  v6 = objc_allocWithZone(v5);
  *(v1 + v4) = sub_1D6BBC660(0);
  v7 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_remoteDiffGutterView;
  v8 = type metadata accessor for DebugFormatUploadDiffGutterView();
  v9 = objc_allocWithZone(v8);
  *(v1 + v7) = sub_1D724552C(0);
  v10 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffView;
  v11 = objc_allocWithZone(v5);
  *(v1 + v10) = sub_1D6BBC660(1);
  v12 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_localDiffGutterView;
  v13 = objc_allocWithZone(v8);
  *(v1 + v12) = sub_1D724552C(1);
  v14 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController_changeSetLabel;
  sub_1D725D04C();
  *(v1 + v14) = sub_1D725D01C();
  *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___changeSetBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadDiffViewController____lazy_storage___dismissBarButtonItem) = 0;
  sub_1D726402C();
  __break(1u);
}

unint64_t sub_1D5F5D93C()
{
  result = qword_1EC88DE40;
  if (!qword_1EC88DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE40);
  }

  return result;
}

unint64_t sub_1D5F5D990()
{
  result = qword_1EC88DE30;
  if (!qword_1EC88DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DE30);
  }

  return result;
}

void sub_1D5F5D9E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D5F5DA4C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F5D9E4(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F5DAB0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F5DB14(255, a2, a3, a4, MEMORY[0x1E69D6E50]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F5DB14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5F5DB70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F5DBCC()
{
  v1 = sub_1D725ABEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F5DEEC(0, &unk_1EDF17830, sub_1D5F5DEA0, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1D5F5DEEC(0, &qword_1EDF023E0, MEMORY[0x1E69D6430], MEMORY[0x1E69E6F90]);
  sub_1D725A9BC();
  v8 = swift_allocObject();
  v8[1] = xmmword_1D7273AE0;
  v14 = *(v0 + 16);
  v9 = qword_1EDF17C78;
  v10 = v14;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v1, qword_1EDF17C80);
  (*(v2 + 16))(v5, v11, v1);
  sub_1D5F5DEA0();
  sub_1D725BF4C();
  sub_1D725A9AC();
  v14 = v8;
  sub_1D5F5DEEC(0, &qword_1EDF17970, sub_1D5C8A628, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

unint64_t sub_1D5F5DEA0()
{
  result = qword_1EDF1AC30;
  if (!qword_1EDF1AC30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AC30);
  }

  return result;
}

void sub_1D5F5DEEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id Fonts.Font.font(size:)(double a1)
{
  v2 = sub_1D726203C();
  v3 = objc_opt_self();
  v4 = [v3 fontWithName:v2 size:a1];

  if (v4)
  {
    return v4;
  }

  v6 = [v3 systemFontOfSize_];

  return v6;
}

id Fonts.Font.scaledFont(size:style:)(uint64_t a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v4 = sub_1D726203C();
  v5 = objc_opt_self();
  v6 = [v5 fontWithName:v4 size:a2];

  if (!v6)
  {
    v6 = [v5 systemFontOfSize_];
  }

  v7 = [v3 scaledFontForFont_];

  return v7;
}

uint64_t sub_1D5F5E180@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_1D5F5E1E8(uint64_t *a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = a1[1];
  swift_beginAccess();
  *a2 = v5;
  *a3 = v6;
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_1D5F5E2F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

uint64_t FormatTextNodeAlternative.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _s8NewsFeed25FormatTextNodeAlternativeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D72646CC()) && (v10 = v5, v11 = v2, , , v7 = static FormatTextContent.== infix(_:_:)(&v11, &v10), , , (v7))
  {
    v10 = v4;
    v11 = v3;

    v8 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v11, &v10);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1D5F5E500(uint64_t a1)
{
  result = sub_1D5F5E528();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F5E528()
{
  result = qword_1EC881658;
  if (!qword_1EC881658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881658);
  }

  return result;
}

unint64_t sub_1D5F5E57C(void *a1)
{
  a1[1] = sub_1D5CE5E78();
  a1[2] = sub_1D5F5E5B4();
  result = sub_1D5F5E608();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F5E5B4()
{
  result = qword_1EDF0BF30;
  if (!qword_1EDF0BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BF30);
  }

  return result;
}

unint64_t sub_1D5F5E608()
{
  result = qword_1EC881660;
  if (!qword_1EC881660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881660);
  }

  return result;
}

uint64_t sub_1D5F5E678()
{
  type metadata accessor for DebugFormatLogger();
  v0 = swift_allocObject();
  result = sub_1D5F5E728();
  qword_1EC9BA710 = v0;
  return result;
}

uint64_t sub_1D5F5E6B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F5E728()
{
  v1 = v0;
  v2 = sub_1D726307C();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v15 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v9, v10);
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D5B5E158(0, &qword_1EC881668, sub_1D5F5FB64, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v11 = sub_1D725B2FC();
  v12 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v11;
  *(v0 + 24) = v12;
  sub_1D5B5E158(0, &unk_1EDF19B40, MEMORY[0x1E69D6388], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7273AE0;
  sub_1D725A78C();
  v18 = v13;
  sub_1D5B73710(&qword_1EDF3BDF0, MEMORY[0x1E69D6388]);
  sub_1D5B6BD6C(0);
  sub_1D5B73710(&qword_1EDF1B5C0, sub_1D5B6BD6C);
  sub_1D7263B6C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + 32) = sub_1D725A7AC();
  sub_1D5B5DA7C();
  sub_1D7261AEC();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D5B73710(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  sub_1D5B631E8(0);
  sub_1D5B73710(&qword_1EDF1AE80, sub_1D5B631E8);
  sub_1D7263B6C();
  (*(v16 + 104))(v15, *MEMORY[0x1E69E8090], v17);
  *(v1 + 40) = sub_1D72630BC();
  return v1;
}

uint64_t sub_1D5F5EBA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a1;
  v45 = sub_1D7261ABC();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v10);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D7261B2C();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v12);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725891C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v37 - v21;
  v42 = &v37 - v21;
  sub_1D725890C();
  v38 = sub_1D5F5F1C0(a2, a3, a4, a5, v5);
  v24 = v23;
  v40 = *(v5 + 40);
  v25 = v14;
  (*(v15 + 16))(v18, v22, v14);
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = (v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v15 + 32))(v29 + v26, v18, v25);
  v30 = (v29 + v27);
  *v30 = v38;
  v30[1] = v24;
  v31 = v41;
  *(v29 + v28) = v41;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;
  aBlock[4] = sub_1D5F5F790;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_10;
  v32 = _Block_copy(aBlock);
  sub_1D5F5F838(v31);

  v33 = v39;
  sub_1D7261AEC();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1D5B73710(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B73710(&qword_1EDF1B560, sub_1D5B73908);
  v34 = v43;
  v35 = v45;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v33, v34, v32);
  _Block_release(v32);
  (*(v47 + 8))(v34, v35);
  (*(v44 + 8))(v33, v46);
  (*(v15 + 8))(v42, v25);
}

uint64_t sub_1D5F5EFFC()
{

  sub_1D725B32C();
}

uint64_t sub_1D5F5F160()
{

  sub_1D725BFFC();
}

uint64_t sub_1D5F5F1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && ((v10 = CACurrentMediaTime(), sub_1D725A76C(), swift_beginAccess(), v11 = *(a5 + 24), v12 = 0.0, !*(v11 + 16)) || (v13 = sub_1D5B69D90(a1, a2), (v14 & 1) == 0) ? (v15 = 1) : (v15 = 0, v12 = *(*(v11 + 56) + 8 * v13)), swift_endAccess(), swift_beginAccess(), sub_1D607E620(a1, a2), swift_endAccess(), sub_1D725A77C(), (v15 & 1) == 0))
  {
    sub_1D5B5E158(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7270C10;
    v17 = MEMORY[0x1E69E6438];
    *(v16 + 56) = MEMORY[0x1E69E63B0];
    *(v16 + 64) = v17;
    *(v16 + 32) = (v10 - v12) * 1000.0;
    *(v16 + 96) = MEMORY[0x1E69E6158];
    *(v16 + 104) = sub_1D5B7E2C0();
    *(v16 + 72) = a3;
    *(v16 + 80) = a4;

    return sub_1D72620BC();
  }

  else
  {
  }

  return a3;
}

uint64_t sub_1D5F5F398(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D7261ABC();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D7261B2C();
  v12 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D725891C();
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a1, v18);
  type metadata accessor for DebugFormatLogEntry();
  swift_allocObject();

  sub_1D5F5F838(a4);
  v22 = sub_1D6182BCC(v20, a2, a3, a4);
  sub_1D5F5FB48(a4);
  sub_1D5B5DA7C();
  v23 = sub_1D726308C();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v22;
  aBlock[4] = sub_1D5F5FB5C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_10_0;
  v26 = _Block_copy(aBlock);

  sub_1D7261AEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B73710(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  sub_1D5B73908();
  sub_1D5B73710(&qword_1EDF1B560, sub_1D5B73908);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v15, v11, v26);
  _Block_release(v26);

  (*(v29 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v28);
}

uint64_t sub_1D5F5F790()
{
  v1 = *(sub_1D725891C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *v5;
  v8 = v5[1];

  return sub_1D5F5F398(v0 + v2, v7, v8, v6);
}

id sub_1D5F5F838(id result)
{
  if (result - 1 >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D5F5F84C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D5E42B34();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D72816C0;
    *(inited + 32) = a2;

    v5 = sub_1D725B30C();
    sub_1D6986C50(inited);
    v5(&v6, 0);
  }

  return result;
}

uint64_t sub_1D5F5F928(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1D725895C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    sub_1D725894C();
    a1 = sub_1D725893C();
    v11 = v12;
    (*(v7 + 8))(v10, v6);
  }

  v13 = CACurrentMediaTime();
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v14 = qword_1EC9BA710;

  sub_1D725A76C();

  swift_beginAccess();
  if (!*(*(v14 + 24) + 16))
  {
    swift_endAccess();
LABEL_11:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v14 + 24);
    *(v14 + 24) = 0x8000000000000000;
    sub_1D6D78B1C(a1, v11, isUniquelyReferenced_nonNull_native, v13);
    *(v14 + 24) = v19;
    swift_endAccess();
    goto LABEL_12;
  }

  sub_1D5B69D90(a1, v11);
  v16 = v15;
  swift_endAccess();
  if (v16 & 1) == 0 || (a3)
  {
    goto LABEL_11;
  }

LABEL_12:

  sub_1D725A77C();

  return a1;
}

void sub_1D5F5FB48(id a1)
{
  if (a1 - 1 >= 4)
  {
  }
}

unint64_t sub_1D5F5FBB4()
{
  result = qword_1EC881688;
  if (!qword_1EC881688)
  {
    sub_1D5F5FC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881688);
  }

  return result;
}

void sub_1D5F5FC0C()
{
  if (!qword_1EC881690)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881690);
    }
  }
}

uint64_t sub_1D5F5FC5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F60660();
  *a1 = result;
  return result;
}

void sub_1D5F5FC8C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "unusedProperties";
  v4 = 0xD00000000000001CLL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = "duplicateNewsroomIdentifiers";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "bility-news-plus-via-hardware";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t sub_1D5F5FD98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "unusedProperties";
  v4 = 0xD00000000000001CLL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0xD000000000000028;
  }

  if (v2 == 1)
  {
    v6 = "unusedProperties";
  }

  else
  {
    v6 = "duplicateNewsroomIdentifiers";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "bility-news-plus-via-hardware";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000028;
    v3 = "duplicateNewsroomIdentifiers";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "bility-news-plus-via-hardware";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D5F5FE70()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F5FF0C()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F5FF94()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5F60040()
{
  result = qword_1EC881698;
  if (!qword_1EC881698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881698);
  }

  return result;
}

unint64_t sub_1D5F60094()
{
  v1 = 0xD000000000000024;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000028;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1D5F600EC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5F602A0();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC881670 = result;
  return result;
}

void sub_1D5F602A0()
{
  if (!qword_1EDF45BA8)
  {
    v0 = sub_1D725986C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45BA8);
    }
  }
}

uint64_t sub_1D5F602F8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5F602A0();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC881678 = result;
  return result;
}

uint64_t sub_1D5F604AC()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D72597FC();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0], v7);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v11[15] = 0;
  sub_1D5F602A0();
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC881680 = result;
  return result;
}

uint64_t sub_1D5F60660()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5F606AC()
{
  sub_1D72596FC();
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = byte_1F50F7A00[v0 + 32];
    sub_1D72596DC();
    if (v4)
    {
      if (v4 == 1)
      {
        if (qword_1EC87D4A8 == -1)
        {
          goto LABEL_13;
        }

LABEL_9:
        swift_once();
        goto LABEL_13;
      }

      if (qword_1EC87D4B0 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1EC87D4A0 != -1)
    {
      goto LABEL_9;
    }

LABEL_13:

    sub_1D72596CC();

    if (v7 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998484(0, *(v1 + 16) + 1, 1);
      }

      v3 = *(v1 + 16);
      v2 = *(v1 + 24);
      if (v3 >= v2 >> 1)
      {
        sub_1D6998484((v2 > 1), v3 + 1, 1);
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + v3 + 32) = v4;
    }

    ++v0;
  }

  while (v0 != 3);
  v5 = sub_1D62DCBC0(v1);

  return v5;
}

unint64_t sub_1D5F608B4()
{
  result = qword_1EC8816A0;
  if (!qword_1EC8816A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816A0);
  }

  return result;
}

uint64_t FormatScoreDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatScoreDataVisualization.umcIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatScoreDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatScoreDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t FormatScoreDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatScoreDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t FormatScoreDataVisualization.traits.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

void *FormatScoreDataVisualization.__allocating_init(tagIdentifier:umcIdentifier:selectors:properties:query:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  swift_beginAccess();
  v17[6] = a5;
  swift_beginAccess();
  v17[7] = a6;
  swift_beginAccess();
  v17[8] = a7;
  v17[9] = a8;
  swift_beginAccess();
  v17[10] = a9;
  return v17;
}

void *FormatScoreDataVisualization.init(tagIdentifier:umcIdentifier:selectors:properties:query:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  swift_beginAccess();
  v9[6] = a5;
  swift_beginAccess();
  v9[7] = a6;
  swift_beginAccess();
  v9[8] = a7;
  v9[9] = a8;
  swift_beginAccess();
  v9[10] = a9;
  return v9;
}

uint64_t sub_1D5F60E78()
{
  v1 = *v0;
  v2 = 0x746E656449676174;
  v3 = 0x69747265706F7270;
  v4 = 0x7972657571;
  if (v1 != 4)
  {
    v4 = 0x737469617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E656449636D75;
  if (v1 != 1)
  {
    v5 = 0x726F7463656C6573;
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

uint64_t sub_1D5F60F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F6272C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F60F64(uint64_t a1)
{
  v2 = sub_1D5E1C734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F60FA0(uint64_t a1)
{
  v2 = sub_1D5E1C734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatScoreDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatScoreDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatScoreDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5F623D8(0, &qword_1EDF025B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C734();
  sub_1D7264B5C();
  v20 = 0;
  sub_1D72643FC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v20 = 1;
  sub_1D72643FC();
  swift_beginAccess();
  if (*(v3[6] + 16))
  {

    sub_1D5E06A44(v12, v10, 2);
  }

  swift_beginAccess();
  v13 = v3[7];
  if (*(v13 + 16))
  {
    v18[0] = 3;
    v19 = v13;
    sub_1D5F62238();
    sub_1D5E4C584();
    sub_1D5E4C5D4();

    sub_1D72647EC();
  }

  swift_beginAccess();
  v14 = v3[8];
  v15 = v3[9];

  sub_1D5EAEEDC(v14, v15, 4);

  swift_beginAccess();
  v16 = v3[10];
  v17 = *(v16 + 16);

  if (v17)
  {
    sub_1D5E06804(v16, v10, 5);
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t FormatScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatScoreDataVisualization.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v50 = v2;
  v51 = v5;
  sub_1D5F622AC();
  v44 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E18934();
  v47 = v9;
  v43 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v13 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F623D8(0, &qword_1EDF19BD8, MEMORY[0x1E69E6F48]);
  v18 = v17;
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v42 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C734();
  v22 = v50;
  v23 = v1;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
    v25 = a1;
  }

  else
  {
    LOBYTE(v52) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v24;
    LOBYTE(v52) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v27;
    v28 = v21;
    LOBYTE(v52) = 2;
    v29 = sub_1D726434C();
    v50 = v18;
    if (v29)
    {
      v55 = 2;
      sub_1D5F6243C(&qword_1EDF3BE00, 255, sub_1D5C8CD38);
      v30 = v13;
      sub_1D726431C();
      v31 = v28;
      v32 = sub_1D725A74C();
      (v46[1])(v16, v30);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CD0];
      v31 = v21;
    }

    v3[6] = v32;
    LOBYTE(v52) = 3;
    v33 = sub_1D726434C();
    v46 = a1;
    if (v33)
    {
      v55 = 3;
      sub_1D5F6243C(&qword_1EDF3BD70, 255, sub_1D5E18934);
      v34 = v47;
      v35 = v48;
      sub_1D726431C();
      v36 = sub_1D725A74C();
      (*(v43 + 8))(v35, v34);
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    v3[7] = v36;
    v55 = 4;
    if (sub_1D726434C())
    {
      v54 = 4;
      sub_1D726431C();
      v37 = v52;
      v38 = v53;
    }

    else
    {
      v37 = 0;
      v38 = 0xE000000000000000;
    }

    v3[8] = v37;
    v3[9] = v38;
    LOBYTE(v52) = 5;
    if (sub_1D726434C())
    {
      v55 = 5;
      sub_1D5F6243C(&qword_1EC8816A8, 255, sub_1D5F622AC);
      v39 = v44;
      v40 = v45;
      sub_1D726431C();
      v41 = sub_1D725A74C();
      (*(v42 + 8))(v40, v39);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CD0];
    }

    (*(v49 + 8))(v31, v50);
    v23[10] = v41;
    v25 = v46;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v23;
}

void *sub_1D5F61B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

NewsFeed::FormatScoreDataVisualizationTrait_optional __swiftcall FormatScoreDataVisualizationTrait.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatScoreDataVisualizationTrait.rawValue.getter()
{
  if (*v0)
  {
    return 0x646165687473616DLL;
  }

  else
  {
    return 0x6465727574616566;
  }
}

uint64_t sub_1D5F61C58(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5F61CE0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

void sub_1D5F61D40(uint64_t *a1@<X8>)
{
  v2 = 0x6465727574616566;
  if (*v1)
  {
    v2 = 0x646165687473616DLL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t sub_1D5F61E28()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5F61EA0()
{
  sub_1D72621EC();
}

uint64_t sub_1D5F61EFC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t static FormatScoreDataVisualizationTrait.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5F61FF8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D5F62080(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2)
  {
    v4 = 0x646165687473616DLL;
  }

  else
  {
    v4 = 0x6465727574616566;
  }

  if (v3 == v4)
  {
    swift_bridgeObjectRelease_n();
    v5 = 1;
  }

  else
  {
    v6 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1D5F62118(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x646165687473616DLL;
  }

  else
  {
    v2 = 0x6465727574616566;
  }

  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2 == v3)
  {
    swift_bridgeObjectRelease_n();
    v4 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
    swift_bridgeObjectRelease_n();
    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D5F621B0(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    v3 = 0x646165687473616DLL;
  }

  else
  {
    v3 = 0x6465727574616566;
  }

  if (v2)
  {
    v4 = 0x646165687473616DLL;
  }

  else
  {
    v4 = 0x6465727574616566;
  }

  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  swift_bridgeObjectRelease_n();
  return v5 & 1;
}

unint64_t sub_1D5F62238()
{
  result = qword_1EC87F9C0;
  if (!qword_1EC87F9C0)
  {
    sub_1D5F623D8(255, &qword_1EDF025B0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F9C0);
  }

  return result;
}

void sub_1D5F622AC()
{
  if (!qword_1EDF17F58)
  {
    sub_1D5F62330();
    sub_1D5E1C788();
    sub_1D5F62384();
    v0 = sub_1D725A75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17F58);
    }
  }
}

unint64_t sub_1D5F62330()
{
  result = qword_1EDF07D50;
  if (!qword_1EDF07D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D50);
  }

  return result;
}

unint64_t sub_1D5F62384()
{
  result = qword_1EDF07D60;
  if (!qword_1EDF07D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D60);
  }

  return result;
}

void sub_1D5F623D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1C734();
    v7 = a3(a1, &type metadata for FormatScoreDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F6243C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D5F62484(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5F6243C(&qword_1EDF217D0, a2, type metadata accessor for FormatScoreDataVisualization);
  a1[2] = sub_1D5F6243C(&qword_1EDF0A850, v3, type metadata accessor for FormatScoreDataVisualization);
  result = sub_1D5F6243C(&qword_1EC8816B0, v4, type metadata accessor for FormatScoreDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F62554()
{
  result = qword_1EDF07D58;
  if (!qword_1EDF07D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D58);
  }

  return result;
}

unint64_t sub_1D5F62628()
{
  result = qword_1EC8816B8;
  if (!qword_1EC8816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816B8);
  }

  return result;
}

unint64_t sub_1D5F62680()
{
  result = qword_1EDF217D8;
  if (!qword_1EDF217D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217D8);
  }

  return result;
}

unint64_t sub_1D5F626D8()
{
  result = qword_1EDF217E0;
  if (!qword_1EDF217E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217E0);
  }

  return result;
}

uint64_t sub_1D5F6272C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449676174 && a2 == 0xED00007265696669;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656449636D75 && a2 == 0xED00007265696669 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737469617274 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

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

unint64_t sub_1D5F62940()
{
  result = qword_1EC8816C0;
  if (!qword_1EC8816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8816C0);
  }

  return result;
}

uint64_t sub_1D5F62998(uint64_t a1)
{
  v18 = type metadata accessor for FormatInspectionItem(0);
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5446C(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, v11, 0);
    v12 = v19;
    v13 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v14 = *(v2 + 72);
    do
    {
      sub_1D5C10B78(v13, v5, type metadata accessor for FormatInspectionItem);
      swift_dynamicCast();
      v19 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D69972A4(v15 > 1, v16 + 1, 1);
        v12 = v19;
      }

      *(v12 + 16) = v16 + 1;
      sub_1D5F77210(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_1D5F62BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D6997338(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_1D5B68374(v4, v11);
      sub_1D5B49474(0, &qword_1EC880AD0);
      sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D6997338((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D5F62E2C(uint64_t a1, unint64_t *a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v22 = a5;
  sub_1D5F77604(0, a2, a3);
  v21 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D699775C(0, v13, 0);
    v14 = v26;
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_1D5F7737C(v15, v12, a2, a3);
      v26 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D699775C((v17 > 1), v18 + 1, 1);
        v14 = v26;
      }

      v24 = v21;
      v25 = v22();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
      sub_1D5F7737C(v12, boxed_opaque_existential_1, a2, a3);
      *(v14 + 16) = v18 + 1;
      sub_1D5B63F14(&v23, v14 + 40 * v18 + 32);
      sub_1D5F77480(v12, a2, a3);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_1D5F62FF8(uint64_t a1)
{
  sub_1D5C2C40C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D699775C(0, v8, 0);
    v9 = v19;
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D5C10B78(v10, v7, sub_1D5C2C40C);
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D699775C((v12 > 1), v13 + 1, 1);
        v9 = v19;
      }

      v17 = v3;
      v18 = sub_1D5F7730C();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_1D5C10B78(v7, boxed_opaque_existential_1, sub_1D5C2C40C);
      *(v9 + 16) = v13 + 1;
      sub_1D5B63F14(&v16, v9 + 40 * v13 + 32);
      sub_1D5C10CF8(v7, sub_1D5C2C40C);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}