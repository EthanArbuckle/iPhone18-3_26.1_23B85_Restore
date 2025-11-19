uint64_t sub_1B7CDD4A0(void *a1, uint64_t a2)
{
  v4 = v3;
  v7 = swift_allocObject();
  v12 = a1;
  *(v7 + 16) = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000003CLL, 0x80000001B7D5BDD0);
  MEMORY[0x1B8CADCA0](*(v2 + 16), *(v2 + 24));
  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D5BE10);
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = v2;

  v9 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7CDF9E0, v8);
  if (v3)
  {

    return v4;
  }

  v4 = v9;

  if (!v4)
  {
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v4 + 16))
  {

    goto LABEL_10;
  }

  swift_beginAccess();
  v10 = *(v7 + 16);

  if (v10 != -1)
  {
    *v12 = v10 + 1;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7CDD6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v86 = *MEMORY[0x1E69E9840];
  v9 = sub_1B7CFE420();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for StorageInspectionFileRecord();
  v66 = *(v67 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v70 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = (&v54 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v54 - v19;
  v68 = sub_1B7CFDFF0();
  v20 = *(v68 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v71 = &v54 - v24;
  swift_beginAccess();
  v73 = a2;
  v25 = *(a2 + 16);
  if (v25 < 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  v72 = a4;
  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, v25);
  *&v78 = 0;
  IMDSqlOperationGetError(a1 + 16, &v78);
  v26 = v78;
  swift_endAccess();
  if (!v26)
  {
    if (a3 >= 0xFFFFFFFF80000000)
    {
      if (a3 <= 0x7FFFFFFF)
      {
        swift_beginAccess();
        IMDSqlStatementBindInt(a1 + 48, a3);
        *&v78 = 0;
        IMDSqlOperationGetError(a1 + 16, &v78);
        v26 = v78;
        swift_endAccess();
        if (v26)
        {
          goto LABEL_6;
        }

        swift_beginAccess();
        swift_beginAccess();

        HasRows = IMDSqlOperationHasRows(a1 + 16);
        swift_endAccess();
        if (!HasRows)
        {
          v31 = MEMORY[0x1E69E7CC0];
          goto LABEL_44;
        }

        v77 = type metadata accessor for SqlOperation.Row();
        v76 = "directoryBatchSize";
        v75 = "ORDER BY ROWID ASC;";
        v30 = (v10 + 8);
        v57 = *MEMORY[0x1E695DBA8];
        v61 = "at_update_sync_chat_deletes";
        v60 = *MEMORY[0x1E695DC58];
        v59 = (v20 + 32);
        v58 = (v20 + 8);
        v74 = 0xD000000000000012;
        v31 = MEMORY[0x1E69E7CC0];
        v62 = v4;
LABEL_10:
        v63 = v31;
        while (1)
        {
          inited = swift_initStackObject();
          v34 = sub_1B7C23650(MEMORY[0x1E69E7CC0]);
          *(inited + 16) = a1;
          *(inited + 24) = v34;
          SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v78);
          if (!*(&v78 + 1))
          {
            break;
          }

          v82 = v78;
          v83 = v79;
          v84 = v80;
          v85 = v81;
          v35 = v79;
          sub_1B7C26C78(&v82);
          v87 = SqlOperation.Row.uint64(forColumnIndex:)(v35);
          if (!v87.is_nil)
          {
            value = v87.value;
            SqlOperation.Row.column(forColumnName:)(0x68746170uLL, 0xE400000000000000, &v78);
            if (!*(&v78 + 1))
            {
              break;
            }

            v82 = v78;
            v83 = v79;
            v84 = v80;
            v85 = v81;
            v37 = v79;
            sub_1B7C26C78(&v82);
            v38 = SqlOperation.Row.string(forColumnIndex:)(v37);
            if (v38.value._object)
            {
              *(v73 + 16) = value;
              sub_1B7CFDF20();
              SqlOperation.Row.column(forColumnName:)(0x65677275705F7369uLL, 0xEC000000656C6261, &v78);
              if (*(&v78 + 1))
              {
                v82 = v78;
                v83 = v79;
                v84 = v80;
                v85 = v81;
                v42 = v79;
                sub_1B7C26C78(&v82);
                v88 = SqlOperation.Row.uint64(forColumnIndex:)(v42);
                if (!v88.is_nil)
                {
                  v43 = v88.value != 0;
                  *(&v83 + 1) = sub_1B7C107FC(&qword_1EBA52E78, "̌\a");
                  v56 = v43;
                  LOBYTE(v82) = v43;
                  sub_1B7CFDF90();
                  sub_1B7AE9168(&v82);
                  goto LABEL_25;
                }
              }

              else
              {
                sub_1B7C26C10(&v78);
              }

              v56 = 2;
LABEL_25:
              SqlOperation.Row.column(forColumnName:)(0xD000000000000014, v61 | 0x8000000000000000, &v78);
              if (*(&v78 + 1))
              {
                v82 = v78;
                v83 = v79;
                v84 = v80;
                v85 = v81;
                v44 = v79;
                sub_1B7C26C78(&v82);
                v89 = SqlOperation.Row.uint64(forColumnIndex:)(v44);
                if (!v89.is_nil)
                {
                  *(&v83 + 1) = MEMORY[0x1E69E76D8];
                  *&v82 = v89.value;
                  sub_1B7CFDF90();
                  sub_1B7AE9168(&v82);
                }
              }

              else
              {
                sub_1B7C26C10(&v78);
              }

              SqlOperation.Row.column(forColumnName:)(0xD000000000000014, v61 | 0x8000000000000000, &v78);
              if (!*(&v78 + 1))
              {
                sub_1B7C26C10(&v78);
LABEL_33:
                v90.value = 0;
                goto LABEL_34;
              }

              v82 = v78;
              v83 = v79;
              v84 = v80;
              v85 = v81;
              v45 = v79;
              sub_1B7C26C78(&v82);
              v90 = SqlOperation.Row.uint64(forColumnIndex:)(v45);
              if (v90.is_nil)
              {
                goto LABEL_33;
              }

LABEL_34:
              v46 = v65;
              *v65 = value;
              v47 = v46;
              *(v46 + 8) = 0;
              *(v46 + 1) = v38;
              *(v46 + 32) = v56;
              v55 = v90.value;
              v46[5] = v90.value;

              v48 = v64;
              sub_1B7CFDF20();
              v49 = v56;

              if (v49 != 2)
              {
                *(&v83 + 1) = MEMORY[0x1E69E6370];
                LOBYTE(v82) = v49;
                sub_1B7CFDF90();
                sub_1B7AE9168(&v82);
              }

              *(&v83 + 1) = MEMORY[0x1E69E76D8];
              *&v82 = v55;
              sub_1B7CFDF90();
              sub_1B7AE9168(&v82);
              (*v59)(v47 + *(v67 + 32), v48, v68);
              v50 = v69;
              sub_1B7CDFA00(v47, v69);
              sub_1B7CC0E30(v50, v70);
              v31 = v63;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = sub_1B7CA3824(0, v31[2] + 1, 1, v31);
              }

              v52 = v31[2];
              v51 = v31[3];
              if (v52 >= v51 >> 1)
              {
                v31 = sub_1B7CA3824(v51 > 1, v52 + 1, 1, v31);
              }

              sub_1B7CC0E94(v69);
              (*v58)(v71, v68);
              v31[2] = v52 + 1;
              sub_1B7CDFA00(v70, v31 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v52);
              swift_beginAccess();

              v53 = IMDSqlOperationHasRows(a1 + 16);
              swift_endAccess();
              if (!v53)
              {
LABEL_44:

                *v72 = v31;
                goto LABEL_7;
              }

              goto LABEL_10;
            }
          }

LABEL_18:
          sub_1B7CFE410();
          v39 = sub_1B7CFE400();
          v40 = sub_1B7CFEEF0();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_1B7AD5000, v39, v40, "selecting batch of FileRecords failed", v41, 2u);
            MEMORY[0x1B8CB0E70](v41, -1, -1);
          }

          (*v30)(v13, v9);
          swift_beginAccess();

          v32 = IMDSqlOperationHasRows(a1 + 16);
          swift_endAccess();
          if (!v32)
          {
            v31 = v63;
            goto LABEL_44;
          }
        }

        sub_1B7C26C10(&v78);
        goto LABEL_18;
      }

LABEL_47:
      __break(1u);
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_6:
  v26;
  result = swift_willThrow();
LABEL_7:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B7CDE180(uint64_t a1)
{
  v2 = v1;
  v67 = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v41 - v8;
  v10 = swift_allocObject();
  v47 = v10;
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  v41[1] = v10 + 16;
  v11 = *(a1 + *(type metadata accessor for StorageInspectionAttachmentDirectory() + 20));
  v50 = *(v11 + 16);
  if (v50)
  {
    v12 = 0;
    v60 = v5 + 16;
    v53 = "', isPurgeable: '";
    v54 = ", isRecoverable: ";
    v55 = (v5 + 8);
    v44 = " INTEGER NOT NULL);";
    v43 = v6 + 7;
    v42 = (v5 + 32);
    v51 = v4;
    v52 = v9;
    v48 = v11;
    v49 = v5;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
      }

      v13 = *(v5 + 80);
      v58 = v13;
      v59 = (v13 + 32) & ~v13;
      v14 = v11 + v59 + *(v5 + 72) * v12;
      v57 = *(v5 + 16);
      v57(v9, v14, v4);
      sub_1B7CFDFD0();
      v15 = sub_1B7CFEA30();

      v16 = [v15 stringByAbbreviatingWithTildeInPath];

      v63 = sub_1B7CFEA60();
      v18 = v17;

      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      v19 = off_1EBA52D08;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_1B7CFF210();
      MEMORY[0x1B8CADCA0](0xD000000000000012, v54 | 0x8000000000000000);
      v21 = *(v56 + 16);
      v20 = *(v56 + 24);
      MEMORY[0x1B8CADCA0](v21, v20);
      MEMORY[0x1B8CADCA0](0xD000000000000023, v53 | 0x8000000000000000);
      v22 = v66;

      v23 = objc_autoreleasePoolPush();
      v62 = v22;
      v24 = sub_1B7CFEA30();
      swift_beginAccess();
      IMDSqlOperationStartQuery(v19 + 16, v24);
      swift_endAccess();

      swift_beginAccess();
      v64 = 0;
      IMDSqlOperationGetError((v19 + 16), &v64);
      v25 = v64;
      swift_endAccess();
      if (v25)
      {
        swift_willThrow();
        v25;
        v27 = v52;
        goto LABEL_22;
      }

      v61 = v12;
      v26 = v18;
      sub_1B7CDD354(v19, &v65);
      v27 = v52;
      if (v2)
      {
        break;
      }

      v28 = v52;
      v29 = v65;
      swift_beginAccess();
      IMDSqlOperationFinishQuery((v19 + 16));
      v64 = 0;
      IMDSqlOperationGetError((v19 + 16), &v64);
      v30 = v64;
      swift_endAccess();
      if (v30)
      {
        swift_willThrow();
        v2 = v30;
        v27 = v28;
        break;
      }

      objc_autoreleasePoolPop(v23);

      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      v32 = *(v31 + 16);

      if (v32)
      {
        v9 = v28;
        v4 = v51;
        (*v55)(v28, v51);
      }

      else
      {
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
        MEMORY[0x1B8CADCA0](v21, v20);
        MEMORY[0x1B8CADCA0](0xD00000000000003DLL, v44 | 0x8000000000000000);
        v62 = v65;
        v46 = v66;
        v33 = v45;
        v4 = v51;
        v57(v45, v28, v51);
        v34 = v59;
        v35 = (v43 + v59) & 0xFFFFFFFFFFFFFFF8;
        v36 = swift_allocObject();
        *(v36 + 16) = v63;
        *(v36 + 24) = v26;
        (*v42)(v36 + v34, v33, v4);
        *(v36 + v35) = v47;
        SqlOperation.execute(_:_:)(v62, v46, sub_1B7CDF944);
        v37 = *v55;

        v37(v28, v4);

        v9 = v28;
      }

      v12 = v61 + 1;
      v5 = v49;
      v11 = v48;
      if (v50 == v61 + 1)
      {
        goto LABEL_16;
      }
    }

    swift_beginAccess();
    IMDSqlOperationFinishQuery((v19 + 16));
    v64 = 0;
    IMDSqlOperationGetError((v19 + 16), &v64);
    v38 = v64;
    swift_endAccess();
    swift_willThrow();
    if (v38)
    {
      v38;
    }

LABEL_22:

    objc_autoreleasePoolPop(v23);

    (*v55)(v27, v51);
  }

  else
  {
LABEL_16:
    swift_beginAccess();
    v23 = *(v47 + 16);
  }

  v39 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_1B7CDE8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v8 = sub_1B7CFDFF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v13);
  swift_endAccess();

  swift_beginAccess();
  v24[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v24);
  v14 = v24[0];
  swift_endAccess();
  if (v14)
  {
    goto LABEL_2;
  }

  v16 = URL.isPurgeable.getter();
  if (v16 == 2)
  {
    swift_beginAccess();
    IMDSqlStatementBindNull(a1 + 48);
    v24[0] = 0;
    IMDSqlOperationGetError(a1 + 16, v24);
    v14 = v24[0];
    swift_endAccess();
    if (v14)
    {
LABEL_2:
      swift_willThrow();
      v14;
      goto LABEL_3;
    }
  }

  else
  {
    v25.value = v16 & 1;
    v25.is_nil = 0;
    SqlOperation.bind(_:)(v25);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  v26.value = URL.fileAllocationSize.getter();
  v26.is_nil &= 1u;
  SqlOperation.bind(_:)(v26);
  if (!v18)
  {
    (*(v9 + 16))(v12, a4, v8);
    swift_beginAccess();
    v19 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1B7CA1D44(0, v19[2] + 1, 1, v19);
      *(a5 + 16) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1B7CA1D44(v21 > 1, v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v22, v12, v8);
    *(a5 + 16) = v19;
  }

LABEL_3:
  v15 = *MEMORY[0x1E69E9840];
}

void *sub_1B7CDEC04(uint64_t a1)
{
  v2 = v1;
  v71[5] = *MEMORY[0x1E69E9840];
  v57 = sub_1B7CFE420();
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StorageInspectionFileRecord();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v49 - v12;
  v69 = MEMORY[0x1E69E7CD0];
  v70 = 0;
  v60 = "', isPurgeable: '";
  v61 = ", isRecoverable: ";
  v55 = "directoryBatchSize";
  v54 = "ORDER BY ROWID ASC;";
  v53 = (v4 + 8);
  p_cb = &OBJC_PROTOCOL___CNChangeHistoryEventVisitor.cb;
  v15 = &qword_1EBA52000;
  v11.n128_u64[0] = 136315394;
  v50 = v11;
  v49[1] = a1;
  v58 = v7;
  v56 = v16;
  while (1)
  {
    if (*(p_cb + 190) != -1)
    {
      swift_once();
    }

    v17 = v15[417];
    v52 = objc_autoreleasePoolPush();
    swift_beginAccess();
    IMDSqlOperationBeginTransaction((v17 + 16));
    v68 = 0;
    IMDSqlOperationGetError(v17 + 16, &v68);
    v18 = v68;
    swift_endAccess();
    if (v18)
    {
      swift_willThrow();
      v18;
      goto LABEL_32;
    }

    v19 = sub_1B7CDD4A0(&v70, 50);
    if (v2)
    {
      goto LABEL_26;
    }

    v20 = v19;
    v51 = 0;
    v65 = *(v19 + 16);
    if (v65)
    {
      break;
    }

LABEL_17:

    swift_beginAccess();
    IMDSqlOperationCommitTransaction((v17 + 16));
    v68 = 0;
    IMDSqlOperationGetError(v17 + 16, &v68);
    v18 = v68;
    swift_endAccess();
    if (v18)
    {
      swift_willThrow();
      v2 = v18;
      if (*(v17 + 32))
      {
        goto LABEL_27;
      }

      goto LABEL_31;
    }

    objc_autoreleasePoolPop(v52);
    v2 = v51;
    p_cb = (&OBJC_PROTOCOL___CNChangeHistoryEventVisitor + 64);
    v15 = &qword_1EBA52000;
    if (!v65)
    {
      v46 = v69;
      v47 = *(v69 + 16);
      if (!v47)
      {

        v18 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }

      v18 = sub_1B7CD9410(*(v69 + 16), 0);
      v48 = sub_1B7CD9C2C(v71, v18 + 4, v47, v46);

      sub_1B7AEC4CC();
      if (v48 == v47)
      {

        goto LABEL_33;
      }

LABEL_39:
      __break(1u);
    }
  }

  v21 = 0;
  v59 = v19;
  while (1)
  {
    if (v21 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    sub_1B7CC0E30(v20 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v21, v13);
    v22 = *(v13 + 2);
    v18 = *(v13 + 3);
    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD000000000000012, v61 | 0x8000000000000000);
    v23 = *(v66 + 16);
    v64 = *(v66 + 24);
    MEMORY[0x1B8CADCA0](v23);
    MEMORY[0x1B8CADCA0](0xD000000000000023, v60 | 0x8000000000000000);

    v67 = objc_autoreleasePoolPush();
    v24 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery(v17 + 16, v24);
    swift_endAccess();

    swift_beginAccess();
    v68 = 0;
    IMDSqlOperationGetError(v17 + 16, &v68);
    v25 = v68;
    swift_endAccess();
    if (v25)
    {
      swift_willThrow();
      v2 = v25;
      goto LABEL_25;
    }

    v63 = v23;
    v26 = sub_1B7CFEA30();
    v27 = [v26 stringByAbbreviatingWithTildeInPath];

    sub_1B7CFEA60();
    v28 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlStatementBindTextFromCFString(v17 + 48, v28);
    swift_endAccess();

    swift_beginAccess();
    v68 = 0;
    IMDSqlOperationGetError(v17 + 16, &v68);
    v29 = v68;
    swift_endAccess();
    if (v29)
    {
      break;
    }

    v30 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    swift_beginAccess();
    IMDSqlOperationFinishQuery(v17 + 16);
    v68 = 0;
    IMDSqlOperationGetError(v17 + 16, &v68);
    v31 = v68;
    swift_endAccess();
    if (v31)
    {
      swift_willThrow();
      v2 = v31;
      goto LABEL_23;
    }

    objc_autoreleasePoolPop(v67);

    v32 = *(v30 + 16);

    if (!v32)
    {

      sub_1B7C5E91C(v71, v22, v18);

      v33 = v58;
      sub_1B7CFE410();
      v34 = v56;
      sub_1B7CC0E30(v13, v56);

      v35 = sub_1B7CFE400();
      v36 = sub_1B7CFEED0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v71[0] = v67;
        *v37 = v50.n128_u32[0];
        v38 = *(v34 + 16);
        v39 = *(v34 + 24);

        sub_1B7CC0E94(v34);
        v40 = sub_1B7AED1B8(v38, v39, v71);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_1B7AED1B8(v63, v64, v71);
        _os_log_impl(&dword_1B7AD5000, v35, v36, "Found missing path: %s in %s", v37, 0x16u);
        v41 = v67;
        swift_arrayDestroy();
        MEMORY[0x1B8CB0E70](v41, -1, -1);
        MEMORY[0x1B8CB0E70](v37, -1, -1);

        (*v53)(v58, v57);
      }

      else
      {

        sub_1B7CC0E94(v34);
        (*v53)(v33, v57);
      }
    }

    ++v21;
    sub_1B7CC0E94(v13);
    v20 = v59;
    if (v65 == v21)
    {
      goto LABEL_17;
    }
  }

  swift_willThrow();
  v2 = v29;

LABEL_23:
  swift_beginAccess();
  IMDSqlOperationFinishQuery(v17 + 16);
  v68 = 0;
  IMDSqlOperationGetError(v17 + 16, &v68);
  v42 = v68;
  swift_endAccess();
  swift_willThrow();
  if (v42)
  {
    v43 = v42;

    v2 = v43;
  }

LABEL_25:

  objc_autoreleasePoolPop(v67);

  sub_1B7CC0E94(v13);
LABEL_26:
  if (*(v17 + 32))
  {
LABEL_27:
    swift_beginAccess();
    IMDSqlOperationRevertTransaction((v17 + 16));
    v68 = 0;
    IMDSqlOperationGetError(v17 + 16, &v68);
    v18 = v68;
    swift_endAccess();
    if (v18)
    {
      swift_willThrow();
      v18 = v18;

      goto LABEL_32;
    }
  }

LABEL_31:
  swift_willThrow();
LABEL_32:
  objc_autoreleasePoolPop(v52);

LABEL_33:
  v44 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t sub_1B7CDF584(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for StorageInspectionFileRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a3;
  v13 = a1;
  v14 = sub_1B7CDD4A0(a2, v12);
  if (v3)
  {
    return v13;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v31 = MEMORY[0x1E69E7CC0];
  v16 = v14;
  sub_1B7AECEEC(0, v15, 0);
  v17 = 0;
  v13 = v31;
  v27 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v28 = v11;
  while (v17 < *(v16 + 16))
  {
    v18 = v8;
    sub_1B7CC0E30(v27 + *(v8 + 72) * v17, v11);
    sub_1B7CDF790(v11, &v29);
    sub_1B7CC0E94(v11);
    v20 = v29;
    v19 = v30;
    v31 = v13;
    v22 = *(v13 + 16);
    v21 = *(v13 + 24);
    if (v22 >= v21 >> 1)
    {
      v26 = v30;
      sub_1B7AECEEC((v21 > 1), v22 + 1, 1);
      v19 = v26;
      v13 = v31;
    }

    ++v17;
    *(v13 + 16) = v22 + 1;
    v23 = v13 + 16 * v22;
    *(v23 + 32) = v20;
    *(v23 + 40) = v19;
    v8 = v18;
    v11 = v28;
    if (v15 == v17)
    {

      return v13;
    }
  }

  __break(1u);
  sub_1B7CC0E94(v11);

  __break(1u);
  return result;
}

uint64_t sub_1B7CDF790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = 0xE000000000000000;
  sub_1B7CFF210();
  if (a1[1])
  {
    v5 = 0;
  }

  else
  {
    v14 = *a1;
    sub_1B7C2617C();
    v5 = sub_1B7CFF090();
    v4 = v6;
  }

  MEMORY[0x1B8CADCA0](v5, v4);

  MEMORY[0x1B8CADCA0](0x203A68746170202CLL, 0xE900000000000027);
  MEMORY[0x1B8CADCA0](a1[2], a1[3]);
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D5BC50);
  v15 = a1[5];
  v7 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v7);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D5BC70);
  v8 = *(a1 + 32);
  v9 = 1702195828;
  if ((v8 & 1) == 0)
  {
    v9 = 0x65736C6166;
  }

  v10 = 0xE500000000000000;
  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  if (v8 == 2)
  {
    v11 = 0x6E776F6E6B6E75;
  }

  else
  {
    v11 = v9;
  }

  if (v8 == 2)
  {
    v12 = 0xE700000000000000;
  }

  else
  {
    v12 = v10;
  }

  MEMORY[0x1B8CADCA0](v11, v12);

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

void sub_1B7CDF944(uint64_t a1)
{
  v3 = *(sub_1B7CFDFF0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1B7CDE8F4(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B7CDFA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionFileRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1B7CDFA64()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D0A6F0;
  v2 = sub_1B7AEE088(0, &unk_1EDBE59C0, 0x1E695DEC8);
  *(v1 + 32) = v2;
  v3 = sub_1B7AEE088(0, &qword_1EDBE5A20, off_1E7CB5138);
  *(v1 + 40) = v3;
  sub_1B7CFEF10();

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7D0A6F0;
  *(v4 + 32) = v2;
  *(v4 + 40) = sub_1B7AEE088(0, &qword_1EDBE5A10, 0x1E69A81D0);
  sub_1B7CFEF10();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A6F0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  sub_1B7CFEF10();

  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B7D0A7B0;
  *(v6 + 32) = sub_1B7AEE088(0, &unk_1EDBE5930, 0x1E696AE18);
  sub_1B7CFEF10();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7D0A6F0;
  *(v7 + 32) = v2;
  *(v7 + 40) = sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
  sub_1B7CFEF10();

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7D0A6F0;
  *(v8 + 32) = v2;
  *(v8 + 40) = v3;
  sub_1B7CFEF10();

  return v0;
}

id sub_1B7CDFCEC()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D13D30;
  *(v1 + 32) = sub_1B7AEE088(0, &qword_1EDBE5A48, 0x1E695DF20);
  *(v1 + 40) = sub_1B7AEE088(0, &unk_1EDBE59C0, 0x1E695DEC8);
  *(v1 + 48) = sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  *(v1 + 56) = sub_1B7AEE088(0, &unk_1EDBE59E8, 0x1E695DEF0);
  *(v1 + 64) = sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  *(v1 + 72) = sub_1B7AEE088(0, &qword_1EDBE5A18, 0x1E696AAB0);
  *(v1 + 80) = sub_1B7AEE088(0, &qword_1EDBE59E0, 0x1E695DF00);
  *(v1 + 88) = sub_1B7AEE088(0, &unk_1EDBE59F8, 0x1E695DFD8);
  *(v1 + 96) = sub_1B7AEE088(0, &unk_1EDBE59D0, 0x1E695DFB0);
  *(v1 + 104) = sub_1B7AEE088(0, &unk_1EDBE5A38, 0x1E695DFB8);
  sub_1B7CFEF10();

  return v0;
}

id sub_1B7CDFEA4()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B7D0A6F0;
  v2 = sub_1B7AEE088(0, &unk_1EDBE59C0, 0x1E695DEC8);
  *(v1 + 32) = v2;
  v3 = sub_1B7AEE088(0, &qword_1EDBE58F8, 0x1E69A8340);
  *(v1 + 40) = v3;
  sub_1B7CFEF10();

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7D0A6F0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  sub_1B7CFEF10();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A6F0;
  *(v5 + 32) = v2;
  v6 = sub_1B7AEE088(0, &qword_1EDBE5920, off_1E7CB4FD8);
  *(v5 + 40) = v6;
  sub_1B7CFEF10();

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7D0A7B0;
  v8 = type metadata accessor for IMDSyncChatSliceRecord(0);
  *(v7 + 32) = v8;
  sub_1B7CFEF10();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7D0A6F0;
  *(v9 + 32) = v2;
  *(v9 + 40) = v8;
  sub_1B7CFEF10();

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7D0A6F0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v8;
  sub_1B7CFEF10();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7D0CB60;
  *(v11 + 32) = sub_1B7AEE088(0, &qword_1EDBE5A48, 0x1E695DF20);
  *(v11 + 40) = sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  *(v11 + 48) = type metadata accessor for IMDAttachmentMetadata(0);
  sub_1B7CFEF10();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7D0A6F0;
  *(v12 + 32) = v2;
  *(v12 + 40) = type metadata accessor for IMDSyncDeletedChatRecord(0);
  sub_1B7CFEF10();

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B7D0A6F0;
  *(v13 + 32) = v2;
  *(v13 + 40) = v6;
  sub_1B7CFEF10();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7D0A6F0;
  *(v14 + 32) = v2;
  v15 = sub_1B7AEE088(0, &unk_1EDBE5900, 0x1E696AEB0);
  *(v14 + 40) = v15;
  sub_1B7CFEF10();

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7D0A6F0;
  *(v16 + 32) = v2;
  v17 = sub_1B7AEE088(0, &unk_1EDBE5910, off_1E7CB5100);
  *(v16 + 40) = v17;
  sub_1B7CFEF10();

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B7D0A6F0;
  *(v18 + 32) = v2;
  *(v18 + 40) = v15;
  sub_1B7CFEF10();

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B7D0A6F0;
  *(v19 + 32) = v2;
  *(v19 + 40) = v17;
  sub_1B7CFEF10();

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B7D0A6F0;
  *(v20 + 32) = v2;
  *(v20 + 40) = v15;
  sub_1B7CFEF10();

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B7D0A6F0;
  *(v21 + 32) = v2;
  *(v21 + 40) = v17;
  sub_1B7CFEF10();

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B7D0A6F0;
  *(v22 + 32) = v2;
  *(v22 + 40) = v15;
  sub_1B7CFEF10();

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B7D0A6F0;
  *(v23 + 32) = v2;
  *(v23 + 40) = v17;
  sub_1B7CFEF10();

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B7D0A6F0;
  *(v24 + 32) = v2;
  *(v24 + 40) = v15;
  sub_1B7CFEF10();

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B7D0A6F0;
  *(v25 + 32) = v2;
  *(v25 + 40) = v17;
  sub_1B7CFEF10();

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B7D0A6F0;
  *(v26 + 32) = v2;
  *(v26 + 40) = v6;
  sub_1B7CFEF10();

  return v0;
}

id sub_1B7CE04F8()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = sub_1B7CDFA64();
  [v1 setInterface:v2 forSelector:sel_ptaskQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  v3 = sub_1B7CDFCEC();
  [v1 setInterface:v3 forSelector:sel_indexingQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  v4 = [v0 interfaceWithProtocol_];
  sub_1B7C107FC(&qword_1EBA539F0, &qword_1B7D13D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A7B0;
  *(v5 + 32) = sub_1B7AEE088(0, &qword_1EDBE5A08, 0x1E697B700);
  sub_1B7CFEF10();

  [v1 setInterface:v4 forSelector:sel_spotlightQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  v6 = [v0 interfaceWithProtocol_];
  v7 = [v0 interfaceWithProtocol_];
  [v6 setInterface:v7 forSelector:sel_addActivityMonitor_withID_ argumentIndex:0 ofReply:0];

  [v1 setInterface:v6 forSelector:sel_spotlightActivityMonitorQueryProviderWithBlock_ argumentIndex:0 ofReply:1];
  v8 = sub_1B7CDFEA4();
  [v1 setInterface:v8 forSelector:sel_databaseQueryProviderWithBlock_ argumentIndex:0 ofReply:1];

  return v1;
}

uint64_t sub_1B7CE071C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v2, 0);
    v4 = v30;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_1B7CFF0E0();
    v7 = result;
    v8 = 0;
    v24 = v1 + 72;
    v25 = v2;
    v26 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v27 = v8;
      v28 = *(v1 + 36);
      sub_1B7CDB094(*(v1 + 56) + (v7 << 6), v29);
      v11 = SqlOperation.Row.Column.description.getter();
      MEMORY[0x1B8CADCA0](v11);

      result = sub_1B7C26C78(v29);
      v12 = v4;
      v30 = v4;
      v13 = v1;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1B7AECEEC((v14 > 1), v15 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 16 * v15;
      *(v16 + 32) = 538976288;
      *(v16 + 40) = 0xE400000000000000;
      v9 = 1 << *(v13 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v26;
      v17 = *(v26 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v13;
      v4 = v12;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v24 + 8 * v10);
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1B7C8CB5C(v7, v28, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_1B7C8CB5C(v7, v28, 0);
      }

LABEL_4:
      v8 = v27 + 1;
      v7 = v9;
      if (v27 + 1 == v25)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CE097C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    v5 = *(a1 + 16);
    v23 = *a1;
    v24 = v5;
    v6 = *(a1 + 48);
    v25 = *(a1 + 32);
    v26 = v6;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_1B7CA5B98(&v23, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
  }

  else
  {
    sub_1B7AEE190(a1, &qword_1EBA52298, &unk_1B7D10570);
    v10 = *v2;
    v11 = sub_1B7AE1160(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v22 = *v3;
      if (!v15)
      {
        sub_1B7CE7BE8();
        v16 = v22;
      }

      v17 = (*(v16 + 56) + (v13 << 6));
      v19 = v17[2];
      v18 = v17[3];
      v20 = v17[1];
      v23 = *v17;
      v24 = v20;
      v25 = v19;
      v26 = v18;
      sub_1B7CE6C08(v13, v16);
      *v3 = v16;
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
    }

    return sub_1B7AEE190(&v23, &qword_1EBA52298, &unk_1B7D10570);
  }

  return result;
}

uint64_t sub_1B7CE0A94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1B7C255E0(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1B7CA6064(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1B7C410D4(a2);
    *v2 = v7;
  }

  else
  {
    sub_1B7AEE190(a1, &qword_1EBA51FA8, qword_1B7D0B230);
    sub_1B7CE3008(a2, v8);
    sub_1B7C410D4(a2);
    return sub_1B7AEE190(v8, &qword_1EBA51FA8, qword_1B7D0B230);
  }

  return result;
}

uint64_t sub_1B7CE0B50(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (a2)
  {
    v7 = sub_1B7C40430(a3);
    if (v8)
    {
      v9 = v7;
      v10 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v4;
      v23 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1B7CE9AA4(&qword_1EBA52178, &qword_1B7D0B2F8);
        v12 = v23;
      }

      v13 = *(v12 + 48);
      v14 = sub_1B7CFE7C0();
      v15 = *(v14 - 8);
      v16 = *(v15 + 8);
      v16(v13 + *(v15 + 72) * v9, v14);
      sub_1B7CE75C8(v9, v12);
      result = (v16)(a3, v14);
      *v4 = v12;
    }

    else
    {
      v21 = sub_1B7CFE7C0();
      v22 = *(*(v21 - 8) + 8);

      return v22(a3, v21);
    }
  }

  else
  {
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    sub_1B7CA61B0(a1, a3, v19);
    v20 = sub_1B7CFE7C0();
    result = (*(*(v20 - 8) + 8))(a3, v20);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_1B7CE0D14(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B7C107FC(&qword_1EBA53518, &qword_1B7D11ED8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_1B7CFE7C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_1B7AEE190(a1, &qword_1EBA53518, &qword_1B7D11ED8);
    sub_1B7CE30AC(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_1B7AEE190(v8, &qword_1EBA53518, &qword_1B7D11ED8);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1B7CA61DC(v14, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_1B7CE0F04()
{
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

Swift::UInt64_optional __swiftcall SqlOperation.Row.uint64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.uint64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.Row.string(forColumnName:)(Swift::String forColumnName)
{
  SqlOperation.Row.column(forColumnName:)(forColumnName._countAndFlagsBits, forColumnName._object, &v6);
  if (*(&v6 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v1 = v7;
    sub_1B7C26C78(v10);
    v4 = SqlOperation.Row.string(forColumnIndex:)(v1);
    object = v4.value._object;
    countAndFlagsBits = v4.value._countAndFlagsBits;
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52298, &unk_1B7D10570);
    countAndFlagsBits = 0;
    object = 0;
  }

  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::Int64_optional __swiftcall SqlOperation.Row.int64(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int64(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1B7CE10DC(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t))
{
  SqlOperation.Row.column(forColumnName:)(a1, a2, &v6);
  if (*(&v6 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v4 = v7;
    sub_1B7C26C78(v10);
    return a3(v4);
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52298, &unk_1B7D10570);
    return 0;
  }
}

Swift::Int_optional __swiftcall SqlOperation.Row.int(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.int(forColumnIndex:));
  result.value = v1;
  result.is_nil = v2;
  return result;
}

Swift::Int64_optional __swiftcall SqlOperation.Row.int64(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_6;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 1)
  {
LABEL_6:
    v5 = 0;
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    swift_endAccess();
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v5 = IMDInt64FromSqlColumn(&v16);
    v6 = 0;
  }

LABEL_8:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::UInt64_optional __swiftcall SqlOperation.Row.uint64(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_7;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 1)
  {
LABEL_7:
    v5 = 0;
    v6 = 1;
    goto LABEL_10;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  swift_endAccess();
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v5 = IMDInt64FromSqlColumn(&v16);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Int_optional __swiftcall SqlOperation.Row.int(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_6;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 1)
  {
LABEL_6:
    v5 = 0;
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    swift_endAccess();
    v16 = v10;
    v17 = v11;
    v18 = v12;
    LODWORD(v5) = IMDIntFromSqlColumn(&v16);
    v6 = 0;
    v5 = v5;
  }

LABEL_8:
  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::String_optional __swiftcall SqlOperation.Row.string(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_7;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_7;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v18);
  v7 = v18;
  v8 = v19;
  v9 = v20;
  swift_endAccess();
  v21 = v7;
  v22 = v8;
  v23 = v9;
  if (IMDSqlColumnGetType(&v21) != 3)
  {
LABEL_7:
    v5 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v18);
  v10 = v18;
  v11 = v19;
  v12 = v20;
  swift_endAccess();
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v5 = IMDStringFromSqlColumn(&v21);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v5;
  v14 = sub_1B7CFEA60();
  v16 = v15;

  v6 = v16;
  v5 = v14;
LABEL_10:
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::Double_optional __swiftcall SqlOperation.Row.double(forColumnIndex:)(Swift::Int forColumnIndex)
{
  if (forColumnIndex < 0)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  v5 = swift_endAccess();
  if (v4 <= forColumnIndex)
  {
    goto LABEL_6;
  }

  if (forColumnIndex >> 31)
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  swift_endAccess();
  v16 = v7;
  v17 = v8;
  v18 = v9;
  if (IMDSqlColumnGetType(&v16) != 2)
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), forColumnIndex, &v13);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    swift_endAccess();
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v6 = IMDDoubleFromSqlColumn(&v16);
    v5 = LOBYTE(v6);
  }

LABEL_8:
  result.value = v6;
  result.is_nil = v5;
  return result;
}

uint64_t SqlOperation.Row.blob(forColumnIndex:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  result = swift_endAccess();
  if (v4 <= a1)
  {
    return 0;
  }

  if (!(a1 >> 31))
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v3 + 48), a1, &v14);
    v6 = v14;
    v7 = v15;
    v8 = v16;
    swift_endAccess();
    v17 = v6;
    v18 = v7;
    v19 = v8;
    if (IMDSqlColumnGetType(&v17) == 4)
    {
      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v3 + 48), a1, &v14);
      v9 = v14;
      v10 = v15;
      v11 = v16;
      swift_endAccess();
      v17 = v9;
      v18 = v10;
      v19 = v11;
      result = IMDBlobFromSqlColumn(&v17);
      if (result)
      {
        v12 = result;
        v13 = sub_1B7CFE020();

        return v13;
      }

      goto LABEL_9;
    }

    return 0;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

unint64_t SqlOperation.Row.object(forColumnIndex:)@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0 || (v4 = result, v5 = *(v2 + 16), swift_beginAccess(), v6 = IMDSqlStatementColumnCount((v5 + 48)), result = swift_endAccess(), v6 <= v4))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else if (v4 >> 31)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v5 + 48), v4, v13);
    v7 = v13[0];
    v8 = v13[1];
    v9 = v13[2];
    swift_endAccess();
    *&v11 = v7;
    *(&v11 + 1) = v8;
    *&v12 = v9;
    result = IMDSqlColumnGetObject(&v11);
    if (result)
    {
      sub_1B7CFF0A0();
      result = swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10 = v12;
    *a2 = v11;
    a2[1] = v10;
  }

  return result;
}

Swift::Double_optional __swiftcall SqlOperation.Row.double(forColumnName:)(Swift::String forColumnName)
{
  v1 = sub_1B7CE10DC(forColumnName._countAndFlagsBits, forColumnName._object, SqlOperation.Row.double(forColumnIndex:));
  result.value = v2;
  result.is_nil = v1;
  return result;
}

uint64_t SqlOperation.Row.blob(forColumnName:)(unint64_t a1, unint64_t a2)
{
  SqlOperation.Row.column(forColumnName:)(a1, a2, &v4);
  if (*(&v4 + 1))
  {
    v8[0] = v4;
    v8[1] = v5;
    v8[2] = v6;
    v8[3] = v7;
    v2 = v5;
    sub_1B7C26C78(v8);
    return SqlOperation.Row.blob(forColumnIndex:)(v2);
  }

  else
  {
    sub_1B7AEE190(&v4, &qword_1EBA52298, &unk_1B7D10570);
    return 0;
  }
}

double SqlOperation.Row.object(forColumnName:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  SqlOperation.Row.column(forColumnName:)(a1, a2, &v6);
  if (*(&v6 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v10[3] = v9;
    v4 = v7;
    sub_1B7C26C78(v10);
    SqlOperation.Row.object(forColumnIndex:)(v4, a3);
  }

  else
  {
    sub_1B7AEE190(&v6, &qword_1EBA52298, &unk_1B7D10570);
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t SqlOperation.Row.columnCount.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  LODWORD(v1) = IMDSqlStatementColumnCount((v1 + 48));
  swift_endAccess();
  return v1;
}

uint64_t SqlOperation.Row.allColumns()()
{
  v1 = v0;
  v2 = sub_1B7C237A4(MEMORY[0x1E69E7CC0]);
  v3 = *(v0 + 16);
  swift_beginAccess();
  v32 = v3;
  v4 = IMDSqlStatementColumnCount((v3 + 48));
  swift_endAccess();
  if (!v4)
  {
    return v2;
  }

  v5 = 0;
  v41 = v4;
  while (1)
  {
    swift_beginAccess();
    v6 = *(v1 + 24);
    if (*(v6 + 16) && (v7 = sub_1B7AE1160(v5), (v8 & 1) != 0))
    {
      sub_1B7CDB094(*(v6 + 56) + (v7 << 6), v33);
      v36 = v33[0];
      v37 = v33[1];
      v38 = v33[2];
      v39 = v33[3];
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (v5 >> 31)
      {
        goto LABEL_28;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v32 + 48), v5, v34);
      v9 = v34[1];
      v10 = v35;
      swift_endAccess();
      sub_1B7CE20C4(v9, v10, v33);
      swift_beginAccess();
      sub_1B7CE097C(v33, v5);
      swift_endAccess();
      swift_beginAccess();
      v11 = *(v1 + 24);
      if (*(v11 + 16) && (v12 = sub_1B7AE1160(v5), (v13 & 1) != 0))
      {
        sub_1B7CDB094(*(v11 + 56) + (v12 << 6), &v36);
      }

      else
      {
        v39 = 0u;
        v37 = 0u;
        v38 = 0u;
        v36 = 0u;
      }

      swift_endAccess();
      if (!*(&v36 + 1))
      {

        sub_1B7AEE190(&v36, &qword_1EBA52298, &unk_1B7D10570);
        sub_1B7CEA5A0();
        swift_allocError();
        swift_willThrow();
        return v2;
      }
    }

    v40[0] = v36;
    v40[1] = v37;
    v40[2] = v38;
    v40[3] = v39;
    v14 = v36;
    sub_1B7CDB094(v40, &v36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v33[0] = v2;
    v16 = sub_1B7AE11D0(v14, *(&v14 + 1));
    v18 = v2[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_1B7CE3A14(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1B7AE11D0(v14, *(&v14 + 1));
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_30;
      }

LABEL_19:
      v2 = *&v33[0];
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v30 = v16;
    sub_1B7CE8054();
    v16 = v30;
    v2 = *&v33[0];
    if (v22)
    {
LABEL_3:
      sub_1B7CA6D44(&v36, v2[7] + (v16 << 6));
      goto LABEL_4;
    }

LABEL_20:
    v2[(v16 >> 6) + 8] |= 1 << v16;
    *(v2[6] + 16 * v16) = v14;
    v24 = (v2[7] + (v16 << 6));
    v25 = v36;
    v26 = v37;
    v27 = v39;
    v24[2] = v38;
    v24[3] = v27;
    *v24 = v25;
    v24[1] = v26;
    v28 = v2[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_29;
    }

    v2[2] = v29;

LABEL_4:
    ++v5;
    sub_1B7C26C78(v40);
    if (v41 == v5)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_1B7CFF740();
  __break(1u);
  return result;
}

uint64_t SqlOperation.Row.column(forColumnIndex:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {
    v7 = sub_1B7AE1160(a1);
    if (v8)
    {
      sub_1B7CDB094(*(v6 + 56) + (v7 << 6), v18);
      v9 = v18[1];
      *a2 = v18[0];
      a2[1] = v9;
      v10 = v18[3];
      a2[2] = v18[2];
      a2[3] = v10;
      return swift_endAccess();
    }
  }

  result = swift_endAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    v12 = *(v3 + 16);
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v12 + 48), a1, v19);
    v13 = v19[1];
    v14 = v20;
    swift_endAccess();
    sub_1B7CE20C4(v13, v14, v18);
    swift_beginAccess();
    sub_1B7CE097C(v18, a1);
    swift_endAccess();
    swift_beginAccess();
    v15 = *(v3 + 24);
    if (*(v15 + 16) && (v16 = sub_1B7AE1160(a1), (v17 & 1) != 0))
    {
      sub_1B7CDB094(*(v15 + 56) + (v16 << 6), a2);
    }

    else
    {
      a2[2] = 0u;
      a2[3] = 0u;
      *a2 = 0u;
      a2[1] = 0u;
    }

    return swift_endAccess();
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall SqlOperation.Row.isValidColumnIndex(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  swift_beginAccess();
  LODWORD(v3) = IMDSqlStatementColumnCount((v3 + 48));
  swift_endAccess();
  return v3 > a1;
}

void sub_1B7CE20C4(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = sub_1B7CFEB70();
    v8 = v7;
    v9 = a2;
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
    v9 = a2;
    if (a2 < 0)
    {
      goto LABEL_10;
    }
  }

  v10 = *(v3 + 16);
  swift_beginAccess();
  v11 = IMDSqlStatementColumnCount((v10 + 48));
  swift_endAccess();
  if (v9 < v11)
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v10 + 48), a2, &v15);
    v12 = v15;
    v13 = v16;
    swift_endAccess();
    v18 = v12;
    v19 = v13;
    v14 = IMDSqlColumnGetType(&v18) - 1;
    if (v14 <= 4)
    {
      SqlOperation.Row.object(forColumnIndex:)(v9, &v15);
      if (v17)
      {
        sub_1B7C255E0(&v15, &v18);
        sub_1B7C255E0(&v18, (a3 + 32));
        *a3 = v6;
        *(a3 + 8) = v8;
        *(a3 + 16) = v9;
        *(a3 + 24) = v14;
        return;
      }

      sub_1B7AEE190(&v15, &qword_1EBA51FA8, qword_1B7D0B230);
    }
  }

LABEL_10:
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = 4;
}

uint64_t SqlOperation.Row.column(forColumnName:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = *(v3 + 24);

  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      sub_1B7CDB094(*(v7 + 56) + ((v15 << 12) | (__clz(__rbit64(v10)) << 6)), &v31);
      v27 = v31;
      v28 = v32;
      v29 = v33;
      v30 = v34;
      if (v31 == __PAIR128__(a2, a1) || (sub_1B7CFF590() & 1) != 0)
      {
        break;
      }

      v10 &= v10 - 1;
      result = sub_1B7C26C78(&v27);
      v14 = v15;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v24 = v28;
    *a3 = v27;
    a3[1] = v24;
    v22 = v29;
    v23 = v30;
LABEL_16:
    a3[2] = v22;
    a3[3] = v23;
  }

  else
  {
    while (1)
    {
LABEL_5:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v15 >= v11)
      {
        break;
      }

      v10 = *(v7 + 64 + 8 * v15);
      ++v14;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v3 + 16);
    swift_beginAccess();
    v17 = sub_1B7CFEAD0();
    IMDSqlStatementColumnByName((v16 + 48), (v17 + 32), v25);
    v18 = v25[1];
    v19 = v26;
    swift_endAccess();

    sub_1B7CE20C4(v18, v19, &v27);
    if (*(&v27 + 1))
    {
      v31 = v27;
      v32 = v28;
      v33 = v29;
      v34 = v30;
      v20 = v28;
      sub_1B7CDB094(&v31, &v27);
      swift_beginAccess();
      sub_1B7CE097C(&v27, v20);
      result = swift_endAccess();
      v21 = v32;
      *a3 = v31;
      a3[1] = v21;
      v22 = v33;
      v23 = v34;
      goto LABEL_16;
    }

    result = sub_1B7AEE190(&v27, &qword_1EBA52298, &unk_1B7D10570);
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

Swift::Int_optional __swiftcall SqlOperation.Row.columnIndex(forColumnName:)(Swift::String forColumnName)
{
  SqlOperation.Row.column(forColumnName:)(forColumnName._countAndFlagsBits, forColumnName._object, &v5);
  v1 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    v9[0] = v5;
    v9[1] = v6;
    v9[2] = v7;
    v9[3] = v8;
    v2 = v6;
    sub_1B7C26C78(v9);
  }

  else
  {
    sub_1B7AEE190(&v5, &qword_1EBA52298, &unk_1B7D10570);
    v2 = 0;
  }

  v3 = v1 == 0;
  v4 = v2;
  result.value = v4;
  result.is_nil = v3;
  return result;
}

unint64_t SqlOperation.Row.columnType(forColumnIndex:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0 || (v4 = result, v5 = *(v2 + 16), swift_beginAccess(), v6 = IMDSqlStatementColumnCount((v5 + 48)), result = swift_endAccess(), v6 <= v4))
  {
    *a2 = 5;
  }

  else if (v4 >> 31)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementColumnByIndex((v5 + 48), v4, v11);
    v7 = v11[0];
    v8 = v11[1];
    v9 = v11[2];
    swift_endAccess();
    v12[0] = v7;
    v12[1] = v8;
    v12[2] = v9;
    Type = IMDSqlColumnGetType(v12);
    return SqlOperation.ColumnType.init(rawValue:)(Type, a2);
  }

  return result;
}

uint64_t SqlOperation.Row.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SqlOperation.Row.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SqlOperation.Row.Column.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B7CE26B0()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  sub_1B7CEA5F4(v0 + 32, v3);
  if (!v4)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SqlOperation.Row.Column.double.getter()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  sub_1B7CEA5F4(v0 + 32, v3);
  if (!v4)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SqlOperation.Row.Column.text.getter()
{
  if (*(v0 + 24) != 2)
  {
    return 0;
  }

  sub_1B7CEA5F4(v0 + 32, v3);
  if (!v4)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t SqlOperation.Row.Column.blob.getter()
{
  if (*(v0 + 24) != 3)
  {
    return 0;
  }

  sub_1B7CEA5F4(v0 + 32, v3);
  if (!v4)
  {
    sub_1B7AEE190(v3, &qword_1EBA51FA8, qword_1B7D0B230);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double SqlOperation.Row.ColumnIterator.next()@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 8) + 16);
  swift_beginAccess();
  LODWORD(v4) = IMDSqlStatementColumnCount((v4 + 48));
  swift_endAccess();
  if (v3 >= v4)
  {
    result = 0.0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    SqlOperation.Row.column(forColumnIndex:)(v3, a1);
    *(v1 + 16) = v3 + 1;
  }

  return result;
}

uint64_t SqlOperation.Row.makeIterator()@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = 0;
  *a1 = v2;
}

uint64_t sub_1B7CE2A04@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  a1[1] = *v1;
  a1[2] = 0;
  *a1 = v2;
}

uint64_t sub_1B7CE2A18()
{
  v1 = sub_1B7CE9E80(*v0);

  return v1;
}

uint64_t SqlOperation.Row.description.getter()
{
  v1 = SqlOperation.Row.allColumns()();
  sub_1B7CE071C(v1);

  v2 = *v0;
  v7 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v3 = sub_1B7CFEA10();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  return v7;
}

uint64_t SqlOperation.Row.Column.description.getter()
{
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1B7CFF210();

  strcpy(v12, "Column: name: ");
  HIBYTE(v12[1]) = -18;
  MEMORY[0x1B8CADCA0](*v0, *(v0 + 8));
  MEMORY[0x1B8CADCA0](0x3A7865646E69202CLL, 0xE900000000000020);
  v11[0] = *(v0 + 16);
  v1 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v1);

  MEMORY[0x1B8CADCA0](0x203A65707974202CLL, 0xE800000000000000);
  v2 = 0xE700000000000000;
  v3 = 0x72656765746E69;
  v4 = *(v0 + 24);
  v5 = 1954047348;
  v6 = 1651469410;
  if (v4 != 3)
  {
    v6 = 1819047278;
  }

  if (v4 != 2)
  {
    v5 = v6;
  }

  if (*(v0 + 24))
  {
    v3 = 0x74616F6C66;
    v2 = 0xE500000000000000;
  }

  if (*(v0 + 24) <= 1u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v5;
  }

  if (*(v0 + 24) <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0x3A65756C6176202CLL, 0xE900000000000020);
  sub_1B7CEA5F4(v0 + 32, v11);
  sub_1B7C107FC(&qword_1EBA51FA8, qword_1B7D0B230);
  v9 = sub_1B7CFEAB0();
  MEMORY[0x1B8CADCA0](v9);

  return v12[0];
}

double sub_1B7CE2EA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B7AE11D0(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE8638();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1B7AE910C((*(v12 + 56) + 40 * v9), a3);
    sub_1B7CE6F30(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B7CE2F50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B7C402DC(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B7CE8BD0();
    v9 = v15;
  }

  v10 = (*(v9 + 56) + 24 * v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  sub_1B7CE70EC(v6, v9);
  *v2 = v9;
  return v11;
}

double sub_1B7CE3008@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B7C40388(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE91A4();
      v11 = v13;
    }

    sub_1B7C410D4(*(v11 + 48) + 40 * v8);
    sub_1B7C255E0((*(v11 + 56) + 32 * v8), a2);
    sub_1B7CE7424(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B7CE30AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B7C40430(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE97C8();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1B7CFE7C0();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_1B7CE78E8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_1B7CFE7C0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1B7CE3244(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52260, &qword_1B7D0B3B8);
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + 8 * v24);
      v26 = (*(v5 + 56) + (v24 << 6));
      if (a2)
      {
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[3];
        v42 = v26[2];
        v43 = v29;
        v40 = v27;
        v41 = v28;
      }

      else
      {
        sub_1B7CDB094(v26, &v40);
      }

      v30 = *(v8 + 40);
      result = sub_1B7CFF7B0();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v25;
      v17 = (*(v8 + 56) + (v16 << 6));
      v18 = v40;
      v19 = v41;
      v20 = v43;
      v17[2] = v42;
      v17[3] = v20;
      *v17 = v18;
      v17[1] = v19;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE34D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
  v40 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE3790(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA53768, &unk_1B7D13070);
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_1B7CFF7B0();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE3A14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA521F8, &qword_1B7D0B358);
  v43 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = (*(v5 + 56) + (v25 << 6));
      if (v43)
      {
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[3];
        v46 = v29[2];
        v47 = v32;
        v44 = v30;
        v45 = v31;
      }

      else
      {
        sub_1B7CDB094(v29, &v44);
      }

      v33 = *(v8 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v27;
      v17[1] = v28;
      v18 = (*(v8 + 56) + (v16 << 6));
      v19 = v44;
      v20 = v45;
      v21 = v47;
      v18[2] = v46;
      v18[3] = v21;
      *v18 = v19;
      v18[1] = v20;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE3CDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52210, &qword_1B7D0B370);
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();

      result = sub_1B7CFF800();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE4030(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA521B8, &qword_1B7D0B330);
  v38 = a2;
  result = sub_1B7CFF370();
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
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
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

uint64_t sub_1B7CE42D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA521A8, &qword_1B7D0B328);
  v36 = a2;
  result = sub_1B7CFF370();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1B7AE910C(v25, v37);
      }

      else
      {
        sub_1B7AE90A8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
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
      result = sub_1B7AE910C(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_1B7CE459C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1B7CFDD90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52168, &qword_1B7D0B2E8);
  v46 = a2;
  result = sub_1B7CFF370();
  v14 = result;
  if (*(v11 + 16))
  {
    v50 = v10;
    v42 = v3;
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
    v43 = (v7 + 16);
    v44 = v7;
    v47 = (v7 + 32);
    v21 = result + 64;
    v45 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v49 = *(v7 + 72);
      v29 = v28 + v49 * v27;
      if (v46)
      {
        (*v47)(v50, v29, v6);
        v30 = *(v11 + 56) + 24 * v27;
        v48 = *v30;
        v51 = *(v30 + 8);
      }

      else
      {
        (*v43)(v50, v29, v6);
        v31 = *(v11 + 56) + 24 * v27;
        v48 = *v31;
        v51 = *(v31 + 8);
      }

      v32 = *(v14 + 40);
      sub_1B7CEA730(&qword_1EBA52618, MEMORY[0x1E6968B10]);
      result = sub_1B7CFE9B0();
      v33 = -1 << *(v14 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v21 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v21 + 8 * v35);
          if (v39 != -1)
          {
            v22 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v34) & ~*(v21 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v47)(*(v14 + 48) + v49 * v22, v50, v6);
      v23 = *(v14 + 56) + 24 * v22;
      *v23 = v48;
      *(v23 + 8) = v51;
      ++*(v14 + 16);
      v7 = v44;
      v11 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v11 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v16, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1B7CE49B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52238, &qword_1B7D0B390);
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1B7CFF7B0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE4C18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&unk_1EBA52270, &qword_1B7D0B3C8);
  v39 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v23 = (*(v5 + 56) + 24 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      if ((v39 & 1) == 0)
      {

        v27 = v22;
      }

      v28 = *(v8 + 40);
      result = sub_1B7CFEFC0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 24 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE4EC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52250, &qword_1B7D0B3A8);
  v35 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v23 = *(v5 + 56) + 48 * v21;
      v37 = *v23;
      v38 = *(v23 + 16);
      v24 = *(v23 + 32);
      v36 = *(v23 + 40);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v22);
      result = sub_1B7CFF800();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 48 * v16;
      *v17 = v37;
      *(v17 + 16) = v38;
      *(v17 + 32) = v24;
      *(v17 + 40) = v36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE5184(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52258, &qword_1B7D0B3B0);
  v33 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v21);
      result = sub_1B7CFF800();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE5414(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52248, &qword_1B7D0B3A0);
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v21);
      result = sub_1B7CFF800();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE5694(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52240, &qword_1B7D0B398);
  v38 = a2;
  result = sub_1B7CFF370();
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
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
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

uint64_t sub_1B7CE5934(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA521D0, &qword_1B7D0B348);
  result = sub_1B7CFF370();
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
        sub_1B7C255E0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1B7C41078(v24, &v38);
        sub_1B7AED284(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1B7CFF160();
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
      result = sub_1B7C255E0(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1B7CE5BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA521C8, &qword_1B7D0B340);
  v40 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE5EAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA521C0, &qword_1B7D0B338);
  v39 = a2;
  result = sub_1B7CFF370();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B7CFF7C0();
      sub_1B7CFEB10();
      result = sub_1B7CFF800();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B7CE6164(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1B7CFE7C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_1B7C107FC(&qword_1EBA53A08, &qword_1B7D13F20);
  v49 = a2;
  result = sub_1B7CFF370();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90]);
      result = sub_1B7CFE9B0();
      v35 = -1 << *(v33 + 32);
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
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_1B7CE65C4(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1B7CFE7C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_1B7C107FC(a3, a4);
  v48 = a2;
  result = sub_1B7CFF370();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v44 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v45 = (v11 + 16);
    v46 = v11;
    v49 = (v11 + 32);
    v25 = result + 64;
    v47 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v28 = (v23 - 1) & v23;
LABEL_17:
      v31 = v27 | (v19 << 6);
      v50 = v28;
      v32 = *(v11 + 72);
      v33 = *(v15 + 48) + v32 * v31;
      if (v48)
      {
        (*v49)(v51, v33, v10);
      }

      else
      {
        (*v45)(v51, v33, v10);
      }

      v34 = *(*(v15 + 56) + 8 * v31);
      v35 = *(v18 + 40);
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90]);
      result = sub_1B7CFE9B0();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v49)(*(v18 + 48) + v32 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v34;
      ++*(v18 + 16);
      v11 = v46;
      v15 = v47;
      v23 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v27 = __clz(__rbit64(v30));
        v28 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v15 + 32);
    v7 = v44;
    if (v43 >= 64)
    {
      bzero(v20, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_1B7CE6984(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B7C107FC(&qword_1EBA52208, &qword_1B7D0B368);
  v36 = a2;
  result = sub_1B7CFF370();
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
      result = sub_1B7CFF7B0();
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

uint64_t sub_1B7CE6C08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      v14 = (v13 + 8 * v6);
      v15 = *v14;
      result = sub_1B7CFF7B0();
      v16 = result & v7;
      if (v3 >= v8)
      {
        if (v16 >= v8 && v3 >= v16)
        {
LABEL_15:
          v19 = (v13 + 8 * v3);
          if (v3 != v6 || v19 >= v14 + 1)
          {
            *v19 = *v14;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + (v3 << 6));
          v22 = (v20 + (v6 << 6));
          if (v3 != v6 || v21 >= v22 + 4)
          {
            v9 = *v22;
            v10 = v22[1];
            v11 = v22[3];
            v21[2] = v22[2];
            v21[3] = v11;
            *v21 = v9;
            v21[1] = v10;
            v3 = v6;
          }
        }
      }

      else if (v16 >= v8 || v3 >= v16)
      {
        goto LABEL_15;
      }

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

uint64_t sub_1B7CE6D80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      v13 = sub_1B7CFF800();

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

uint64_t sub_1B7CE6F30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1B7CFF7C0();

      sub_1B7CFEB10();
      v15 = sub_1B7CFF800();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
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

void sub_1B7CE70EC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_1B7CFEFC0();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 24 * v3;
          v21 = (v19 + 24 * v6);
          if (v3 != v6 || v20 >= v21 + 24)
          {
            v9 = *v21;
            *(v20 + 16) = *(v21 + 2);
            *v20 = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

uint64_t sub_1B7CE7284(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      sub_1B7CFF7C0();
      MEMORY[0x1B8CAE910](v12);
      result = sub_1B7CFF800();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 48 * v3);
        v19 = (v17 + 48 * v6);
        if (v3 != v6 || v18 >= v19 + 3)
        {
          v9 = *v19;
          v10 = v19[2];
          v18[1] = v19[1];
          v18[2] = v10;
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B7CE7424(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B7CFF0F0() + 1) & ~v5;
    do
    {
      sub_1B7C41078(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_1B7CFF160();
      result = sub_1B7C410D4(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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

void sub_1B7CE75C8(int64_t a1, uint64_t a2)
{
  v41 = sub_1B7CFE7C0();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = sub_1B7CFF0F0();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v23 = v6;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      v24 = *(v23 + 40);
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90]);
      v25 = sub_1B7CFE9B0();
      (*v36)(v20, v13);
      v14 = v21;
      v26 = v25 & v21;
      if (a1 >= v39)
      {
        if (v26 >= v39 && a1 >= v26)
        {
LABEL_15:
          v6 = v42;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v29 = *(v6 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v39 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }
}

void sub_1B7CE78E8(int64_t a1, uint64_t a2)
{
  v4 = sub_1B7CFE7C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1B7CFF0F0();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      v21 = *(a2 + 40);
      sub_1B7CEA730(&qword_1EBA52048, MEMORY[0x1E697BC90]);
      v22 = sub_1B7CFE9B0();
      (*v31)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v33)
      {
        if (v23 >= v33 && a1 >= v23)
        {
LABEL_15:
          v26 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v26 < v18 || *(a2 + 56) + v26 >= (*(a2 + 56) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v26 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v33 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

void *sub_1B7CE7BE8()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52260, &qword_1B7D0B3B8);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        result = sub_1B7CDB094(*(v2 + 56) + (v17 << 6), v23);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + (v17 << 6));
        v21 = v23[2];
        v20 = v23[3];
        v22 = v23[1];
        *v19 = v23[0];
        v19[1] = v22;
        v19[2] = v21;
        v19[3] = v20;
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

void *sub_1B7CE7D6C()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA53410, &qword_1B7D11578);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1B7CE7EE4()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA53768, &unk_1B7D13070);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B7CE8054()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521F8, &qword_1B7D0B358);
  v2 = *v0;
  v3 = sub_1B7CFF360();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = v17 << 6;
        sub_1B7CDB094(*(v2 + 56) + (v17 << 6), v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v26 = v29[2];
        v25 = v29[3];
        v27 = v29[1];
        *v24 = v29[0];
        v24[1] = v27;
        v24[2] = v26;
        v24[3] = v25;
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

        v1 = v28;
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

void *sub_1B7CE8200()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52210, &qword_1B7D0B370);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B7CE8360()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52180, &qword_1B7D0B300);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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

void *sub_1B7CE84C8()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521B8, &qword_1B7D0B330);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_1B7CE8638()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521A8, &qword_1B7D0B328);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v22 = 40 * v17;
        sub_1B7AE90A8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B7AE910C(v25, *(v4 + 56) + v22);
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

char *sub_1B7CE87E0()
{
  v1 = v0;
  v2 = sub_1B7CFDD90();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52168, &qword_1B7D0B2E8);
  v6 = *v0;
  v7 = sub_1B7CFF360();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    v38 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v44 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v23 = v40;
        v22 = v41;
        v24 = *(v41 + 72) * v21;
        v25 = v39;
        (*(v41 + 16))(v39, *(v6 + 48) + v24, v40);
        v26 = *(v6 + 56);
        v27 = 24 * v21;
        v28 = (v26 + 24 * v21);
        v29 = v28[1];
        v43 = *v28;
        v30 = v28[2];
        v31 = v42;
        (*(v22 + 32))(*(v42 + 48) + v24, v25, v23);
        v32 = (*(v31 + 56) + v27);
        v6 = v38;
        *v32 = v43;
        v32[1] = v29;
        v32[2] = v30;

        v16 = v44;
      }

      while (v44);
    }

    v19 = v12;
    v8 = v42;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v20 = *(v35 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1B7CE8A84()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52238, &qword_1B7D0B390);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B7CE8BD0()
{
  v1 = v0;
  sub_1B7C107FC(&unk_1EBA52270, &qword_1B7D0B3C8);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 24 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;

        result = v18;
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

void *sub_1B7CE8D60()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52250, &qword_1B7D0B3A8);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = *(v2 + 56) + 48 * v17;
        v20 = *(v18 + 32);
        v19 = *(v18 + 40);
        v21 = *v18;
        v22 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 48 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v19;
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

void *sub_1B7CE8EE0()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52258, &qword_1B7D0B3B0);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1B7CE903C()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA52240, &qword_1B7D0B398);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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

void *sub_1B7CE91A4()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521D0, &qword_1B7D0B348);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        sub_1B7C41078(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B7AED284(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B7C255E0(v22, (*(v4 + 56) + v17));
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

void *sub_1B7CE9348()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521C8, &qword_1B7D0B340);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

id sub_1B7CE94C0()
{
  v1 = v0;
  sub_1B7C107FC(&qword_1EBA521C0, &qword_1B7D0B338);
  v2 = *v0;
  v3 = sub_1B7CFF360();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_1B7CE9640(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1B7C107FC(a1, a2);
  v4 = *v2;
  v5 = sub_1B7CFF360();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1B7CE97C8()
{
  v1 = v0;
  v35 = sub_1B7CFE7C0();
  v39 = *(v35 - 8);
  v2 = v39[8];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v31 - v5;
  sub_1B7C107FC(&qword_1EBA53A08, &qword_1B7D13F20);
  v6 = *v0;
  v7 = sub_1B7CFF360();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1B7CE9AA4(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1B7CFE7C0();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(a1, a2);
  v8 = *v2;
  v9 = sub_1B7CFF360();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        result = (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_1B7CE9D28(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1B7C107FC(a1, a2);
  v4 = *v2;
  v5 = sub_1B7CFF360();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        v23 = (*(v6 + 56) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1B7CE9E80(uint64_t a1)
{
  v2 = *(a1 + 16);

  swift_beginAccess();
  v3 = IMDSqlStatementColumnCount((v2 + 48));
  swift_endAccess();
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      swift_beginAccess();
      v8 = *(a1 + 24);
      if (*(v8 + 16))
      {
        v9 = sub_1B7AE1160(v5);
        if (v10)
        {
          sub_1B7CDB094(*(v8 + 56) + (v9 << 6), &v60);
          v64 = v60;
          v65 = v61;
          v66 = v62;
          v67 = v63;
          goto LABEL_26;
        }
      }

      result = swift_endAccess();
      if (v5 >> 31)
      {
        goto LABEL_50;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v2 + 48), v5, &v56);
      v12 = *(&v56 + 1);
      v13 = v57;
      swift_endAccess();
      if (v12)
      {
        v14 = sub_1B7CFEB70();
        v16 = v15;
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = 0;
        v16 = 0xE000000000000000;
        if ((v13 & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      swift_beginAccess();
      v17 = IMDSqlStatementColumnCount((v2 + 48));
      swift_endAccess();
      if (v13 >= v17)
      {
        goto LABEL_21;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v2 + 48), v13, &v56);
      v52 = v4;
      v18 = *(&v56 + 1);
      v19 = v56;
      v20 = v57;
      swift_endAccess();
      v58 = __PAIR128__(v18, v19);
      v4 = v52;
      v59 = v20;
      Type = IMDSqlColumnGetType(&v58);
      if ((Type - 1) > 4)
      {
        goto LABEL_21;
      }

      v51 = Type - 1;
      swift_beginAccess();
      v22 = IMDSqlStatementColumnCount((v2 + 48));
      swift_endAccess();
      if (v13 >= v22)
      {
        break;
      }

      swift_beginAccess();
      IMDSqlStatementColumnByIndex((v2 + 48), v13, v55);
      v23 = v55[0];
      v24 = v55[1];
      v25 = v55[2];
      swift_endAccess();
      *&v53 = v23;
      *(&v53 + 1) = v24;
      *&v54 = v25;
      if (IMDSqlColumnGetObject(&v53))
      {
        sub_1B7CFF0A0();
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = 0u;
        v54 = 0u;
      }

      v56 = v53;
      v57 = v54;
      v4 = v52;
      if (!*(&v54 + 1))
      {
        goto LABEL_20;
      }

      sub_1B7C255E0(&v56, &v58);
      sub_1B7C255E0(&v58, &v62);
      *&v60 = v14;
      *(&v60 + 1) = v16;
      *&v61 = v13;
      v26 = v51;
LABEL_22:
      BYTE8(v61) = v26;
      swift_beginAccess();
      sub_1B7CE097C(&v60, v5);
      swift_endAccess();
      swift_beginAccess();
      v27 = *(a1 + 24);
      if (*(v27 + 16) && (v28 = sub_1B7AE1160(v5), (v29 & 1) != 0))
      {
        sub_1B7CDB094(*(v27 + 56) + (v28 << 6), &v64);
      }

      else
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
      }

LABEL_26:
      result = swift_endAccess();
      if (!*(&v64 + 1))
      {
        goto LABEL_45;
      }

      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = v67;
      if (!v6)
      {
        v30 = *(v4 + 3);
        if (((v30 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
        v32 = v4;
        if (v31 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v31;
        }

        sub_1B7C107FC(&unk_1EBA53A10, qword_1B7D13F28);
        v34 = swift_allocObject();
        v35 = j__malloc_size(v34);
        v36 = v35 - 32;
        if (v35 < 32)
        {
          v36 = v35 + 31;
        }

        v37 = v36 >> 6;
        *(v34 + 2) = v33;
        *(v34 + 3) = 2 * (v36 >> 6);
        v38 = v32;
        v39 = v34 + 32;
        v40 = *(v38 + 3) >> 1;
        if (*(v38 + 2))
        {
          v41 = v38 + 32;
          if (v34 != v38 || v39 >= &v41[64 * v40])
          {
            v42 = v38;
            memmove(v34 + 32, v41, v40 << 6);
            v38 = v42;
          }

          *(v38 + 2) = 0;
        }

        v7 = &v39[64 * v40];
        v6 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v40;

        v4 = v34;
      }

      v43 = __OFSUB__(v6--, 1);
      if (v43)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      ++v5;
      v44 = v68;
      v45 = v69;
      v46 = v71;
      *(v7 + 2) = v70;
      *(v7 + 3) = v46;
      *v7 = v44;
      *(v7 + 1) = v45;
      v7 += 64;
      swift_beginAccess();
      v47 = IMDSqlStatementColumnCount((v2 + 48));
      swift_endAccess();
      if (v5 >= v47)
      {
        goto LABEL_44;
      }
    }

    v56 = 0u;
    v57 = 0u;
LABEL_20:
    sub_1B7AEE190(&v56, &qword_1EBA51FA8, qword_1B7D0B230);
LABEL_21:
    v62 = 0u;
    v63 = 0u;
    *&v60 = v14;
    *(&v60 + 1) = v16;
    *&v61 = v13;
    v26 = 4;
    goto LABEL_22;
  }

  v6 = 0;
LABEL_44:
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
LABEL_45:

  result = sub_1B7AEE190(&v64, &qword_1EBA52298, &unk_1B7D10570);
  v48 = *(v4 + 3);
  if (v48 >= 2)
  {
    v49 = v48 >> 1;
    v43 = __OFSUB__(v49, v6);
    v50 = v49 - v6;
    if (v43)
    {
      goto LABEL_52;
    }

    *(v4 + 2) = v50;
  }

  return v4;
}

uint64_t sub_1B7CEA39C(uint64_t a1)
{

  swift_beginAccess();
  HasRows = IMDSqlOperationHasRows(a1 + 16);
  swift_endAccess();
  v3 = MEMORY[0x1E69E7CC0];
  if (HasRows)
  {
    type metadata accessor for SqlOperation.Row();
    v4 = 0;
    v5 = (v3 + 32);
    v6 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      result = swift_allocObject();
      v8 = result;
      *(result + 16) = a1;
      *(result + 24) = v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v10 = *(v3 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
        v13 = swift_allocObject();
        v14 = j__malloc_size(v13);
        v15 = v14 - 32;
        if (v14 < 32)
        {
          v15 = v14 - 25;
        }

        v16 = v15 >> 3;
        *(v13 + 2) = v12;
        *(v13 + 3) = (2 * (v15 >> 3)) | 1;
        v17 = v13 + 32;
        v18 = *(v3 + 3) >> 1;
        v5 = &v13[8 * v18 + 32];
        v19 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - v18;
        if (*(v3 + 2))
        {
          v20 = v3 + 32;
          if (v13 != v3 || v17 >= &v20[8 * v18])
          {
            memmove(v17, v20, 8 * v18);
          }

          *(v3 + 2) = 0;
        }

        else
        {
        }

        v3 = v13;
        v9 = __OFSUB__(v19, 1);
        v4 = v19 - 1;
        if (v9)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5++ = v8;
      swift_beginAccess();
      v21 = IMDSqlOperationHasRows(a1 + 16);
      swift_endAccess();
      if (!v21)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:

  v22 = *(v3 + 3);
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v9 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v9)
    {
      goto LABEL_29;
    }

    *(v3 + 2) = v24;
  }

  return v3;
}

unint64_t sub_1B7CEA5A0()
{
  result = qword_1EBA539F8;
  if (!qword_1EBA539F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA539F8);
  }

  return result;
}

uint64_t sub_1B7CEA5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA8, qword_1B7D0B230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7CEA668()
{
  result = qword_1EBA53A00;
  if (!qword_1EBA53A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA53A00);
  }

  return result;
}

uint64_t sub_1B7CEA6F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7CEA730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7CEA77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7CFF210();

  strcpy(v7, "sqlite3 error ");
  v5 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](a2, a3);
  return v7[0];
}

unint64_t sub_1B7CEA864(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B7CD9634(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7CEA8D8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B7CFF280();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B7CEA9FC(uint64_t a1)
{
  type metadata accessor for StorageInspectorCrossCheckReport();
  v3 = swift_allocObject();
  v3[3] = 0;
  v3[4] = 0;
  v3[2] = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  if (qword_1EBA515D8 != -1)
  {
    swift_once();
    v3 = *(v1 + 24);
  }

  v4 = *(qword_1EBA5DAF0 + OBJC_IVAR____TtC14IMDPersistence29StorageInspectorReportManager_report);
  v5 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = v3;
  v7 = v4;

  return v1;
}

void sub_1B7CEAAEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      sub_1B7AE90A8(v4, v41);
      sub_1B7AE90A8(v41, v42);
      sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
      type metadata accessor for DatabaseExportRecordCounter();
      if (swift_dynamicCast())
      {
        break;
      }

      ++v3;
      sub_1B7AE9168(v41);
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_6;
      }
    }

    sub_1B7AE910C(v41, v42);
    v6 = swift_dynamicCast();
    v5 = *&v41[0];
    if (!v6)
    {
      v5 = 0;
    }
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  v39 = v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v1 + 32;
    while (v8 < *(v1 + 16))
    {
      sub_1B7AE90A8(v9, v41);
      sub_1B7AE90A8(v41, v42);
      sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
      type metadata accessor for DatabaseInspector();
      if (swift_dynamicCast())
      {

        sub_1B7AE910C(v41, v42);
        v11 = swift_dynamicCast();
        v12 = *&v41[0];
        if (!v11)
        {
          v12 = 0;
        }

        v38 = v12;
        v10 = *(v1 + 16);
        if (!v10)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      ++v8;
      sub_1B7AE9168(v41);
      v9 += 40;
      if (v7 == v8)
      {
        goto LABEL_14;
      }
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_14:
  v38 = 0;
  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_23:
    v15 = v39;
    if (v39)
    {
      v16 = 0;
      v17 = v37;
LABEL_25:
      v18 = v38;
LABEL_26:
      if (!v18)
      {
        goto LABEL_40;
      }

      v19 = v0;
      v20 = *(v0 + 24);
      type metadata accessor for RecordCounterDatabaseInspectorCrossCheckReport();
      swift_allocObject();

      v21 = sub_1B7C1CB20(v15, v18);
      if (v17)
      {
LABEL_35:

        goto LABEL_40;
      }

      v22 = v21;
      swift_beginAccess();
      v23 = *(v20 + 16);
      *(v20 + 16) = v22;

      v0 = v19;
    }

    else
    {
      v16 = 0;
      v18 = v38;
LABEL_37:
      if (!v18)
      {
        goto LABEL_41;
      }
    }

    if (v16)
    {
      v29 = *(v0 + 24);
      type metadata accessor for DatabaseInspectorAttachmentStorageInspectorCrossCheckReport();
      v30 = swift_allocObject();
      v31 = MEMORY[0x1E69E7CC0];
      *(v30 + 16) = MEMORY[0x1E69E7CC0];
      *(v30 + 24) = v31;
      v32 = *(v18 + 80);
      v33 = *(v16 + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);

      sub_1B7C9E06C(v32, v33);

      swift_beginAccess();
      v34 = *(v29 + 32);
      *(v29 + 32) = v30;
LABEL_41:

      return;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_19:
  v13 = 0;
  v14 = v1 + 32;
  while (v13 < *(v1 + 16))
  {
    sub_1B7AE90A8(v14, v41);
    sub_1B7AE90A8(v41, v40);
    sub_1B7C107FC(&qword_1EBA52908, qword_1B7D10580);
    type metadata accessor for AttachmentStorageInspector();
    if (swift_dynamicCast())
    {

      sub_1B7AE910C(v41, v42);
      v24 = swift_dynamicCast();
      v25 = *&v41[0];
      if (v24)
      {
        v16 = *&v41[0];
      }

      else
      {
        v16 = 0;
      }

      v17 = v37;
      v18 = v38;
      v15 = v39;
      if (!v39)
      {
        goto LABEL_37;
      }

      if (!v16)
      {
        goto LABEL_26;
      }

      v26 = v0;
      v27 = *(v0 + 24);
      type metadata accessor for RecordCounterAttachmentStorageInspectorCrossCheckReport();
      swift_allocObject();

      v28 = sub_1B7CB6044(v39, v16);
      if (!v37)
      {
        v35 = v28;
        swift_beginAccess();
        v36 = *(v27 + 24);
        *(v27 + 24) = v35;

        v16 = v25;
        v0 = v26;
        v17 = 0;
        v15 = v39;
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    ++v13;
    sub_1B7AE9168(v41);
    v14 += 40;
    if (v10 == v13)
    {
      goto LABEL_23;
    }
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_1B7CEB00C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7CEB070()
{
  v1 = *v0;
  sub_1B7CEAAEC();
  return 1;
}

uint64_t sub_1B7CEB098@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  a1[3] = type metadata accessor for StorageInspectorCrossCheckReport();
  a1[4] = &protocol witness table for StorageInspectorCrossCheckReport;
  *a1 = v3;
}

void sub_1B7CEB104(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_localizedDescription(a2, a2, a3);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Failed to get file size for item at path: %@, with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB1FC(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = objc_msgSend_localizedDescription(a2, a2, a3);
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Downgraded database SQL query '%@' got error: '%@'", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB29C(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "[IMDDatabase(Database) fetchCountOfRecordType:completionHandler:]";
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Unknown record type %lld", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB328(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Failed to get total row count for table %{public}@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB408(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Unable to select rows from Message PTask Table: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB484(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Unable to delete completed task from Message PTask Table: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB514(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB5C8(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB67C(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB730(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB7E4(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB898(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEB94C(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBA00(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBAB4(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBB68(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBC1C(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBCD0(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBD84(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBE38(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBEEC(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEBFA0(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC054(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC108(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC1BC(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC270(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC324(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC3D8(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC48C(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC540(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC5B8(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC66C(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC720(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}