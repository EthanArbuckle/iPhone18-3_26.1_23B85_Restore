uint64_t sub_1D68DFD48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for SportsDataServiceRequest(0);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v61 = v9;
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v51 - v12;
  v57 = type metadata accessor for SportsDataServiceResourceRequest(0);
  v63 = *(v57 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v57, v14);
  v15 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v51 - v22);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  sub_1D68FF774(a1, v23, type metadata accessor for SportsDataServiceResourceRequest);
  sub_1D68FF774(a1, v19, type metadata accessor for SportsDataServiceResourceRequest);
  v25 = sub_1D725C3FC();
  v26 = sub_1D7262EDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27;
    v29 = swift_slowAlloc();
    v55 = v3;
    v30 = v29;
    v64 = v29;
    *v28 = 136446466;
    v52 = a2;
    v56 = a1;
    v31 = *v23;
    v32 = v23[1];

    v54 = v6;
    sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
    v33 = sub_1D5BC5100(v31, v32, &v64);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_1D5C41360(&v19[*(v57 + 20)], v58);
    v34 = sub_1D72620FC();
    v36 = v35;
    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v37 = sub_1D5BC5100(v34, v36, &v64);
    a1 = v56;

    *(v28 + 14) = v37;
    a2 = v52;
    _os_log_impl(&dword_1D5B42000, v25, v26, "Sports data service fetching resource %{public}s, cachePolicy=%{public}s", v28, 0x16u);
    swift_arrayDestroy();
    v38 = v30;
    v3 = v55;
    MEMORY[0x1DA6FD500](v38, -1, -1);
    v39 = v28;
    v15 = v53;
    MEMORY[0x1DA6FD500](v39, -1, -1);
  }

  else
  {

    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v40 = sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
  }

  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v51 - 2) = v3;
  *(&v51 - 1) = a1;
  sub_1D5F7DC80();
  sub_1D725BDCC();
  v42 = v62;
  sub_1D68FF774(a2, v62, type metadata accessor for SportsDataServiceRequest);
  v43 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v44 = swift_allocObject();
  sub_1D68FFE38(v42, v44 + v43, type metadata accessor for SportsDataServiceRequest);
  v45 = sub_1D725B92C();
  sub_1D68FF208(0);
  sub_1D725BAAC();

  sub_1D68FF774(a1, v15, type metadata accessor for SportsDataServiceResourceRequest);
  v46 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v47 = swift_allocObject();
  sub_1D68FFE38(v15, v47 + v46, type metadata accessor for SportsDataServiceResourceRequest);
  v48 = sub_1D725B92C();
  v49 = sub_1D725BACC();

  return v49;
}

uint64_t sub_1D68E0360(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for SportsDataServiceRequest(0);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v61 = v9;
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v51 - v12;
  v57 = type metadata accessor for SportsDataServiceResourceRequest(0);
  v63 = *(v57 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v57, v14);
  v15 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v51 - v22);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  sub_1D68FF774(a1, v23, type metadata accessor for SportsDataServiceResourceRequest);
  sub_1D68FF774(a1, v19, type metadata accessor for SportsDataServiceResourceRequest);
  v25 = sub_1D725C3FC();
  v26 = sub_1D7262EDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27;
    v29 = swift_slowAlloc();
    v55 = v3;
    v30 = v29;
    v64 = v29;
    *v28 = 136446466;
    v52 = a2;
    v56 = a1;
    v31 = *v23;
    v32 = v23[1];

    v54 = v6;
    sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
    v33 = sub_1D5BC5100(v31, v32, &v64);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_1D5C41360(&v19[*(v57 + 20)], v58);
    v34 = sub_1D72620FC();
    v36 = v35;
    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v37 = sub_1D5BC5100(v34, v36, &v64);
    a1 = v56;

    *(v28 + 14) = v37;
    a2 = v52;
    _os_log_impl(&dword_1D5B42000, v25, v26, "Sports data service fetching resource %{public}s, cachePolicy=%{public}s", v28, 0x16u);
    swift_arrayDestroy();
    v38 = v30;
    v3 = v55;
    MEMORY[0x1DA6FD500](v38, -1, -1);
    v39 = v28;
    v15 = v53;
    MEMORY[0x1DA6FD500](v39, -1, -1);
  }

  else
  {

    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v40 = sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
  }

  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v51 - 2) = v3;
  *(&v51 - 1) = a1;
  sub_1D5F7DC80();
  sub_1D725BDCC();
  v42 = v62;
  sub_1D68FF774(a2, v62, type metadata accessor for SportsDataServiceRequest);
  v43 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v44 = swift_allocObject();
  sub_1D68FFE38(v42, v44 + v43, type metadata accessor for SportsDataServiceRequest);
  v45 = sub_1D725B92C();
  sub_1D68FECB4(0);
  sub_1D725BAAC();

  sub_1D68FF774(a1, v15, type metadata accessor for SportsDataServiceResourceRequest);
  v46 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v47 = swift_allocObject();
  sub_1D68FFE38(v15, v47 + v46, type metadata accessor for SportsDataServiceResourceRequest);
  v48 = sub_1D725B92C();
  v49 = sub_1D725BACC();

  return v49;
}

uint64_t sub_1D68E0978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for SportsDataServiceRequest(0);
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v61 = v9;
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v51 - v12;
  v57 = type metadata accessor for SportsDataServiceResourceRequest(0);
  v63 = *(v57 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v57, v14);
  v15 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v51 - v22);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  sub_1D68FF774(a1, v23, type metadata accessor for SportsDataServiceResourceRequest);
  sub_1D68FF774(a1, v19, type metadata accessor for SportsDataServiceResourceRequest);
  v25 = sub_1D725C3FC();
  v26 = sub_1D7262EDC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = v27;
    v29 = swift_slowAlloc();
    v55 = v3;
    v30 = v29;
    v64 = v29;
    *v28 = 136446466;
    v52 = a2;
    v56 = a1;
    v31 = *v23;
    v32 = v23[1];

    v54 = v6;
    sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
    v33 = sub_1D5BC5100(v31, v32, &v64);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    sub_1D5C41360(&v19[*(v57 + 20)], v58);
    v34 = sub_1D72620FC();
    v36 = v35;
    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v37 = sub_1D5BC5100(v34, v36, &v64);
    a1 = v56;

    *(v28 + 14) = v37;
    a2 = v52;
    _os_log_impl(&dword_1D5B42000, v25, v26, "Sports data service fetching resource %{public}s, cachePolicy=%{public}s", v28, 0x16u);
    swift_arrayDestroy();
    v38 = v30;
    v3 = v55;
    MEMORY[0x1DA6FD500](v38, -1, -1);
    v39 = v28;
    v15 = v53;
    MEMORY[0x1DA6FD500](v39, -1, -1);
  }

  else
  {

    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceResourceRequest);
    v40 = sub_1D68FF714(v23, type metadata accessor for SportsDataServiceResourceRequest);
  }

  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v51 - 2) = v3;
  *(&v51 - 1) = a1;
  sub_1D5F7DC80();
  sub_1D725BDCC();
  v42 = v62;
  sub_1D68FF774(a2, v62, type metadata accessor for SportsDataServiceRequest);
  v43 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v44 = swift_allocObject();
  sub_1D68FFE38(v42, v44 + v43, type metadata accessor for SportsDataServiceRequest);
  v45 = sub_1D725B92C();
  sub_1D68FFF2C(0);
  sub_1D725BAAC();

  sub_1D68FF774(a1, v15, type metadata accessor for SportsDataServiceResourceRequest);
  v46 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v47 = swift_allocObject();
  sub_1D68FFE38(v15, v47 + v46, type metadata accessor for SportsDataServiceResourceRequest);
  v48 = sub_1D725B92C();
  v49 = sub_1D725BACC();

  return v49;
}

uint64_t sub_1D68E0F90(uint64_t a1)
{
  v51 = *v1;
  v52 = v1;
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v45 - v5;
  v7 = type metadata accessor for SportsDataServiceBatchResourceRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  v50 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v45 - v18);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725C42C();
  __swift_project_value_buffer(v20, qword_1EDF17598);
  sub_1D68FF774(a1, v19, type metadata accessor for SportsDataServiceBatchResourceRequest);
  v53 = a1;
  sub_1D68FF774(a1, v14, type metadata accessor for SportsDataServiceBatchResourceRequest);
  v21 = sub_1D725C3FC();
  v22 = sub_1D7262EDC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = v7;
    v24 = v23;
    v47 = swift_slowAlloc();
    v48 = v8;
    v54 = v47;
    *v24 = 136446466;
    v25 = MEMORY[0x1DA6F9D20](*v19, MEMORY[0x1E69E6158]);
    v27 = v26;
    sub_1D68FF714(v19, type metadata accessor for SportsDataServiceBatchResourceRequest);
    v28 = sub_1D5BC5100(v25, v27, &v54);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_1D5C41360(&v14[*(v46 + 20)], v6);
    v29 = sub_1D72620FC();
    v31 = v30;
    sub_1D68FF714(v14, type metadata accessor for SportsDataServiceBatchResourceRequest);
    v32 = sub_1D5BC5100(v29, v31, &v54);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_1D5B42000, v21, v22, "Sports data service fetching resources %{public}s, cachePolicy=%{public}s", v24, 0x16u);
    v33 = v47;
    swift_arrayDestroy();
    v8 = v48;
    MEMORY[0x1DA6FD500](v33, -1, -1);
    MEMORY[0x1DA6FD500](v24, -1, -1);
  }

  else
  {

    sub_1D68FF714(v14, type metadata accessor for SportsDataServiceBatchResourceRequest);
    v34 = sub_1D68FF714(v19, type metadata accessor for SportsDataServiceBatchResourceRequest);
  }

  MEMORY[0x1EEE9AC00](v34, v35);
  v36 = v53;
  *(&v45 - 2) = v52;
  *(&v45 - 1) = v36;
  sub_1D68FE910(0, &qword_1EDF1B800, sub_1D5F7DC80);
  sub_1D725BDCC();
  v48 = type metadata accessor for SportsDataServiceBatchResourceRequest;
  v37 = v49;
  sub_1D68FF774(v36, v49, type metadata accessor for SportsDataServiceBatchResourceRequest);
  v38 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v39 = swift_allocObject();
  sub_1D68FFE38(v37, v39 + v38, type metadata accessor for SportsDataServiceBatchResourceRequest);
  v40 = sub_1D725B92C();
  sub_1D68FE7F8();
  sub_1D725BAAC();

  sub_1D68FF774(v36, v37, v48);
  v41 = swift_allocObject();
  sub_1D68FFE38(v37, v41 + v38, type metadata accessor for SportsDataServiceBatchResourceRequest);
  v42 = sub_1D725B92C();
  v43 = sub_1D725BACC();

  return v43;
}

void sub_1D68E1520(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v25 = MEMORY[0x1E69E7CC8];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(a1 + 56) + 8 * v15);

      v5 = v19;
      sub_1D68E16B8(&v25, v18, v17, v5, a2);
      if (v6)
      {
        break;
      }

      v11 &= v11 - 1;

      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        v20 = v25;
        sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceBatchResourceRequest);
        sub_1D68FE7F8();
        *(a4 + *(v21 + 52)) = v20;
        return;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D68E16B8(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v69 = a5;
  v67 = a1;
  v8 = MEMORY[0x1E69E6720];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v66 = &v63 - v11;
  v12 = sub_1D725891C();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v64 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v63 - v22;
  sub_1D68FD964(0, &qword_1EDF11F60, type metadata accessor for SportsRoster, v8);
  *&v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25).n128_u64[0];
  v28 = &v63 - v27;
  v68 = a4;
  v29 = [a4 fileURL];
  if (!v29)
  {
    sub_1D68FEC44();
    v34 = swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  v63 = v12;
  v70 = a2;
  v30 = v29;
  sub_1D72584EC();

  (*(v16 + 32))(v23, v19, v15);
  v31 = v71;
  v32 = sub_1D72585DC();
  v34 = v31;
  if (v31)
  {
    (*(v16 + 8))(v23, v15);
    a2 = v70;
LABEL_6:
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v38 = sub_1D725C42C();
    __swift_project_value_buffer(v38, qword_1EDF17598);

    v39 = v34;
    v40 = sub_1D725C3FC();
    v41 = sub_1D7262EBC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136446466;
      *(v42 + 4) = sub_1D5BC5100(a2, a3, &v73);
      *(v42 + 12) = 2082;
      v72 = v34;
      v44 = v34;
      sub_1D5B49474(0, &qword_1EDF3C5D0);
      v45 = sub_1D72620FC();
      v47 = sub_1D5BC5100(v45, v46, &v73);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_1D5B42000, v40, v41, "Sports data service failed to decode resource %{public}s, error=%{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v43, -1, -1);
      MEMORY[0x1DA6FD500](v42, -1, -1);
    }

    else
    {
    }

    return;
  }

  v35 = v32;
  v36 = v33;
  v71 = a3;
  v37 = type metadata accessor for SportsRoster();
  sub_1D68FE974();
  sub_1D725A69C();
  (*(v16 + 8))(v23, v15);
  sub_1D5B952F8(v35, v36);
  (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
  v48 = v71;

  sub_1D6D619CC(v28, v70, v48);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v49 = sub_1D725C42C();
  __swift_project_value_buffer(v49, qword_1EDF17598);

  v50 = v68;
  v51 = sub_1D725C3FC();
  v52 = sub_1D7262EDC();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v73 = v54;
    *v53 = 136446466;
    *(v53 + 4) = sub_1D5BC5100(v70, v48, &v73);
    *(v53 + 12) = 2082;
    v55 = [v50 fetchDate];
    v56 = v64;
    sub_1D72588BC();

    v57 = v66;
    sub_1D7258A4C();
    v58 = sub_1D7258AAC();
    (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
    v59 = sub_1D725879C();
    v61 = v60;
    sub_1D6900328(v57, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v65 + 8))(v56, v63);
    v62 = sub_1D5BC5100(v59, v61, &v73);

    *(v53 + 14) = v62;
    _os_log_impl(&dword_1D5B42000, v51, v52, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v54, -1, -1);
    MEMORY[0x1DA6FD500](v53, -1, -1);
  }
}

void sub_1D68E1EA4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    return;
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v12 = a3;
    if ([v12 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 18;
      swift_willThrow();

      sub_1D5B952E4(a1, a2);
      return;
    }
  }

  else
  {
    sub_1D5E3E824(a1, a2);
  }

  sub_1D6900A98();
  sub_1D725A69C();
  sub_1D5B952E4(a1, a2);
  if (!v5)
  {
    sub_1D68FF774(a4, a5, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
    v15 = a5 + *(v14 + 52);
    *v15 = v16;
    *(v15 + 16) = v17;
  }
}

void sub_1D68E208C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    return;
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v12 = a3;
    if ([v12 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 18;
      swift_willThrow();

      sub_1D5B952E4(a1, a2);
      return;
    }
  }

  else
  {
    sub_1D5E3E824(a1, a2);
  }

  sub_1D6900768();
  sub_1D725A69C();
  sub_1D5B952E4(a1, a2);
  if (!v5)
  {
    sub_1D68FF774(a4, a5, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
    *(a5 + *(v14 + 52)) = v15;
  }
}

void sub_1D68E2258(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    return;
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v12 = a3;
    if ([v12 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 18;
      swift_willThrow();

      sub_1D5B952E4(a1, a2);
      return;
    }
  }

  else
  {
    sub_1D5E3E824(a1, a2);
  }

  type metadata accessor for SportsSyncingConfigResource();
  sub_1D6900474();
  sub_1D725A69C();
  sub_1D5B952E4(a1, a2);
  if (!v5)
  {
    sub_1D68FF774(a4, a5, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    sub_1D690042C(0);
    *(a5 + *(v14 + 52)) = v15;
  }
}

uint64_t sub_1D68E23F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t (*a5)(void)@<X5>, void (*a6)(uint64_t)@<X6>, uint64_t (*a7)(void)@<X7>, uint64_t a8@<X8>, uint64_t (*a9)(char *, uint64_t))
{
  v27 = a4;
  v28 = a8;
  v15 = a5(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v26 - v17;
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v19 = 5;
    return swift_willThrow();
  }

  if (a3)
  {
    sub_1D5F13DE4(a1, a2);
    v21 = a3;
    if ([v21 statusCode] == 403)
    {
      sub_1D5F82C30();
      swift_allocError();
      *v22 = 18;
      swift_willThrow();

      return sub_1D5B952E4(a1, a2);
    }

    v26 = a7;
  }

  else
  {
    v26 = a7;
    v23 = sub_1D5E3E824(a1, a2);
  }

  a6(v23);
  sub_1D725A69C();
  result = sub_1D5B952E4(a1, a2);
  if (!v9)
  {
    v24 = v28;
    sub_1D68FF774(v27, v28, type metadata accessor for SportsDataServiceURLRequest);
    type metadata accessor for SportsDataServiceRequest(0);
    swift_storeEnumTagMultiPayload();
    v25 = v26(0);
    return a9(v18, v24 + *(v25 + 52));
  }

  return result;
}

char *sub_1D68E261C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v34 = a6;
  v35 = a4;
  v32 = a2;
  v8 = type metadata accessor for SportsDataServiceURLRequest(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) != 0 && (v38 = a1, v16 = a1, sub_1D5B49474(0, &qword_1EDF3C5D0), swift_dynamicCast()) && v37 == 18)
  {
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v17 = sub_1D725C42C();
    __swift_project_value_buffer(v17, qword_1EDF17598);
    v18 = sub_1D725C3FC();
    v19 = sub_1D7262EDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v18;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_1D5B42000, v31, v19, "Refreshing access token for sports visualizations", v20, 2u);
      v22 = v21;
      v18 = v31;
      MEMORY[0x1DA6FD500](v22, -1, -1);
    }

    v23 = v32[12];
    v31 = v32[13];
    __swift_project_boxed_opaque_existential_1(v32 + 9, v23);
    v24 = v35;
    sub_1D725B43C();
    (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
    sub_1D68FF774(v24, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDataServiceURLRequest);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = (v13 + *(v33 + 80) + v25) & ~*(v33 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v25, v15, v11);
    sub_1D68FFE38(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SportsDataServiceURLRequest);
    v28 = sub_1D725B92C();
    sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
    type metadata accessor for SportsDataServiceRequestFetcher();
    v15 = sub_1D725BA9C();
  }

  else
  {
    swift_willThrow();
    v29 = a1;
  }

  return v15;
}

char *sub_1D68E2A1C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v34 = a6;
  v35 = a4;
  v32 = a2;
  v8 = type metadata accessor for SportsDataServiceURLRequest(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) != 0 && (v38 = a1, v16 = a1, sub_1D5B49474(0, &qword_1EDF3C5D0), swift_dynamicCast()) && v37 == 18)
  {
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v17 = sub_1D725C42C();
    __swift_project_value_buffer(v17, qword_1EDF17598);
    v18 = sub_1D725C3FC();
    v19 = sub_1D7262EDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = v18;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_1D5B42000, v31, v19, "Refreshing access token for sports visualizations", v20, 2u);
      v22 = v21;
      v18 = v31;
      MEMORY[0x1DA6FD500](v22, -1, -1);
    }

    v23 = v32[12];
    v31 = v32[13];
    __swift_project_boxed_opaque_existential_1(v32 + 9, v23);
    v24 = v35;
    sub_1D725B43C();
    (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v11);
    sub_1D68FF774(v24, &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDataServiceURLRequest);
    v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v26 = (v13 + *(v33 + 80) + v25) & ~*(v33 + 80);
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v25, v15, v11);
    sub_1D68FFE38(&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SportsDataServiceURLRequest);
    v28 = sub_1D725B92C();
    sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
    type metadata accessor for SportsDataServiceRequestFetcher();
    v15 = sub_1D725BA9C();
  }

  else
  {
    swift_willThrow();
    v29 = a1;
  }

  return v15;
}

uint64_t sub_1D68E2E1C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v41 = a7;
  v42 = a8;
  v43 = a5;
  v39 = a6;
  v40 = a4;
  v37 = a2;
  v11 = type metadata accessor for SportsDataServiceURLRequest(0);
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) != 0 && (v45 = a1, v19 = a1, sub_1D5B49474(0, &qword_1EDF3C5D0), swift_dynamicCast()) && v44 == 18)
  {
    v36 = a9;
    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725C42C();
    __swift_project_value_buffer(v20, qword_1EDF17598);
    v21 = sub_1D725C3FC();
    v22 = sub_1D7262EDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = v21;
      v24 = v23;
      *v23 = 0;
      _os_log_impl(&dword_1D5B42000, v35, v22, "Refreshing access token for sports visualizations", v23, 2u);
      v25 = v24;
      v21 = v35;
      MEMORY[0x1DA6FD500](v25, -1, -1);
    }

    v26 = v37[12];
    v35 = v37[13];
    __swift_project_boxed_opaque_existential_1(v37 + 9, v26);
    v27 = v40;
    sub_1D725B43C();
    (*(v15 + 16))(&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v14);
    sub_1D68FF774(v27, &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDataServiceURLRequest);
    v28 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v29 = (v16 + *(v38 + 80) + v28) & ~*(v38 + 80);
    v30 = swift_allocObject();
    (*(v15 + 32))(v30 + v28, v18, v14);
    sub_1D68FFE38(&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for SportsDataServiceURLRequest);
    v31 = sub_1D725B92C();
    v42(0);
    type metadata accessor for SportsDataServiceRequestFetcher();
    v11 = sub_1D725BA9C();
  }

  else
  {
    swift_willThrow();
    v32 = a1;
  }

  return v11;
}

void sub_1D68E31E4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
  }

  else
  {
    sub_1D5E3E824(a1, a2);
    sub_1D6900A98();
    sub_1D725A69C();
    sub_1D5B952E4(a1, a2);
    if (!v4)
    {
      sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceRequest);
      sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
      v11 = a4 + *(v10 + 52);
      *v11 = v12;
      *(v11 + 16) = v13;
    }
  }
}

void sub_1D68E3334(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
  }

  else
  {
    sub_1D5E3E824(a1, a2);
    sub_1D6900768();
    sub_1D725A69C();
    sub_1D5B952E4(a1, a2);
    if (!v4)
    {
      sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceRequest);
      sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
      *(a4 + *(v10 + 52)) = v11;
    }
  }
}

void sub_1D68E3470(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v6 = 5;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for SportsSyncingConfigResource();
    sub_1D5E3E824(a1, a2);
    sub_1D6900474();
    sub_1D725A69C();
    sub_1D5B952E4(a1, a2);
    if (!v4)
    {
      sub_1D68FF774(a3, a4, type metadata accessor for SportsDataServiceRequest);
      sub_1D690042C(0);
      *(a4 + *(v10 + 52)) = v11;
    }
  }
}

uint64_t sub_1D68E3584@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t (*a4)(void)@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t (*a6)(void)@<X7>, uint64_t a7@<X8>, uint64_t (*a8)(char *, uint64_t))
{
  v24 = a3;
  v14 = a4(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  if (a2 >> 60 == 15)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v18 = 5;
    return swift_willThrow();
  }

  else
  {
    v23 = a6;
    v20 = sub_1D5E3E824(a1, a2);
    a5(v20);
    sub_1D725A69C();
    result = sub_1D5B952E4(a1, a2);
    if (!v8)
    {
      sub_1D68FF774(v24, a7, type metadata accessor for SportsDataServiceRequest);
      v21 = v23(0);
      return a8(v17, a7 + *(v21 + 52));
    }
  }

  return result;
}

uint64_t sub_1D68E3710@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v65 = a2;
  v6 = sub_1D72585BC();
  *&v71 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v68 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v74 = &v60[-v11];
  v12 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v60[-v18];
  v20 = sub_1D725891C();
  v66 = *(v20 - 8);
  v67 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  v25 = a1;
  v26 = sub_1D725C3FC();
  v27 = sub_1D7262EDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v63 = v6;
    v29 = v28;
    v62 = swift_slowAlloc();
    *&v72 = v62;
    *v29 = 136446466;
    v30 = [v25 resourceID];
    v31 = sub_1D726207C();
    v61 = v27;
    v32 = a4;
    v33 = v31;
    v64 = v15;
    v35 = v34;

    v36 = v33;
    a4 = v32;
    v37 = sub_1D5BC5100(v36, v35, &v72);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v38 = [v25 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v39 = sub_1D7258AAC();
    (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
    v40 = sub_1D725879C();
    v42 = v41;
    sub_1D6900328(v19, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v66 + 8))(v23, v67);
    v43 = sub_1D5BC5100(v40, v42, &v72);
    v15 = v64;

    *(v29 + 14) = v43;
    _os_log_impl(&dword_1D5B42000, v26, v61, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v29, 0x16u);
    v44 = v62;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v44, -1, -1);
    v45 = v29;
    v6 = v63;
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  v46 = v74;
  sub_1D68FF774(v70, v15, type metadata accessor for SportsDataServiceRequest);
  v47 = [v25 fileURL];
  v48 = v71;
  if (v47)
  {
    v49 = v68;
    v50 = v47;
    sub_1D72584EC();

    (*(v48 + 32))(v46, v49, v6);
    v51 = v69;
    v52 = sub_1D72585DC();
    if (!v51)
    {
      v54 = v52;
      v55 = v53;
      sub_1D6900A98();
      sub_1D725A69C();
      (*(v48 + 8))(v46, v6);
      sub_1D5B952F8(v54, v55);
      v71 = v72;
      v56 = v73;
      sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
      v58 = a4 + *(v57 + 52);
      *v58 = v71;
      *(v58 + 16) = v56;
      return sub_1D68FFE38(v15, a4, type metadata accessor for SportsDataServiceRequest);
    }

    (*(v48 + 8))(v46, v6);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v15, type metadata accessor for SportsDataServiceRequest);
}

uint64_t sub_1D68E3D98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v64 = a2;
  v6 = sub_1D72585BC();
  v71 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v67 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v59[-v11];
  v12 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v59[-v18];
  v20 = sub_1D725891C();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  v25 = a1;
  v26 = sub_1D725C3FC();
  v27 = sub_1D7262EDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v62 = v6;
    v29 = v28;
    v61 = swift_slowAlloc();
    v72 = v61;
    *v29 = 136446466;
    v30 = [v25 resourceID];
    v31 = sub_1D726207C();
    v60 = v27;
    v32 = a4;
    v33 = v31;
    v63 = v15;
    v35 = v34;

    v36 = v33;
    a4 = v32;
    v37 = sub_1D5BC5100(v36, v35, &v72);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v38 = [v25 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v39 = sub_1D7258AAC();
    (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
    v40 = sub_1D725879C();
    v42 = v41;
    sub_1D6900328(v19, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v65 + 8))(v23, v66);
    v43 = sub_1D5BC5100(v40, v42, &v72);
    v15 = v63;

    *(v29 + 14) = v43;
    _os_log_impl(&dword_1D5B42000, v26, v60, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v29, 0x16u);
    v44 = v61;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v44, -1, -1);
    v45 = v29;
    v6 = v62;
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  v46 = v70;
  sub_1D68FF774(v69, v15, type metadata accessor for SportsDataServiceRequest);
  v47 = [v25 fileURL];
  v48 = v71;
  if (v47)
  {
    v49 = v67;
    v50 = v47;
    sub_1D72584EC();

    (*(v48 + 32))(v46, v49, v6);
    v51 = v68;
    v52 = sub_1D72585DC();
    if (!v51)
    {
      v54 = v52;
      v55 = v53;
      sub_1D6900768();
      sub_1D725A69C();
      (*(v48 + 8))(v46, v6);
      sub_1D5B952F8(v54, v55);
      v56 = v72;
      sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
      *(a4 + *(v57 + 52)) = v56;
      return sub_1D68FFE38(v15, a4, type metadata accessor for SportsDataServiceRequest);
    }

    (*(v48 + 8))(v46, v6);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v15, type metadata accessor for SportsDataServiceRequest);
}

uint64_t sub_1D68E4408@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v64 = a2;
  v6 = sub_1D72585BC();
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v67 = &v59[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v71 = &v59[-v11];
  v12 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v59[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v59[-v18];
  v20 = sub_1D725891C();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v59[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725C42C();
  __swift_project_value_buffer(v24, qword_1EDF17598);
  v25 = a1;
  v26 = sub_1D725C3FC();
  v27 = sub_1D7262EDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v63 = a4;
    v29 = v28;
    v61 = swift_slowAlloc();
    v72 = v61;
    *v29 = 136446466;
    v30 = [v25 resourceID];
    v31 = sub_1D726207C();
    v60 = v27;
    v32 = v15;
    v33 = v31;
    v62 = v6;
    v35 = v34;

    v36 = v33;
    v15 = v32;
    v37 = sub_1D5BC5100(v36, v35, &v72);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2082;
    v38 = [v25 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v39 = sub_1D7258AAC();
    (*(*(v39 - 8) + 56))(v19, 0, 1, v39);
    v40 = sub_1D725879C();
    v42 = v41;
    sub_1D6900328(v19, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v65 + 8))(v23, v66);
    v43 = sub_1D5BC5100(v40, v42, &v72);
    v6 = v62;

    *(v29 + 14) = v43;
    _os_log_impl(&dword_1D5B42000, v26, v60, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v29, 0x16u);
    v44 = v61;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v44, -1, -1);
    v45 = v29;
    a4 = v63;
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  v46 = v70;
  sub_1D68FF774(v69, v15, type metadata accessor for SportsDataServiceRequest);
  v47 = [v25 fileURL];
  v48 = v71;
  if (v47)
  {
    v49 = v67;
    v50 = v47;
    sub_1D72584EC();

    (*(v46 + 32))(v48, v49, v6);
    v51 = v68;
    v52 = sub_1D72585DC();
    if (!v51)
    {
      v54 = v52;
      v55 = v53;
      type metadata accessor for SportsSyncingConfigResource();
      sub_1D6900474();
      sub_1D725A69C();
      (*(v46 + 8))(v71, v6);
      sub_1D5B952F8(v54, v55);
      v56 = v72;
      sub_1D690042C(0);
      *(a4 + *(v57 + 52)) = v56;
      return sub_1D68FFE38(v15, a4, type metadata accessor for SportsDataServiceRequest);
    }

    (*(v46 + 8))(v48, v6);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v15, type metadata accessor for SportsDataServiceRequest);
}

uint64_t sub_1D68E4B2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, __n128)@<X3>, void (*a5)(void)@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(char *, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v71 = a6;
  v72 = a7;
  v75 = a5;
  v80 = a3;
  v70 = a8;
  v11 = sub_1D72585BC();
  v83 = *(v11 - 8);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v81 = &v67 - v17;
  v73 = a4(0, v16);
  MEMORY[0x1EEE9AC00](v73, v18);
  v20 = &v67 - v19;
  v21 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v82 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FD964(0, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v67 - v26;
  v28 = sub_1D725891C();
  v76 = *(v28 - 8);
  v77 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725C42C();
  __swift_project_value_buffer(v32, qword_1EDF17598);
  v33 = a1;
  v34 = sub_1D725C3FC();
  v35 = sub_1D7262EDC();

  v36 = os_log_type_enabled(v34, v35);
  v74 = v20;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v69 = a2;
    v38 = v37;
    v68 = swift_slowAlloc();
    v85 = v68;
    *v38 = 136446466;
    v39 = [v33 resourceID];
    v40 = sub_1D726207C();
    v42 = v41;

    v43 = sub_1D5BC5100(v40, v42, &v85);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2082;
    v44 = [v33 fetchDate];
    sub_1D72588BC();

    sub_1D7258A4C();
    v45 = sub_1D7258AAC();
    (*(*(v45 - 8) + 56))(v27, 0, 1, v45);
    v46 = sub_1D725879C();
    v48 = v47;
    sub_1D6900328(v27, &qword_1EDF18A48, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D68FD964);
    (*(v76 + 8))(v31, v77);
    v49 = sub_1D5BC5100(v46, v48, &v85);

    *(v38 + 14) = v49;
    _os_log_impl(&dword_1D5B42000, v34, v35, "Sports data service resolved resource %{public}s with fetch date=%{public}s", v38, 0x16u);
    v50 = v68;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v50, -1, -1);
    MEMORY[0x1DA6FD500](v38, -1, -1);
  }

  v51 = v84;
  v52 = v82;
  sub_1D68FF774(v80, v82, type metadata accessor for SportsDataServiceRequest);
  v53 = [v33 fileURL];
  v54 = v83;
  v55 = v81;
  if (v53)
  {
    v56 = v78;
    v57 = v53;
    sub_1D72584EC();

    (*(v54 + 32))(v55, v56, v51);
    v58 = v79;
    v59 = sub_1D72585DC();
    if (!v58)
    {
      v61 = v59;
      v62 = v60;
      v75();
      v63 = v74;
      sub_1D725A69C();
      (*(v54 + 8))(v55, v51);
      sub_1D5B952F8(v61, v62);
      v64 = v70;
      sub_1D68FFE38(v52, v70, type metadata accessor for SportsDataServiceRequest);
      v65 = v71(0);
      return v72(v63, v64 + *(v65 + 52));
    }

    (*(v54 + 8))(v55, v51);
  }

  else
  {
    sub_1D68FEC44();
    swift_allocError();
    swift_willThrow();
  }

  return sub_1D68FF714(v52, type metadata accessor for SportsDataServiceRequest);
}

uint64_t SportsDataServiceType.fetchDataVisualizations(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = v3;
  v6 = 0;
  return (*(a3 + 88))(v7, &v6, a2);
}

uint64_t SportsDataServiceType.fetchDataVisualizations(requests:context:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  sub_1D6901918(0, &qword_1EDF179F0, &type metadata for SportsDataVisualizationResult, MEMORY[0x1E69D6B18]);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = v4;
  *(v9 + 48) = v8;

  swift_unknownObjectRetain();
  return sub_1D725BA6C();
}

uint64_t sub_1D68E5394(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 96) = a4;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E53C0, 0, 0);
}

uint64_t sub_1D68E53C0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v0 + 64) = v3;
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D68E54C8;
  v5 = *(v0 + 32);

  return MEMORY[0x1EEE451E8](v5, &unk_1D7303780, v3, &type metadata for SportsDataVisualizationRequest, &type metadata for SportsDataVisualizationResult);
}

uint64_t sub_1D68E54C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v4 = sub_1D68E582C;
  }

  else
  {

    v4 = sub_1D68E55E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D68E55E4()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v14 = v0[3];

    v0[2] = v4;
    sub_1D6901918(0, &qword_1EDF1B050, &type metadata for SportsDataVisualization, MEMORY[0x1E69E62F8]);
    sub_1D68FEDDC(&qword_1EDF04D48, &qword_1EDF1B050, &type metadata for SportsDataVisualization);
    v15 = sub_1D72623CC();

    *v14 = v15;
    v16 = v0[1];

    v16();
    return;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v5 = *(v1 + 32 + 8 * v3);
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_25;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_1D698BA80(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_28;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_26;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      v0 = v17;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1D68E582C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E5890(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64680;

  return sub_1D68E5394(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1D68E5A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 104) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a3;
  v7 = *(a2 + 16);
  *(v6 + 48) = *a2;
  *(v6 + 64) = v7;
  *(v6 + 105) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D68E5A6C, 0, 0);
}

uint64_t sub_1D68E5A6C()
{
  v12 = v0;
  v1 = *(v0 + 105);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  v9[0] = *(v0 + 48);
  v9[1] = v5;
  v10 = v1;
  v11 = v4;
  *(v0 + 80) = (*(v3 + 88))(v9, &v11, v2);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_1D68E5B48;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v7);
}

uint64_t sub_1D68E5B48()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D68E5C84, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D68E5C84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E5CE8@<X0>(uint64_t *a1@<X8>)
{
  result = SportsDataVisualization.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D68E5D2C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);

  return swift_deallocClassInstance();
}

uint64_t sub_1D68E5D9C()
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
  sub_1D725BA9C();

  v1 = sub_1D725B92C();
  sub_1D725BA8C();

  v2 = sub_1D725B92C();
  v3 = sub_1D725BACC();

  return v3;
}

uint64_t sub_1D68E5FD0()
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
  sub_1D725BA9C();

  v1 = sub_1D725B92C();
  sub_1D725BA8C();

  v2 = sub_1D725B92C();
  v3 = sub_1D725BACC();

  return v3;
}

uint64_t sub_1D68E62CC()
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D690042C(0);
  sub_1D725BA9C();

  v1 = sub_1D725B92C();
  sub_1D5B49474(0, &qword_1EC88DFB8);
  sub_1D725BA8C();

  v2 = sub_1D725B92C();
  v3 = sub_1D725BACC();

  return v3;
}

uint64_t sub_1D68E6428(void *a1)
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  v3 = [a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D5B7E2C0();
  *(v2 + 64) = v7;
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_1D7262EDC();
  sub_1D725C30C();

  v8 = [a1 identifier];
  sub_1D726207C();

  sub_1D725B85C();

  if (v21)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    v12 = [a1 identifier];
    v13 = sub_1D726207C();
    v15 = v14;

    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = v7;
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    sub_1D7262EDC();
    sub_1D725C30C();

    sub_1D6901918(0, &qword_1EC88DF90, &type metadata for SportsEventRoster, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9, v10);
    type metadata accessor for SportsDataServiceBatchResourceRequest(0);
    sub_1D725BDCC();
    v17 = sub_1D725B92C();
    sub_1D68FE7F8();
    sub_1D725BA9C();

    *(swift_allocObject() + 16) = a1;
    swift_unknownObjectRetain();
    v18 = sub_1D725B92C();
    sub_1D725BAAC();

    *(swift_allocObject() + 16) = a1;
    swift_unknownObjectRetain();
    v19 = sub_1D725B92C();
    v20 = sub_1D725BACC();

    return v20;
  }
}

uint64_t sub_1D68E686C(__int128 *a1, char *a2)
{
  v3 = a1[1];
  v25 = *a1;
  v26 = v3;
  v27 = *(a1 + 32);
  v4 = *a2;
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1D7263F9C();
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D5B7E2C0();
  *(v5 + 64) = v7;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D7262EDC();
  sub_1D725C30C();

  v22 = v25;
  v23 = v26;
  v24 = v27;
  sub_1D5F82F38(&v25, &v19);
  sub_1D725B85C();
  sub_1D5F82E88(v22, *(&v22 + 1), v23, *(&v23 + 1), v24);
  v8 = v21;
  if (v21)
  {
    sub_1D7262E9C();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7273AE0;
    v19 = 0;
    v20 = 0xE000000000000000;
    v22 = v25;
    v23 = v26;
    v24 = v27;
    sub_1D7263F9C();
    v10 = v19;
    v11 = v20;
    *(v9 + 56) = v6;
    *(v9 + 64) = v7;
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_1D725C30C();

    *&v22 = v8;
    sub_1D6901918(0, &qword_1EDF179F0, &type metadata for SportsDataVisualizationResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    sub_1D6901918(0, &qword_1EDF179F0, &type metadata for SportsDataVisualizationResult, MEMORY[0x1E69D6B18]);
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    v14 = v26;
    *(v13 + 24) = v25;
    *(v13 + 40) = v14;
    *(v13 + 56) = v27;
    *(v13 + 57) = v4;
    sub_1D5F82F38(&v25, &v22);

    sub_1D725BA6C();
    v15 = swift_allocObject();
    v16 = v26;
    *(v15 + 16) = v25;
    *(v15 + 32) = v16;
    *(v15 + 48) = v27;
    sub_1D5F82F38(&v25, &v22);
    v17 = sub_1D725B92C();
    v18 = sub_1D725BAAC();

    return v18;
  }
}

uint64_t sub_1D68E6C7C(uint64_t a1, uint64_t a2)
{
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_1D725BDCC();
  sub_1D5C41360(a2, v8);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1D5F82FB8(v8, v10 + v9);
  v11 = sub_1D725B92C();
  type metadata accessor for SportsDataServiceRequest(0);
  v12 = sub_1D725BA8C();

  return v12;
}

uint64_t sub_1D68E6E4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D6900A04(0, &qword_1EDF0BCE8, sub_1D6900A98, sub_1D6900AEC);
  v5 = (a1 + *(v4 + 52));
  v6 = v5[1];
  v7 = v5[2];
  *a2 = *v5;
  a2[1] = v6;
  a2[2] = v7;
}

uint64_t sub_1D68E6F58(uint64_t a1, unsigned __int8 a2)
{
  v4 = MEMORY[0x1E69D63E8];
  v5 = MEMORY[0x1E69E6720];
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v10 = sub_1D725A82C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1D5F7F408(a2, v9);
  sub_1D6900328(v9, &unk_1EDF3BDC0, v4, v5, sub_1D68FD964);
  return v11;
}

uint64_t sub_1D68E70B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D6900A04(0, qword_1EDF0BCF0, sub_1D6900768, sub_1D69007BC);
  *a2 = *(a1 + *(v4 + 52));
}

uint64_t sub_1D68E71C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D690042C(0);
  v5 = *(a1 + *(v4 + 52));
  a2[3] = type metadata accessor for SportsSyncingConfigResource();
  a2[4] = &protocol witness table for SportsSyncingConfigResource;
  *a2 = v5;
}

uint64_t sub_1D68E7234()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v1 = sub_1D726497C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D5B7E2C0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_1D725C30C();
}

uint64_t sub_1D68E73A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for SportsRoster();
  v109 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v98[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v108 = &v98[-v15];
  *&v18 = MEMORY[0x1EEE9AC00](v16, v17).n128_u64[0];
  v110 = &v98[-v19];
  v20 = [a3 rosterResourceIDs];
  if (!v20)
  {
    sub_1D5F82C30();
    swift_allocError();
    *v97 = 16;
    return swift_willThrow();
  }

  v102 = v12;
  v103 = a2;
  v104 = a3;
  v105 = a4;
  v106 = v4;
  v21 = v20;
  v22 = sub_1D7261D3C();

  v23 = 1 << *(v22 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v22 + 64);
  v26 = (v23 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v27 = 0;
  v111 = MEMORY[0x1E69E7CC8];
  while (v25)
  {
    v28 = v25;
LABEL_11:
    v25 = (v28 - 1) & v28;
    if (*(v22 + 16))
    {
      v30 = (*(v22 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v31 = *v30;
      v32 = v30[1];

      v33 = sub_1D5B69D90(v31, v32);
      if (v34)
      {
        v100 = a1;
        v35 = (*(v22 + 56) + 16 * v33);
        v36 = v35[1];
        v107 = *v35;

        v37 = v111;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v37;
        v101 = v36;
        v39 = sub_1D5B69D90(v107, v36);
        v40 = *(v37 + 16);
        v41 = (v38 & 1) == 0;
        v42 = v40 + v41;
        if (__OFADD__(v40, v41))
        {
          goto LABEL_55;
        }

        if (*(v37 + 24) >= v42)
        {
          a1 = v100;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v38 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v111 = v39;
            isUniquelyReferenced_nonNull_native = v38;
            sub_1D6D7DE64();
            v39 = v111;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_23;
            }
          }

LABEL_21:
          v49 = v39;

          v111 = v112;
          v50 = (*(v112 + 56) + 16 * v49);
          *v50 = v31;
          v50[1] = v32;
        }

        else
        {
          v43 = v38;
          sub_1D6D666FC(v42, isUniquelyReferenced_nonNull_native);
          v44 = sub_1D5B69D90(v107, v101);
          v46 = v45 & 1;
          v47 = v43;
          v48 = v43 & 1;
          a1 = v100;
          if (v48 != v46)
          {
            goto LABEL_59;
          }

          v39 = v44;
          if (v47)
          {
            goto LABEL_21;
          }

LABEL_23:
          v51 = v112;
          *(v112 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v52 = (v51[6] + 16 * v39);
          v53 = v101;
          *v52 = v107;
          v52[1] = v53;
          v54 = (v51[7] + 16 * v39);
          *v54 = v31;
          v54[1] = v32;

          v55 = v51[2];
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_56;
          }

          v111 = v51;
          v51[2] = v57;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v29 >= v26)
    {
      break;
    }

    v28 = *(v22 + 64 + 8 * v29);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_11;
    }
  }

  swift_bridgeObjectRelease_n();
  sub_1D68FE7F8();
  v59 = *(a1 + *(v58 + 52));
  v60 = 1 << *(v59 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v59 + 64);
  v63 = (v60 + 63) >> 6;

  v64 = 0;
  v107 = MEMORY[0x1E69E7CC8];
  while (v62)
  {
    v65 = v62;
LABEL_35:
    v62 = (v65 - 1) & v65;
    if (*(v59 + 16))
    {
      v67 = (*(v59 + 48) + ((v64 << 10) | (16 * __clz(__rbit64(v65)))));
      v68 = *v67;
      v69 = v67[1];

      v70 = sub_1D5B69D90(v68, v69);
      if ((v71 & 1) == 0)
      {

        continue;
      }

      v72 = v108;
      v73 = *(v109 + 72);
      sub_1D68FF774(*(v59 + 56) + v73 * v70, v108, type metadata accessor for SportsRoster);
      sub_1D68FFE38(v72, v110, type metadata accessor for SportsRoster);
      if (!v111[2])
      {
        goto LABEL_39;
      }

      v74 = sub_1D5B69D90(v68, v69);
      if ((v75 & 1) == 0)
      {
        goto LABEL_39;
      }

      v76 = (v111[7] + 16 * v74);
      v77 = v76[1];
      v101 = *v76;
      sub_1D68FF774(v110, v102, type metadata accessor for SportsRoster);

      v78 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v78;
      v100 = v77;
      v80 = sub_1D5B69D90(v101, v77);
      v81 = *(v78 + 16);
      v82 = (v79 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_57;
      }

      if (*(v78 + 24) >= v83)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v79)
          {
            goto LABEL_47;
          }
        }

        else
        {
          LODWORD(v107) = v79;
          sub_1D6D857C4();
          if (v107)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        LODWORD(v107) = v79;
        sub_1D6D73C08(v83, isUniquelyReferenced_nonNull_native);
        v84 = sub_1D5B69D90(v101, v100);
        if ((v107 & 1) != (v85 & 1))
        {
          goto LABEL_59;
        }

        v80 = v84;
        if (v107)
        {
LABEL_47:

          v107 = v112;
          sub_1D68FEE9C(v102, *(v112 + 56) + v80 * v73, type metadata accessor for SportsRoster);
LABEL_39:

          sub_1D68FF714(v110, type metadata accessor for SportsRoster);
          continue;
        }
      }

      v86 = v112;
      *(v112 + 8 * (v80 >> 6) + 64) |= 1 << v80;
      v87 = (v86[6] + 16 * v80);
      v88 = v100;
      *v87 = v101;
      v87[1] = v88;
      sub_1D68FFE38(v102, v86[7] + v80 * v73, type metadata accessor for SportsRoster);

      sub_1D68FF714(v110, type metadata accessor for SportsRoster);
      v89 = v86[2];
      v56 = __OFADD__(v89, 1);
      v90 = v89 + 1;
      if (v56)
      {
        goto LABEL_58;
      }

      v107 = v86;
      v86[2] = v90;
    }
  }

  while (1)
  {
    v66 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v66 >= v63)
    {

      v91 = [v104 identifier];
      v92 = sub_1D726207C();
      v94 = v93;

      v95 = v107;
      v114 = v107;
      v112 = v92;
      v113 = v94;

      result = sub_1D725B87C();
      *v105 = v95;
      return result;
    }

    v65 = *(v59 + 64 + 8 * v66);
    ++v64;
    if (v65)
    {
      v64 = v66;
      goto LABEL_35;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D68E7B30(void *a1, void *a2)
{
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v4 = sub_1D725C42C();
  __swift_project_value_buffer(v4, qword_1EDF17598);
  swift_unknownObjectRetain();
  v5 = a1;
  oslog = sub_1D725C3FC();
  v6 = sub_1D7262EBC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446466;
    v9 = [a2 UMCCanonicalID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D726207C();
      v13 = v12;
    }

    else
    {
      v13 = 0xEE00444920434D55;
      v11 = 0x206E776F6E6B6E75;
    }

    v14 = sub_1D5BC5100(v11, v13, &v19);

    *(v7 + 4) = v14;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v15 = sub_1D726497C();
    v17 = sub_1D5BC5100(v15, v16, &v19);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_1D5B42000, oslog, v6, "Sports data service failed to fetch roster resource for event=%{public}s; error=%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v8, -1, -1);
    MEMORY[0x1DA6FD500](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D68E7D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 49) = a4;
  v7 = swift_task_alloc();
  *(v4 + 56) = v7;
  *v7 = v4;
  v7[1] = sub_1D68E7E38;

  return sub_1D68E7F84(a1, v4 + 16, (v4 + 49));
}

uint64_t sub_1D68E7E38()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D68E7F6C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D68E7F84(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2952) = v3;
  *(v4 + 2904) = a2;
  *(v4 + 2856) = a1;
  *(v4 + 3000) = type metadata accessor for SportsDataConfiguration();
  *(v4 + 3048) = swift_task_alloc();
  *(v4 + 3096) = swift_task_alloc();
  sub_1D68FC384();
  *(v4 + 3144) = v7;
  *(v4 + 3192) = swift_task_alloc();
  *(v4 + 3200) = swift_task_alloc();
  v8 = *(a2 + 16);
  *(v4 + 2632) = *a2;
  *(v4 + 2648) = v8;
  *(v4 + 2664) = *(a2 + 32);
  *(v4 + 2106) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1D68E8094, 0, 0);
}

uint64_t sub_1D68E8094()
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2952);
  v2 = *(v0 + 2904);
  *(v0 + 3208) = qword_1EDFFC538;
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  *(v0 + 3216) = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v0 + 2792) = 0;
  *(v0 + 2800) = 0xE000000000000000;
  v6 = *v2;
  v5 = v2[1];
  *(v0 + 2584) = *(v2 + 32);
  *(v0 + 2552) = v6;
  *(v0 + 2568) = v5;
  sub_1D7263F9C();
  v7 = *(v0 + 2792);
  v8 = *(v0 + 2800);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v0 + 3224) = v9;
  *(v4 + 64) = v9;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  sub_1D7262EDC();
  sub_1D725C30C();

  v10 = swift_allocObject();
  *(v0 + 3232) = v10;
  *(v10 + 16) = v1;
  v11 = *(v0 + 2648);
  *(v10 + 24) = *(v0 + 2632);
  *(v10 + 40) = v11;
  *(v10 + 56) = *(v0 + 2664);

  sub_1D5F82F38(v0 + 2632, v0 + 2472);
  swift_asyncLet_begin();
  v12 = swift_allocObject();
  *(v0 + 3240) = v12;
  *(v12 + 16) = v1;
  v13 = *(v0 + 2648);
  *(v12 + 24) = *(v0 + 2632);
  *(v12 + 40) = v13;
  *(v12 + 56) = *(v0 + 2664);

  sub_1D5F82F38(v0 + 2632, v0 + 2392);
  swift_asyncLet_begin();

  swift_asyncLet_begin();
  v14 = *(v0 + 3200);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v14, sub_1D68E8384, v0 + 2432);
}

uint64_t sub_1D68E8384()
{
  v1[406] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D68E8E80, 0, 0);
  }

  else
  {
    sub_1D68FF774(v1[400], v1[399], sub_1D68FC384);

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 347, sub_1D68E8448, v1 + 352);
  }
}

uint64_t sub_1D68E8448()
{
  *(v1 + 3256) = v0;
  if (v0)
  {
    v2 = sub_1D68E8FF8;
  }

  else
  {
    v2 = sub_1D68E847C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E847C()
{
  v24 = v0;
  v1 = *(v0 + 3224);
  v2 = *(v0 + 3192);
  v3 = *(v0 + 3144);
  *(v0 + 3264) = *(v0 + 2776);
  *(v0 + 3272) = *(v0 + 2784);
  v4 = *(v0 + 2648);
  v22[0] = *(v0 + 2632);
  v22[1] = v4;
  v23 = *(v0 + 2664);

  sub_1D68FCAB8(v22, v2);
  *(v0 + 3280) = v5;
  sub_1D6C22F94(v5, (v0 + 1976));
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7283D60;
  v7 = *(v0 + 1976);
  v8 = MEMORY[0x1E69E6530];
  v9 = MEMORY[0x1E69E65A8];
  *(v6 + 56) = MEMORY[0x1E69E6530];
  *(v6 + 64) = v9;
  *(v6 + 32) = v7;
  v10 = *(v0 + 1984);
  *(v6 + 96) = v8;
  *(v6 + 104) = v9;
  *(v6 + 72) = v10;
  v11 = *(v0 + 1992);
  *(v6 + 136) = v8;
  *(v6 + 144) = v9;
  *(v6 + 112) = v11;
  v12 = *(v0 + 2000);
  *(v6 + 176) = v8;
  *(v6 + 184) = v9;
  *(v6 + 152) = v12;
  v13 = *(v0 + 2008);
  *(v6 + 216) = v8;
  *(v6 + 224) = v9;
  *(v6 + 192) = v13;
  v14 = *(v0 + 2024);
  *(v6 + 256) = v8;
  *(v6 + 264) = v9;
  *(v6 + 232) = v14;
  v15 = *(v0 + 2016);
  *(v6 + 296) = v8;
  *(v6 + 304) = v9;
  *(v6 + 272) = v15;
  v16 = *(*(v2 + *(v3 + 44)) + 16);
  *(v6 + 336) = v8;
  *(v6 + 344) = v9;
  *(v6 + 312) = v16;
  *(v0 + 2712) = 0;
  *(v0 + 2720) = 0xE000000000000000;
  v17 = *(v0 + 2648);
  *(v0 + 2072) = *(v0 + 2632);
  *(v0 + 2088) = v17;
  *(v0 + 2104) = *(v0 + 2664);
  sub_1D7263F9C();
  v18 = *(v0 + 2712);
  v19 = *(v0 + 2720);
  *(v6 + 376) = MEMORY[0x1E69E6158];
  *(v6 + 384) = v1;
  *(v6 + 352) = v18;
  *(v6 + 360) = v19;
  sub_1D7262EDC();
  sub_1D725C30C();

  v20 = *(v0 + 3096);

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v20, sub_1D68E8684, v0 + 3104);
}

uint64_t sub_1D68E8684()
{
  *(v1 + 3288) = v0;
  if (v0)
  {

    v2 = sub_1D68E91D0;
  }

  else
  {
    v2 = sub_1D68E871C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E871C()
{
  v1 = v0[410];
  v2 = v0[381];
  v3 = v0[375];
  sub_1D68FF774(v0[387], v2, type metadata accessor for SportsDataConfiguration);
  v4 = *(v2 + *(v3 + 20));
  v5 = sub_1D68FCF04(v1, v4, MEMORY[0x1E69E7CD0]);
  v0[412] = v5;

  v0[413] = sub_1D68FCF04(v5, v4, *(v2 + *(v3 + 24)));
  v6 = swift_task_alloc();
  v0[414] = v6;
  *v6 = v0;
  v6[1] = sub_1D68E8830;

  return sub_1D68EA428(v5);
}

uint64_t sub_1D68E8830(uint64_t a1)
{
  *(*v1 + 3320) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D68E8950, 0, 0);
}

uint64_t sub_1D68E8950()
{
  v1 = *(v0 + 3320);
  v2 = *(v0 + 3224);
  v3 = *(v0 + 2106);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  v5 = *(v1 + 16);
  v6 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = MEMORY[0x1E69E6530];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  *(v0 + 2728) = 0;
  *(v0 + 2736) = 0xE000000000000000;
  *(v0 + 2184) = *(v0 + 2664);
  v7 = *(v0 + 2648);
  *(v0 + 2152) = *(v0 + 2632);
  *(v0 + 2168) = v7;
  sub_1D7263F9C();
  v8 = *(v0 + 2728);
  v9 = *(v0 + 2736);
  *(v4 + 96) = MEMORY[0x1E69E6158];
  *(v4 + 104) = v2;
  *(v4 + 72) = v8;
  *(v4 + 80) = v9;
  sub_1D7262EDC();
  sub_1D725C30C();

  *(v0 + 2105) = v3;
  v10 = *(v0 + 2648);
  *(v0 + 2232) = *(v0 + 2632);
  *(v0 + 2248) = v10;
  *(v0 + 2264) = *(v0 + 2664);
  v11 = swift_task_alloc();
  *(v0 + 3328) = v11;
  *v11 = v0;
  v11[1] = sub_1D68E8B1C;
  v12 = *(v0 + 3320);
  v13 = *(v0 + 3304);
  v14 = *(v0 + 3272);
  v15 = *(v0 + 3264);
  v16 = *(v0 + 3192);
  v17 = *(v0 + 3048);
  v18 = *(v0 + 2856);

  return sub_1D68EACE8(v18, (v0 + 2105), v13, v15, v14, v16, v17, v12);
}

uint64_t sub_1D68E8B1C()
{
  *(*v1 + 3336) = v0;

  if (v0)
  {
    v2 = sub_1D68E93A8;
  }

  else
  {
    v2 = sub_1D68E8C90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E8C90()
{
  v1 = v0[399];
  sub_1D68FF714(v0[381], type metadata accessor for SportsDataConfiguration);
  sub_1D68FF714(v1, sub_1D68FC384);
  v2 = v0[387];

  return MEMORY[0x1EEE6DEB0](v0 + 162, v2, sub_1D68E8D30, v0 + 264);
}

uint64_t sub_1D68E8DC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E8F34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E8FF8()
{
  sub_1D68FF714(*(v0 + 3192), sub_1D68FC384);
  v1 = *(v0 + 3096);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v1, sub_1D68E9078, v0 + 2864);
}

uint64_t sub_1D68E910C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E91D0()
{
  sub_1D68FF714(*(v0 + 3192), sub_1D68FC384);
  v1 = *(v0 + 3096);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v1, sub_1D68E9250, v0 + 3152);
}

uint64_t sub_1D68E92E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E93A8()
{
  v1 = *(v0 + 3336);
  v2 = *(v0 + 3224);
  v12 = *(v0 + 3048);
  v13 = *(v0 + 3192);
  sub_1D7262EBC();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7270C10;
  *(v0 + 2744) = 0;
  *(v0 + 2752) = 0xE000000000000000;
  v4 = *(v0 + 2648);
  *(v0 + 2312) = *(v0 + 2632);
  *(v0 + 2328) = v4;
  *(v0 + 2344) = *(v0 + 2664);
  sub_1D7263F9C();
  v5 = *(v0 + 2744);
  v6 = *(v0 + 2752);
  v7 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = v2;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v0 + 2760) = 0;
  *(v0 + 2768) = 0xE000000000000000;
  *(v0 + 2808) = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v8 = *(v0 + 2760);
  v9 = *(v0 + 2768);
  *(v3 + 96) = v7;
  *(v3 + 104) = v2;
  *(v3 + 72) = v8;
  *(v3 + 80) = v9;
  sub_1D725C30C();

  swift_willThrow();
  sub_1D68FF714(v12, type metadata accessor for SportsDataConfiguration);
  sub_1D68FF714(v13, sub_1D68FC384);
  v10 = *(v0 + 3096);

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v10, sub_1D68E9590, v0 + 2352);
}

uint64_t sub_1D68E9624()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68E96E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v11 = *a1;
  v4 = v11;
  v5 = *(a2 + 16);
  v8 = *a2;
  v9 = v5;
  v10 = *(a2 + 32);
  sub_1D5F82F38(a2, v7);

  sub_1D725B87C();
  *a3 = v4;
}

uint64_t sub_1D68E9768(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_10:
    v7 = sub_1D725B92C();
    sub_1D68FE764();
    sub_1D725BEFC();

    v8 = sub_1D725B92C();
    sub_1D5B49A6C(0, &qword_1EDF05758, &type metadata for SportsEventRoster, MEMORY[0x1E69E6168], MEMORY[0x1E69E5E28]);
    v9 = sub_1D725BA8C();

    return v9;
  }

  result = sub_1D7263ECC();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      ++v4;
      sub_1D68E6428(v5);
      *(swift_allocObject() + 16) = v5;
      swift_unknownObjectRetain();
      v6 = sub_1D725B92C();
      sub_1D68FE764();
      sub_1D725BA8C();
      swift_unknownObjectRelease();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v2 != v4);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D68E99B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D68FE46C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D68E99E8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E9A08, 0, 0);
}

uint64_t sub_1D68E9A08()
{
  v19 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[26];
  v4 = v1[27];
  __swift_project_boxed_opaque_existential_1(v1 + 23, v3);
  v5 = *(v2 + 16);
  if (v5)
  {
    v16 = v4;
    v6 = v0[3];
    v7 = sub_1D5B9A6D8(v5, 0);
    v17 = sub_1D5B9A6EC(v18, v7 + 4, v5, v6);
    v8 = v18[0];
    v9 = v18[1];
    v10 = v18[2];
    v11 = v18[3];
    v12 = v18[4];

    v13 = sub_1D5BA45DC(v8, v9, v10, v11, v12);
    if (v17 != v5)
    {
      __break(1u);
      return MEMORY[0x1EEE44EE0](v13);
    }

    v4 = v16;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v0[5] = (*(v4 + 16))(v7, v3, v4);

  v14 = swift_task_alloc();
  v0[6] = v14;
  *v14 = v0;
  v14[1] = sub_1D68E9B90;
  v13 = (v0 + 2);

  return MEMORY[0x1EEE44EE0](v13);
}

uint64_t sub_1D68E9B90()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D68E9CC4;
  }

  else
  {

    v2 = sub_1D68E9CAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68E9CC4()
{
  v1 = *(v0 + 56);

  v2 = sub_1D605E094(MEMORY[0x1E69E7CC0]);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D68E9D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E9D68, 0, 0);
}

uint64_t sub_1D68E9D68()
{
  *(swift_task_alloc() + 16) = *(v0 + 24);
  type metadata accessor for SportsDataServiceBatchRequest(0);
  sub_1D725BDCC();

  v1 = sub_1D725B92C();
  sub_1D68FC384();
  type metadata accessor for SportsDataService();
  *(v0 + 40) = sub_1D725BA9C();

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1D5FE1C4C;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE44EE0](v3);
}

uint64_t sub_1D68E9EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68E9ED8, 0, 0);
}

uint64_t sub_1D68E9ED8()
{
  v8 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v2;
  v7 = *(v1 + 32);
  v0[5] = sub_1D68E9F94(v6);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D5FE0118;
  v4 = v0[2];

  return MEMORY[0x1EEE44EE0](v4);
}

uint64_t sub_1D68E9F94(__int128 *a1)
{
  v1 = a1[1];
  v23 = *a1;
  v24 = v1;
  v25 = *(a1 + 32);
  if (v25)
  {
    if (v25 == 1 && *(v23 + 33) == 1)
    {
      goto LABEL_4;
    }
  }

  else if (BYTE9(v23))
  {
LABEL_4:
    type metadata accessor for SportsFeaturedEventsResource();
    sub_1D725BDCC();
    v2 = swift_allocObject();
    v3 = v24;
    *(v2 + 16) = v23;
    *(v2 + 32) = v3;
    *(v2 + 48) = v25;
    sub_1D5F82F38(&v23, v21);
    v4 = sub_1D725B92C();
    sub_1D68FF448();
    sub_1D725BA9C();

    v5 = swift_allocObject();
    v6 = v24;
    *(v5 + 16) = v23;
    *(v5 + 32) = v6;
    *(v5 + 48) = v25;
    sub_1D5F82F38(&v23, v21);
    v7 = sub_1D725B92C();
    sub_1D725BAAC();

    v8 = sub_1D725B92C();
    v9 = sub_1D725BB6C();

    return v9;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v11 = sub_1D725C42C();
  __swift_project_value_buffer(v11, qword_1EDF17598);
  sub_1D5F82F38(&v23, v21);
  v12 = sub_1D725C3FC();
  v13 = sub_1D7262EDC();
  sub_1D68FF3BC(&v23);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v21[0] = v23;
    v21[1] = v24;
    v22 = v25;
    SportsDataVisualizationRequest.tagIds.getter();
    v16 = MEMORY[0x1DA6F9D20]();
    v18 = v17;

    v19 = sub_1D5BC5100(v16, v18, &v20);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D5B42000, v12, v13, "Skipping featured events fetch for request with tagIds=%{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA6FD500](v15, -1, -1);
    MEMORY[0x1DA6FD500](v14, -1, -1);
  }

  *&v21[0] = MEMORY[0x1E69E7CC0];
  *(&v21[0] + 1) = MEMORY[0x1E69E7CD0];
  sub_1D6901918(0, &qword_1EDF17A08, &type metadata for SportsFeaturedEventsResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D68EA350(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D68EA370, 0, 0);
}

uint64_t sub_1D68EA370()
{
  __swift_project_boxed_opaque_existential_1((v0[3] + 136), *(v0[3] + 160));
  v0[4] = sub_1D6917FE8();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1D5FE2178;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1D68EA428(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  sub_1D68FECB4(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = *(type metadata accessor for SportsEventStatusResponse() - 8);
  v2[14] = swift_task_alloc();
  sub_1D68FED64();
  v2[15] = v4;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D68EA598, 0, 0);
}

uint64_t sub_1D68EA598()
{
  v0[5] = sub_1D68FDE64(v0[7]);
  v1 = MEMORY[0x1E69E6158];
  sub_1D6901918(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D68FEDDC(&qword_1EDF3C838, &qword_1EDF43BA0, v1);
  v2 = sub_1D72623CC();

  if (*(v2 + 16))
  {
    v3 = v0[8];
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    *(v4 + 32) = xmmword_1D7303640;
    type metadata accessor for SportsDataServiceBatchRequest(0);
    sub_1D725BDCC();

    v5 = sub_1D725B92C();
    v0[17] = sub_1D725BA9C();

    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1D68EA810;
    v7 = v0[16];

    return MEMORY[0x1EEE44EE0](v7);
  }

  else
  {

    v8 = sub_1D605DE6C(MEMORY[0x1E69E7CC0]);

    v9 = v0[1];

    return v9(v8);
  }
}

uint64_t sub_1D68EA810()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D68EAB40;
  }

  else
  {

    v2 = sub_1D68EA92C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68EA92C()
{
  v1 = v0[16];
  v2 = *(v1 + *(v0[15] + 44));

  sub_1D68FF714(v1, sub_1D68FED64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[13];
    v6 = v0[10];
    v5 = v0[11];
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D6999988(0, v3, 0);
    v7 = v18;
    v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v9 = *(v5 + 72);
    do
    {
      v10 = v0[14];
      v11 = v0[12];
      sub_1D68FF774(v8, v11, sub_1D68FECB4);
      sub_1D68FF774(v11 + *(v6 + 52), v10, type metadata accessor for SportsEventStatusResponse);
      sub_1D68FF714(v11, sub_1D68FECB4);
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D6999988(v12 > 1, v13 + 1, 1);
      }

      v14 = v0[14];
      *(v18 + 16) = v13 + 1;
      sub_1D6200774(v14, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
      v8 += v9;
      --v3;
    }

    while (v3);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D68FE008(v7);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1D68EAB40()
{

  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v3 = sub_1D726497C();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_1D7262EDC();
  sub_1D725C30C();

  v6 = sub_1D605DE6C(MEMORY[0x1E69E7CC0]);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1D68EACE8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1800) = v8;
  *(v9 + 1792) = a8;
  *(v9 + 1784) = a7;
  *(v9 + 1776) = a6;
  *(v9 + 1768) = a5;
  *(v9 + 1760) = a4;
  *(v9 + 1752) = a3;
  *(v9 + 1744) = a1;
  sub_1D68FD964(0, &qword_1EDF17888, sub_1D5E4CF90, MEMORY[0x1E69E6720]);
  *(v9 + 1808) = swift_task_alloc();
  sub_1D5E4CF90();
  *(v9 + 1816) = v11;
  *(v9 + 1824) = *(v11 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v12 = type metadata accessor for SportsDataVisualizationResponseItem();
  *(v9 + 1848) = v12;
  *(v9 + 1856) = *(v12 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  *(v9 + 1888) = swift_task_alloc();
  *(v9 + 1449) = *a2;
  v13 = *(v16 + 16);
  *(v9 + 1416) = *v16;
  *(v9 + 1432) = v13;
  *(v9 + 1448) = *(v16 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D68EAEDC, 0, 0);
}

uint64_t sub_1D68EAEDC()
{
  v1 = v0[220];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[232];
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D6999938(0, v2, 0);
    v3 = v49;
    v5 = *(type metadata accessor for SportsDataVisualizationResponseScoreItem() - 8);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      sub_1D68FF774(v6, v0[235], type metadata accessor for SportsDataVisualizationResponseScoreItem);
      swift_storeEnumTagMultiPayload();
      v9 = *(v49 + 16);
      v8 = *(v49 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D6999938(v8 > 1, v9 + 1, 1);
      }

      v10 = v0[235];
      *(v49 + 16) = v9 + 1;
      sub_1D68FFE38(v10, v49 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, type metadata accessor for SportsDataVisualizationResponseItem);
      v6 += v7;
      --v2;
    }

    while (v2);
  }

  v50 = v0[219];

  sub_1D6988404(v3);
  v0[187] = v50;
  sub_1D68FD964(0, &qword_1EDF04AD8, type metadata accessor for SportsDataVisualizationResponseItem, MEMORY[0x1E69E62F8]);
  sub_1D68FD9C8(&qword_1EDF04AD0, &qword_1EDF04AD8, type metadata accessor for SportsDataVisualizationResponseItem);
  v11 = sub_1D72623CC();
  v0[237] = v11;

  v12 = *(v11 + 16);
  v48 = v11;
  if (!v12)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v47 = sub_1D5B86020(v16);

    if (v12)
    {
      v31 = v0[233];
      v32 = v0[232];
      v33 = v48 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v34 = *(v32 + 72);
      v35 = MEMORY[0x1E69E7CC0];
      do
      {
        v36 = v0[234];
        v37 = v0[233];
        sub_1D68FF774(v33, v36, type metadata accessor for SportsDataVisualizationResponseItem);
        sub_1D68FFE38(v36, v37, type metadata accessor for SportsDataVisualizationResponseItem);
        if (swift_getEnumCaseMultiPayload() < 3)
        {
          sub_1D68FF714(v0[233], type metadata accessor for SportsDataVisualizationResponseItem);
        }

        else
        {
          v38 = *(v31 + 16);
          v39 = *(v31 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1D5B858EC(0, *(v35 + 2) + 1, 1, v35);
          }

          v41 = *(v35 + 2);
          v40 = *(v35 + 3);
          if (v41 >= v40 >> 1)
          {
            v35 = sub_1D5B858EC((v40 > 1), v41 + 1, 1, v35);
          }

          *(v35 + 2) = v41 + 1;
          v42 = &v35[16 * v41];
          *(v42 + 4) = v38;
          *(v42 + 5) = v39;
        }

        v33 += v34;
        --v12;
      }

      while (v12);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v43 = v0[225];
    v0[238] = sub_1D5B86020(v35);

    v44 = swift_allocObject();
    v0[239] = v44;
    *(v44 + 16) = v43;
    *(v44 + 24) = v48;

    sub_1D68FDBB8(0, &unk_1EDF05658, &qword_1EDF04500);
    swift_asyncLet_begin();
    v45 = swift_allocObject();
    v0[240] = v45;
    *(v45 + 16) = v43;
    *(v45 + 24) = v47;

    sub_1D68FDBB8(0, &qword_1EDF05650, &qword_1EDF1A870);
    swift_asyncLet_begin();
    v20 = sub_1D68EB538;
    isUniquelyReferenced_nonNull_native = (v0 + 2);
    v19 = v0 + 193;
    v21 = v0 + 162;

    return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v19, v20, v21);
  }

  v13 = v0[232];
  v14 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = *(v13 + 72);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = *(v11 + 16);
  while (1)
  {
    v22 = v0[236];
    sub_1D68FF774(v14, v22, type metadata accessor for SportsDataVisualizationResponseItem);
    v23 = sub_1D6792A50();
    isUniquelyReferenced_nonNull_native = sub_1D68FF714(v22, type metadata accessor for SportsDataVisualizationResponseItem);
    v24 = *(v23 + 16);
    v25 = *(v16 + 16);
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v26 <= *(v16 + 24) >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      isUniquelyReferenced_nonNull_native = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v27, 1, v16);
      v16 = isUniquelyReferenced_nonNull_native;
      if (*(v23 + 16))
      {
LABEL_19:
        if ((*(v16 + 24) >> 1) - *(v16 + 16) < v24)
        {
          goto LABEL_40;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v28 = *(v16 + 16);
          v29 = __OFADD__(v28, v24);
          v30 = v28 + v24;
          if (v29)
          {
            goto LABEL_41;
          }

          *(v16 + 16) = v30;
        }

        goto LABEL_9;
      }
    }

    if (v24)
    {
      goto LABEL_39;
    }

LABEL_9:
    v14 += v15;
    if (!--v17)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return MEMORY[0x1EEE6DEC0](isUniquelyReferenced_nonNull_native, v19, v20, v21);
}

uint64_t sub_1D68EB538()
{
  v1[241] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v1 + 82, v1 + 199, sub_1D68EBF88, v1 + 172);
  }

  else
  {
    v1[242] = v1[193];

    return MEMORY[0x1EEE6DEB8](v1 + 82, v1 + 199, sub_1D68EB600, v1 + 188);
  }
}

uint64_t sub_1D68EB61C()
{
  v1 = v0[238];
  v2 = v0[199];
  v0[243] = v2;
  v3 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1E69E7CC0];
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v6;
LABEL_10:
    v6 = (v10 - 1) & v10;
    if (*(v2 + 16))
    {
      v12 = (*(v1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v10)))));
      v13 = *v12;
      v14 = v12[1];

      sub_1D5B69D90(v13, v14);
      if (v15)
      {
        swift_unknownObjectRetain();

        MEMORY[0x1DA6F9CE0](v16);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        v8 = sub_1D726278C();
        v3 = v19;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE44EE0](v8);
    }

    if (v11 >= v7)
    {
      break;
    }

    v10 = *(v1 + 56 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  v0[244] = sub_1D68E9768(v3);

  v17 = swift_task_alloc();
  v0[245] = v17;
  *v17 = v0;
  v17[1] = sub_1D68EB864;
  v8 = (v0 + 205);

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1D68EB864()
{
  *(*v1 + 1968) = v0;

  if (v0)
  {

    v2 = sub_1D68EC0C4;
  }

  else
  {
    v2 = sub_1D68EB9C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D68EB9C0()
{
  v1 = v0[243];
  v2 = v0[242];
  v28 = v0[237];
  v31 = v0[228];
  v32 = v0[227];
  v3 = v0[225];
  v4 = v0[224];
  v30 = v0[226];
  v5 = v0[223];
  v6 = v0[222];
  v29 = v6;
  v7 = v0[221];
  v27 = v0[220];
  v8 = v0[205];
  v0[211] = MEMORY[0x1E69E7CC0];
  v9 = swift_task_alloc();
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v2;
  v9[7] = v27;
  v9[8] = v7;
  v9[9] = v1;
  v9[10] = v0 + 177;
  v9[11] = v8;
  v9[12] = v0 + 211;
  v10 = sub_1D5FBE174(sub_1D68FDC20, v9, v28);

  v11 = v0[211];
  sub_1D5B6B7A4();
  v12 = sub_1D725B45C();
  v13 = swift_task_alloc();
  v13[2] = v3;
  v13[3] = v29;
  v13[4] = v12;
  v13[5] = v4;
  v13[6] = v2;
  v13[7] = v7;
  v13[8] = v1;
  v14 = sub_1D5FBDFF4(sub_1D68FDC60, v13, v11);

  v0[217] = v14;
  sub_1D68FD964(0, &qword_1EDF1AF90, type metadata accessor for SportsBracketDataVisualization, MEMORY[0x1E69E62F8]);
  sub_1D68FD9C8(&qword_1EDF1AF80, &qword_1EDF1AF90, type metadata accessor for SportsBracketDataVisualization);
  sub_1D725BEBC();
  if ((*(v31 + 48))(v30, 1, v32) == 1)
  {
    sub_1D6900328(v0[226], &unk_1EDF17888, sub_1D5E4CF90, MEMORY[0x1E69E6720], sub_1D68FD964);
    v15 = 0xF000000000000007;
  }

  else
  {
    v16 = v0[230];
    v17 = v0[229];
    v18 = v0[228];
    v19 = v0[227];
    (*(v18 + 32))(v16, v0[226], v19);
    v20 = swift_allocObject();
    (*(v18 + 16))(v17, v16, v19);
    type metadata accessor for SportsBracketGroupDataVisualization();
    swift_allocObject();
    v21 = SportsBracketGroupDataVisualization.init(visualizations:)(v17);
    (*(v18 + 8))(v16, v19);
    *(v20 + 16) = v21;
    v15 = v20 | 0x4000000000000000;
  }

  v0[171] = v15;
  sub_1D5D04BD4(v15);
  if ((~v15 & 0xF000000000000007) != 0)
  {

    v22 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1D698BA80(0, *(v22 + 2) + 1, 1, v22);
    }

    v24 = *(v22 + 2);
    v23 = *(v22 + 3);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1D698BA80((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 2) = v24 + 1;
    *&v22[8 * v24 + 32] = v15;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v25 = v0[218];
  sub_1D6900328((v0 + 171), &unk_1EDF3F3E0, &type metadata for SportsDataVisualization, MEMORY[0x1E69E6720], sub_1D6901918);
  sub_1D6985104(v22);
  sub_1D5FC5034(v15);

  *v25 = v10;

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 199, sub_1D68EBE54, v0 + 206);
}

uint64_t sub_1D68EBEAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68EBFE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68EC13C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D68EC220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v69 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D72585BC();
  v7 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v8);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v68, v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SportsDataServiceRequest(0);
  v12 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v13);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - v17;
  v66 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for SportsDataServiceBatchRequest(0);
  v55 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v56 = v26;
  v57 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 + 28);
  v58 = a1;
  v29 = *(a1 + v28);
  v30 = *(v29 + 16);
  if (v30)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v31 = *(v12 + 80);
    v32 = v29 + ((v31 + 32) & ~v31);
    v33 = *(v12 + 72);
    v63 = v31;
    v64 = v18;
    v60 = (v31 + 16) & ~v31;
    v61 = (v7 + 32);
    v59 = (v7 + 8);
    v62 = v33;
    while (1)
    {
      sub_1D68FF774(v32, v23, type metadata accessor for SportsDataServiceRequest);
      v42 = *__swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
      sub_1D68FF774(v23, v18, type metadata accessor for SportsDataServiceRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v44 = v69;
        sub_1D68FFE38(v18, v69, type metadata accessor for SportsDataServiceResourceRequest);
        sub_1D68DFD48(v44, v23);
        v45 = type metadata accessor for SportsDataServiceResourceRequest;
LABEL_9:
        sub_1D68FF714(v44, v45);
        sub_1D68FF714(v23, type metadata accessor for SportsDataServiceRequest);
        goto LABEL_4;
      }

      v34 = v70;
      v35 = (*v61)();
      MEMORY[0x1EEE9AC00](v35, v36);
      *(&v54 - 2) = v42;
      *(&v54 - 1) = v34;
      sub_1D725BDCC();
      v37 = v65;
      sub_1D68FF774(v23, v65, type metadata accessor for SportsDataServiceRequest);
      v38 = v60;
      v39 = swift_allocObject();
      sub_1D68FFE38(v37, v39 + v38, type metadata accessor for SportsDataServiceRequest);
      v40 = a2;
      v41 = sub_1D725B92C();
      sub_1D68FF208(0);
      type metadata accessor for SportsDataServiceRequestFetcher();
      sub_1D725BAAC();
      v33 = v62;

      a2 = v40;
      v18 = v64;
      sub_1D68FF714(v23, type metadata accessor for SportsDataServiceRequest);
      (*v59)(v70, v71);
LABEL_4:
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v32 += v33;
      if (!--v30)
      {
        goto LABEL_10;
      }
    }

    v44 = v67;
    sub_1D68FFE38(v18, v67, type metadata accessor for SportsDataServiceURLRequest);
    sub_1D68DDCF4(v44 + *(v68 + 24), v44, 1);
    v45 = type metadata accessor for SportsDataServiceURLRequest;
    goto LABEL_9;
  }

LABEL_10:
  v46 = sub_1D725B92C();
  sub_1D68FF208(0);
  sub_1D725BEFC();

  v47 = v57;
  sub_1D68FF774(v58, v57, type metadata accessor for SportsDataServiceBatchRequest);
  v48 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v49 = swift_allocObject();
  sub_1D68FFE38(v47, v49 + v48, type metadata accessor for SportsDataServiceBatchRequest);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1D68FFB48;
  *(v50 + 24) = v49;
  v51 = sub_1D725B92C();
  sub_1D68FC384();
  v52 = sub_1D725BA8C();

  return v52;
}

uint64_t sub_1D68EC918()
{
  type metadata accessor for SportsDataServiceRequest(0);
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  sub_1D68FFF2C(0);
  sub_1D725BA9C();

  v1 = sub_1D725B92C();
  type metadata accessor for SportsFeaturedEventsResource();
  sub_1D725BA8C();

  v2 = sub_1D725B92C();
  v3 = sub_1D725BACC();

  return v3;
}

uint64_t sub_1D68ECA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v74[2] = a2;
  v4 = type metadata accessor for SportsFeaturedEventsResource();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v74 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v74 - v14;
  if (qword_1EDF17590 != -1)
  {
LABEL_56:
    swift_once();
  }

  v16 = sub_1D725C42C();
  __swift_project_value_buffer(v16, qword_1EDF17598);
  sub_1D68FF774(a1, v15, type metadata accessor for SportsFeaturedEventsResource);
  sub_1D68FF774(a1, v11, type metadata accessor for SportsFeaturedEventsResource);
  v17 = sub_1D725C3FC();
  v18 = sub_1D7262EDC();
  v19 = os_log_type_enabled(v17, v18);
  v79 = a1;
  v75 = v7;
  if (v19)
  {
    v7 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = v95;
    *v7 = 136446466;
    sub_1D68FF5FC();
    v94 = v17;
    sub_1D725B45C();
    v20 = MEMORY[0x1E69E62F8];
    sub_1D6901918(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v21 = sub_1D7261DBC();
    v23 = v22;

    LODWORD(v93) = v18;
    sub_1D68FF714(v15, type metadata accessor for SportsFeaturedEventsResource);
    v24 = sub_1D5BC5100(v21, v23, &v96);

    *(v7 + 4) = v24;
    *(v7 + 12) = 2082;
    sub_1D68FF7DC();
    sub_1D725B45C();
    v25 = v20;
    a1 = v79;
    sub_1D6901918(0, &qword_1EDF04BF8, &type metadata for SportsFeaturedAffinityEvent, v25);
    v26 = sub_1D7261DBC();
    v28 = v27;

    sub_1D68FF714(v11, type metadata accessor for SportsFeaturedEventsResource);
    v29 = sub_1D5BC5100(v26, v28, &v96);

    *(v7 + 14) = v29;
    v30 = v94;
    _os_log_impl(&dword_1D5B42000, v94, v93, "Fetch featured events, featured tagIds=%{public}s, affinity tagIds=%{public}s", v7, 0x16u);
    v31 = v95;
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v31, -1, -1);
    MEMORY[0x1DA6FD500](v7, -1, -1);
  }

  else
  {

    sub_1D68FF714(v11, type metadata accessor for SportsFeaturedEventsResource);
    sub_1D68FF714(v15, type metadata accessor for SportsFeaturedEventsResource);
  }

  sub_1D68FF5FC();
  v32 = sub_1D725B45C();
  v97 = sub_1D5C44E90(v32);
  sub_1D68FF7DC();
  v33 = sub_1D725B45C();
  v34 = 0;
  v35 = *(v33 + 64);
  v76 = v33 + 64;
  v36 = 1 << *(v33 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & v35;
  v39 = (v36 + 63) >> 6;
  v11 = (v85 + 16);
  v78 = v33;
  v77 = v39;
  v86 = (v85 + 16);
LABEL_10:
  while (v38)
  {
LABEL_15:
    v41 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v42 = v41 | (v34 << 6);
    v43 = *(*(v33 + 56) + 8 * v42);
    v44 = *(v43 + 16);
    if (v44)
    {
      v81 = v38;
      v82 = v34;
      v45 = (*(v33 + 48) + 16 * v42);
      v46 = v45[1];
      v83 = *v45;
      v47 = v43 + 32;
      v84 = v46;

      v80 = v43;

      a1 = 0;
      v7 = *(v85 + 32);
      v88 = v43 + 32;
      v89 = v44;
      v87 = v7;
      while (1)
      {
        v48 = v47 + 16 * a1;
        v49 = *v48;
        v15 = *(v48 + 8);
        if (!v7 || (v50 = MEMORY[0x1E69E7CD0], v7 == 1))
        {
        }

        isa = v49[2].isa;
        if (isa)
        {
          v52 = *(v50 + 16);
          if (v52)
          {
            break;
          }
        }

LABEL_18:
        if (++a1 == v44)
        {

          a1 = v79;
          v33 = v78;
          v34 = v82;
          v39 = v77;
          v38 = v81;
          goto LABEL_10;
        }
      }

      if (isa >= v52)
      {
        v11 = v50;
      }

      else
      {
        v11 = v49;
      }

      v91 = v50;
      if (isa >= v52)
      {
        v53 = v49;
      }

      else
      {
        v53 = v50;
      }

      v54 = v11 + 56;
      v55 = 1 << v11[32];
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v57 = v56 & *(v11 + 7);
      v7 = (v55 + 63) >> 6;
      v95 = v53 + 56;

      v58 = 0;
      v93 = v15;
      v94 = v49;
      v92 = v11;
      while (v57)
      {
        v59 = v57;
LABEL_40:
        v57 = (v59 - 1) & v59;
        if (*(v53 + 16))
        {
          v90 = (v59 - 1) & v59;
          v61 = (*(v11 + 6) + ((v58 << 10) | (16 * __clz(__rbit64(v59)))));
          v62 = *v61;
          v15 = v61[1];
          sub_1D7264A0C();

          sub_1D72621EC();
          v63 = sub_1D7264A5C();
          v64 = -1 << *(v53 + 32);
          v65 = v63 & ~v64;
          if ((*(v95 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65))
          {
            v66 = ~v64;
            while (1)
            {
              v67 = (*(v53 + 48) + 16 * v65);
              v68 = *v67 == v62 && v67[1] == v15;
              if (v68 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v65 = (v65 + 1) & v66;
              if (((*(v95 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            v69 = v84;

            sub_1D5B860D0(&v96, v83, v69);

LABEL_52:
            v11 = v86;
            v47 = v88;
            v44 = v89;
            v7 = v87;
            goto LABEL_18;
          }

LABEL_49:

          v15 = v93;
          v11 = v92;
          v57 = v90;
        }
      }

      while (1)
      {
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v60 >= v7)
        {

          goto LABEL_52;
        }

        v59 = *&v54[8 * v60];
        ++v58;
        if (v59)
        {
          v58 = v60;
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }
  }

  while (1)
  {
    v40 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_55;
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v76 + 8 * v40);
    ++v34;
    if (v38)
    {
      v34 = v40;
      goto LABEL_15;
    }
  }

  v70 = v97;

  sub_1D68FC6AC(v70);

  v71 = sub_1D725B92C();
  sub_1D68FC384();
  sub_1D725BEFC();

  sub_1D68FF774(a1, v75, type metadata accessor for SportsFeaturedEventsResource);
  sub_1D68FD964(0, &qword_1EDF17A00, type metadata accessor for SportsFeaturedEventsResource, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1D725BB1C();
  v72 = sub_1D725BD9C();

  return v72;
}

uint64_t sub_1D68ED334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v131 = a2;
  v127 = a3;
  sub_1D68FD964(0, qword_1EDF06300, type metadata accessor for SportsDataVisualizationResponseScoreItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v130 = &v126 - v6;
  v142 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  v132 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v7);
  v143 = (&v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v138 = &v126 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v134 = &v126 - v14;
  v144 = type metadata accessor for SportsDataVisualizationResponseItem();
  v147 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v15);
  v136 = (&v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v18);
  v137 = (&v126 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v126 - v26;
  sub_1D68FC384();
  v140 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v145 = (&v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D68FF448();
  v32 = v31 - 8;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = (&v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for SportsFeaturedEventsResource();
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FF774(a1, v35, sub_1D68FF448);
  v141 = *v35;

  v40 = v35 + *(v32 + 56);
  v41 = v23;
  sub_1D68FF5E4(v40, v39);
  sub_1D68FF5FC();
  v129 = v39;
  v42 = sub_1D725B45C();
  v43 = v42 + 64;
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;
  v148 = v42;

  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v146 = v23;
  v151 = v27;
LABEL_5:
  if (v46)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
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
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      swift_once();
      goto LABEL_100;
    }

    if (v50 >= v47)
    {
      break;
    }

    v46 = *(v43 + 8 * v50);
    ++v48;
    if (v46)
    {
      v48 = v50;
LABEL_10:
      v51 = *(v148[7] + ((v48 << 9) | (8 * __clz(__rbit64(v46)))));
      v52 = *(v51 + 16);
      v53 = *(v49 + 2);
      v54 = v53 + v52;
      if (__OFADD__(v53, v52))
      {
        goto LABEL_109;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v54 > *(v49 + 3) >> 1)
      {
        if (v53 <= v54)
        {
          v56 = v53 + v52;
        }

        else
        {
          v56 = v53;
        }

        v49 = sub_1D5B858EC(isUniquelyReferenced_nonNull_native, v56, 1, v49);
      }

      v27 = v151;
      v46 &= v46 - 1;
      if (*(v51 + 16))
      {
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v52)
        {
          goto LABEL_111;
        }

        swift_arrayInitWithCopy();

        v41 = v146;
        if (v52)
        {
          v57 = *(v49 + 2);
          v58 = __OFADD__(v57, v52);
          v59 = v57 + v52;
          if (v58)
          {
            goto LABEL_112;
          }

          *(v49 + 2) = v59;
        }
      }

      else
      {

        v41 = v146;
        if (v52)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_5;
    }
  }

  v46 = v148;

  v148 = sub_1D5B86020(v49);

  v135 = sub_1D7228310();
  v60 = *(v141 + 16);
  if (v60)
  {
    v46 = v141 + ((v140[80] + 32) & ~v140[80]);
    v61 = *(v140 + 9);
    v62 = MEMORY[0x1E69E7CC0];
    v63 = v131;
    do
    {
      v64 = v145;
      sub_1D68FF774(v46, v145, sub_1D68FC384);
      v65 = *(v63 + 16);
      v149[0] = *v63;
      v149[1] = v65;
      v150 = *(v63 + 32);
      sub_1D68FCAB8(v149, v64);
      v67 = v66;
      sub_1D68FF714(v64, sub_1D68FC384);
      v68 = *(v67 + 16);
      v69 = v62[2];
      v70 = v69 + v68;
      if (__OFADD__(v69, v68))
      {
        goto LABEL_105;
      }

      v71 = swift_isUniquelyReferenced_nonNull_native();
      if (!v71 || v70 > v62[3] >> 1)
      {
        if (v69 <= v70)
        {
          v72 = v69 + v68;
        }

        else
        {
          v72 = v69;
        }

        v62 = sub_1D69952EC(v71, v72, 1, v62);
      }

      v27 = v151;
      if (*(v67 + 16))
      {
        if ((v62[3] >> 1) - v62[2] < v68)
        {
          goto LABEL_107;
        }

        swift_arrayInitWithCopy();

        v41 = v146;
        if (v68)
        {
          v73 = v62[2];
          v58 = __OFADD__(v73, v68);
          v74 = v73 + v68;
          if (v58)
          {
            goto LABEL_108;
          }

          v62[2] = v74;
        }
      }

      else
      {

        v41 = v146;
        if (v68)
        {
          goto LABEL_106;
        }
      }

      v46 += v61;
      --v60;
    }

    while (v60);
  }

  else
  {

    v62 = MEMORY[0x1E69E7CC0];
    v63 = v131;
  }

  v75 = v132;
  v76 = v130;
  v141 = v62[2];
  if (v141)
  {
    v77 = 0;
    v140 = v62 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v139 = (v132 + 56);
    v128 = (v63 + 16);
    v145 = v148 + 7;
    v78 = MEMORY[0x1E69E7CC0];
    v133 = (v132 + 48);
    while (1)
    {
      if (v77 >= v62[2])
      {
        goto LABEL_104;
      }

      sub_1D68FF774(&v140[*(v147 + 72) * v77], v27, type metadata accessor for SportsDataVisualizationResponseItem);
      sub_1D68FF774(v27, v41, type metadata accessor for SportsDataVisualizationResponseItem);
      if (swift_getEnumCaseMultiPayload())
      {
        v46 = type metadata accessor for SportsDataVisualizationResponseItem;
        sub_1D68FF714(v27, type metadata accessor for SportsDataVisualizationResponseItem);
        sub_1D68FF714(v41, type metadata accessor for SportsDataVisualizationResponseItem);
        (*v139)(v76, 1, 1, v142);
        goto LABEL_43;
      }

      sub_1D68FFE38(v41, v138, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      sub_1D68FF774(v27, v137, type metadata accessor for SportsDataVisualizationResponseItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v80 = *v137;
          v81 = v137[1];

LABEL_53:

          goto LABEL_54;
        }

        v80 = *v137;
        v81 = v137[1];

        v63 = v131;

        v76 = v130;
LABEL_52:

        goto LABEL_53;
      }

      v100 = v143;
      sub_1D68FFE38(v137, v143, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v80 = *v100;
      v81 = v100[1];

      sub_1D68FF714(v100, type metadata accessor for SportsDataVisualizationResponseScoreItem);
LABEL_54:
      if (!*(v135 + 16))
      {

        v27 = v151;
        goto LABEL_63;
      }

      v82 = sub_1D5B69D90(v80, v81);
      v84 = v83;

      v27 = v151;
      if ((v84 & 1) == 0)
      {
        goto LABEL_63;
      }

      v85 = *(*(v135 + 56) + 8 * v82);
      v86 = v128;
      if (*(v63 + 32))
      {
        v87 = MEMORY[0x1E69E7CD0];
        if (*(v63 + 32) != 1)
        {
          goto LABEL_60;
        }

        v86 = (*v63 + 40);
      }

      v87 = *v86;

LABEL_60:

      v88 = sub_1D670EDB8(v87, v85);

      if ((v88 & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_63:
      sub_1D68FF774(v27, v136, type metadata accessor for SportsDataVisualizationResponseItem);
      v89 = swift_getEnumCaseMultiPayload();
      if (v89 > 2)
      {
        v92 = *v136;
        v91 = v136[1];
        goto LABEL_68;
      }

      v90 = v148;
      if (v89)
      {
        if (v89 == 1)
        {
          v92 = *v136;
          v91 = v136[1];

          goto LABEL_69;
        }

        v92 = *v136;
        v91 = v136[1];

        v63 = v131;

        v76 = v130;
LABEL_68:

LABEL_69:

        v90 = v148;
        if (!v148[2])
        {
          goto LABEL_84;
        }

        goto LABEL_70;
      }

      v101 = v143;
      sub_1D68FFE38(v136, v143, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v92 = *v101;
      v91 = v101[1];

      sub_1D68FF714(v101, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      if (!v90[2])
      {
        goto LABEL_84;
      }

LABEL_70:
      sub_1D7264A0C();
      sub_1D72621EC();
      v93 = sub_1D7264A5C();
      v94 = -1 << *(v90 + 32);
      v95 = v93 & ~v94;
      if ((*(v145 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
      {
        v96 = ~v94;
        while (1)
        {
          v97 = (v148[6] + 16 * v95);
          v98 = *v97 == v92 && v97[1] == v91;
          if (v98 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v95 = (v95 + 1) & v96;
          if (((*(v145 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        v27 = v151;
LABEL_80:
        sub_1D68FF714(v27, type metadata accessor for SportsDataVisualizationResponseItem);
        sub_1D68FFE38(v138, v76, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        v99 = 0;
        goto LABEL_85;
      }

LABEL_84:

      sub_1D68FF714(v138, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v27 = v151;
      sub_1D68FF714(v151, type metadata accessor for SportsDataVisualizationResponseItem);
      v99 = 1;
LABEL_85:
      v46 = v142;
      (*v139)(v76, v99, 1, v142);
      v102 = (*v133)(v76, 1, v46);
      v41 = v146;
      if (v102 != 1)
      {
        sub_1D68FFE38(v76, v134, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1D6995320(0, v78[2] + 1, 1, v78);
        }

        v104 = v78[2];
        v103 = v78[3];
        v46 = v104 + 1;
        if (v104 >= v103 >> 1)
        {
          v78 = sub_1D6995320(v103 > 1, v104 + 1, 1, v78);
        }

        v78[2] = v46;
        sub_1D68FFE38(v134, v78 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v104, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        goto LABEL_44;
      }

LABEL_43:
      sub_1D6900328(v76, qword_1EDF06300, type metadata accessor for SportsDataVisualizationResponseScoreItem, MEMORY[0x1E69E6720], sub_1D68FD964);
LABEL_44:
      if (++v77 == v141)
      {

        v105 = v78;
        v75 = v132;
        goto LABEL_94;
      }
    }

    v80 = *v137;
    v81 = v137[1];
    goto LABEL_52;
  }

  v105 = MEMORY[0x1E69E7CC0];
LABEL_94:

  v106 = *(v105 + 16);
  v107 = MEMORY[0x1E69E7CC0];
  v151 = v105;
  if (v106)
  {
    *&v149[0] = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v106, 0);
    v107 = *&v149[0];
    v108 = v105 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v109 = *(v75 + 72);
    do
    {
      v110 = v143;
      sub_1D68FF774(v108, v143, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v112 = *v110;
      v111 = v110[1];

      sub_1D68FF714(v110, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      *&v149[0] = v107;
      v114 = *(v107 + 16);
      v113 = *(v107 + 24);
      if (v114 >= v113 >> 1)
      {
        sub_1D5BFC364((v113 > 1), v114 + 1, 1);
        v107 = *&v149[0];
      }

      *(v107 + 16) = v114 + 1;
      v115 = v107 + 16 * v114;
      *(v115 + 32) = v112;
      *(v115 + 40) = v111;
      v108 += v109;
      --v106;
    }

    while (v106);
  }

  v46 = sub_1D5B86020(v107);

  if (qword_1EDF17590 != -1)
  {
    goto LABEL_113;
  }

LABEL_100:
  v116 = sub_1D725C42C();
  __swift_project_value_buffer(v116, qword_1EDF17598);

  v117 = sub_1D725C3FC();
  v118 = sub_1D7262EDC();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    *&v149[0] = v120;
    *v119 = 136446210;
    v121 = sub_1D7262B1C();
    v123 = sub_1D5BC5100(v121, v122, v149);

    *(v119 + 4) = v123;
    _os_log_impl(&dword_1D5B42000, v117, v118, "Successfully fetched featured events=%{public}s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v120);
    MEMORY[0x1DA6FD500](v120, -1, -1);
    MEMORY[0x1DA6FD500](v119, -1, -1);
  }

  result = sub_1D68FF714(v129, type metadata accessor for SportsFeaturedEventsResource);
  v125 = v127;
  *v127 = v151;
  v125[1] = v46;
  return result;
}

void sub_1D68EE428(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v4 = sub_1D725C42C();
  __swift_project_value_buffer(v4, qword_1EDF17598);
  v5 = a1;
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1D726497C();
    v12 = sub_1D5BC5100(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D5B42000, v6, v7, "Failed to fetch featured events; error=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  v13 = MEMORY[0x1E69E7CD0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v13;
}

uint64_t sub_1D68EE5B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D679250C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D68EE5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D68EE618, 0, 0);
}

uint64_t sub_1D68EE618()
{
  v0[5] = sub_1D68EE6C0(v0[4]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D5FE1C4C;
  v2 = v0[2];

  return MEMORY[0x1EEE44EE0](v2);
}

uint64_t sub_1D68EE6C0(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v23 = &v44 - v22;
  v53 = MEMORY[0x1E69E7CD0];
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    v46 = v5;
    v47 = v26;
    do
    {
      sub_1D68FF774(v25, v23, type metadata accessor for SportsDataVisualizationResponseItem);
      sub_1D68FF774(v23, v16, type metadata accessor for SportsDataVisualizationResponseItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v28 = *(v16 + 4);
          }

          else
          {
            v37 = *(v16 + 3);
            v51 = *(v16 + 2);
            v52[0] = v37;
            *(v52 + 9) = *(v16 + 57);
            v38 = *(v16 + 1);
            v49 = *v16;
            v50 = v38;
            v28 = *&v52[0];

            sub_1D5FC4DE4(&v49);
          }
        }

        else
        {
          v35 = v45;
          sub_1D68FFE38(v16, v45, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          v28 = *(v35 + 48);

          sub_1D68FF714(v35, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        }
      }

      else
      {
        sub_1D68FF714(v16, type metadata accessor for SportsDataVisualizationResponseItem);
        v28 = MEMORY[0x1E69E7CC0];
      }

      sub_1D5B87D50(v28);

      sub_1D68FF774(v23, v12, type metadata accessor for SportsDataVisualizationResponseItem);
      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 2)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v30 = *(v12 + 2);
            v31 = *(v12 + 3);
          }

          else
          {
            v39 = *(v12 + 3);
            v51 = *(v12 + 2);
            v52[0] = v39;
            *(v52 + 9) = *(v12 + 57);
            v40 = *(v12 + 1);
            v49 = *v12;
            v50 = v40;
            v31 = *(&v40 + 1);
            v30 = v40;

            sub_1D5FC4DE4(&v49);
          }
        }

        else
        {
          v36 = v45;
          sub_1D68FFE38(v12, v45, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          v30 = *(v36 + 32);
          v31 = *(v36 + 40);

          sub_1D68FF714(v36, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        }
      }

      else
      {
        v30 = *(v12 + 4);
        v31 = *(v12 + 5);
      }

      if (v31)
      {
        sub_1D5B860D0(&v49, v30, v31);
      }

      sub_1D68FF774(v23, v8, type metadata accessor for SportsDataVisualizationResponseItem);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v8[3];
        v51 = v8[2];
        v52[0] = v32;
        *(v52 + 9) = *(v8 + 57);
        v33 = v8[1];
        v49 = *v8;
        v50 = v33;
        v34 = v51;

        sub_1D5FC4DE4(&v49);
        if (*(&v34 + 1))
        {
          sub_1D5B860D0(&v48, v34, *(&v34 + 1));
        }
      }

      else
      {
        sub_1D68FF714(v8, type metadata accessor for SportsDataVisualizationResponseItem);
      }

      v19 = sub_1D68FF714(v23, type metadata accessor for SportsDataVisualizationResponseItem);
      v25 += v47;
      --v24;
    }

    while (v24);
  }

  MEMORY[0x1EEE9AC00](v19, v20);
  *(&v44 - 2) = v44;
  *(&v44 - 1) = &v53;
  sub_1D5C44878();
  sub_1D725BDCC();
  v41 = sub_1D725B92C();
  sub_1D68FDBB8(0, &unk_1EDF05658, &qword_1EDF04500);
  v42 = sub_1D725BA8C();

  return v42;
}

uint64_t sub_1D68EEC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D68EED00;

  return sub_1D68E99E8(a3);
}

uint64_t sub_1D68EED00(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D5E6D694, 0, 0);
}

uint64_t sub_1D68EEE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t *a11)
{
  v54 = a5;
  v53 = a3;
  v55 = a2;
  v62 = a7;
  v14 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FF774(a1, v21, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v28 = *(v21 + 1);
        v29 = *(v21 + 2);
        v30 = *(v21 + 3);
        v31 = *(v21 + 4);
        v32 = *(v21 + 5);
        v33 = v21[48];
        *&v56 = *v21;
        *(&v56 + 1) = v28;
        *&v57 = v29;
        *(&v57 + 1) = v30;
        *v58 = v31;
        *&v58[8] = v32;
        v58[16] = v33;
        sub_1D5B6B7A4();
        v34 = sub_1D725B45C();
        sub_1D68F37EC(&v56, v53, v34, v54, v62);
      }

      else
      {
        v41 = *(v21 + 3);
        *v58 = *(v21 + 2);
        *&v58[16] = v41;
        *&v58[25] = *(v21 + 57);
        v42 = *(v21 + 1);
        v56 = *v21;
        v57 = v42;
        v43 = *a11;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a11 = v43;
        if ((result & 1) == 0)
        {
          result = sub_1D6995354(0, *(v43 + 16) + 1, 1, v43);
          v43 = result;
          *a11 = result;
        }

        v45 = *(v43 + 16);
        v44 = *(v43 + 24);
        if (v45 >= v44 >> 1)
        {
          result = sub_1D6995354((v44 > 1), v45 + 1, 1, v43);
          v43 = result;
          *a11 = result;
        }

        *(v43 + 16) = v45 + 1;
        v46 = (v43 + 80 * v45);
        v46[2] = v56;
        v47 = v57;
        v48 = *v58;
        v49 = *&v58[16];
        *(v46 + 89) = *&v58[25];
        v46[4] = v48;
        v46[5] = v49;
        v46[3] = v47;
        *v62 = 0xF000000000000007;
      }
    }

    else
    {
      sub_1D68FFE38(v21, v17, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      sub_1D5B6B7A4();
      v39 = sub_1D725B45C();
      v40 = a9[1];
      v56 = *a9;
      v57 = v40;
      v58[0] = *(a9 + 32);
      sub_1D68EF31C(v17, v53, v39, a4, v54, a6, a8, &v56, v62);

      return sub_1D68FF714(v17, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v35 = *(v21 + 1);
    v56 = *v21;
    v57 = v35;
    v37 = *v21;
    v36 = *(v21 + 1);
    *v58 = *(v21 + 2);
    *&v58[9] = *(v21 + 41);
    v59 = v37;
    v60 = v36;
    v61[0] = *(v21 + 2);
    *(v61 + 9) = *(v21 + 41);
    if (EnumCaseMultiPayload == 5)
    {
      sub_1D5B6B7A4();
      v38 = sub_1D725B45C();
      sub_1D68F2840(&v59, v53, v38, a8, a10, v62);

      return sub_1D5F0E674(&v56);
    }

    else
    {
      sub_1D5B6B7A4();
      v51 = sub_1D725B45C();
      sub_1D68F4444(&v59, v53, v51, a8, a10, v62);

      return sub_1D6726074(&v56);
    }
  }

  else
  {
    v23 = *(v21 + 1);
    v56 = *v21;
    v57 = v23;
    v25 = *v21;
    v24 = *(v21 + 1);
    *v58 = *(v21 + 2);
    *&v58[9] = *(v21 + 41);
    v59 = v25;
    v60 = v24;
    v61[0] = *(v21 + 2);
    *(v61 + 9) = *(v21 + 41);
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D5B6B7A4();
      v26 = sub_1D725B45C();
      sub_1D68F0B40(&v59, v53, v26, a8, a10, v62);

      return sub_1D6794A44(&v56);
    }

    else
    {
      sub_1D5B6B7A4();
      v50 = sub_1D725B45C();
      sub_1D68F1AE8(&v59, v53, v50, a8, a10, v62);

      return sub_1D67949F0(&v56);
    }
  }

  return result;
}

void sub_1D68EF31C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v204 = a7;
  v200 = a5;
  v207 = a4;
  v215 = a3;
  v209 = a2;
  v217 = a9;
  v12 = type metadata accessor for SportsDataVisualizationResponseMetadata();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v199 = &v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for SportsEventStatusResponseEmbed();
  v195 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197, v15);
  v196 = &v192 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v203 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v194 = &v192 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v192 - v25;
  v214 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v214, v27);
  v211 = &v192 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v210 = &v192 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v206 = &v192 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v205 = (&v192 - v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v198 = (&v192 - v40);
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v192 - v43;
  v45 = sub_1D72585BC();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v192 - v50;
  v52 = *(a8 + 24);
  v53 = *(a8 + 32);
  v202 = v54;
  v201 = a6;
  if (v53 == 1)
  {
    v52 = *(*a8 + 48);
  }

  v56 = *a1;
  v55 = a1[1];
  v57 = *(v52 + 16);
  v208 = v55;
  if (v57 && (v58 = sub_1D5B69D90(v56, v55), (v59 & 1) != 0))
  {
    v219 = *(*(v52 + 56) + 8 * v58);
  }

  else
  {
    v219 = MEMORY[0x1E69E7CD0];
  }

  v218 = v51;
  if (v53 == 2)
  {
    v60 = 1;
    v61 = 1;
  }

  else
  {
    v212 = v56;
    v213 = v26;
    v62 = a1;
    v63 = v46;
    v64 = v45;
    if (*(v219 + 16) && (v65 = v219, sub_1D7264A0C(), sub_1D72621EC(), v66 = sub_1D7264A5C(), v67 = v65 + 56, v68 = -1 << *(v65 + 32), v69 = v66 & ~v68, ((*(v67 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) != 0))
    {
      v70 = ~v68;
      v71 = *(v219 + 48);
      while ((*(v71 + v69) & 1) == 0 && (sub_1D72646CC() & 1) == 0)
      {
        v69 = (v69 + 1) & v70;
        if (((*(v67 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v60 = 1;
      v61 = 1;
      v45 = v64;
      v46 = v63;
      v51 = v218;
      v26 = v213;
      a1 = v62;
    }

    else
    {
LABEL_15:
      v60 = 0;
      a1 = v62;
      v61 = *(v62 + *(v214 + 40));
      v45 = v64;
      v46 = v63;
      v51 = v218;
      v26 = v213;
    }

    v56 = v212;
  }

  LOBYTE(v221) = v61;
  sub_1D68F7D24(&v221, v215, v44);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    v72 = a1;

    sub_1D6900328(v44, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v73 = 0xEC00000045524F43;
    v74 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1D7273AE0;
    v221 = 0;
    v222 = 0xE000000000000000;
    if (v61 > 3)
    {
      v111 = 0x80000001D73BCEC0;
      v112 = 0xD000000000000013;
      if (v61 == 6)
      {
        v112 = 0xD000000000000014;
      }

      else
      {
        v111 = 0x80000001D73BCEE0;
      }

      v113 = 0xD000000000000010;
      v114 = 0x80000001D73BCE80;
      if (v61 != 4)
      {
        v113 = 0xD000000000000011;
        v114 = 0x80000001D73BCEA0;
      }

      if (v61 <= 5)
      {
        v80 = v113;
      }

      else
      {
        v80 = v112;
      }

      if (v61 <= 5)
      {
        v81 = v114;
      }

      else
      {
        v81 = v111;
      }
    }

    else
    {
      v76 = 0xEF474E49444E4154;
      v77 = 0x425F5354524F5053;
      if (v61 == 2)
      {
        v77 = 0x535F5354524F5053;
      }

      else
      {
        v76 = 0xEE0054454B434152;
      }

      v78 = 0x80000001D73BCF90;
      v79 = 0xD000000000000015;
      if (!v61)
      {
        v79 = 0x535F5354524F5053;
        v78 = 0xEC00000045524F43;
      }

      if (v61 <= 1)
      {
        v80 = v79;
      }

      else
      {
        v80 = v77;
      }

      if (v61 <= 1)
      {
        v81 = v78;
      }

      else
      {
        v81 = v76;
      }
    }

    MEMORY[0x1DA6F9910](v80, v81);

    v115 = v221;
    v116 = v222;
    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = sub_1D5B7E2C0();
    *(v75 + 32) = v115;
    *(v75 + 40) = v116;
    sub_1D725C30C();

    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v117 = sub_1D725C42C();
    __swift_project_value_buffer(v117, qword_1EDF17598);
    v118 = v72;
    v119 = v72;
    v120 = v210;
    sub_1D68FF774(v119, v210, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v121 = v118;
    v122 = v211;
    sub_1D68FF774(v121, v211, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v123 = sub_1D725C3FC();
    v124 = sub_1D7262EBC();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v221 = v126;
      *v125 = 136446466;
      v127 = *v120;
      v128 = v120[1];

      sub_1D68FF714(v120, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v129 = sub_1D5BC5100(v127, v128, &v221);

      *(v125 + 4) = v129;
      *(v125 + 12) = 2082;
      v130 = *(v122 + *(v214 + 40));
      if (v130 > 3)
      {
        v131 = v217;
        if (*(v122 + *(v214 + 40)) > 5u)
        {
          if (v130 == 6)
          {
            v73 = 0x80000001D73BCEC0;
            v74 = 0xD000000000000014;
          }

          else
          {
            v73 = 0x80000001D73BCEE0;
            v74 = 0xD000000000000013;
          }
        }

        else if (v130 == 4)
        {
          v74 = 0xD000000000000010;
          v73 = 0x80000001D73BCE80;
        }

        else
        {
          v73 = 0x80000001D73BCEA0;
          v74 = 0xD000000000000011;
        }
      }

      else
      {
        v131 = v217;
        if (*(v122 + *(v214 + 40)) > 1u)
        {
          if (v130 == 2)
          {
            v73 = 0xEF474E49444E4154;
          }

          else
          {
            v74 = 0x425F5354524F5053;
            v73 = 0xEE0054454B434152;
          }
        }

        else if (*(v122 + *(v214 + 40)))
        {
          v73 = 0x80000001D73BCF90;
          v74 = 0xD000000000000015;
        }
      }

      sub_1D68FF714(v122, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v171 = sub_1D5BC5100(v74, v73, &v221);

      *(v125 + 14) = v171;
      _os_log_impl(&dword_1D5B42000, v123, v124, "Sports data service no embed mapping found for id=%{public}s, embedType=%{public}s", v125, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v126, -1, -1);
      MEMORY[0x1DA6FD500](v125, -1, -1);

      v170 = 0xF000000000000007;
      goto LABEL_136;
    }

    sub_1D68FF714(v122, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    sub_1D68FF714(v120, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    goto LABEL_120;
  }

  v216 = v46;
  v82 = (*(v46 + 32))(v51, v44, v45);
  v84 = MEMORY[0x1E69E7CD0];
  if (v60)
  {
    v85 = a1;
    sub_1D7264A0C();
    sub_1D72621EC();
    v82 = sub_1D7264A5C();
    v86 = -1 << *(v84 + 32);
    v87 = v82 & ~v86;
    if ((*(v84 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v87))
    {
      v88 = ~v86;
      v89 = *(v84 + 48);
      while ((*(v89 + v87) & 1) == 0)
      {
        v82 = sub_1D72646CC();
        if (v82)
        {
          break;
        }

        v87 = (v87 + 1) & v88;
        if (((*(v84 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v87) & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v221 = v84;
      v82 = sub_1D5FF7EF4(1, v87, isUniquelyReferenced_nonNull_native);
      v84 = v221;
    }

    a1 = v85;
  }

  v91 = a1[7];
  MEMORY[0x1EEE9AC00](v82, v83);
  *(&v192 - 2) = v209;
  v92 = sub_1D5FBE1C8(sub_1D68FE660, (&v192 - 4), v91);
  v93 = v92;
  v94 = v219;
  if (v92 >> 62)
  {
    v95 = sub_1D7263BFC();
  }

  else
  {
    v95 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v95 == *(v91 + 16))
  {
    v96 = sub_1D68F53EC(a1, v204);
    if (v96)
    {
      if ([swift_unknownObjectRetain() isDeprecated])
      {

        if (qword_1EDF17590 != -1)
        {
          swift_once();
        }

        v97 = sub_1D725C42C();
        __swift_project_value_buffer(v97, qword_1EDF17598);
        v98 = v198;
        sub_1D68FF774(a1, v198, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        swift_unknownObjectRetain();
        v99 = sub_1D725C3FC();
        v100 = sub_1D7262EDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v221 = v102;
          *v101 = 136446466;
          v103 = *v98;
          v104 = v98[1];

          sub_1D68FF714(v98, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          v105 = sub_1D5BC5100(v103, v104, &v221);

          *(v101 + 4) = v105;
          *(v101 + 12) = 2082;
          v106 = [v96 description];
          v107 = sub_1D726207C();
          v109 = v108;

          v110 = sub_1D5BC5100(v107, v109, &v221);

          *(v101 + 14) = v110;
          _os_log_impl(&dword_1D5B42000, v99, v100, "Sports data service not created score for deprecated id=%{public}s, event=%{public}s", v101, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6FD500](v102, -1, -1);
          MEMORY[0x1DA6FD500](v101, -1, -1);
          swift_unknownObjectRelease_n();

LABEL_119:
          (*(v216 + 8))(v218, v45);
LABEL_120:
          v170 = 0xF000000000000007;
LABEL_135:
          v131 = v217;
          goto LABEL_136;
        }

        swift_unknownObjectRelease_n();

        v149 = v98;
LABEL_118:
        sub_1D68FF714(v149, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        goto LABEL_119;
      }

      swift_unknownObjectRelease();
    }

    v150 = v200;
    v151 = sub_1D68F5644(a1, v200, v96);
    v210 = sub_1D68F59AC(a1, v150, v96);
    if (*(v207 + 16) && (v152 = sub_1D5B69D90(v56, v208), (v153 & 1) != 0))
    {
      v154 = v196;
      sub_1D68FF774(*(v207 + 56) + *(v195 + 72) * v152, v196, type metadata accessor for SportsEventStatusResponseEmbed);
      v155 = v151;
      v156 = v194;
      sub_1D68FF774(v154 + *(v197 + 20), v194, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      sub_1D68FF714(v154, type metadata accessor for SportsEventStatusResponseEmbed);
      v157 = v156;
      v151 = v155;
    }

    else
    {
      v157 = v199;
      sub_1D68FF774(a1 + *(v214 + 36), v199, type metadata accessor for SportsDataVisualizationResponseMetadata);
    }

    v215 = v96;
    sub_1D68FFE38(v157, v26, type metadata accessor for SportsDataVisualizationResponseEventStatus);
    v158 = sub_1D5BE240C(v56, v208, v201);
    v193 = v45;
    v212 = v56;
    v213 = v26;
    v211 = v93;
    if ((v158 & 1) == 0)
    {
      if (!*(v94 + 16))
      {

LABEL_134:
        v178 = v218;
        v170 = swift_allocObject();
        v179 = *(v216 + 16);
        v180 = v202;
        v179(v202, v178, v45);
        v181 = v45;
        v182 = v203;
        sub_1D68FF774(v213, v203, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        sub_1D6F14BD8(v182, &v220);
        v219 = v220;
        type metadata accessor for SportsScoreDataVisualization();
        v183 = swift_allocObject();
        v184 = v212;
        v183[4] = v210;
        v183[5] = v184;
        v185 = v208;
        v183[6] = v208;
        v183[7] = v215;
        v183[8] = v151;
        v179(v183 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl, v180, v181);
        *(v183 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources) = v211;
        *(v183 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus) = v219;
        *(v183 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata) = 0;
        *(v183 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits) = v84;
        *(v183 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData) = 0;
        v186 = (v183 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config);
        *v186 = 0u;
        v186[1] = 0u;
        v186[2] = 0u;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v221 = sub_1D72583DC();
        v222 = v187;
        MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
        MEMORY[0x1DA6F9910](v212, v185);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v188 = v221;
        v189 = v222;
        v190 = *(v216 + 8);
        v191 = v193;
        v190(v180, v193);
        sub_1D68FF714(v213, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        v190(v218, v191);
        v183[2] = v188;
        v183[3] = v189;
        *(v170 + 16) = v183;
        goto LABEL_135;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v159 = sub_1D7264A5C();
      v160 = v94 + 56;
      v161 = -1 << *(v94 + 32);
      v162 = v159 & ~v161;
      if (((*(v94 + 56 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162) & 1) == 0)
      {
LABEL_132:

LABEL_133:
        v45 = v193;
        goto LABEL_134;
      }

      v163 = ~v161;
      v164 = *(v94 + 48);
      while ((*(v164 + v162) & 1) != 0 && (sub_1D72646CC() & 1) == 0)
      {
        v162 = (v162 + 1) & v163;
        if (((*(v160 + ((v162 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v162) & 1) == 0)
        {
          goto LABEL_132;
        }
      }
    }

    sub_1D7264A0C();
    sub_1D72621EC();
    v172 = sub_1D7264A5C();
    v173 = -1 << *(v84 + 32);
    v174 = v172 & ~v173;
    if ((*(v84 + 56 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174))
    {
      v175 = ~v173;
      v176 = *(v84 + 48);
      while (*(v176 + v174) == 1 && (sub_1D72646CC() & 1) == 0)
      {
        v174 = (v174 + 1) & v175;
        if (((*(v84 + 56 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
        {
          goto LABEL_131;
        }
      }
    }

    else
    {
LABEL_131:
      v177 = swift_isUniquelyReferenced_nonNull_native();
      v221 = v84;
      sub_1D5FF7EF4(0, v174, v177);
      v84 = v221;
    }

    goto LABEL_133;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v132 = sub_1D725C42C();
  __swift_project_value_buffer(v132, qword_1EDF17598);
  v133 = v205;
  sub_1D68FF774(a1, v205, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v134 = v206;
  sub_1D68FF774(a1, v206, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v135 = sub_1D725C3FC();
  v136 = sub_1D7262EBC();
  if (!os_log_type_enabled(v135, v136))
  {

    sub_1D68FF714(v134, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v149 = v133;
    goto LABEL_118;
  }

  v137 = swift_slowAlloc();
  v138 = swift_slowAlloc();
  v221 = v138;
  *v137 = 136446466;
  v139 = *v133;
  v140 = v133[1];

  sub_1D68FF714(v133, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v141 = sub_1D5BC5100(v139, v140, &v221);

  *(v137 + 4) = v141;
  *(v137 + 12) = 2082;
  v142 = *(v134 + *(v214 + 40));
  if (v142 > 3)
  {
    v165 = 0x80000001D73BCEC0;
    v166 = 0xD000000000000013;
    if (v142 == 6)
    {
      v166 = 0xD000000000000014;
    }

    else
    {
      v165 = 0x80000001D73BCEE0;
    }

    v167 = 0xD000000000000010;
    v168 = 0x80000001D73BCE80;
    if (v142 != 4)
    {
      v167 = 0xD000000000000011;
      v168 = 0x80000001D73BCEA0;
    }

    if (*(v134 + *(v214 + 40)) <= 5u)
    {
      v147 = v167;
    }

    else
    {
      v147 = v166;
    }

    if (*(v134 + *(v214 + 40)) <= 5u)
    {
      v148 = v168;
    }

    else
    {
      v148 = v165;
    }
  }

  else
  {
    v143 = 0x535F5354524F5053;
    v144 = 0xEC00000045524F43;
    v145 = 0xEF474E49444E4154;
    v146 = 0x425F5354524F5053;
    if (v142 == 2)
    {
      v146 = 0x535F5354524F5053;
    }

    else
    {
      v145 = 0xEE0054454B434152;
    }

    if (*(v134 + *(v214 + 40)))
    {
      v143 = 0xD000000000000015;
      v144 = 0x80000001D73BCF90;
    }

    if (*(v134 + *(v214 + 40)) <= 1u)
    {
      v147 = v143;
    }

    else
    {
      v147 = v146;
    }

    if (*(v134 + *(v214 + 40)) <= 1u)
    {
      v148 = v144;
    }

    else
    {
      v148 = v145;
    }
  }

  v131 = v217;
  sub_1D68FF714(v134, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v169 = sub_1D5BC5100(v147, v148, &v221);

  *(v137 + 14) = v169;
  _os_log_impl(&dword_1D5B42000, v135, v136, "Sports data service could not create all data sources for id=%{public}s, embedType=%{public}s", v137, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1DA6FD500](v138, -1, -1);
  MEMORY[0x1DA6FD500](v137, -1, -1);

  (*(v216 + 8))(v218, v45);
  v170 = 0xF000000000000007;
LABEL_136:
  *v131 = v170;
}

uint64_t sub_1D68F0B40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v117 = a2;
  v120 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v111 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v116 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v119 = &v111 - v24;
  v25 = a1[2];
  v26 = a1[3];
  LODWORD(v121) = *(a1 + 56);
  if (!*(a4 + 16) || (v27 = a1[1], v114 = *a1, v115 = v27, v28 = a1[5], v29 = a1[6], v113 = v28, v30 = sub_1D5B69D90(v25, v26), (v31 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7270C10;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v121 > 3)
    {
      v54 = 0x80000001D73BCEC0;
      v55 = 0xD000000000000013;
      if (v121 == 6)
      {
        v55 = 0xD000000000000014;
      }

      else
      {
        v54 = 0x80000001D73BCEE0;
      }

      v56 = 0xD000000000000010;
      v57 = 0x80000001D73BCE80;
      if (v121 != 4)
      {
        v56 = 0xD000000000000011;
        v57 = 0x80000001D73BCEA0;
      }

      if (v121 <= 5)
      {
        v52 = v56;
      }

      else
      {
        v52 = v55;
      }

      if (v121 <= 5)
      {
        v53 = v57;
      }

      else
      {
        v53 = v54;
      }
    }

    else
    {
      v48 = 0x535F5354524F5053;
      v49 = 0xEC00000045524F43;
      v50 = 0xEF474E49444E4154;
      v51 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v51 = 0x535F5354524F5053;
      }

      else
      {
        v50 = 0xEE0054454B434152;
      }

      if (v121)
      {
        v48 = 0xD000000000000015;
        v49 = 0x80000001D73BCF90;
      }

      if (v121 <= 1)
      {
        v52 = v48;
      }

      else
      {
        v52 = v51;
      }

      if (v121 <= 1)
      {
        v53 = v49;
      }

      else
      {
        v53 = v50;
      }
    }

    MEMORY[0x1DA6F9910](v52, v53);

    v58 = v122;
    v59 = v123;
    v60 = MEMORY[0x1E69E6158];
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v61 = sub_1D5B7E2C0();
    *(v47 + 32) = v58;
    *(v47 + 40) = v59;
    *(v47 + 96) = v60;
    *(v47 + 104) = v61;
    *(v47 + 64) = v61;
    *(v47 + 72) = v25;
    *(v47 + 80) = v26;

    sub_1D725C30C();

    goto LABEL_70;
  }

  v111 = v29;
  v32 = *(*(a4 + 56) + 8 * v30);
  v33 = *(a5 + 16);
  v112 = v32;
  swift_unknownObjectRetain();
  if (!v33 || (v34 = sub_1D5B69D90(v25, v26), (v35 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1D7270C10;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v121 > 3)
    {
      v70 = 0x80000001D73BCEC0;
      v71 = 0xD000000000000013;
      if (v121 == 6)
      {
        v71 = 0xD000000000000014;
      }

      else
      {
        v70 = 0x80000001D73BCEE0;
      }

      v72 = 0xD000000000000010;
      v73 = 0x80000001D73BCE80;
      if (v121 != 4)
      {
        v72 = 0xD000000000000011;
        v73 = 0x80000001D73BCEA0;
      }

      if (v121 <= 5)
      {
        v68 = v72;
      }

      else
      {
        v68 = v71;
      }

      if (v121 <= 5)
      {
        v69 = v73;
      }

      else
      {
        v69 = v70;
      }
    }

    else
    {
      v64 = 0x535F5354524F5053;
      v65 = 0xEC00000045524F43;
      v66 = 0xEF474E49444E4154;
      v67 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v67 = 0x535F5354524F5053;
      }

      else
      {
        v66 = 0xEE0054454B434152;
      }

      if (v121)
      {
        v64 = 0xD000000000000015;
        v65 = 0x80000001D73BCF90;
      }

      if (v121 <= 1)
      {
        v68 = v64;
      }

      else
      {
        v68 = v67;
      }

      if (v121 <= 1)
      {
        v69 = v65;
      }

      else
      {
        v69 = v66;
      }
    }

    MEMORY[0x1DA6F9910](v68, v69);

    v74 = v122;
    v75 = v123;
    v76 = MEMORY[0x1E69E6158];
    *(v63 + 56) = MEMORY[0x1E69E6158];
    v77 = sub_1D5B7E2C0();
    *(v63 + 32) = v74;
    *(v63 + 40) = v75;
    *(v63 + 96) = v76;
    *(v63 + 104) = v77;
    *(v63 + 64) = v77;
    *(v63 + 72) = v25;
    *(v63 + 80) = v26;

    sub_1D725C30C();
    goto LABEL_69;
  }

  v36 = *(*(a5 + 56) + 8 * v34);
  LOBYTE(v122) = v121;

  sub_1D68F7D24(&v122, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v37 = 0xEC00000045524F43;
    v38 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    v119 = xmmword_1D7273AE0;
    *(v39 + 16) = xmmword_1D7273AE0;
    v122 = 0;
    v123 = 0xE000000000000000;
    v40 = v121;
    if (v121 > 3)
    {
      v41 = 0x80000001D73BCEC0;
      v93 = 0xD000000000000014;
      if (v121 != 6)
      {
        v93 = 0xD000000000000013;
        v41 = 0x80000001D73BCEE0;
      }

      v43 = 0x80000001D73BCE80;
      if (v121 == 4)
      {
        v94 = 0xD000000000000010;
      }

      else
      {
        v94 = 0xD000000000000011;
      }

      if (v121 != 4)
      {
        v43 = 0x80000001D73BCEA0;
      }

      v45 = v121 <= 5;
      if (v121 <= 5)
      {
        v46 = v94;
      }

      else
      {
        v46 = v93;
      }
    }

    else
    {
      v41 = 0xEF474E49444E4154;
      v42 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v42 = 0x535F5354524F5053;
      }

      else
      {
        v41 = 0xEE0054454B434152;
      }

      v43 = 0x80000001D73BCF90;
      v44 = 0xD000000000000015;
      if (!v121)
      {
        v44 = 0x535F5354524F5053;
        v43 = 0xEC00000045524F43;
      }

      v45 = v121 <= 1;
      if (v121 <= 1)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }
    }

    if (v45)
    {
      v95 = v43;
    }

    else
    {
      v95 = v41;
    }

    MEMORY[0x1DA6F9910](v46, v95);

    v96 = v122;
    v97 = v123;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v98 = sub_1D5B7E2C0();
    *(v39 + 64) = v98;
    *(v39 + 32) = v96;
    *(v39 + 40) = v97;
    sub_1D725C30C();

    sub_1D7262EBC();
    v99 = swift_allocObject();
    *(v99 + 16) = v119;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v40 > 3)
    {
      if (v40 > 5)
      {
        if (v40 == 6)
        {
          v37 = 0x80000001D73BCEC0;
          v38 = 0xD000000000000014;
        }

        else
        {
          v37 = 0x80000001D73BCEE0;
          v38 = 0xD000000000000013;
        }
      }

      else if (v40 == 4)
      {
        v37 = 0x80000001D73BCE80;
        v38 = 0xD000000000000010;
      }

      else
      {
        v37 = 0x80000001D73BCEA0;
        v38 = 0xD000000000000011;
      }
    }

    else if (v40 > 1)
    {
      if (v40 == 2)
      {
        v37 = 0xEF474E49444E4154;
      }

      else
      {
        v38 = 0x425F5354524F5053;
        v37 = 0xEE0054454B434152;
      }
    }

    else if (v40)
    {
      v37 = 0x80000001D73BCF90;
      v38 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v38, v37);

    v107 = v122;
    v108 = v123;
    *(v99 + 56) = MEMORY[0x1E69E6158];
    *(v99 + 64) = v98;
    *(v99 + 32) = v107;
    *(v99 + 40) = v108;
    sub_1D725C30C();
LABEL_69:

    result = swift_unknownObjectRelease();
    goto LABEL_70;
  }

  v79 = *(v15 + 32);
  v80 = v79(v119, v13, v14);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v111 - 2) = v117;
  v82 = sub_1D5FBE1C8(sub_1D69019B0, (&v111 - 4), v111);
  if (v82 >> 62)
  {
    v110 = v82;
    v83 = sub_1D7263BFC();
    v82 = v110;
  }

  else
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v83 == *(v111 + 16))
  {
    v121 = v79;
    v117 = v82;
    v118 = swift_allocObject();
    v84 = *(v15 + 16);
    v84(v21, v119, v14);
    type metadata accessor for SportsBoxScoreDataVisualization();
    v85 = swift_allocObject();
    v86 = v115;
    *(v85 + 4) = v114;
    *(v85 + 5) = v86;
    *(v85 + 6) = v112;
    v84(&v85[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl], v21, v14);
    *&v85[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources] = v117;
    *&v85[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster] = v36;
    v87 = &v85[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config];
    *(v87 + 1) = 0u;
    *(v87 + 2) = 0u;
    *v87 = 0u;
    swift_unknownObjectRetain();

    v122 = sub_1D72583DC();
    v123 = v88;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v114, v86);
    v89 = v123;
    *(v85 + 2) = v122;
    *(v85 + 3) = v89;
    v90 = v116;
    v84(v116, v21, v14);
    swift_unknownObjectRelease();
    v91 = *(v15 + 8);
    v91(v21, v14);
    v91(v119, v14);
    result = v121(&v85[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl], v90, v14);
    v92 = v118;
    *(v118 + 16) = v85;
    v78 = v92 | 0x6000000000000000;
    goto LABEL_71;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v100 = sub_1D725C42C();
  __swift_project_value_buffer(v100, qword_1EDF17598);

  v101 = sub_1D725C3FC();
  v102 = sub_1D7262EBC();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v122 = v104;
    *v103 = 136446210;
    if (v121 > 3)
    {
      if (v121 > 5)
      {
        if (v121 == 6)
        {
          v106 = 0x80000001D73BCEC0;
          v105 = 0xD000000000000014;
        }

        else
        {
          v106 = 0x80000001D73BCEE0;
          v105 = 0xD000000000000013;
        }
      }

      else if (v121 == 4)
      {
        v105 = 0xD000000000000010;
        v106 = 0x80000001D73BCE80;
      }

      else
      {
        v106 = 0x80000001D73BCEA0;
        v105 = 0xD000000000000011;
      }
    }

    else
    {
      v105 = 0x535F5354524F5053;
      if (v121 > 1)
      {
        if (v121 == 2)
        {
          v106 = 0xEF474E49444E4154;
        }

        else
        {
          v105 = 0x425F5354524F5053;
          v106 = 0xEE0054454B434152;
        }
      }

      else if (v121)
      {
        v106 = 0x80000001D73BCF90;
        v105 = 0xD000000000000015;
      }

      else
      {
        v106 = 0xEC00000045524F43;
      }
    }

    v109 = sub_1D5BC5100(v105, v106, &v122);

    *(v103 + 4) = v109;
    _os_log_impl(&dword_1D5B42000, v101, v102, "Sports data service could not create all data sources for embedType=%{public}s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x1DA6FD500](v104, -1, -1);
    MEMORY[0x1DA6FD500](v103, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  result = (*(v15 + 8))(v119, v14);
LABEL_70:
  v78 = 0xF000000000000007;
LABEL_71:
  *v120 = v78;
  return result;
}

uint64_t sub_1D68F1AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  v111 = a5;
  v116 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v105 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v114 = v14;
  *&v115 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v112 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v105 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v113 = &v105 - v24;
  v26 = a1[2];
  v25 = a1[3];
  v27 = *(a1 + 56);
  if (!*(a4 + 16) || (v28 = a1[1], v109 = *a1, v110 = v28, v29 = a1[5], v30 = a1[6], v108 = v29, v31 = sub_1D5B69D90(v26, v25), (v32 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D7270C10;
    v117 = 0;
    v118 = 0xE000000000000000;
    if (v27 > 3)
    {
      v52 = 0x80000001D73BCEC0;
      v53 = 0xD000000000000013;
      if (v27 == 6)
      {
        v53 = 0xD000000000000014;
      }

      else
      {
        v52 = 0x80000001D73BCEE0;
      }

      v54 = 0xD000000000000010;
      v55 = 0x80000001D73BCE80;
      if (v27 != 4)
      {
        v54 = 0xD000000000000011;
        v55 = 0x80000001D73BCEA0;
      }

      if (v27 <= 5)
      {
        v50 = v54;
      }

      else
      {
        v50 = v53;
      }

      if (v27 <= 5)
      {
        v51 = v55;
      }

      else
      {
        v51 = v52;
      }
    }

    else
    {
      v46 = 0x535F5354524F5053;
      v47 = 0xEC00000045524F43;
      v48 = 0xEF474E49444E4154;
      v49 = 0x425F5354524F5053;
      if (v27 == 2)
      {
        v49 = 0x535F5354524F5053;
      }

      else
      {
        v48 = 0xEE0054454B434152;
      }

      if (v27)
      {
        v46 = 0xD000000000000015;
        v47 = 0x80000001D73BCF90;
      }

      if (v27 <= 1)
      {
        v50 = v46;
      }

      else
      {
        v50 = v49;
      }

      if (v27 <= 1)
      {
        v51 = v47;
      }

      else
      {
        v51 = v48;
      }
    }

    MEMORY[0x1DA6F9910](v50, v51);

    v56 = v117;
    v57 = v118;
    v58 = MEMORY[0x1E69E6158];
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v59 = sub_1D5B7E2C0();
    *(v45 + 32) = v56;
    *(v45 + 40) = v57;
    *(v45 + 96) = v58;
    *(v45 + 104) = v59;
    *(v45 + 64) = v59;
    *(v45 + 72) = v26;
    *(v45 + 80) = v25;

    sub_1D725C30C();

    goto LABEL_41;
  }

  v33 = *(*(a4 + 56) + 8 * v31);
  LOBYTE(v117) = v27;
  v107 = v33;
  swift_unknownObjectRetain();
  sub_1D68F7D24(&v117, a3, v13);
  v35 = v114;
  v34 = v115;
  if ((*(v115 + 48))(v13, 1, v114) == 1)
  {
    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v36 = 0xEC00000045524F43;
    v37 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    v115 = xmmword_1D7273AE0;
    *(v38 + 16) = xmmword_1D7273AE0;
    v117 = 0;
    v118 = 0xE000000000000000;
    if (v27 > 3)
    {
      v39 = 0x80000001D73BCEC0;
      v71 = 0xD000000000000014;
      if (v27 != 6)
      {
        v71 = 0xD000000000000013;
        v39 = 0x80000001D73BCEE0;
      }

      v41 = 0x80000001D73BCE80;
      if (v27 == 4)
      {
        v72 = 0xD000000000000010;
      }

      else
      {
        v72 = 0xD000000000000011;
      }

      if (v27 != 4)
      {
        v41 = 0x80000001D73BCEA0;
      }

      v43 = v27 <= 5;
      if (v27 <= 5)
      {
        v44 = v72;
      }

      else
      {
        v44 = v71;
      }
    }

    else
    {
      v39 = 0xEF474E49444E4154;
      v40 = 0x425F5354524F5053;
      if (v27 == 2)
      {
        v40 = 0x535F5354524F5053;
      }

      else
      {
        v39 = 0xEE0054454B434152;
      }

      v41 = 0x80000001D73BCF90;
      v42 = 0xD000000000000015;
      if (!v27)
      {
        v42 = 0x535F5354524F5053;
        v41 = 0xEC00000045524F43;
      }

      v43 = v27 <= 1;
      if (v27 <= 1)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }
    }

    if (v43)
    {
      v73 = v41;
    }

    else
    {
      v73 = v39;
    }

    MEMORY[0x1DA6F9910](v44, v73);

    v74 = v117;
    v75 = v118;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v76 = sub_1D5B7E2C0();
    *(v38 + 64) = v76;
    *(v38 + 32) = v74;
    *(v38 + 40) = v75;
    sub_1D725C30C();

    sub_1D7262EBC();
    v77 = swift_allocObject();
    *(v77 + 16) = v115;
    v117 = 0;
    v118 = 0xE000000000000000;
    if (v27 > 3)
    {
      if (v27 > 5)
      {
        if (v27 == 6)
        {
          v36 = 0x80000001D73BCEC0;
          v37 = 0xD000000000000014;
        }

        else
        {
          v36 = 0x80000001D73BCEE0;
          v37 = 0xD000000000000013;
        }
      }

      else if (v27 == 4)
      {
        v36 = 0x80000001D73BCE80;
        v37 = 0xD000000000000010;
      }

      else
      {
        v36 = 0x80000001D73BCEA0;
        v37 = 0xD000000000000011;
      }
    }

    else if (v27 > 1)
    {
      if (v27 == 2)
      {
        v36 = 0xEF474E49444E4154;
      }

      else
      {
        v37 = 0x425F5354524F5053;
        v36 = 0xEE0054454B434152;
      }
    }

    else if (v27)
    {
      v36 = 0x80000001D73BCF90;
      v37 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v37, v36);

    v102 = v117;
    v103 = v118;
    *(v77 + 56) = MEMORY[0x1E69E6158];
    *(v77 + 64) = v76;
    *(v77 + 32) = v102;
    *(v77 + 40) = v103;
    sub_1D725C30C();

    result = swift_unknownObjectRelease();
LABEL_41:
    v61 = 0xF000000000000007;
    goto LABEL_42;
  }

  v106 = *(v34 + 32);
  v62 = v106(v113, v13, v35);
  MEMORY[0x1EEE9AC00](v62, v63);
  *(&v105 - 2) = a2;
  v64 = sub_1D5FBE1C8(sub_1D69019B0, (&v105 - 4), v30);
  if (v64 >> 62)
  {
    v104 = v64;
    v65 = sub_1D7263BFC();
    v64 = v104;
  }

  else
  {
    v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v65 != *(v30 + 16))
  {

    if (qword_1EDF17590 != -1)
    {
      swift_once();
    }

    v78 = sub_1D725C42C();
    __swift_project_value_buffer(v78, qword_1EDF17598);

    v79 = sub_1D725C3FC();
    v80 = sub_1D7262EBC();

    v81 = os_log_type_enabled(v79, v80);
    v82 = v115;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v117 = v84;
      *v83 = 136446210;
      if (v27 > 3)
      {
        v97 = 0x80000001D73BCEC0;
        v98 = 0xD000000000000013;
        if (v27 == 6)
        {
          v98 = 0xD000000000000014;
        }

        else
        {
          v97 = 0x80000001D73BCEE0;
        }

        v99 = 0xD000000000000010;
        v100 = 0x80000001D73BCE80;
        if (v27 != 4)
        {
          v99 = 0xD000000000000011;
          v100 = 0x80000001D73BCEA0;
        }

        if (v27 <= 5)
        {
          v85 = v99;
        }

        else
        {
          v85 = v98;
        }

        if (v27 <= 5)
        {
          v86 = v100;
        }

        else
        {
          v86 = v97;
        }
      }

      else
      {
        v85 = 0x535F5354524F5053;
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v86 = 0xEF474E49444E4154;
          }

          else
          {
            v85 = 0x425F5354524F5053;
            v86 = 0xEE0054454B434152;
          }
        }

        else if (v27)
        {
          v86 = 0x80000001D73BCF90;
          v85 = 0xD000000000000015;
        }

        else
        {
          v86 = 0xEC00000045524F43;
        }
      }

      v101 = sub_1D5BC5100(v85, v86, &v117);

      *(v83 + 4) = v101;
      _os_log_impl(&dword_1D5B42000, v79, v80, "Sports data service could not create all data sources for embedType=%{public}s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x1DA6FD500](v84, -1, -1);
      MEMORY[0x1DA6FD500](v83, -1, -1);
      swift_unknownObjectRelease();

      result = (*(v115 + 8))(v113, v114);
    }

    else
    {

      swift_unknownObjectRelease();
      result = (*(v82 + 8))(v113, v114);
    }

    goto LABEL_41;
  }

  v108 = v64;
  v66 = *(v115 + 16);
  v66(v21, v113, v35);
  v67 = v111;
  if (*(v111 + 16) && (v68 = sub_1D5B69D90(v26, v25), (v69 & 1) != 0))
  {
    v70 = *(*(v67 + 56) + 8 * v68);
  }

  else
  {
    v70 = 0;
  }

  v111 = swift_allocObject();
  type metadata accessor for SportsLineScoreDataVisualization();
  v87 = swift_allocObject();
  v88 = v109;
  v89 = v110;
  *(v87 + 4) = v109;
  *(v87 + 5) = v89;
  *(v87 + 6) = v107;
  v90 = v114;
  v66(&v87[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl], v21, v114);
  *&v87[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources] = v108;
  *&v87[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster] = v70;
  v91 = &v87[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config];
  *(v91 + 1) = 0u;
  *(v91 + 2) = 0u;
  *v91 = 0u;
  swift_unknownObjectRetain();

  v117 = sub_1D72583DC();
  v118 = v92;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v88, v89);
  v93 = v118;
  *(v87 + 2) = v117;
  *(v87 + 3) = v93;
  v94 = v112;
  v66(v112, v21, v90);
  swift_unknownObjectRelease();
  v95 = *(v115 + 8);
  v95(v21, v90);
  v95(v113, v90);
  result = v106(&v87[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl], v94, v90);
  v96 = v111;
  *(v111 + 16) = v87;
  v61 = v96 | 0x8000000000000000;
LABEL_42:
  *v116 = v61;
  return result;
}

uint64_t sub_1D68F2840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  v117 = a2;
  v120 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v111 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v116 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v119 = &v111 - v24;
  v25 = a1[2];
  v26 = a1[3];
  LODWORD(v121) = *(a1 + 56);
  if (!*(a4 + 16) || (v27 = a1[1], v114 = *a1, v115 = v27, v28 = a1[5], v29 = a1[6], v113 = v28, v30 = sub_1D5B69D90(v25, v26), (v31 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7270C10;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v121 > 3)
    {
      v54 = 0x80000001D73BCEC0;
      v55 = 0xD000000000000013;
      if (v121 == 6)
      {
        v55 = 0xD000000000000014;
      }

      else
      {
        v54 = 0x80000001D73BCEE0;
      }

      v56 = 0xD000000000000010;
      v57 = 0x80000001D73BCE80;
      if (v121 != 4)
      {
        v56 = 0xD000000000000011;
        v57 = 0x80000001D73BCEA0;
      }

      if (v121 <= 5)
      {
        v52 = v56;
      }

      else
      {
        v52 = v55;
      }

      if (v121 <= 5)
      {
        v53 = v57;
      }

      else
      {
        v53 = v54;
      }
    }

    else
    {
      v48 = 0x535F5354524F5053;
      v49 = 0xEC00000045524F43;
      v50 = 0xEF474E49444E4154;
      v51 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v51 = 0x535F5354524F5053;
      }

      else
      {
        v50 = 0xEE0054454B434152;
      }

      if (v121)
      {
        v48 = 0xD000000000000015;
        v49 = 0x80000001D73BCF90;
      }

      if (v121 <= 1)
      {
        v52 = v48;
      }

      else
      {
        v52 = v51;
      }

      if (v121 <= 1)
      {
        v53 = v49;
      }

      else
      {
        v53 = v50;
      }
    }

    MEMORY[0x1DA6F9910](v52, v53);

    v58 = v122;
    v59 = v123;
    v60 = MEMORY[0x1E69E6158];
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v61 = sub_1D5B7E2C0();
    *(v47 + 32) = v58;
    *(v47 + 40) = v59;
    *(v47 + 96) = v60;
    *(v47 + 104) = v61;
    *(v47 + 64) = v61;
    *(v47 + 72) = v25;
    *(v47 + 80) = v26;

    sub_1D725C30C();

    goto LABEL_70;
  }

  v111 = v29;
  v32 = *(*(a4 + 56) + 8 * v30);
  v33 = *(a5 + 16);
  v112 = v32;
  swift_unknownObjectRetain();
  if (!v33 || (v34 = sub_1D5B69D90(v25, v26), (v35 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1D7270C10;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v121 > 3)
    {
      v70 = 0x80000001D73BCEC0;
      v71 = 0xD000000000000013;
      if (v121 == 6)
      {
        v71 = 0xD000000000000014;
      }

      else
      {
        v70 = 0x80000001D73BCEE0;
      }

      v72 = 0xD000000000000010;
      v73 = 0x80000001D73BCE80;
      if (v121 != 4)
      {
        v72 = 0xD000000000000011;
        v73 = 0x80000001D73BCEA0;
      }

      if (v121 <= 5)
      {
        v68 = v72;
      }

      else
      {
        v68 = v71;
      }

      if (v121 <= 5)
      {
        v69 = v73;
      }

      else
      {
        v69 = v70;
      }
    }

    else
    {
      v64 = 0x535F5354524F5053;
      v65 = 0xEC00000045524F43;
      v66 = 0xEF474E49444E4154;
      v67 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v67 = 0x535F5354524F5053;
      }

      else
      {
        v66 = 0xEE0054454B434152;
      }

      if (v121)
      {
        v64 = 0xD000000000000015;
        v65 = 0x80000001D73BCF90;
      }

      if (v121 <= 1)
      {
        v68 = v64;
      }

      else
      {
        v68 = v67;
      }

      if (v121 <= 1)
      {
        v69 = v65;
      }

      else
      {
        v69 = v66;
      }
    }

    MEMORY[0x1DA6F9910](v68, v69);

    v74 = v122;
    v75 = v123;
    v76 = MEMORY[0x1E69E6158];
    *(v63 + 56) = MEMORY[0x1E69E6158];
    v77 = sub_1D5B7E2C0();
    *(v63 + 32) = v74;
    *(v63 + 40) = v75;
    *(v63 + 96) = v76;
    *(v63 + 104) = v77;
    *(v63 + 64) = v77;
    *(v63 + 72) = v25;
    *(v63 + 80) = v26;

    sub_1D725C30C();
    goto LABEL_69;
  }

  v36 = *(*(a5 + 56) + 8 * v34);
  LOBYTE(v122) = v121;

  sub_1D68F7D24(&v122, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v37 = 0xEC00000045524F43;
    v38 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    v119 = xmmword_1D7273AE0;
    *(v39 + 16) = xmmword_1D7273AE0;
    v122 = 0;
    v123 = 0xE000000000000000;
    v40 = v121;
    if (v121 > 3)
    {
      v41 = 0x80000001D73BCEC0;
      v93 = 0xD000000000000014;
      if (v121 != 6)
      {
        v93 = 0xD000000000000013;
        v41 = 0x80000001D73BCEE0;
      }

      v43 = 0x80000001D73BCE80;
      if (v121 == 4)
      {
        v94 = 0xD000000000000010;
      }

      else
      {
        v94 = 0xD000000000000011;
      }

      if (v121 != 4)
      {
        v43 = 0x80000001D73BCEA0;
      }

      v45 = v121 <= 5;
      if (v121 <= 5)
      {
        v46 = v94;
      }

      else
      {
        v46 = v93;
      }
    }

    else
    {
      v41 = 0xEF474E49444E4154;
      v42 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v42 = 0x535F5354524F5053;
      }

      else
      {
        v41 = 0xEE0054454B434152;
      }

      v43 = 0x80000001D73BCF90;
      v44 = 0xD000000000000015;
      if (!v121)
      {
        v44 = 0x535F5354524F5053;
        v43 = 0xEC00000045524F43;
      }

      v45 = v121 <= 1;
      if (v121 <= 1)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }
    }

    if (v45)
    {
      v95 = v43;
    }

    else
    {
      v95 = v41;
    }

    MEMORY[0x1DA6F9910](v46, v95);

    v96 = v122;
    v97 = v123;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v98 = sub_1D5B7E2C0();
    *(v39 + 64) = v98;
    *(v39 + 32) = v96;
    *(v39 + 40) = v97;
    sub_1D725C30C();

    sub_1D7262EBC();
    v99 = swift_allocObject();
    *(v99 + 16) = v119;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v40 > 3)
    {
      if (v40 > 5)
      {
        if (v40 == 6)
        {
          v37 = 0x80000001D73BCEC0;
          v38 = 0xD000000000000014;
        }

        else
        {
          v37 = 0x80000001D73BCEE0;
          v38 = 0xD000000000000013;
        }
      }

      else if (v40 == 4)
      {
        v37 = 0x80000001D73BCE80;
        v38 = 0xD000000000000010;
      }

      else
      {
        v37 = 0x80000001D73BCEA0;
        v38 = 0xD000000000000011;
      }
    }

    else if (v40 > 1)
    {
      if (v40 == 2)
      {
        v37 = 0xEF474E49444E4154;
      }

      else
      {
        v38 = 0x425F5354524F5053;
        v37 = 0xEE0054454B434152;
      }
    }

    else if (v40)
    {
      v37 = 0x80000001D73BCF90;
      v38 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v38, v37);

    v107 = v122;
    v108 = v123;
    *(v99 + 56) = MEMORY[0x1E69E6158];
    *(v99 + 64) = v98;
    *(v99 + 32) = v107;
    *(v99 + 40) = v108;
    sub_1D725C30C();
LABEL_69:

    result = swift_unknownObjectRelease();
    goto LABEL_70;
  }

  v79 = *(v15 + 32);
  v80 = v79(v119, v13, v14);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v111 - 2) = v117;
  v82 = sub_1D5FBE1C8(sub_1D69019B0, (&v111 - 4), v111);
  if (v82 >> 62)
  {
    v110 = v82;
    v83 = sub_1D7263BFC();
    v82 = v110;
  }

  else
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v83 == *(v111 + 16))
  {
    v121 = v79;
    v117 = v82;
    v118 = swift_allocObject();
    v84 = *(v15 + 16);
    v84(v21, v119, v14);
    type metadata accessor for SportsInjuryReportDataVisualization();
    v85 = swift_allocObject();
    v86 = v115;
    *(v85 + 4) = v114;
    *(v85 + 5) = v86;
    *(v85 + 6) = v112;
    v84(&v85[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_embedUrl], v21, v14);
    *&v85[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources] = v117;
    *&v85[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_roster] = v36;
    v87 = &v85[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_config];
    *(v87 + 1) = 0u;
    *(v87 + 2) = 0u;
    *v87 = 0u;
    swift_unknownObjectRetain();

    v122 = sub_1D72583DC();
    v123 = v88;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v114, v86);
    v89 = v123;
    *(v85 + 2) = v122;
    *(v85 + 3) = v89;
    v90 = v116;
    v84(v116, v21, v14);
    swift_unknownObjectRelease();
    v91 = *(v15 + 8);
    v91(v21, v14);
    v91(v119, v14);
    result = v121(&v85[OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_configuredEmbedUrl], v90, v14);
    v92 = v118;
    *(v118 + 16) = v85;
    v78 = v92 | 0xA000000000000000;
    goto LABEL_71;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v100 = sub_1D725C42C();
  __swift_project_value_buffer(v100, qword_1EDF17598);

  v101 = sub_1D725C3FC();
  v102 = sub_1D7262EBC();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v122 = v104;
    *v103 = 136446210;
    if (v121 > 3)
    {
      if (v121 > 5)
      {
        if (v121 == 6)
        {
          v106 = 0x80000001D73BCEC0;
          v105 = 0xD000000000000014;
        }

        else
        {
          v106 = 0x80000001D73BCEE0;
          v105 = 0xD000000000000013;
        }
      }

      else if (v121 == 4)
      {
        v105 = 0xD000000000000010;
        v106 = 0x80000001D73BCE80;
      }

      else
      {
        v106 = 0x80000001D73BCEA0;
        v105 = 0xD000000000000011;
      }
    }

    else
    {
      v105 = 0x535F5354524F5053;
      if (v121 > 1)
      {
        if (v121 == 2)
        {
          v106 = 0xEF474E49444E4154;
        }

        else
        {
          v105 = 0x425F5354524F5053;
          v106 = 0xEE0054454B434152;
        }
      }

      else if (v121)
      {
        v106 = 0x80000001D73BCF90;
        v105 = 0xD000000000000015;
      }

      else
      {
        v106 = 0xEC00000045524F43;
      }
    }

    v109 = sub_1D5BC5100(v105, v106, &v122);

    *(v103 + 4) = v109;
    _os_log_impl(&dword_1D5B42000, v101, v102, "Sports data service could not create all data sources for embedType=%{public}s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x1DA6FD500](v104, -1, -1);
    MEMORY[0x1DA6FD500](v103, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  result = (*(v15 + 8))(v119, v14);
LABEL_70:
  v78 = 0xF000000000000007;
LABEL_71:
  *v120 = v78;
  return result;
}

uint64_t sub_1D68F37EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v96 - v11;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v103 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v102 = &v96 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v96 - v22;
  v24 = *(a1 + 16);
  v109[0] = *a1;
  v109[1] = v24;
  v110 = *(a1 + 32);
  LODWORD(a1) = *(a1 + 48);
  v111 = a1;
  LOBYTE(v107) = a1;
  sub_1D68F7D24(&v107, a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v105 = a5;
    sub_1D6900328(v12, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
LABEL_89:
      swift_once();
    }

    v26 = 0xEC00000045524F43;
    v27 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    v104 = xmmword_1D7273AE0;
    *(v28 + 16) = xmmword_1D7273AE0;
    v107 = 0;
    v108 = 0xE000000000000000;
    if (a1 > 3)
    {
      v29 = 0x80000001D73BCEC0;
      v52 = 0xD000000000000014;
      if (a1 != 6)
      {
        v52 = 0xD000000000000013;
        v29 = 0x80000001D73BCEE0;
      }

      v31 = 0x80000001D73BCE80;
      if (a1 == 4)
      {
        v53 = 0xD000000000000010;
      }

      else
      {
        v53 = 0xD000000000000011;
      }

      if (a1 != 4)
      {
        v31 = 0x80000001D73BCEA0;
      }

      v33 = a1 <= 5;
      if (a1 <= 5)
      {
        v34 = v53;
      }

      else
      {
        v34 = v52;
      }
    }

    else
    {
      v29 = 0xEF474E49444E4154;
      v30 = 0x425F5354524F5053;
      if (a1 == 2)
      {
        v30 = 0x535F5354524F5053;
      }

      else
      {
        v29 = 0xEE0054454B434152;
      }

      v31 = 0x80000001D73BCF90;
      v32 = 0xD000000000000015;
      if (!a1)
      {
        v32 = 0x535F5354524F5053;
        v31 = 0xEC00000045524F43;
      }

      v33 = a1 <= 1;
      if (a1 <= 1)
      {
        v34 = v32;
      }

      else
      {
        v34 = v30;
      }
    }

    if (v33)
    {
      v54 = v31;
    }

    else
    {
      v54 = v29;
    }

    MEMORY[0x1DA6F9910](v34, v54);

    v56 = v107;
    v55 = v108;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v57 = sub_1D5B7E2C0();
    *(v28 + 64) = v57;
    *(v28 + 32) = v56;
    *(v28 + 40) = v55;
    sub_1D725C30C();

    sub_1D7262EBC();
    v58 = swift_allocObject();
    *(v58 + 16) = v104;
    v107 = 0;
    v108 = 0xE000000000000000;
    if (a1 > 3)
    {
      if (a1 > 5)
      {
        if (a1 == 6)
        {
          v26 = 0x80000001D73BCEC0;
          v27 = 0xD000000000000014;
        }

        else
        {
          v26 = 0x80000001D73BCEE0;
          v27 = 0xD000000000000013;
        }
      }

      else if (a1 == 4)
      {
        v26 = 0x80000001D73BCE80;
        v27 = 0xD000000000000010;
      }

      else
      {
        v26 = 0x80000001D73BCEA0;
        v27 = 0xD000000000000011;
      }
    }

    else if (a1 > 1)
    {
      if (a1 == 2)
      {
        v26 = 0xEF474E49444E4154;
      }

      else
      {
        v27 = 0x425F5354524F5053;
        v26 = 0xEE0054454B434152;
      }
    }

    else if (a1)
    {
      v26 = 0x80000001D73BCF90;
      v27 = 0xD000000000000015;
    }

    v92 = MEMORY[0x1E69E6158];
    MEMORY[0x1DA6F9910](v27, v26);

    v93 = v107;
    v94 = v108;
    *(v58 + 56) = v92;
    *(v58 + 64) = v57;
    *(v58 + 32) = v93;
    *(v58 + 40) = v94;
    sub_1D725C30C();

    v86 = 0xF000000000000007;
    goto LABEL_86;
  }

  v35 = *(v14 + 32);
  *&v104 = v23;
  v101 = v14 + 32;
  v100 = v35;
  v36 = v35(v23, v12, v13);
  v37 = *(&v110 + 1);
  MEMORY[0x1EEE9AC00](v36, v38);
  *(&v96 - 2) = a2;
  v39 = sub_1D5FBE1C8(sub_1D69019B0, (&v96 - 4), v37);
  if (v39 >> 62)
  {
    v95 = v39;
    v40 = sub_1D7263BFC();
    v39 = v95;
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v40 == *(v37 + 16))
  {
    v105 = a5;
    v99 = v39;
    v41 = v110;
    v112[0] = v110;
    v42 = MEMORY[0x1E69E7CC0];
    v107 = MEMORY[0x1E69E7CC0];
    a1 = *(v110 + 16);
    sub_1D68FF774(v112, v106, sub_1D5B499C4);
    if (!a1)
    {
LABEL_64:
      v98 = swift_allocObject();
      sub_1D68FF714(v112, sub_1D5B499C4);
      v73 = v109[0];
      v74 = sub_1D68F5E28(v109, a4);
      v75 = *(v14 + 16);
      v76 = v42;
      v77 = v102;
      v75(v102, v104, v13);
      type metadata accessor for SportsStandingDataVisualization();
      v78 = swift_allocObject();
      *(v78 + 32) = v76;
      *(v78 + 40) = v73;
      *(v78 + 56) = v74;
      v75((v78 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_embedUrl), v77, v13);
      *(v78 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources) = v99;
      *(v78 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_metadata) = 1;
      v79 = (v78 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_config);
      v79[1] = 0u;
      v79[2] = 0u;
      *v79 = 0u;
      swift_unknownObjectRetain();

      v107 = sub_1D72583DC();
      v108 = v80;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v73, *(&v73 + 1));
      v81 = v108;
      *(v78 + 16) = v107;
      *(v78 + 24) = v81;
      v82 = v103;
      v75(v103, v77, v13);
      swift_unknownObjectRelease();
      v83 = *(v14 + 8);
      v83(v77, v13);
      v83(v104, v13);
      result = v100(v78 + OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_configuredEmbedUrl, v82, v13);
      v85 = v98;
      *(v98 + 16) = v78;
      v86 = v85 | 0x2000000000000000;
LABEL_86:
      a5 = v105;
      goto LABEL_87;
    }

    v43 = 0;
    v44 = v41 + 40;
    v96 = a1 - 1;
    v97 = v14;
    v98 = v41 + 40;
LABEL_17:
    v45 = (v44 + 16 * v43);
    v46 = v43;
    while (1)
    {
      if (v46 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_89;
      }

      if (*(a4 + 16))
      {
        v47 = *(v45 - 1);
        v48 = *v45;

        sub_1D5B69D90(v47, v48);
        if (v49)
        {
          swift_unknownObjectRetain();

          MEMORY[0x1DA6F9CE0](v50);
          if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          v43 = v46 + 1;
          sub_1D726278C();
          v42 = v107;
          v51 = v96 == v46;
          v14 = v97;
          v44 = v98;
          if (v51)
          {
            goto LABEL_64;
          }

          goto LABEL_17;
        }
      }

      ++v46;
      v45 += 2;
      if (a1 == v46)
      {
        v14 = v97;
        goto LABEL_64;
      }
    }
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725C42C();
  __swift_project_value_buffer(v59, qword_1EDF17598);
  sub_1D68FE67C(v109, &v107);
  v60 = sub_1D725C3FC();
  v61 = sub_1D7262EBC();
  sub_1D68FE6D8(v109);
  v62 = os_log_type_enabled(v60, v61);
  v63 = v104;
  if (v62)
  {
    v64 = v14;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v107 = v66;
    *v65 = 136446210;
    if (a1 > 3)
    {
      v87 = 0x80000001D73BCEC0;
      v88 = 0xD000000000000013;
      if (a1 == 6)
      {
        v88 = 0xD000000000000014;
      }

      else
      {
        v87 = 0x80000001D73BCEE0;
      }

      v89 = 0xD000000000000010;
      v90 = 0x80000001D73BCE80;
      if (a1 != 4)
      {
        v89 = 0xD000000000000011;
        v90 = 0x80000001D73BCEA0;
      }

      if (a1 <= 5)
      {
        v71 = v89;
      }

      else
      {
        v71 = v88;
      }

      if (a1 <= 5)
      {
        v72 = v90;
      }

      else
      {
        v72 = v87;
      }
    }

    else
    {
      v67 = 0x535F5354524F5053;
      v68 = 0xEC00000045524F43;
      v69 = 0xEF474E49444E4154;
      v70 = 0x425F5354524F5053;
      if (a1 == 2)
      {
        v70 = 0x535F5354524F5053;
      }

      else
      {
        v69 = 0xEE0054454B434152;
      }

      if (a1)
      {
        v67 = 0xD000000000000015;
        v68 = 0x80000001D73BCF90;
      }

      if (a1 <= 1)
      {
        v71 = v67;
      }

      else
      {
        v71 = v70;
      }

      if (a1 <= 1)
      {
        v72 = v68;
      }

      else
      {
        v72 = v69;
      }
    }

    v91 = sub_1D5BC5100(v71, v72, &v107);

    *(v65 + 4) = v91;
    _os_log_impl(&dword_1D5B42000, v60, v61, "Sports data service could not create all data sources for embedType=%{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x1DA6FD500](v66, -1, -1);
    MEMORY[0x1DA6FD500](v65, -1, -1);

    result = (*(v64 + 8))(v104, v13);
    v86 = 0xF000000000000007;
  }

  else
  {

    result = (*(v14 + 8))(v63, v13);
    v86 = 0xF000000000000007;
  }

LABEL_87:
  *a5 = v86;
  return result;
}

uint64_t sub_1D68F4444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t *a6@<X8>)
{
  v117 = a2;
  v120 = a6;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v111 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v116 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  *&v119 = &v111 - v24;
  v25 = a1[2];
  v26 = a1[3];
  LODWORD(v121) = *(a1 + 56);
  if (!*(a4 + 16) || (v27 = a1[1], v114 = *a1, v115 = v27, v28 = a1[5], v29 = a1[6], v113 = v28, v30 = sub_1D5B69D90(v25, v26), (v31 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1D7270C10;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v121 > 3)
    {
      v54 = 0x80000001D73BCEC0;
      v55 = 0xD000000000000013;
      if (v121 == 6)
      {
        v55 = 0xD000000000000014;
      }

      else
      {
        v54 = 0x80000001D73BCEE0;
      }

      v56 = 0xD000000000000010;
      v57 = 0x80000001D73BCE80;
      if (v121 != 4)
      {
        v56 = 0xD000000000000011;
        v57 = 0x80000001D73BCEA0;
      }

      if (v121 <= 5)
      {
        v52 = v56;
      }

      else
      {
        v52 = v55;
      }

      if (v121 <= 5)
      {
        v53 = v57;
      }

      else
      {
        v53 = v54;
      }
    }

    else
    {
      v48 = 0x535F5354524F5053;
      v49 = 0xEC00000045524F43;
      v50 = 0xEF474E49444E4154;
      v51 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v51 = 0x535F5354524F5053;
      }

      else
      {
        v50 = 0xEE0054454B434152;
      }

      if (v121)
      {
        v48 = 0xD000000000000015;
        v49 = 0x80000001D73BCF90;
      }

      if (v121 <= 1)
      {
        v52 = v48;
      }

      else
      {
        v52 = v51;
      }

      if (v121 <= 1)
      {
        v53 = v49;
      }

      else
      {
        v53 = v50;
      }
    }

    MEMORY[0x1DA6F9910](v52, v53);

    v58 = v122;
    v59 = v123;
    v60 = MEMORY[0x1E69E6158];
    *(v47 + 56) = MEMORY[0x1E69E6158];
    v61 = sub_1D5B7E2C0();
    *(v47 + 32) = v58;
    *(v47 + 40) = v59;
    *(v47 + 96) = v60;
    *(v47 + 104) = v61;
    *(v47 + 64) = v61;
    *(v47 + 72) = v25;
    *(v47 + 80) = v26;

    sub_1D725C30C();

    goto LABEL_70;
  }

  v111 = v29;
  v32 = *(*(a4 + 56) + 8 * v30);
  v33 = *(a5 + 16);
  v112 = v32;
  swift_unknownObjectRetain();
  if (!v33 || (v34 = sub_1D5B69D90(v25, v26), (v35 & 1) == 0))
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1D7270C10;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v121 > 3)
    {
      v70 = 0x80000001D73BCEC0;
      v71 = 0xD000000000000013;
      if (v121 == 6)
      {
        v71 = 0xD000000000000014;
      }

      else
      {
        v70 = 0x80000001D73BCEE0;
      }

      v72 = 0xD000000000000010;
      v73 = 0x80000001D73BCE80;
      if (v121 != 4)
      {
        v72 = 0xD000000000000011;
        v73 = 0x80000001D73BCEA0;
      }

      if (v121 <= 5)
      {
        v68 = v72;
      }

      else
      {
        v68 = v71;
      }

      if (v121 <= 5)
      {
        v69 = v73;
      }

      else
      {
        v69 = v70;
      }
    }

    else
    {
      v64 = 0x535F5354524F5053;
      v65 = 0xEC00000045524F43;
      v66 = 0xEF474E49444E4154;
      v67 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v67 = 0x535F5354524F5053;
      }

      else
      {
        v66 = 0xEE0054454B434152;
      }

      if (v121)
      {
        v64 = 0xD000000000000015;
        v65 = 0x80000001D73BCF90;
      }

      if (v121 <= 1)
      {
        v68 = v64;
      }

      else
      {
        v68 = v67;
      }

      if (v121 <= 1)
      {
        v69 = v65;
      }

      else
      {
        v69 = v66;
      }
    }

    MEMORY[0x1DA6F9910](v68, v69);

    v74 = v122;
    v75 = v123;
    v76 = MEMORY[0x1E69E6158];
    *(v63 + 56) = MEMORY[0x1E69E6158];
    v77 = sub_1D5B7E2C0();
    *(v63 + 32) = v74;
    *(v63 + 40) = v75;
    *(v63 + 96) = v76;
    *(v63 + 104) = v77;
    *(v63 + 64) = v77;
    *(v63 + 72) = v25;
    *(v63 + 80) = v26;

    sub_1D725C30C();
    goto LABEL_69;
  }

  v36 = *(*(a5 + 56) + 8 * v34);
  LOBYTE(v122) = v121;

  sub_1D68F7D24(&v122, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_1D6900328(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v37 = 0xEC00000045524F43;
    v38 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    v119 = xmmword_1D7273AE0;
    *(v39 + 16) = xmmword_1D7273AE0;
    v122 = 0;
    v123 = 0xE000000000000000;
    v40 = v121;
    if (v121 > 3)
    {
      v41 = 0x80000001D73BCEC0;
      v93 = 0xD000000000000014;
      if (v121 != 6)
      {
        v93 = 0xD000000000000013;
        v41 = 0x80000001D73BCEE0;
      }

      v43 = 0x80000001D73BCE80;
      if (v121 == 4)
      {
        v94 = 0xD000000000000010;
      }

      else
      {
        v94 = 0xD000000000000011;
      }

      if (v121 != 4)
      {
        v43 = 0x80000001D73BCEA0;
      }

      v45 = v121 <= 5;
      if (v121 <= 5)
      {
        v46 = v94;
      }

      else
      {
        v46 = v93;
      }
    }

    else
    {
      v41 = 0xEF474E49444E4154;
      v42 = 0x425F5354524F5053;
      if (v121 == 2)
      {
        v42 = 0x535F5354524F5053;
      }

      else
      {
        v41 = 0xEE0054454B434152;
      }

      v43 = 0x80000001D73BCF90;
      v44 = 0xD000000000000015;
      if (!v121)
      {
        v44 = 0x535F5354524F5053;
        v43 = 0xEC00000045524F43;
      }

      v45 = v121 <= 1;
      if (v121 <= 1)
      {
        v46 = v44;
      }

      else
      {
        v46 = v42;
      }
    }

    if (v45)
    {
      v95 = v43;
    }

    else
    {
      v95 = v41;
    }

    MEMORY[0x1DA6F9910](v46, v95);

    v96 = v122;
    v97 = v123;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v98 = sub_1D5B7E2C0();
    *(v39 + 64) = v98;
    *(v39 + 32) = v96;
    *(v39 + 40) = v97;
    sub_1D725C30C();

    sub_1D7262EBC();
    v99 = swift_allocObject();
    *(v99 + 16) = v119;
    v122 = 0;
    v123 = 0xE000000000000000;
    if (v40 > 3)
    {
      if (v40 > 5)
      {
        if (v40 == 6)
        {
          v37 = 0x80000001D73BCEC0;
          v38 = 0xD000000000000014;
        }

        else
        {
          v37 = 0x80000001D73BCEE0;
          v38 = 0xD000000000000013;
        }
      }

      else if (v40 == 4)
      {
        v37 = 0x80000001D73BCE80;
        v38 = 0xD000000000000010;
      }

      else
      {
        v37 = 0x80000001D73BCEA0;
        v38 = 0xD000000000000011;
      }
    }

    else if (v40 > 1)
    {
      if (v40 == 2)
      {
        v37 = 0xEF474E49444E4154;
      }

      else
      {
        v38 = 0x425F5354524F5053;
        v37 = 0xEE0054454B434152;
      }
    }

    else if (v40)
    {
      v37 = 0x80000001D73BCF90;
      v38 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v38, v37);

    v107 = v122;
    v108 = v123;
    *(v99 + 56) = MEMORY[0x1E69E6158];
    *(v99 + 64) = v98;
    *(v99 + 32) = v107;
    *(v99 + 40) = v108;
    sub_1D725C30C();
LABEL_69:

    result = swift_unknownObjectRelease();
    goto LABEL_70;
  }

  v79 = *(v15 + 32);
  v80 = v79(v119, v13, v14);
  MEMORY[0x1EEE9AC00](v80, v81);
  *(&v111 - 2) = v117;
  v82 = sub_1D5FBE1C8(sub_1D69019B0, (&v111 - 4), v111);
  if (v82 >> 62)
  {
    v110 = v82;
    v83 = sub_1D7263BFC();
    v82 = v110;
  }

  else
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v83 == *(v111 + 16))
  {
    v121 = v79;
    v117 = v82;
    v118 = swift_allocObject();
    v84 = *(v15 + 16);
    v84(v21, v119, v14);
    type metadata accessor for SportsKeyPlayerDataVisualization();
    v85 = swift_allocObject();
    v86 = v115;
    *(v85 + 4) = v114;
    *(v85 + 5) = v86;
    *(v85 + 6) = v112;
    v84(&v85[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v21, v14);
    *&v85[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources] = v117;
    v87 = &v85[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
    *v87 = 0u;
    *(v87 + 1) = 0u;
    *(v87 + 2) = 0u;
    *&v85[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster] = v36;
    swift_unknownObjectRetain();

    v122 = sub_1D72583DC();
    v123 = v88;
    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v114, v86);
    v89 = v123;
    *(v85 + 2) = v122;
    *(v85 + 3) = v89;
    v90 = v116;
    v84(v116, v21, v14);
    swift_unknownObjectRelease();
    v91 = *(v15 + 8);
    v91(v21, v14);
    v91(v119, v14);
    result = v121(&v85[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl], v90, v14);
    v92 = v118;
    *(v118 + 16) = v85;
    v78 = v92 | 0xC000000000000000;
    goto LABEL_71;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v100 = sub_1D725C42C();
  __swift_project_value_buffer(v100, qword_1EDF17598);

  v101 = sub_1D725C3FC();
  v102 = sub_1D7262EBC();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v122 = v104;
    *v103 = 136446210;
    if (v121 > 3)
    {
      if (v121 > 5)
      {
        if (v121 == 6)
        {
          v106 = 0x80000001D73BCEC0;
          v105 = 0xD000000000000014;
        }

        else
        {
          v106 = 0x80000001D73BCEE0;
          v105 = 0xD000000000000013;
        }
      }

      else if (v121 == 4)
      {
        v105 = 0xD000000000000010;
        v106 = 0x80000001D73BCE80;
      }

      else
      {
        v106 = 0x80000001D73BCEA0;
        v105 = 0xD000000000000011;
      }
    }

    else
    {
      v105 = 0x535F5354524F5053;
      if (v121 > 1)
      {
        if (v121 == 2)
        {
          v106 = 0xEF474E49444E4154;
        }

        else
        {
          v105 = 0x425F5354524F5053;
          v106 = 0xEE0054454B434152;
        }
      }

      else if (v121)
      {
        v106 = 0x80000001D73BCF90;
        v105 = 0xD000000000000015;
      }

      else
      {
        v106 = 0xEC00000045524F43;
      }
    }

    v109 = sub_1D5BC5100(v105, v106, &v122);

    *(v103 + 4) = v109;
    _os_log_impl(&dword_1D5B42000, v101, v102, "Sports data service could not create all data sources for embedType=%{public}s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x1DA6FD500](v104, -1, -1);
    MEMORY[0x1DA6FD500](v103, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  result = (*(v15 + 8))(v119, v14);
LABEL_70:
  v78 = 0xF000000000000007;
LABEL_71:
  *v120 = v78;
  return result;
}

uint64_t sub_1D68F53EC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[2];
    v5 = *(a2 + 16);

    if (v5)
    {
      sub_1D5B69D90(v4, v3);
      if (v6)
      {

        return swift_unknownObjectRetain();
      }
    }

    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7270C10;
    v10 = *a1;
    v9 = a1[1];
    v11 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v8 + 32) = v10;
    *(v8 + 40) = v9;
    *(v8 + 96) = v11;
    *(v8 + 104) = v12;
    *(v8 + 64) = v12;
    *(v8 + 72) = v4;
    *(v8 + 80) = v3;

    sub_1D725C30C();
  }

  else
  {
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7273AE0;
    v15 = *a1;
    v14 = a1[1];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1D5B7E2C0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;

    sub_1D725C30C();
  }

  return 0;
}

id sub_1D68F5644(uint64_t *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v16 = a1[5];
    if (v16)
    {
      v18 = a1[4];
      v19 = qword_1EDF05878;

      if (v19 != -1)
      {
        swift_once();
      }

      sub_1D7262EBC();
      sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7270C10;
      v21 = MEMORY[0x1E69E6158];
      *(v20 + 56) = MEMORY[0x1E69E6158];
      v22 = sub_1D5B7E2C0();
      *(v20 + 32) = v18;
      *(v20 + 40) = v16;
      v24 = *a1;
      v23 = a1[1];
      *(v20 + 96) = v21;
      *(v20 + 104) = v22;
      *(v20 + 64) = v22;
      *(v20 + 72) = v24;
      *(v20 + 80) = v23;

      sub_1D725C30C();

      if (*(a2 + 16))
      {
        v25 = sub_1D5B69D90(v18, v16);
        if (v26)
        {
          v27 = v25;

          v15 = *(*(a2 + 56) + 8 * v27);
          swift_unknownObjectRetain();
          return v15;
        }
      }

      sub_1D7262EBC();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D7270C10;
      v29 = MEMORY[0x1E69E6158];
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = v22;
      *(v28 + 32) = v18;
      *(v28 + 40) = v16;
      *(v28 + 96) = v29;
      *(v28 + 104) = v22;
      *(v28 + 72) = v24;
      *(v28 + 80) = v23;

      sub_1D725C30C();
    }

    return 0;
  }

  v5 = qword_1EDF05878;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7270C10;
  v7 = [a3 identifier];
  v8 = sub_1D726207C();
  v10 = v9;

  v11 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v14 = *a1;
  v13 = a1[1];
  *(v6 + 96) = v11;
  *(v6 + 104) = v12;
  *(v6 + 64) = v12;
  *(v6 + 72) = v14;
  *(v6 + 80) = v13;

  sub_1D7262EDC();
  sub_1D725C30C();

  v15 = [a3 eventLeagueTag];
  swift_unknownObjectRelease();
  return v15;
}

unint64_t sub_1D68F59AC(uint64_t a1, uint64_t a2, id a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v6 = [a3 eventCompetitorTags];
    if (v6)
    {
      v7 = v6;
      sub_1D5B5534C(0, &qword_1EDF04500);
      v8 = sub_1D726267C();
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(a1 + 48);
  v41 = v5;
  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = 0;
  do
  {
    v12 = (v9 + 40 + 16 * v11);
    v13 = v11;
    while (1)
    {
      if (v13 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (*(a2 + 16))
      {
        break;
      }

LABEL_9:
      ++v13;
      v12 += 2;
      if (v10 == v13)
      {
        goto LABEL_17;
      }
    }

    v14 = *(v12 - 1);
    v15 = *v12;

    sub_1D5B69D90(v14, v15);
    if ((v16 & 1) == 0)
    {

      goto LABEL_9;
    }

    swift_unknownObjectRetain();

    MEMORY[0x1DA6F9CE0](v17);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v11 = v13 + 1;
    sub_1D726278C();
    v5 = v41;
  }

  while (v10 - 1 != v13);
LABEL_17:
  if (v8 >> 62)
  {
LABEL_24:
    v18 = sub_1D7263BFC();
    if (v5 >> 62)
    {
      goto LABEL_25;
    }

LABEL_19:
    if (v18 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

LABEL_26:

    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1D7270C10;
    v32 = sub_1D5B5534C(0, &qword_1EDF04500);
    v33 = MEMORY[0x1DA6F9D20](v8, v32);
    v35 = v34;
    v36 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1D5B7E2C0();
    *(v31 + 64) = v37;
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    v38 = MEMORY[0x1DA6F9D20](v9, v36);
    *(v31 + 96) = v36;
    *(v31 + 104) = v37;
    *(v31 + 72) = v38;
    *(v31 + 80) = v39;
    sub_1D7262EDC();
    sub_1D725C30C();
  }

  else
  {
    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v5 >> 62))
    {
      goto LABEL_19;
    }

LABEL_25:
    if (v18 >= sub_1D7263BFC())
    {
      goto LABEL_26;
    }

LABEL_20:
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7279970;
    v20 = sub_1D5B5534C(0, &qword_1EDF04500);
    v21 = MEMORY[0x1DA6F9D20](v5, v20);
    v23 = v22;
    v24 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1D5B7E2C0();
    *(v19 + 64) = v25;
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v26 = MEMORY[0x1DA6F9D20](v9, v24);
    *(v19 + 96) = v24;
    *(v19 + 104) = v25;
    *(v19 + 72) = v26;
    *(v19 + 80) = v27;
    v28 = MEMORY[0x1DA6F9D20](v8, v20);
    v30 = v29;

    *(v19 + 136) = v24;
    *(v19 + 144) = v25;
    *(v19 + 112) = v28;
    *(v19 + 120) = v30;
    sub_1D725C30C();
    v8 = v5;
  }

  return v8;
}

uint64_t sub_1D68F5E28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3 && *(a2 + 16) && (sub_1D5B69D90(*(a1 + 16), v3), (v4 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D68F5E78(__int128 *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v103 = a6;
  v102 = a4;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v95 - v15;
  v17 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v17, v18);
  v100 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v95 - v22;
  *&v108[9] = *(a1 + 57);
  v24 = a1[3];
  v107[2] = a1[2];
  *v108 = v24;
  v26 = *a1;
  v25 = a1[1];
  v28 = v27;
  v107[0] = v26;
  v107[1] = v25;
  LODWORD(v29) = v108[24];
  LOBYTE(v105) = v108[24];
  sub_1D68F7D24(&v105, a3, v16);
  if ((*(v28 + 48))(v16, 1, v17) == 1)
  {
    sub_1D6900328(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
LABEL_79:
      swift_once();
    }

    v30 = 0xEC00000045524F43;
    v31 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    v103 = xmmword_1D7273AE0;
    *(v32 + 16) = xmmword_1D7273AE0;
    v105 = 0;
    v106 = 0xE000000000000000;
    if (v29 > 3)
    {
      v33 = 0x80000001D73BCEC0;
      v62 = 0xD000000000000014;
      if (v29 != 6)
      {
        v62 = 0xD000000000000013;
        v33 = 0x80000001D73BCEE0;
      }

      v35 = 0x80000001D73BCE80;
      if (v29 == 4)
      {
        v63 = 0xD000000000000010;
      }

      else
      {
        v63 = 0xD000000000000011;
      }

      if (v29 != 4)
      {
        v35 = 0x80000001D73BCEA0;
      }

      v37 = v29 <= 5;
      if (v29 <= 5)
      {
        v38 = v63;
      }

      else
      {
        v38 = v62;
      }
    }

    else
    {
      v33 = 0xEF474E49444E4154;
      v34 = 0x425F5354524F5053;
      if (v29 == 2)
      {
        v34 = 0x535F5354524F5053;
      }

      else
      {
        v33 = 0xEE0054454B434152;
      }

      v35 = 0x80000001D73BCF90;
      v36 = 0xD000000000000015;
      if (!v29)
      {
        v36 = 0x535F5354524F5053;
        v35 = 0xEC00000045524F43;
      }

      v37 = v29 <= 1;
      if (v29 <= 1)
      {
        v38 = v36;
      }

      else
      {
        v38 = v34;
      }
    }

    if (v37)
    {
      v64 = v35;
    }

    else
    {
      v64 = v33;
    }

    MEMORY[0x1DA6F9910](v38, v64);

    v65 = v105;
    v66 = v106;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v67 = sub_1D5B7E2C0();
    *(v32 + 64) = v67;
    *(v32 + 32) = v65;
    *(v32 + 40) = v66;
    sub_1D725C30C();

    sub_1D7262EBC();
    v68 = swift_allocObject();
    *(v68 + 16) = v103;
    v105 = 0;
    v106 = 0xE000000000000000;
    if (v29 > 3)
    {
      if (v29 > 5)
      {
        if (v29 == 6)
        {
          v30 = 0x80000001D73BCEC0;
          v31 = 0xD000000000000014;
        }

        else
        {
          v30 = 0x80000001D73BCEE0;
          v31 = 0xD000000000000013;
        }
      }

      else if (v29 == 4)
      {
        v30 = 0x80000001D73BCE80;
        v31 = 0xD000000000000010;
      }

      else
      {
        v30 = 0x80000001D73BCEA0;
        v31 = 0xD000000000000011;
      }
    }

    else if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = 0xEF474E49444E4154;
      }

      else
      {
        v31 = 0x425F5354524F5053;
        v30 = 0xEE0054454B434152;
      }
    }

    else if (v29)
    {
      v30 = 0x80000001D73BCF90;
      v31 = 0xD000000000000015;
    }

    v89 = MEMORY[0x1E69E6158];
    MEMORY[0x1DA6F9910](v31, v30);

    v90 = v105;
    v91 = v106;
    *(v68 + 56) = v89;
    *(v68 + 64) = v67;
    *(v68 + 32) = v90;
    *(v68 + 40) = v91;
    sub_1D725C30C();

    return 0;
  }

  v98 = v28;
  v39 = *(v28 + 32);
  v99 = v23;
  v101 = v17;
  v97 = v28 + 32;
  v96 = v39;
  v40 = (v39)(v23, v16, v17);
  v41 = *&v108[16];
  v109 = *&v108[16];
  MEMORY[0x1EEE9AC00](v40, v42);
  *(&v95 - 8) = v7;
  *(&v95 - 7) = a3;
  *(&v95 - 6) = v107;
  *(&v95 - 5) = a7;
  *(&v95 - 4) = a5;
  *(&v95 - 3) = a2;
  v43 = v102;
  *(&v95 - 2) = v103;
  *(&v95 - 1) = v43;
  sub_1D68FF774(&v109, &v105, sub_1D68FDD04);
  v44 = sub_1D5FBE34C(sub_1D68FDCD0, (&v95 - 10), v41);
  v45 = sub_1D68FF714(&v109, sub_1D68FDD04);
  v46 = *&v108[8];
  MEMORY[0x1EEE9AC00](v45, v47);
  *(&v95 - 2) = a2;
  v48 = sub_1D5FBE1C8(sub_1D69019B0, (&v95 - 4), v46);
  if (v48 >> 62)
  {
    v94 = v48;
    v49 = sub_1D7263BFC();
    v48 = v94;
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = v101;
  if (v49 == *(v46 + 16))
  {
    v102 = v44;
    *&v103 = v48;
    v51 = *v108;
    v110 = *v108;
    v29 = MEMORY[0x1E69E7CC0];
    v105 = MEMORY[0x1E69E7CC0];
    v52 = *(*v108 + 16);
    sub_1D68FF774(&v110, v104, sub_1D5B499C4);
    if (!v52)
    {
      goto LABEL_55;
    }

    v53 = 0;
    v54 = v51 + 40;
    v95 = v52 - 1;
    while (1)
    {
      v55 = v54;
      v56 = (v54 + 16 * v53);
      v57 = v53;
      while (1)
      {
        if (v57 >= *(v51 + 16))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (*(a5 + 16))
        {
          break;
        }

LABEL_19:
        ++v57;
        v56 += 2;
        if (v52 == v57)
        {
          goto LABEL_55;
        }
      }

      v58 = *(v56 - 1);
      v59 = *v56;

      sub_1D5B69D90(v58, v59);
      if ((v60 & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRetain();

      MEMORY[0x1DA6F9CE0](v61);
      if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      v53 = v57 + 1;
      sub_1D726278C();
      v29 = v105;
      v54 = v55;
      if (v95 == v57)
      {
LABEL_55:
        v95 = v29;
        sub_1D68FF714(&v110, sub_1D5B499C4);
        v77 = v107[0];
        v78 = sub_1D68F5E28(v107, a5);
        v79 = sub_1D68F7CD4(v107, a5);
        v80 = v98;
        v81 = *(v98 + 16);
        v82 = v100;
        v83 = v101;
        v81(v100, v99, v101);
        type metadata accessor for SportsBracketDataVisualization();
        v84 = swift_allocObject();
        *(v84 + 32) = v95;
        *(v84 + 40) = v77;
        *(v84 + 56) = v78;
        *(v84 + 64) = v79;
        v81((v84 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_embedUrl), v82, v83);
        *(v84 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_urlDataSources) = v103;
        *(v84 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events) = v102;
        *(v84 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_metadata) = 1;
        v85 = (v84 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_config);
        *v85 = 0u;
        v85[1] = 0u;
        v85[2] = 0u;

        v105 = sub_1D72583DC();
        v106 = v86;
        MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
        MEMORY[0x1DA6F9910](v77, *(&v77 + 1));
        v87 = v106;
        *(v84 + 16) = v105;
        *(v84 + 24) = v87;
        v96(v84 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_configuredEmbedUrl, v82, v83);
        (*(v80 + 8))(v99, v83);
        return v84;
      }
    }

    goto LABEL_19;
  }

  v69 = v98;
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v70 = sub_1D725C42C();
  __swift_project_value_buffer(v70, qword_1EDF17598);
  sub_1D5FC4D88(v107, &v105);
  v71 = sub_1D725C3FC();
  v72 = sub_1D7262EBC();
  sub_1D5FC4DE4(v107);
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v105 = v74;
    *v73 = 136446210;
    if (v29 > 3)
    {
      if (v29 > 5)
      {
        if (v29 == 6)
        {
          v76 = 0x80000001D73BCEC0;
          v75 = 0xD000000000000014;
        }

        else
        {
          v76 = 0x80000001D73BCEE0;
          v75 = 0xD000000000000013;
        }
      }

      else if (v29 == 4)
      {
        v75 = 0xD000000000000010;
        v76 = 0x80000001D73BCE80;
      }

      else
      {
        v76 = 0x80000001D73BCEA0;
        v75 = 0xD000000000000011;
      }
    }

    else
    {
      v75 = 0x535F5354524F5053;
      if (v29 > 1)
      {
        if (v29 == 2)
        {
          v76 = 0xEF474E49444E4154;
        }

        else
        {
          v75 = 0x425F5354524F5053;
          v76 = 0xEE0054454B434152;
        }
      }

      else if (v29)
      {
        v76 = 0x80000001D73BCF90;
        v75 = 0xD000000000000015;
      }

      else
      {
        v76 = 0xEC00000045524F43;
      }
    }

    v92 = v99;
    v93 = sub_1D5BC5100(v75, v76, &v105);

    *(v73 + 4) = v93;
    _os_log_impl(&dword_1D5B42000, v71, v72, "Sports data service could not create all data sources for embedType=%{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x1DA6FD500](v74, -1, -1);
    MEMORY[0x1DA6FD500](v73, -1, -1);

    (*(v98 + 8))(v92, v50);
  }

  else
  {

    (*(v69 + 8))(v99, v50);
  }

  return 0;
}