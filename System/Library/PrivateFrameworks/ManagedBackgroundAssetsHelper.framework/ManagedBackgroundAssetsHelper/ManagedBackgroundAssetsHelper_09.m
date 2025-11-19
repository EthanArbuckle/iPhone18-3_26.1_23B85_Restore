uint64_t sub_1D30CDFD4(uint64_t a1)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE314B60);
  v3 = sub_1D30E8B1C();
  v4 = sub_1D30E92BC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v3, v4, "Erasing all records of downloaded asset packs…", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = *(a1 + 32);
  v7 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v7);
  sub_1D30E8DFC();
}

uint64_t sub_1D30CE18C(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = *(a1 + 32);
  sub_1D30E8E7C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v14 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = v18;
  *(&v17 - 2) = a1;
  *(&v17 - 1) = v15;
  sub_1D30E8E5C();
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D30CE44C(uint64_t a1, uint64_t a2)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE314B60);

  v5 = sub_1D30E8B1C();
  v6 = sub_1D30E92BC();

  if (os_log_type_enabled(v5, v6))
  {
    v15 = a2;
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v7 = 136446466;
    swift_getKeyPath();
    v13 = v6;
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v8 = sub_1D2FFEA04(v17, v18, &v19);

    *(v7 + 4) = v8;
    *(v7 + 12) = 2082;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v9 = sub_1D2FFEA04(a1, v16, &v19);

    *(v7 + 14) = v9;
    _os_log_impl(&dword_1D2FD9000, v5, v13, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v14, -1, -1);
    v10 = v7;
    a2 = v15;
    MEMORY[0x1D38B3760](v10, -1, -1);
  }

  v11 = *(a2 + 32);
  sub_1D30E8E7C();
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D30E8E3C();
}

uint64_t sub_1D30CE844@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>)
{
  v4 = v3;
  v54 = a2;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v15 = sub_1D30E91FC();
  v45 = sub_1D30E91EC();
  v53 = v15;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(a1 + 32);
  sub_1D30E8E7C();
  v66 = type metadata accessor for AssetPackRecord(0);
  sub_1D30E8ACC();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v20 = sub_1D30E8E1C();
  (*(v11 + 8))(v14, v10);
  if (v3)
  {
  }

  v65 = v19;
  if (v20 >> 62)
  {
    goto LABEL_54;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v43 = v4;
  if (v22)
  {
    v4 = 0;
    v51 = v20 & 0xFFFFFFFFFFFFFF8;
    v52 = v20 & 0xC000000000000001;
    v49 = v20;
    v50 = v18;
    v48 = v22;
    while (1)
    {
      if (v52)
      {
        v25 = MEMORY[0x1D38B29E0](v4, v20);
        v26 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          v41 = v65;
          goto LABEL_49;
        }
      }

      else
      {
        if (v4 >= *(v51 + 16))
        {
          __break(1u);
LABEL_54:
          v22 = sub_1D30E958C();
          goto LABEL_7;
        }

        v25 = *(v20 + 8 * v4 + 32);

        v26 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_46;
        }
      }

      v57 = v26;
      v56 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v58 = v25;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v28 = v59;
      v27 = v60;
      v29 = v63;
      v30 = v64;
      v32 = *v54;
      v31 = v54[1];
      v34 = v54[4];
      v33 = v54[5];
      if (v62)
      {
        v35 = v54[3];
        if (!v35 || v61 == v54[2] && v62 == v35)
        {
          v55 = 1;
          if (v59 == v32 && v60 == v31)
          {
            v55 = 1;
            if (v63 == v34)
            {
              v23 = v48;
              v20 = v49;
              v24 = v57;
              if (v64 != v33)
              {
                goto LABEL_39;
              }

LABEL_29:

              v18 = v50;
              goto LABEL_41;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v46 = v54[5];
          v47 = v63;
          v55 = sub_1D30E97CC();
          if (v28 == v32)
          {
            v33 = v46;
            v29 = v47;
            if (v27 == v31)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v33 = v46;
            v29 = v47;
          }
        }
      }

      else
      {
        v55 = 1;
        if (v59 == v32 && v60 == v31)
        {
          v55 = 1;
          if (v63 == v34)
          {
            v23 = v48;
            v20 = v49;
            v24 = v57;
            if (v64 == v33)
            {
              goto LABEL_29;
            }

LABEL_39:
            v39 = sub_1D30E97CC();

            if ((v39 & 1) == 0)
            {

              v18 = v50;
              goto LABEL_10;
            }

LABEL_40:
            v18 = v50;
            if ((v55 & 1) == 0)
            {

              goto LABEL_10;
            }

LABEL_41:
            sub_1D30E950C();
            v40 = *(v65 + 16);
            sub_1D30E953C();
            sub_1D30E954C();
            sub_1D30E951C();
            goto LABEL_10;
          }

LABEL_38:
          v23 = v48;
          v20 = v49;
          v24 = v57;
          goto LABEL_39;
        }
      }

      v36 = v29;
      v37 = v33;
      v38 = sub_1D30E97CC();
      v33 = v37;
      v29 = v36;
      if (v38)
      {
LABEL_35:
        if (v29 == v34)
        {
          v23 = v48;
          v20 = v49;
          v24 = v57;
          if (v30 != v33)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }

        goto LABEL_38;
      }

      v20 = v49;
      v18 = v50;
      v23 = v48;
      v24 = v57;
LABEL_10:
      ++v4;
      if (v24 == v23)
      {
        goto LABEL_47;
      }
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_49:

  if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
  {
    v42 = sub_1D30E958C();
  }

  else
  {
    v42 = *(v41 + 16);
  }

  *v44 = v42 != 0;
  return result;
}

uint64_t sub_1D30CEF5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FC8, &qword_1EC74A030, &qword_1D30F4CD0);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v4 + 8))(v7, v3);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B048, &unk_1D30FD0B0);
  v15 = v18;
  v18[3] = v14;
  v15[4] = sub_1D30E5A4C();
  __swift_allocate_boxed_opaque_existential_0Tm(v15);
  sub_1D2FF1768(&qword_1EC74B028, &qword_1EC74A038, &unk_1D30F4D00);
  sub_1D30E877C();
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D30CF228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62[7] = a1;
  v51 = a4;
  v58 = type metadata accessor for FilePath.ResolutionError();
  v6 = *(*(v58 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v58);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v48 - v10;
  v61 = sub_1D30E8D5C();
  v59 = *(v61 - 8);
  v11 = *(v59 + 64);
  v12 = MEMORY[0x1EEE9AC00](v61);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = sub_1D30E8D9C();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = *(v55 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v52 = &v48 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v53 = &v48 - v23;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D30E8B3C();
  v25 = __swift_project_value_buffer(v24, qword_1EE314B60);
  sub_1D30E5940(a2, v62);
  v50 = v25;
  v26 = sub_1D30E8B1C();
  v27 = sub_1D30E92BC();
  sub_1D30E599C(a2);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49 = v9;
    v30 = a3;
    v31 = v29;
    v62[0] = v29;
    *v28 = 136446466;
    *(v28 + 4) = sub_1D2FFEA04(*(a2 + 32), *(a2 + 40), v62);
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1D2FFEA04(*a2, *(a2 + 8), v62);
    _os_log_impl(&dword_1D2FD9000, v26, v27, "Removing the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the container…", v28, 0x16u);
    swift_arrayDestroy();
    v32 = v31;
    a3 = v30;
    v9 = v49;
    MEMORY[0x1D38B3760](v32, -1, -1);
    MEMORY[0x1D38B3760](v28, -1, -1);
  }

  v33 = *(a3 + 16);
  sub_1D3010008(v15);
  v34 = *a2;
  v35 = *(a2 + 8);
  v36 = v60;
  sub_1D302D670(*a2, v35, v9, v20);
  if (v36)
  {
    (*(v59 + 8))(v15, v61);
    v37 = v57;
    sub_1D3056830(v9, v57, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_allocError();
    return sub_1D3056830(v37, v38, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {
    v57 = v35;
    v58 = v34;
    v60 = a3;
    sub_1D30E8D8C();
    v40 = v59;
    v41 = v61;
    (*(v59 + 16))(v54, v15, v61);
    v42 = v53;
    sub_1D30E8D7C();
    (*(v40 + 8))(v15, v41);
    sub_1D3009B38(v42);
    (*(v55 + 8))(v42, v56);
    sub_1D30E5940(a2, v62);
    v43 = sub_1D30E8B1C();
    v44 = sub_1D30E92BC();
    sub_1D30E599C(a2);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v62[0] = v46;
      *v45 = 136446466;
      *(v45 + 4) = sub_1D2FFEA04(*(a2 + 32), *(a2 + 40), v62);
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_1D2FFEA04(v58, v57, v62);
      _os_log_impl(&dword_1D2FD9000, v43, v44, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v46, -1, -1);
      MEMORY[0x1D38B3760](v45, -1, -1);
    }

    v47 = *(v60 + 32);
    sub_1D30E8E7C();
    type metadata accessor for AssetPackRecord(0);
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    sub_1D30E8E3C();

    return sub_1D3010008(v51);
  }
}

uint64_t sub_1D30CF8A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D30E8B3C();
    __swift_project_value_buffer(v6, qword_1EE314B60);

    v7 = sub_1D30E8B1C();
    v8 = sub_1D30E92BC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1D2FFEA04(a1, a2, &v18);
      _os_log_impl(&dword_1D2FD9000, v7, v8, "Removing all asset packs for the app with the bundle ID “%{public}s”…", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D38B3760](v10, -1, -1);
      v11 = v9;
LABEL_12:
      MEMORY[0x1D38B3760](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v12 = sub_1D30E8B3C();
    __swift_project_value_buffer(v12, qword_1EE314B60);
    v7 = sub_1D30E8B1C();
    v13 = sub_1D30E92BC();
    if (os_log_type_enabled(v7, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2FD9000, v7, v13, "Removing all asset packs…", v14, 2u);
      v11 = v14;
      goto LABEL_12;
    }
  }

  v15 = *(a3 + 32);
  v16 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1D30E8DFC();
}

uint64_t sub_1D30CFB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v19 - v11;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 32);
  sub_1D30E8E7C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v15 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v15);
  v16 = v21;
  *(&v19 - 4) = v20;
  *(&v19 - 3) = v16;
  v17 = v22;
  *(&v19 - 2) = a1;
  *(&v19 - 1) = v17;
  sub_1D30E8E5C();
  (*(v9 + 8))(v12, v19);
}

uint64_t sub_1D30CFE54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v82 = type metadata accessor for FilePath.ResolutionError();
  v9 = *(*(v82 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v85 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v71 - v12;
  v13 = sub_1D30E8D5C();
  v86 = *(v13 - 8);
  v87 = v13;
  isa = v86[8].isa;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v71 - v17;
  v18 = sub_1D30E8D9C();
  v79 = *(v18 - 8);
  v80 = v18;
  v19 = *(v79 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v76 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v77 = &v71 - v24;
  sub_1D30E91FC();
  v88 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = &qword_1EE313000;
  if (a3)
  {
    v94 = a1;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v27 = v90;
    v26 = v91;

    if (v27 == a2 && v26 == a3)
    {

      v25 = &qword_1EE313000;
    }

    else
    {
      v28 = sub_1D30E97CC();

      v25 = &qword_1EE313000;
      if ((v28 & 1) == 0)
      {
      }
    }
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v83 = v4;
  v29 = sub_1D30E8B3C();
  v30 = __swift_project_value_buffer(v29, qword_1EE314B60);

  v74 = v30;
  v31 = sub_1D30E8B1C();
  v32 = sub_1D30E92BC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v94 = v75;
    *v33 = 136446466;
    v71 = v25[196];
    v90 = a1;
    swift_getKeyPath();
    LODWORD(v73) = v32;
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    v72 = v31;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v34 = v92;
    v35 = a4;
    v36 = v93;

    v37 = sub_1D2FFEA04(v34, v36, &v94);
    a4 = v35;

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    v90 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v38 = v90;
    v39 = v91;

    v40 = sub_1D2FFEA04(v38, v39, &v94);

    *(v33 + 14) = v40;
    v25 = &qword_1EE313000;
    v41 = v72;
    _os_log_impl(&dword_1D2FD9000, v72, v73, "Removing the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the container…", v33, 0x16u);
    v42 = v75;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v42, -1, -1);
    MEMORY[0x1D38B3760](v33, -1, -1);
  }

  else
  {
  }

  v75 = a4[2];
  sub_1D3010008(v89);
  v43 = v25[196];
  v94 = a1;
  swift_getKeyPath();
  v44 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  v45 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v47 = v90;
  v46 = v91;

  v48 = v83;
  v49 = v47;
  v50 = v85;
  sub_1D302D670(v49, v46, v85, v84);
  if (v48)
  {
    (v86[1].isa)(v89, v87);

    v51 = v50;
    v52 = v81;
    sub_1D3056830(v51, v81, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v52, v53, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {
    v81 = v44;
    v73 = v43;
    v82 = v45;
    v85 = a4;

    sub_1D30E8D8C();
    v55 = v86;
    v54 = v87;
    v56 = v89;
    (v86[2].isa)(v78, v89, v87);
    v57 = v77;
    sub_1D30E8D7C();
    (v55[1].isa)(v56, v54);
    sub_1D3009B38(v57);
    (*(v79 + 8))(v57, v80);

    v58 = sub_1D30E8B1C();
    v59 = sub_1D30E92BC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = a1;
      v94 = v89;
      *v60 = 136446466;
      swift_getKeyPath();
      v83 = 0;
      LODWORD(v87) = v59;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v61 = v92;
      v86 = v58;
      v62 = v93;

      v63 = sub_1D2FFEA04(v61, v62, &v94);

      *(v60 + 4) = v63;
      *(v60 + 12) = 2082;
      v90 = a1;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v65 = v90;
      v64 = v91;

      v66 = sub_1D2FFEA04(v65, v64, &v94);

      *(v60 + 14) = v66;
      v67 = v86;
      _os_log_impl(&dword_1D2FD9000, v86, v87, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v60, 0x16u);
      v68 = v89;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v68, -1, -1);
      MEMORY[0x1D38B3760](v60, -1, -1);
    }

    else
    {
    }

    v69 = v85[4];
    sub_1D30E8E7C();
    type metadata accessor for AssetPackRecord(0);
    sub_1D30E8E3C();
  }
}

uint64_t sub_1D30D0A38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t **a5@<X8>)
{
  v31 = a4;
  v28 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  sub_1D30E91FC();
  v32 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D30E8B3C();
  __swift_project_value_buffer(v16, qword_1EE314B60);

  v17 = sub_1D30E8B1C();
  v18 = sub_1D30E92BC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = a3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1D2FFEA04(a1, a2, &v34);
    _os_log_impl(&dword_1D2FD9000, v17, v18, "Making all asset packs for the app with the bundle ID “%{public}s” unavailable…", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D38B3760](v21, -1, -1);
    v22 = v20;
    a3 = v19;
    MEMORY[0x1D38B3760](v22, -1, -1);
  }

  v34 = MEMORY[0x1E69E7CC0];
  v23 = *(a3 + 32);
  sub_1D30E8E7C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v25 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v25);
  *(&v28 - 4) = a1;
  *(&v28 - 3) = a2;
  *(&v28 - 2) = &v34;
  *(&v28 - 1) = v31;
  v26 = v33;
  sub_1D30E8E5C();
  (*(v29 + 8))(v15, v30);

  if (v26)
  {
  }

  else
  {
    sub_1D30E8E7C();
    sub_1D30E8E0C();

    *v28 = v34;
  }

  return result;
}

uint64_t sub_1D30D0E84(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v67 = a4;
  v69 = type metadata accessor for FilePath.ResolutionError();
  v7 = *(*(v69 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v69);
  v73 = (v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v68 = v59 - v10;
  v11 = sub_1D30E8D5C();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v63 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v59 - v15;
  v16 = sub_1D30E8D9C();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v71 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = v59 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v64 = v59 - v22;
  sub_1D30E91FC();
  v77 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v83 = a1;
  swift_getKeyPath();
  v24 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  v25 = v23;
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v78 = sub_1D2FF67A4();
  sub_1D30E8F0C();

  v27 = v79;
  v26 = v80;

  if (v27 == a2 && v26 == a3)
  {
  }

  else
  {
    v28 = sub_1D30E97CC();

    if ((v28 & 1) == 0)
    {
    }
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v29 = sub_1D30E8B3C();
  __swift_project_value_buffer(v29, qword_1EE314B60);

  v30 = sub_1D30E8B1C();
  v31 = sub_1D30E92BC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v83 = v61;
    *v32 = 136446466;
    v79 = a1;
    swift_getKeyPath();
    v70 = v24;
    v59[1] = v25;
    v60 = v31;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v33 = v81;
    v34 = v82;

    v35 = sub_1D2FFEA04(v33, v34, &v83);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2082;
    v79 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v36 = v79;
    v37 = v80;

    v38 = sub_1D2FFEA04(v36, v37, &v83);

    *(v32 + 14) = v38;
    _os_log_impl(&dword_1D2FD9000, v30, v60, "Making the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” unavailable…", v32, 0x16u);
    v39 = v61;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v39, -1, -1);
    MEMORY[0x1D38B3760](v32, -1, -1);
  }

  v40 = v72;
  v79 = a1;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v59[-2] = a1;
  LOBYTE(v59[-1]) = 0;
  v42 = v76;
  sub_1D30E8ADC();

  sub_1D3010008(v40);
  v83 = a1;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v44 = v79;
  v43 = v80;

  v45 = v44;
  v46 = v73;
  sub_1D302D670(v45, v43, v73, v71);
  if (v42)
  {
    (*(v74 + 8))(v40, v75);

    v47 = v68;
    sub_1D3056830(v46, v68, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v47, v48, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {

    sub_1D30E8D8C();
    v50 = v74;
    v49 = v75;
    (*(v74 + 16))(v63, v40, v75);
    v51 = v64;
    sub_1D30E8D7C();
    (*(v50 + 8))(v40, v49);
    v52 = v67;
    v53 = *v67;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v52 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v53 = sub_1D30D81E4(0, v53[2] + 1, 1, v53, &qword_1EC749CE8, &unk_1D30F33F8, MEMORY[0x1E69E83A8]);
      *v67 = v53;
    }

    v55 = v65;
    v57 = v53[2];
    v56 = v53[3];
    if (v57 >= v56 >> 1)
    {
      v53 = sub_1D30D81E4(v56 > 1, v57 + 1, 1, v53, &qword_1EC749CE8, &unk_1D30F33F8, MEMORY[0x1E69E83A8]);
      *v67 = v53;
    }

    v53[2] = v57 + 1;
    (*(v55 + 32))(v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v57, v51);
  }
}

uint64_t sub_1D30D184C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a2;
  v46 = a3;
  v5 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v17 = sub_1D30E91FC();
  v49 = sub_1D30E91EC();
  v53 = v17;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a1 + 32);
  sub_1D30E8E7C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  type metadata accessor for AssetPackRecord(0);
  v20 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v22 = v20;
  v23 = sub_1D30E8E1C();
  KeyPath = v3;
  (*(v13 + 8))(v16, v12);
  if (v3)
  {
  }

  v59 = v21;
  if (v23 >> 62)
  {
    goto LABEL_36;
  }

  v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v27 = MEMORY[0x1E69E7CC0];
  v45 = KeyPath;
  if (v26)
  {
    v50 = v22;
    v22 = 0;
    v51 = v23 & 0xFFFFFFFFFFFFFF8;
    v52 = v23 & 0xC000000000000001;
    while (1)
    {
      if (v52)
      {
        v28 = MEMORY[0x1D38B29E0](v22, v23);
        v29 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          v33 = v59;
          v27 = MEMORY[0x1E69E7CC0];
          goto LABEL_23;
        }
      }

      else
      {
        if (v22 >= *(v51 + 16))
        {
          __break(1u);
LABEL_36:
          v26 = sub_1D30E958C();
          goto LABEL_7;
        }

        v28 = *(v23 + 8 * v22 + 32);

        v29 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_20;
        }
      }

      v30 = v26;
      sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *&v55 = v28;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      sub_1D30E8AEC();

      KeyPath = swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v58[0] = v55;
      v58[1] = v56;
      v58[2] = v57;
      v31 = sub_1D3042F58(v58, v54);
      sub_1D30E599C(v58);

      if (v31)
      {
        sub_1D30E950C();
        v32 = *(v59 + 16);
        sub_1D30E953C();
        sub_1D30E954C();
        sub_1D30E951C();
      }

      else
      {
      }

      v26 = v30;
      ++v22;
      if (v29 == v30)
      {
        goto LABEL_21;
      }
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v34 = v47;
  v35 = v48;
  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    v36 = *(v33 + 16);
    if (v36)
    {
      goto LABEL_26;
    }

LABEL_38:

    *v46 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v36 = sub_1D30E958C();
  if (!v36)
  {
    goto LABEL_38;
  }

LABEL_26:
  *&v55 = v27;
  result = sub_1D3028C78(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = 0;
    v38 = v55;
    v39 = v33;
    v54 = v33 & 0xC000000000000001;
    v40 = v33;
    v41 = v36;
    do
    {
      if (v54)
      {
        MEMORY[0x1D38B29E0](v37, v39);
      }

      else
      {
        v42 = *(v39 + 8 * v37 + 32);
      }

      sub_1D3010570(v34);

      *&v55 = v38;
      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D3028C78(v43 > 1, v44 + 1, 1);
        v38 = v55;
      }

      ++v37;
      *(v38 + 16) = v44 + 1;
      sub_1D3056830(v34, v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v44, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v39 = v40;
    }

    while (v41 != v37);

    *v46 = v38;
  }

  return result;
}

uint64_t sub_1D30D1F0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v34 - v16;
  sub_1D30E91FC();
  v37 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a1 + 32);
  sub_1D30E8E7C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  type metadata accessor for LicenseRecord(0);
  sub_1D3045A34(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v21 = v39;
  v22 = sub_1D30E8E1C();
  (*(v14 + 8))(v17, v38);
  if (v21)
  {
  }

  if (!(v22 >> 62))
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_7;
    }

LABEL_20:

    *v36 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v24 = sub_1D30E958C();
  if (!v24)
  {
    goto LABEL_20;
  }

LABEL_7:
  v40 = v20;
  result = sub_1D3028D00(0, v24 & ~(v24 >> 63), 0);
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v39 = 0;
    v25 = v40;
    v26 = v35;
    if ((v22 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v24; ++i)
      {
        MEMORY[0x1D38B29E0](i, v22);
        sub_1D2FF5564(v9);
        swift_unknownObjectRelease();
        v40 = v25;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D3028D00(v28 > 1, v29 + 1, 1);
          v25 = v40;
        }

        *(v25 + 16) = v29 + 1;
        sub_1D3056830(v9, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, type metadata accessor for LicenseRecord.StaticRepresentation);
      }
    }

    else
    {
      v30 = 32;
      do
      {
        v31 = *(v22 + v30);

        sub_1D2FF5564(v26);

        v40 = v25;
        v33 = *(v25 + 16);
        v32 = *(v25 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D3028D00(v32 > 1, v33 + 1, 1);
          v25 = v40;
        }

        *(v25 + 16) = v33 + 1;
        sub_1D3056830(v26, v25 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, type metadata accessor for LicenseRecord.StaticRepresentation);
        v30 += 8;
        --v24;
      }

      while (v24);
    }

    *v36 = v25;
  }

  return result;
}

uint64_t sub_1D30D2408@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v36 - v12;
  sub_1D30E91FC();
  v38 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 32);
  sub_1D30E8E7C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  type metadata accessor for AppReviewRecord();
  v16 = sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  v17 = MEMORY[0x1E69E7CC0];
  v18 = v16;
  sub_1D30E8EBC();
  v19 = sub_1D30E8E1C();
  (*(v10 + 8))(v13, v9);
  if (v2)
  {
  }

  if (!(v19 >> 62))
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_20:

    *a2 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v21 = sub_1D30E958C();
  if (!v21)
  {
    goto LABEL_20;
  }

LABEL_7:
  v43 = v17;
  result = sub_1D3028D44(0, v21 & ~(v21 >> 63), 0);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v36[1] = 0;
    v37 = a2;
    v22 = v43;
    v23 = v19;
    v39 = v18;
    v40 = v19;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v41 = MEMORY[0x1D38B29E0](v24, v23);
        swift_getKeyPath();
        sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord);
        swift_unknownObjectRetain();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();
        swift_unknownObjectRelease_n();

        v25 = v41;
        v26 = v42;
        v43 = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D3028D44((v27 > 1), v28 + 1, 1);
          v22 = v43;
        }

        ++v24;
        *(v22 + 16) = v28 + 1;
        v29 = v22 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v23 = v40;
      }

      while (v21 != v24);
    }

    else
    {
      v30 = 32;
      do
      {
        v41 = *(v23 + v30);
        swift_getKeyPath();
        sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord);
        swift_retain_n();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v31 = v41;
        v32 = v42;
        v43 = v22;
        v34 = *(v22 + 16);
        v33 = *(v22 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1D3028D44((v33 > 1), v34 + 1, 1);
          v22 = v43;
        }

        *(v22 + 16) = v34 + 1;
        v35 = v22 + 16 * v34;
        *(v35 + 32) = v31;
        *(v35 + 40) = v32;
        v30 += 8;
        --v21;
        v23 = v40;
      }

      while (v21);
    }

    *v37 = v22;
  }

  return result;
}

uint64_t sub_1D30D2974(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 32);
  sub_1D30E8E7C();
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8E4C();

  sub_1D30E8E7C();
  sub_1D30E8E0C();
}

uint64_t sub_1D30D2AC0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v45 = a4;
  v41 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D30E8B3C();
  __swift_project_value_buffer(v18, qword_1EE314B60);
  v19 = sub_1D30E928C();

  v20 = sub_1D30E8B1C();

  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v44 = v5;
    v23 = a1;
    v24 = v22;
    v46[0] = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1D2FFEA04(v23, a2, v46);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, v46);
    _os_log_impl(&dword_1D2FD9000, v20, v19, "With record of App Review app with bundle ID: %{public}s body: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    v25 = v24;
    a1 = v23;
    v6 = v44;
    MEMORY[0x1D38B3760](v25, -1, -1);
    MEMORY[0x1D38B3760](v21, -1, -1);
  }

  v26 = *(a3 + 32);
  v27 = sub_1D30E8E7C();
  v44 = &v41;
  MEMORY[0x1EEE9AC00](v27);
  *(&v41 - 2) = a1;
  *(&v41 - 1) = a2;
  v46[2] = type metadata accessor for AppReviewRecord();
  sub_1D30E8ACC();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v28 - 8) + 56))(v13, 0, 1, v28);
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8EBC();
  v29 = sub_1D30E8E1C();
  (*(v42 + 8))(v17, v43);
  if (v6)
  {
  }

  v47 = v29;
  v31 = sub_1D3028008();
  if (!v31)
  {

    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    *v35 = a1;
    v35[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v32 = v31;
  if (v47 >> 62)
  {
    v36 = sub_1D30E958C();

    if (v36)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v33 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v33)
    {
LABEL_11:
      type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      *v34 = a1;
      v34[1] = a2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  v37 = *(v45 + 32);
  sub_1D30E8E7C();
  sub_1D30E8E3C();

  v46[0] = v32;
  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v39 = v46[0];
  v38 = v46[1];
  sub_1D30E8E7C();
  sub_1D30E8E0C();

  v40 = v41;
  *v41 = v39;
  v40[1] = v38;
  return result;
}

uint64_t sub_1D30D3148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v46 = a4;
  v54 = a3;
  v55 = a2;
  v44 = a5;
  v6 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v43 - v16;
  v18 = sub_1D30E91FC();
  v45 = sub_1D30E91EC();
  v51 = v18;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *(a1 + 32);
  sub_1D30E8E7C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  type metadata accessor for AssetPackRecord(0);
  v21 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v23 = v50;
  v24 = sub_1D30E8E1C();
  (*(v14 + 8))(v17, v13);
  if (v23)
  {
  }

  v49 = v21;
  v43[1] = 0;

  v59 = v22;
  v50 = v24;
  if (v24 >> 62)
  {
    goto LABEL_39;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v27 = v53;
  v28 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v29 = 0;
    v47 = v50 & 0xFFFFFFFFFFFFFF8;
    v48 = v50 & 0xC000000000000001;
    while (1)
    {
      if (v48)
      {
        v30 = MEMORY[0x1D38B29E0](v29, v50);
        v27 = v49;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v36 = v59;
          v28 = MEMORY[0x1E69E7CC0];
          goto LABEL_26;
        }
      }

      else
      {
        v27 = v49;
        if (v29 >= *(v47 + 16))
        {
          __break(1u);
LABEL_39:
          v26 = sub_1D30E958C();
          goto LABEL_7;
        }

        v30 = *(v50 + 8 * v29 + 32);

        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_23;
        }
      }

      sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v56 = v30;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v33 = v57;
      v32 = v58;

      if (v33 == v55 && v32 == v54)
      {
        break;
      }

      v34 = sub_1D30E97CC();

      v27 = v53;
      if (v34)
      {
        goto LABEL_20;
      }

LABEL_10:
      ++v29;
      if (v31 == v26)
      {
        goto LABEL_24;
      }
    }

    v27 = v53;
LABEL_20:
    sub_1D30E950C();
    v35 = *(v59 + 16);
    sub_1D30E953C();
    sub_1D30E954C();
    sub_1D30E951C();
    goto LABEL_10;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_26:

  if ((v36 & 0x8000000000000000) == 0 && (v36 & 0x4000000000000000) == 0)
  {
    v37 = *(v36 + 16);
    if (v37)
    {
      goto LABEL_29;
    }

LABEL_41:

    *v44 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v37 = sub_1D30E958C();
  if (!v37)
  {
    goto LABEL_41;
  }

LABEL_29:
  v57 = v28;
  result = sub_1D3028C78(0, v37 & ~(v37 >> 63), 0);
  if (v37 < 0)
  {
    __break(1u);
  }

  else
  {
    v38 = 0;
    v39 = v57;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D38B29E0](v38, v36);
      }

      else
      {
        v40 = *(v36 + 8 * v38 + 32);
      }

      sub_1D3010570(v27);

      v57 = v39;
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D3028C78(v41 > 1, v42 + 1, 1);
        v39 = v57;
      }

      ++v38;
      *(v39 + 16) = v42 + 1;
      sub_1D3056830(v27, v39 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42, type metadata accessor for AssetPackRecord.StaticRepresentation);
    }

    while (v37 != v38);

    *v44 = v39;
  }

  return result;
}

void sub_1D30D3828(uint64_t a1)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = sub_1D30E8E7C();
    MEMORY[0x1EEE9AC00](v5);
    sub_1D30E8DFC();
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D30E8B3C();
    __swift_project_value_buffer(v6, qword_1EE314B60);
    v7 = sub_1D30E92AC();
    v8 = sub_1D30E8B1C();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D2FD9000, v8, v7, "The default app workspace is unavailable.", v9, 2u);
      MEMORY[0x1D38B3760](v9, -1, -1);
    }
  }
}

uint64_t sub_1D30D3A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v19 - v11;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 32);
  sub_1D30E8E7C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  type metadata accessor for AppReviewRecord();
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  v15 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v15);
  v16 = v21;
  *(&v19 - 4) = v20;
  *(&v19 - 3) = a1;
  v17 = v22;
  *(&v19 - 2) = v16;
  *(&v19 - 1) = v17;
  sub_1D30E8E5C();
  (*(v9 + 8))(v12, v19);
}

uint64_t sub_1D30D3CF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE314B60);
  v7 = sub_1D30E927C();

  v8 = sub_1D30E8B1C();

  v9 = &qword_1EE313000;
  if (os_log_type_enabled(v8, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136446210;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
    sub_1D30E8F0C();

    v12 = sub_1D2FFEA04(a1, v26, &v27);
    v9 = &qword_1EE313000;

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1D2FD9000, v8, v7, "Checking whether the record of the App Review app with the bundle ID “%{public}s” is stale…", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D38B3760](v11, -1, -1);
    MEMORY[0x1D38B3760](v10, -1, -1);
  }

  v13 = v9[227];
  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord);
  sub_1D30E8F0C();

  v14 = sub_1D30E906C();

  v15 = [a2 applicationIsInstalled_];

  if ((v15 & 1) == 0)
  {
    v16 = sub_1D30E92AC();

    v17 = sub_1D30E8B1C();

    if (os_log_type_enabled(v17, v16))
    {
      v23 = v16;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136446210;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v20 = sub_1D2FFEA04(a1, v26, &v27);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1D2FD9000, v17, v23, "The App Review app with the bundle ID “%{public}s” isn’t installed; removing its record from the database…", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1D38B3760](v19, -1, -1);
      MEMORY[0x1D38B3760](v18, -1, -1);
    }

    v21 = *(a3 + 32);
    sub_1D30E8E7C();
    type metadata accessor for AppReviewRecord();
    sub_1D30E8E3C();

    *a4 = 1;
  }
}

uint64_t sub_1D30D4214(uint64_t a1)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 32);
  v3 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v3);
  sub_1D30E8DFC();
}

uint64_t sub_1D30D4320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 32);
  sub_1D30E8E7C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v15 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v19;
  v16 = v20;
  *(&v19 - 4) = a1;
  *(&v19 - 3) = v17;
  *(&v19 - 2) = v16;
  sub_1D30E8E5C();
  (*(v9 + 8))(v12, v8);
}

void sub_1D30D45E4(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v152 = a3;
  v157 = a2;
  v178 = *MEMORY[0x1E69E9840];
  v160 = type metadata accessor for FilePath.ResolutionError();
  v4 = *(*(v160 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v160);
  v167 = (v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v159 = v148 - v7;
  v172 = sub_1D30E8D5C();
  v168 = *(v172 - 1);
  v8 = *(v168 + 64);
  v9 = MEMORY[0x1EEE9AC00](v172);
  v155 = v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v170 = v148 - v11;
  v12 = sub_1D30E8D9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v150 = v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v151 = v148 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v156 = v148 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v161 = v148 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v165 = (v148 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v154 = v148 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v148 - v27;
  sub_1D30E91FC();
  v169 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v162 = v13;
  v171 = v12;
  v153 = sub_1D30E8B3C();
  v29 = __swift_project_value_buffer(v153, qword_1EE314B60);
  v30 = sub_1D30E927C();

  v164 = v29;
  v31 = sub_1D30E8B1C();

  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    v163 = v28;
    v33 = v32;
    v158 = swift_slowAlloc();
    v173 = v158;
    v174 = a1;
    *v33 = 136446466;
    v148[2] = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    swift_getKeyPath();
    v149 = v30;
    v148[1] = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v34 = v176;
    v35 = v177;

    v36 = sub_1D2FFEA04(v34, v35, &v173);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2082;
    v174 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v37 = v174;
    v38 = v175;

    v39 = sub_1D2FFEA04(v37, v38, &v173);

    *(v33 + 14) = v39;
    _os_log_impl(&dword_1D2FD9000, v31, v149, "Checking whether the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” is stale…", v33, 0x16u);
    v40 = v158;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v40, -1, -1);
    v41 = v33;
    v28 = v163;
    MEMORY[0x1D38B3760](v41, -1, -1);
  }

  v42 = v170;
  sub_1D3010008(v170);
  v43 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v173 = a1;
  swift_getKeyPath();
  v44 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  v45 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  v46 = sub_1D2FF67A4();
  v170 = v45;
  v158 = v46;
  sub_1D30E8F0C();

  v48 = v174;
  v47 = v175;

  v49 = v166;
  v50 = v48;
  v51 = v167;
  sub_1D302D670(v50, v47, v167, v165);
  if (v49)
  {
    (*(v168 + 8))(v42, v172);

    v52 = v51;
    v53 = v159;
    sub_1D3056830(v52, v159, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    v54 = swift_allocError();
    sub_1D3056830(v53, v55, type metadata accessor for FilePath.ResolutionError);
LABEL_16:
    v172 = 0;
    goto LABEL_17;
  }

  v166 = 0;
  v167 = v44;

  sub_1D30E8D8C();
  v56 = v168;
  v57 = v172;
  (*(v168 + 16))(v155, v42, v172);
  sub_1D30E8D7C();
  (*(v56 + 8))(v42, v57);
  v58 = *(v157 + 16);
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v153, qword_1EE3133A8);
  v59 = sub_1D30E928C();
  v60 = v162;
  v61 = *(v162 + 16);
  v62 = v171;
  v168 = v162 + 16;
  v165 = v61;
  (v61)(v161, v28, v171);
  v63 = sub_1D30E8B1C();
  if (os_log_type_enabled(v63, v59))
  {
    v64 = swift_slowAlloc();
    v163 = v28;
    v65 = v64;
    v172 = swift_slowAlloc();
    v174 = v172;
    *v65 = 136446210;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v66 = v161;
    v67 = sub_1D30E977C();
    LODWORD(v160) = v59;
    v68 = v43;
    v69 = a1;
    v71 = v70;
    v72 = *(v60 + 8);
    v72(v66, v171);
    v73 = sub_1D2FFEA04(v67, v71, &v174);
    a1 = v69;
    v43 = v68;

    *(v65 + 4) = v73;
    _os_log_impl(&dword_1D2FD9000, v63, v160, "Item exists at: %{public}s", v65, 0xCu);
    v74 = v172;
    __swift_destroy_boxed_opaque_existential_1(v172);
    v62 = v171;
    MEMORY[0x1D38B3760](v74, -1, -1);
    v75 = v65;
    v28 = v163;
    MEMORY[0x1D38B3760](v75, -1, -1);
  }

  else
  {

    v72 = *(v60 + 8);
    v72(v161, v62);
  }

  v76 = v156;
  v77 = v166;
  sub_1D3003CF4(v28, 0, v156);
  v172 = v77;
  if (v77)
  {
    v72(v28, v62);
    v54 = v172;
    goto LABEL_16;
  }

  v163 = v28;
  LOBYTE(v174) = 0;
  v95 = v76;
  v96 = [objc_opt_self() defaultManager];
  sub_1D30E8D3C();
  v97 = sub_1D30E906C();

  v98 = [v96 fileExistsAtPath:v97 isDirectory:&v174];

  v99 = v171;
  v100 = (v162 + 8);
  v72(v95, v171);
  if ((v98 & 1) == 0)
  {
    v101 = v72;
    v102 = sub_1D30E92AC();
    v103 = v151;
    (v165)(v151, v163, v99);

    v104 = sub_1D30E8B1C();

    if (os_log_type_enabled(v104, v102))
    {
      v105 = swift_slowAlloc();
      v162 = v43;
      v106 = v105;
      v168 = swift_slowAlloc();
      v173 = v168;
      *v106 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v165 = v104;
      v107 = sub_1D30E977C();
      v166 = v100;
      v108 = v107;
      v110 = v109;
      v161 = v101;
      (v101)(v103, v99);
      v111 = sub_1D2FFEA04(v108, v110, &v173);

      *(v106 + 4) = v111;
      *(v106 + 12) = 2082;
      v174 = a1;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v112 = v176;
      LODWORD(v164) = v102;
      v113 = a1;
      v114 = v177;

      v115 = sub_1D2FFEA04(v112, v114, &v173);

      *(v106 + 14) = v115;
      *(v106 + 22) = 2082;
      v174 = v113;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      v116 = v161;
      sub_1D30E8F0C();

      v117 = v174;
      v118 = v175;

      v99 = v171;

      v119 = sub_1D2FFEA04(v117, v118, &v173);

      *(v106 + 24) = v119;
      v120 = v165;
      _os_log_impl(&dword_1D2FD9000, v165, v164, "No root directory exists at “%{public}s”; removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v106, 0x20u);
      v121 = v168;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v121, -1, -1);
      MEMORY[0x1D38B3760](v106, -1, -1);
    }

    else
    {

      v142 = v103;
      v116 = v101;
      (v101)(v142, v99);
    }

    v143 = *(v157 + 32);
    sub_1D30E8E7C();
    type metadata accessor for AssetPackRecord(0);
    sub_1D30E8E3C();

    v116(v163, v99);
    goto LABEL_31;
  }

  if (v174)
  {
    v72(v163, v99);
    goto LABEL_20;
  }

  v122 = v72;
  v162 = v43;
  v123 = sub_1D30E92AC();
  v124 = v150;
  (v165)(v150, v163, v99);

  v125 = sub_1D30E8B1C();

  v126 = os_log_type_enabled(v125, v123);
  v166 = v100;
  if (v126)
  {
    v127 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v173 = v168;
    *v127 = 136446722;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v165 = v125;
    v128 = sub_1D30E977C();
    v130 = v129;
    v161 = v122;
    (v122)(v124, v99);
    v131 = sub_1D2FFEA04(v128, v130, &v173);

    *(v127 + 4) = v131;
    *(v127 + 12) = 2082;
    v174 = a1;
    swift_getKeyPath();
    LODWORD(v160) = v123;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v132 = v176;
    v133 = a1;
    v134 = v177;

    v135 = sub_1D2FFEA04(v132, v134, &v173);
    a1 = v133;

    *(v127 + 14) = v135;
    *(v127 + 22) = 2082;
    v174 = v133;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    v136 = v161;
    sub_1D30E8F0C();

    v137 = v174;
    v138 = v175;

    v99 = v171;

    v139 = sub_1D2FFEA04(v137, v138, &v173);

    *(v127 + 24) = v139;
    v140 = v165;
    _os_log_impl(&dword_1D2FD9000, v165, v160, "The item at “%{public}s” isn’t a directory; removing it and, from the database, the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v127, 0x20u);
    v141 = v168;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v141, -1, -1);
    MEMORY[0x1D38B3760](v127, -1, -1);
  }

  else
  {

    v144 = v124;
    v136 = v122;
    (v122)(v144, v99);
  }

  v145 = v163;
  v146 = v172;
  sub_1D3009B38(v163);
  v172 = v146;
  if (!v146)
  {
    v147 = *(v157 + 32);
    sub_1D30E8E7C();
    type metadata accessor for AssetPackRecord(0);
    sub_1D30E8E3C();

    v136(v145, v99);
LABEL_31:
    *v152 = 1;
    goto LABEL_20;
  }

  v136(v145, v99);
  v54 = v172;
  v172 = 0;
LABEL_17:
  v78 = sub_1D30E929C();

  v79 = v54;
  v80 = sub_1D30E8B1C();

  if (!os_log_type_enabled(v80, v78))
  {

LABEL_20:

    goto LABEL_21;
  }

  v81 = swift_slowAlloc();
  v168 = swift_slowAlloc();
  v171 = swift_slowAlloc();
  v173 = v171;
  v174 = a1;
  *v81 = 136446722;
  swift_getKeyPath();
  LODWORD(v167) = v78;
  v166 = v80;
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v82 = v176;
  v83 = a1;
  v84 = v177;

  v85 = sub_1D2FFEA04(v82, v84, &v173);

  *(v81 + 4) = v85;
  *(v81 + 12) = 2082;
  v174 = v83;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v86 = v174;
  v87 = v175;

  v88 = sub_1D2FFEA04(v86, v87, &v173);

  *(v81 + 14) = v88;
  *(v81 + 22) = 2114;
  v89 = v54;
  v90 = _swift_stdlib_bridgeErrorToNSError();
  *(v81 + 24) = v90;
  v91 = v168;
  *v168 = v90;
  v92 = v166;
  _os_log_impl(&dword_1D2FD9000, v166, v167, "Checking whether the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” is stale failed: %{public}@", v81, 0x20u);
  sub_1D2FF14DC(v91, &qword_1EC7493A0, &qword_1D30EF480);
  MEMORY[0x1D38B3760](v91, -1, -1);
  v93 = v171;
  swift_arrayDestroy();
  MEMORY[0x1D38B3760](v93, -1, -1);
  MEMORY[0x1D38B3760](v81, -1, -1);

LABEL_21:
  v94 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D30D5B70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  v16 = sub_1D30E91FC();
  v45 = sub_1D30E91EC();
  v52 = v16;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *(a1 + 32);
  sub_1D30E8E7C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  type metadata accessor for LicenseRecord(0);
  v19 = sub_1D3045A34(&qword_1EE313B08, type metadata accessor for LicenseRecord);
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v21 = v54;
  v22 = sub_1D30E8E1C();
  (*(v12 + 8))(v15, v11);
  v44 = v21;
  if (v21)
  {
  }

  v62 = v20;
  if (v22 >> 62)
  {
    goto LABEL_37;
  }

  v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v26 = v22;
    v22 = 0;
    v50 = v26 & 0xC000000000000001;
    v51 = v26;
    v48 = v6;
    v49 = v26 & 0xFFFFFFFFFFFFFF8;
    v46 = v24;
    v47 = v19;
    while (1)
    {
      if (v50)
      {
        v27 = MEMORY[0x1D38B29E0](v22, v51);
        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          v25 = v62;
          break;
        }
      }

      else
      {
        if (v22 >= *(v49 + 16))
        {
          __break(1u);
LABEL_37:
          v24 = sub_1D30E958C();
          goto LABEL_7;
        }

        v27 = *(v51 + 8 * v22 + 32);

        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_22;
        }
      }

      v54 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v55 = v27;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313B10, type metadata accessor for LicenseRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF7FF8();
      sub_1D30E8F0C();

      v30 = v56;
      v29 = v57;
      v31 = v58;
      v32 = v59;
      v34 = v60;
      v33 = v61;
      if ((v61 & 0x3000000000000000) == 0x2000000000000000 && !(v57 | v56 | v58 | v59 | v60) && v61 == 0x2000000000000000)
      {

        sub_1D30E950C();
        v35 = *(v62 + 16);
        sub_1D30E953C();
        sub_1D30E954C();
        sub_1D30E951C();
      }

      else
      {

        sub_1D2FF804C(v30, v29, v31, v32, v34, v33);
      }

      v19 = v47;
      v6 = v48;
      ++v22;
      if (v28 == v46)
      {
        goto LABEL_23;
      }
    }
  }

  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v36 = *(v25 + 16);
    if (v36)
    {
      goto LABEL_27;
    }

LABEL_39:

    *v43 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v36 = sub_1D30E958C();
  if (!v36)
  {
    goto LABEL_39;
  }

LABEL_27:
  v56 = MEMORY[0x1E69E7CC0];
  result = sub_1D3028D00(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = 0;
    v38 = v56;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D38B29E0](v37, v25);
      }

      else
      {
        v39 = *(v25 + 8 * v37 + 32);
      }

      sub_1D2FF5564(v6);

      v56 = v38;
      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1D3028D00(v40 > 1, v41 + 1, 1);
        v38 = v56;
      }

      ++v37;
      *(v38 + 16) = v41 + 1;
      sub_1D3056830(v6, v38 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41, type metadata accessor for LicenseRecord.StaticRepresentation);
    }

    while (v36 != v37);

    *v43 = v38;
  }

  return result;
}

uint64_t sub_1D30D6228(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v105 = a4;
  v114 = a3;
  v122 = a2;
  v116 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v109 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v100 - v9;
  v115 = sub_1D30E8D5C();
  isa = v115[-1].isa;
  v10 = *(isa + 8);
  v11 = MEMORY[0x1EEE9AC00](v115);
  v108 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v107 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v100 - v15;
  v17 = type metadata accessor for FilePath.ResolutionError();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = (&v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v100 - v22;
  v24 = sub_1D30E8D9C();
  v118 = *(v24 - 8);
  v119 = v24;
  v25 = v118[8];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v106 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v100 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v100 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v34);
  v117 = &v100 - v35;
  sub_1D30E91FC();
  v121 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = sub_1D30E8D4C();
  v37 = v120;
  sub_1D302D670(v36, v38, v21, v33);
  if (v37)
  {

    sub_1D3056830(v21, v23, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v23, v39, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {

    sub_1D30E8D8C();
    v103 = *(isa + 2);
    v104 = isa + 16;
    v103(v16, v116, v115);
    v40 = v117;
    sub_1D30E8D7C();
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D30E8B3C();
    v42 = __swift_project_value_buffer(v41, qword_1EE314B60);
    v43 = sub_1D30E927C();
    v44 = v118;
    v45 = v119;
    v101 = v118[2];
    v101(v30, v40, v119);
    v102 = v42;
    v46 = sub_1D30E8B1C();
    if (os_log_type_enabled(v46, v43))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v123 = v48;
      *v47 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v49 = sub_1D30E977C();
      v51 = v50;
      v120 = v118[1];
      v120(v30, v119);
      v52 = sub_1D2FFEA04(v49, v51, &v123);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D2FD9000, v46, v43, "Checking whether the asset pack at “%{public}s” is orphaned…", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1D38B3760](v48, -1, -1);
      MEMORY[0x1D38B3760](v47, -1, -1);
    }

    else
    {

      v120 = v44[1];
      v120(v30, v45);
    }

    v53 = *(v114 + 32);
    sub_1D30E8E7C();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v54 - 8) + 56))(v109, 1, 1, v54);
    type metadata accessor for AssetPackRecord(0);
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
    v55 = v110;
    sub_1D30E8EBC();
    v56 = sub_1D30E8E1C();
    (*(v111 + 8))(v55, v112);

    MEMORY[0x1EEE9AC00](v57);
    *(&v100 - 2) = v122;
    v58 = sub_1D3040DC8(sub_1D30E6E30, &v100 - 4, v56);
    MEMORY[0x1EEE9AC00](v58);
    *(&v100 - 2) = v116;
    v60 = sub_1D3040DC8(sub_1D30E6E50, &v100 - 4, v59);
    if (v60 >> 62)
    {
      v61 = sub_1D30E958C();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v115;

    v63 = v108;
    v64 = v119;
    if (v61)
    {
      v120(v117, v119);
    }

    else
    {
      v66 = sub_1D30E92AC();
      v67 = v103;
      v103(v107, v122, v62);
      v67(v63, v116, v62);
      v68 = v106;
      v101(v106, v117, v64);
      v69 = sub_1D30E8B1C();
      LODWORD(v122) = v66;
      if (os_log_type_enabled(v69, v66))
      {
        v70 = swift_slowAlloc();
        v71 = v62;
        v116 = swift_slowAlloc();
        v123 = v116;
        *v70 = 136446722;
        v72 = v70;
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380]);
        v73 = v107;
        v74 = sub_1D30E977C();
        v115 = v69;
        v75 = v74;
        v77 = v76;
        v78 = *(isa + 1);
        v78(v73, v71);
        v79 = sub_1D2FFEA04(v75, v77, &v123);

        *(v72 + 1) = v79;
        *(v72 + 6) = 2082;
        v80 = v108;
        v81 = sub_1D30E977C();
        v83 = v82;
        v78(v80, v71);
        v84 = sub_1D2FFEA04(v81, v83, &v123);

        *(v72 + 14) = v84;
        *(v72 + 11) = 2082;
        v85 = v119;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
        v86 = v106;
        v87 = sub_1D30E977C();
        v89 = v88;
        v90 = v120;
        v120(v86, v85);
        v91 = sub_1D2FFEA04(v87, v89, &v123);

        *(v72 + 3) = v91;
        v92 = v115;
        _os_log_impl(&dword_1D2FD9000, v115, v122, "No record of an asset pack for the app with the bundle ID “%{public}s” has the root-directory component “%{public}s”; removing the asset pack at “%{public}s”…", v72, 0x20u);
        v93 = v116;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v93, -1, -1);
        v94 = v72;
        v95 = v114;
        MEMORY[0x1D38B3760](v94, -1, -1);
      }

      else
      {

        v96 = v68;
        v85 = v119;
        v90 = v120;
        v120(v96, v119);
        v97 = *(isa + 1);
        v97(v63, v62);
        v97(v107, v62);
        v95 = v114;
      }

      v98 = *(v95 + 16);
      v99 = v117;
      sub_1D3009B38(v117);
      v90(v99, v85);
      *v105 = 1;
    }
  }
}

uint64_t sub_1D30D6E48(uint64_t *a1)
{
  v1 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  if (v1 == sub_1D30E8D4C() && v5 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D30E97CC();
  }

  return v3 & 1;
}

uint64_t sub_1D30D7030(uint64_t *a1)
{
  v2 = sub_1D30E8D5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D3010008(v6);
  sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380]);
  v8 = sub_1D30E905C();
  (*(v3 + 8))(v6, v2);

  return v8 & 1;
}

uint64_t sub_1D30D71D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v27 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749448, &unk_1D30EF590);
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749450, &unk_1D30FD100);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749458, &qword_1D30EF5A0);
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v24 - v16;
  v18 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FD8, &qword_1EC749450, &unk_1D30FD100);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v10 + 8))(v13, v9);
  v30 = v24;
  v31 = v25;
  sub_1D30E87AC();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749460, &qword_1D30EF5D0);
  v20 = v27;
  v27[3] = v19;
  v20[4] = sub_1D2FF15A8();
  __swift_allocate_boxed_opaque_existential_0Tm(v20);
  sub_1D2FF1768(&qword_1EE313FF0, &qword_1EC749458, &qword_1D30EF5A0);
  sub_1D2FF1768(&qword_1EE314000, &qword_1EC749448, &unk_1D30EF590);
  v21 = v26;
  v22 = v29;
  sub_1D30E875C();
  (*(v28 + 8))(v8, v22);
  (*(v14 + 8))(v17, v21);
}

uint64_t sub_1D30D75AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = a1;
  v46 = a4;
  v55 = type metadata accessor for FilePath.ResolutionError();
  v6 = *(*(v55 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v55);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v44 - v10;
  v57 = sub_1D30E8D5C();
  v11 = *(v57 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v57);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = sub_1D30E8D9C();
  v52 = *(v17 - 8);
  v53 = v17;
  v18 = *(v52 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v48 = &v44 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v44 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v51 = &v44 - v26;
  sub_1D30E91FC();
  v58 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v47 = *(a3 + 16);
  sub_1D3010008(v16);
  v61 = a2;
  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v28 = v59;
  v27 = v60;

  v29 = v56;
  sub_1D302D670(v28, v27, v9, v21);
  if (v29)
  {

    (*(v11 + 8))(v16, v57);
    v30 = type metadata accessor for FilePath.ResolutionError;
    v31 = v9;
    v32 = v54;
    sub_1D3056830(v31, v54, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v32, v33, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {

    sub_1D30E8D8C();
    v34 = v57;
    (*(v11 + 16))(v50, v16, v57);
    v35 = v49;
    sub_1D30E8D7C();
    (*(v11 + 8))(v16, v34);
    v36 = v51;
    sub_1D3003CF4(v35, 0, v51);
    v38 = *(v52 + 8);
    v39 = v35;
    v40 = v53;
    v38(v39, v53);
    v41 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v42 = sub_1D30E906C();

    LODWORD(v30) = [v41 fileExistsAtPath_];

    v38(v36, v40);
    if (v30)
    {
      v43 = v46;
      *v46 = v45;
      *(v43 + 8) = 0;
    }
  }

  return v30 & 1;
}

void *Helper.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[9];

  return v0;
}

uint64_t Helper.__deallocating_deinit()
{
  Helper.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

char *sub_1D30D7C08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
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

char *sub_1D30D7D0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B80, &qword_1D30F3238);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D30D7E60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFF0, &unk_1D30FCFB0);
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

void *sub_1D30D7F80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B080, &unk_1D30FD1A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A018, &qword_1D30F4C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D30D80C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1D30D81E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_1D30D83C0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1D30E989C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1D30D8A74(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D30D84A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D30E98AC();
  sub_1D30E90BC();
  v9 = sub_1D30E98EC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1D30E97CC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1D30D8B94(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D30D85F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFE8, &unk_1D30FCFA0);
  result = sub_1D30E945C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1D30E989C();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D30D8814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B088, &qword_1D30FD1B8);
  result = sub_1D30E945C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1D30E98AC();
      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D30D8A74(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D30D85F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D30D8D14();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D30D8FB0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1D30E989C();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D30E980C();
  __break(1u);
  return result;
}

uint64_t sub_1D30D8B94(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D30D8814(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D30D8E54();
      goto LABEL_16;
    }

    sub_1D30D91A0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1D30E98AC();
  sub_1D30E90BC();
  result = sub_1D30E98EC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D30E97CC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D30E980C();
  __break(1u);
  return result;
}

void *sub_1D30D8D14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFE8, &unk_1D30FCFA0);
  v2 = *v0;
  v3 = sub_1D30E944C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1D30D8E54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B088, &qword_1D30FD1B8);
  v2 = *v0;
  v3 = sub_1D30E944C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1D30D8FB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFE8, &unk_1D30FCFA0);
  result = sub_1D30E945C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1D30E989C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D30D91A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B088, &qword_1D30FD1B8);
  result = sub_1D30E945C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1D30E98AC();

      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D30D93EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D30D9404(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D30D944C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D30E958C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x1EEE6A410](0, v2, 0, a1);
}

id sub_1D30D94B0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D30E906C();
  v2 = [v0 initWithSuiteName_];

  if (os_variant_has_internal_content())
  {
    if (!v2)
    {
      return 0;
    }

    v2 = v2;
    v3 = sub_1D30E906C();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D30D9594(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38B2760](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D30D83C0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D30D9608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626F6C4768746977 && a2 == 0xEC00000044496C61;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EBD30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D30D9778(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE570 == a2)
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

uint64_t sub_1D30D988C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC00000061746144 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EDF50 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF70 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF90 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EDFB0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EDFD0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D6C6C6174736E69 && a2 == 0xEF74736566696E61 || (sub_1D30E97CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EDFF0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE010 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D30EE030 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE060 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE080 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE0A0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D30EE0C0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE0F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6176417349746573 && a2 == 0xEE00656C62616C69 || (sub_1D30E97CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE110 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x734165766F6D6572 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE130 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE150 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4C74736575716572 && a2 == 0xEE0065736E656369 || (sub_1D30E97CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D30EE170 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE190 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EE1B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE1D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE1F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE210 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE230 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE250 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE270 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE290 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE2B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE2D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x73416E4968746170 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x41726F4668746170 && a2 == 0xEA00000000007070 || (sub_1D30E97CC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE2F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE310 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x6F436F5468746170 && a2 == 0xEF72656E6961746ELL || (sub_1D30E97CC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE330 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE350 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE370 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE390 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EE3D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x744965766F6D6572 && a2 == 0xEA00000000006D65 || (sub_1D30E97CC() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x70556E61656C63 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x7461446573617265 && a2 == 0xED00006573616261 || (sub_1D30E97CC() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE410 == a2)
  {

    return 49;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 49;
    }

    else
    {
      return 50;
    }
  }
}

uint64_t sub_1D30DA7DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6150656372756F73 && a2 == 0xEA00000000006874;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
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

uint64_t sub_1D30DA8F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
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

uint64_t sub_1D30DAA14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D30EE590 == a2)
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

uint64_t sub_1D30DAB38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001D30EE450 == a2;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D30DAC9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001D30EE450 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D30EE490 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D30E97CC();

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

uint64_t sub_1D30DADBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D30EE4B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D30DAF1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496C61626F6C67 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D30EE4B0 == a2)
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

uint64_t sub_1D30DB034(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001D30EE550 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F72724568746977 && a2 == 0xEF676E69646F4372)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D30E97CC();

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

uint64_t sub_1D30DB160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001D30EE530 == a2;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EB250 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

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

uint64_t sub_1D30DB2DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC00000061746144 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EDF50 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF70 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF90 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EDFB0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EDFD0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D6C6C6174736E69 && a2 == 0xEF74736566696E61 || (sub_1D30E97CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EDFF0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE010 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D30EE5D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE060 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE080 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE0A0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D30EE0C0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE0F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6176417349746573 && a2 == 0xEE00656C62616C69 || (sub_1D30E97CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE110 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x734165766F6D6572 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE130 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE150 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4C74736575716572 && a2 == 0xEE0065736E656369 || (sub_1D30E97CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D30EE170 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE190 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EE1B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE1D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE1F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE210 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE230 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE250 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE270 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE290 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE2B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE2D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x73416E4968746170 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x41726F4668746170 && a2 == 0xEA00000000007070 || (sub_1D30E97CC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE2F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE310 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x6F436F5468746170 && a2 == 0xEF72656E6961746ELL || (sub_1D30E97CC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE330 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE350 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE370 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE390 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EE3D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x744965766F6D6572 && a2 == 0xEA00000000006D65 || (sub_1D30E97CC() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x70556E61656C63 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x7461446573617265 && a2 == 0xED00006573616261 || (sub_1D30E97CC() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE410 == a2)
  {

    return 49;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 49;
    }

    else
    {
      return 50;
    }
  }
}

uint64_t sub_1D30DC22C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6361507465737361 && a2 == 0xEB0000000044496BLL || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D30EE5F0 == a2)
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

id sub_1D30DC350(char *a1)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D30E881C();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v61 - v9;
  v10 = sub_1D30E88CC();
  v11 = *(v10 - 8);
  v69 = v10;
  v70 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FilePath.ResolutionError();
  v14 = *(*(v71 - 1) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D30E8D9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v61 - v22;
  v23 = objc_opt_self();
  v24 = [v23 defaultManager];
  sub_1D30E8D3C();
  v25 = sub_1D30E906C();

  v26 = [v24 fileExistsAtPath_];

  if (v26)
  {
    v23 = type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    (*(v17 + 16))(v27, a1, v16);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_8;
  }

  v61 = v17;
  v62 = v16;
  v28 = [v23 defaultManager];
  sub_1D30E8D3C();
  v29 = sub_1D30E906C();

  v30 = [v28 createFileAtPath:v29 contents:0 attributes:0];

  if ((v30 & 1) == 0)
  {
    v23 = type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    (*(v61 + 16))(v35, a1, v62);
    goto LABEL_7;
  }

  v31 = v73;
  v32 = v74;
  v33 = v72;
  sub_1D302DD9C(v72, v74);
  if (v31)
  {
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v33, v34, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {
    v72 = a1;
    v73 = 0;
    v71 = v23;
    v38 = v61;
    v39 = *(v61 + 16);
    v40 = v32;
    v41 = v32;
    v42 = v62;
    v39(v21, v40, v62);
    v43 = v65;
    (*(v67 + 104))(v65, *MEMORY[0x1E6968F70], v68);
    v44 = v66;
    sub_1D3040AB4(v21, v43, v66);
    v46 = v69;
    v45 = v70;
    if ((*(v70 + 48))(v44, 1, v69) == 1)
    {
      sub_1D2FF14DC(v44, &qword_1EC7493C0, &qword_1D30EF500);
      v23 = type metadata accessor for HelperError();
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
      swift_allocError();
      v39(v47, v41, v42);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v38 + 8))(v41, v42);
    }

    else
    {
      v48 = v64;
      (*(v45 + 32))(v64, v44, v46);
      v49 = v63;
      (*(v45 + 56))(v63, 1, 1, v46);
      v50 = v73;
      v51 = sub_1D30E880C();
      if (v50)
      {
        sub_1D2FF14DC(v49, &qword_1EC7493C0, &qword_1D30EF500);
        v52 = [v71 defaultManager];
        sub_1D30E8D3C();
        v53 = sub_1D30E906C();

        v75[0] = 0;
        v54 = [v52 removeItemAtPath:v53 error:v75];

        v23 = v75[0];
        v56 = v61;
        v55 = v62;
        if (v54)
        {
          swift_willThrow();
          v57 = *(v70 + 8);
          v58 = v23;
          v57(v48, v46);
          (*(v56 + 8))(v74, v55);
        }

        else
        {
          v60 = v75[0];
          sub_1D30E87DC();

          swift_willThrow();
          (*(v70 + 8))(v48, v46);
          (*(v56 + 8))(v74, v55);
        }
      }

      else
      {
        v59 = v45;
        v23 = v51;
        sub_1D2FF14DC(v49, &qword_1EC7493C0, &qword_1D30EF500);
        (*(v59 + 8))(v48, v46);
        (*(v61 + 8))(v74, v62);
      }
    }
  }

LABEL_8:
  v36 = *MEMORY[0x1E69E9840];
  return v23;
}

unint64_t sub_1D30DCBD4()
{
  result = qword_1EE3139F0;
  if (!qword_1EE3139F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3139F0);
  }

  return result;
}

void sub_1D30DCCA0(uint64_t a1, unint64_t a2)
{
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D30E8B3C();
  __swift_project_value_buffer(v5, qword_1EE314B60);
  v6 = sub_1D30E928C();

  v7 = sub_1D30E8B1C();

  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1D2FFEA04(a1, a2, &v25);
    _os_log_impl(&dword_1D2FD9000, v7, v6, "Main app record for bundle ID: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  sub_1D2FF1494(0, &qword_1EC74AFF8, 0x1E6963620);

  v10 = sub_1D30C281C(a1, a2, 1);
  if (!v2)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v11 = v11;
      v13 = sub_1D30E927C();

      v14 = sub_1D30E8B1C();

      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v25 = v16;
        *v15 = 136446210;
        *(v15 + 4) = sub_1D2FFEA04(a1, a2, &v25);
        _os_log_impl(&dword_1D2FD9000, v14, v13, "The bundle with the ID “%{public}s” represents an extension.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1D38B3760](v16, -1, -1);
        MEMORY[0x1D38B3760](v15, -1, -1);
      }

      v17 = [v12 containingBundleRecord];
      if (!v17)
      {
        type metadata accessor for HelperError();
        sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
        swift_allocError();
        v20 = v19;
        v21 = [v12 effectiveBundleIdentifier];
        v22 = sub_1D30E908C();
        v24 = v23;

        *v20 = v22;
        v20[1] = v24;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_14:
        return;
      }

      v18 = v17;

      v11 = v18;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return;
    }

    type metadata accessor for HelperError();
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_14;
  }
}

void sub_1D30DD158()
{
  sub_1D30DD580();
  if (v0 <= 0x3F)
  {
    sub_1D30DD6D8(319, &qword_1EE3140C8);
    if (v1 <= 0x3F)
    {
      sub_1D2FF195C();
      if (v2 <= 0x3F)
      {
        sub_1D30DD5B0();
        if (v3 <= 0x3F)
        {
          sub_1D30DD628();
          if (v4 <= 0x3F)
          {
            sub_1D30DD6A8();
            if (v5 <= 0x3F)
            {
              sub_1D30DD6D8(319, &qword_1EE314098);
              if (v6 <= 0x3F)
              {
                sub_1D30DD758(319);
                if (v7 <= 0x3F)
                {
                  sub_1D30DD880();
                  if (v8 <= 0x3F)
                  {
                    sub_1D30DDBCC(319, &qword_1EE314038);
                    if (v9 <= 0x3F)
                    {
                      sub_1D30DD8B0();
                      if (v10 <= 0x3F)
                      {
                        sub_1D30DE128(319, &qword_1EE3140A8, &qword_1EE3140A0, MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_1D30DD930(319);
                          if (v12 <= 0x3F)
                          {
                            sub_1D30DDA4C();
                            if (v13 <= 0x3F)
                            {
                              sub_1D30DDAC4();
                              if (v14 <= 0x3F)
                              {
                                sub_1D30DDAF4(319, &qword_1EE314030, sub_1D30DDB40);
                                if (v15 <= 0x3F)
                                {
                                  sub_1D30DDBCC(319, &qword_1EE315268);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1D30DDBCC(319, qword_1EE3146C0);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1D30DDB9C();
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1D30DDBCC(319, &qword_1EE314420);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1D30DDC24();
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1D30DDC54();
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1D30DDC84();
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1D30DDD0C(319);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1D30DDE48();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1D30DDAF4(319, &qword_1EE3140F8, MEMORY[0x1E69E83A8]);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1D30DDED0();
                                                      if (v26 <= 0x3F)
                                                      {
                                                        sub_1D30DDF58();
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_1D30DDFC4(319);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_1D30DE0F8();
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_1D30DE128(319, &qword_1EE314060, &qword_1EE314058, MEMORY[0x1E69E62F8]);
                                                              if (v30 <= 0x3F)
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

uint64_t sub_1D30DD580()
{
  result = qword_1EE3140D8;
  if (!qword_1EE3140D8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE3140D8);
  }

  return result;
}

void sub_1D30DD5B0()
{
  if (!qword_1EE3140C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE3140C0);
    }
  }
}

void sub_1D30DD628()
{
  if (!qword_1EE315280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE315280);
    }
  }
}

uint64_t sub_1D30DD6A8()
{
  result = qword_1EE314048;
  if (!qword_1EE314048)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE314048);
  }

  return result;
}

void sub_1D30DD6D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1D30DD758(uint64_t a1)
{
  if (!qword_1EE314440)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for AssetPackHost();
    sub_1D30E8D5C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE314440);
    }
  }
}

ValueMetadata *sub_1D30DD880()
{
  result = qword_1EE314438;
  if (!qword_1EE314438)
  {
    result = &type metadata for AssetPackRecord.GlobalID;
    atomic_store(&type metadata for AssetPackRecord.GlobalID, &qword_1EE314438);
  }

  return result;
}

void sub_1D30DD8B0()
{
  if (!qword_1EE314448[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74AD18, &qword_1D30F6358);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE314448);
    }
  }
}

void sub_1D30DD930(uint64_t a1)
{
  if (!qword_1EE3140B0)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D30E8A4C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE3140B0);
    }
  }
}

void sub_1D30DDA4C()
{
  if (!qword_1EE314078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A460, &qword_1D30F5660);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE314078);
    }
  }
}

uint64_t sub_1D30DDAC4()
{
  result = qword_1EE314040;
  if (!qword_1EE314040)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE314040);
  }

  return result;
}

void sub_1D30DDAF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_1D30DDB40()
{
  if (!qword_1EE314028)
  {
    sub_1D3045AD0();
    v0 = sub_1D30E924C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE314028);
    }
  }
}

uint64_t sub_1D30DDB9C()
{
  result = qword_1EE314018;
  if (!qword_1EE314018)
  {
    result = MEMORY[0x1E69E76D8];
    atomic_store(MEMORY[0x1E69E76D8], &qword_1EE314018);
  }

  return result;
}

void sub_1D30DDBCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1D30DDC24()
{
  result = qword_1EE314418;
  if (!qword_1EE314418)
  {
    result = &type metadata for CertificateRole;
    atomic_store(&type metadata for CertificateRole, &qword_1EE314418);
  }

  return result;
}

uint64_t sub_1D30DDC54()
{
  result = qword_1EE3140D0;
  if (!qword_1EE3140D0)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EE3140D0);
  }

  return result;
}

void sub_1D30DDC84()
{
  if (!qword_1EE3140F0)
  {
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A3C8, &qword_1D30F5650);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE3140F0);
    }
  }
}

void sub_1D30DDD0C(uint64_t a1)
{
  if (!qword_1EE3140E8)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A3C8, &qword_1D30F5650);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE3140E8);
    }
  }
}

void sub_1D30DDE48()
{
  if (!qword_1EE314100)
  {
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE314100);
    }
  }
}

void sub_1D30DDED0()
{
  if (!qword_1EE315290)
  {
    sub_1D30E8D9C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE315290);
    }
  }
}

void sub_1D30DDF58()
{
  if (!qword_1EE314108[0])
  {
    sub_1D30E8D9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE314108);
    }
  }
}

void sub_1D30DDFC4(uint64_t a1)
{
  if (!qword_1EE315288)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D30E8D5C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC749310, &unk_1D30EF350);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE315288);
    }
  }
}

uint64_t sub_1D30DE0F8()
{
  result = qword_1EE314050;
  if (!qword_1EE314050)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE314050);
  }

  return result;
}

void sub_1D30DE128(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1D30DEA38(0, a3, MEMORY[0x1E69E6158], a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D30DE180()
{
  sub_1D30DE4C8();
  if (v0 <= 0x3F)
  {
    sub_1D30DEA38(319, &qword_1EE315278, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Helper.URLRequestResult(319);
      if (v2 <= 0x3F)
      {
        sub_1D30DE534(319, qword_1EE3150E8, type metadata accessor for Helper.PathToManifestLookupResult, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D30DE534(319, &qword_1EE314070, type metadata accessor for AssetPackRecord.StaticRepresentation, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AssetPackRecord.StaticRepresentation(319);
            if (v5 <= 0x3F)
            {
              sub_1D30DE598();
              if (v6 <= 0x3F)
              {
                sub_1D30DEA38(319, &qword_1EE314390, &type metadata for AppLicenseDelivery.Request.StaticRepresentation, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1D30DE534(319, &qword_1EE314090, type metadata accessor for LicenseRecord.StaticRepresentation, MEMORY[0x1E69E62F8]);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for LicenseRecord.StaticRepresentation(319);
                    if (v9 <= 0x3F)
                    {
                      sub_1D30DEA38(319, &qword_1EE314080, &type metadata for AppReviewRecord.StaticRepresentation, MEMORY[0x1E69E62F8]);
                      if (v10 <= 0x3F)
                      {
                        sub_1D30DE534(319, qword_1EE315050, type metadata accessor for Helper.PathInAssetPackLookupResult, MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_1D30DE534(319, qword_1EE315180, type metadata accessor for Helper.PathForAppLookupResult, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for Helper.PathToStagingDirectoryLookupResult(319);
                            if (v13 <= 0x3F)
                            {
                              sub_1D30E8D9C();
                              if (v14 <= 0x3F)
                              {
                                sub_1D30DE534(319, &qword_1EE314068, MEMORY[0x1E69E8380], MEMORY[0x1E69E62F8]);
                                if (v15 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D30DE4C8()
{
  if (!qword_1EE315270)
  {
    type metadata accessor for ManifestDataSource(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE315270);
    }
  }
}

void sub_1D30DE534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

ValueMetadata *sub_1D30DE598()
{
  result = qword_1EE314398;
  if (!qword_1EE314398)
  {
    result = &type metadata for AppLicenseDelivery.Keys;
    atomic_store(&type metadata for AppLicenseDelivery.Keys, &qword_1EE314398);
  }

  return result;
}

uint64_t sub_1D30DE5F0()
{
  result = sub_1D30E852C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D30DE6AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t))
{
  a4(319);
  if (v10 <= 0x3F)
  {
    sub_1D30DEA38(319, a5, a6, a7);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D30DE77C()
{
  sub_1D30E8D9C();
  if (v0 <= 0x3F)
  {
    sub_1D30DEA38(319, &qword_1EE3140A0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_165Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D30E8D9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_166Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D30E8D9C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1D30DEA38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_29ManagedBackgroundAssetsHelper0D0C15PermissionErrorV6Reason33_ED623D7967CBC4B05F3678C49B776590LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D30DEAD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D30DEB18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1D30DEB5C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D30DEB84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD38, qword_1D30F66A8);
  sub_1D2FDCD1C(v2, v3, v4);
  v5 = *(a1 + 40);
}

uint64_t sub_1D30DEBD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t sub_1D30DEC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D30DEC54(uint64_t result, int a2, int a3)
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

uint64_t sub_1D30DF020(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCF)
  {
    goto LABEL_17;
  }

  if (a2 + 49 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 49) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 49;
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

      return (*a1 | (v4 << 8)) - 49;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 49;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x32;
  v8 = v6 - 50;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D30DF0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 49) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCF)
  {
    v4 = 0;
  }

  if (a2 > 0xCE)
  {
    v5 = ((a2 - 207) >> 8) + 1;
    *result = a2 + 49;
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
    *result = a2 + 49;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D30DF494()
{
  result = qword_1EC74AD40;
  if (!qword_1EC74AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD40);
  }

  return result;
}

unint64_t sub_1D30DF4EC()
{
  result = qword_1EC74AD48;
  if (!qword_1EC74AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD48);
  }

  return result;
}

unint64_t sub_1D30DF544()
{
  result = qword_1EC74AD50;
  if (!qword_1EC74AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD50);
  }

  return result;
}

unint64_t sub_1D30DF59C()
{
  result = qword_1EC74AD58;
  if (!qword_1EC74AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD58);
  }

  return result;
}

unint64_t sub_1D30DF5F4()
{
  result = qword_1EC74AD60;
  if (!qword_1EC74AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD60);
  }

  return result;
}

unint64_t sub_1D30DF64C()
{
  result = qword_1EC74AD68;
  if (!qword_1EC74AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD68);
  }

  return result;
}

unint64_t sub_1D30DF6A4()
{
  result = qword_1EC74AD70;
  if (!qword_1EC74AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD70);
  }

  return result;
}

unint64_t sub_1D30DF6FC()
{
  result = qword_1EC74AD78;
  if (!qword_1EC74AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD78);
  }

  return result;
}

unint64_t sub_1D30DF754()
{
  result = qword_1EC74AD80;
  if (!qword_1EC74AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD80);
  }

  return result;
}

unint64_t sub_1D30DF7AC()
{
  result = qword_1EC74AD88;
  if (!qword_1EC74AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD88);
  }

  return result;
}

unint64_t sub_1D30DF804()
{
  result = qword_1EC74AD90;
  if (!qword_1EC74AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD90);
  }

  return result;
}

unint64_t sub_1D30DF85C()
{
  result = qword_1EC74AD98;
  if (!qword_1EC74AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AD98);
  }

  return result;
}

unint64_t sub_1D30DF8B4()
{
  result = qword_1EC74ADA0;
  if (!qword_1EC74ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADA0);
  }

  return result;
}

unint64_t sub_1D30DF90C()
{
  result = qword_1EC74ADA8;
  if (!qword_1EC74ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADA8);
  }

  return result;
}

unint64_t sub_1D30DF964()
{
  result = qword_1EC74ADB0;
  if (!qword_1EC74ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADB0);
  }

  return result;
}

unint64_t sub_1D30DF9BC()
{
  result = qword_1EC74ADB8;
  if (!qword_1EC74ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADB8);
  }

  return result;
}

unint64_t sub_1D30DFA14()
{
  result = qword_1EC74ADC0;
  if (!qword_1EC74ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADC0);
  }

  return result;
}

unint64_t sub_1D30DFA6C()
{
  result = qword_1EC74ADC8;
  if (!qword_1EC74ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADC8);
  }

  return result;
}

unint64_t sub_1D30DFAC4()
{
  result = qword_1EC74ADD0;
  if (!qword_1EC74ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADD0);
  }

  return result;
}

unint64_t sub_1D30DFB1C()
{
  result = qword_1EC74ADD8;
  if (!qword_1EC74ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADD8);
  }

  return result;
}

unint64_t sub_1D30DFB74()
{
  result = qword_1EC74ADE0;
  if (!qword_1EC74ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADE0);
  }

  return result;
}

unint64_t sub_1D30DFBCC()
{
  result = qword_1EC74ADE8;
  if (!qword_1EC74ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADE8);
  }

  return result;
}

unint64_t sub_1D30DFC24()
{
  result = qword_1EC74ADF0;
  if (!qword_1EC74ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADF0);
  }

  return result;
}

unint64_t sub_1D30DFC7C()
{
  result = qword_1EC74ADF8;
  if (!qword_1EC74ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74ADF8);
  }

  return result;
}

unint64_t sub_1D30DFCD4()
{
  result = qword_1EC74AE00;
  if (!qword_1EC74AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE00);
  }

  return result;
}

unint64_t sub_1D30DFD2C()
{
  result = qword_1EC74AE08;
  if (!qword_1EC74AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE08);
  }

  return result;
}

unint64_t sub_1D30DFD84()
{
  result = qword_1EC74AE10;
  if (!qword_1EC74AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE10);
  }

  return result;
}

unint64_t sub_1D30DFDDC()
{
  result = qword_1EC74AE18;
  if (!qword_1EC74AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE18);
  }

  return result;
}

unint64_t sub_1D30DFE34()
{
  result = qword_1EC74AE20;
  if (!qword_1EC74AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE20);
  }

  return result;
}

unint64_t sub_1D30DFE8C()
{
  result = qword_1EC74AE28;
  if (!qword_1EC74AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE28);
  }

  return result;
}

unint64_t sub_1D30DFEE4()
{
  result = qword_1EC74AE30;
  if (!qword_1EC74AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE30);
  }

  return result;
}

unint64_t sub_1D30DFF3C()
{
  result = qword_1EC74AE38;
  if (!qword_1EC74AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE38);
  }

  return result;
}

unint64_t sub_1D30DFF94()
{
  result = qword_1EC74AE40;
  if (!qword_1EC74AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE40);
  }

  return result;
}

unint64_t sub_1D30DFFEC()
{
  result = qword_1EC74AE48;
  if (!qword_1EC74AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE48);
  }

  return result;
}

unint64_t sub_1D30E0044()
{
  result = qword_1EC74AE50;
  if (!qword_1EC74AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE50);
  }

  return result;
}

unint64_t sub_1D30E009C()
{
  result = qword_1EC74AE58;
  if (!qword_1EC74AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE58);
  }

  return result;
}

unint64_t sub_1D30E00F4()
{
  result = qword_1EC74AE60;
  if (!qword_1EC74AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE60);
  }

  return result;
}

unint64_t sub_1D30E014C()
{
  result = qword_1EC74AE68;
  if (!qword_1EC74AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE68);
  }

  return result;
}

unint64_t sub_1D30E01A4()
{
  result = qword_1EC74AE70;
  if (!qword_1EC74AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE70);
  }

  return result;
}

unint64_t sub_1D30E01FC()
{
  result = qword_1EC74AE78;
  if (!qword_1EC74AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE78);
  }

  return result;
}

unint64_t sub_1D30E0254()
{
  result = qword_1EC74AE80;
  if (!qword_1EC74AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE80);
  }

  return result;
}

unint64_t sub_1D30E02AC()
{
  result = qword_1EC74AE88;
  if (!qword_1EC74AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE88);
  }

  return result;
}

unint64_t sub_1D30E0304()
{
  result = qword_1EC74AE90;
  if (!qword_1EC74AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE90);
  }

  return result;
}

unint64_t sub_1D30E035C()
{
  result = qword_1EC74AE98;
  if (!qword_1EC74AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AE98);
  }

  return result;
}

unint64_t sub_1D30E03B4()
{
  result = qword_1EC74AEA0;
  if (!qword_1EC74AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEA0);
  }

  return result;
}

unint64_t sub_1D30E040C()
{
  result = qword_1EC74AEA8;
  if (!qword_1EC74AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEA8);
  }

  return result;
}

unint64_t sub_1D30E0464()
{
  result = qword_1EC74AEB0;
  if (!qword_1EC74AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEB0);
  }

  return result;
}

unint64_t sub_1D30E04BC()
{
  result = qword_1EC74AEB8;
  if (!qword_1EC74AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEB8);
  }

  return result;
}

unint64_t sub_1D30E0514()
{
  result = qword_1EC74AEC0;
  if (!qword_1EC74AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEC0);
  }

  return result;
}

unint64_t sub_1D30E056C()
{
  result = qword_1EC74AEC8;
  if (!qword_1EC74AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEC8);
  }

  return result;
}

unint64_t sub_1D30E05C4()
{
  result = qword_1EC74AED0;
  if (!qword_1EC74AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AED0);
  }

  return result;
}

unint64_t sub_1D30E061C()
{
  result = qword_1EC74AED8;
  if (!qword_1EC74AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AED8);
  }

  return result;
}

unint64_t sub_1D30E0674()
{
  result = qword_1EC74AEE0;
  if (!qword_1EC74AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEE0);
  }

  return result;
}

unint64_t sub_1D30E06CC()
{
  result = qword_1EC74AEE8;
  if (!qword_1EC74AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEE8);
  }

  return result;
}

unint64_t sub_1D30E0724()
{
  result = qword_1EC74AEF0;
  if (!qword_1EC74AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEF0);
  }

  return result;
}

unint64_t sub_1D30E077C()
{
  result = qword_1EC74AEF8;
  if (!qword_1EC74AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AEF8);
  }

  return result;
}

unint64_t sub_1D30E07D4()
{
  result = qword_1EC74AF00;
  if (!qword_1EC74AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF00);
  }

  return result;
}

unint64_t sub_1D30E082C()
{
  result = qword_1EC74AF08;
  if (!qword_1EC74AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF08);
  }

  return result;
}

unint64_t sub_1D30E0884()
{
  result = qword_1EC74AF10;
  if (!qword_1EC74AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF10);
  }

  return result;
}

unint64_t sub_1D30E08DC()
{
  result = qword_1EC74AF18;
  if (!qword_1EC74AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF18);
  }

  return result;
}

unint64_t sub_1D30E0934()
{
  result = qword_1EC74AF20;
  if (!qword_1EC74AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF20);
  }

  return result;
}

unint64_t sub_1D30E098C()
{
  result = qword_1EC74AF28;
  if (!qword_1EC74AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF28);
  }

  return result;
}

unint64_t sub_1D30E09E4()
{
  result = qword_1EC74AF30;
  if (!qword_1EC74AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF30);
  }

  return result;
}

unint64_t sub_1D30E0A3C()
{
  result = qword_1EC74AF38;
  if (!qword_1EC74AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF38);
  }

  return result;
}

unint64_t sub_1D30E0A94()
{
  result = qword_1EC74AF40;
  if (!qword_1EC74AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF40);
  }

  return result;
}

unint64_t sub_1D30E0AEC()
{
  result = qword_1EC74AF48;
  if (!qword_1EC74AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF48);
  }

  return result;
}

unint64_t sub_1D30E0B44()
{
  result = qword_1EC74AF50;
  if (!qword_1EC74AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF50);
  }

  return result;
}

unint64_t sub_1D30E0B9C()
{
  result = qword_1EC74AF58;
  if (!qword_1EC74AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF58);
  }

  return result;
}

unint64_t sub_1D30E0BF4()
{
  result = qword_1EC74AF60;
  if (!qword_1EC74AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF60);
  }

  return result;
}

unint64_t sub_1D30E0C4C()
{
  result = qword_1EC74AF68;
  if (!qword_1EC74AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF68);
  }

  return result;
}

unint64_t sub_1D30E0CA4()
{
  result = qword_1EC74AF70;
  if (!qword_1EC74AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF70);
  }

  return result;
}

unint64_t sub_1D30E0CFC()
{
  result = qword_1EC74AF78;
  if (!qword_1EC74AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF78);
  }

  return result;
}

unint64_t sub_1D30E0D54()
{
  result = qword_1EC74AF80;
  if (!qword_1EC74AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF80);
  }

  return result;
}

unint64_t sub_1D30E0DAC()
{
  result = qword_1EC74AF88;
  if (!qword_1EC74AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF88);
  }

  return result;
}

unint64_t sub_1D30E0E04()
{
  result = qword_1EC74AF90;
  if (!qword_1EC74AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF90);
  }

  return result;
}

unint64_t sub_1D30E0E5C()
{
  result = qword_1EC74AF98;
  if (!qword_1EC74AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AF98);
  }

  return result;
}

unint64_t sub_1D30E0EB4()
{
  result = qword_1EC74AFA0;
  if (!qword_1EC74AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFA0);
  }

  return result;
}

unint64_t sub_1D30E0F0C()
{
  result = qword_1EC74AFA8;
  if (!qword_1EC74AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFA8);
  }

  return result;
}

unint64_t sub_1D30E0F64()
{
  result = qword_1EC74AFB0;
  if (!qword_1EC74AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFB0);
  }

  return result;
}

unint64_t sub_1D30E0FBC()
{
  result = qword_1EC74AFB8;
  if (!qword_1EC74AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFB8);
  }

  return result;
}

unint64_t sub_1D30E1014()
{
  result = qword_1EC74AFC0;
  if (!qword_1EC74AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFC0);
  }

  return result;
}

unint64_t sub_1D30E106C()
{
  result = qword_1EC74AFC8;
  if (!qword_1EC74AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFC8);
  }

  return result;
}

unint64_t sub_1D30E10C4()
{
  result = qword_1EC74AFD0;
  if (!qword_1EC74AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFD0);
  }

  return result;
}

unint64_t sub_1D30E111C()
{
  result = qword_1EC74AFD8;
  if (!qword_1EC74AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74AFD8);
  }

  return result;
}

unint64_t sub_1D30E1174()
{
  result = qword_1EE314F30;
  if (!qword_1EE314F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F30);
  }

  return result;
}

unint64_t sub_1D30E11CC()
{
  result = qword_1EE314F38;
  if (!qword_1EE314F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F38);
  }

  return result;
}

unint64_t sub_1D30E1224()
{
  result = qword_1EE314EF0;
  if (!qword_1EE314EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EF0);
  }

  return result;
}

unint64_t sub_1D30E127C()
{
  result = qword_1EE314EF8;
  if (!qword_1EE314EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EF8);
  }

  return result;
}

unint64_t sub_1D30E12D4()
{
  result = qword_1EE314D90;
  if (!qword_1EE314D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D90);
  }

  return result;
}

unint64_t sub_1D30E132C()
{
  result = qword_1EE314D98;
  if (!qword_1EE314D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D98);
  }

  return result;
}

unint64_t sub_1D30E1384()
{
  result = qword_1EE314CB0;
  if (!qword_1EE314CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CB0);
  }

  return result;
}

unint64_t sub_1D30E13DC()
{
  result = qword_1EE314CB8;
  if (!qword_1EE314CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CB8);
  }

  return result;
}

unint64_t sub_1D30E1434()
{
  result = qword_1EE314CF0;
  if (!qword_1EE314CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CF0);
  }

  return result;
}

unint64_t sub_1D30E148C()
{
  result = qword_1EE314CF8;
  if (!qword_1EE314CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CF8);
  }

  return result;
}

unint64_t sub_1D30E14E4()
{
  result = qword_1EE314CA0;
  if (!qword_1EE314CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CA0);
  }

  return result;
}

unint64_t sub_1D30E153C()
{
  result = qword_1EE314CA8;
  if (!qword_1EE314CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CA8);
  }

  return result;
}

unint64_t sub_1D30E1594()
{
  result = qword_1EE314C70;
  if (!qword_1EE314C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C70);
  }

  return result;
}

unint64_t sub_1D30E15EC()
{
  result = qword_1EE314C78;
  if (!qword_1EE314C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C78);
  }

  return result;
}

unint64_t sub_1D30E1644()
{
  result = qword_1EE314EB0;
  if (!qword_1EE314EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EB0);
  }

  return result;
}

unint64_t sub_1D30E169C()
{
  result = qword_1EE314EB8;
  if (!qword_1EE314EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EB8);
  }

  return result;
}

unint64_t sub_1D30E16F4()
{
  result = qword_1EE314E60;
  if (!qword_1EE314E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E60);
  }

  return result;
}

unint64_t sub_1D30E174C()
{
  result = qword_1EE314E68;
  if (!qword_1EE314E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E68);
  }

  return result;
}

unint64_t sub_1D30E17A4()
{
  result = qword_1EE314E00;
  if (!qword_1EE314E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E00);
  }

  return result;
}

unint64_t sub_1D30E17FC()
{
  result = qword_1EE314E08;
  if (!qword_1EE314E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E08);
  }

  return result;
}

unint64_t sub_1D30E1854()
{
  result = qword_1EE314C30;
  if (!qword_1EE314C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C30);
  }

  return result;
}

unint64_t sub_1D30E18AC()
{
  result = qword_1EE314C38;
  if (!qword_1EE314C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C38);
  }

  return result;
}

unint64_t sub_1D30E1904()
{
  result = qword_1EE314E40;
  if (!qword_1EE314E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E40);
  }

  return result;
}

unint64_t sub_1D30E195C()
{
  result = qword_1EE314E48;
  if (!qword_1EE314E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E48);
  }

  return result;
}

unint64_t sub_1D30E19B4()
{
  result = qword_1EE314D20;
  if (!qword_1EE314D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D20);
  }

  return result;
}

unint64_t sub_1D30E1A0C()
{
  result = qword_1EE314D28;
  if (!qword_1EE314D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D28);
  }

  return result;
}

unint64_t sub_1D30E1A64()
{
  result = qword_1EE314D50;
  if (!qword_1EE314D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D50);
  }

  return result;
}

unint64_t sub_1D30E1ABC()
{
  result = qword_1EE314D58;
  if (!qword_1EE314D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D58);
  }

  return result;
}

unint64_t sub_1D30E1B14()
{
  result = qword_1EE314C20;
  if (!qword_1EE314C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C20);
  }

  return result;
}

unint64_t sub_1D30E1B6C()
{
  result = qword_1EE314C28;
  if (!qword_1EE314C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C28);
  }

  return result;
}

unint64_t sub_1D30E1BC4()
{
  result = qword_1EE314D80;
  if (!qword_1EE314D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D80);
  }

  return result;
}

unint64_t sub_1D30E1C1C()
{
  result = qword_1EE314D88;
  if (!qword_1EE314D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D88);
  }

  return result;
}

unint64_t sub_1D30E1C74()
{
  result = qword_1EE314EC0;
  if (!qword_1EE314EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EC0);
  }

  return result;
}

unint64_t sub_1D30E1CCC()
{
  result = qword_1EE314EC8;
  if (!qword_1EE314EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EC8);
  }

  return result;
}

unint64_t sub_1D30E1D24()
{
  result = qword_1EE314CC0;
  if (!qword_1EE314CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CC0);
  }

  return result;
}

unint64_t sub_1D30E1D7C()
{
  result = qword_1EE314CC8;
  if (!qword_1EE314CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CC8);
  }

  return result;
}

unint64_t sub_1D30E1DD4()
{
  result = qword_1EE314E80;
  if (!qword_1EE314E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E80);
  }

  return result;
}

unint64_t sub_1D30E1E2C()
{
  result = qword_1EE314E88;
  if (!qword_1EE314E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E88);
  }

  return result;
}

unint64_t sub_1D30E1E84()
{
  result = qword_1EE314DB0;
  if (!qword_1EE314DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DB0);
  }

  return result;
}

unint64_t sub_1D30E1EDC()
{
  result = qword_1EE314DB8;
  if (!qword_1EE314DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DB8);
  }

  return result;
}

unint64_t sub_1D30E1F34()
{
  result = qword_1EE314C40;
  if (!qword_1EE314C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C40);
  }

  return result;
}

unint64_t sub_1D30E1F8C()
{
  result = qword_1EE314C48;
  if (!qword_1EE314C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C48);
  }

  return result;
}

unint64_t sub_1D30E1FE4()
{
  result = qword_1EE314ED0;
  if (!qword_1EE314ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314ED0);
  }

  return result;
}

unint64_t sub_1D30E203C()
{
  result = qword_1EE314ED8;
  if (!qword_1EE314ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314ED8);
  }

  return result;
}

unint64_t sub_1D30E2094()
{
  result = qword_1EE314C60;
  if (!qword_1EE314C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C60);
  }

  return result;
}

unint64_t sub_1D30E20EC()
{
  result = qword_1EE314C68;
  if (!qword_1EE314C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C68);
  }

  return result;
}

unint64_t sub_1D30E2144()
{
  result = qword_1EE314E20;
  if (!qword_1EE314E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E20);
  }

  return result;
}

unint64_t sub_1D30E219C()
{
  result = qword_1EE314E28;
  if (!qword_1EE314E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E28);
  }

  return result;
}

unint64_t sub_1D30E21F4()
{
  result = qword_1EE314C90;
  if (!qword_1EE314C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C90);
  }

  return result;
}

unint64_t sub_1D30E224C()
{
  result = qword_1EE314C98;
  if (!qword_1EE314C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C98);
  }

  return result;
}

unint64_t sub_1D30E22A4()
{
  result = qword_1EE314DC8;
  if (!qword_1EE314DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DC8);
  }

  return result;
}

unint64_t sub_1D30E22FC()
{
  result = qword_1EE314DD0;
  if (!qword_1EE314DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DD0);
  }

  return result;
}

unint64_t sub_1D30E2354()
{
  result = qword_1EE314F58;
  if (!qword_1EE314F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F58);
  }

  return result;
}

unint64_t sub_1D30E23AC()
{
  result = qword_1EE314F60[0];
  if (!qword_1EE314F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE314F60);
  }

  return result;
}

unint64_t sub_1D30E2404()
{
  result = qword_1EE314E70;
  if (!qword_1EE314E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E70);
  }

  return result;
}

unint64_t sub_1D30E245C()
{
  result = qword_1EE314E78;
  if (!qword_1EE314E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E78);
  }

  return result;
}

unint64_t sub_1D30E24B4()
{
  result = qword_1EE314DA0;
  if (!qword_1EE314DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DA0);
  }

  return result;
}

unint64_t sub_1D30E250C()
{
  result = qword_1EE314DA8;
  if (!qword_1EE314DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DA8);
  }

  return result;
}

unint64_t sub_1D30E2564()
{
  result = qword_1EE314E30;
  if (!qword_1EE314E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E30);
  }

  return result;
}

unint64_t sub_1D30E25BC()
{
  result = qword_1EE314E38;
  if (!qword_1EE314E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E38);
  }

  return result;
}

unint64_t sub_1D30E2614()
{
  result = qword_1EE314D70;
  if (!qword_1EE314D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D70);
  }

  return result;
}

unint64_t sub_1D30E266C()
{
  result = qword_1EE314D78;
  if (!qword_1EE314D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D78);
  }

  return result;
}

unint64_t sub_1D30E26C4()
{
  result = qword_1EE314E10;
  if (!qword_1EE314E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E10);
  }

  return result;
}

unint64_t sub_1D30E271C()
{
  result = qword_1EE314E18;
  if (!qword_1EE314E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E18);
  }

  return result;
}

unint64_t sub_1D30E2774()
{
  result = qword_1EE314E50;
  if (!qword_1EE314E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E50);
  }

  return result;
}

unint64_t sub_1D30E27CC()
{
  result = qword_1EE314E58;
  if (!qword_1EE314E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E58);
  }

  return result;
}

unint64_t sub_1D30E2824()
{
  result = qword_1EE314D30;
  if (!qword_1EE314D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D30);
  }

  return result;
}

unint64_t sub_1D30E287C()
{
  result = qword_1EE314D38;
  if (!qword_1EE314D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D38);
  }

  return result;
}

unint64_t sub_1D30E28D4()
{
  result = qword_1EE314EA0;
  if (!qword_1EE314EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EA0);
  }

  return result;
}

unint64_t sub_1D30E292C()
{
  result = qword_1EE314EA8;
  if (!qword_1EE314EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EA8);
  }

  return result;
}

unint64_t sub_1D30E2984()
{
  result = qword_1EE314F10;
  if (!qword_1EE314F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F10);
  }

  return result;
}

unint64_t sub_1D30E29DC()
{
  result = qword_1EE314F18;
  if (!qword_1EE314F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F18);
  }

  return result;
}

unint64_t sub_1D30E2A34()
{
  result = qword_1EE314CD0;
  if (!qword_1EE314CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CD0);
  }

  return result;
}

unint64_t sub_1D30E2A8C()
{
  result = qword_1EE314CD8;
  if (!qword_1EE314CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CD8);
  }

  return result;
}

unint64_t sub_1D30E2AE4()
{
  result = qword_1EE314C50;
  if (!qword_1EE314C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C50);
  }

  return result;
}

unint64_t sub_1D30E2B3C()
{
  result = qword_1EE314C58;
  if (!qword_1EE314C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C58);
  }

  return result;
}

unint64_t sub_1D30E2B94()
{
  result = qword_1EE314E90;
  if (!qword_1EE314E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E90);
  }

  return result;
}

unint64_t sub_1D30E2BEC()
{
  result = qword_1EE314E98;
  if (!qword_1EE314E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314E98);
  }

  return result;
}

unint64_t sub_1D30E2C44()
{
  result = qword_1EE314DD8;
  if (!qword_1EE314DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DD8);
  }

  return result;
}

unint64_t sub_1D30E2C9C()
{
  result = qword_1EE314DE0;
  if (!qword_1EE314DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DE0);
  }

  return result;
}

unint64_t sub_1D30E2CF4()
{
  result = qword_1EE314D60;
  if (!qword_1EE314D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D60);
  }

  return result;
}

unint64_t sub_1D30E2D4C()
{
  result = qword_1EE314D68;
  if (!qword_1EE314D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D68);
  }

  return result;
}

unint64_t sub_1D30E2DA4()
{
  result = qword_1EE314D00;
  if (!qword_1EE314D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D00);
  }

  return result;
}

unint64_t sub_1D30E2DFC()
{
  result = qword_1EE314D08;
  if (!qword_1EE314D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D08);
  }

  return result;
}

unint64_t sub_1D30E2E54()
{
  result = qword_1EE314D40;
  if (!qword_1EE314D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D40);
  }

  return result;
}

unint64_t sub_1D30E2EAC()
{
  result = qword_1EE314D48;
  if (!qword_1EE314D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D48);
  }

  return result;
}

unint64_t sub_1D30E2F04()
{
  result = qword_1EE314CE0;
  if (!qword_1EE314CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CE0);
  }

  return result;
}

unint64_t sub_1D30E2F5C()
{
  result = qword_1EE314CE8;
  if (!qword_1EE314CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314CE8);
  }

  return result;
}

unint64_t sub_1D30E2FB4()
{
  result = qword_1EE314C80;
  if (!qword_1EE314C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C80);
  }

  return result;
}

unint64_t sub_1D30E300C()
{
  result = qword_1EE314C88;
  if (!qword_1EE314C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314C88);
  }

  return result;
}

unint64_t sub_1D30E3064()
{
  result = qword_1EE314F00;
  if (!qword_1EE314F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F00);
  }

  return result;
}

unint64_t sub_1D30E30BC()
{
  result = qword_1EE314F08;
  if (!qword_1EE314F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F08);
  }

  return result;
}

unint64_t sub_1D30E3114()
{
  result = qword_1EE314F20;
  if (!qword_1EE314F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F20);
  }

  return result;
}

unint64_t sub_1D30E316C()
{
  result = qword_1EE314F28;
  if (!qword_1EE314F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F28);
  }

  return result;
}

unint64_t sub_1D30E31C4()
{
  result = qword_1EE314EE0;
  if (!qword_1EE314EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EE0);
  }

  return result;
}

unint64_t sub_1D30E321C()
{
  result = qword_1EE314EE8;
  if (!qword_1EE314EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314EE8);
  }

  return result;
}

unint64_t sub_1D30E3274()
{
  result = qword_1EE314D10;
  if (!qword_1EE314D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D10);
  }

  return result;
}

unint64_t sub_1D30E32CC()
{
  result = qword_1EE314D18;
  if (!qword_1EE314D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314D18);
  }

  return result;
}

unint64_t sub_1D30E3324()
{
  result = qword_1EE314DE8;
  if (!qword_1EE314DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DE8);
  }

  return result;
}

unint64_t sub_1D30E337C()
{
  result = qword_1EE314DF0;
  if (!qword_1EE314DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314DF0);
  }

  return result;
}

unint64_t sub_1D30E33D4()
{
  result = qword_1EE314F40;
  if (!qword_1EE314F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F40);
  }

  return result;
}

unint64_t sub_1D30E342C()
{
  result = qword_1EE314F48;
  if (!qword_1EE314F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314F48);
  }

  return result;
}

unint64_t sub_1D30E3484()
{
  result = qword_1EE314B28;
  if (!qword_1EE314B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B28);
  }

  return result;
}

unint64_t sub_1D30E34DC()
{
  result = qword_1EE314B30;
  if (!qword_1EE314B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B30);
  }

  return result;
}

unint64_t sub_1D30E3534()
{
  result = qword_1EE314AE8;
  if (!qword_1EE314AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AE8);
  }

  return result;
}

unint64_t sub_1D30E358C()
{
  result = qword_1EE314AF0;
  if (!qword_1EE314AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AF0);
  }

  return result;
}

unint64_t sub_1D30E35E4()
{
  result = qword_1EE314988;
  if (!qword_1EE314988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314988);
  }

  return result;
}

unint64_t sub_1D30E363C()
{
  result = qword_1EE314990;
  if (!qword_1EE314990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314990);
  }

  return result;
}

unint64_t sub_1D30E3694()
{
  result = qword_1EE3148A8;
  if (!qword_1EE3148A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148A8);
  }

  return result;
}

unint64_t sub_1D30E36EC()
{
  result = qword_1EE3148B0;
  if (!qword_1EE3148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148B0);
  }

  return result;
}

unint64_t sub_1D30E3744()
{
  result = qword_1EE3148E8;
  if (!qword_1EE3148E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148E8);
  }

  return result;
}

unint64_t sub_1D30E379C()
{
  result = qword_1EE3148F0;
  if (!qword_1EE3148F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148F0);
  }

  return result;
}

unint64_t sub_1D30E37F4()
{
  result = qword_1EE314898;
  if (!qword_1EE314898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314898);
  }

  return result;
}

unint64_t sub_1D30E384C()
{
  result = qword_1EE3148A0;
  if (!qword_1EE3148A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148A0);
  }

  return result;
}

unint64_t sub_1D30E38A4()
{
  result = qword_1EE314868;
  if (!qword_1EE314868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314868);
  }

  return result;
}

unint64_t sub_1D30E38FC()
{
  result = qword_1EE314870;
  if (!qword_1EE314870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314870);
  }

  return result;
}

unint64_t sub_1D30E3954()
{
  result = qword_1EE314AA8;
  if (!qword_1EE314AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AA8);
  }

  return result;
}

unint64_t sub_1D30E39AC()
{
  result = qword_1EE314AB0;
  if (!qword_1EE314AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AB0);
  }

  return result;
}

unint64_t sub_1D30E3A04()
{
  result = qword_1EE314A58;
  if (!qword_1EE314A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A58);
  }

  return result;
}

unint64_t sub_1D30E3A5C()
{
  result = qword_1EE314A60;
  if (!qword_1EE314A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A60);
  }

  return result;
}

unint64_t sub_1D30E3AB4()
{
  result = qword_1EE3149F8;
  if (!qword_1EE3149F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149F8);
  }

  return result;
}

unint64_t sub_1D30E3B0C()
{
  result = qword_1EE314A00;
  if (!qword_1EE314A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A00);
  }

  return result;
}

unint64_t sub_1D30E3B64()
{
  result = qword_1EE314818;
  if (!qword_1EE314818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314818);
  }

  return result;
}

unint64_t sub_1D30E3BBC()
{
  result = qword_1EE314820;
  if (!qword_1EE314820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314820);
  }

  return result;
}

unint64_t sub_1D30E3C14()
{
  result = qword_1EE314A38;
  if (!qword_1EE314A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A38);
  }

  return result;
}

unint64_t sub_1D30E3C6C()
{
  result = qword_1EE314A40;
  if (!qword_1EE314A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A40);
  }

  return result;
}

unint64_t sub_1D30E3CC4()
{
  result = qword_1EE314918;
  if (!qword_1EE314918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314918);
  }

  return result;
}

unint64_t sub_1D30E3D1C()
{
  result = qword_1EE314920;
  if (!qword_1EE314920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314920);
  }

  return result;
}

unint64_t sub_1D30E3D74()
{
  result = qword_1EE314948;
  if (!qword_1EE314948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314948);
  }

  return result;
}

unint64_t sub_1D30E3DCC()
{
  result = qword_1EE314950;
  if (!qword_1EE314950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314950);
  }

  return result;
}

unint64_t sub_1D30E3E24()
{
  result = qword_1EE314828;
  if (!qword_1EE314828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314828);
  }

  return result;
}

unint64_t sub_1D30E3E7C()
{
  result = qword_1EE314830;
  if (!qword_1EE314830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314830);
  }

  return result;
}

unint64_t sub_1D30E3ED4()
{
  result = qword_1EE314978;
  if (!qword_1EE314978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314978);
  }

  return result;
}

unint64_t sub_1D30E3F2C()
{
  result = qword_1EE314980;
  if (!qword_1EE314980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314980);
  }

  return result;
}

unint64_t sub_1D30E3F84()
{
  result = qword_1EE314AB8;
  if (!qword_1EE314AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AB8);
  }

  return result;
}

unint64_t sub_1D30E3FDC()
{
  result = qword_1EE314AC0;
  if (!qword_1EE314AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AC0);
  }

  return result;
}

unint64_t sub_1D30E4034()
{
  result = qword_1EE3148B8;
  if (!qword_1EE3148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148B8);
  }

  return result;
}

unint64_t sub_1D30E408C()
{
  result = qword_1EE3148C0;
  if (!qword_1EE3148C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148C0);
  }

  return result;
}

unint64_t sub_1D30E40E4()
{
  result = qword_1EE314A78;
  if (!qword_1EE314A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A78);
  }

  return result;
}

unint64_t sub_1D30E413C()
{
  result = qword_1EE314A80;
  if (!qword_1EE314A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A80);
  }

  return result;
}

unint64_t sub_1D30E4194()
{
  result = qword_1EE3149A8;
  if (!qword_1EE3149A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149A8);
  }

  return result;
}

unint64_t sub_1D30E41EC()
{
  result = qword_1EE3149B0;
  if (!qword_1EE3149B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149B0);
  }

  return result;
}

unint64_t sub_1D30E4244()
{
  result = qword_1EE314838;
  if (!qword_1EE314838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314838);
  }

  return result;
}

unint64_t sub_1D30E429C()
{
  result = qword_1EE314840;
  if (!qword_1EE314840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314840);
  }

  return result;
}

unint64_t sub_1D30E42F4()
{
  result = qword_1EE314AC8;
  if (!qword_1EE314AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AC8);
  }

  return result;
}

unint64_t sub_1D30E434C()
{
  result = qword_1EE314AD0;
  if (!qword_1EE314AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AD0);
  }

  return result;
}

unint64_t sub_1D30E43A4()
{
  result = qword_1EE314858;
  if (!qword_1EE314858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314858);
  }

  return result;
}

unint64_t sub_1D30E43FC()
{
  result = qword_1EE314860;
  if (!qword_1EE314860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314860);
  }

  return result;
}

unint64_t sub_1D30E4454()
{
  result = qword_1EE314A18;
  if (!qword_1EE314A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A18);
  }

  return result;
}

unint64_t sub_1D30E44AC()
{
  result = qword_1EE314A20;
  if (!qword_1EE314A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A20);
  }

  return result;
}

unint64_t sub_1D30E4504()
{
  result = qword_1EE314888;
  if (!qword_1EE314888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314888);
  }

  return result;
}

unint64_t sub_1D30E455C()
{
  result = qword_1EE314890;
  if (!qword_1EE314890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314890);
  }

  return result;
}

unint64_t sub_1D30E45B4()
{
  result = qword_1EE3149C0;
  if (!qword_1EE3149C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149C0);
  }

  return result;
}

unint64_t sub_1D30E460C()
{
  result = qword_1EE3149C8;
  if (!qword_1EE3149C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149C8);
  }

  return result;
}

unint64_t sub_1D30E4664()
{
  result = qword_1EE314B50;
  if (!qword_1EE314B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B50);
  }

  return result;
}

unint64_t sub_1D30E46BC()
{
  result = qword_1EE314B58;
  if (!qword_1EE314B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B58);
  }

  return result;
}

unint64_t sub_1D30E4714()
{
  result = qword_1EE314A68;
  if (!qword_1EE314A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A68);
  }

  return result;
}

unint64_t sub_1D30E476C()
{
  result = qword_1EE314A70;
  if (!qword_1EE314A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A70);
  }

  return result;
}

unint64_t sub_1D30E47C4()
{
  result = qword_1EE314998;
  if (!qword_1EE314998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314998);
  }

  return result;
}

unint64_t sub_1D30E481C()
{
  result = qword_1EE3149A0;
  if (!qword_1EE3149A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149A0);
  }

  return result;
}

unint64_t sub_1D30E4874()
{
  result = qword_1EE314A28;
  if (!qword_1EE314A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A28);
  }

  return result;
}

unint64_t sub_1D30E48CC()
{
  result = qword_1EE314A30;
  if (!qword_1EE314A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A30);
  }

  return result;
}

unint64_t sub_1D30E4924()
{
  result = qword_1EE314968;
  if (!qword_1EE314968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314968);
  }

  return result;
}

unint64_t sub_1D30E497C()
{
  result = qword_1EE314970;
  if (!qword_1EE314970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314970);
  }

  return result;
}

unint64_t sub_1D30E49D4()
{
  result = qword_1EE314A08;
  if (!qword_1EE314A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A08);
  }

  return result;
}

unint64_t sub_1D30E4A2C()
{
  result = qword_1EE314A10;
  if (!qword_1EE314A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A10);
  }

  return result;
}

unint64_t sub_1D30E4A84()
{
  result = qword_1EE314A48;
  if (!qword_1EE314A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A48);
  }

  return result;
}

unint64_t sub_1D30E4ADC()
{
  result = qword_1EE314A50;
  if (!qword_1EE314A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A50);
  }

  return result;
}

unint64_t sub_1D30E4B34()
{
  result = qword_1EE314928;
  if (!qword_1EE314928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314928);
  }

  return result;
}

unint64_t sub_1D30E4B8C()
{
  result = qword_1EE314930;
  if (!qword_1EE314930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314930);
  }

  return result;
}

unint64_t sub_1D30E4BE4()
{
  result = qword_1EE314A98;
  if (!qword_1EE314A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A98);
  }

  return result;
}

unint64_t sub_1D30E4C3C()
{
  result = qword_1EE314AA0;
  if (!qword_1EE314AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AA0);
  }

  return result;
}

unint64_t sub_1D30E4C94()
{
  result = qword_1EE314B08;
  if (!qword_1EE314B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B08);
  }

  return result;
}

unint64_t sub_1D30E4CEC()
{
  result = qword_1EE314B10;
  if (!qword_1EE314B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B10);
  }

  return result;
}

unint64_t sub_1D30E4D44()
{
  result = qword_1EE3148C8;
  if (!qword_1EE3148C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148C8);
  }

  return result;
}

unint64_t sub_1D30E4D9C()
{
  result = qword_1EE3148D0;
  if (!qword_1EE3148D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148D0);
  }

  return result;
}

unint64_t sub_1D30E4DF4()
{
  result = qword_1EE314848;
  if (!qword_1EE314848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314848);
  }

  return result;
}

unint64_t sub_1D30E4E4C()
{
  result = qword_1EE314850;
  if (!qword_1EE314850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314850);
  }

  return result;
}

unint64_t sub_1D30E4EA4()
{
  result = qword_1EE314A88;
  if (!qword_1EE314A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A88);
  }

  return result;
}

unint64_t sub_1D30E4EFC()
{
  result = qword_1EE314A90;
  if (!qword_1EE314A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314A90);
  }

  return result;
}

unint64_t sub_1D30E4F54()
{
  result = qword_1EE3149D0;
  if (!qword_1EE3149D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149D0);
  }

  return result;
}

unint64_t sub_1D30E4FAC()
{
  result = qword_1EE3149D8;
  if (!qword_1EE3149D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149D8);
  }

  return result;
}

unint64_t sub_1D30E5004()
{
  result = qword_1EE314958;
  if (!qword_1EE314958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314958);
  }

  return result;
}

unint64_t sub_1D30E505C()
{
  result = qword_1EE314960;
  if (!qword_1EE314960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314960);
  }

  return result;
}

unint64_t sub_1D30E50B4()
{
  result = qword_1EE3148F8;
  if (!qword_1EE3148F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148F8);
  }

  return result;
}

unint64_t sub_1D30E510C()
{
  result = qword_1EE314900;
  if (!qword_1EE314900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314900);
  }

  return result;
}

unint64_t sub_1D30E5164()
{
  result = qword_1EE314938;
  if (!qword_1EE314938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314938);
  }

  return result;
}

unint64_t sub_1D30E51BC()
{
  result = qword_1EE314940;
  if (!qword_1EE314940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314940);
  }

  return result;
}

unint64_t sub_1D30E5214()
{
  result = qword_1EE3148D8;
  if (!qword_1EE3148D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148D8);
  }

  return result;
}

unint64_t sub_1D30E526C()
{
  result = qword_1EE3148E0;
  if (!qword_1EE3148E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3148E0);
  }

  return result;
}

unint64_t sub_1D30E52C4()
{
  result = qword_1EE314878;
  if (!qword_1EE314878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314878);
  }

  return result;
}

unint64_t sub_1D30E531C()
{
  result = qword_1EE314880;
  if (!qword_1EE314880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314880);
  }

  return result;
}

unint64_t sub_1D30E5374()
{
  result = qword_1EE314AF8;
  if (!qword_1EE314AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AF8);
  }

  return result;
}

unint64_t sub_1D30E53CC()
{
  result = qword_1EE314B00;
  if (!qword_1EE314B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B00);
  }

  return result;
}

unint64_t sub_1D30E5424()
{
  result = qword_1EE314B18;
  if (!qword_1EE314B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B18);
  }

  return result;
}

unint64_t sub_1D30E547C()
{
  result = qword_1EE314B20;
  if (!qword_1EE314B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B20);
  }

  return result;
}

unint64_t sub_1D30E54D4()
{
  result = qword_1EE314AD8;
  if (!qword_1EE314AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AD8);
  }

  return result;
}

unint64_t sub_1D30E552C()
{
  result = qword_1EE314AE0;
  if (!qword_1EE314AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314AE0);
  }

  return result;
}

unint64_t sub_1D30E5584()
{
  result = qword_1EE314908;
  if (!qword_1EE314908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314908);
  }

  return result;
}

unint64_t sub_1D30E55DC()
{
  result = qword_1EE314910;
  if (!qword_1EE314910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314910);
  }

  return result;
}

unint64_t sub_1D30E5634()
{
  result = qword_1EE3149E0;
  if (!qword_1EE3149E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149E0);
  }

  return result;
}

unint64_t sub_1D30E568C()
{
  result = qword_1EE3149E8;
  if (!qword_1EE3149E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149E8);
  }

  return result;
}

unint64_t sub_1D30E56E4()
{
  result = qword_1EE314B38;
  if (!qword_1EE314B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B38);
  }

  return result;
}

unint64_t sub_1D30E573C()
{
  result = qword_1EE314B40;
  if (!qword_1EE314B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B40);
  }

  return result;
}

unint64_t sub_1D30E5798()
{
  result = qword_1EC74B010;
  if (!qword_1EC74B010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B008, &qword_1D30FCFF0);
    sub_1D30E5828();
    sub_1D303B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B010);
  }

  return result;
}

unint64_t sub_1D30E5828()
{
  result = qword_1EC74B018;
  if (!qword_1EC74B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B000, &qword_1D30FCFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B018);
  }

  return result;
}

unint64_t sub_1D30E58B4()
{
  result = qword_1EC74B038;
  if (!qword_1EC74B038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B030, &unk_1D30FD020);
    sub_1D303B704();
    sub_1D30E5828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B038);
  }

  return result;
}

unint64_t sub_1D30E5A4C()
{
  result = qword_1EC74B050;
  if (!qword_1EC74B050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74B048, &unk_1D30FD0B0);
    sub_1D303B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B050);
  }

  return result;
}

uint64_t sub_1D30E5B78(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v98 = a3;
  v102 = a6;
  v99 = a4;
  v100 = a5;
  v104 = sub_1D30E8D9C();
  v10 = *(v104 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x1EEE9AC00](v104);
  v89 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v95 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v81 - v16;
  v18 = a2[1];
  v96 = *a2;
  v19 = a2[3];
  v87 = a2[2];
  v20 = a2[5];
  v103 = a2[4];
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v21 = sub_1D30E8B3C();
  v22 = __swift_project_value_buffer(v21, qword_1EE314B60);
  v23 = sub_1D30E928C();
  v24 = v10[2];
  v101 = a1;
  v91 = v10 + 2;
  v90 = v24;
  v24(v17, a1, v104);

  v92 = v22;
  v25 = sub_1D30E8B1C();

  v88 = v23;
  v26 = os_log_type_enabled(v25, v23);
  v27 = a7;
  v97 = v10;
  v93 = v19;
  if (v26)
  {
    v81 = HIDWORD(v98);
    v82 = HIDWORD(v99);
    v83 = HIDWORD(v100);
    v84 = HIDWORD(v102);
    v28 = swift_slowAlloc();
    v29 = v19;
    v30 = v18;
    v85 = v25;
    v31 = v28;
    v86 = swift_slowAlloc();
    v111 = v86;
    *v31 = 136447234;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v32 = v27;
    v33 = v104;
    v34 = sub_1D30E977C();
    v35 = v33;
    v37 = v36;
    v94 = v10[1];
    v94(v17, v35);
    v38 = sub_1D2FFEA04(v34, v37, &v111);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2082;
    v105 = v96;
    v106 = v30;
    v107 = v87;
    v108 = v29;
    v109 = v103;
    v110 = v20;

    v39 = AssetPackRecord.GlobalID.description.getter();
    v41 = v40;

    v42 = sub_1D2FFEA04(v39, v41, &v111);

    *(v31 + 14) = v42;
    *(v31 + 22) = 2160;
    *(v31 + 24) = 1752392040;
    *(v31 + 32) = 2080;
    v105 = __PAIR64__(v81, v98);
    v106 = __PAIR64__(v82, v99);
    v107 = __PAIR64__(v83, v100);
    v108 = __PAIR64__(v84, v102);
    type metadata accessor for audit_token_t(0);
    v43 = sub_1D30E909C();
    v45 = sub_1D2FFEA04(v43, v44, &v111);

    *(v31 + 34) = v45;
    *(v31 + 42) = 2082;
    v46 = sub_1D30E922C();
    v48 = sub_1D2FFEA04(v46, v47, &v111);
    v27 = v32;

    *(v31 + 44) = v48;
    v49 = v85;
    _os_log_impl(&dword_1D2FD9000, v85, v88, "Issue sandbox extension to: %{public}s in asset pack with global ID: %{public}s for process with audit token: %{mask.hash}s if necessary given IDs of accessible asset packs: %{public}s", v31, 0x34u);
    v50 = v86;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v50, -1, -1);
    MEMORY[0x1D38B3760](v31, -1, -1);

    v51 = v30;
  }

  else
  {

    v94 = v10[1];
    v94(v17, v104);
    v51 = v18;
  }

  v52 = sub_1D3042E60(v103, v20, v27);
  v53 = v101;
  v54 = v95;
  if (v52)
  {
    v55 = sub_1D30E927C();
    v56 = v89;
    v90(v89, v53, v104);

    v57 = sub_1D30E8B1C();

    if (os_log_type_enabled(v57, v55))
    {
      v58 = v56;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v20;
      v62 = v104;
      v63 = v60;
      v105 = v60;
      *v59 = 136446722;
      *(v59 + 4) = sub_1D2FFEA04(v96, v51, &v105);
      *(v59 + 12) = 2082;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v64 = sub_1D30E977C();
      v66 = v65;
      v94(v58, v62);
      v67 = sub_1D2FFEA04(v64, v66, &v105);

      *(v59 + 14) = v67;
      *(v59 + 22) = 2082;
      *(v59 + 24) = sub_1D2FFEA04(v103, v61, &v105);
      _os_log_impl(&dword_1D2FD9000, v57, v55, "The app with the bundle ID “%{public}s” doesn’t need a new sandbox extension to “%{public}s” in the asset pack with the ID “%{public}s”.", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v63, -1, -1);
      MEMORY[0x1D38B3760](v59, -1, -1);
    }

    else
    {

      v94(v56, v104);
    }

    return 0;
  }

  else
  {
    v90(v95, v101, v104);

    v68 = sub_1D30E8B1C();
    v69 = sub_1D30E92BC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = v51;
      v73 = v54;
      v93 = v20;
      v74 = v104;
      v75 = v71;
      v105 = v71;
      *v70 = 136446722;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v76 = sub_1D30E977C();
      v78 = v77;
      v94(v73, v74);
      v79 = sub_1D2FFEA04(v76, v78, &v105);

      *(v70 + 4) = v79;
      *(v70 + 12) = 2082;
      *(v70 + 14) = sub_1D2FFEA04(v103, v93, &v105);
      *(v70 + 22) = 2082;
      *(v70 + 24) = sub_1D2FFEA04(v96, v72, &v105);
      _os_log_impl(&dword_1D2FD9000, v68, v69, "Issuing a sandbox extension to “%{public}s” in the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v70, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v75, -1, -1);
      MEMORY[0x1D38B3760](v70, -1, -1);
    }

    else
    {

      v94(v54, v104);
    }

    return sub_1D30E7B38(v101, 0, v98, v99, v100, v102);
  }
}

id sub_1D30E6510(uint64_t a1, _BYTE *a2)
{
  v84 = a1;
  v88[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D30E8D9C();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = v86[8];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v82 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v81 = &v78[-v8];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v78[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v78[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v78[-v15];
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  sub_1D30E8D3C();
  v19 = sub_1D30E906C();

  v20 = [v18 fileExistsAtPath_];

  v85 = v17;
  if (v20)
  {
    v83 = v11;
    v80 = v14;
    v21 = v86;
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v22 = sub_1D30E8B3C();
    __swift_project_value_buffer(v22, qword_1EE314B60);
    v23 = sub_1D30E927C();
    v24 = a2;
    v25 = a2;
    v26 = v87;
    (v21[2])(v16, v25, v87);
    v27 = sub_1D30E8B1C();
    if (os_log_type_enabled(v27, v23))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v88[0] = v29;
      *v28 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
      v30 = sub_1D30E977C();
      v31 = v21;
      v33 = v32;
      (v31[1])(v16, v26);
      v34 = sub_1D2FFEA04(v30, v33, v88);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1D2FD9000, v27, v23, "An item already exists at “%{public}s”; removing it…", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1D38B3760](v29, -1, -1);
      MEMORY[0x1D38B3760](v28, -1, -1);
    }

    else
    {

      (v21[1])(v16, v26);
    }

    v17 = v85;
    v35 = [v85 defaultManager];
    a2 = v24;
    sub_1D30E8D3C();
    v36 = sub_1D30E906C();

    v88[0] = 0;
    v37 = [v35 removeItemAtPath:v36 error:v88];

    v38 = v88[0];
    if (!v37)
    {
      goto LABEL_17;
    }

    v39 = v88[0];
    v14 = v80;
    v11 = v83;
  }

  v40 = [v17 defaultManager];
  v41 = v86;
  v42 = v86[2];
  v83 = a2;
  v43 = a2;
  v44 = v87;
  v80 = v42;
  (v42)(v11, v43, v87);
  sub_1D30E8D2C();
  sub_1D30E8D3C();
  v45 = v41[1];
  v45(v14, v44);
  v46 = sub_1D30E906C();

  v88[0] = 0;
  v47 = [v40 createDirectoryAtPath:v46 withIntermediateDirectories:1 attributes:0 error:v88];

  v38 = v88[0];
  if (!v47)
  {
    goto LABEL_17;
  }

  v48 = v45;
  v49 = qword_1EE3152C8;
  v50 = v88[0];
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = sub_1D30E8B3C();
  __swift_project_value_buffer(v51, qword_1EE314B60);
  v52 = sub_1D30E927C();
  v53 = v81;
  v54 = v80;
  (v80)(v81, v84, v44);
  v55 = v82;
  (v54)(v82, v83, v44);
  v56 = sub_1D30E8B1C();
  if (os_log_type_enabled(v56, v52))
  {
    v57 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v88[0] = v86;
    *v57 = 136446466;
    sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v58 = v53;
    v59 = v55;
    v60 = sub_1D30E977C();
    v80 = v56;
    v61 = v60;
    v79 = v52;
    v63 = v62;
    v48(v58, v44);
    v64 = sub_1D2FFEA04(v61, v63, v88);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2082;
    v65 = sub_1D30E977C();
    v67 = v66;
    v48(v59, v44);
    v68 = sub_1D2FFEA04(v65, v67, v88);

    *(v57 + 14) = v68;
    v69 = v80;
    _os_log_impl(&dword_1D2FD9000, v80, v79, "Copying the item at “%{public}s” to “%{public}s” in the staging directory…", v57, 0x16u);
    v70 = v86;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v70, -1, -1);
    MEMORY[0x1D38B3760](v57, -1, -1);
  }

  else
  {

    v48(v55, v44);
    v48(v53, v44);
  }

  v71 = [v85 defaultManager];
  sub_1D30E8D3C();
  v72 = sub_1D30E906C();

  sub_1D30E8D3C();
  v73 = sub_1D30E906C();

  v88[0] = 0;
  v74 = [v71 copyItemAtPath:v72 toPath:v73 error:v88];

  v38 = v88[0];
  if ((v74 & 1) == 0)
  {
LABEL_17:
    v76 = v38;
    sub_1D30E87DC();

    result = swift_willThrow();
    goto LABEL_18;
  }

  result = v88[0];
LABEL_18:
  v77 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1D30E6D18(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_1D30E87DC();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

unint64_t sub_1D30E6DDC()
{
  result = qword_1EC74B078;
  if (!qword_1EC74B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B078);
  }

  return result;
}

uint64_t sub_1D30E6EFC(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0A8, &qword_1D30FD1D0) - 8) + 80);

  return sub_1D3082D74(a1);
}

uint64_t sub_1D30E6F78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D30E70C4()
{
  if ((sandbox_extension_release() & 0x80000000) != 0)
  {
    if (qword_1EE3130B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1D30E8B3C();
    __swift_project_value_buffer(v3, qword_1EE3130B8);
    v4 = sub_1D30E929C();
    oslog = sub_1D30E8B1C();
    if (os_log_type_enabled(oslog, v4))
    {
      v2 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v2 = 138543362;
      v6 = MEMORY[0x1D38B21D0]();
      sub_1D30E6DDC();
      swift_allocError();
      *v7 = v6;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v2 + 4) = v8;
      *v5 = v8;
      _os_log_impl(&dword_1D2FD9000, oslog, v4, "An extension handle couldn’t be released: %{public}@", v2, 0xCu);
      sub_1D2FE5940(v5);
      MEMORY[0x1D38B3760](v5, -1, -1);
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EE3130B0 != -1)
    {
      swift_once();
    }

    v0 = sub_1D30E8B3C();
    __swift_project_value_buffer(v0, qword_1EE3130B8);
    oslog = sub_1D30E8B1C();
    v1 = sub_1D30E92BC();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_1D2FD9000, oslog, v1, "An extension handle was released.", v2, 2u);
LABEL_10:
      MEMORY[0x1D38B3760](v2, -1, -1);
    }
  }
}

uint64_t sub_1D30E72C4()
{
  if (*v0)
  {
    result = 0x6972772D64616572;
  }

  else
  {
    result = 0x6C6E6F2D64616572;
  }

  *v0;
  return result;
}

uint64_t sub_1D30E7308()
{
  v0 = sub_1D30E8B3C();
  __swift_allocate_value_buffer(v0, qword_1EE3130B8);
  __swift_project_value_buffer(v0, qword_1EE3130B8);
  return sub_1D30E8B2C();
}

uint64_t sub_1D30E7380@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    if (*MEMORY[0x1E69E9BB0])
    {
LABEL_5:
      v4 = *MEMORY[0x1E69E9BE0];
      result = sandbox_extension_issue_file_to_process();
      *a2 = result;
      return result;
    }

    __break(1u);
  }

  result = *MEMORY[0x1E69E9BA8];
  if (*MEMORY[0x1E69E9BA8])
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D30E7420@<X0>(uint64_t *a1@<X8>)
{
  result = sandbox_extension_consume();
  *a1 = result;
  return result;
}

uint64_t sub_1D30E7450(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return sandbox_extension_consume();
  }

  result = sub_1D30E947C();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1D30E74EC()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SandboxError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D30E8468(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0C8, &qword_1D30FD248);
    v12 = *(v10 + *(v11 + 48));
    v13 = (v10 + *(v11 + 64));
    v14 = v13[1];
    v24 = *v13;
    v25 = v14;
    (*(v3 + 32))(v6, v10, v2);
    *&v22[0] = 0;
    *(&v22[0] + 1) = 0xE000000000000000;
    sub_1D30E948C();
    v23 = v22[0];
    MEMORY[0x1D38B2610](0x1000000000000033, 0x80000001D30EE6D0);
    v22[0] = v24;
    v22[1] = v25;
    type metadata accessor for audit_token_t(0);
    sub_1D30E955C();
    MEMORY[0x1D38B2610](0x100000000000001ELL, 0x80000001D30EE710);
    sub_1D30E8288(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v15 = sub_1D30E977C();
    MEMORY[0x1D38B2610](v15);

    MEMORY[0x1D38B2610](0x68746977209D80E2, 0xAC0000009C80E220);
    if (v12)
    {
      v16 = 0x6972772D64616572;
    }

    else
    {
      v16 = 0x6C6E6F2D64616572;
    }

    if (v12)
    {
      v17 = 0xEA00000000006574;
    }

    else
    {
      v17 = 0xE900000000000079;
    }

    MEMORY[0x1D38B2610](v16, v17);

    MEMORY[0x1D38B2610](0x1000000000000010, 0x80000001D30EE730);
    v18 = v23;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v19 = *v10;
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    sub_1D30E948C();

    *&v24 = 0x100000000000002BLL;
    *(&v24 + 1) = 0x80000001D30EE750;
    v20 = sub_1D30E8CBC();
    MEMORY[0x1D38B2610](v20);

    return v24;
  }

  return v18;
}

uint64_t sub_1D30E7844(uint64_t a1, unint64_t a2)
{
  if (qword_1EE3130B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D30E8B3C();
  __swift_project_value_buffer(v4, qword_1EE3130B8);
  v5 = sub_1D30E928C();
  v6 = sub_1D30E8B1C();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136380675;

    v9 = sub_1D2FFEA04(a1, a2, &v18);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_1D2FD9000, v6, v5, "Consume: %{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  v10 = sub_1D30E7450(a1, a2);

  if (v10 < 0)
  {
    type metadata accessor for SandboxError();
    sub_1D30E8288(&qword_1EC74B0C0, type metadata accessor for SandboxError);
    swift_allocError();
    *v16 = MEMORY[0x1D38B21D0]();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v11 = sub_1D30E8B1C();
    v12 = sub_1D30E92BC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;

      v15 = sub_1D2FFEA04(a1, a2, &v18);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_1D2FD9000, v11, v12, "The extension token “%{private,mask.hash}s” was consumed.", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D38B3760](v14, -1, -1);
      MEMORY[0x1D38B3760](v13, -1, -1);
    }
  }

  return v10;
}

uint64_t sub_1D30E7B38(uint64_t a1, int a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a5;
  v82 = a2;
  v90 = HIDWORD(a3);
  v91 = HIDWORD(a4);
  v85 = HIDWORD(a5);
  v87 = a6;
  v88 = HIDWORD(a6);
  v10 = sub_1D30E8D9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE3130B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D30E8B3C();
  v16 = __swift_project_value_buffer(v15, qword_1EE3130B8);
  v17 = sub_1D30E928C();
  v18 = *(v11 + 16);
  v84 = a1;
  v77 = v18;
  v78 = v11 + 16;
  v18(v14, a1, v10);
  v81 = v16;
  v19 = sub_1D30E8B1C();
  v80 = v17;
  v20 = os_log_type_enabled(v19, v17);
  v89 = a4;
  v79 = v10;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v86 = v6;
    v22 = v21;
    v76 = swift_slowAlloc();
    v99 = v76;
    *v22 = 136446978;
    sub_1D30E8288(&unk_1EC749370, MEMORY[0x1E69E83A8]);
    v23 = sub_1D30E977C();
    v75 = v19;
    v24 = a3;
    v26 = v25;
    (*(v11 + 8))(v14, v10);
    v27 = v24;
    v28 = sub_1D2FFEA04(v23, v26, &v99);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2082;
    v29 = v82;
    if (v82)
    {
      v30 = 0x6972772D64616572;
    }

    else
    {
      v30 = 0x6C6E6F2D64616572;
    }

    if (v82)
    {
      v31 = 0xEA00000000006574;
    }

    else
    {
      v31 = 0xE900000000000079;
    }

    v32 = sub_1D2FFEA04(v30, v31, &v99);

    *(v22 + 14) = v32;
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2080;
    v92 = __PAIR64__(v90, v24);
    v93 = a4;
    v94 = v91;
    v33 = v85;
    v95 = v86;
    v96 = v85;
    v34 = v88;
    v97 = v87;
    v98 = v88;
    type metadata accessor for audit_token_t(0);
    v35 = sub_1D30E909C();
    v37 = sub_1D2FFEA04(v35, v36, &v99);

    *(v22 + 34) = v37;
    v38 = v75;
    _os_log_impl(&dword_1D2FD9000, v75, v80, "Issue extension to: %{public}s with permissions: %{public}s for process with audit token: %{mask.hash}s", v22, 0x2Au);
    v39 = v76;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v39, -1, -1);
    v40 = v22;
    v6 = v86;
    MEMORY[0x1D38B3760](v40, -1, -1);
  }

  else
  {

    v41 = (*(v11 + 8))(v14, v10);
    v34 = v88;
    v33 = v85;
    v27 = a3;
    v29 = v82;
  }

  MEMORY[0x1EEE9AC00](v41);
  v42 = v29 & 1;
  LOBYTE((&v75)[-6]) = v29 & 1;
  v85 = v27;
  v44 = v89;
  v43 = v90;
  HIDWORD((&v75)[-6]) = v27;
  LODWORD((&v75)[-5]) = v43;
  v45 = v91;
  HIDWORD((&v75)[-5]) = v44;
  LODWORD((&v75)[-4]) = v45;
  HIDWORD((&v75)[-4]) = v6;
  LODWORD((&v75)[-3]) = v33;
  HIDWORD((&v75)[-3]) = v46;
  LODWORD((&v75)[-2]) = v34;
  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0B8, &qword_1D30FD240);
  v48 = v83;
  v49 = v84;
  sub_1D30E8CEC();
  v50 = v92;
  v51 = v34;
  v52 = v33;
  if (v92)
  {
    v84 = v48;
    v53 = sub_1D30E8B1C();
    v54 = sub_1D30E92BC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v86 = v6;
      v83 = v56;
      v99 = v56;
      *v55 = 141558787;
      *(v55 + 4) = 1752392040;
      *(v55 + 12) = 2081;
      v57 = sub_1D30E90FC();
      v59 = sub_1D2FFEA04(v57, v58, &v99);

      *(v55 + 14) = v59;
      *(v55 + 22) = 2160;
      *(v55 + 24) = 1752392040;
      *(v55 + 32) = 2080;
      v92 = __PAIR64__(v90, v85);
      v93 = v89;
      v94 = v91;
      v95 = v86;
      v96 = v52;
      v97 = v87;
      v98 = v51;
      type metadata accessor for audit_token_t(0);
      v60 = sub_1D30E909C();
      v62 = sub_1D2FFEA04(v60, v61, &v99);

      *(v55 + 34) = v62;
      _os_log_impl(&dword_1D2FD9000, v53, v54, "The extension token “%{private,mask.hash}s” was issued to the process with the audit token “%{mask.hash}s”.", v55, 0x2Au);
      v63 = v83;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v63, -1, -1);
      MEMORY[0x1D38B3760](v55, -1, -1);
    }

    v64 = sub_1D30E90FC();
    free(v50);
  }

  else
  {
    v86 = type metadata accessor for SandboxError();
    sub_1D30E8288(&qword_1EC74B0C0, type metadata accessor for SandboxError);
    swift_allocError();
    v64 = v65;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B0C8, &qword_1D30FD248);
    v67 = *(v66 + 48);
    v68 = v6;
    v69 = (v64 + *(v66 + 64));
    v77(v64, v49, v79);
    *(v64 + v67) = v42;
    v71 = v89;
    v70 = v90;
    *v69 = v85;
    v69[1] = v70;
    v72 = v91;
    v69[2] = v71;
    v69[3] = v72;
    v69[4] = v68;
    v69[5] = v33;
    v73 = v88;
    v69[6] = v47;
    v69[7] = v73;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v64;
}

uint64_t sub_1D30E8210@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 28);
  v4 = *(v1 + 36);
  v5 = *(v1 + 44);
  return sub_1D30E7380(*(v1 + 16), a1);
}

uint64_t type metadata accessor for SandboxError()
{
  result = qword_1EC74B0D0;
  if (!qword_1EC74B0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D30E8288(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D30E82E0()
{
  sub_1D30E834C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1D30E834C()
{
  if (!qword_1EC74B0E0)
  {
    sub_1D30E8D9C();
    type metadata accessor for audit_token_t(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC74B0E0);
    }
  }
}

unint64_t sub_1D30E8414()
{
  result = qword_1EC74B0E8;
  if (!qword_1EC74B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74B0E8);
  }

  return result;
}

uint64_t sub_1D30E8468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SandboxError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}