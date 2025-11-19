uint64_t sub_1D3024A68()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];

  sub_1D3027024(v2, v3, v3);
  v0[14] = 0;
  v4 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1D3024B1C, v4, 0);
}

uint64_t sub_1D3024B1C()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D3024B8C()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_1D3024BFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D3024C1C, v1, 0);
}

uint64_t sub_1D3024C1C()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Response for license with ID: %llu", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = v0[3];

  sub_1D30E91FC();

  v0[4] = sub_1D30E91EC();
  v8 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3024D84, v8, v7);
}

uint64_t sub_1D3024D84()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = sub_1D3029B44(v3, v2, v3, v2);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D3024E18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3024E3C, v2, 0);
}

uint64_t sub_1D3024E3C()
{
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313888);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove record of license with ID: %llu", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = v0[4];

  sub_1D30E91FC();

  v0[5] = sub_1D30E91EC();
  v8 = sub_1D30E91AC();

  return MEMORY[0x1EEE6DFA0](sub_1D3024FA4, v8, v7);
}

uint64_t sub_1D3024FA4()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_1D30275C0(v3, v2, v2, v4);
  v5 = v0[1];

  return v5();
}

void sub_1D3025038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B88, &unk_1D30F3240);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  swift_beginAccess();
  sub_1D3024214(a1, v5);
  swift_endAccess();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D2FF14DC(v5, &qword_1EC749B88, &unk_1D30F3240);
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v11 = sub_1D30E8B3C();
    __swift_project_value_buffer(v11, qword_1EE313888);
    v12 = sub_1D30E8B1C();
    v13 = sub_1D30E92BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_1D2FD9000, v12, v13, "No pending continuation is available for the license with the ID “%llu”.", v14, 0xCu);
      MEMORY[0x1D38B3760](v14, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (qword_1EE313880 != -1)
    {
      swift_once();
    }

    v15 = sub_1D30E8B3C();
    __swift_project_value_buffer(v15, qword_1EE313888);
    v16 = sub_1D30E8B1C();
    v17 = sub_1D30E92BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = a1;
      _os_log_impl(&dword_1D2FD9000, v16, v17, "Resuming the continuation for the license ID “%llu”…", v18, 0xCu);
      MEMORY[0x1D38B3760](v18, -1, -1);
    }

    v19[1] = a1;
    sub_1D30E91DC();
    (*(v7 + 8))(v10, v6);
  }
}

char *sub_1D3025380()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v45 - v10;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v12 = sub_1D30E8B3C();
  v13 = __swift_project_value_buffer(v12, qword_1EE313888);
  v14 = sub_1D30E928C();
  v45[2] = v13;
  v15 = sub_1D30E8B1C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1D2FD9000, v15, v14, "New license ID", v16, 2u);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  v17 = *(v2 + 128);
  sub_1D30E8E7C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  type metadata accessor for LicenseRecord(0);
  v19 = sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v21 = sub_1D30E8E1C();
  (*(v8 + 8))(v11, v7);

  if (v1)
  {
    return v19;
  }

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_21:

    v24 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v35 = sub_1D30D9594(v24);

    v49 = 0;
    MEMORY[0x1D38B3770](&v49, 8);
    v19 = v49 >> 1;
    if (*(v35 + 16))
    {
      v36 = v35 + 56;
      do
      {
        v37 = *(v35 + 40);
        v38 = sub_1D30E989C();
        v39 = -1 << *(v35 + 32);
        v40 = v38 & ~v39;
        if (((*(v36 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          break;
        }

        v41 = ~v39;
        while (*(*(v35 + 48) + 8 * v40) != v19)
        {
          v40 = (v40 + 1) & v41;
          if (((*(v36 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v49 = 0;
        MEMORY[0x1D38B3770](&v49, 8);
        v19 = v49 >> 1;
      }

      while (*(v35 + 16));
    }

LABEL_30:

    v42 = sub_1D30E927C();
    v43 = sub_1D30E8B1C();
    if (os_log_type_enabled(v43, v42))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      *(v44 + 4) = v19;
      _os_log_impl(&dword_1D2FD9000, v43, v42, "The license ID “%d” has been newly generated.", v44, 8u);
      MEMORY[0x1D38B3760](v44, -1, -1);
    }

    return v19;
  }

  v22 = sub_1D30E958C();
  if (!v22)
  {
    goto LABEL_21;
  }

LABEL_8:
  v47 = v19;
  v49 = v20;
  result = sub_1D3028B74(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v45[1] = 0;
    v24 = v49;
    v25 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v26 = 0;
      do
      {
        v27 = v25;
        v48 = MEMORY[0x1D38B29E0](v26);
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
        swift_unknownObjectRetain();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();
        swift_unknownObjectRelease_n();

        v28 = v48;
        v49 = v24;
        v30 = *(v24 + 16);
        v29 = *(v24 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D3028B74((v29 > 1), v30 + 1, 1);
          v24 = v49;
        }

        ++v26;
        *(v24 + 16) = v30 + 1;
        *(v24 + 8 * v30 + 32) = v28;
        v25 = v27;
      }

      while (v22 != v26);
    }

    else
    {
      v46 = v21;
      v31 = 32;
      do
      {
        v48 = *(v46 + v31);
        swift_getKeyPath();
        sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
        swift_retain_n();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v32 = v48;
        v49 = v24;
        v34 = *(v24 + 16);
        v33 = *(v24 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1D3028B74((v33 > 1), v34 + 1, 1);
          v24 = v49;
        }

        *(v24 + 16) = v34 + 1;
        *(v24 + 8 * v34 + 32) = v32;
        v31 += 8;
        --v22;
      }

      while (v22);
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3025A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v43[1] = a6;
  v46 = a5;
  v43[0] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v43 - v16;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v47 = a1;
  v45 = a4;
  v18 = sub_1D30E8B3C();
  __swift_project_value_buffer(v18, qword_1EE313888);
  v19 = sub_1D30E928C();
  v20 = sub_1D30E8B1C();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v44 = v13;
    v22 = a2;
    v23 = v21;
    v24 = swift_slowAlloc();
    v49 = v24;
    *v23 = 134218242;
    v25 = v47;
    *(v23 + 4) = v47;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v49);
    _os_log_impl(&dword_1D2FD9000, v20, v19, "With record of license with ID: %llu body: %{public}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1D38B3760](v24, -1, -1);
    v26 = v23;
    a2 = v22;
    v13 = v44;
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  else
  {

    v25 = v47;
  }

  v27 = *(a2 + 128);
  v28 = sub_1D30E8E7C();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v28);
  v43[-2] = v25;
  v48 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v29 - 8) + 56))(v12, 0, 1, v29);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v30 = v43[2];
  v31 = sub_1D30E8E1C();
  if (!v30)
  {
    v34 = v31;
    (*(v14 + 8))(v17, v13);

    v49 = v34;
    v35 = sub_1D3028020(sub_1D30E701C);
    v36 = v45;
    if (!v35)
    {

      type metadata accessor for LicenseManagerError();
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
      swift_allocError();
      *v40 = v47;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_9;
    }

    v37 = v35;
    if (v49 >> 62)
    {
      v41 = sub_1D30E958C();

      if (v41)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v38 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v38)
      {
LABEL_14:
        type metadata accessor for LicenseManagerError();
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
        swift_allocError();
        *v39 = v47;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_8;
      }
    }

    v42 = v46;
    sub_1D3020E44(v37, v43[0], v36, v46);
    sub_1D30E8E7C();
    sub_1D30E8E0C();

    v32 = v42;
    return sub_1D302A2B8(v32);
  }

  (*(v14 + 8))(v17, v13);

LABEL_8:

LABEL_9:
  v32 = v46;
  return sub_1D302A2B8(v32);
}

uint64_t sub_1D302606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v39 = a4;
  v35 = a3;
  v36 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v14 = &v34 - v13;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v40 = a1;
  v15 = sub_1D30E8B3C();
  __swift_project_value_buffer(v15, qword_1EE313888);
  v16 = sub_1D30E928C();
  v17 = sub_1D30E8B1C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v18 = 134218242;
    v20 = v40;
    *(v18 + 4) = v40;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v42);
    _os_log_impl(&dword_1D2FD9000, v17, v16, "With record of license with ID: %llu body: %{public}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38B3760](v19, -1, -1);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  else
  {

    v20 = v40;
  }

  v21 = *(a2 + 128);
  v22 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v22);
  *(&v34 - 2) = v20;
  v41 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v24 = v38;
  v25 = sub_1D30E8E1C();
  (*(v11 + 8))(v14, v37);

  v26 = v39;
  if (!v24)
  {
    v42 = v25;
    v27 = sub_1D3028020(sub_1D30E701C);
    if (v27)
    {
      v28 = v27;
      if (v42 >> 62)
      {
        v32 = sub_1D30E958C();

        if (v32)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v29 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v29)
        {
LABEL_10:
          type metadata accessor for LicenseManagerError();
          sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
          swift_allocError();
          *v30 = v40;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
LABEL_14:

          return sub_1D302A2B8(v26);
        }
      }

      sub_1D3022A94(v28, v35, v26);
      sub_1D30E8E7C();
      sub_1D30E8E0C();

      goto LABEL_14;
    }

    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    *v31 = v40;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return sub_1D302A2B8(v26);
}

uint64_t sub_1D30265EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a6;
  v58 = a4;
  LODWORD(v60) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v57 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v13 = *(v62 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v16 = &v57 - v15;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v66 = a1;
  v17 = sub_1D30E8B3C();
  v18 = __swift_project_value_buffer(v17, qword_1EE313888);
  v19 = sub_1D30E928C();
  *&v59 = v18;
  v20 = sub_1D30E8B1C();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v61 = a5;
    v22 = v21;
    v23 = a2;
    v24 = swift_slowAlloc();
    *&v68 = v24;
    *v22 = 134218242;
    v25 = v66;
    *(v22 + 4) = v66;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v68);
    _os_log_impl(&dword_1D2FD9000, v20, v19, "With record of license with ID: %llu body: %{public}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v26 = v24;
    a2 = v23;
    MEMORY[0x1D38B3760](v26, -1, -1);
    v27 = v22;
    a5 = v61;
    MEMORY[0x1D38B3760](v27, -1, -1);
  }

  else
  {

    v25 = v66;
  }

  v28 = *(a2 + 128);
  v29 = sub_1D30E8E7C();
  v64 = &v57;
  MEMORY[0x1EEE9AC00](v29);
  *(&v57 - 2) = v25;
  v72 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v31 = v63;
  v32 = sub_1D30E8E1C();
  v63 = v31;
  if (v31)
  {
    (*(v13 + 8))(v16, v62);
  }

  v34 = v32;
  (*(v13 + 8))(v16, v62);

  v77 = v34;
  v35 = sub_1D3028020(sub_1D30E701C);
  if (v35)
  {
    v36 = v35;
    if (v77 >> 62)
    {
      v40 = sub_1D30E958C();

      if (v40)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v37 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v37)
      {
LABEL_11:
        type metadata accessor for LicenseManagerError();
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
        swift_allocError();
        *v38 = v66;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_16:
      }
    }

    v61 = a5;
    v41 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13LicenseRecord___observationRegistrar;
    *&v68 = v36;
    swift_getKeyPath();
    v66 = sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D2FF7FF8();
    sub_1D30E8F0C();

    v42 = v71 & 0x3000000000000000;
    sub_1D2FF804C(v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71);
    if (v42)
    {
      v63 = type metadata accessor for LicenseManagerError();
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
      swift_allocError();
      v44 = v43;
      *&v68 = v36;
      swift_getKeyPath();
      v57 = v41;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v45 = v70;
      v62 = v71;
      v67 = v36;
      v60 = v68;
      v59 = v69;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v46 = v67;
      v47 = v59;
      *v44 = v60;
      *(v44 + 16) = v47;
      v48 = v62;
      *(v44 + 32) = v45;
      *(v44 + 40) = v48;
      *(v44 + 48) = v46;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v49 = sub_1D30E8B1C();
      v50 = sub_1D30E92BC();
      v51 = os_log_type_enabled(v49, v50);
      if (v60)
      {
        if (v51)
        {
          v52 = swift_slowAlloc();
          *v52 = 134217984;
          *(v52 + 4) = v58;
          _os_log_impl(&dword_1D2FD9000, v49, v50, "Removing the record of the license with the ID “%llu” from the database because a continuation is about to take delivery of the license…", v52, 0xCu);
          MEMORY[0x1D38B3760](v52, -1, -1);
        }

        v53 = *(v61 + 128);
        sub_1D30E8E7C();
        sub_1D30E8E3C();
      }

      else
      {
        v54 = v65;
        if (v51)
        {
          v55 = swift_slowAlloc();
          *v55 = 134217984;
          *(v55 + 4) = v58;
          _os_log_impl(&dword_1D2FD9000, v49, v50, "Marking the license with the ID “%llu” as having been delivered…", v55, 0xCu);
          MEMORY[0x1D38B3760](v55, -1, -1);
        }

        v73 = v54;
        v74 = 0u;
        v75 = 0u;
        v76 = 0x1000000000000000;
        *&v68 = v36;
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v57 - 2) = v36;
        *(&v57 - 1) = &v73;

        sub_1D30E8ADC();
      }

      sub_1D30E8E7C();
      sub_1D30E8E0C();
    }

    goto LABEL_16;
  }

  type metadata accessor for LicenseManagerError();
  sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
  swift_allocError();
  *v39 = v66;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t sub_1D3027024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v9 = *(v33 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v32 - v11;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v13 = sub_1D30E8B3C();
  __swift_project_value_buffer(v13, qword_1EE313888);
  v14 = sub_1D30E928C();
  v15 = sub_1D30E8B1C();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v9;
    v18 = a1;
    v19 = v17;
    v38 = v17;
    *v16 = 134218242;
    *(v16 + 4) = v18;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v38);
    _os_log_impl(&dword_1D2FD9000, v15, v14, "With record of license with ID: %llu body: %{public}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    a1 = v18;
    v9 = v35;
    MEMORY[0x1D38B3760](v20, -1, -1);
    MEMORY[0x1D38B3760](v16, -1, -1);
  }

  v21 = *(a2 + 128);
  v22 = sub_1D30E8E7C();
  v35 = &v32;
  MEMORY[0x1EEE9AC00](v22);
  *(&v32 - 2) = a1;
  v37 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v24 = v34;
  v25 = sub_1D30E8E1C();
  (v9[1])(v12, v33);
  if (v24)
  {
    goto LABEL_6;
  }

  v38 = v25;
  if (!sub_1D3028020(sub_1D30E701C))
  {

    type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    *v28 = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  if (v38 >> 62)
  {
    v30 = sub_1D30E958C();

    if (v30)
    {
      goto LABEL_10;
    }

LABEL_14:
    v31 = *(v36 + 128);
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    sub_1D30E8E7C();
    sub_1D30E8E0C();

    goto LABEL_6;
  }

  v26 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v26)
  {
    goto LABEL_14;
  }

LABEL_10:
  type metadata accessor for LicenseManagerError();
  sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
  swift_allocError();
  *v27 = a1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_6:
}

uint64_t sub_1D30275C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a1;
  v38 = a4;
  v5 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v12 = *(v40 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v40);
  v15 = &v38 - v14;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v16 = sub_1D30E8B3C();
  __swift_project_value_buffer(v16, qword_1EE313888);
  v17 = sub_1D30E928C();
  v18 = sub_1D30E8B1C();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v12;
    v21 = v20;
    v46 = v20;
    *v19 = 134218242;
    v22 = v44;
    *(v19 + 4) = v44;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v46);
    _os_log_impl(&dword_1D2FD9000, v18, v17, "With record of license with ID: %llu body: %{public}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v12 = v42;
    MEMORY[0x1D38B3760](v21, -1, -1);
    MEMORY[0x1D38B3760](v19, -1, -1);
  }

  else
  {

    v22 = v44;
  }

  v23 = *(a2 + 128);
  v24 = sub_1D30E8E7C();
  v42 = &v38;
  MEMORY[0x1EEE9AC00](v24);
  *(&v38 - 2) = v22;
  v45 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v26 = v41;
  v27 = sub_1D30E8E1C();
  (v12[1])(v15, v40);
  if (!v26)
  {

    v46 = v27;
    v29 = sub_1D3028020(sub_1D30E701C);
    v30 = v43;
    if (!v29)
    {

      type metadata accessor for LicenseManagerError();
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
      swift_allocError();
      *v34 = v44;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v31 = v44;
    if (v46 >> 62)
    {
      v35 = sub_1D30E958C();

      if (v35)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v32 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v32)
      {
LABEL_12:
        type metadata accessor for LicenseManagerError();
        sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
        swift_allocError();
        *v33 = v31;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }

    v36 = *(v30 + 128);
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v37 = v39;
    sub_1D2FF5564(v39);
    sub_1D30E8E7C();
    sub_1D30E8E0C();

    sub_1D302B5DC(v37, v38, type metadata accessor for LicenseRecord.StaticRepresentation);
  }
}

uint64_t sub_1D3027C08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v25 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BA0, &qword_1D30F3250);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BA8, &qword_1D30F3258);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BB0, &qword_1D30F3260);
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v23 - v15;
  v17 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EC749BB8, &qword_1EC749BA8, &qword_1D30F3258);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v9 + 8))(v12, v8);
  v28 = v23;
  sub_1D30E87AC();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BC0, &qword_1D30F3268);
  v19 = v25;
  v25[3] = v18;
  v19[4] = sub_1D302A444(&qword_1EC749BC8, &qword_1EC749BC0, &qword_1D30F3268, sub_1D3029AC0);
  __swift_allocate_boxed_opaque_existential_0Tm(v19);
  sub_1D2FF1768(&qword_1EC749BE8, &qword_1EC749BB0, &qword_1D30F3260);
  sub_1D2FF1768(&qword_1EC749BF0, &qword_1EC749BA0, &qword_1D30F3250);
  v20 = v24;
  v21 = v27;
  sub_1D30E875C();
  (*(v26 + 8))(v7, v21);
  (*(v13 + 8))(v16, v20);
}

unint64_t sub_1D3028020(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  if (!(*v1 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1D302992C(a1);
    if (result)
    {
      return result;
    }

    v5 = *v1;
    if (*v1 >> 62)
    {
      if (v5 < 0)
      {
        v9 = *v1;
      }

      v10 = sub_1D30E958C();
      v7 = __OFSUB__(v10, 1);
      result = v10 - 1;
      if (!v7)
      {
        return sub_1D30287CC(result, a1);
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v7 = __OFSUB__(v6, 1);
      result = v6 - 1;
      if (!v7)
      {
        return sub_1D30287CC(result, a1);
      }
    }

    __break(1u);
    return result;
  }

  if (v3 < 0)
  {
    v8 = *v1;
  }

  result = sub_1D30E958C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1D30280C8()
{
  v1 = v0;
  v2 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LicenseManagerError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D302B574(v1, v9, type metadata accessor for LicenseManagerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v11 = *v9;
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_1D30E948C();
        v12 = "he license with the ID “";
        v13 = 0x1000000000000028;
      }

      else
      {
        v11 = *v9;
        v39 = 0;
        v40 = 0xE000000000000000;
        if (EnumCaseMultiPayload == 3)
        {
          sub_1D30E948C();
          v12 = "the license with the ID “";
          v13 = 0x100000000000002ALL;
        }

        else
        {
          sub_1D30E948C();
          v12 = "third-party host.";
          v13 = 0x100000000000002BLL;
        }
      }

      MEMORY[0x1D38B2610](v13, v12 | 0x8000000000000000);
      v38 = v11;
      v21 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v21);

      v22 = 0x20736177209D80E2;
      v23 = 0xAE002E646E756F66;
      goto LABEL_43;
    }

    if (EnumCaseMultiPayload)
    {
      v24 = *v9;
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x100000000000002ELL, 0x80000001D30EC1F0);
      v38 = v24;
      v17 = sub_1D30E977C();
LABEL_42:
      MEMORY[0x1D38B2610](v17, v25);

      v22 = 782074082;
      v23 = 0xA400000000000000;
LABEL_43:
      MEMORY[0x1D38B2610](v22, v23);
      return v39;
    }

    v15 = v9[1];
    if (!v15)
    {
      return 0xD00000000000002ALL;
    }

    v16 = *v9;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000032, 0x80000001D30EC290);
    v17 = v16;
LABEL_41:
    v25 = v15;
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D302B5DC(v9, v5, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0x1000000000000011, 0x80000001D30EC0E0);
      v18 = AssetPackRecord.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v18);

      MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EC100);
      v19 = v39;
      sub_1D302A30C(v5, type metadata accessor for AssetPackRecord.StaticRepresentation);
      return v19;
    }

    v26 = *v9;
    v27 = v9[1];
    v28 = v9[2];
    v29 = v9[3];
    v30 = v9[4];
    v31 = v9[5];
    v32 = v9[6];
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000029, 0x80000001D30EC080);
    v38 = v32;
    v33 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v33);

    MEMORY[0x1D38B2610](0x1000000000000020, 0x80000001D30EC0B0);
    v34 = (v31 >> 60) & 3;
    if (v34)
    {
      if (v34 != 1)
      {
        v36 = 0xE700000000000000;
        v35 = 0x676E69646E6550;
        goto LABEL_34;
      }

      v35 = 0x65726576696C6544;
    }

    else
    {
      v35 = 0x6574736575716552;
    }

    v36 = 0xE900000000000064;
LABEL_34:
    MEMORY[0x1D38B2610](v35, v36);

    MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
    sub_1D2FF804C(v26, v27, v28, v29, v30, v31);
    return v39;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v20 = *v9;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x100000000000004BLL, 0x80000001D30EC030);
    if (v20 > 2)
    {
      switch(v20)
      {
        case 3:
          v15 = 0xEA00000000007765;
          v17 = 0x6976655220707041;
          goto LABEL_41;
        case 4:
          v17 = 0xD000000000000012;
          v15 = 0x80000001D30EA750;
          goto LABEL_41;
        case 5:
          v15 = 0x80000001D30EA730;
          v17 = 0xD000000000000014;
          goto LABEL_41;
      }
    }

    else
    {
      switch(v20)
      {
        case 0:
          v15 = 0xE900000000000065;
          v17 = 0x726F745320707041;
          goto LABEL_41;
        case 1:
          v17 = 0x67696C4674736554;
          v15 = 0xEA00000000007468;
          goto LABEL_41;
        case 2:
          v15 = 0xEB00000000656863;
          v17 = 0x6143206C61636F4CLL;
          goto LABEL_41;
      }
    }

    result = sub_1D30E957C();
    __break(1u);
  }

  else if (EnumCaseMultiPayload == 8)
  {
    return 0x1000000000000039;
  }

  else
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t sub_1D30287CC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

id sub_1D3028864(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D30E906C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1D3028940(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D3028A38;

  return v7(a1);
}

uint64_t sub_1D3028A38()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_1D3028B30(size_t a1, int64_t a2, char a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749C08, &qword_1D30F32B0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1D3028B74(char *a1, int64_t a2, char a3)
{
  result = sub_1D30291A4(a1, a2, a3, *v3, &qword_1EC749B80, &qword_1D30F3238);
  *v3 = result;
  return result;
}

char *sub_1D3028BA4(char *a1, int64_t a2, char a3)
{
  result = sub_1D3028D64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D3028BC4(char *a1, int64_t a2, char a3)
{
  result = sub_1D3028F78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D3028BE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749C18, &qword_1D30F32C0, type metadata accessor for LicenseRecord.ElementID);
  *v3 = result;
  return result;
}

char *sub_1D3028C28(char *a1, int64_t a2, char a3)
{
  result = sub_1D3029084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D3028C48(char *a1, int64_t a2, char a3)
{
  result = sub_1D30291A4(a1, a2, a3, *v3, &qword_1EC749D00, &qword_1D30F3438);
  *v3 = result;
  return result;
}

size_t sub_1D3028C78(size_t a1, int64_t a2, char a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749CE0, &qword_1D30F33F0, type metadata accessor for AssetPackRecord.StaticRepresentation);
  *v3 = result;
  return result;
}

size_t sub_1D3028CBC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749CE8, &unk_1D30F33F8, MEMORY[0x1E69E83A8]);
  *v3 = result;
  return result;
}

size_t sub_1D3028D00(size_t a1, int64_t a2, char a3)
{
  result = sub_1D30292A0(a1, a2, a3, *v3, &qword_1EC749CF0, &qword_1D30F3428, type metadata accessor for LicenseRecord.StaticRepresentation);
  *v3 = result;
  return result;
}

char *sub_1D3028D44(char *a1, int64_t a2, char a3)
{
  result = sub_1D302947C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D3028D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749BF8, &unk_1D30F32A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D3028E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7497B8, &unk_1D30F3440);
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

char *sub_1D3028F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C98, &qword_1D30F33B8);
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

char *sub_1D3029084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C10, &qword_1D30F32B8);
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

char *sub_1D30291A4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

size_t sub_1D30292A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

char *sub_1D302947C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CF8, &qword_1D30F3430);
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

unint64_t sub_1D3029588(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D30E93EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_1D30E989C();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D302974C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D30E93EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D30E98AC();

      sub_1D30E90BC();
      v13 = sub_1D30E98EC();

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

uint64_t sub_1D302992C(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D30299A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1D2FF4800();
}

uint64_t type metadata accessor for LicenseManagerError()
{
  result = qword_1EC749D08;
  if (!qword_1EC749D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D3029A10()
{
  result = qword_1EC749BD0;
  if (!qword_1EC749BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749BB0, &qword_1D30F3260);
    sub_1D2FF1768(&qword_1EC749BD8, &qword_1EC749BA8, &qword_1D30F3258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749BD0);
  }

  return result;
}

unint64_t sub_1D3029AC0()
{
  result = qword_1EC749BE0;
  if (!qword_1EC749BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749BA0, &qword_1D30F3250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749BE0);
  }

  return result;
}

char *sub_1D3029B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v37[0] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v37 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v13 = v37 - v12;
  if (qword_1EE313880 != -1)
  {
    swift_once();
  }

  v14 = sub_1D30E8B3C();
  v15 = __swift_project_value_buffer(v14, qword_1EE313888);
  v16 = sub_1D30E928C();
  v37[1] = v15;
  v17 = sub_1D30E8B1C();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43[0] = v19;
    *v18 = 134218242;
    *(v18 + 4) = a1;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, v43);
    _os_log_impl(&dword_1D2FD9000, v17, v16, "With record of license with ID: %llu body: %{public}s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38B3760](v19, -1, -1);
    MEMORY[0x1D38B3760](v18, -1, -1);
  }

  v20 = *(a2 + 128);
  v21 = sub_1D30E8E7C();
  v40 = v37;
  MEMORY[0x1EEE9AC00](v21);
  v37[-2] = a1;
  v45 = type metadata accessor for LicenseRecord(0);
  sub_1D30E8ACC();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
  sub_1D302B150(&qword_1EE313B08, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8EBC();
  v23 = v39;
  v24 = sub_1D30E8E1C();
  (*(v10 + 8))(v13, v38);
  if (v23)
  {

LABEL_7:

    return v13;
  }

  v39 = v20;

  v46 = v24;
  v26 = sub_1D3028020(sub_1D30E701C);
  v27 = v41;
  if (!v26)
  {

    v13 = type metadata accessor for LicenseManagerError();
    sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
    swift_allocError();
    *v31 = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_7;
  }

  v28 = v26;
  if (v46 >> 62)
  {
    v32 = sub_1D30E958C();

    if (v32)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v29 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v29)
    {
LABEL_12:
      v13 = type metadata accessor for LicenseManagerError();
      sub_1D302B150(&qword_1EC749B98, 255, type metadata accessor for LicenseManagerError);
      swift_allocError();
      *v30 = a1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_7;
    }
  }

  v42 = v28;
  swift_getKeyPath();
  sub_1D302B150(&qword_1EE313B10, 255, type metadata accessor for LicenseRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D2FF7FF8();
  sub_1D30E8F0C();

  v13 = v43[0];
  if ((v44 & 0x3000000000000000) == 0x1000000000000000)
  {
    v33 = sub_1D30E8B1C();
    v34 = sub_1D30E92BC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v37[0];
      _os_log_impl(&dword_1D2FD9000, v33, v34, "Removing the record of the license with the ID “%llu” from the database…", v35, 0xCu);
      v27 = v41;
      MEMORY[0x1D38B3760](v35, -1, -1);
    }

    v36 = *(v27 + 128);
    sub_1D30E8E7C();
    sub_1D30E8E3C();
  }

  else
  {
    sub_1D2FF804C(v43[0], v43[1], v43[2], v43[3], v43[4], v44);
    v13 = 0;
  }

  sub_1D30E8E7C();
  sub_1D30E8E0C();

  return v13;
}

uint64_t sub_1D302A30C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D302A36C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1D2FF1804(a3, a4);

    sub_1D2FF1804(a5, a6);
  }
}

void sub_1D302A3D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1D2FF17B0(a3, a4);

    sub_1D2FF17B0(a5, a6);
  }
}

uint64_t sub_1D302A444(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1D3029A10();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D302A4C8()
{
  result = qword_1EC749C48;
  if (!qword_1EC749C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749C28, &qword_1D30F32D0);
    sub_1D302A54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749C48);
  }

  return result;
}

unint64_t sub_1D302A54C()
{
  result = qword_1EC749C50;
  if (!qword_1EC749C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749C20, &qword_1D30F32C8);
    sub_1D2FF8748();
    sub_1D2FF87F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749C50);
  }

  return result;
}

unint64_t sub_1D302A5D8()
{
  result = qword_1EC749218;
  if (!qword_1EC749218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749208, &qword_1D30EEC18);
    sub_1D302B150(&qword_1EC749220, 255, type metadata accessor for LicenseRecord.ElementID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749218);
  }

  return result;
}

uint64_t sub_1D302A690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D302B664;

  return sub_1D301D7D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D302A758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v31 = a5;
  v32 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C70, &qword_1D30F3368);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v30 - v13;
  if (*(a7 + 16))
  {
    v15 = *(a7 + 24);
    v16 = *(a7 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = sub_1D30E91AC();
    v19 = v18;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v17 = 0;
    v19 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D302B0DC(a3, v14, &qword_1EC749C70, &qword_1D30F3368);
  v21 = sub_1D30E921C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_1D2FF14DC(v14, &qword_1EC749C70, &qword_1D30F3368);
  }

  else
  {
    sub_1D30E920C();
    (*(v22 + 8))(v14, v21);
  }

  if (!a2)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v33;
    *(v28 + 24) = a7;
    swift_unknownObjectRetain();

    if (v19 | v17)
    {
      v39[0] = 0;
      v39[1] = 0;
      v29 = v39;
      v39[2] = v17;
      v39[3] = v19;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v29 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v26 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v26;
        }

        goto LABEL_12;
      }
    }

    v38[4] = 6;
    v38[5] = v29;
    v38[6] = a4;
    v38[7] = v31;
    goto LABEL_17;
  }

  v23 = sub_1D30E90AC() + 32;
  v24 = swift_allocObject();
  *(v24 + 16) = v33;
  *(v24 + 24) = a7;
  swift_unknownObjectRetain();

  if (v19 | v17)
  {
    v38[0] = 0;
    v38[1] = 0;
    v25 = v38;
    v38[2] = v17;
    v38[3] = v19;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v25 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v37[0] = 6;
    v37[1] = v25;
    v37[2] = a4;
    v37[3] = v31;
    v25 = v37;
  }

LABEL_11:
  v34 = 7;
  v35 = v25;
  v36 = v23;
  v26 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v26;
}

uint64_t sub_1D302AAD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D302B664;

  return sub_1D3028940(a1, v5);
}

uint64_t sub_1D302AB88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D302AC40;

  return sub_1D3028940(a1, v5);
}

uint64_t sub_1D302AC40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D302AD40(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C88, &qword_1D30F33A0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D302B664;

  return sub_1D301E0B4(a1, v7, v1 + v5, v8);
}

unint64_t sub_1D302AE74()
{
  result = qword_1EC749C90;
  if (!qword_1EC749C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749C90);
  }

  return result;
}

uint64_t sub_1D302AEC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C80, &qword_1D30F3398);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D302AF74()
{
  result = qword_1EC749CC8;
  if (!qword_1EC749CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC749CC8);
  }

  return result;
}

unint64_t sub_1D302AFC0()
{
  result = qword_1EC749CD0;
  if (!qword_1EC749CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749CD0);
  }

  return result;
}

unint64_t sub_1D302B014()
{
  result = qword_1EC749CD8;
  if (!qword_1EC749CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749CD8);
  }

  return result;
}

uint64_t sub_1D302B068(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1D2FF1804(a1, a2);
  }

  return a1;
}

uint64_t sub_1D302B074(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_1D2FF17B0(a1, a2);
  }

  return a1;
}

uint64_t sub_1D302B0DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D302B150(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D302B198(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LicenseRecord.ElementID(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140) - 8);
  v9 = (v7 + *(v8 + 80) + 136) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D302AC40;

  return sub_1D301864C(a1, v10, v11, v12, v1 + v6, v1 + v7, v1 + v9);
}

void sub_1D302B314()
{
  sub_1D302B478(319, &qword_1EC749D18, sub_1D2FE39EC);
  if (v0 <= 0x3F)
  {
    sub_1D302B418();
    if (v1 <= 0x3F)
    {
      sub_1D302B448();
      if (v2 <= 0x3F)
      {
        sub_1D302B478(319, &qword_1EC749D30, type metadata accessor for AssetPackRecord.StaticRepresentation);
        if (v3 <= 0x3F)
        {
          sub_1D302B4C4();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ManifestDataSource(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D302B418()
{
  result = qword_1EC749D20;
  if (!qword_1EC749D20)
  {
    result = MEMORY[0x1E69E76D8];
    atomic_store(MEMORY[0x1E69E76D8], &qword_1EC749D20);
  }

  return result;
}

uint64_t sub_1D302B448()
{
  result = qword_1EC749D28;
  if (!qword_1EC749D28)
  {
    result = MEMORY[0x1E69E76D8];
    atomic_store(MEMORY[0x1E69E76D8], &qword_1EC749D28);
  }

  return result;
}

void sub_1D302B478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D302B4C4()
{
  if (!qword_1EC749D38)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC749D38);
    }
  }
}

uint64_t sub_1D302B574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D302B5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D302B670()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D302B6A4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D302B6D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 50;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t AssetPackHost.description.getter()
{
  v1 = v0;
  v2 = sub_1D30E8A4C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  v10 = type metadata accessor for AssetPackHost();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D302BA94(v1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    return 0xD00000000000001FLL;
  }

  v16 = *(v14 + 48);
  v17 = *&v13[*(v14 + 64)];
  v18 = v3[4];
  v18(v9, v13, v2);
  v18(v7, &v13[v16], v2);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0xD00000000000001DLL, 0x80000001D30EC2F0);
  sub_1D302D060(&qword_1EC749490);
  v19 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v19);

  MEMORY[0x1D38B2610](0x6E6F697372657620, 0xED0000203A444920);
  v20 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v20);

  MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EB1C0);
  v24[1] = v17;
  v21 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v21);

  MEMORY[0x1D38B2610](62, 0xE100000000000000);
  v15 = v25;
  v22 = v3[1];
  v22(v7, v2);
  v22(v9, v2);
  return v15;
}

uint64_t type metadata accessor for AssetPackHost()
{
  result = qword_1EE314690;
  if (!qword_1EE314690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D302BA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPackHost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D302BAFC()
{
  v1 = 0x496E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D302BB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D302D484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D302BB7C(uint64_t a1)
{
  v2 = sub_1D302D00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302BBB8(uint64_t a1)
{
  v2 = sub_1D302D00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302BBF4()
{
  if (*v0)
  {
    result = 0x7261506472696874;
  }

  else
  {
    result = 0x656C707061;
  }

  *v0;
  return result;
}

uint64_t sub_1D302BC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C707061 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEA00000000007974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D302BD10(uint64_t a1)
{
  v2 = sub_1D302CF64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302BD4C(uint64_t a1)
{
  v2 = sub_1D302CF64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302BD88(uint64_t a1)
{
  v2 = sub_1D302CFB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302BDC4(uint64_t a1)
{
  v2 = sub_1D302CFB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetPackHost.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D40, &qword_1D30F34F8);
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D48, &qword_1D30F3500);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v36 - v8;
  v9 = sub_1D30E8A4C();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v36 - v13;
  v14 = type metadata accessor for AssetPackHost();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D50, &qword_1D30F3508);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D302CF64();
  sub_1D30E992C();
  sub_1D302BA94(v41, v17);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
  {
    v50 = 1;
    sub_1D302CFB8();
    sub_1D30E96DC();
    (*(v37 + 8))(v5, v38);
    return (*(v19 + 8))(v22, v18);
  }

  else
  {
    v41 = v19;
    v26 = *(v24 + 48);
    v38 = *&v17[*(v24 + 64)];
    v27 = *(v42 + 32);
    v28 = v36;
    v27(v36, v17, v9);
    v27(v44, &v17[v26], v9);
    v49 = 0;
    sub_1D302D00C();
    sub_1D30E96DC();
    v48 = 0;
    sub_1D302D060(&qword_1EC7494B0);
    v29 = v40;
    v30 = v43;
    sub_1D30E974C();
    v31 = v42;
    v32 = v28;
    if (v30)
    {
      (*(v39 + 8))(v45, v29);
      v33 = *(v31 + 8);
      v33(v44, v9);
      v33(v28, v9);
      v34 = v41;
    }

    else
    {
      v47 = 1;
      sub_1D30E974C();
      v34 = v41;
      v46 = 2;
      sub_1D30E975C();
      (*(v39 + 8))(v45, v29);
      v35 = *(v31 + 8);
      v35(v44, v9);
      v35(v32, v9);
    }

    return (*(v34 + 8))(v22, v18);
  }
}

uint64_t AssetPackHost.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D70, &qword_1D30F3510);
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D78, &qword_1D30F3518);
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749D80, &unk_1D30F3520);
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = type metadata accessor for AssetPackHost();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D302CF64();
  v23 = v58;
  sub_1D30E990C();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v14;
  v25 = v54;
  v24 = v55;
  v49 = v20;
  v50 = v18;
  v26 = v56;
  v27 = v13;
  v28 = sub_1D30E96AC();
  if (*(v28 + 16) != 1)
  {
    v34 = sub_1D30E94EC();
    swift_allocError();
    v36 = v35;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
    *v36 = v58;
    sub_1D30E960C();
    sub_1D30E94DC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v57 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v28;
  if (*(v28 + 32))
  {
    v64 = 1;
    sub_1D302CFB8();
    sub_1D30E95FC();
    v29 = v57;
    v30 = v26;
    (*(v51 + 8))(v24, v52);
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
    v32 = v49;
    (*(*(v31 - 8) + 56))(v49, 1, 1, v31);
  }

  else
  {
    v63 = 0;
    sub_1D302D00C();
    v38 = v9;
    sub_1D30E95FC();
    v39 = v57;
    v30 = v26;
    v52 = v27;
    v55 = v10;
    sub_1D30E8A4C();
    v62 = 0;
    sub_1D302D060(&qword_1EC7494C8);
    v40 = v25;
    sub_1D30E967C();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
    v41 = *(v51 + 48);
    v61 = 1;
    sub_1D30E967C();
    v42 = v53;
    v48 = v41;
    v43 = v51;
    v60 = 2;
    v44 = sub_1D30E969C();
    v45 = *(v43 + 64);
    (*(v42 + 8))(v38, v40);
    (*(v39 + 8))(v52, v55);
    swift_unknownObjectRelease();
    v46 = v50;
    *&v50[v45] = v44;
    (*(*(v43 - 8) + 56))(v46, 0, 1, v43);
    v47 = v46;
    v32 = v49;
    sub_1D3011828(v47, v49);
  }

  sub_1D3011828(v32, v30);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t _s29ManagedBackgroundAssetsHelper13AssetPackHostO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D30E8A4C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for AssetPackHost();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DC8, &qword_1D30F38E8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v38 - v20;
  v22 = &v38 + *(v19 + 56) - v20;
  sub_1D302BA94(a1, &v38 - v20);
  sub_1D302BA94(a2, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749C00, &qword_1D30F34F0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v21, 1, v23) == 1)
  {
    if (v24(v22, 1, v23) == 1)
    {
      sub_1D302D60C(v21);
      return 1;
    }

    goto LABEL_6;
  }

  v41 = v12;
  sub_1D302BA94(v21, v16);
  v26 = *(v23 + 48);
  v27 = *(v23 + 64);
  v40 = *&v16[v27];
  if (v24(v22, 1, v23) == 1)
  {
    v28 = v5[1];
    v28(&v16[v26], v4);
    v28(v16, v4);
LABEL_6:
    sub_1D302D5A4(v21);
    return 0;
  }

  v39 = *&v22[v27];
  v29 = v5[4];
  v30 = v41;
  v29(v41, v22, v4);
  v29(v43, &v16[v26], v4);
  v31 = &v22[v26];
  v32 = v42;
  v29(v42, v31, v4);
  v33 = sub_1D30E8A3C();
  v34 = v5[1];
  v34(v16, v4);
  if (v33)
  {
    v35 = v43;
    v36 = sub_1D30E8A3C();
    v34(v32, v4);
    v34(v35, v4);
    v34(v30, v4);
    if (v36)
    {
      v37 = v40 == v39;
      sub_1D302D60C(v21);
      return v37;
    }
  }

  else
  {
    v34(v32, v4);
    v34(v43, v4);
    v34(v30, v4);
  }

  sub_1D302D60C(v21);
  return 0;
}

unint64_t sub_1D302CF64()
{
  result = qword_1EC749D58;
  if (!qword_1EC749D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D58);
  }

  return result;
}

unint64_t sub_1D302CFB8()
{
  result = qword_1EC749D60;
  if (!qword_1EC749D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D60);
  }

  return result;
}

unint64_t sub_1D302D00C()
{
  result = qword_1EC749D68;
  if (!qword_1EC749D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D68);
  }

  return result;
}

uint64_t sub_1D302D060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D30E8A4C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D302D0CC()
{
  sub_1D302D124();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1D302D124()
{
  if (!qword_1EE315258)
  {
    sub_1D30E8A4C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE315258);
    }
  }
}

unint64_t sub_1D302D1C8()
{
  result = qword_1EC749D88;
  if (!qword_1EC749D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D88);
  }

  return result;
}

unint64_t sub_1D302D220()
{
  result = qword_1EC749D90;
  if (!qword_1EC749D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D90);
  }

  return result;
}

unint64_t sub_1D302D278()
{
  result = qword_1EC749D98;
  if (!qword_1EC749D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749D98);
  }

  return result;
}

unint64_t sub_1D302D2D0()
{
  result = qword_1EC749DA0;
  if (!qword_1EC749DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DA0);
  }

  return result;
}

unint64_t sub_1D302D328()
{
  result = qword_1EC749DA8;
  if (!qword_1EC749DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DA8);
  }

  return result;
}

unint64_t sub_1D302D380()
{
  result = qword_1EC749DB0;
  if (!qword_1EC749DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DB0);
  }

  return result;
}

unint64_t sub_1D302D3D8()
{
  result = qword_1EC749DB8;
  if (!qword_1EC749DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DB8);
  }

  return result;
}

unint64_t sub_1D302D430()
{
  result = qword_1EC749DC0;
  if (!qword_1EC749DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749DC0);
  }

  return result;
}

uint64_t sub_1D302D484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EB250 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D302D5A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DC8, &qword_1D30F38E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D302D60C(uint64_t a1)
{
  v2 = type metadata accessor for AssetPackHost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FilePath.ResolutionError.description.getter()
{
  type metadata accessor for FilePath.ResolutionError();
  sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);

  return sub_1D30E984C();
}

uint64_t type metadata accessor for FilePath.ResolutionError()
{
  result = qword_1EC749DD0;
  if (!qword_1EC749DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FilePath.ResolutionError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = type metadata accessor for FilePath.ResolutionError();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D302DA94(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    v15 = v13[1];
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1D30E948C();

    v23 = 0x1000000000000011;
    v24 = 0x80000001D30EC330;
    MEMORY[0x1D38B2610](v14, v15);

    MEMORY[0x1D38B2610](0x69207369209D80E2, 0xAF2E64696C61766ELL);
    return v23;
  }

  else
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
    v18 = v3[4];
    v18(v9, v13, v2);
    v18(v7, (v13 + v17), v2);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](0x1000000000000014, 0x80000001D30EC350);
    sub_1D302DAF8(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v19 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v19);

    MEMORY[0x1D38B2610](0x100000000000001DLL, 0x80000001D30EC370);
    v20 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v20);

    MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
    v16 = v23;
    v21 = v3[1];
    v21(v7, v2);
    v21(v9, v2);
  }

  return v16;
}

uint64_t sub_1D302DA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilePath.ResolutionError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D302DAF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D302DB40()
{
  sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);

  return sub_1D30E984C();
}

void sub_1D302DBF8()
{
  sub_1D302DC60();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D302DC60()
{
  if (!qword_1EC749DE0)
  {
    sub_1D30E8D9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC749DE0);
    }
  }
}

uint64_t sub_1D302DCC8()
{
  v0 = sub_1D30E8D9C();
  __swift_allocate_value_buffer(v0, qword_1EC75A8D8);
  __swift_project_value_buffer(v0, qword_1EC75A8D8);
  return MEMORY[0x1D38B2220](0xD00000000000001CLL, 0x80000001D30EC3B0);
}

uint64_t sub_1D302DD2C()
{
  v0 = sub_1D30E8D9C();
  __swift_allocate_value_buffer(v0, qword_1EE3152D0);
  __swift_project_value_buffer(v0, qword_1EE3152D0);
  return MEMORY[0x1D38B2220](0x2F7972617262694CLL, 0xEF2F736568636143);
}

uint64_t sub_1D302DD9C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749928, &unk_1D30F1B00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_1D30E8D9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  v33 = v2;
  if ((sub_1D30E8CDC() & 1) == 0)
  {
    return (*(v10 + 16))(a2, v33, v9);
  }

  v30 = a2;
  v31 = v3;
  v20 = [objc_opt_self() defaultManager];
  v21 = [v20 currentDirectoryPath];

  v22 = sub_1D30E908C();
  v24 = v23;

  MEMORY[0x1D38B22D0](v22, v24);
  v25 = *(v10 + 16);
  v25(v17, v19, v9);
  v25(v14, v33, v9);
  sub_1D30E8D1C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D2FF14DC(v8, &qword_1EC749928, &unk_1D30F1B00);
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749930, &qword_1D30F38F0) + 48);
    v27 = v32;
    v25(v32, v19, v9);
    v25(&v27[v26], v33, v9);
    type metadata accessor for FilePath.ResolutionError();
    swift_storeEnumTagMultiPayload();
    sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_willThrowTypedImpl();
    return (*(v10 + 8))(v19, v9);
  }

  else
  {
    (*(v10 + 8))(v19, v9);
    return (*(v10 + 32))(v30, v8, v9);
  }
}

uint64_t sub_1D302E150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a4;
  v31 = a5;
  v32 = a3;
  v33 = a7;
  v9 = sub_1D30E8D9C();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  v17 = sub_1D30E8D5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v28 - v23;

  sub_1D30E8D6C();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D2FF14DC(v16, &qword_1EC749940, &qword_1D30F1B10);
    v25 = v32;
    *v32 = a1;
    v25[1] = a2;
    type metadata accessor for FilePath.ResolutionError();
    swift_storeEnumTagMultiPayload();
    sub_1D302DAF8(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);

    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    if (*v29 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v9, v31);
    (*(v30 + 16))(v12, v27, v9);
    (*(v18 + 16))(v22, v24, v17);
    sub_1D30E8D7C();
    return (*(v18 + 8))(v24, v17);
  }
}

uint64_t sub_1D302E494()
{
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0x1000000000000031, 0x80000001D30EC3D0);
  v0 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v0);

  MEMORY[0x1D38B2610](782074082, 0xA400000000000000);
  return 0;
}

uint64_t sub_1D302E548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = &OBJC_INSTANCE_METHODS_NSCoding;
  }

  else
  {
    v5 = "ald-encryption-cert";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (*a2)
  {
    v8 = "ald-encryption-cert";
  }

  else
  {
    v8 = &OBJC_INSTANCE_METHODS_NSCoding;
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D30E97CC();
  }

  return v10 & 1;
}

uint64_t sub_1D302E5F4()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302E674()
{
  *v0;
  sub_1D30E90BC();
}

uint64_t sub_1D302E6E0()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

void sub_1D302E768(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "ald-encryption-cert";
  }

  else
  {
    v3 = &OBJC_INSTANCE_METHODS_NSCoding;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1D302E7A8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_1D302E7F0(uint64_t a1)
{
  v2 = sub_1D3030044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302E82C(uint64_t a1)
{
  v2 = sub_1D3030044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302E868()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302E8EC()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302E9A0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D30E95DC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D302E9F8(uint64_t a1)
{
  v2 = sub_1D302FFF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302EA34(uint64_t a1)
{
  v2 = sub_1D302FFF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302EA70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x737574617473;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0x80000001D30EA460;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x737574617473;
  }

  if (*a2)
  {
    v7 = 0x80000001D30EA460;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();
  }

  return v9 & 1;
}

uint64_t sub_1D302EB18()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302EB9C()
{
  *v0;
  sub_1D30E90BC();
}

uint64_t sub_1D302EC0C()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302EC98@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D30E95DC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D302ECF4(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D30EA460;
  v3 = 0x737574617473;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_1D302ED34()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1D302ED7C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D30E95DC();

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

uint64_t sub_1D302EDDC(uint64_t a1)
{
  v2 = sub_1D302FF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302EE18(uint64_t a1)
{
  v2 = sub_1D302FF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D302EE54@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D302FA48(a1, v6);
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D302EEBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D302EF04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D302EF8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D302EFD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D302F030(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x737574617473;
  v5 = 0x80000001D30EA490;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D30EA490;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0x737574617473;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D30E97CC();
  }

  return v11 & 1;
}

uint64_t sub_1D302F11C()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302F1B4()
{
  *v0;
  *v0;
  sub_1D30E90BC();
}

uint64_t sub_1D302F238()
{
  v1 = *v0;
  sub_1D30E98AC();
  sub_1D30E90BC();

  return sub_1D30E98EC();
}

uint64_t sub_1D302F2CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D3030098();
  *a2 = result;
  return result;
}

void sub_1D302F2FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x737574617473;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D30EA490;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D302F350()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D302F3A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D3030098();
  *a1 = result;
  return result;
}

uint64_t sub_1D302F3C8(uint64_t a1)
{
  v2 = sub_1D30306F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302F404(uint64_t a1)
{
  v2 = sub_1D30306F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302F440()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F4B4()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F550@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D30E95DC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D302F5A8(uint64_t a1)
{
  v2 = sub_1D3030654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302F5E4(uint64_t a1)
{
  v2 = sub_1D3030654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302F620()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F694()
{
  sub_1D30E98AC();
  sub_1D30E90BC();
  return sub_1D30E98EC();
}

uint64_t sub_1D302F6F4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D30E95DC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1D302F780@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D30E95DC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D302F7D8(uint64_t a1)
{
  v2 = sub_1D3030600();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D302F814(uint64_t a1)
{
  v2 = sub_1D3030600();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D302F850(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v10 = 0;
    sub_1D30E948C();
    MEMORY[0x1D38B2610](540689481, 0xE400000000000000);
    v5 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v5);

    MEMORY[0x1D38B2610](0x6572756C69616620, 0xEA0000000000203ALL);
    sub_1D30E955C();
  }

  else
  {
    sub_1D302B074(a2, a3, 0);
    sub_1D30E948C();

    v10 = 540689481;
    v7 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v7);

    MEMORY[0x1D38B2610](0x7373656363757320, 0xEA0000000000203ALL);
    v8 = sub_1D30E88EC();
    MEMORY[0x1D38B2610](v8);

    sub_1D302B068(a2, a3, 0);
  }

  return v10;
}

uint64_t sub_1D302FA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D30300E4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

double sub_1D302FA48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DE8, &qword_1D30F3D58);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DF0, &qword_1D30F3D60);
  *&v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v36 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749DF8, &qword_1D30F3D68);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D302FF9C();
  v21 = v37;
  sub_1D30E990C();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    v31 = v13;
    *&v37 = v15;
    v23 = v35;
    LOBYTE(v39) = 1;
    sub_1D302FFF0();
    sub_1D30E95FC();
    v30 = v18;
    v24 = v34;
    v25 = v8;
    (*(v34 + 32))();
    sub_1D3030044();
    sub_1D30E95FC();
    v36 = 0;
    v40 = 0;
    sub_1D2FF96E8();
    v26 = v32;
    sub_1D30E967C();
    v29 = v39;
    v40 = 1;
    sub_1D30E967C();
    (*(v33 + 8))(v7, v26);
    (*(v24 + 8))(v31, v25);
    (*(v37 + 8))(v30, v14);
    v37 = v39;
    v34 = v29;
    v27 = v36;
    __swift_destroy_boxed_opaque_existential_1(v38);
    v28 = v37;
    result = *&v34;
    *v23 = v34;
    *(v23 + 16) = v28;
    *(v23 + 32) = v27 != 0;
  }

  return result;
}

unint64_t sub_1D302FF9C()
{
  result = qword_1EC749E00;
  if (!qword_1EC749E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E00);
  }

  return result;
}

unint64_t sub_1D302FFF0()
{
  result = qword_1EC749E08;
  if (!qword_1EC749E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E08);
  }

  return result;
}

unint64_t sub_1D3030044()
{
  result = qword_1EC749E10;
  if (!qword_1EC749E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E10);
  }

  return result;
}

uint64_t sub_1D3030098()
{
  v0 = sub_1D30E95DC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D30300E4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749E18, &qword_1D30F3D70);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749E20, &qword_1D30F3D78);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749E28, &qword_1D30F3D80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v17 = a1[3];
  v16 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D3030600();
  v18 = v31;
  sub_1D30E990C();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v19 = v30;
  sub_1D3030654();
  sub_1D30E95FC();
  sub_1D30E95EC();
  v26 = v7;
  v27 = v10;
  v31 = v11;
  __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_1D30306F8();
  v20 = v6;
  sub_1D30E979C();
  v25 = v15;
  LOBYTE(v33) = 0;
  v21 = v28;
  v24 = sub_1D30E965C();
  v36 = 2;
  sub_1D2FF96E8();
  sub_1D30E962C();
  v22 = v29;
  if (v34 >> 60 == 15)
  {
    LOBYTE(v33) = 1;
    sub_1D30E968C();
    (*(v22 + 8))(v20, v21);
  }

  else
  {
    (*(v29 + 8))(v20, v21);
  }

  (*(v19 + 8))(v27, v26);
  (*(v12 + 8))(v25, v31);
  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v24;
}

unint64_t sub_1D3030600()
{
  result = qword_1EC749E30;
  if (!qword_1EC749E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E30);
  }

  return result;
}

unint64_t sub_1D3030654()
{
  result = qword_1EC749E38;
  if (!qword_1EC749E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E38);
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

unint64_t sub_1D30306F8()
{
  result = qword_1EC749E40;
  if (!qword_1EC749E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E40);
  }

  return result;
}

unint64_t sub_1D30307C0()
{
  result = qword_1EC749E48;
  if (!qword_1EC749E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E48);
  }

  return result;
}

unint64_t sub_1D3030818()
{
  result = qword_1EC749E50;
  if (!qword_1EC749E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E50);
  }

  return result;
}

unint64_t sub_1D3030870()
{
  result = qword_1EC749E58;
  if (!qword_1EC749E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E58);
  }

  return result;
}

unint64_t sub_1D30308C8()
{
  result = qword_1EC749E60;
  if (!qword_1EC749E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E60);
  }

  return result;
}

unint64_t sub_1D3030920()
{
  result = qword_1EC749E68;
  if (!qword_1EC749E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E68);
  }

  return result;
}

unint64_t sub_1D3030978()
{
  result = qword_1EC749E70;
  if (!qword_1EC749E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E70);
  }

  return result;
}

unint64_t sub_1D30309D0()
{
  result = qword_1EC749E78;
  if (!qword_1EC749E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E78);
  }

  return result;
}

unint64_t sub_1D3030A28()
{
  result = qword_1EC749E80;
  if (!qword_1EC749E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E80);
  }

  return result;
}

unint64_t sub_1D3030A80()
{
  result = qword_1EC749E88;
  if (!qword_1EC749E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E88);
  }

  return result;
}

unint64_t sub_1D3030AD8()
{
  result = qword_1EC749E90;
  if (!qword_1EC749E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E90);
  }

  return result;
}

unint64_t sub_1D3030B30()
{
  result = qword_1EC749E98;
  if (!qword_1EC749E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749E98);
  }

  return result;
}

unint64_t sub_1D3030B88()
{
  result = qword_1EC749EA0;
  if (!qword_1EC749EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EA0);
  }

  return result;
}

unint64_t sub_1D3030BE0()
{
  result = qword_1EC749EA8;
  if (!qword_1EC749EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EA8);
  }

  return result;
}

unint64_t sub_1D3030C38()
{
  result = qword_1EC749EB0;
  if (!qword_1EC749EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EB0);
  }

  return result;
}

unint64_t sub_1D3030C90()
{
  result = qword_1EC749EB8;
  if (!qword_1EC749EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EB8);
  }

  return result;
}

unint64_t sub_1D3030CE8()
{
  result = qword_1EC749EC0;
  if (!qword_1EC749EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EC0);
  }

  return result;
}

unint64_t sub_1D3030D40()
{
  result = qword_1EC749EC8;
  if (!qword_1EC749EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749EC8);
  }

  return result;
}

unint64_t sub_1D3030D98()
{
  result = qword_1EC749ED0;
  if (!qword_1EC749ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749ED0);
  }

  return result;
}

uint64_t sub_1D3030DF0(uint64_t a1)
{
  if (a1 == MEMORY[0x1E69E6448] || a1 == MEMORY[0x1E69E63B0] || a1 == MEMORY[0x1E69E6370] || a1 == MEMORY[0x1E69E6530])
  {
    v6 = &unk_1EC749EE8;
    v7 = 0x1E696AD98;
  }

  else if (sub_1D30E88CC() == a1 || sub_1D2FF1494(0, &qword_1EC749410, 0x1E695DFF8) == a1)
  {
    v6 = &qword_1EC749410;
    v7 = 0x1E695DFF8;
  }

  else
  {
    v5 = swift_conformsToProtocol2();
    if (a1 && v5)
    {
      v6 = &unk_1EC749400;
      v7 = 0x1E696AEC0;
    }

    else
    {
      v9 = swift_conformsToProtocol2();
      if (a1 && v9)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_1D3030DF0(AssociatedTypeWitness);
        v6 = &unk_1EC749EE0;
        v7 = 0x1E695DF20;
      }

      else
      {
        v11 = swift_conformsToProtocol2();
        if (a1 && v11)
        {
          v12 = swift_getAssociatedTypeWitness();
          sub_1D3030DF0(v12);
          v6 = &unk_1EC749ED8;
          v7 = 0x1E695DEC8;
        }

        else
        {
          v6 = &qword_1EE313000;
          v7 = 0x1E69E58C0;
        }
      }
    }
  }

  return sub_1D2FF1494(0, v6, v7);
}

BOOL sub_1D3030FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D3030DF0(a3);
  if (v4)
  {
    v5 = sub_1D30E906C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [v3 objectForKey:v5 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
  }

  else
  {
    v5 = sub_1D30E906C();
    v7 = [v3 objectForKey:v5 ofClass:swift_getObjCClassFromMetadata()];
  }

  v8 = v7;

  if (v8)
  {
    sub_1D30E93AC();
    swift_unknownObjectRelease();
    sub_1D2FDCC64(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_1D30310D8(v11);
  return v8 != 0;
}

uint64_t sub_1D30310D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749418, &qword_1D30F4A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CertificateRole.description.getter()
{
  if (*v0)
  {
    result = 0x676E696E676973;
  }

  else
  {
    result = 0x6974707972636E65;
  }

  *v0;
  return result;
}

uint64_t sub_1D3031198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974707972636E65 && a2 == 0xEA00000000006E6FLL;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696E676973 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D303127C(uint64_t a1)
{
  v2 = sub_1D30316A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30312B8(uint64_t a1)
{
  v2 = sub_1D30316A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30312F4(uint64_t a1)
{
  v2 = sub_1D3031748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3031330(uint64_t a1)
{
  v2 = sub_1D3031748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D303136C(uint64_t a1)
{
  v2 = sub_1D30316F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30313A8(uint64_t a1)
{
  v2 = sub_1D30316F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CertificateRole.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749EF0, &qword_1D30F45F0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749EF8, &qword_1D30F45F8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F00, &qword_1D30F4600);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30316A0();
  sub_1D30E992C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1D30316F4();
    v18 = v22;
    sub_1D30E96DC();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1D3031748();
    sub_1D30E96DC();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1D30316A0()
{
  result = qword_1EC749F08;
  if (!qword_1EC749F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F08);
  }

  return result;
}

unint64_t sub_1D30316F4()
{
  result = qword_1EC749F10;
  if (!qword_1EC749F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F10);
  }

  return result;
}

unint64_t sub_1D3031748()
{
  result = qword_1EC749F18;
  if (!qword_1EC749F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F18);
  }

  return result;
}

uint64_t CertificateRole.hashValue.getter()
{
  v1 = *v0;
  sub_1D30E98AC();
  MEMORY[0x1D38B2DE0](v1);
  return sub_1D30E98EC();
}

uint64_t CertificateRole.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F20, &qword_1D30F4608);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F28, &qword_1D30F4610);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F30, &unk_1D30F4618);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D30316A0();
  v16 = v36;
  sub_1D30E990C();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1D30E96AC();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1D302B6A4();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1D30E94EC();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30) + 48);
      *v26 = &type metadata for CertificateRole;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1D30316F4();
        sub_1D30E95FC();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1D3031748();
        sub_1D30E95FC();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

unint64_t sub_1D3031CD0()
{
  result = qword_1EC749F38;
  if (!qword_1EC749F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F38);
  }

  return result;
}

unint64_t sub_1D3031D28()
{
  result = qword_1EC749F40;
  if (!qword_1EC749F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749F48, &qword_1D30F4690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F40);
  }

  return result;
}

unint64_t sub_1D3031E10()
{
  result = qword_1EC749F50;
  if (!qword_1EC749F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F50);
  }

  return result;
}

unint64_t sub_1D3031E68()
{
  result = qword_1EC749F58;
  if (!qword_1EC749F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F58);
  }

  return result;
}

unint64_t sub_1D3031EC0()
{
  result = qword_1EC749F60;
  if (!qword_1EC749F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F60);
  }

  return result;
}

unint64_t sub_1D3031F18()
{
  result = qword_1EC749F68;
  if (!qword_1EC749F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F68);
  }

  return result;
}

unint64_t sub_1D3031F70()
{
  result = qword_1EC749F70;
  if (!qword_1EC749F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F70);
  }

  return result;
}

unint64_t sub_1D3031FC8()
{
  result = qword_1EC749F78;
  if (!qword_1EC749F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F78);
  }

  return result;
}

unint64_t sub_1D3032020()
{
  result = qword_1EC749F80;
  if (!qword_1EC749F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749F80);
  }

  return result;
}

id LicenseRequestMessage.Subject.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  result = [objc_allocWithZone(ObjectType) init];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

id LicenseRequestMessage.Subject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D303220C()
{
  result = sub_1D30E906C();
  qword_1EC749F88 = result;
  return result;
}

id static LicenseRequestMessage.name.getter()
{
  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC749F88;

  return v1;
}

uint64_t LicenseRequestMessage.licenseID.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t static LicenseRequestMessage.makeMessage(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D30E857C();
  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v3 = sub_1D30E908C();
  v5 = v4;
  if (v3 == sub_1D30E908C() && v5 == v6)
  {

LABEL_10:
    v13 = sub_1D30E858C();
    if (v13)
    {
      v14 = v13;
      *&v18 = 0x736E6563694C4142;
      *(&v18 + 1) = 0xEB00000000444965;
      sub_1D30E941C();
      if (*(v14 + 16))
      {
        v15 = sub_1D3032710(v17);
        if (v16)
        {
          sub_1D2FF1430(*(v14 + 56) + 32 * v15, &v18);
          sub_1D3032754(v17);

          if (*(&v19 + 1))
          {
            result = swift_dynamicCast();
            v10 = v17[0];
            if (!result)
            {
              v10 = 0;
            }

            v11 = result ^ 1;
            goto LABEL_20;
          }

LABEL_19:
          result = sub_1D30310D8(&v18);
          v10 = 0;
          v11 = 1;
LABEL_20:
          v12 = 0;
          goto LABEL_21;
        }
      }

      sub_1D3032754(v17);
    }

    v18 = 0u;
    v19 = 0u;
    goto LABEL_19;
  }

  v8 = sub_1D30E97CC();

  if (v8)
  {
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
LABEL_21:
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 9) = v12;
  return result;
}

uint64_t static LicenseRequestMessage.makeNotification(_:object:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1D3034AE8(MEMORY[0x1E69E7CC0]);
  if ((v4 & 1) == 0)
  {
    *(&v13 + 1) = 0xEB00000000444965;
    sub_1D30E941C();
    v14 = MEMORY[0x1E69E76D8];
    *&v13 = v3;
    sub_1D2FDCC64(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3033A50(v12, v15, isUniquelyReferenced_nonNull_native);
    sub_1D3032754(v15);
  }

  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC749F88;
  if (a2)
  {
    v7 = type metadata accessor for LicenseRequestMessage.Subject();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v15[1] = 0;
    v15[2] = 0;
  }

  v15[0] = v8;
  v15[3] = v7;
  v9 = v6;
  v10 = a2;
  return sub_1D30E856C();
}

id sub_1D30325F4()
{
  if (qword_1EC749048 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC749F88;

  return v1;
}

unint64_t sub_1D3032654(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D30E989C();

  return sub_1D30327A8(a1, v4);
}

unint64_t sub_1D3032698(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D30E98AC();
  sub_1D30E90BC();
  v6 = sub_1D30E98EC();

  return sub_1D3032814(a1, a2, v6);
}

unint64_t sub_1D3032710(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D30E93FC();

  return sub_1D30328CC(a1, v5);
}

unint64_t sub_1D30327A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D3032814(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D30E97CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D30328CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D3034EA4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38B2930](v9, a1);
      sub_1D3032754(v9);
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

uint64_t sub_1D3032994(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F98, &unk_1D30F4AC0);
  v36 = a2;
  result = sub_1D30E95BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = sub_1D30E989C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1D3032C18(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v38 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA0, &qword_1D30F4AD0);
  v41 = a2;
  result = sub_1D30E95BC();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_1D30E989C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1D3032F6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FC0, &qword_1D30F4AF0);
  result = sub_1D30E95BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1D2FDCC64((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1D3034EA4(v24, &v38);
        sub_1D2FF1430(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1D30E93FC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1D2FDCC64(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1D3033224(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FD0, &qword_1D30F4B00);
  v36 = a2;
  result = sub_1D30E95BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1D2FDCC64(v25, v37);
      }

      else
      {
        sub_1D2FF1430(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1D30E98AC();
      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1D2FDCC64(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
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
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1D30334DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA8, &qword_1D30F4AD8);
  v38 = a2;
  result = sub_1D30E95BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1D30E98AC();
      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1D303377C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D3032654(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D3032994(v16, a4 & 1);
      v20 = *v5;
      result = sub_1D3032654(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1D30E981C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D3033E34();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_1D30338DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D3032654(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D3033F9C();
      goto LABEL_7;
    }

    sub_1D3032C18(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1D3032654(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1D30E981C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1D3033D00(v10, a2, a1, v16);
}

_OWORD *sub_1D3033A50(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D3032710(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1D303420C();
      goto LABEL_7;
    }

    sub_1D3032F6C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_1D3032710(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D3034EA4(a2, v22);
      return sub_1D3033DB8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_1D30E981C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1D2FDCC64(a1, v17);
}

unint64_t sub_1D3033B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D3032698(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D30334DC(v16, a4 & 1);
      v20 = *v5;
      result = sub_1D3032698(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1D30E981C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D3034554();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_1D3033D00(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_1D3033DB8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1D2FDCC64(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_1D3033E34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F98, &unk_1D30F4AC0);
  v2 = *v0;
  v3 = sub_1D30E95AC();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1D3033F9C()
{
  v1 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA0, &qword_1D30F4AD0);
  v4 = *v0;
  v5 = sub_1D30E95AC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D303420C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FC0, &qword_1D30F4AF0);
  v2 = *v0;
  v3 = sub_1D30E95AC();
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
        v18 = 40 * v17;
        sub_1D3034EA4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1D2FF1430(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1D2FDCC64(v22, (*(v4 + 56) + v17));
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

void *sub_1D30343B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FD0, &qword_1D30F4B00);
  v2 = *v0;
  v3 = sub_1D30E95AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v22 = 32 * v17;
        sub_1D2FF1430(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D2FDCC64(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D3034554()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA8, &qword_1D30F4AD8);
  v2 = *v0;
  v3 = sub_1D30E95AC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1D30346BC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F98, &unk_1D30F4AC0);
  v3 = sub_1D30E95CC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D3032654(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D3032654(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D30347D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FB8, &qword_1D30F4AE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA0, &qword_1D30F4AD0);
    v8 = sub_1D30E95CC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1D302B0DC(v10, v6, &qword_1EC749FB8, &qword_1D30F4AE8);
      v12 = *v6;
      result = sub_1D3032654(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B90, &unk_1D30FD140);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_1D30349B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749F90, &unk_1D30F4AB0);
    v3 = sub_1D30E95CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D302B0DC(v4, &v13, &qword_1EC749CC0, &qword_1D30F33E8);
      v5 = v13;
      v6 = v14;
      result = sub_1D3032698(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2FDCC64(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1D3034AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FC0, &qword_1D30F4AF0);
    v3 = sub_1D30E95CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D302B0DC(v4, v13, &qword_1EC749FC8, &qword_1D30F4AF8);
      result = sub_1D3032710(v13);
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
      result = sub_1D2FDCC64(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LicenseRequestMessage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LicenseRequestMessage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

unint64_t sub_1D3034CA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FB0, &qword_1D30F4AE0);
    v3 = sub_1D30E95CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D3032698(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1D3034DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FA8, &qword_1D30F4AD8);
    v3 = sub_1D30E95CC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D3032698(v5, v6);
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

uint64_t sub_1D3034F00(_BYTE *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  *(v2 + 24) = v1;
  v4 = sub_1D30E881C();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v8 = sub_1D30E88CC();
  *(v2 + 64) = v8;
  v9 = *(v8 - 8);
  *(v2 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v11 = sub_1D30E8D9C();
  *(v2 + 88) = v11;
  v12 = *(v11 - 8);
  *(v2 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 219) = *a1;
  v14 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D3035120, 0, 0);
}

uint64_t sub_1D3035120()
{
  v138 = v0;
  v137[1] = *MEMORY[0x1E69E9840];
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313208);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 219);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v137[0] = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E696E676973;
    }

    else
    {
      v7 = 0x6974707972636E65;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }

    v9 = sub_1D2FFEA04(v7, v8, v137);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Contents of certificate for role: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 24);
  LOBYTE(v137[0]) = *(v0 + 219);
  v10 = v137[0];
  sub_1D3036990(v137, v11);
  v135 = v10;
  v25 = *(v0 + 128);
  v24 = *(v0 + 136);
  v26 = *(v0 + 88);
  v27 = *(v0 + 96);
  v28 = sub_1D30E927C();
  v29 = *(v27 + 16);
  v29(v25, v24, v26);
  v30 = sub_1D30E8B1C();
  if (os_log_type_enabled(v30, v28))
  {
    v32 = *(v0 + 219);
    v33 = *(v0 + 128);
    v34 = *(v0 + 88);
    v35 = *(v0 + 96);
    v36 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v137[0] = v130;
    *v36 = 136446466;
    if (v32)
    {
      v37 = 0x676E696E676973;
    }

    else
    {
      v37 = 0x6974707972636E65;
    }

    if (v32)
    {
      v38 = 0xE700000000000000;
    }

    else
    {
      v38 = 0xEA00000000006E6FLL;
    }

    v132 = v29;
    v39 = sub_1D2FFEA04(v37, v38, v137);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2082;
    sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v40 = sub_1D30E977C();
    v42 = v41;
    v43 = *(v35 + 8);
    v43(v33, v34);
    v44 = sub_1D2FFEA04(v40, v42, v137);
    v29 = v132;

    *(v36 + 14) = v44;
    _os_log_impl(&dword_1D2FD9000, v30, v28, "Loading the %{public}s certificate at “%{public}s”…", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v130, -1, -1);
    MEMORY[0x1D38B3760](v36, -1, -1);
  }

  else
  {
    v45 = *(v0 + 128);
    v46 = *(v0 + 88);
    v47 = *(v0 + 96);

    v43 = *(v47 + 8);
    v43(v45, v46);
  }

  *(v0 + 144) = v43;
  v48 = *(v0 + 136);
  *(v0 + 216) = 1;
  v49 = objc_opt_self();
  v50 = [v49 defaultManager];
  sub_1D30E8D3C();
  v51 = sub_1D30E906C();

  LOBYTE(v48) = [v50 fileExistsAtPath:v51 isDirectory:v0 + 216];

  if ((v48 & 1) == 0)
  {
    v29(*(v0 + 120), *(v0 + 136), *(v0 + 88));
    v69 = sub_1D30E8B1C();
    v70 = sub_1D30E92BC();
    if (os_log_type_enabled(v69, v70))
    {
      v134 = v43;
      v71 = *(v0 + 219);
      v72 = *(v0 + 120);
      v73 = *(v0 + 88);
      v74 = *(v0 + 96);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v137[0] = v76;
      *v75 = 136315394;
      if (v71)
      {
        v77 = 0x676E696E676973;
      }

      else
      {
        v77 = 0x6974707972636E65;
      }

      if (v71)
      {
        v78 = 0xE700000000000000;
      }

      else
      {
        v78 = 0xEA00000000006E6FLL;
      }

      v79 = sub_1D2FFEA04(v77, v78, v137);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2082;
      sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v80 = sub_1D30E977C();
      v82 = v81;
      v134(v72, v73);
      v83 = sub_1D2FFEA04(v80, v82, v137);

      *(v75 + 14) = v83;
      _os_log_impl(&dword_1D2FD9000, v69, v70, "The %s certificate doesn’t exist locally at “%{public}s”; downloading the certificates from the Commerce server…", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v76, -1, -1);
      MEMORY[0x1D38B3760](v75, -1, -1);
    }

    else
    {
      v97 = *(v0 + 120);
      v98 = *(v0 + 88);
      v99 = *(v0 + 96);

      v43(v97, v98);
    }

    *(v0 + 217) = v135;
    v100 = swift_task_alloc();
    *(v0 + 152) = v100;
    *v100 = v0;
    v100[1] = sub_1D3035DCC;
    v101 = *(v0 + 24);
    v102 = *MEMORY[0x1E69E9840];
    v103 = (v0 + 217);
    goto LABEL_40;
  }

  v133 = v43;
  v52 = *(v0 + 136);
  v53 = *(v0 + 88);
  if (*(v0 + 216) == 1)
  {
    v54 = *(v0 + 112);
    v55 = sub_1D30E92AC();
    v29(v54, v52, v53);
    v56 = sub_1D30E8B1C();
    v131 = v55;
    v57 = os_log_type_enabled(v56, v55);
    v58 = *(v0 + 112);
    v60 = *(v0 + 88);
    v59 = *(v0 + 96);
    if (v57)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v137[0] = v62;
      *v61 = 136446210;
      sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v63 = sub_1D30E977C();
      v65 = v64;
      v66 = v60;
      v67 = v133;
      v133(v58, v66);
      v68 = sub_1D2FFEA04(v63, v65, v137);

      *(v61 + 4) = v68;
      _os_log_impl(&dword_1D2FD9000, v56, v131, "The item at “%{public}s” is unexpectedly a directory; removing it and redownloading the certificates from the Commerce server…", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1D38B3760](v62, -1, -1);
      MEMORY[0x1D38B3760](v61, -1, -1);
    }

    else
    {

      v104 = v60;
      v67 = v133;
      v133(v58, v104);
    }

    v105 = *(v0 + 136);
    v106 = [v49 defaultManager];
    sub_1D30E8D3C();
    v107 = sub_1D30E906C();

    *(v0 + 16) = 0;
    LODWORD(v105) = [v106 removeItemAtPath:v107 error:v0 + 16];

    v108 = *(v0 + 16);
    if (v105)
    {
      *(v0 + 218) = v135;
      v109 = v108;
      v110 = swift_task_alloc();
      *(v0 + 184) = v110;
      *v110 = v0;
      v110[1] = sub_1D303604C;
      v111 = *(v0 + 24);
      v112 = *MEMORY[0x1E69E9840];
      v103 = (v0 + 218);
LABEL_40:

      return sub_1D3036E08(v103);
    }

    v114 = *(v0 + 136);
    v115 = *(v0 + 88);
    v116 = *(v0 + 96);
    v117 = v108;
    sub_1D30E87DC();

    swift_willThrow();
    v67(v114, v115);
    goto LABEL_12;
  }

  v84 = *(v0 + 104);
  v85 = *(v0 + 64);
  v86 = *(v0 + 72);
  v88 = *(v0 + 48);
  v87 = *(v0 + 56);
  v89 = v29;
  v90 = *(v0 + 32);
  v91 = *(v0 + 40);
  v92 = v89;
  v89(v84, *(v0 + 136), *(v0 + 88));
  (*(v91 + 104))(v88, *MEMORY[0x1E6968F68], v90);
  sub_1D3040AB4(v84, v88, v87);
  if ((*(v86 + 48))(v87, 1, v85) == 1)
  {
    v93 = *(v0 + 136);
    v94 = *(v0 + 88);
    v95 = *(v0 + 96);
    sub_1D3038CDC(*(v0 + 56));
    type metadata accessor for CertificateManagerError();
    sub_1D3038D90(&qword_1EC749FD8, type metadata accessor for CertificateManagerError);
    swift_allocError();
    v92(v96, v93, v94);
    swift_willThrow();
    v133(v93, v94);
LABEL_12:
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 104);
    v18 = *(v0 + 80);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);

    v21 = *(v0 + 8);
    v22 = *MEMORY[0x1E69E9840];

    return v21();
  }

  (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
  v113 = sub_1D30E88DC();
  v136 = v118;
  v119 = v113;
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v121 = *(v0 + 120);
  v120 = *(v0 + 128);
  v123 = *(v0 + 104);
  v122 = *(v0 + 112);
  v124 = *(v0 + 80);
  v125 = *(v0 + 96) + 8;
  v126 = *(v0 + 48);
  v127 = *(v0 + 56);
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v128 = *(v0 + 8);
  v129 = *MEMORY[0x1E69E9840];

  return v128(v119, v136);
}

uint64_t sub_1D3035DCC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 152);
  v12 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v8 = sub_1D30362CC;
  }

  else
  {
    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v8 = sub_1D3035F28;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D3035F28()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 168);
  v13 = *(v0 + 176);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 96) + 8;
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10(v13, v1);
}

uint64_t sub_1D303604C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 184);
  v12 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v8 = sub_1D30363DC;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v8 = sub_1D30361A8;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D30361A8()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 200);
  v13 = *(v0 + 208);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 96) + 8;
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));

  v10 = *(v0 + 8);
  v11 = *MEMORY[0x1E69E9840];

  return v10(v13, v1);
}

uint64_t sub_1D30362CC()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 96) + 8;
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));
  v2 = *(v0 + 160);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

uint64_t sub_1D30363DC()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 96) + 8;
  (*(v0 + 144))(*(v0 + 136), *(v0 + 88));
  v2 = *(v0 + 192);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  v11 = *(v0 + 8);
  v12 = *MEMORY[0x1E69E9840];

  return v11();
}

void sub_1D30364EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D30365A4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D3036654()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE313208);
  __swift_project_value_buffer(v0, qword_1EE313208);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30366D4(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE313208);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    type metadata accessor for ContainerManager();

    v9 = sub_1D30E909C();
    v11 = sub_1D2FFEA04(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Init container manager: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1D3036854()
{
  v1 = v0;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE313208);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Deinit", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(v1 + 16);

  return v1;
}

uint64_t sub_1D3036938()
{
  sub_1D3036854();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1D3036990@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v45 = a2;
  v47[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D30E8D9C();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v17 = *a1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v18 = sub_1D30E8B3C();
  __swift_project_value_buffer(v18, qword_1EE313208);
  v19 = sub_1D30E928C();
  v20 = sub_1D30E8B1C();
  v21 = os_log_type_enabled(v20, v19);
  v44 = v11;
  v43 = v17;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v41 = v7;
    v42 = v16;
    v23 = v22;
    v24 = swift_slowAlloc();
    v47[0] = v24;
    *v23 = 136446210;
    if (v17)
    {
      v25 = 0x676E696E676973;
    }

    else
    {
      v25 = 0x6974707972636E65;
    }

    if (v17)
    {
      v26 = 0xE700000000000000;
    }

    else
    {
      v26 = 0xEA00000000006E6FLL;
    }

    v27 = sub_1D2FFEA04(v25, v26, v47);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_1D2FD9000, v20, v19, "Path to certificate for role: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    v4 = v3;
    MEMORY[0x1D38B3760](v28, -1, -1);
    v7 = v41;
    v16 = v42;
    MEMORY[0x1D38B3760](v23, -1, -1);
  }

  v29 = *(v5 + 16);
  if (qword_1EC749040 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, qword_1EE3152D0);
  result = sub_1D3003CF4(v30, 0, v14);
  if (!v4)
  {
    v32 = v7;
    sub_1D30E8D8C();
    v33 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v34 = sub_1D30E906C();

    v47[0] = 0;
    v35 = [v33 createDirectoryAtPath:v34 withIntermediateDirectories:1 attributes:0 error:v47];

    v36 = v47[0];
    if (v35)
    {
      v37 = v46 + 16;
      (*(v46 + 16))(v44, v16, v32);
      v38 = v36;
      sub_1D30E8D8C();
      result = (*(v37 - 8))(v16, v32);
    }

    else
    {
      v39 = v47[0];
      sub_1D30E87DC();

      swift_willThrow();
      result = (*(v46 + 8))(v16, v32);
    }
  }

  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D3036E08(_BYTE *a1)
{
  *(v2 + 336) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA0, &qword_1D30F33C0);
  *(v2 + 344) = v4;
  v5 = *(v4 - 8);
  *(v2 + 352) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 360) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CA8, &qword_1D30F33C8);
  *(v2 + 368) = v7;
  v8 = *(v7 - 8);
  *(v2 + 376) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 305) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3036F48, 0, 0);
}

uint64_t sub_1D3036F48()
{
  v25 = v0;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE313208);
  v2 = sub_1D30E928C();
  v3 = sub_1D30E8B1C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 305);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136446210;
    if (v4)
    {
      v7 = 0x676E696E676973;
    }

    else
    {
      v7 = 0x6974707972636E65;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEA00000000006E6FLL;
    }

    v9 = sub_1D2FFEA04(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Download certificates returning contents for role: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D38B3760](v6, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v10 = sub_1D30E927C();
  v11 = sub_1D30E8B1C();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D2FD9000, v11, v10, "Fetching the bag…", v12, 2u);
    MEMORY[0x1D38B3760](v12, -1, -1);
  }

  v14 = *(v0 + 376);
  v13 = *(v0 + 384);
  v15 = *(v0 + 368);

  v16 = objc_opt_self();
  *(v0 + 392) = v16;
  v17 = sub_1D30E906C();
  v18 = sub_1D30E906C();
  v19 = [v16 bagForProfile:v17 profileVersion:v18 processInfo:0];

  v20 = sub_1D30E906C();
  v21 = [v19 URLForKey_];
  *(v0 + 400) = v21;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 312;
  *(v0 + 24) = sub_1D3037380;
  swift_continuation_init();
  *(v0 + 200) = v15;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v0 + 176));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749CB0, &unk_1D30F33D0);
  *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v14 + 32))(boxed_opaque_existential_0Tm, v13, v15);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1D30364EC;
  *(v0 + 168) = &block_descriptor_2;
  [v21 valueWithCompletion_];
  (*(v14 + 8))(boxed_opaque_existential_0Tm, v15);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D3037380()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  if (v2)
  {
    v3 = sub_1D3037C50;
  }

  else
  {
    v3 = sub_1D3037490;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3037490()
{
  v1 = v0[50];
  v16 = v0[51];
  v2 = v0[49];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[39];
  v0[53] = v6;

  v7 = sub_1D30E906C();
  v8 = sub_1D30E906C();
  v9 = [v2 bagForProfile:v7 profileVersion:v8 processInfo:0];

  v10 = [objc_allocWithZone(MEMORY[0x1E698CB88]) initWithBag_];
  v0[54] = v10;

  v11 = [v10 requestWithMethod:2 URL:v6 parameters:0];
  v0[55] = v11;
  v12 = [objc_opt_self() defaultSession];
  v13 = [v12 dataTaskPromiseWithRequestPromise_];
  v0[56] = v13;

  v0[10] = v0;
  v0[15] = v0 + 41;
  v0[11] = sub_1D303774C;
  swift_continuation_init();
  v0[33] = v5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 30);
  sub_1D302AF74();
  sub_1D30E91BC();
  (*(v4 + 32))(boxed_opaque_existential_0Tm, v3, v5);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1D30365A4;
  v0[29] = &block_descriptor_7;
  [v13 resultWithCompletion_];
  (*(v4 + 8))(boxed_opaque_existential_0Tm, v5);

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1D303774C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 456) = v2;
  if (v2)
  {
    v3 = sub_1D3037CD8;
  }

  else
  {
    v3 = sub_1D303785C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D303785C()
{
  v39 = v0;
  v1 = *(v0 + 328);
  v2 = [v1 data];

  v3 = sub_1D30E893C();
  v5 = v4;

  v6 = sub_1D30E855C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1D30E854C();
  sub_1D3038DF0();
  sub_1D30E853C();
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v11 = *(v0 + 288);
  v12 = *(v0 + 296);
  if (*(v0 + 304))
  {
    v32 = *(v0 + 448);
    v34 = *(v0 + 440);
    v36 = *(v0 + 288);
    v30 = *(v0 + 296);
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    *(v0 + 308) = v10;
    sub_1D302B014();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v15 = v10;

    sub_1D3038E44(v10, v9, v36, v30, 1);

    sub_1D2FF1804(v3, v5);

    v19 = *(v0 + 384);
    v20 = *(v0 + 360);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v16 = *(v0 + 336);
    v37 = 0;
    sub_1D3038E8C(v10, v9, v11, v12, 0);
    sub_1D3037D78(&v37, v10, v9);
    v17 = *(v0 + 336);
    v38[0] = 1;
    sub_1D3037D78(v38, v11, v12);
    v33 = *(v0 + 448);
    v35 = *(v0 + 440);
    v18 = *(v0 + 432);
    v23 = *(v0 + 305);
    v29 = *(v0 + 384);
    v31 = *(v0 + 360);

    sub_1D3038E44(v10, v9, v11, v12, 0);

    sub_1D2FF1804(v3, v5);

    if (v23)
    {
      v24 = v9;
    }

    else
    {
      v24 = v12;
    }

    if (v23)
    {
      v25 = v10;
    }

    else
    {
      v25 = v11;
    }

    if (v23)
    {
      v26 = v11;
    }

    else
    {
      v26 = v10;
    }

    if (v23)
    {
      v27 = v12;
    }

    else
    {
      v27 = v9;
    }

    sub_1D2FF1804(v25, v24);

    v28 = *(v0 + 8);

    return v28(v26, v27);
  }
}

uint64_t sub_1D3037C50()
{
  v1 = v0[52];
  v2 = v0[50];
  swift_willThrow();

  v3 = v0[52];
  v4 = v0[48];
  v5 = v0[45];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D3037CD8()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[53];
  swift_willThrow();

  v6 = v0[57];
  v7 = v0[48];
  v8 = v0[45];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D3037D78(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1D30E881C();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v70 - v12;
  v13 = sub_1D30E88CC();
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D30E8D9C();
  v17 = *(v16 - 8);
  v85 = v16;
  v86 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v76 = &v70 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v70 - v24;
  v84 = *a1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v26 = sub_1D30E8B3C();
  v27 = __swift_project_value_buffer(v26, qword_1EE313208);
  v28 = sub_1D30E928C();
  sub_1D2FF17B0(a2, a3);
  v72 = v27;
  v29 = sub_1D30E8B1C();
  sub_1D2FF1804(a2, a3);
  v30 = os_log_type_enabled(v29, v28);
  v75 = a3;
  v73 = v21;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v71 = v9;
    v33 = v32;
    v87 = v32;
    *v31 = 136446466;
    v34 = v84;
    if (v84)
    {
      v35 = 0x676E696E676973;
    }

    else
    {
      v35 = 0x6974707972636E65;
    }

    v74 = v13;
    v80 = v25;
    if (v84)
    {
      v36 = 0xE700000000000000;
    }

    else
    {
      v36 = 0xEA00000000006E6FLL;
    }

    v37 = a2;
    v38 = sub_1D2FFEA04(v35, v36, &v87);

    *(v31 + 4) = v38;
    a2 = v37;
    *(v31 + 12) = 2082;
    v39 = sub_1D30E88EC();
    v41 = sub_1D2FFEA04(v39, v40, &v87);

    *(v31 + 14) = v41;
    v25 = v80;
    v13 = v74;
    _os_log_impl(&dword_1D2FD9000, v29, v28, "Install certificate for role: %{public}s from: %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    v42 = v33;
    v9 = v71;
    MEMORY[0x1D38B3760](v42, -1, -1);
    MEMORY[0x1D38B3760](v31, -1, -1);
  }

  else
  {

    v34 = v84;
  }

  LOBYTE(v87) = v34;
  v43 = v82;
  result = sub_1D3036990(&v87, v25);
  v45 = v83;
  if (!v43)
  {
    v46 = *(v86 + 16);
    v47 = v76;
    v46(v76, v25, v85);
    (*(v77 + 104))(v9, *MEMORY[0x1E6968F68], v78);
    sub_1D3040AB4(v47, v9, v45);
    v48 = v81;
    if ((*(v81 + 48))(v45, 1, v13) == 1)
    {
      sub_1D3038CDC(v45);
      type metadata accessor for CertificateManagerError();
      sub_1D3038D90(&qword_1EC749FD8, type metadata accessor for CertificateManagerError);
      swift_allocError();
      v46(v49, v25, v85);
      swift_willThrow();
      v50 = v25;
      v51 = *(v86 + 8);
      v86 += 8;
      return v51(v50, v85);
    }

    else
    {
      v82 = a2;
      (*(v48 + 32))(v79, v45, v13);
      v52 = v73;
      v80 = v25;
      v46(v73, v25, v85);
      v53 = sub_1D30E8B1C();
      v54 = sub_1D30E92BC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v74 = v13;
        v57 = v56;
        v87 = v56;
        *v55 = 136446466;
        v58 = v84 == 0;
        if (v84)
        {
          v59 = 0x676E696E676973;
        }

        else
        {
          v59 = 0x6974707972636E65;
        }

        v84 = v54;
        if (v58)
        {
          v60 = 0xEA00000000006E6FLL;
        }

        else
        {
          v60 = 0xE700000000000000;
        }

        v61 = sub_1D2FFEA04(v59, v60, &v87);

        *(v55 + 4) = v61;
        *(v55 + 12) = 2082;
        sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v62 = v85;
        v63 = sub_1D30E977C();
        v65 = v64;
        v66 = *(v86 + 8);
        v66(v52, v62);
        v67 = sub_1D2FFEA04(v63, v65, &v87);

        *(v55 + 14) = v67;
        _os_log_impl(&dword_1D2FD9000, v53, v84, "Installing the %{public}s certificate at “%{public}s”…", v55, 0x16u);
        swift_arrayDestroy();
        v68 = v57;
        v13 = v74;
        MEMORY[0x1D38B3760](v68, -1, -1);
        MEMORY[0x1D38B3760](v55, -1, -1);
      }

      else
      {

        v66 = *(v86 + 8);
        v66(v52, v85);
      }

      v69 = v79;
      sub_1D30E894C();
      (*(v81 + 8))(v69, v13);
      return (v66)(v80, v85);
    }
  }

  return result;
}

uint64_t sub_1D303856C(unsigned __int8 *a1)
{
  v2 = v1;
  v57[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D30E8D9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v51 - v10;
  v11 = *a1;
  if (qword_1EE313200 != -1)
  {
    swift_once();
  }

  v12 = sub_1D30E8B3C();
  __swift_project_value_buffer(v12, qword_1EE313208);
  v13 = sub_1D30E928C();
  v14 = sub_1D30E8B1C();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v54 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v55 = v9;
    v18 = v17;
    v57[0] = v17;
    *v16 = 136446210;
    if (v11)
    {
      v19 = 0x676E696E676973;
    }

    else
    {
      v19 = 0x6974707972636E65;
    }

    v53 = v4;
    if (v11)
    {
      v20 = 0xE700000000000000;
    }

    else
    {
      v20 = 0xEA00000000006E6FLL;
    }

    v21 = sub_1D2FFEA04(v19, v20, v57);
    v52 = v13;
    v22 = v11;
    v23 = v5;
    v24 = v21;
    v4 = v53;

    *(v16 + 4) = v24;
    v5 = v23;
    v11 = v22;
    _os_log_impl(&dword_1D2FD9000, v14, v52, "Uninstall certificate for role: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v25 = v18;
    v9 = v55;
    MEMORY[0x1D38B3760](v25, -1, -1);
    v26 = v16;
    v2 = v54;
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  LOBYTE(v57[0]) = v11;
  result = sub_1D3036990(v57, v56);
  if (!v2)
  {
    v55 = 0;
    (*(v5 + 16))(v9, v56, v4);
    v28 = sub_1D30E8B1C();
    v29 = sub_1D30E92BC();
    v30 = os_log_type_enabled(v28, v29);
    v51 = v5;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v57[0] = v32;
      *v31 = 136446466;
      v33 = v11 == 0;
      if (v11)
      {
        v34 = 0x676E696E676973;
      }

      else
      {
        v34 = 0x6974707972636E65;
      }

      v35 = v9;
      if (v33)
      {
        v36 = 0xEA00000000006E6FLL;
      }

      else
      {
        v36 = 0xE700000000000000;
      }

      v37 = sub_1D2FFEA04(v34, v36, v57);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2082;
      sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v38 = sub_1D30E977C();
      v40 = v39;
      v41 = *(v5 + 8);
      v42 = v35;
      v43 = v4;
      v41(v42, v4);
      v44 = sub_1D2FFEA04(v38, v40, v57);

      *(v31 + 14) = v44;
      _os_log_impl(&dword_1D2FD9000, v28, v29, "Uninstalling the %{public}s certificate at “%{public}s”…", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v32, -1, -1);
      MEMORY[0x1D38B3760](v31, -1, -1);
    }

    else
    {

      v41 = *(v5 + 8);
      v43 = v4;
      v41(v9, v4);
    }

    v45 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v46 = sub_1D30E906C();

    v57[0] = 0;
    v47 = [v45 removeItemAtPath:v46 error:v57];

    if (v47)
    {
      v48 = v57[0];
    }

    else
    {
      v49 = v57[0];
      sub_1D30E87DC();

      swift_willThrow();
    }

    result = (v41)(v56, v43);
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D3038AE8()
{
  v1 = sub_1D30E8D9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CertificateManagerError();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D303911C(v0, v9);
  (*(v2 + 32))(v5, v9, v1);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1D30E948C();
  MEMORY[0x1D38B2610](0x1000000000000011, 0x80000001D30EA860);
  sub_1D3038D90(&unk_1EC749370, MEMORY[0x1E69E83A8]);
  v10 = sub_1D30E977C();
  MEMORY[0x1D38B2610](v10);

  MEMORY[0x1D38B2610](0x1000000000000027, 0x80000001D30EA880);
  v11 = v13[0];
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_1D3038CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CertificateManagerError()
{
  result = qword_1EC749FF0;
  if (!qword_1EC749FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3038D90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D3038DF0()
{
  result = qword_1EC749FE0;
  if (!qword_1EC749FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC749FE0);
  }

  return result;
}

uint64_t sub_1D3038E44(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1D2FF1804(result, a2);

    return sub_1D2FF1804(a3, a4);
  }

  return result;
}

uint64_t sub_1D3038E8C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1D2FF17B0(result, a2);

    return sub_1D2FF17B0(a3, a4);
  }

  return result;
}

uint64_t sub_1D3038ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FE8, &unk_1D30F4B50);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D3038F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749FE8, &unk_1D30F4B50);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1D3038FD4(uint64_t a1)
{
  sub_1D303908C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1D30E8D9C();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_1D303908C()
{
  if (!qword_1EE313098)
  {
    v0 = sub_1D30E8D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE313098);
    }
  }
}

uint64_t sub_1D303911C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CertificateManagerError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D3039188(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 >> 62)
  {
LABEL_11:
    v5 = sub_1D30E958C();
    v6 = a1;
    if (a1 && v5 < a1)
    {
      v6 = sub_1D30E958C();
    }

    v7 = v6;
    result = sub_1D30E958C();
    if (result < v7)
    {
      goto LABEL_21;
    }

    v8 = result;
    result = sub_1D30E958C();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v7 < 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v9 = result;
      result = v7;
      if (v9 >= v8)
      {
        return result;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D3039270()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE314400);
  __swift_project_value_buffer(v0, qword_1EE314400);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30392F0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE3143F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE314400);
  v5 = sub_1D30E928C();

  v6 = sub_1D30E8B1C();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    sub_1D30E8EAC();

    v9 = sub_1D30E909C();
    v11 = sub_1D2FFEA04(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Init model container: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1D3039470(char a1)
{
  LOBYTE(v1) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v166 = &v146 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v167 = *(v5 - 8);
  v168 = v5;
  v6 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v165 = &v146 - v7;
  v8 = sub_1D30E8A6C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v155 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D30E898C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v154 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D30E89AC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v151 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D30E87FC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v149 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D30E89CC();
  v152 = *(v20 - 8);
  v153 = v20;
  v21 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1D30E8AAC();
  v161 = *(v163 - 8);
  v23 = *(v161 + 8);
  MEMORY[0x1EEE9AC00](v163);
  v159 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1D30E8ABC();
  v158 = *(v160 - 8);
  v25 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v160);
  KeyPath = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7491C8, &qword_1D30EEC10);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v157 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v146 - v32;
  v170 = sub_1D30E8A2C();
  v172 = *(v170 - 8);
  v34 = *(v172 + 64);
  v35 = MEMORY[0x1EEE9AC00](v170);
  v156 = &v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v169 = &v146 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v146 - v39;
  if (qword_1EE3143F8 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v41 = sub_1D30E8B3C();
    v42 = __swift_project_value_buffer(v41, qword_1EE314400);
    v43 = sub_1D30E928C();
    v44 = sub_1D30E8B1C();
    if (os_log_type_enabled(v44, v43))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      *(v45 + 4) = v1 & 1;
      _os_log_impl(&dword_1D2FD9000, v44, v43, "Collect weekly analytics bypassing rate limit: %{BOOL}d", v45, 8u);
      MEMORY[0x1D38B3760](v45, -1, -1);
    }

    v46 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v47 = sub_1D30E906C();
    v48 = [v46 initWithSuiteName_];

    v171 = v48;
    if ((v1 & 1) == 0)
    {
      v162 = v42;
      if (v48)
      {
        v59 = v48;
        v60 = sub_1D30E906C();
        v61 = [v59 objectForKey_];

        if (v61)
        {
          sub_1D30E93AC();
          swift_unknownObjectRelease();
        }

        else
        {
          v179 = 0u;
          v180 = 0u;
        }

        v72 = v170;
        v73 = v172;
        v184 = v179;
        v185 = v180;
        if (*(&v180 + 1))
        {
          v74 = swift_dynamicCast();
          (*(v73 + 56))(v33, v74 ^ 1u, 1, v72);
          v75 = *(v73 + 48);
          if (v75(v33, 1, v72) != 1)
          {
            (*(v73 + 32))(v40, v33, v72);
            goto LABEL_27;
          }

LABEL_25:
          sub_1D30E896C();
          v75 = *(v73 + 48);
          if (v75(v33, 1, v72) != 1)
          {
            sub_1D2FF14DC(v33, &qword_1EC7491C8, &qword_1D30EEC10);
          }

LABEL_27:
          v76 = v169;
          sub_1D30E8A0C();
          sub_1D303B6BC(&qword_1EE313FC0, MEMORY[0x1E6969530]);
          v148 = v40;
          v77 = sub_1D30E904C();
          v78 = v172 + 8;
          v79 = *(v172 + 8);
          v79(v76, v72);
          if (v77)
          {
            v80 = KeyPath;
            sub_1D30E8A9C();
            v81 = v161;
            v82 = v78;
            v83 = v159;
            (*(v161 + 13))(v159, *MEMORY[0x1E6969A48], v163);
            sub_1D30E8A0C();
            v147 = v75;
            v84 = v72;
            v85 = v157;
            sub_1D30E8A8C();
            v86 = v76;
            v87 = v82;
            v79(v86, v84);
            (*(v81 + 1))(v83, v163);
            (*(v158 + 8))(v80, v160);
            v88 = v172;
            v89 = v79;
            if (v147(v85, 1, v84) == 1)
            {
              sub_1D2FF14DC(v85, &qword_1EC7491C8, &qword_1D30EEC10);
              v90 = sub_1D30E92AC();
              v91 = sub_1D30E8B1C();
              v92 = os_log_type_enabled(v91, v90);
              v93 = v148;
              if (v92)
              {
                v94 = swift_slowAlloc();
                *v94 = 0;
                _os_log_impl(&dword_1D2FD9000, v91, v90, "A one-week-ago date couldn’t be calculated.", v94, 2u);
                MEMORY[0x1D38B3760](v94, -1, -1);
              }

              else
              {
              }

              v89(v93, v84);
            }

            else
            {
              v161 = v79;
              v163 = v87;
              v101 = *(v88 + 32);
              v102 = v156;
              v101(v156, v85, v84);
              sub_1D30E87EC();
              sub_1D30E899C();
              sub_1D30E897C();
              sub_1D30E8A5C();
              sub_1D30E8A7C();
              v103 = v150;
              sub_1D30E89BC();
              sub_1D303B6BC(&qword_1EE315260, MEMORY[0x1E69693E8]);
              v104 = v153;
              v105 = v148;
              sub_1D30E8A1C();
              (*(v152 + 8))(v103, v104);
              v106 = v184;
              v107 = sub_1D30E89EC();
              v42 = v162;
              if (v107)
              {

                v108 = sub_1D30E8B1C();
                v109 = sub_1D30E92BC();

                if (os_log_type_enabled(v108, v109))
                {
                  v110 = v42;
                  v111 = swift_slowAlloc();
                  v112 = swift_slowAlloc();
                  *&v184 = v112;
                  *v111 = 136446210;
                  v113 = sub_1D2FFEA04(v106, *(&v106 + 1), &v184);

                  *(v111 + 4) = v113;
                  _os_log_impl(&dword_1D2FD9000, v108, v109, "Collecting weekly analytics now because they were last collected %{public}s…", v111, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v112);
                  MEMORY[0x1D38B3760](v112, -1, -1);
                  v114 = v111;
                  v42 = v110;
                  MEMORY[0x1D38B3760](v114, -1, -1);

                  v115 = v156;
                }

                else
                {

                  v115 = v102;
                }

                v142 = v170;
                v143 = v161;
                v161(v115, v170);
                v143(v105, v142);
                goto LABEL_8;
              }

              v137 = sub_1D30E927C();

              v138 = sub_1D30E8B1C();

              if (os_log_type_enabled(v138, v137))
              {
                v139 = swift_slowAlloc();
                v140 = swift_slowAlloc();
                *&v184 = v140;
                *v139 = 136446210;
                v141 = sub_1D2FFEA04(v106, *(&v106 + 1), &v184);

                *(v139 + 4) = v141;
                _os_log_impl(&dword_1D2FD9000, v138, v137, "Weekly analytics won’t be collected now because they were last collected only %{public}s.", v139, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v140);
                MEMORY[0x1D38B3760](v140, -1, -1);
                MEMORY[0x1D38B3760](v139, -1, -1);
              }

              else
              {
              }

              v144 = v170;
              v145 = v161;
              v161(v102, v170);
              v145(v105, v144);
            }
          }

          else
          {
            v95 = sub_1D30E92AC();
            v96 = sub_1D30E8B1C();
            if (os_log_type_enabled(v96, v95))
            {
              v97 = v72;
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&dword_1D2FD9000, v96, v95, "Someone invented time travel.", v98, 2u);
              MEMORY[0x1D38B3760](v98, -1, -1);

              v99 = v148;
              v100 = v97;
            }

            else
            {

              v99 = v148;
              v100 = v72;
            }

            v79(v99, v100);
          }

          return 0;
        }
      }

      else
      {
        v184 = 0u;
        v185 = 0u;
        v72 = v170;
        v73 = v172;
      }

      sub_1D2FF14DC(&v184, &qword_1EC749418, &qword_1D30F4A10);
      (*(v73 + 56))(v33, 1, 1, v72);
      goto LABEL_25;
    }

    v49 = sub_1D30E8B1C();
    v50 = sub_1D30E92BC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D2FD9000, v49, v50, "Collecting weekly analytics now, bypassing the rate limit…", v51, 2u);
      MEMORY[0x1D38B3760](v51, -1, -1);
    }

LABEL_8:
    v52 = v168;
    v53 = v166;
    v54 = *(v164 + 16);
    sub_1D30E8E7C();
    v190 = type metadata accessor for AssetPackRecord(0);
    sub_1D30E8ACC();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
    sub_1D303B6BC(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    v56 = MEMORY[0x1E69E7CC0];
    v57 = v165;
    sub_1D30E8EBC();
    v58 = sub_1D30E8E1C();
    (*(v167 + 8))(v57, v52);

    v62 = sub_1D303ABD4(v58);

    KeyPath = swift_getKeyPath();
    v40 = *(v62 + 16);
    if (v40)
    {
      v162 = v42;
      v189 = v56;
      v168 = v62;
      sub_1D3028C48(0, v40, 0);
      v63 = v168;
      v64 = v189;
      v65 = v40 - 1;
      for (i = 32; ; i += 80)
      {
        v179 = *(v63 + i);
        v67 = *(v63 + i + 16);
        v68 = *(v63 + i + 32);
        v69 = *(v63 + i + 64);
        v182 = *(v63 + i + 48);
        v183 = v69;
        v180 = v67;
        v181 = v68;
        v176 = v68;
        v177 = v182;
        v178 = v69;
        v174 = v179;
        v175 = v67;
        sub_1D303B600(&v179, v173);
        sub_1D303B600(&v179, v173);
        v40 = KeyPath;
        swift_getAtKeyPath();
        sub_1D2FF14DC(&v179, &qword_1EC74A018, &qword_1D30F4C90);
        v186 = v176;
        v187 = v177;
        v188 = v178;
        v184 = v174;
        v185 = v175;
        sub_1D2FF14DC(&v184, &qword_1EC74A018, &qword_1D30F4C90);
        KeyPath = v173[0];
        v189 = v64;
        v71 = v64[2];
        v70 = v64[3];
        if (v71 >= v70 >> 1)
        {
          sub_1D3028C48((v70 > 1), v71 + 1, 1);
          v63 = v168;
          v64 = v189;
        }

        v64[2] = v71 + 1;
        v64[v71 + 4] = KeyPath;
        if (!v65)
        {
          break;
        }

        --v65;
        KeyPath = v40;
      }
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    v116 = sub_1D303B4D4(v64);
    v33 = (v118 & 1) != 0 ? 0 : v117;
    v119 = (v118 & 1) != 0 ? 0 : v116;
    v120 = v64[2];
    if (!v120)
    {
      break;
    }

    v121 = 0;
    v1 = 0;
    while (1)
    {
      v122 = v64[v121 + 4];
      v123 = __OFADD__(v1, v122);
      v1 += v122;
      if (v123)
      {
        break;
      }

      if (v120 == ++v121)
      {
        v124 = v1 / v120;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_67:
    swift_once();
  }

  v1 = 0;
  v124 = 0.0;
LABEL_51:
  v125 = sub_1D30E927C();

  v126 = sub_1D30E8B1C();
  if (os_log_type_enabled(v126, v125))
  {
    v127 = swift_slowAlloc();
    *v127 = 134219008;
    *(v127 + 4) = v64[2];

    *(v127 + 12) = 2048;
    *(v127 + 14) = lround(v124);
    *(v127 + 22) = 2048;
    *(v127 + 24) = v1;
    *(v127 + 32) = 2048;
    *(v127 + 34) = v119;
    *(v127 + 42) = 2048;
    *(v127 + 44) = v33;
    _os_log_impl(&dword_1D2FD9000, v126, v125, "The %ld apps on this device that actively use Managed Background Assets have an average of %ld and a total of %ld asset packs downloaded and available. The least that an app has is %ld, and the most is %ld.", v127, 0x34u);
    MEMORY[0x1D38B3760](v127, -1, -1);
  }

  else
  {
  }

  v168 = sub_1D30E906C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A020, &qword_1D30F4C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D30F2300;
  *(inited + 32) = 7235949;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 7889261;
  *(inited + 64) = 0xE300000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 80) = 1851876717;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 104) = 7173491;
  *(inited + 112) = 0xE300000000000000;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 128) = 0x6E756F4373707061;
  *(inited + 136) = 0xE900000000000074;
  v129 = v64[2];

  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D3034CA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A028, &qword_1D30F4CA0);
  swift_arrayDestroy();
  sub_1D303B670();
  v130 = sub_1D30E901C();

  v131 = v168;
  AnalyticsSendEvent();

  if (v171)
  {
    v132 = v171;
    v133 = v169;
    sub_1D30E8A0C();
    v134 = sub_1D30E89DC();
    (*(v172 + 8))(v133, v170);
    v135 = sub_1D30E906C();
    [v132 setObject:v134 forKey:v135];
  }

  return 1;
}