void sub_1B7C603B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1B7CC2DDC();
  if (!v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](v6[2], v6[3]);
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);

        (*(*v6 + 152))(v8);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

void sub_1B7C605EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1B7CC2C18();
  if (!v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 32);
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B8CAE380](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            v4 = sub_1B7CFF120();
            goto LABEL_4;
          }
        }

        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        sub_1B7CFF210();

        MEMORY[0x1B8CADCA0](*(v6 + 16), *(v6 + 24));
        MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
        SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);

        ++v5;
      }

      while (v7 != v4);
    }
  }
}

uint64_t sub_1B7C607E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C60868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7C608C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7C608E0(void *a1, sqlite3_int64 a2, uint64_t a3)
{
  result = sub_1B7C5C3F8(a2, a1[11], a3);
  if (!v3)
  {
    if (!result)
    {
      v8 = *(a3 + 80);
      result = swift_beginAccess();
      v9 = *(v8 + 32);
      v10 = __CFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        __break(1u);
        goto LABEL_12;
      }

      *(v8 + 32) = v11;
    }

    v12 = *(a3 + 80);
    v13 = sub_1B7C5C3F8(a2, a1[15], a3);
    result = swift_beginAccess();
    v14 = *(v12 + 64);
    v10 = __CFADD__(v14, v13);
    v15 = v14 + v13;
    if (!v10)
    {
      *(v12 + 64) = v15;
      v16 = a1[7];
      sub_1B7C107FC(&qword_1EBA52998, &qword_1B7D0DC40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7D0A7B0;
      *(inited + 32) = a2;
      sub_1B7C74460(inited);

      return swift_setDeallocating();
    }

LABEL_12:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B7C60A20()
{
  result = qword_1EDBE5920;
  if (!qword_1EDBE5920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBE5920);
  }

  return result;
}

uint64_t sub_1B7C60A6C()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  strcpy(v5, "DELETE FROM ");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  MEMORY[0x1B8CADCA0](v2, v3);

  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D555C0);
  SqlOperation.execute(_:_:)(v5[0], v5[1], 0);
}

uint64_t sub_1B7C60B88(uint64_t a1)
{
  v2 = v1;
  v32 = sub_1B7CFDFF0();
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  result = type metadata accessor for StorageInspectionAttachmentDirectory();
  v8 = *(a1 + *(result + 20));
  v30 = *(v8 + 16);
  if (!v30)
  {
    return v24;
  }

  v9 = 0;
  v28 = v4 + 8;
  v29 = v4 + 16;
  v26 = " WHERE filename IS NULL;";
  v27 = 0x80000001B7D51810;
  v25 = v8;
  while (v9 < *(v8 + 16))
  {
    v10 = v31;
    v11 = v32;
    (*(v4 + 16))(v31, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v9, v32);
    v12 = sub_1B7CFDFD0();
    v14 = v13;
    (*(v4 + 8))(v10, v11);
    if (qword_1EBA515F0 != -1)
    {
      swift_once();
    }

    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1B7CFF210();

    v34 = 0xD000000000000012;
    v35 = v27;
    v15 = *(v33 + 80);
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);

    MEMORY[0x1B8CADCA0](v16, v17);

    MEMORY[0x1B8CADCA0](0xD000000000000014, v26 | 0x8000000000000000);
    v18 = v34;
    v19 = v35;
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    *(v20 + 24) = v14;

    v21 = sub_1B7CD7370(v18, v19, sub_1B7C66E60, v20);
    if (v2)
    {

      return v24;
    }

    v22 = v21;
    ++v9;

    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    result = sub_1B7C50E44(v23);
    v8 = v25;
    if (v30 == v9)
    {
      return v36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C60E9C(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D55370);
  v3 = *(v1 + 104);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  MEMORY[0x1B8CADCA0](v4, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000032, 0x80000001B7D554F0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C663A8, v6);

  if (v7)
  {
    return v7;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1B7C61014(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v110 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v95 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v95 - v11;
  v12 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  v108 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v19 = *(v108 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v95 - v24);
  v26 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v95 - v28;
  if (v2[1])
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v107 = v19;
  v104 = v15;
  v30 = *v2;
  v31 = type metadata accessor for StorageInspectionAttachmentRecord();
  sub_1B7C2569C(v2 + v31[8], v29, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  v32 = (*(v5 + 48))(v29, 1, v4);
  v105 = v2;
  v106 = v5;
  v113 = v4;
  v103 = v22;
  if (v32 != 1)
  {
    sub_1B7CFDFC0();
    (*(v5 + 8))(v29, v4);

LABEL_12:
    v41 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  sub_1B7AEE190(v29, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  v33 = v2 + v31[10];
  if ((*(v33 + 8) & 1) != 0 || *v33 != 5)
  {
    goto LABEL_12;
  }

  v34 = 0xD000000000000015;
  v114 = 0;
  v115 = 0xE000000000000000;
  sub_1B7CFF210();

  v114 = 0xD000000000000020;
  v115 = 0x80000001B7D553F0;
  v35 = IMFileTransferState.description.getter(5);
  MEMORY[0x1B8CADCA0](v35);

  MEMORY[0x1B8CADCA0](0x636E79536B63202CLL, 0xEE00206574617453);
  v36 = v2 + v31[9];
  if ((*(v36 + 8) & 1) == 0)
  {
    v94 = *v36;
    v37 = v31;
    if (v94 <= 2)
    {
      switch(v94)
      {
        case 0:
          v38 = 0x80000001B7D554D0;
          v34 = 0xD00000000000001ELL;
          goto LABEL_8;
        case 1:
          v38 = 0x80000001B7D554B0;
          v34 = 0xD00000000000001BLL;
          goto LABEL_8;
        case 2:
          v38 = 0x80000001B7D55490;
          v34 = 0xD00000000000001DLL;
          goto LABEL_8;
      }
    }

    else
    {
      if (v94 <= 4)
      {
        if (v94 == 3)
        {
          v38 = 0x80000001B7D55470;
        }

        else
        {
          v38 = 0x80000001B7D55440;
          v34 = 0xD000000000000029;
        }

        goto LABEL_8;
      }

      if (v94 == 5)
      {
        v38 = 0x80000001B7D55420;
        v34 = 0xD00000000000001FLL;
        goto LABEL_8;
      }

      if (v94 == 64)
      {
        v38 = 0xEA0000000000656CLL;
        v34 = 0x6261636E79736E75;
        goto LABEL_8;
      }
    }

    v38 = 0xE700000000000000;
    v34 = 0x6E776F6E6B6E75;
    goto LABEL_8;
  }

  v37 = v31;
  v34 = 7104878;
  v38 = 0xE300000000000000;
LABEL_8:
  MEMORY[0x1B8CADCA0](v34, v38);

  v39 = v114;
  v40 = v115;
  v41 = sub_1B7AF182C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  if (v43 >= v42 >> 1)
  {
    v41 = sub_1B7AF182C((v42 > 1), v43 + 1, 1, v41);
  }

  *(v41 + 2) = v43 + 1;
  v44 = &v41[16 * v43];
  *(v44 + 4) = v39;
  *(v44 + 5) = v40;
  v2 = v105;
  v31 = v37;
LABEL_13:
  v45 = v108;
  v46 = v31[12];
  sub_1B7C2569C(v2 + v46, v18, &qword_1EBA52978, &qword_1B7D0DB38);
  v47 = *(v107 + 48);
  v107 += 48;
  if (v47(v18, 1, v45) != 1)
  {
    v101 = v47;
    v102 = v46;
    v97 = v41;
    v95 = v31;
    v99 = v30;
    v100 = a1;
    sub_1B7C65C88(v18, v25, type metadata accessor for StorageInspectionAttachmentDirectory);
    v48 = *(v45 + 20);
    v98 = v25;
    v49 = *(v25 + v48);
    v50 = *(v49 + 16);
    v96 = v49;
    v30 = 0;
    if (v50)
    {
      v111 = *(v106 + 16);
      v51 = v49 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
      v52 = *(v106 + 72);
      v53 = (v106 + 8);
      while (1)
      {
        v54 = v112;
        v55 = v113;
        v111(v112, v51, v113);
        a1 = URL.fileAllocationSize.getter();
        v41 = v56;
        (*v53)(v54, v55);
        v57 = (v41 & 1) != 0 ? 0 : a1;
        v58 = __CFADD__(v30, v57);
        v30 += v57;
        if (v58)
        {
          break;
        }

        v51 += v52;
        if (!--v50)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_24:
    v59 = v104;
    sub_1B7C2569C(v105 + v102, v104, &qword_1EBA52978, &qword_1B7D0DB38);
    v60 = v108;
    if (v101(v59, 1, v108) == 1)
    {
      sub_1B7AEE190(v59, &qword_1EBA52978, &qword_1B7D0DB38);
      v41 = v113;
      v61 = v106;
      if (v30)
      {
LABEL_26:
        v114 = 0;
        v115 = 0xE000000000000000;
        sub_1B7CFF210();

        v114 = 0xD000000000000018;
        v115 = 0x80000001B7D553D0;
        v62 = *(v96 + 16);
        if (!v62)
        {
          v55 = 0;
LABEL_45:
          v78 = objc_opt_self();
          v79 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
          v80 = [v78 stringFromHugeNumber_];

          v81 = sub_1B7CFEA60();
          v83 = v82;

          MEMORY[0x1B8CADCA0](v81, v83);

          MEMORY[0x1B8CADCA0](0x746164206E69202CLL, 0xEF203A6573616261);
          v84 = v105 + v95[11];
          if (*(v84 + 8))
          {
            v85 = 7104878;
            v86 = 0xE300000000000000;
          }

          else
          {
            v87 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
            v88 = [v78 stringFromHugeNumber_];

            v89 = sub_1B7CFEA60();
            v86 = v90;

            v85 = v89;
          }

          v30 = v99;
          a1 = v100;
          v41 = v97;
          v53 = v98;
          MEMORY[0x1B8CADCA0](v85, v86);

          v54 = v114;
          v55 = v115;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_49:
            v92 = *(v41 + 2);
            v91 = *(v41 + 3);
            if (v92 >= v91 >> 1)
            {
              v41 = sub_1B7AF182C((v91 > 1), v92 + 1, 1, v41);
            }

            sub_1B7C66348(v53, type metadata accessor for StorageInspectionAttachmentDirectory);
            *(v41 + 2) = v92 + 1;
            v93 = &v41[16 * v92];
            *(v93 + 4) = v54;
            *(v93 + 5) = v55;
            if (*(v41 + 2))
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

LABEL_72:
          v41 = sub_1B7AF182C(0, *(v41 + 2) + 1, 1, v41);
          goto LABEL_49;
        }

        v55 = 0;
        v63 = (v61 + 16);
        v113 = *(v61 + 16);
        v64 = v96 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
        v65 = v63[7];
        a1 = v63;
        v53 = (v63 - 1);
        while (1)
        {
          v54 = v110;
          (v113)(v110, v64, v41);
          v66 = URL.fileAllocationSize.getter();
          v30 = v67;
          (*v53)(v54, v41);
          v68 = (v30 & 1) != 0 ? 0 : v66;
          v58 = __CFADD__(v55, v68);
          v55 += v68;
          if (v58)
          {
            goto LABEL_70;
          }

          v64 += v65;
          if (!--v62)
          {
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      v69 = v59;
      v70 = v103;
      sub_1B7C65C88(v69, v103, type metadata accessor for StorageInspectionAttachmentDirectory);
      v71 = *(v70 + *(v60 + 20));
      v41 = *(v71 + 16);
      v72 = 0;
      if (v41)
      {
        v73 = *(v106 + 16);
        v74 = v71 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v111 = *(v106 + 72);
        v112 = v73;
        v53 = (v106 + 8);
        do
        {
          v54 = v109;
          a1 = v113;
          (v112)(v109, v74, v113);
          v75 = URL.fileAllocationSize.getter();
          v55 = v76;
          (*v53)(v54, a1);
          v77 = (v55 & 1) != 0 ? 0 : v75;
          v58 = __CFADD__(v72, v77);
          v72 += v77;
          if (v58)
          {
            goto LABEL_71;
          }

          v74 += v111;
        }

        while (--v41);
      }

      sub_1B7C66348(v103, type metadata accessor for StorageInspectionAttachmentDirectory);
      v41 = v113;
      v61 = v106;
      if (v30 != v72)
      {
        goto LABEL_26;
      }
    }

    sub_1B7C66348(v98, type metadata accessor for StorageInspectionAttachmentDirectory);
    v30 = v99;
    a1 = v100;
    v41 = v97;
    if (*(v97 + 2))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1B7AEE190(v18, &qword_1EBA52978, &qword_1B7D0DB38);
  if (!*(v41 + 2))
  {
LABEL_15:

    v30 = 0;
    v41 = 0;
  }

LABEL_16:
  *a1 = v30;
  a1[1] = v41;
}

uint64_t sub_1B7C61B18(uint64_t *a1)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D55370);
  v6 = *(v1 + 104);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000003DLL, 0x80000001B7D55390);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C65C6C, v9);

  if (v3)
  {
    return v10;
  }

  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(v10 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v10 + 8 * v12 + 24);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *a1 = v15;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C61CD4(uint64_t *a1)
{
  v3 = v2;
  v5 = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D51810);
  v6 = *(v1 + 80);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000002DLL, 0x80000001B7D55340);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C65C50, v9);

  if (v3)
  {
    return v10;
  }

  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = *(v10 + 16);
  if (!v12)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v10 + 8 * v12 + 24);
  v14 = __CFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *a1 = v15;
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C61E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  *a3 = *a1;
  *(a3 + 8) = v6;
  v7 = *(a1 + 40);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = v7;
  v8 = type metadata accessor for StorageInspectionAttachmentRecord();
  v9 = v8[9];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = a3 + v9;
  *v12 = v10;
  *(v12 + 8) = v11;
  v13 = v8[10];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = a3 + v13;
  *v16 = v14;
  *(v16 + 8) = v15;
  v17 = v8[11];
  v18 = *(a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = a3 + v17;
  *v20 = v18;
  *(v20 + 8) = v19;
  sub_1B7C2569C(a1 + v8[12], a3 + v8[12], &qword_1EBA52978, &qword_1B7D0DB38);
  sub_1B7C2569C(a1 + v8[8], a3 + v8[8], &qword_1EBA51FA0, &qword_1B7D0A6D0);
  *(a3 + 16) = a2;
  if (a2 && (v21 = *(a2 + 16)) != 0)
  {
    v22 = (a2 + 40);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      if (v24 && *(v23 + 16))
      {
        v25 = 1;
        goto LABEL_10;
      }

      --v21;
    }

    while (v21);
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

LABEL_10:

  result = sub_1B7C66348(a1, type metadata accessor for StorageInspectionAttachmentRecord);
  *(a3 + 24) = v25;
  return result;
}

unint64_t sub_1B7C61FEC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449776F72;
    v6 = 0x7453746E65726170;
    if (a1 != 2)
    {
      v6 = 1684632935;
    }

    if (a1)
    {
      v5 = 0x73746E65726170;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0x7479426C61746F74;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4C525568746170;
    if (a1 != 4)
    {
      v3 = 0x7453636E79536B63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B7C62114(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52A98, &qword_1B7D0DE58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C67810();
  sub_1B7CFF830();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v26) = 0;
  sub_1B7CFF4D0();
  if (!v2)
  {
    v26 = v3[2];
    v28 = 1;
    sub_1B7C107FC(&qword_1EBA529F0, &qword_1B7D0DCC8);
    sub_1B7C67974(&qword_1EBA52AA0, sub_1B7C679EC);
    sub_1B7CFF4C0();
    LOBYTE(v26) = *(v3 + 24);
    v28 = 2;
    sub_1B7C67A40();
    sub_1B7CFF500();
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v26) = 3;
    sub_1B7CFF4A0();
    v15 = type metadata accessor for StorageInspectionAttachmentRecord();
    v16 = v15[8];
    LOBYTE(v26) = 4;
    sub_1B7CFDFF0();
    sub_1B7C67A94(&qword_1EBA52AB8, MEMORY[0x1E6968FB0]);
    sub_1B7CFF4C0();
    v17 = (v3 + v15[9]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v26 = v18;
    v27 = v17;
    v28 = 5;
    type metadata accessor for IMFileTransferCKSyncState(0);
    sub_1B7C67A94(&qword_1EBA52AC0, type metadata accessor for IMFileTransferCKSyncState);
    sub_1B7CFF4C0();
    v19 = (v3 + v15[10]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 8);
    v26 = v20;
    v27 = v19;
    v28 = 6;
    type metadata accessor for IMFileTransferState(0);
    sub_1B7C67A94(&qword_1EBA52AC8, type metadata accessor for IMFileTransferState);
    sub_1B7CFF4C0();
    v21 = (v3 + v15[11]);
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v26) = 7;
    sub_1B7CFF4D0();
    v24 = v15[12];
    LOBYTE(v26) = 8;
    type metadata accessor for StorageInspectionAttachmentDirectory();
    sub_1B7C67A94(&qword_1EBA52AD0, type metadata accessor for StorageInspectionAttachmentDirectory);
    sub_1B7CFF4C0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B7C62578@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_1B7C107FC(&qword_1EBA52A50, &qword_1B7D0DE50);
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for StorageInspectionAttachmentRecord();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v42 = a1;
  sub_1B7AE9124(a1, v19);
  sub_1B7C67810();
  v21 = v41;
  sub_1B7CFF820();
  if (v21)
  {
    return sub_1B7AE9168(v42);
  }

  v22 = v10;
  v41 = v6;
  v24 = v39;
  v23 = v40;
  LOBYTE(v43) = 0;
  *v18 = sub_1B7CFF410();
  v18[8] = v25 & 1;
  sub_1B7C107FC(&qword_1EBA529F0, &qword_1B7D0DCC8);
  v45 = 1;
  sub_1B7C67974(&qword_1EBA52A60, sub_1B7C67864);
  sub_1B7CFF400();
  v26 = v24;
  *(v18 + 2) = v43;
  v45 = 2;
  sub_1B7C678B8();
  sub_1B7CFF440();
  v18[24] = v43;
  LOBYTE(v43) = 3;
  *(v18 + 4) = sub_1B7CFF3E0();
  *(v18 + 5) = v27;
  sub_1B7CFDFF0();
  LOBYTE(v43) = 4;
  sub_1B7C67A94(&qword_1EBA52A78, MEMORY[0x1E6968FB0]);
  sub_1B7CFF400();
  sub_1B7C6790C(v22, &v18[v15[8]], &qword_1EBA51FA0, &qword_1B7D0A6D0);
  type metadata accessor for IMFileTransferCKSyncState(0);
  v45 = 5;
  sub_1B7C67A94(&qword_1EBA52A80, type metadata accessor for IMFileTransferCKSyncState);
  sub_1B7CFF400();
  v28 = v44;
  v29 = &v18[v15[9]];
  *v29 = v43;
  v29[8] = v28;
  type metadata accessor for IMFileTransferState(0);
  v45 = 6;
  sub_1B7C67A94(&qword_1EBA52A88, type metadata accessor for IMFileTransferState);
  sub_1B7CFF400();
  v30 = v44;
  v31 = &v18[v15[10]];
  *v31 = v43;
  v31[8] = v30;
  LOBYTE(v43) = 7;
  v32 = sub_1B7CFF410();
  v33 = &v18[v15[11]];
  *v33 = v32;
  v33[8] = v34 & 1;
  type metadata accessor for StorageInspectionAttachmentDirectory();
  LOBYTE(v43) = 8;
  sub_1B7C67A94(&qword_1EBA52A90, type metadata accessor for StorageInspectionAttachmentDirectory);
  v35 = v41;
  sub_1B7CFF400();
  (*(v26 + 8))(v14, v23);
  sub_1B7C6790C(v35, &v18[v15[12]], &qword_1EBA52978, &qword_1B7D0DB38);
  sub_1B7C607E8(v18, v38);
  sub_1B7AE9168(v42);
  return sub_1B7C66348(v18, type metadata accessor for StorageInspectionAttachmentRecord);
}

uint64_t sub_1B7C62C78(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7C107FC(&qword_1EBA52A40, &qword_1B7D0DE48);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C67750();
  sub_1B7CFF830();
  v15 = 0;
  sub_1B7CFF520();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    sub_1B7C107FC(&qword_1EBA52A30, &qword_1B7D0DE40);
    sub_1B7C677A4(&qword_1EBA52A48);
    sub_1B7CFF4C0();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B7C62E34(void *a1, int a2)
{
  v35 = a2;
  v3 = sub_1B7C107FC(&qword_1EBA52B30, &qword_1B7D0DE90);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = sub_1B7C107FC(&qword_1EBA52B38, &qword_1B7D0DE98);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = sub_1B7C107FC(&qword_1EBA52B40, &qword_1B7D0DEA0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = sub_1B7C107FC(&qword_1EBA52B48, &qword_1B7D0DEA8);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = sub_1B7C107FC(&qword_1EBA52B50, &qword_1B7D0DEB0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C682C0();
  sub_1B7CFF830();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1B7C68368();
      v12 = v29;
      sub_1B7CFF490();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1B7C68314();
      v12 = v32;
      sub_1B7CFF490();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1B7C683BC();
    sub_1B7CFF490();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1B7C68410();
  sub_1B7CFF490();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1B7C63278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C67264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C632AC(uint64_t a1)
{
  v2 = sub_1B7C67810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C632E8(uint64_t a1)
{
  v2 = sub_1B7C67810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C63354()
{
  if (*v0)
  {
    result = 0x49776F5274616863;
  }

  else
  {
    result = 0x526567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B7C6339C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x526567617373656DLL && a2 == 0xEC0000004449776FLL;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49776F5274616863 && a2 == 0xEA00000000007344)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B7CFF590();

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

uint64_t sub_1B7C63484(uint64_t a1)
{
  v2 = sub_1B7C67750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C634C0(uint64_t a1)
{
  v2 = sub_1B7C67750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C634FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B7C67558(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B7C63550(uint64_t a1)
{
  v2 = sub_1B7C68314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C6358C(uint64_t a1)
{
  v2 = sub_1B7C68314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7C635C8()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x64656E616870726FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x6465746E65726170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7C63648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C67ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C6367C(uint64_t a1)
{
  v2 = sub_1B7C682C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C636B8(uint64_t a1)
{
  v2 = sub_1B7C682C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C636F4(uint64_t a1)
{
  v2 = sub_1B7C68368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C63730(uint64_t a1)
{
  v2 = sub_1B7C68368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C6376C(uint64_t a1)
{
  v2 = sub_1B7C683BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C637A8(uint64_t a1)
{
  v2 = sub_1B7C683BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C637E4(uint64_t a1)
{
  v2 = sub_1B7C68410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C63820(uint64_t a1)
{
  v2 = sub_1B7C68410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C6385C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B7C67C48(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1B7C638A4@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, void *a3@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v10[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v10);
  v6 = v10[0];
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    result = v6;
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    *a3 = result;
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void sub_1B7C6398C(uint64_t a1@<X0>, Swift::OpaquePointer a2@<X1>, size_t *a3@<X8>)
{
  v114 = a3;
  v116 = sub_1B7CFDFF0();
  v115 = *(v116 - 8);
  v5 = v115[8];
  v6 = MEMORY[0x1EEE9AC00](v116);
  v113 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v112 = v86 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v86 - v10;
  v12 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v86 - v14;
  v16 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v86 - v21;
  v23 = type metadata accessor for StorageInspectionAttachmentRecord();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  SqlOperation.bind(_:)(a2);
  if (!v28)
  {
    v29 = v115;
    v108 = v27;
    v107 = v24;
    v109 = v23;
    v106 = v20;
    v111 = v22;
    v110 = v15;
    v125 = 0;

    swift_beginAccess();

    HasRows = IMDSqlOperationHasRows(a1 + 16);
    swift_endAccess();
    v31 = MEMORY[0x1E69E7CC0];
    if (HasRows)
    {
      v93 = v11;
      type metadata accessor for SqlOperation.Row();
      v32 = (v29 + 7);
      v105 = (v29 + 6);
      v104 = (v29 + 2);
      v91 = (v29 + 4);
      v33 = v31;
      v34 = v116;
      v92 = (v29 + 1);
      while (1)
      {
        while (1)
        {
          inited = swift_initStackObject();
          v39 = sub_1B7C23650(v31);
          *(inited + 16) = a1;
          *(inited + 24) = v39;
          SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v117);
          if (*(&v117 + 1))
          {
            break;
          }

          swift_setDeallocating();
          v35 = *(inited + 16);

          v36 = *(inited + 24);

          sub_1B7AEE190(&v117, &qword_1EBA52298, &unk_1B7D10570);
LABEL_5:
          swift_beginAccess();

          v37 = IMDSqlOperationHasRows(a1 + 16);
          swift_endAccess();
          if (!v37)
          {
            goto LABEL_40;
          }
        }

        v121 = v117;
        v122 = v118;
        v123 = v119;
        v124 = v120;
        v40 = v118;
        sub_1B7C26C78(&v121);
        v126 = SqlOperation.Row.uint64(forColumnIndex:)(v40);
        if (v126.is_nil)
        {
          swift_setDeallocating();
          v41 = *(inited + 16);

          v42 = *(inited + 24);

          goto LABEL_5;
        }

        value = v126.value;
        SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v117);
        if (*(&v117 + 1))
        {
          v121 = v117;
          v122 = v118;
          v123 = v119;
          v124 = v120;
          v44 = v118;
          sub_1B7C26C78(&v121);
          v45 = SqlOperation.Row.string(forColumnIndex:)(v44);
          countAndFlagsBits = v45.value._countAndFlagsBits;
          object = v45.value._object;
        }

        else
        {
          sub_1B7AEE190(&v117, &qword_1EBA52298, &unk_1B7D10570);
          countAndFlagsBits = 0;
          object = 0;
        }

        SqlOperation.Row.column(forColumnName:)(0x656D616E656C6966uLL, 0xE800000000000000, &v117);
        if (*(&v117 + 1))
        {
          v121 = v117;
          v122 = v118;
          v123 = v119;
          v124 = v120;
          v46 = v118;
          sub_1B7C26C78(&v121);
          v47 = SqlOperation.Row.string(forColumnIndex:)(v46);
          v90 = v47.value._countAndFlagsBits;
          v102 = v47.value._object;
        }

        else
        {
          sub_1B7AEE190(&v117, &qword_1EBA52298, &unk_1B7D10570);
          v90 = 0;
          v102 = 0;
        }

        SqlOperation.Row.column(forColumnName:)(0x5F636E79735F6B63uLL, 0xED00006574617473, &v117);
        if (*(&v117 + 1))
        {
          v121 = v117;
          v122 = v118;
          v123 = v119;
          v124 = v120;
          v48 = v118;
          sub_1B7C26C78(&v121);
          *&v49 = SqlOperation.Row.int64(forColumnIndex:)(v48);
          v99 = v49;
          v98 = DWORD2(v49);
        }

        else
        {
          sub_1B7AEE190(&v117, &qword_1EBA52298, &unk_1B7D10570);
          v99 = 0;
          v98 = 1;
        }

        SqlOperation.Row.column(forColumnName:)(0x726566736E617274uLL, 0xEE0065746174735FLL, &v117);
        if (*(&v117 + 1))
        {
          v121 = v117;
          v122 = v118;
          v123 = v119;
          v124 = v120;
          v50 = v118;
          sub_1B7C26C78(&v121);
          *&v51 = SqlOperation.Row.int64(forColumnIndex:)(v50);
          v97 = v51;
          v96 = DWORD2(v51);
        }

        else
        {
          sub_1B7AEE190(&v117, &qword_1EBA52298, &unk_1B7D10570);
          v97 = 0;
          v96 = 1;
        }

        SqlOperation.Row.column(forColumnName:)(0x79625F6C61746F74uLL, 0xEB00000000736574, &v117);
        if (*(&v117 + 1))
        {
          v121 = v117;
          v122 = v118;
          v123 = v119;
          v124 = v120;
          v52 = v118;
          sub_1B7C26C78(&v121);
          *&v53 = SqlOperation.Row.uint64(forColumnIndex:)(v52);
          v95 = v53;
          v94 = DWORD2(v53);
        }

        else
        {
          sub_1B7AEE190(&v117, &qword_1EBA52298, &unk_1B7D10570);
          v95 = 0;
          v94 = 1;
        }

        v115 = v33;
        v89 = *v32;
        v89(v111, 1, 1, v34);
        v54 = type metadata accessor for StorageInspectionAttachmentDirectory();
        v55 = *(v54 - 8);
        v56 = *(v55 + 56);
        v88 = v54;
        v87 = v56;
        v86[1] = v55 + 56;
        v56(v110, 1, 1);
        v101 = v32;
        if (v102)
        {
          v57 = sub_1B7CFEA30();

          v58 = [v57 stringByExpandingTildeInPath];

          sub_1B7CFEA60();
          v59 = v106;
          sub_1B7CFDF20();

          v60 = v116;
          v89(v59, 0, 1, v116);
          v61 = v111;
          sub_1B7C4FB78(v59, v111);
          if (!(*v105)(v61, 1, v60))
          {
            v62 = v61;
            v90 = *v104;
            v63 = v113;
            v90(v113, v62, v60);
            sub_1B7CFDF80();
            v102 = *v92;
            v102(v63, v60);
            v64 = v93;
            (*v91)();
            v65 = v110;
            sub_1B7AEE190(v110, &qword_1EBA52978, &qword_1B7D0DB38);
            v90(v65, v64, v60);
            *(v65 + *(v88 + 20)) = v31;
            v87(v65, 0, 1);
            v66 = v125;
            sub_1B7C68F34();
            v125 = v66;
            if (v66)
            {

              swift_setDeallocating();
              v84 = *(inited + 16);

              v85 = *(inited + 24);

              v102(v64, v60);
              sub_1B7AEE190(v110, &qword_1EBA52978, &qword_1B7D0DB38);
              sub_1B7AEE190(v111, &qword_1EBA51FA0, &qword_1B7D0A6D0);

              return;
            }

            v102(v64, v60);
          }
        }

        v98 &= 1u;
        if (v98)
        {
          v67 = 0;
        }

        else
        {
          v67 = v99;
        }

        LODWORD(v102) = v96 & 1;
        v68 = v97;
        if (v96)
        {
          v68 = 0;
        }

        v99 = v68;
        v69 = v109;
        v70 = v108;
        v71 = v111;
        sub_1B7C2569C(v111, &v108[v109[8]], &qword_1EBA51FA0, &qword_1B7D0A6D0);
        v72 = v110;
        sub_1B7C2569C(v110, v70 + v69[12], &qword_1EBA52978, &qword_1B7D0DB38);
        *v70 = value;
        *(v70 + 8) = 0;
        v73 = object;
        *(v70 + 32) = countAndFlagsBits;
        *(v70 + 40) = v73;
        v74 = v70 + v69[9];
        *v74 = v67;
        *(v74 + 8) = v98;
        v75 = v70 + v69[10];
        *v75 = v99;
        *(v75 + 8) = v102;
        v76 = v70 + v69[11];
        *v76 = v95;
        *(v76 + 8) = v94 & 1;
        *(v70 + 16) = 0;
        *(v70 + 24) = 0;
        sub_1B7AEE190(v72, &qword_1EBA52978, &qword_1B7D0DB38);
        sub_1B7AEE190(v71, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        v77 = v115;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1B7CA2A14(0, v77[2] + 1, 1, v77);
        }

        v78 = v107;
        v80 = v77[2];
        v79 = v77[3];
        v81 = v77;
        v31 = MEMORY[0x1E69E7CC0];
        if (v80 >= v79 >> 1)
        {
          v81 = sub_1B7CA2A14(v79 > 1, v80 + 1, 1, v77);
        }

        *(v81 + 16) = v80 + 1;
        v82 = v81 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v80;
        v33 = v81;
        sub_1B7C65C88(v70, v82, type metadata accessor for StorageInspectionAttachmentRecord);
        swift_beginAccess();

        v83 = IMDSqlOperationHasRows(a1 + 16);
        swift_endAccess();
        v34 = v116;
        v32 = v101;
        if (!v83)
        {
          goto LABEL_40;
        }
      }
    }

    v33 = MEMORY[0x1E69E7CC0];
LABEL_40:

    *v114 = v33;
  }
}

id sub_1B7C64674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v110 = a4;
  v122 = *MEMORY[0x1E69E9840];
  inited = sub_1B7CFDFF0();
  v8 = *(inited - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](inited);
  v104 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v83 - v14;
  v15 = sub_1B7C107FC(&qword_1EBA52978, &qword_1B7D0DB38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = &v83 - v17;
  v18 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v107 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v83 - v22;
  v108 = type metadata accessor for StorageInspectionAttachmentRecord();
  v109 = *(v108 - 8);
  v23 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v26 = *(a2 + 16);
  if (v26 < 0)
  {
    __break(1u);
LABEL_50:

    swift_setDeallocating();
    v81 = *(inited + 16);

    v82 = *(inited + 24);

    v88(v106, v102);
    sub_1B7AEE190(v111, &qword_1EBA52978, &qword_1B7D0DB38);
    sub_1B7AEE190(v113, &qword_1EBA51FA0, &qword_1B7D0A6D0);
  }

  else
  {
    swift_beginAccess();
    IMDSqlStatementBindInt64(a1 + 48, v26);
    *&v114 = 0;
    IMDSqlOperationGetError(a1 + 16, &v114);
    v27 = v114;
    swift_endAccess();
    if (!v27)
    {
      v29 = *(a3 + 24);
      if (v29 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v29 <= 0x7FFFFFFF)
      {
        swift_beginAccess();
        IMDSqlStatementBindInt(a1 + 48, v29);
        *&v114 = 0;
        IMDSqlOperationGetError(a1 + 16, &v114);
        v30 = v114;
        swift_endAccess();
        if (v30)
        {
          swift_willThrow();
          result = v30;
          goto LABEL_8;
        }

        swift_beginAccess();
        swift_beginAccess();

        HasRows = IMDSqlOperationHasRows(a1 + 16);
        swift_endAccess();
        v33 = MEMORY[0x1E69E7CC0];
        if (!HasRows)
        {
          v36 = MEMORY[0x1E69E7CC0];
          goto LABEL_48;
        }

        v101 = v25;
        v102 = inited;
        type metadata accessor for SqlOperation.Row();
        v34 = (v8 + 56);
        v99 = (v8 + 48);
        v98 = (v8 + 16);
        v35 = (v8 + 8);
        v89 = (v8 + 32);
        v36 = v33;
LABEL_11:
        v103 = v36;
        while (1)
        {
          inited = swift_initStackObject();
          v40 = sub_1B7C23650(v33);
          *(inited + 16) = a1;
          *(inited + 24) = v40;
          SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v114);
          if (*(&v114 + 1))
          {
            v118 = v114;
            v119 = v115;
            v120 = v116;
            v121 = v117;
            v41 = v115;
            sub_1B7C26C78(&v118);
            v123 = SqlOperation.Row.uint64(forColumnIndex:)(v41);
            if (!v123.is_nil)
            {
              value = v123.value;
              *(a2 + 16) = v123.value;
              SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v114);
              if (*(&v114 + 1))
              {
                v118 = v114;
                v119 = v115;
                v120 = v116;
                v121 = v117;
                v45 = v115;
                sub_1B7C26C78(&v118);
                v97 = SqlOperation.Row.string(forColumnIndex:)(v45);
              }

              else
              {
                sub_1B7AEE190(&v114, &qword_1EBA52298, &unk_1B7D10570);
                v97 = 0;
              }

              v100 = v35;
              SqlOperation.Row.column(forColumnName:)(0x656D616E656C6966uLL, 0xE800000000000000, &v114);
              if (*(&v114 + 1))
              {
                v118 = v114;
                v119 = v115;
                v120 = v116;
                v121 = v117;
                v46 = v115;
                sub_1B7C26C78(&v118);
                v47 = SqlOperation.Row.string(forColumnIndex:)(v46);
                countAndFlagsBits = v47.value._countAndFlagsBits;
                object = v47.value._object;
              }

              else
              {
                sub_1B7AEE190(&v114, &qword_1EBA52298, &unk_1B7D10570);
                countAndFlagsBits = 0;
                object = 0;
              }

              SqlOperation.Row.column(forColumnName:)(0x5F636E79735F6B63uLL, 0xED00006574617473, &v114);
              if (*(&v114 + 1))
              {
                v118 = v114;
                v119 = v115;
                v120 = v116;
                v121 = v117;
                v49 = v115;
                sub_1B7C26C78(&v118);
                *&v50 = SqlOperation.Row.int64(forColumnIndex:)(v49);
                v96 = v50;
                v95 = DWORD2(v50);
              }

              else
              {
                sub_1B7AEE190(&v114, &qword_1EBA52298, &unk_1B7D10570);
                v96 = 0;
                v95 = 1;
              }

              SqlOperation.Row.column(forColumnName:)(0x726566736E617274uLL, 0xEE0065746174735FLL, &v114);
              if (*(&v114 + 1))
              {
                v118 = v114;
                v119 = v115;
                v120 = v116;
                v121 = v117;
                v51 = v115;
                sub_1B7C26C78(&v118);
                *&v52 = SqlOperation.Row.int64(forColumnIndex:)(v51);
                v94 = v52;
                v93 = DWORD2(v52);
              }

              else
              {
                sub_1B7AEE190(&v114, &qword_1EBA52298, &unk_1B7D10570);
                v94 = 0;
                v93 = 1;
              }

              SqlOperation.Row.column(forColumnName:)(0x79625F6C61746F74uLL, 0xEB00000000736574, &v114);
              if (*(&v114 + 1))
              {
                v118 = v114;
                v119 = v115;
                v120 = v116;
                v121 = v117;
                v53 = v115;
                sub_1B7C26C78(&v118);
                *&v54 = SqlOperation.Row.uint64(forColumnIndex:)(v53);
                v92 = v54;
                v91 = DWORD2(v54);
              }

              else
              {
                sub_1B7AEE190(&v114, &qword_1EBA52298, &unk_1B7D10570);
                v92 = 0;
                v91 = 1;
              }

              v55 = *v34;
              v88 = v34;
              v87 = v55;
              v55(v113, 1, 1, v102);
              v56 = type metadata accessor for StorageInspectionAttachmentDirectory();
              v57 = *(v56 - 8);
              v86 = *(v57 + 56);
              v85 = v57 + 56;
              v86(v111, 1, 1, v56);
              if (object)
              {
                v84 = v56;
                v58 = sub_1B7CFEA30();

                v59 = [v58 stringByExpandingTildeInPath];

                countAndFlagsBits = sub_1B7CFEA60();
                v60 = v107;
                sub_1B7CFDF20();

                v87(v60, 0, 1, v102);
                v61 = v113;
                sub_1B7C4FB78(v60, v113);
                if (!(*v99)(v61, 1, v102))
                {
                  countAndFlagsBits = *v98;
                  v62 = v104;
                  v63 = v102;
                  countAndFlagsBits(v104, v113, v102);
                  sub_1B7CFDF80();
                  v64 = v62;
                  v65 = v63;
                  v88 = *v100;
                  v88(v64, v63);
                  v66 = v106;
                  (*v89)(v106, v105, v65);
                  v67 = v111;
                  sub_1B7AEE190(v111, &qword_1EBA52978, &qword_1B7D0DB38);
                  countAndFlagsBits(v67, v66, v102);
                  *(v67 + *(v84 + 20)) = v33;
                  (v86)(v67, 0, 1);
                  v68 = v112;
                  sub_1B7C68F34();
                  v112 = v68;
                  if (v68)
                  {
                    goto LABEL_50;
                  }

                  v88(v106, v102);
                }
              }

              v69 = (v95 & 1) == 0;
              v95 &= 1u;
              v70 = v96;
              if (!v69)
              {
                v70 = 0;
              }

              countAndFlagsBits = v70;
              LODWORD(v96) = v93 & 1;
              v71 = v94;
              if (v93)
              {
                v71 = 0;
              }

              v94 = v71;
              v72 = v108;
              v73 = v101;
              sub_1B7C2569C(v113, &v101[*(v108 + 32)], &qword_1EBA51FA0, &qword_1B7D0A6D0);
              sub_1B7C2569C(v111, v73 + v72[12], &qword_1EBA52978, &qword_1B7D0DB38);
              *v73 = value;
              *(v73 + 8) = 0;
              v74 = v97.value._object;
              *(v73 + 32) = v97.value._countAndFlagsBits;
              *(v73 + 40) = v74;
              v75 = v73 + v72[9];
              *v75 = countAndFlagsBits;
              *(v75 + 8) = v95;
              v76 = v73 + v72[10];
              *v76 = v94;
              *(v76 + 8) = v96;
              v77 = v73 + v72[11];
              *v77 = v92;
              *(v77 + 8) = v91 & 1;
              *(v73 + 16) = 0;
              *(v73 + 24) = 0;
              sub_1B7AEE190(v111, &qword_1EBA52978, &qword_1B7D0DB38);
              sub_1B7AEE190(v113, &qword_1EBA51FA0, &qword_1B7D0A6D0);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v103 = sub_1B7CA2A14(0, v103[2] + 1, 1, v103);
              }

              v79 = v103[2];
              v78 = v103[3];
              v35 = v100;
              if (v79 >= v78 >> 1)
              {
                v103 = sub_1B7CA2A14(v78 > 1, v79 + 1, 1, v103);
              }

              v36 = v103;
              v103[2] = v79 + 1;
              sub_1B7C65C88(v101, v36 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v79, type metadata accessor for StorageInspectionAttachmentRecord);
              swift_beginAccess();

              v80 = IMDSqlOperationHasRows(a1 + 16);
              swift_endAccess();
              if (!v80)
              {
LABEL_48:

                *v110 = v36;
                goto LABEL_8;
              }

              goto LABEL_11;
            }

            swift_setDeallocating();
            v42 = *(inited + 16);

            v43 = *(inited + 24);
          }

          else
          {
            swift_setDeallocating();
            v37 = *(inited + 16);

            v38 = *(inited + 24);

            sub_1B7AEE190(&v114, &qword_1EBA52298, &unk_1B7D10570);
          }

          swift_beginAccess();

          v39 = IMDSqlOperationHasRows(a1 + 16);
          swift_endAccess();
          if (!v39)
          {
            v36 = v103;
            goto LABEL_48;
          }
        }
      }

      __break(1u);
    }

    swift_willThrow();
    result = v27;
  }

LABEL_8:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C65528@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFEA30();
  v5 = [v4 stringByAbbreviatingWithTildeInPath];

  sub_1B7CFEA60();
  v6 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v6);
  swift_endAccess();

  swift_beginAccess();
  v10[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v10);
  v7 = v10[0];
  swift_endAccess();
  if (v7)
  {
    swift_willThrow();
    v7;
  }

  else
  {

    result = SqlOperation.uint64s(forColumnName:)(0x4449574F52uLL, 0xE500000000000000);
    *a2 = result;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C65684@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v12[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v12);
  v8 = v12[0];
  swift_endAccess();
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = *(a3 + 24);
  if (v9 < 0xFFFFFFFF80000000)
  {
    goto LABEL_10;
  }

  if (v9 > 0x7FFFFFFF)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt(a1 + 48, v9);
  v12[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v12);
  v8 = v12[0];
  swift_endAccess();
  if (!v8)
  {
    result = SqlOperation.uint64s(forColumnName:)(0x656D686361747461uLL, 0xED000064695F746ELL);
    *a4 = result;
    goto LABEL_7;
  }

LABEL_6:
  v8;
  result = swift_willThrow();
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

sqlite3_int64 sub_1B7C657E4@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, uint64_t a3@<X2>, sqlite3_int64 *a4@<X8>)
{
  v12[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v12[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v12);
  v8 = v12[0];
  swift_endAccess();
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = *(a3 + 24);
  if (v9 < 0xFFFFFFFF80000000)
  {
    goto LABEL_10;
  }

  if (v9 > 0x7FFFFFFF)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt(a1 + 48, v9);
  v12[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v12);
  v8 = v12[0];
  swift_endAccess();
  if (!v8)
  {
    result = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    *a4 = result;
    goto LABEL_7;
  }

LABEL_6:
  v8;
  result = swift_willThrow();
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1B7C65924@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, void *a3@<X8>)
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v10[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v10);
  v6 = v10[0];
  swift_endAccess();
  if (v6)
  {
    swift_willThrow();
    result = v6;
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    result = SqlOperation.uint64s(forColumnName:)(0x656D686361747461uLL, 0xED000064695F746ELL);
    *a3 = result;
    v9 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1B7C65A2C(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000069, 0x80000001B7D552D0);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();
  v4 = v3;

  MEMORY[0x1B8CADCA0](v2, v4);

  MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  v6 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C65BE8, v5);

  if (v6)
  {
    return v6;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t type metadata accessor for StorageInspectionAttachmentRecord()
{
  result = qword_1EBA529D0;
  if (!qword_1EBA529D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C65C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7C65CF0(uint64_t a1, uint64_t *a2, void *a3)
{
  v50 = a3;
  v58 = a2;
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v50 - v6;
  v8 = sub_1B7CFDFF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v50 - v14;
  v15 = type metadata accessor for StorageInspectionAttachmentRecord();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v59 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - v23;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 0;
    v60 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = *(v22 + 72);
    v63 = a1 + v60;
    v64 = v27;
    v62 = (v9 + 48);
    v56 = (v9 + 32);
    v66 = v9 + 16;
    v28 = v9;
    v29 = MEMORY[0x1E69E7CC0];
    v51 = v28;
    v52 = v25;
    v67 = (v28 + 8);
    v54 = v15;
    v55 = v7;
    v53 = v18;
    v57 = &v50 - v23;
    while (1)
    {
      v65 = v26;
      sub_1B7C607E8(v63 + v64 * v26, v24);
      sub_1B7C2569C(&v24[*(v15 + 32)], v7, &qword_1EBA51FA0, &qword_1B7D0A6D0);
      if ((*v62)(v7, 1, v8) == 1)
      {
        break;
      }

      v61 = v29;
      (*v56)(v68, v7, v8);
      v35 = *v58;
      if (!*(*v58 + 16) || (v36 = *(v35 + 40), sub_1B7C67A94(&qword_1EBA529C0, MEMORY[0x1E6968FB0]), v37 = sub_1B7CFE9B0(), v38 = -1 << *(v35 + 32), v39 = v37 & ~v38, ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0))
      {
LABEL_16:
        v24 = v57;
        sub_1B7C607E8(v57, v59);
        v45 = v61;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1B7CA2A14(0, v45[2] + 1, 1, v45);
        }

        v47 = v45[2];
        v46 = v45[3];
        v48 = v45;
        v25 = v52;
        v18 = v53;
        if (v47 >= v46 >> 1)
        {
          v48 = sub_1B7CA2A14(v46 > 1, v47 + 1, 1, v45);
        }

        v15 = v54;
        v7 = v55;
        (*v67)(v68, v8);
        sub_1B7C66348(v24, type metadata accessor for StorageInspectionAttachmentRecord);
        *(v48 + 16) = v47 + 1;
        v29 = v48;
        v31 = v59;
        v30 = v48 + v60 + v47 * v64;
        goto LABEL_4;
      }

      v40 = ~v38;
      v41 = *(v51 + 72);
      v42 = *(v51 + 16);
      while (1)
      {
        v42(v12, *(v35 + 48) + v41 * v39, v8);
        sub_1B7C67A94(&qword_1EBA529C8, MEMORY[0x1E6968FB0]);
        v43 = sub_1B7CFEA20();
        v44 = *v67;
        (*v67)(v12, v8);
        if (v43)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v44(v68, v8);
      v24 = v57;
      result = sub_1B7C66348(v57, type metadata accessor for StorageInspectionAttachmentRecord);
      if (__OFADD__(*v50, 1))
      {
        __break(1u);
        return result;
      }

      ++*v50;
      v15 = v54;
      v7 = v55;
      v25 = v52;
      v18 = v53;
      v29 = v61;
LABEL_5:
      v26 = v65 + 1;
      if (v65 + 1 == v25)
      {
        return v29;
      }
    }

    sub_1B7AEE190(v7, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    sub_1B7C607E8(v24, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1B7CA2A14(0, v29[2] + 1, 1, v29);
    }

    v33 = v29[2];
    v32 = v29[3];
    v34 = v29;
    if (v33 >= v32 >> 1)
    {
      v34 = sub_1B7CA2A14(v32 > 1, v33 + 1, 1, v29);
    }

    sub_1B7C66348(v24, type metadata accessor for StorageInspectionAttachmentRecord);
    *(v34 + 16) = v33 + 1;
    v29 = v34;
    v30 = v34 + v60 + v33 * v64;
    v31 = v18;
LABEL_4:
    sub_1B7C65C88(v31, v30, type metadata accessor for StorageInspectionAttachmentRecord);
    goto LABEL_5;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B7C66348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1B7C663C4(uint64_t a1)
{
  v2 = v1;
  v104[4] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for StorageInspectionAttachmentRecord();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v95 = (&v89 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v100 = &v89 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v89 - v15;
  v99 = *(a1 + 16);
  if (!v99)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v90 = v16;
  v18 = 0;
  v98 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v101 = a1 + v98;
  v19 = *(v14 + 72);
  v94 = "attachment_id ASC;";
  v103 = "here attachment_id == ?;";
  v20 = MEMORY[0x1E69E7CC0];
  v97 = v19;
  v92 = v4;
  v93 = &v89 - v15;
  v91 = v8;
  while (1)
  {
    sub_1B7C607E8(v101 + v19 * v18, v17);
    v21 = v17[8];
    v102 = v18;
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = v100;
    sub_1B7C607E8(v17, v100);
    v23 = *(v22 + 8);
    *v8 = *v22;
    v8[8] = v23;
    v24 = *(v22 + 40);
    *(v8 + 4) = *(v22 + 32);
    *(v8 + 5) = v24;
    v25 = v4[9];
    v26 = *(v22 + v25);
    v27 = *(v22 + v25 + 8);
    v28 = &v8[v25];
    *v28 = v26;
    v28[8] = v27;
    v29 = v4[10];
    v30 = *(v22 + v29);
    v31 = *(v22 + v29 + 8);
    v32 = &v8[v29];
    *v32 = v30;
    v32[8] = v31;
    v33 = v4[11];
    v34 = *(v22 + v33);
    v35 = *(v22 + v33 + 8);
    v36 = &v8[v33];
    *v36 = v34;
    v36[8] = v35;
    sub_1B7C2569C(v22 + v4[12], &v8[v4[12]], &qword_1EBA52978, &qword_1B7D0DB38);
    sub_1B7C2569C(v22 + v4[8], &v8[v4[8]], &qword_1EBA51FA0, &qword_1B7D0A6D0);

    sub_1B7C66348(v22, type metadata accessor for StorageInspectionAttachmentRecord);
    *(v8 + 2) = 0;
    v8[24] = 2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1B7CA2A14(0, v20[2] + 1, 1, v20);
    }

    v38 = v20[2];
    v37 = v20[3];
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v20 = sub_1B7CA2A14(v37 > 1, v38 + 1, 1, v20);
    }

    v40 = v8;
LABEL_40:
    v80 = v102 + 1;
    sub_1B7C66348(v17, type metadata accessor for StorageInspectionAttachmentRecord);
    v20[2] = v39;
    v19 = v97;
    v81 = v20 + v98 + v38 * v97;
    v18 = v80;
    sub_1B7C65C88(v40, v81, type metadata accessor for StorageInspectionAttachmentRecord);
    if (v80 == v99)
    {
      goto LABEL_48;
    }
  }

  v41 = *v17;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  v42 = off_1EBA52D08;
  v43 = objc_autoreleasePoolPush();
  v44 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlOperationStartQuery(v42 + 16, v44);
  swift_endAccess();

  swift_beginAccess();
  v104[0] = 0;
  IMDSqlOperationGetError((v42 + 16), v104);
  v45 = v104[0];
  swift_endAccess();
  if (v45)
  {
    swift_willThrow();
    v45;
LABEL_52:
    objc_autoreleasePoolPop(v43);
    sub_1B7C66348(v17, type metadata accessor for StorageInspectionAttachmentRecord);
    goto LABEL_47;
  }

  if (v41 < 0)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64((v42 + 48), v41);
  v104[0] = 0;
  IMDSqlOperationGetError((v42 + 16), v104);
  v46 = v104[0];
  swift_endAccess();
  if (v46 || (v47 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0(), swift_beginAccess(), IMDSqlOperationFinishQuery((v42 + 16)), v104[0] = 0, IMDSqlOperationGetError((v42 + 16), v104), v46 = v104[0], swift_endAccess(), v46))
  {
    swift_willThrow();
    v87 = v46;
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v42 + 16));
    v104[0] = 0;
    IMDSqlOperationGetError((v42 + 16), v104);
    v88 = v104[0];
    swift_endAccess();
    swift_willThrow();
    if (v88)
    {
      v88;
    }

    goto LABEL_52;
  }

  v96 = v20;
  objc_autoreleasePoolPop(v43);
  v48 = *(v47 + 16);
  if (!v48)
  {

    v17 = v93;
    v60 = v100;
    sub_1B7C607E8(v93, v100);
    v61 = *(v60 + 8);
    v62 = v95;
    *v95 = *v60;
    *(v62 + 8) = v61;
    v63 = *(v60 + 40);
    v62[4] = *(v60 + 32);
    v62[5] = v63;
    v4 = v92;
    v64 = v92[9];
    v65 = *(v60 + v64);
    v66 = *(v60 + v64 + 8);
    v67 = v62 + v64;
    *v67 = v65;
    v67[8] = v66;
    v68 = v4[10];
    v69 = *(v60 + v68);
    v70 = *(v60 + v68 + 8);
    v71 = v62 + v68;
    *v71 = v69;
    v71[8] = v70;
    v72 = v4[11];
    v73 = *(v60 + v72);
    v74 = *(v60 + v72 + 8);
    v75 = v62 + v72;
    *v75 = v73;
    v75[8] = v74;
    sub_1B7C2569C(v60 + v4[12], v62 + v4[12], &qword_1EBA52978, &qword_1B7D0DB38);
    sub_1B7C2569C(v60 + v4[8], v62 + v4[8], &qword_1EBA51FA0, &qword_1B7D0A6D0);

    sub_1B7C66348(v60, type metadata accessor for StorageInspectionAttachmentRecord);
    v62[2] = 0;
    *(v62 + 24) = 2;
    v20 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1B7CA2A14(0, v20[2] + 1, 1, v20);
    }

    v8 = v91;
    v38 = v20[2];
    v76 = v20[3];
    v39 = v38 + 1;
    if (v38 >= v76 >> 1)
    {
      v20 = sub_1B7CA2A14(v76 > 1, v38 + 1, 1, v20);
    }

    v40 = v95;
    goto LABEL_40;
  }

  v89 = v2;
  v49 = 0;
  v50 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v49 >= *(v47 + 16))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    v51 = *(v47 + 8 * v49 + 32);
    v52 = objc_autoreleasePoolPush();
    v53 = sub_1B7CFEA30();
    swift_beginAccess();
    IMDSqlOperationStartQuery(v42 + 16, v53);
    swift_endAccess();

    swift_beginAccess();
    v104[0] = 0;
    IMDSqlOperationGetError((v42 + 16), v104);
    v54 = v104[0];
    swift_endAccess();
    if (v54)
    {
      swift_willThrow();
      v54;
      v82 = v93;
      goto LABEL_46;
    }

    if (v51 < 0)
    {
      goto LABEL_54;
    }

    swift_beginAccess();
    IMDSqlStatementBindInt64((v42 + 48), v51);
    v104[0] = 0;
    IMDSqlOperationGetError((v42 + 16), v104);
    v55 = v104[0];
    swift_endAccess();
    if (v55)
    {
      break;
    }

    v56 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
    swift_beginAccess();
    IMDSqlOperationFinishQuery((v42 + 16));
    v104[0] = 0;
    IMDSqlOperationGetError((v42 + 16), v104);
    v55 = v104[0];
    swift_endAccess();
    if (v55)
    {
      break;
    }

    objc_autoreleasePoolPop(v52);
    if (!*(v56 + 16))
    {

      v56 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_1B7CA2A3C(0, *(v50 + 2) + 1, 1, v50);
    }

    v58 = *(v50 + 2);
    v57 = *(v50 + 3);
    if (v58 >= v57 >> 1)
    {
      v50 = sub_1B7CA2A3C((v57 > 1), v58 + 1, 1, v50);
    }

    ++v49;
    *(v50 + 2) = v58 + 1;
    v59 = &v50[16 * v58];
    *(v59 + 4) = v51;
    *(v59 + 5) = v56;
    if (v48 == v49)
    {

      v17 = v93;
      v77 = v100;
      sub_1B7C607E8(v93, v100);
      sub_1B7C61E90(v77, v50, v90);
      v20 = v96;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1B7CA2A14(0, v20[2] + 1, 1, v20);
      }

      v2 = v89;
      v8 = v91;
      v4 = v92;
      v38 = v20[2];
      v79 = v20[3];
      v39 = v38 + 1;
      if (v38 >= v79 >> 1)
      {
        v20 = sub_1B7CA2A14(v79 > 1, v38 + 1, 1, v20);
      }

      v40 = v90;
      goto LABEL_40;
    }
  }

  v83 = v55;
  swift_willThrow();
  swift_beginAccess();
  IMDSqlOperationFinishQuery((v42 + 16));
  v104[0] = 0;
  IMDSqlOperationGetError((v42 + 16), v104);
  v84 = v104[0];
  swift_endAccess();
  v82 = v93;
  swift_willThrow();
  if (v84)
  {
    v84;
  }

LABEL_46:

  objc_autoreleasePoolPop(v52);
  sub_1B7C66348(v82, type metadata accessor for StorageInspectionAttachmentRecord);

  v20 = v50;
LABEL_47:

LABEL_48:
  v85 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t sub_1B7C66E60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B7C65528(a1, a2);
}

uint64_t sub_1B7C66E7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B7C66ED8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1B7C66F60()
{
  sub_1B7C6715C(319, &qword_1EBA529E0);
  if (v0 <= 0x3F)
  {
    sub_1B7C670F8();
    if (v1 <= 0x3F)
    {
      sub_1B7C6715C(319, &qword_1EBA529F8);
      if (v2 <= 0x3F)
      {
        sub_1B7C671A8(319, &qword_1EBA52760, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          sub_1B7C671A8(319, &qword_1EBA52A00, type metadata accessor for IMFileTransferCKSyncState);
          if (v4 <= 0x3F)
          {
            sub_1B7C671A8(319, &qword_1EBA52A08, type metadata accessor for IMFileTransferState);
            if (v5 <= 0x3F)
            {
              sub_1B7C671A8(319, &qword_1EBA52A10, type metadata accessor for StorageInspectionAttachmentDirectory);
              if (v6 <= 0x3F)
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

void sub_1B7C670F8()
{
  if (!qword_1EBA529E8)
  {
    sub_1B7C1091C(&qword_1EBA529F0, &qword_1B7D0DCC8);
    v0 = sub_1B7CFEFF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA529E8);
    }
  }
}

void sub_1B7C6715C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B7CFEFF0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1B7C671A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7CFEFF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B7C67210()
{
  result = qword_1EBA52A18;
  if (!qword_1EBA52A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A18);
  }

  return result;
}

uint64_t sub_1B7C67264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E65726170 && a2 == 0xE700000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7453746E65726170 && a2 == 0xEB00000000657461 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C525568746170 && a2 == 0xE700000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453636E79536B63 && a2 == 0xEB00000000657461 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B7D55630 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365 || (sub_1B7CFF590() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D55650 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B7C67558(uint64_t *a1)
{
  v3 = sub_1B7C107FC(&qword_1EBA52A20, &qword_1B7D0DE38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1B7AE9124(a1, v8);
  sub_1B7C67750();
  sub_1B7CFF820();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1B7CFF460();
    sub_1B7C107FC(&qword_1EBA52A30, &qword_1B7D0DE40);
    v10[15] = 1;
    sub_1B7C677A4(&qword_1EBA52A38);
    sub_1B7CFF400();
    (*(v4 + 8))(v7, v3);
  }

  sub_1B7AE9168(a1);
  return v8;
}

unint64_t sub_1B7C67750()
{
  result = qword_1EBA52A28;
  if (!qword_1EBA52A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A28);
  }

  return result;
}

uint64_t sub_1B7C677A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52A30, &qword_1B7D0DE40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C67810()
{
  result = qword_1EBA52A58;
  if (!qword_1EBA52A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A58);
  }

  return result;
}

unint64_t sub_1B7C67864()
{
  result = qword_1EBA52A68;
  if (!qword_1EBA52A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A68);
  }

  return result;
}

unint64_t sub_1B7C678B8()
{
  result = qword_1EBA52A70;
  if (!qword_1EBA52A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52A70);
  }

  return result;
}

uint64_t sub_1B7C6790C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B7C107FC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7C67974(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA529F0, &qword_1B7D0DCC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C679EC()
{
  result = qword_1EBA52AA8;
  if (!qword_1EBA52AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52AA8);
  }

  return result;
}

unint64_t sub_1B7C67A40()
{
  result = qword_1EBA52AB0;
  if (!qword_1EBA52AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52AB0);
  }

  return result;
}

uint64_t sub_1B7C67A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C67ADC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465746E65726170 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B7D55670 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B7CFF590();

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

uint64_t sub_1B7C67C48(uint64_t *a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52AD8, &qword_1B7D0DE60);
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v44 - v5;
  v6 = sub_1B7C107FC(&qword_1EBA52AE0, &qword_1B7D0DE68);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v44 - v9;
  v10 = sub_1B7C107FC(&qword_1EBA52AE8, &qword_1B7D0DE70);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - v13;
  v15 = sub_1B7C107FC(&qword_1EBA52AF0, &qword_1B7D0DE78);
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = sub_1B7C107FC(&qword_1EBA52AF8, &qword_1B7D0DE80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v44 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v57 = a1;
  sub_1B7AE9124(a1, v25);
  sub_1B7C682C0();
  v26 = v56;
  sub_1B7CFF820();
  if (v26)
  {
    goto LABEL_16;
  }

  v45 = v15;
  v46 = v23;
  v28 = v54;
  v27 = v55;
  v56 = v20;
  v29 = sub_1B7CFF470();
  v30 = *(v29 + 16);
  if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
  {
    v33 = sub_1B7CFF270();
    swift_allocError();
    v35 = v34;
    v36 = *(sub_1B7C107FC(&qword_1EBA52B08, &qword_1B7D0DE88) + 48);
    *v35 = &type metadata for StorageInspectionAttachmentRecord.ParentState;
    v37 = v46;
    sub_1B7CFF3D0();
    sub_1B7CFF260();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v56 + 8))(v37, v19);
    swift_unknownObjectRelease();
LABEL_16:
    sub_1B7AE9168(v57);
    return 0;
  }

  v58 = *(v29 + 32);
  if (v31 > 1)
  {
    v39 = v56;
    if (v31 == 2)
    {
      v61 = 2;
      sub_1B7C68368();
      v40 = v28;
      v41 = v46;
      sub_1B7CFF3C0();
      (*(v51 + 8))(v40, v50);
      (*(v39 + 8))(v41, v19);
    }

    else
    {
      v62 = 3;
      sub_1B7C68314();
      v42 = v46;
      sub_1B7CFF3C0();
      (*(v53 + 8))(v27, v52);
      (*(v39 + 8))(v42, v19);
    }
  }

  else
  {
    if (v31)
    {
      v60 = 1;
      sub_1B7C683BC();
      v38 = v46;
      sub_1B7CFF3C0();
      (*(v49 + 8))(v14, v48);
    }

    else
    {
      v59 = 0;
      sub_1B7C68410();
      v38 = v46;
      sub_1B7CFF3C0();
      (*(v47 + 8))(v18, v45);
    }

    (*(v56 + 8))(v38, v19);
  }

  swift_unknownObjectRelease();
  sub_1B7AE9168(v57);
  return v58;
}

unint64_t sub_1B7C682C0()
{
  result = qword_1EBA52B00;
  if (!qword_1EBA52B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B00);
  }

  return result;
}

unint64_t sub_1B7C68314()
{
  result = qword_1EBA52B10;
  if (!qword_1EBA52B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B10);
  }

  return result;
}

unint64_t sub_1B7C68368()
{
  result = qword_1EBA52B18;
  if (!qword_1EBA52B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B18);
  }

  return result;
}

unint64_t sub_1B7C683BC()
{
  result = qword_1EBA52B20;
  if (!qword_1EBA52B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B20);
  }

  return result;
}

unint64_t sub_1B7C68410()
{
  result = qword_1EBA52B28;
  if (!qword_1EBA52B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionDatabaseTable.TableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionDatabaseTable.TableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionAttachmentRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionAttachmentRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C68758()
{
  result = qword_1EBA52B58;
  if (!qword_1EBA52B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B58);
  }

  return result;
}

unint64_t sub_1B7C687B0()
{
  result = qword_1EBA52B60;
  if (!qword_1EBA52B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B60);
  }

  return result;
}

unint64_t sub_1B7C68808()
{
  result = qword_1EBA52B68;
  if (!qword_1EBA52B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B68);
  }

  return result;
}

unint64_t sub_1B7C68860()
{
  result = qword_1EBA52B70;
  if (!qword_1EBA52B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B70);
  }

  return result;
}

unint64_t sub_1B7C688B8()
{
  result = qword_1EBA52B78;
  if (!qword_1EBA52B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B78);
  }

  return result;
}

unint64_t sub_1B7C68910()
{
  result = qword_1EBA52B80;
  if (!qword_1EBA52B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B80);
  }

  return result;
}

unint64_t sub_1B7C68968()
{
  result = qword_1EBA52B88;
  if (!qword_1EBA52B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B88);
  }

  return result;
}

unint64_t sub_1B7C689C0()
{
  result = qword_1EBA52B90;
  if (!qword_1EBA52B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B90);
  }

  return result;
}

unint64_t sub_1B7C68A18()
{
  result = qword_1EBA52B98;
  if (!qword_1EBA52B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52B98);
  }

  return result;
}

unint64_t sub_1B7C68A70()
{
  result = qword_1EBA52BA0;
  if (!qword_1EBA52BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BA0);
  }

  return result;
}

unint64_t sub_1B7C68AC8()
{
  result = qword_1EBA52BA8;
  if (!qword_1EBA52BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BA8);
  }

  return result;
}

unint64_t sub_1B7C68B20()
{
  result = qword_1EBA52BB0;
  if (!qword_1EBA52BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BB0);
  }

  return result;
}

unint64_t sub_1B7C68B78()
{
  result = qword_1EBA52BB8;
  if (!qword_1EBA52BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BB8);
  }

  return result;
}

unint64_t sub_1B7C68BD0()
{
  result = qword_1EBA52BC0;
  if (!qword_1EBA52BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BC0);
  }

  return result;
}

unint64_t sub_1B7C68C28()
{
  result = qword_1EBA52BC8;
  if (!qword_1EBA52BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BC8);
  }

  return result;
}

unint64_t sub_1B7C68C80()
{
  result = qword_1EBA52BD0;
  if (!qword_1EBA52BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BD0);
  }

  return result;
}

unint64_t sub_1B7C68CD8()
{
  result = qword_1EBA52BD8;
  if (!qword_1EBA52BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52BD8);
  }

  return result;
}

uint64_t type metadata accessor for StorageInspectionAttachmentDirectory()
{
  result = qword_1EBA52BE8;
  if (!qword_1EBA52BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C68DD8(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1B7AECEEC(0, v4, 0);
  v5 = v18;
  v7 = *(sub_1B7CFDFF0() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    a1(v17, v8);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v10 = v17[1];
    v18 = v5;
    v13 = *(v5 + 16);
    v12 = *(v5 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1B7AECEEC((v12 > 1), v13 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v13 + 1;
    v14 = v5 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void sub_1B7C68F34()
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  LOBYTE(v6[0]) = 0;
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_1B7CFEA30();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:v6];

  if (v3 && (v6[0] & 1) != 0)
  {
    v4 = objc_autoreleasePoolPush();
    sub_1B7C691B4(v0, v6);
    objc_autoreleasePoolPop(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C69044()
{
  v1 = sub_1B7CFDFF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for StorageInspectionAttachmentDirectory() + 20));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v22 = v10;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    while (1)
    {
      v14 = v9;
      v22(v5, v11, v1);
      v15 = URL.fileAllocationSize.getter();
      v17 = v16;
      result = (*v13)(v5, v1);
      v19 = (v17 & 1) != 0 ? 0 : v15;
      v20 = __CFADD__(v8, v19);
      v8 += v19;
      if (v20)
      {
        break;
      }

      v11 += v12;
      --v7;
      v9 = v14;
      if (!v7)
      {
        return v8;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B7C691B4(char *a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v49 - v9;
  v10 = sub_1B7CFDFF0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v53 = v19;
  v20 = *(v19 + 16);
  v56 = a1;
  v51 = v20;
  v52 = v19 + 16;
  v20(&v49 - v17, a1, v10);
  if (qword_1EBA51660 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for AttachmentDirectoryEnumerator();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  result = sub_1B7CD6A6C(v18);
  if (!v2)
  {
    v25 = result;
    v49 = 0;
    v50 = a2;
    v26 = v54;
    v59 = (v53 + 56);
    v60 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error;
    v62 = (v53 + 32);
    v57 = (v53 + 8);
    v58 = (v53 + 48);
    while (1)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = *(v25 + 16);
      if (v28)
      {
        if ([v28 nextObject])
        {
          sub_1B7CFF0A0();
          swift_unknownObjectRelease();
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        v65 = v63;
        v66 = v64;
        if (*(&v64 + 1))
        {
          v29 = swift_dynamicCast();
          (*v59)(v26, v29 ^ 1u, 1, v10);
          goto LABEL_15;
        }
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      sub_1B7AEE190(&v65, &qword_1EBA51FA8, qword_1B7D0B230);
      (*v59)(v26, 1, 1, v10);
LABEL_15:
      v30 = *(v25 + v60);
      if (v30)
      {
        v46 = *(v25 + v60);
        swift_willThrow();
        v47 = v30;
        sub_1B7AEE190(v26, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        objc_autoreleasePoolPop(v27);

        v2 = v30;
        a2 = v50;
        break;
      }

      v31 = v61;
      sub_1B7C124A0(v26, v61);
      if ((*v58)(v31, 1, v10) == 1)
      {
        sub_1B7AEE190(v31, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        objc_autoreleasePoolPop(v27);

        goto LABEL_26;
      }

      v32 = *v62;
      (*v62)(v16, v31, v10);
      sub_1B7CFDFC0();
      LOBYTE(v65) = 0;
      v33 = [objc_opt_self() defaultManager];
      v34 = sub_1B7CFEA30();

      v35 = [v33 fileExistsAtPath:v34 isDirectory:&v65];

      if (!v35 || (v65 & 1) != 0)
      {
        (*v57)(v16, v10);
      }

      else
      {
        v51(v55, v16, v10);
        v36 = *(type metadata accessor for StorageInspectionAttachmentDirectory() + 20);
        v37 = v56;
        v38 = *&v56[v36];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v37[v36] = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_1B7CA1D44(0, v38[2] + 1, 1, v38);
          *&v56[v36] = v38;
        }

        v41 = v38[2];
        v40 = v38[3];
        if (v41 >= v40 >> 1)
        {
          v45 = sub_1B7CA1D44(v40 > 1, v41 + 1, 1, v38);
          *&v56[v36] = v45;
        }

        v42 = v53;
        (*(v53 + 8))(v16, v10);
        v43 = v55;
        v44 = *&v56[v36];
        *(v44 + 16) = v41 + 1;
        v32((v44 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41), v43, v10);
        v26 = v54;
      }

      objc_autoreleasePoolPop(v27);
    }
  }

  *a2 = v2;
LABEL_26:
  v48 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C697A0(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52C20, &qword_1B7D0E608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6A3F4();
  sub_1B7CFF830();
  v14 = 0;
  sub_1B7CFDFF0();
  sub_1B7C6A448(&qword_1EBA52AB8, MEMORY[0x1E6968FB0]);
  sub_1B7CFF500();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for StorageInspectionAttachmentDirectory() + 20));
    v12[15] = 1;
    sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7C6A490(&qword_1EBA52C28, &qword_1EBA52AB8);
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B7C699BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_1B7CFDFF0();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7C107FC(&qword_1EBA52C00, &qword_1B7D0E5F8);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for StorageInspectionAttachmentDirectory();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6A3F4();
  sub_1B7CFF820();
  if (v2)
  {
    return sub_1B7AE9168(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_1B7C6A448(&qword_1EBA52A78, MEMORY[0x1E6968FB0]);
  v19 = v31;
  v20 = v29;
  sub_1B7CFF440();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  sub_1B7C107FC(&qword_1EBA52C10, &qword_1B7D0E600);
  v33 = 1;
  sub_1B7C6A490(&qword_1EBA52C18, &qword_1EBA52A78);
  sub_1B7CFF440();
  v22 = *(v26 + 20);
  (*(v30 + 8))(v11, v20);
  v23 = v25;
  *(v25 + v22) = v32;
  sub_1B7C5A108(v23, v27);
  sub_1B7AE9168(a1);
  return sub_1B7C55F44(v23);
}

uint64_t sub_1B7C69D6C()
{
  if (*v0)
  {
    result = 0x73746E65746E6F63;
  }

  else
  {
    result = 0x726F746365726964;
  }

  *v0;
  return result;
}

uint64_t sub_1B7C69DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F746365726964 && a2 == 0xEC0000004C525579;
  if (v6 || (sub_1B7CFF590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B7CFF590();

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

uint64_t sub_1B7C69E90(uint64_t a1)
{
  v2 = sub_1B7C6A3F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C69ECC(uint64_t a1)
{
  v2 = sub_1B7C6A3F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C69F38()
{
  sub_1B7CFF210();

  v11 = 0x203A68746150;
  v12 = 0xE600000000000000;
  sub_1B7CFDFF0();
  sub_1B7C6A448(&qword_1EBA52088, MEMORY[0x1E6968FB0]);
  v1 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v1);

  MEMORY[0x1B8CADCA0](0x6E65746E6F63202CLL, 0xEC000000203A7374);
  v2 = *(v0 + *(type metadata accessor for StorageInspectionAttachmentDirectory() + 20));
  v9 = v0;
  sub_1B7C68DD8(sub_1B7C6A2D0, &v8, v2);
  v3 = MEMORY[0x1B8CADE30]();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  MEMORY[0x1B8CADCA0](0x536C61746F74202CLL, 0xED0000203A657A69);
  v10 = sub_1B7C69044();
  v6 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v6);

  return v11;
}

uint64_t sub_1B7C6A0F0@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7CFDFC0();
  sub_1B7CFDFC0();
  sub_1B7C4BFF0();
  v2 = sub_1B7CFF070();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B7C6A1C0()
{
  sub_1B7CFF7C0();
  sub_1B7CFDFC0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

uint64_t sub_1B7C6A220()
{
  sub_1B7CFDFC0();
  sub_1B7CFEB10();
}

uint64_t sub_1B7C6A274()
{
  sub_1B7CFF7C0();
  sub_1B7CFDFC0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

void sub_1B7C6A318()
{
  sub_1B7CFDFF0();
  if (v0 <= 0x3F)
  {
    sub_1B7C6A39C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7C6A39C()
{
  if (!qword_1EBA52BF8)
  {
    sub_1B7CFDFF0();
    v0 = sub_1B7CFED70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA52BF8);
    }
  }
}

unint64_t sub_1B7C6A3F4()
{
  result = qword_1EBA52C08;
  if (!qword_1EBA52C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C08);
  }

  return result;
}

uint64_t sub_1B7C6A448(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C6A490(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52C10, &qword_1B7D0E600);
    sub_1B7C6A448(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C6A540()
{
  result = qword_1EBA52C30;
  if (!qword_1EBA52C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C30);
  }

  return result;
}

unint64_t sub_1B7C6A598()
{
  result = qword_1EBA52C38;
  if (!qword_1EBA52C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C38);
  }

  return result;
}

unint64_t sub_1B7C6A5F0()
{
  result = qword_1EBA52C40;
  if (!qword_1EBA52C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C40);
  }

  return result;
}

BOOL sub_1B7C6A644(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1B7C6A674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B7C6A6CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    *&v97 = MEMORY[0x1E69E7CC0];

    sub_1B7AECEEC(0, v4, 0);
    v5 = 32;
    v6 = v97;
    do
    {
      v111 = *(v3 + v5);
      StorageInspectionCountReport.ReportContentFlags.description.getter();
      *&v97 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_1B7AECEEC((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v6 = v97;
      }

      *(v6 + 16) = v10 + 1;
      v11 = v6 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v5 += 8;
      --v4;
    }

    while (v4);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v14 = sub_1B7CFEA10();
  v16 = v15;

  strcpy(&v97, "Counts: (");
  WORD5(v97) = 0;
  HIDWORD(v97) = -385875968;
  MEMORY[0x1B8CADCA0](v14, v16);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  sub_1B7C219E4(v97, *(&v97 + 1));

  v18 = *(a1 + 24);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v21 = 0;
    *(a1 + 24) = v20;
    v22 = *(v1 + 16);
    v23 = *(v22 + 16);
    while (v23 != v21)
    {
      v24 = v22 + 8 * v21++;
      if (*(v24 + 32) == 1)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 24);
        v25 = sub_1B7CFF570();
        v27 = v26;
        strcpy(&v97, "Chat count:");
        v109 = 32;
        v110 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v28;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v25, v27);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v29 = 0;
    while (v23 != v29)
    {
      v30 = v22 + 8 * v29++;
      if (*(v30 + 32) == 2)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 32);
        v31 = sub_1B7CFF570();
        v33 = v32;
        v107 = 32;
        v108 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v34;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v31, v33);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v35 = 0;
    while (v23 != v35)
    {
      v36 = v22 + 8 * v35++;
      if (*(v36 + 32) == 4)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 40);
        v37 = sub_1B7CFF570();
        v39 = v38;
        strcpy(&v97, "Message count:");
        v105 = 32;
        v106 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v40;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v37, v39);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v41 = 0;
    while (v23 != v41)
    {
      v42 = v22 + 8 * v41++;
      if (*(v42 + 32) == 8)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 48);
        v43 = sub_1B7CFF570();
        v45 = v44;
        v103 = 32;
        v104 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v46;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v43, v45);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v47 = 0;
    while (v23 != v47)
    {
      v48 = v22 + 8 * v47++;
      if (*(v48 + 32) == 16)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 56);
        v49 = sub_1B7CFF570();
        v51 = v50;
        v101 = 32;
        v102 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v52;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v49, v51);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v53 = 0;
    while (v23 != v53)
    {
      v54 = v22 + 8 * v53++;
      if (*(v54 + 32) == 32)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 64);
        v55 = sub_1B7CFF570();
        v57 = v56;
        v99 = 32;
        v100 = 0xE100000000000000;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v58;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v55, v57);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v59 = 0;
    while (v23 != v59)
    {
      v60 = v22 + 8 * v59++;
      if (*(v60 + 32) == 2048)
      {
        sub_1B7C219E4(0x4320656C646E6148, 0xEE003A73746E756FLL);
        swift_beginAccess();
        v61 = *(v1 + 328);
        v97 = *(v1 + 312);
        v98 = v61;
        result = sub_1B7C6E9D0(&v97, a1);
        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v62 = 0;
    while (v23 != v62)
    {
      v63 = v22 + 8 * v62++;
      if (*(v63 + 32) == 64)
      {
        sub_1B7C219E4(0xD000000000000017, 0x80000001B7D55710);
        swift_beginAccess();
        v64 = *(v1 + 88);
        v97 = *(v1 + 72);
        v98 = v64;
        result = sub_1B7C6E9D0(&v97, a1);
        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v65 = 0;
    while (v23 != v65)
    {
      v66 = v22 + 8 * v65++;
      if (*(v66 + 32) == 128)
      {
        sub_1B7C219E4(0xD000000000000019, 0x80000001B7D55730);
        swift_beginAccess();
        v67 = *(v1 + 120);
        v97 = *(v1 + 104);
        v98 = v67;
        result = sub_1B7C6E9D0(&v97, a1);
        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v68 = 0;
    while (v23 != v68)
    {
      v69 = v22 + 8 * v68++;
      if (*(v69 + 32) == 256)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D55750);
        swift_beginAccess();
        v70 = *(v1 + 152);
        v97 = *(v1 + 136);
        v98 = v70;
        result = sub_1B7C6ED20(&v97, a1);
        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v71 = 0;
    while (v23 != v71)
    {
      v72 = v22 + 8 * v71++;
      if (*(v72 + 32) == 512)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 296);
        v73 = sub_1B7CFF570();
        v75 = v74;
        *&v97 = 0xD00000000000001BLL;
        *(&v97 + 1) = 0x80000001B7D55770;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v76;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v73, v75);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v77 = 0;
    while (v23 != v77)
    {
      v78 = v22 + 8 * v77++;
      if (*(v78 + 32) == 1024)
      {
        swift_beginAccess();
        *&v97 = *(v1 + 304);
        v79 = sub_1B7CFF570();
        v81 = v80;
        *&v97 = 0xD000000000000021;
        *(&v97 + 1) = 0x80000001B7D55790;
        sub_1B7C4BFF0();
        *&v97 = sub_1B7CFF080();
        *(&v97 + 1) = v82;
        MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
        MEMORY[0x1B8CADCA0](v79, v81);
        sub_1B7C219E4(v97, *(&v97 + 1));

        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v83 = 0;
    while (v23 != v83)
    {
      v84 = v22 + 8 * v83++;
      if (*(v84 + 32) == 4096)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557C0);
        swift_beginAccess();
        v85 = *(v1 + 184);
        v97 = *(v1 + 168);
        v98 = v85;
        result = sub_1B7C6E9D0(&v97, a1);
        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v86 = 0;
    while (v23 != v86)
    {
      v87 = v22 + 8 * v86++;
      if (*(v87 + 32) == 0x2000)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557E0);
        swift_beginAccess();
        v88 = *(v1 + 248);
        v97 = *(v1 + 232);
        v98 = v88;
        result = sub_1B7C6ED20(&v97, a1);
        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v89 = 0;
    while (v23 != v89)
    {
      v90 = v22 + 8 * v89++;
      if (*(v90 + 32) == 0x4000)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557E0);
        swift_beginAccess();
        v91 = *(v1 + 216);
        v97 = *(v1 + 200);
        v98 = v91;
        result = sub_1B7C6ED20(&v97, a1);
        v22 = *(v1 + 16);
        v23 = *(v22 + 16);
        break;
      }
    }

    v92 = (v22 + 32);
    while (v23)
    {
      v93 = *v92++;
      --v23;
      if (v93 == 0x8000)
      {
        sub_1B7C219E4(0xD000000000000016, 0x80000001B7D557E0);
        swift_beginAccess();
        v94 = *(v1 + 216);
        v97 = *(v1 + 200);
        v98 = v94;
        result = sub_1B7C6ED20(&v97, a1);
        break;
      }
    }

    v95 = *(a1 + 24);
    v19 = __OFSUB__(v95, 1);
    v96 = v95 - 1;
    if (!v19)
    {
      *(a1 + 24) = v96;
      return result;
    }
  }

  __break(1u);
  return result;
}

double StorageInspectionCountReport.init()()
{
  *(v0 + 16) = &unk_1F2FA1D48;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  return result;
}

uint64_t StorageInspectionCountReport.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v57 = sub_1B7C107FC(&qword_1EBA52C50, &qword_1B7D0E728);
  v4 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v6 = &v48 - v5;
  v61 = v2;
  *(v2 + 16) = &unk_1F2FA1D48;
  v7 = v2 + 16;
  v56 = v8;
  *(v7 + 8) = 0u;
  v9 = (v7 + 8);
  *(v7 + 24) = 0u;
  *&v55 = v7 + 24;
  *(v7 + 40) = 0u;
  *&v54 = v7 + 40;
  *(v7 + 56) = 0u;
  v53 = (v7 + 56);
  *(v7 + 88) = 0u;
  v52 = (v7 + 88);
  *(v7 + 120) = 0u;
  v51 = (v7 + 120);
  *(v7 + 152) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  *(v7 + 312) = 0u;
  v10 = a1[3];
  *&v59 = a1[4];
  v73 = a1;
  sub_1B7AE9124(a1, v10);
  sub_1B7C6F148();
  v58 = v6;
  v11 = v60;
  sub_1B7CFF820();
  if (v11)
  {
    v12 = v61;

    sub_1B7AE9168(v73);
  }

  else
  {
    *&v59 = v7 + 152;
    *&v60 = v7;
    v49 = (v7 + 216);
    v50 = (v7 + 184);
    v13 = v56;
    v14 = v61;
    sub_1B7C107FC(&qword_1EBA52C60, &qword_1B7D0E730);
    v72 = 0;
    sub_1B7C6F244(&qword_1EBA52C68, sub_1B7C6F19C);
    sub_1B7CFF440();
    v15 = v70;
    v16 = v60;
    swift_beginAccess();
    v17 = *v16;
    *v16 = v15;

    LOBYTE(v70) = 1;
    v19 = sub_1B7CFF460();
    swift_beginAccess();
    *v9 = v19;
    LOBYTE(v70) = 2;
    v20 = sub_1B7CFF460();
    v21 = v60;
    swift_beginAccess();
    v21[2] = v20;
    LOBYTE(v70) = 3;
    v22 = sub_1B7CFF460();
    v23 = v55;
    swift_beginAccess();
    *v23 = v22;
    LOBYTE(v70) = 4;
    v24 = sub_1B7CFF460();
    swift_beginAccess();
    v21[4] = v24;
    LOBYTE(v70) = 5;
    v25 = sub_1B7CFF460();
    v26 = v54;
    swift_beginAccess();
    *v26 = v25;
    LOBYTE(v70) = 6;
    v27 = sub_1B7CFF460();
    swift_beginAccess();
    v21[6] = v27;
    v69 = 7;
    sub_1B7C6F1F0();
    sub_1B7CFF440();
    v54 = v71;
    v55 = v70;
    v28 = v53;
    swift_beginAccess();
    v29 = v54;
    *v28 = v55;
    v28[1] = v29;
    v68 = 8;
    sub_1B7CFF440();
    v54 = v71;
    v55 = v70;
    v30 = v52;
    swift_beginAccess();
    v31 = v54;
    *v30 = v55;
    v30[1] = v31;
    v67 = 9;
    sub_1B7CFF440();
    v54 = v71;
    v55 = v70;
    v32 = v51;
    swift_beginAccess();
    v33 = v54;
    *v32 = v55;
    v32[1] = v33;
    v66 = 10;
    sub_1B7CFF440();
    v54 = v71;
    v55 = v70;
    v34 = v59;
    swift_beginAccess();
    v35 = v54;
    *v34 = v55;
    v34[1] = v35;
    v65 = 11;
    sub_1B7CFF440();
    v59 = v70;
    v55 = v71;
    v36 = v50;
    swift_beginAccess();
    v37 = v55;
    *v36 = v59;
    v36[1] = v37;
    v64 = 12;
    sub_1B7CFF440();
    v59 = v70;
    v55 = v71;
    v38 = v49;
    swift_beginAccess();
    v39 = v55;
    *v38 = v59;
    v38[1] = v39;
    v63 = 13;
    sub_1B7CFF440();
    v40 = (v60 + 248);
    v59 = v70;
    v55 = v71;
    swift_beginAccess();
    v41 = v55;
    *v40 = v59;
    v40[1] = v41;
    LOBYTE(v70) = 14;
    v42 = sub_1B7CFF460();
    v43 = v60;
    swift_beginAccess();
    *(v43 + 280) = v42;
    LOBYTE(v70) = 15;
    v44 = sub_1B7CFF460();
    v45 = v60;
    swift_beginAccess();
    *(v45 + 288) = v44;
    v62 = 16;
    sub_1B7CFF440();
    v46 = (v60 + 296);
    (*(v13 + 8))(v58, v57);
    v59 = v71;
    v60 = v70;
    swift_beginAccess();
    v47 = v59;
    *v46 = v60;
    v46[1] = v47;
    sub_1B7AE9168(v73);
    return v14;
  }

  return v12;
}

uint64_t StorageInspectionCountReport.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1B7C6BCF0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1B7C6BD28(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1B7C6BDF4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_1B7C6BE68(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1B7C6BEDC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1B7C6BFA0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1B7C6C064(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1B7C6C128(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

__n128 sub_1B7C6C1B8@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(v1 + 88);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C200(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 88) = *(a1 + 16);
  *(v1 + 72) = result;
  return result;
}

__n128 sub_1B7C6C298@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 104);
  v4 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C2E0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 120) = *(a1 + 16);
  *(v1 + 104) = result;
  return result;
}

__n128 sub_1B7C6C378@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 136);
  v4 = *(v1 + 152);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C3C0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 152) = *(a1 + 16);
  *(v1 + 136) = result;
  return result;
}

__n128 sub_1B7C6C458@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 168);
  v4 = *(v1 + 184);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C4A0(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 184) = *(a1 + 16);
  *(v1 + 168) = result;
  return result;
}

__n128 sub_1B7C6C538@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 200);
  v4 = *(v1 + 216);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C580(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 216) = *(a1 + 16);
  *(v1 + 200) = result;
  return result;
}

__n128 sub_1B7C6C618@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 232);
  v4 = *(v1 + 248);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_1B7C6C660(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  *(v1 + 248) = *(a1 + 16);
  *(v1 + 232) = result;
  return result;
}

__n128 sub_1B7C6C6F8@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + 264;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 sub_1B7C6C740(uint64_t a1)
{
  v3 = (v1 + 264);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_1B7C6C80C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 296) = a1;
  return result;
}

uint64_t sub_1B7C6C8D0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 304) = a1;
  return result;
}

__n128 sub_1B7C6C960@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + 312;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

__n128 sub_1B7C6C9A8(uint64_t a1)
{
  v3 = (v1 + 312);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_1B7C6CA40()
{
  v1 = *v0;
  v9 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v3 = (inited + 16);
  *(inited + 24) = 0;
  (*(*v0 + 632))();
  swift_beginAccess();
  v8 = *v3;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v4 = sub_1B7CFEA10();
  v6 = v5;

  MEMORY[0x1B8CADCA0](v4, v6);

  return v9;
}

uint64_t sub_1B7C6CB94(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA52C80, &qword_1B7D0E738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6F148();
  sub_1B7CFF830();
  swift_beginAccess();
  *&v29 = *(v3 + 16);
  v31 = 0;
  sub_1B7C107FC(&qword_1EBA52C60, &qword_1B7D0E730);
  sub_1B7C6F244(&qword_1EBA52C88, sub_1B7C6F2BC);
  sub_1B7CFF500();
  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v3 + 24);
    LOBYTE(v29) = 1;
    sub_1B7CFF520();
    swift_beginAccess();
    v12 = *(v3 + 32);
    LOBYTE(v29) = 2;
    sub_1B7CFF520();
    swift_beginAccess();
    v13 = *(v3 + 40);
    LOBYTE(v29) = 3;
    sub_1B7CFF520();
    swift_beginAccess();
    v14 = *(v3 + 48);
    LOBYTE(v29) = 4;
    sub_1B7CFF520();
    swift_beginAccess();
    v15 = *(v3 + 56);
    LOBYTE(v29) = 5;
    sub_1B7CFF520();
    swift_beginAccess();
    v16 = *(v3 + 64);
    LOBYTE(v29) = 6;
    sub_1B7CFF520();
    swift_beginAccess();
    v17 = *(v3 + 88);
    v29 = *(v3 + 72);
    v30 = v17;
    v28[200] = 7;
    sub_1B7C6F310();
    sub_1B7CFF500();
    swift_beginAccess();
    v18 = *(v3 + 120);
    v29 = *(v3 + 104);
    v30 = v18;
    v28[176] = 8;
    sub_1B7CFF500();
    swift_beginAccess();
    v19 = *(v3 + 152);
    v29 = *(v3 + 136);
    v30 = v19;
    v28[152] = 9;
    sub_1B7CFF500();
    swift_beginAccess();
    v20 = *(v3 + 184);
    v29 = *(v3 + 168);
    v30 = v20;
    v28[128] = 10;
    sub_1B7CFF500();
    swift_beginAccess();
    v21 = *(v3 + 216);
    v29 = *(v3 + 200);
    v30 = v21;
    v28[104] = 11;
    sub_1B7CFF500();
    swift_beginAccess();
    v22 = *(v3 + 248);
    v29 = *(v3 + 232);
    v30 = v22;
    v28[80] = 12;
    sub_1B7CFF500();
    swift_beginAccess();
    v23 = *(v3 + 280);
    v29 = *(v3 + 264);
    v30 = v23;
    v28[56] = 13;
    sub_1B7CFF500();
    swift_beginAccess();
    v24 = *(v3 + 296);
    LOBYTE(v29) = 14;
    sub_1B7CFF520();
    swift_beginAccess();
    v25 = *(v3 + 304);
    LOBYTE(v29) = 15;
    sub_1B7CFF520();
    swift_beginAccess();
    v26 = *(v3 + 328);
    v29 = *(v3 + 312);
    v30 = v26;
    v28[7] = 16;
    sub_1B7CFF500();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t StorageInspectionCountReport.OrphanableItemCounts.parented.setter(unint64_t result)
{
  v2 = v1[3];
  v1[3] = result;
  v3 = result >= v2;
  v4 = result - v2;
  if (v3)
  {
    v3 = __CFADD__(*v1, v4);
    v5 = *v1 + v4;
    if (!v3)
    {
      *v1 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t StorageInspectionCountReport.OrphanableItemCounts.orphaned.setter(unint64_t result)
{
  v2 = v1[1];
  v1[1] = result;
  v3 = result >= v2;
  v4 = result - v2;
  if (v3)
  {
    v3 = __CFADD__(*v1, v4);
    v5 = *v1 + v4;
    if (!v3)
    {
      *v1 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t StorageInspectionCountReport.OrphanableItemCounts.childOfOrphanedMessage.setter(unint64_t result)
{
  v2 = v1[2];
  v1[2] = result;
  v3 = result >= v2;
  v4 = result - v2;
  if (v3)
  {
    v3 = __CFADD__(*v1, v4);
    v5 = *v1 + v4;
    if (!v3)
    {
      *v1 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C6D268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

double StorageInspectionCountReport.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = &unk_1F2FA1D48;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  return result;
}

void StorageInspectionCountReport.ReportContentFlags.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F2FA16F0 + 24 * v1 + 32);
  while (v1 != 16)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B7C311E8(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1B7C311E8((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1B7AECEEC((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  sub_1B7CFEA10();
}

unint64_t sub_1B7C6D56C(char a1)
{
  result = 0x6E756F4374616863;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6168437974706D65;
      break;
    case 3:
      result = 0x436567617373656DLL;
      break;
    case 4:
    case 7:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000027;
      break;
    case 13:
      result = 0xD000000000000026;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0x6F43656C646E6168;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1B7C6D774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C702AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C6D7A8(uint64_t a1)
{
  v2 = sub_1B7C6F148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C6D7E4(uint64_t a1)
{
  v2 = sub_1B7C6F148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCountReport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t StorageInspectionCountReport.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  StorageInspectionCountReport.init(from:)(a1);
  return v2;
}

uint64_t sub_1B7C6D8A8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 656))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1B7C6DA48()
{
  v0 = unk_1F2FA1D70;
  if ((unk_1F2FA1D70 & ~qword_1F2FA1D68) == 0)
  {
    v0 = 0;
  }

  v1 = v0 | qword_1F2FA1D68;
  v2 = qword_1F2FA1D78;
  if ((qword_1F2FA1D78 & ~v1) == 0)
  {
    v2 = 0;
  }

  v3 = v2 | v1;
  if ((unk_1F2FA1D80 & ~v3) != 0)
  {
    v4 = unk_1F2FA1D80;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | v3;
  v6 = qword_1F2FA1D88;
  if ((qword_1F2FA1D88 & ~v5) == 0)
  {
    v6 = 0;
  }

  v7 = v6 | v5;
  if ((unk_1F2FA1D90 & ~v7) != 0)
  {
    v8 = unk_1F2FA1D90;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v7;
  v10 = qword_1F2FA1D98;
  if ((qword_1F2FA1D98 & ~v9) == 0)
  {
    v10 = 0;
  }

  v11 = v10 | v9;
  if ((unk_1F2FA1DA0 & ~v11) != 0)
  {
    v12 = unk_1F2FA1DA0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | v11;
  v14 = qword_1F2FA1DA8;
  if ((qword_1F2FA1DA8 & ~v13) == 0)
  {
    v14 = 0;
  }

  v15 = v14 | v13;
  if ((unk_1F2FA1DB0 & ~v15) != 0)
  {
    v16 = unk_1F2FA1DB0;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15;
  v18 = qword_1F2FA1DB8;
  if ((qword_1F2FA1DB8 & ~v17) == 0)
  {
    v18 = 0;
  }

  v19 = v18 | v17;
  if ((unk_1F2FA1DC0 & ~v19) != 0)
  {
    v20 = unk_1F2FA1DC0;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 | v19;
  v22 = qword_1F2FA1DC8;
  if ((qword_1F2FA1DC8 & ~v21) == 0)
  {
    v22 = 0;
  }

  v23 = v22 | v21;
  if ((unk_1F2FA1DD0 & ~v23) != 0)
  {
    v24 = unk_1F2FA1DD0;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 | v23;
  v27 = qword_1F2FA1DD8;
  v26 = unk_1F2FA1DE0;
  if ((qword_1F2FA1DD8 & ~v25) == 0)
  {
    v27 = 0;
  }

  v28 = v27 | v25;
  if ((unk_1F2FA1DE0 & ~v28) == 0)
  {
    v26 = 0;
  }

  qword_1EBA52C48 = v26 | v28;
}

uint64_t static StorageInspectionCountReport.ReportContentFlags.allFlags.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EBA515E8 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EBA52C48;
  return result;
}

char *StorageInspectionCountReport.ReportContentFlags.counts.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = *(&unk_1F2FA1D48 + v1 + 32);
    if ((v4 & ~v2) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B7CA2C54(0, *(v3 + 2) + 1, 1, v3);
      }

      v6 = *(v3 + 2);
      v5 = *(v3 + 3);
      if (v6 >= v5 >> 1)
      {
        v3 = sub_1B7CA2C54((v5 > 1), v6 + 1, 1, v3);
      }

      *(v3 + 2) = v6 + 1;
      *&v3[8 * v6 + 32] = v4;
    }

    v1 += 8;
  }

  while (v1 != 128);
  return v3;
}

unint64_t *(*StorageInspectionCountReport.OrphanableItemCounts.orphaned.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  return sub_1B7C6DD80;
}

unint64_t *sub_1B7C6DD80(unint64_t *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  v2[1] = *result;
  v5 = v4 >= v3;
  v6 = v4 - v3;
  LOBYTE(v7) = !v5;
  if (a2)
  {
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = *v2;
    v5 = __CFADD__(*v2, v6);
    v6 += *v2;
    if (!v5)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(*v2, v6);
  v6 += *v2;
  if (!v5)
  {
LABEL_11:
    *v2 = v6;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t *(*StorageInspectionCountReport.OrphanableItemCounts.childOfOrphanedMessage.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  return sub_1B7C6DE04;
}

unint64_t *sub_1B7C6DE04(unint64_t *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  v2[2] = *result;
  v5 = v4 >= v3;
  v6 = v4 - v3;
  LOBYTE(v7) = !v5;
  if (a2)
  {
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = *v2;
    v5 = __CFADD__(*v2, v6);
    v6 += *v2;
    if (!v5)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(*v2, v6);
  v6 += *v2;
  if (!v5)
  {
LABEL_11:
    *v2 = v6;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t *(*StorageInspectionCountReport.OrphanableItemCounts.parented.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *(v1 + 24);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  return sub_1B7C6DE88;
}

unint64_t *sub_1B7C6DE88(unint64_t *result, char a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *result;
  v2[3] = *result;
  v5 = v4 >= v3;
  v6 = v4 - v3;
  LOBYTE(v7) = !v5;
  if (a2)
  {
    if (v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = *v2;
    v5 = __CFADD__(*v2, v6);
    v6 += *v2;
    if (!v5)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(*v2, v6);
  v6 += *v2;
  if (!v5)
  {
LABEL_11:
    *v2 = v6;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1B7C6DED8()
{
  v1 = 0x6C61746F74;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x6465746E65726170;
  }

  if (*v0)
  {
    v1 = 0x64656E616870726FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7C6DF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C707FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C6DF78(uint64_t a1)
{
  v2 = sub_1B7C6F364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C6DFB4(uint64_t a1)
{
  v2 = sub_1B7C6F364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorageInspectionCountReport.OrphanableItemCounts.encode(to:)(void *a1)
{
  v4 = sub_1B7C107FC(&qword_1EBA52CA0, &qword_1B7D0E740);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[1] = v11;
  v12 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6F364();
  sub_1B7CFF830();
  v18 = 0;
  sub_1B7CFF520();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v17 = 1;
  sub_1B7CFF520();
  v16 = 2;
  sub_1B7CFF520();
  v15 = 3;
  sub_1B7CFF520();
  return (*(v5 + 8))(v8, v4);
}

uint64_t StorageInspectionCountReport.OrphanableItemCounts.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA52CB0, &qword_1B7D0E748);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C6F364();
  sub_1B7CFF820();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_1B7CFF460();
    v19 = 1;
    v12 = sub_1B7CFF460();
    v18 = 2;
    v16 = sub_1B7CFF460();
    v17 = 3;
    v15 = sub_1B7CFF460();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    v14 = v15;
    a2[2] = v16;
    a2[3] = v14;
  }

  return sub_1B7AE9168(a1);
}

uint64_t StorageInspectionCountReport.OrphanableItemCounts.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000014, 0x80000001B7D0E730);
  MEMORY[0x1B8CADCA0](0x3A6C61746F74203ALL, 0xE900000000000020);
  v4 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v4);

  MEMORY[0x1B8CADCA0](0x6E616870726F202CLL, 0xEC000000203A6465);
  v5 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v5);

  MEMORY[0x1B8CADCA0](0xD00000000000001ALL, 0x80000001B7D55800);
  v6 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v6);

  return 0;
}

BOOL _s14IMDPersistence28StorageInspectionCountReportC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[9];
  v5 = a1[10];
  v6 = a1[11];
  swift_beginAccess();
  if (v4 != a2[9] || v5 != a2[10] || v6 != a2[11])
  {
    return 0;
  }

  swift_beginAccess();
  v11 = a1[13];
  v10 = a1[14];
  v12 = a1[15];
  swift_beginAccess();
  result = 0;
  if (v11 == a2[13] && v10 == a2[14] && v12 == a2[15])
  {
    swift_beginAccess();
    v13 = a1[5];
    swift_beginAccess();
    if (v13 != a2[5])
    {
      return 0;
    }

    swift_beginAccess();
    v14 = a1[6];
    swift_beginAccess();
    if (v14 != a2[6])
    {
      return 0;
    }

    swift_beginAccess();
    v15 = a1[3];
    swift_beginAccess();
    if (v15 != a2[3])
    {
      return 0;
    }

    swift_beginAccess();
    v16 = a1[4];
    swift_beginAccess();
    if (v16 != a2[4])
    {
      return 0;
    }

    swift_beginAccess();
    v18 = a1[39];
    v17 = a1[40];
    v19 = a1[41];
    swift_beginAccess();
    result = 0;
    if (v18 != a2[39] || v17 != a2[40] || v19 != a2[41])
    {
      return result;
    }

    swift_beginAccess();
    v20 = a1[37];
    swift_beginAccess();
    if (v20 != a2[37])
    {
      return 0;
    }

    swift_beginAccess();
    v21 = a1[38];
    swift_beginAccess();
    if (v21 != a2[38])
    {
      return 0;
    }

    swift_beginAccess();
    v22 = a1[7];
    swift_beginAccess();
    if (v22 != a2[7])
    {
      return 0;
    }

    swift_beginAccess();
    v23 = a1[8];
    swift_beginAccess();
    if (v23 != a2[8])
    {
      return 0;
    }

    swift_beginAccess();
    v25 = a1[29];
    v24 = a1[30];
    v26 = a1[31];
    swift_beginAccess();
    result = 0;
    if (v25 == a2[29] && v24 == a2[30] && v26 == a2[31])
    {
      swift_beginAccess();
      v28 = a1[21];
      v27 = a1[22];
      v29 = a1[23];
      swift_beginAccess();
      result = 0;
      if (v28 == a2[21] && v27 == a2[22] && v29 == a2[23])
      {
        swift_beginAccess();
        v31 = a1[25];
        v30 = a1[26];
        v32 = a1[27];
        swift_beginAccess();
        result = 0;
        if (v31 == a2[25] && v30 == a2[26])
        {
          return v32 == a2[27];
        }
      }
    }
  }

  return result;
}

uint64_t *sub_1B7C6E9D0(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v6 = result[3];
    v27 = result[2];
    v7 = *result;
    v8 = result[1];
    *(a2 + 24) = v4;
    v9 = sub_1B7CFF570();
    v11 = v10;
    sub_1B7C4BFF0();
    v28 = sub_1B7CFF080();
    v32 = v12;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v9, v11);
    sub_1B7C219E4(v28, v32);

    v13 = sub_1B7CFF570();
    v15 = v14;
    v29 = sub_1B7CFF080();
    v33 = v16;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v13, v15);
    sub_1B7C219E4(v29, v33);

    v17 = sub_1B7CFF570();
    v19 = v18;
    v30 = sub_1B7CFF080();
    v34 = v20;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v17, v19);
    sub_1B7C219E4(v30, v34);

    v21 = sub_1B7CFF570();
    v23 = v22;
    v31 = sub_1B7CFF080();
    v35 = v24;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v21, v23);
    sub_1B7C219E4(v31, v35);

    v25 = *(a2 + 24);
    v3 = __OFSUB__(v25, 1);
    v26 = v25 - 1;
    if (!v3)
    {
      *(a2 + 24) = v26;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B7C6ED20(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v6 = result[3];
    v7 = *result;
    v35 = result[1];
    v36 = result[2];
    *(a2 + 24) = v4;
    v8 = objc_opt_self();
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v10 = [v8 stringFromHugeNumber_];

    v11 = sub_1B7CFEA60();
    v13 = v12;

    sub_1B7C4BFF0();
    v37 = sub_1B7CFF080();
    v41 = v14;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v11, v13);
    sub_1B7C219E4(v37, v41);

    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v16 = [v8 stringFromHugeNumber_];

    v17 = sub_1B7CFEA60();
    v19 = v18;

    v38 = sub_1B7CFF080();
    v42 = v20;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v17, v19);
    sub_1B7C219E4(v38, v42);

    v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v22 = [v8 stringFromHugeNumber_];

    v23 = sub_1B7CFEA60();
    v25 = v24;

    v39 = sub_1B7CFF080();
    v43 = v26;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v23, v25);
    sub_1B7C219E4(v39, v43);

    v27 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    v28 = [v8 stringFromHugeNumber_];

    v29 = sub_1B7CFEA60();
    v31 = v30;

    v40 = sub_1B7CFF080();
    v44 = v32;
    MEMORY[0x1B8CADCA0](8250, 0xE200000000000000);
    MEMORY[0x1B8CADCA0](v29, v31);
    sub_1B7C219E4(v40, v44);

    v33 = *(a2 + 24);
    v3 = __OFSUB__(v33, 1);
    v34 = v33 - 1;
    if (!v3)
    {
      *(a2 + 24) = v34;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7C6F148()
{
  result = qword_1EBA52C58;
  if (!qword_1EBA52C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C58);
  }

  return result;
}

unint64_t sub_1B7C6F19C()
{
  result = qword_1EBA52C70;
  if (!qword_1EBA52C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C70);
  }

  return result;
}

unint64_t sub_1B7C6F1F0()
{
  result = qword_1EBA52C78;
  if (!qword_1EBA52C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C78);
  }

  return result;
}

uint64_t sub_1B7C6F244(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52C60, &qword_1B7D0E730);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C6F2BC()
{
  result = qword_1EBA52C90;
  if (!qword_1EBA52C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C90);
  }

  return result;
}

unint64_t sub_1B7C6F310()
{
  result = qword_1EBA52C98;
  if (!qword_1EBA52C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52C98);
  }

  return result;
}

unint64_t sub_1B7C6F364()
{
  result = qword_1EBA52CA8;
  if (!qword_1EBA52CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CA8);
  }

  return result;
}

unint64_t sub_1B7C6F3BC()
{
  result = qword_1EBA52CB8;
  if (!qword_1EBA52CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CB8);
  }

  return result;
}

unint64_t sub_1B7C6F414()
{
  result = qword_1EBA52CC0;
  if (!qword_1EBA52CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CC0);
  }

  return result;
}

unint64_t sub_1B7C6F46C()
{
  result = qword_1EBA52CC8;
  if (!qword_1EBA52CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CC8);
  }

  return result;
}

unint64_t sub_1B7C6F4C4()
{
  result = qword_1EBA52CD0;
  if (!qword_1EBA52CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CD0);
  }

  return result;
}

__n128 sub_1B7C6FED4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B7C6FEE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C6FF00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionCountReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionCountReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C700A0()
{
  result = qword_1EBA52CD8;
  if (!qword_1EBA52CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CD8);
  }

  return result;
}

unint64_t sub_1B7C700F8()
{
  result = qword_1EBA52CE0;
  if (!qword_1EBA52CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CE0);
  }

  return result;
}

unint64_t sub_1B7C70150()
{
  result = qword_1EBA52CE8;
  if (!qword_1EBA52CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CE8);
  }

  return result;
}

unint64_t sub_1B7C701A8()
{
  result = qword_1EBA52CF0;
  if (!qword_1EBA52CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CF0);
  }

  return result;
}

unint64_t sub_1B7C70200()
{
  result = qword_1EBA52CF8;
  if (!qword_1EBA52CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52CF8);
  }

  return result;
}

unint64_t sub_1B7C70258()
{
  result = qword_1EBA52D00;
  if (!qword_1EBA52D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52D00);
  }

  return result;
}

uint64_t sub_1B7C702AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001B7D55860 == a2;
  if (v3 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F4374616863 && a2 == 0xE900000000000074 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6168437974706D65 && a2 == 0xEE00746E756F4374 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7D4E010 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D4E030 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001B7D4E050 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B7D4E070 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7D4E090 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D4E0B0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7D4E110 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001B7D4E150 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B7D4E130 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000026 && 0x80000001B7D558A0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B7D4E0D0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B7D4E0F0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6F43656C646E6168 && a2 == 0xEC00000073746E75)
  {

    return 16;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1B7C707FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61746F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B7D558E0 == a2 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465746E65726170 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B7CFF590();

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

uint64_t sub_1B7C70964()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD0000000000000B8, 0x80000001B7D55960);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);
}

void sub_1B7C70A70(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for StorageInspectionAttachmentRecord();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v14 + 80);
    v20 = a1 + ((v19 + 32) & ~v19);
    v38 = "rphaned_parent INTEGER);";
    v39 = v19;
    v37 = (v19 + 16) & ~v19;
    v36 = (v15 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = a2 & 1;
    v21 = *(v14 + 72);
    v40 = v10;
    v34 = v21;
    do
    {
      sub_1B7C607E8(v20, v17);
      sub_1B7C487D8(&v17[*(v10 + 32)], v9);
      v22 = sub_1B7CFDFF0();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v9, 1, v22) == 1)
      {
        sub_1B7C4FB10(v9);
        sub_1B7C71074(v17);
      }

      else
      {
        v48 = v3;
        v24 = sub_1B7CFDFC0();
        v44 = v25;
        v45 = v24;
        (*(v23 + 8))(v9, v22);
        if (qword_1EBA515F0 != -1)
        {
          swift_once();
        }

        v43 = off_1EBA52D08;
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_1B7CFF210();
        MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
        MEMORY[0x1B8CADCA0](*(v42 + 16), *(v42 + 24));
        MEMORY[0x1B8CADCA0](0xD00000000000007CLL, v38 | 0x8000000000000000);
        v26 = v46;
        v27 = v47;
        v28 = v41;
        sub_1B7C607E8(v17, v41);
        v29 = v36;
        v30 = swift_allocObject();
        sub_1B7C710D0(v28, v30 + v37);
        v31 = v30 + v29;
        v32 = v44;
        *v31 = v45;
        *(v31 + 8) = v32;
        *(v31 + 16) = v35;
        v33 = v48;
        SqlOperation.execute(_:_:)(v26, v27, sub_1B7C71134);
        v3 = v33;
        sub_1B7C71074(v17);

        v10 = v40;
        v21 = v34;
        if (v33)
        {
          return;
        }
      }

      v20 += v21;
      --v18;
    }

    while (v18);
  }
}

void sub_1B7C70E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  SqlOperation.bind(_:)(*a2);
  if (v8)
  {
    goto LABEL_14;
  }

  SqlOperation.bind(_:)(*(a2 + 32));
  if (v9)
  {
    goto LABEL_14;
  }

  v10 = sub_1B7CFEA30();
  swift_beginAccess();
  IMDSqlStatementBindTextFromCFString(a1 + 48, v10);
  swift_endAccess();

  swift_beginAccess();
  v18[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v18);
  v11 = v18[0];
  swift_endAccess();
  if (v11)
  {
LABEL_13:
    swift_willThrow();
    v11;
    goto LABEL_14;
  }

  v12 = type metadata accessor for StorageInspectionAttachmentRecord();
  v13 = a2 + v12[9];
  if ((*(v13 + 8) & 1) == 0)
  {
    v11 = *v13;
    if (*v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  swift_beginAccess();
  IMDSqlStatementBindInt(a1 + 48, v11);
  v18[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v18);
  v11 = v18[0];
  swift_endAccess();
  if (v11)
  {
    goto LABEL_13;
  }

  v14 = a2 + v12[10];
  if ((*(v14 + 8) & 1) == 0)
  {
    v15 = *v14;
    if (*v14 >= 0xFFFFFFFF80000000)
    {
      if (v15 <= 0x7FFFFFFF)
      {
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  LODWORD(v15) = 0;
LABEL_12:
  swift_beginAccess();
  IMDSqlStatementBindInt(a1 + 48, v15);
  v18[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v18);
  v11 = v18[0];
  swift_endAccess();
  if (v11)
  {
    goto LABEL_13;
  }

  SqlOperation.bind(_:)(*(a2 + v12[11]));
  if (!v17)
  {
    v19.value = a5 & 1;
    v19.is_nil = 0;
    SqlOperation.bind(_:)(v19);
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7C71074(uint64_t a1)
{
  v2 = type metadata accessor for StorageInspectionAttachmentRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C710D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageInspectionAttachmentRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7C71134(uint64_t a1)
{
  v3 = *(type metadata accessor for StorageInspectionAttachmentRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1B7C70E14(a1, v1 + v4, *v5, *(v5 + 8), *(v5 + 16));
}

uint64_t sub_1B7C711D4()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000054, 0x80000001B7D55B40);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);
}

uint64_t sub_1B7C712E0()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD000000000000059, 0x80000001B7D55AE0);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);
}

uint64_t URL.directoryExistsOnDisk.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return (v2 & v5);
}

uint64_t URL.fileAllocationSize.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69688A8];
  v1 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DC58];

  return sub_1B7C723A8(v2, v0, sub_1B7C73244, "Failed to get diskAllocationSize from URL not on disk '%s'");
}

uint64_t URL.purgeableState.getter()
{
  v0 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_1B7CFDD50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0A7B0;
  v10 = *MEMORY[0x1E695DBA8];
  *(inited + 32) = *MEMORY[0x1E695DBA8];
  v11 = v10;
  sub_1B7C72F40(inited);
  swift_setDeallocating();
  sub_1B7C73134(inited + 32);
  sub_1B7CFDF00();

  (*(v5 + 56))(v3, 0, 1, v4);
  (*(v5 + 32))(v8, v3, v4);
  v12 = sub_1B7CFDD40();
  (*(v5 + 8))(v8, v4);
  if (v12 != 2 && (v12 & 1) == 0)
  {
    return 0;
  }

  v13 = sub_1B7CFDFC0();
  v15 = sub_1B7C73368(v13, v14);
  v17 = v16;

  if (v17)
  {
    return 2;
  }

  if (v15)
  {
    v19 = (IM_APFS_PURGEABLE_IGNORE_ME() & v15) == 0;
  }

  else
  {
    v19 = 0;
  }

  if ([objc_opt_self() purgeableFlagsAttributedToMessages_])
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  return v20 | v19;
}

uint64_t IMFileTransferState.description.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E69766968637261;
      }

      if (!a1)
      {
        return 0xD000000000000015;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6E69726170657270;
      }

      else
      {
        return 0xD000000000000011;
      }
    }

    v2 = 0x747065636361;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 0xD000000000000015;
    }

    if (a1 != 8)
    {
      if (a1 == 9)
      {
        return 0x69616E626D756874;
      }

      return 0x6E776F6E6B6E75;
    }

    v2 = 0x7463656A6572;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  }

  if (a1 != 4)
  {
    if (a1 != 5)
    {
      return 0x617453726F727265;
    }

    v2 = 0x6873696E6966;
    return v2 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  }

  return 0x697A696C616E6966;
}

uint64_t IMFileTransferCKSyncState.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0xD00000000000001ELL;
      case 1:
        return 0xD00000000000001BLL;
      case 2:
        return 0xD00000000000001DLL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD00000000000001FLL;
    }

    if (a1 == 64)
    {
      return 0x6261636E79736E75;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1B7C71B34(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_1B7CFEA30();
  v5 = [v4 *a3];

  v6 = sub_1B7CFEA60();
  return v6;
}

id URL.itemExistsOnDisk.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t URL.fileExistsOnDisk.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7CFDFC0();
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return v2 & (v5 ^ 1);
}

uint64_t IMChatStyle.styleCharacter.getter(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 43;
  if (a1 != 43)
  {
    v2 = 0;
  }

  if (a1 != 45)
  {
    v1 = v2;
  }

  if (a1 == 35)
  {
    return 35;
  }

  else
  {
    return v1;
  }
}

uint64_t IMChatStyle.description.getter(char a1)
{
  switch(a1)
  {
    case '#':
      MEMORY[0x1B8CADCA0](0x746168436D6F6F72, 0xED0000656C797453);
      v1 = 0xE100000000000000;
      v2 = 35;
      break;
    case '+':
      MEMORY[0x1B8CADCA0](0x61684370756F7267, 0xEE00656C79745374);
      v1 = 0xE100000000000000;
      v2 = 43;
      break;
    case '-':
      MEMORY[0x1B8CADCA0](0xD000000000000017, 0x80000001B7D55C00);
      v1 = 0xE100000000000000;
      v2 = 45;
      break;
    default:
      MEMORY[0x1B8CADCA0](0, 0xE000000000000000);
      v2 = 0;
      v1 = 0xE000000000000000;
      break;
  }

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v2, v1);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return 0;
}

uint64_t IMChatStyle.name.getter(char a1)
{
  v1 = 0x61684370756F7267;
  v2 = 0xD000000000000017;
  if (a1 != 45)
  {
    v2 = 0;
  }

  if (a1 != 43)
  {
    v1 = v2;
  }

  if (a1 == 35)
  {
    return 0x746168436D6F6F72;
  }

  else
  {
    return v1;
  }
}

uint64_t static NSFileManager.fileExistsOnDisk(atPath:)()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return v2 & (v5 ^ 1);
}

uint64_t static NSFileManager.directoryExistsOnDisk(atPath:)()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return (v2 & v5);
}

id static NSFileManager.itemExistsOnDisk(atPath:)()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL static NSFileManager.apfsflags(arePurgeable:)(_BOOL8 result)
{
  if (result)
  {
    return (IM_APFS_PURGEABLE_IGNORE_ME() & result) == 0;
  }

  return result;
}

unint64_t static NSFileManager.fileIsPurgeable(atPath:)(uint64_t a1, unint64_t a2)
{
  result = sub_1B7C73368(a1, a2);
  if (v3)
  {
    return 2;
  }

  if (result)
  {
    return (IM_APFS_PURGEABLE_IGNORE_ME() & result) == 0;
  }

  return result;
}

uint64_t static NSFileManager.string(forPurgeableFlags:)(uint64_t a1)
{
  v1 = [objc_opt_self() stringForPurgableFlags_];
  v2 = sub_1B7CFEA60();

  return v2;
}

uint64_t URL.fileSize.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E69688C0];
  v1 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DB50];

  return sub_1B7C723A8(v2, v0, sub_1B7C736D8, "Failed to get fileSize from URL not on disk '%s'");
}

uint64_t sub_1B7C723A8(void **a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t, unint64_t), const char *a4)
{
  v41 = a3;
  v42 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = sub_1B7CFE420();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - v12;
  v14 = sub_1B7CFDD50();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0A7B0;
  v20 = *a1;
  *(inited + 32) = *a1;
  v21 = v20;
  sub_1B7C72F40(inited);
  swift_setDeallocating();
  sub_1B7C73134(inited + 32);
  sub_1B7CFDF00();

  (*(v15 + 56))(v13, 0, 1, v14);
  v22 = (*(v15 + 32))(v18, v13, v14);
  v23 = a2(v22);
  LOBYTE(a1) = v24;
  (*(v15 + 8))(v18, v14);
  if (a1)
  {
    v25 = sub_1B7CFDFC0();
    v27 = v26;
    sub_1B7CFDFC0();
    LOBYTE(v45) = 0;
    v28 = [objc_opt_self() defaultManager];
    v29 = sub_1B7CFEA30();

    v30 = [v28 fileExistsAtPath:v29 isDirectory:&v45];

    if (v30 && (v45 & 1) == 0)
    {
      v38 = v41(v25, v27);

      result = v38;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_1B7CFF210();

      v45 = 0xD000000000000012;
      v46 = 0x80000001B7D51090;
      sub_1B7C731F8();
      v31 = sub_1B7CFF8D0();
      MEMORY[0x1B8CADCA0](v31);

      sub_1B7CFE410();

      v32 = sub_1B7CFE400();
      v33 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45 = v35;
        *v34 = 136315138;
        v36 = sub_1B7AED1B8(v25, v27, &v45);

        *(v34 + 4) = v36;
        _os_log_impl(&dword_1B7AD5000, v32, v33, v42, v34, 0xCu);
        sub_1B7AE9168(v35);
        MEMORY[0x1B8CB0E70](v35, -1, -1);
        MEMORY[0x1B8CB0E70](v34, -1, -1);
      }

      else
      {
      }

      (*(v43 + 8))(v9, v44);
      result = 0;
    }
  }

  else
  {
    if (v23 < 0)
    {
      __break(1u);
    }

    result = v23;
  }

  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t URL.isPurgeable.getter()
{
  v0 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v19 - v2;
  v4 = sub_1B7CFDD50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52980, &unk_1B7D0DB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0A7B0;
  v10 = *MEMORY[0x1E695DBA8];
  *(inited + 32) = *MEMORY[0x1E695DBA8];
  v11 = v10;
  sub_1B7C72F40(inited);
  swift_setDeallocating();
  sub_1B7C73134(inited + 32);
  sub_1B7CFDF00();

  (*(v5 + 56))(v3, 0, 1, v4);
  (*(v5 + 32))(v8, v3, v4);
  v12 = sub_1B7CFDD40();
  (*(v5 + 8))(v8, v4);
  result = v12;
  if (v12 == 2)
  {
    v14 = sub_1B7CFDFC0();
    v16 = sub_1B7C73368(v14, v15);
    v18 = v17;

    if (v18)
    {
      return 2;
    }

    else
    {
      return v16 && (IM_APFS_PURGEABLE_IGNORE_ME() & v16) == 0;
    }
  }

  return result;
}

char *URL.apfsFlags.getter()
{
  v0 = sub_1B7CFDFC0();
  v2 = sub_1B7C73368(v0, v1);

  return v2;
}

uint64_t URL.apfsFlagsDescription.getter()
{
  v0 = sub_1B7CFDFC0();
  v2 = sub_1B7C73368(v0, v1);
  v4 = v3;

  if (v4)
  {
    return 0x6E776F6E6B6E55;
  }

  v6 = [objc_opt_self() stringForPurgableFlags_];
  v7 = sub_1B7CFEA60();

  return v7;
}

__n128 sub_1B7C72E68()
{
  type metadata accessor for SqlOperation();
  v0 = swift_allocObject();
  IMDSqlOperationInitWithSharedCSDBDatabase(v6);
  v1 = v6[9];
  *(v0 + 144) = v6[8];
  *(v0 + 160) = v1;
  *(v0 + 176) = v6[10];
  v2 = v6[5];
  *(v0 + 80) = v6[4];
  *(v0 + 96) = v2;
  v3 = v6[7];
  *(v0 + 112) = v6[6];
  *(v0 + 128) = v3;
  v4 = v6[1];
  *(v0 + 16) = v6[0];
  *(v0 + 32) = v4;
  result = v6[3];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = result;
  off_1EBA52D08 = v0;
  return result;
}

uint64_t static SqlOperation.shared.getter()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B7C72F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(qword_1EBA52D28, &qword_1B7D0EF38);
    v3 = sub_1B7CFF1C0();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1B7CFEA60();
      sub_1B7CFF7C0();
      v29 = v7;
      sub_1B7CFEB10();
      v9 = sub_1B7CFF800();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1B7CFEA60();
        v20 = v19;
        if (v18 == sub_1B7CFEA60() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1B7CFF590();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B7C73134(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C73190(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52970, &qword_1B7D0DB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7C731F8()
{
  result = qword_1EBA52D10;
  if (!qword_1EBA52D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52D10);
  }

  return result;
}

uint64_t sub_1B7C73244()
{
  v8 = *MEMORY[0x1E69E9840];
  LOBYTE(v7) = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v7];

  if (v2 && (v7 = *MEMORY[0x1E69A6F48], v3 = sub_1B7CFEA30(), v4 = IMFileSizeForItemAtPath(), v3, v4))
  {
    result = *(&v7 + 1);
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1B7C73368(uint64_t a1, unint64_t a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFE420();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v26) = 0;
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_1B7CFEA30();
  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v26];

  if (!v11 || (v26 & 1) != 0)
  {
    goto LABEL_8;
  }

  HIDWORD(v25) = 0;
  v12 = objc_opt_self();
  v13 = sub_1B7CFEA30();
  v14 = [v12 purgableFlagsForPath:v13 error:&v25 + 4];

  if (!HIDWORD(v25))
  {
    result = v14;
    goto LABEL_9;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1B7CFF210();

  v26 = 0xD000000000000012;
  v27 = 0x80000001B7D51090;
  sub_1B7C731F8();
  v15 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](v15);

  sub_1B7CFE410();

  v16 = sub_1B7CFE400();
  v17 = sub_1B7CFEEF0();

  if (!os_log_type_enabled(v16, v17))
  {
LABEL_7:

    (*(v5 + 8))(v8, v4);
LABEL_8:
    result = 0;
LABEL_9:
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v28[0] = v19;
  *v18 = 136315394;
  *(v18 + 4) = sub_1B7AED1B8(a1, a2, v28);
  *(v18 + 12) = 2080;
  swift_beginAccess();
  result = strerror(SHIDWORD(v25));
  if (result)
  {
    v21 = sub_1B7CFEB70();
    v23 = sub_1B7AED1B8(v21, v22, v28);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1B7AD5000, v16, v17, "Unable to get purgeable flags for %s: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB0E70](v19, -1, -1);
    MEMORY[0x1B8CB0E70](v18, -1, -1);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C736D8()
{
  v8 = *MEMORY[0x1E69E9840];
  LOBYTE(v7) = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B7CFEA30();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v7];

  if (v2 && (v7 = *MEMORY[0x1E69A6F48], v3 = sub_1B7CFEA30(), v4 = IMFileSizeForItemAtPath(), v3, v4))
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C737FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C73844()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000026, 0x80000001B7D55C80);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);
}

uint64_t sub_1B7C73950()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  strcpy(v2, "INSERT INTO ");
  BYTE5(v2[1]) = 0;
  HIWORD(v2[1]) = -5120;
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D55C60);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(v2[0], v2[1], 0);
}

uint64_t sub_1B7C73A90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {

    MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xEC0000006E6F6974;
  v11 = 0x6163696669726576;
  if (a5 > 2u)
  {

    goto LABEL_17;
  }

  v12 = sub_1B7CFF590();

  if (v12)
  {
LABEL_17:

    v14 = a1;
    v13 = a2;
    goto LABEL_18;
  }

  if (a5)
  {
    if (a5 == 1)
    {
      v11 = 0x64656E616870726FLL;
    }

    else
    {
      v11 = 0x7974696C697475;
    }

    if (a5 == 1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }
  }

  MEMORY[0x1B8CADCA0](v11, v10);

  v14 = 95;
  v13 = 0xE100000000000000;
LABEL_18:
  if (sub_1B7CFEBF0())
  {
  }

  else
  {
    MEMORY[0x1B8CADCA0](a1, a2);
    MEMORY[0x1B8CADCA0](v14, v13);

    return v9;
  }

  return a1;
}

uint64_t sub_1B7C73C9C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7C73CE4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B7C73D2C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B7C73D84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6163696669726576;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x7974696C697475;
    }

    else
    {
      v5 = 1919251317;
    }

    if (v4 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64656E616870726FLL;
    }

    else
    {
      v5 = 0x6163696669726576;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC0000006E6F6974;
    }
  }

  v7 = 0xE700000000000000;
  v8 = 0x7974696C697475;
  if (a2 != 2)
  {
    v8 = 1919251317;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x64656E616870726FLL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B7CFF590();
  }

  return v11 & 1;
}

uint64_t sub_1B7C73EBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E656C626174;
  v4 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v7 = 0x64656E616870726FLL;
      v8 = 0xED0000746E756F43;
    }

    else
    {
      if (a1 == 4)
      {
        v7 = 0xD00000000000001CLL;
      }

      else
      {
        v7 = 0xD000000000000012;
      }

      if (v4 == 4)
      {
        v8 = 0x80000001B7D4E310;
      }

      else
      {
        v8 = 0x80000001B7D4E330;
      }
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x746E756F43776F72;
    if (a1 != 1)
    {
      v6 = 0x6465746E65726170;
      v5 = 0xED0000746E756F43;
    }

    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x6D614E656C626174;
    }

    if (v4)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0xE900000000000065;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = 0x6E616870726FLL;
      goto LABEL_34;
    }

    if (a2 == 4)
    {
      v3 = 0xD00000000000001CLL;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (a2 == 4)
    {
      v2 = 0x80000001B7D4E310;
    }

    else
    {
      v2 = 0x80000001B7D4E330;
    }

LABEL_30:
    if (v7 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v2 = 0xE800000000000000;
    if (v7 != 0x746E756F43776F72)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v9 = 0x746E65726170;
LABEL_34:
  v2 = 0xED0000746E756F43;
  if (v7 != (v9 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
  {
LABEL_37:
    v10 = sub_1B7CFF590();
    goto LABEL_38;
  }

LABEL_35:
  if (v8 != v2)
  {
    goto LABEL_37;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_1B7C740BC()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);
}

uint64_t sub_1B7C741A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  MEMORY[0x1B8CADCA0](95, 0xE100000000000000);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v3 = sub_1B7CFEA10();
  MEMORY[0x1B8CADCA0](v3);

  MEMORY[0x1B8CADCA0](0x7865646E695FLL, 0xE600000000000000);
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](v1, v2);
  MEMORY[0x1B8CADCA0](542002976, 0xE400000000000000);
  MEMORY[0x1B8CADCA0](v1, v2);
  MEMORY[0x1B8CADCA0](40, 0xE100000000000000);
  v4 = sub_1B7CFEA10();
  MEMORY[0x1B8CADCA0](v4);

  MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
  SqlOperation.execute(_:_:)(0xD00000000000001BLL, 0x80000001B7D55D40, 0);
  if (v12)
  {
  }

  else
  {

    swift_beginAccess();
    v5 = *(v11 + 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 56) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1B7AF182C(0, *(v5 + 2) + 1, 1, v5);
      *(v11 + 56) = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_1B7AF182C((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = v1;
    *(v9 + 5) = v2;
    *(v11 + 56) = v5;
    swift_endAccess();
  }

  return v1;
}

uint64_t sub_1B7C74460(uint64_t a1)
{
  result = sub_1B7C74690(a1);
  if (!v2)
  {
    if (*(result + 16))
    {
      v4 = result;
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      strcpy(v10, "DELETE FROM ");
      BYTE5(v10[1]) = 0;
      HIWORD(v10[1]) = -5120;
      MEMORY[0x1B8CADCA0](*(v1 + 16), *(v1 + 24));
      MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D55D20);
      sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v4 + 16));
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v5 = sub_1B7CFEA10();
      v7 = v6;

      MEMORY[0x1B8CADCA0](v5, v7);

      MEMORY[0x1B8CADCA0](2112297, 0xE300000000000000);
      v8 = v10[0];
      v9 = v10[1];
      *(swift_allocObject() + 16) = v4;

      SqlOperation.execute(_:_:)(v8, v9, sub_1B7C755B0);

      return v4;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B7C74690(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D55D20);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v4 = sub_1B7CFEA10();
  v6 = v5;

  MEMORY[0x1B8CADCA0](v4, v6);

  MEMORY[0x1B8CADCA0](2112297, 0xE300000000000000);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;

  v8 = sub_1B7CD7370(0xD000000000000012, 0x80000001B7D51810, sub_1B7C75598, v7);

  if (!v2)
  {
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (!*(v8 + 16))
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v8;
}

uint64_t sub_1B7C74894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B7C74AEC(a1, a2, a3);
  if (!v4)
  {
    if (*(result + 16))
    {
      v8 = result;
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      strcpy(v14, "DELETE FROM ");
      BYTE5(v14[1]) = 0;
      HIWORD(v14[1]) = -5120;
      MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
      MEMORY[0x1B8CADCA0](0x20455245485720, 0xE700000000000000);
      MEMORY[0x1B8CADCA0](a2, a3);
      MEMORY[0x1B8CADCA0](0x28204E4920, 0xE500000000000000);
      sub_1B7AF7F10(0x3F, 0xE100000000000000, *(v8 + 16));
      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v9 = sub_1B7CFEA10();
      v11 = v10;

      MEMORY[0x1B8CADCA0](v9, v11);

      MEMORY[0x1B8CADCA0](15145, 0xE200000000000000);
      v12 = v14[0];
      v13 = v14[1];
      *(swift_allocObject() + 16) = v8;

      SqlOperation.execute(_:_:)(v12, v13, sub_1B7C75520);

      return v8;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B7C74AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](a2, a3);
  MEMORY[0x1B8CADCA0](0x204D4F524620, 0xE600000000000000);
  MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
  MEMORY[0x1B8CADCA0](0x20455245485720, 0xE700000000000000);
  MEMORY[0x1B8CADCA0](a2, a3);
  MEMORY[0x1B8CADCA0](0x28204E4920, 0xE500000000000000);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v8 = sub_1B7CFEA10();
  v10 = v9;

  MEMORY[0x1B8CADCA0](v8, v10);

  MEMORY[0x1B8CADCA0](2112297, 0xE300000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;

  v12 = sub_1B7CD7370(0x205443454C4553, 0xE700000000000000, sub_1B7C75508, v11);

  if (!v4)
  {
    if (!v12)
    {
      return MEMORY[0x1E69E7CC0];
    }

    if (!*(v12 + 16))
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v12;
}

uint64_t sub_1B7C74D3C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 56) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = qword_1EBA515F8;

  if (v5 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  MEMORY[0x1B8CADDF0](v6);
  if (*((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();
  return v4;
}

uint64_t sub_1B7C74E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  if (qword_1EBA515F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  MEMORY[0x1B8CADDF0](v6);
  if (*((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B7CFED00();
  }

  sub_1B7CFED40();
  swift_endAccess();
  return v5;
}

uint64_t sub_1B7C74F70()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

uint64_t sub_1B7C75034()
{
  *v0;
  *v0;
  *v0;
  sub_1B7CFEB10();
}

uint64_t sub_1B7C750E4()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  sub_1B7CFEB10();

  return sub_1B7CFF800();
}

uint64_t sub_1B7C751A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B7C754BC();
  *a2 = result;
  return result;
}

void sub_1B7C751D4(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x6163696669726576;
  v4 = 0xE700000000000000;
  v5 = 0x7974696C697475;
  if (*v1 != 2)
  {
    v5 = 1919251317;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x64656E616870726FLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1B7C75258()
{
  result = qword_1EBA52DB8;
  if (!qword_1EBA52DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52DB8);
  }

  return result;
}

uint64_t sub_1B7C752AC()
{
  if (qword_1EBA515F8 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    v0 = qword_1EBA52DB0;
    v1 = qword_1EBA52DB0 >> 62 ? sub_1B7CFF120() : *((qword_1EBA52DB0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v1)
    {
    }

    v2 = 0;
    while ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1B8CAE380](v2, v0);
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_17;
      }

LABEL_10:
      if (qword_1EBA515F0 != -1)
      {
        swift_once();
      }

      sub_1B7CFF210();

      MEMORY[0x1B8CADCA0](*(v3 + 16), *(v3 + 24));
      MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
      SqlOperation.execute(_:_:)(0xD000000000000015, 0x80000001B7D54D80, 0);

      ++v2;
      if (v4 == v1)
      {
      }
    }

    if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v3 = *(v0 + 8 * v2 + 32);

    v4 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }
}

uint64_t sub_1B7C754BC()
{
  v0 = sub_1B7CFF3B0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

void sub_1B7C7554C(sqlite3_int64 *a1@<X8>)
{
  SqlOperation.bind(_:)(v1[2]);
  if (!v3)
  {
    *a1 = _s14IMDPersistence12SqlOperationC7uint64s14forColumnIndexSays6UInt64VGSi_tF_0();
  }
}

id StorageInspectorReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B7C75764(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_1B7C757D4(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1B7C75824(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1B7C758D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B7C487D8(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  swift_beginAccess();
  sub_1B7C4FB78(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1B7C75998@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  swift_beginAccess();
  return sub_1B7C487D8(v1 + v3, a1);
}

uint64_t sub_1B7C759F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  swift_beginAccess();
  sub_1B7C4FB78(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B7C75B18()
{
  swift_getObjectType();
  v7 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](663610, 0xE300000000000000);
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v1 = (inited + 16);
  *(inited + 24) = 0;
  StorageInspectorReport.formatReport(with:)(inited);
  swift_beginAccess();
  v6 = *v1;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();
  v4 = v3;

  MEMORY[0x1B8CADCA0](v2, v4);

  return v7;
}

uint64_t sub_1B7C75C18()
{
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v1 = inited + 16;
  *(inited + 24) = 0;
  StorageInspectorReport.formatReport(with:)(inited);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1B7C75C7C()
{
  type metadata accessor for StorageInspectorReportStringBuilder();
  inited = swift_initStackObject();
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v1 = (inited + 16);
  *(inited + 24) = 0;
  StorageInspectorReport.formatReport(with:)(inited);
  swift_beginAccess();
  v4 = *v1;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();

  return v2;
}

id StorageInspectorReport.init()()
{
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport] = 0;
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport] = 0;
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport] = 0;
  *&v0[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport] = 0;
  v1 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  v2 = sub_1B7CFDFF0();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for StorageInspectorReport();
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_1B7C75EAC()
{
  v1 = *v0;
  v2 = 0xD000000000000023;
  v3 = 0xD000000000000012;
  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000020;
  if (!*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    result = v4;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1B7C75F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C77998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C75F70(uint64_t a1)
{
  v2 = sub_1B7C76EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C75FAC(uint64_t a1)
{
  v2 = sub_1B7C76EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StorageInspectorReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorageInspectorReport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B7C7609C(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_1B7C107FC(&qword_1EBA52DE0, &qword_1B7D0F0D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C76EB8();
  sub_1B7CFF830();
  v15 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
  swift_beginAccess();
  v25 = *(v3 + v15);
  LOBYTE(v24) = 0;
  type metadata accessor for DatabaseInspectionReport();
  sub_1B7C77334(&qword_1EBA52DF0, type metadata accessor for DatabaseInspectionReport);
  sub_1B7CFF4C0();
  if (!v2)
  {
    v16 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
    swift_beginAccess();
    v24 = *(v3 + v16);
    LOBYTE(v23) = 1;
    type metadata accessor for AttachmentStorageInspectorReport();
    sub_1B7C77334(&qword_1EBA52DF8, type metadata accessor for AttachmentStorageInspectorReport);
    sub_1B7CFF4C0();
    v17 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
    swift_beginAccess();
    v23 = *(v3 + v17);
    LOBYTE(v22) = 2;
    type metadata accessor for ExportableDatabaseRecordCountReport();
    sub_1B7C77334(&qword_1EBA52E00, type metadata accessor for ExportableDatabaseRecordCountReport);
    sub_1B7CFF4C0();
    v18 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
    swift_beginAccess();
    v22 = *(v3 + v18);
    v26 = 3;
    type metadata accessor for StorageInspectorCrossCheckReport();
    sub_1B7C77334(&qword_1EBA52E08, type metadata accessor for StorageInspectorCrossCheckReport);
    sub_1B7CFF4C0();
    v19 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
    swift_beginAccess();
    sub_1B7C487D8(v3 + v19, v8);
    v26 = 4;
    sub_1B7CFDFF0();
    sub_1B7C77334(&qword_1EBA52AB8, MEMORY[0x1E6968FB0]);
    sub_1B7CFF4C0();
    sub_1B7C4FB10(v8);
  }

  return (*(v10 + 8))(v13, v9);
}

char *StorageInspectorReport.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - v7;
  v48 = sub_1B7C107FC(&qword_1EBA52E10, &qword_1B7D0F0D8);
  v47 = *(v48 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v45 - v10;
  v61 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_databaseInspectionReport] = 0;
  v51 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_attachmentStorageInspectorReport] = 0;
  v50 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_exportableDatabaseRecordCountReport] = 0;
  v53 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport;
  *&v1[OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_crossCheckReport] = 0;
  v12 = OBJC_IVAR____TtC14IMDPersistence22StorageInspectorReport_reportDirectoryURL;
  v13 = sub_1B7CFDFF0();
  v14 = *(*(v13 - 8) + 56);
  v54 = v12;
  v14(&v3[v12], 1, 1, v13);
  v16 = a1[3];
  v15 = a1[4];
  v52 = a1;
  sub_1B7AE9124(a1, v16);
  sub_1B7C76EB8();
  v49 = v11;
  sub_1B7CFF820();
  if (v2)
  {
    v19 = v53;
    v20 = v50;
    v21 = v51;
    sub_1B7AE9168(v52);
    v22 = *&v3[v61];

    v23 = *&v3[v21];

    v24 = *&v3[v20];

    v25 = *&v3[v19];

    sub_1B7C4FB10(&v3[v54]);
    type metadata accessor for StorageInspectorReport();
    v26 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v27 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v45 = v13;
    v46 = v8;
    v17 = v47;
    type metadata accessor for DatabaseInspectionReport();
    v60 = 0;
    sub_1B7C77334(&qword_1EBA52E18, type metadata accessor for DatabaseInspectionReport);
    v18 = v48;
    sub_1B7CFF400();
    v29 = v59;
    v30 = v61;
    swift_beginAccess();
    v31 = *&v3[v30];
    *&v3[v30] = v29;

    type metadata accessor for AttachmentStorageInspectorReport();
    LOBYTE(v59) = 1;
    sub_1B7C77334(&qword_1EBA52E20, type metadata accessor for AttachmentStorageInspectorReport);
    sub_1B7CFF400();
    v32 = v17;
    v33 = v50;
    v34 = v58;
    v35 = v51;
    swift_beginAccess();
    v36 = *&v3[v35];
    *&v3[v35] = v34;

    type metadata accessor for ExportableDatabaseRecordCountReport();
    LOBYTE(v58) = 2;
    sub_1B7C77334(&qword_1EBA52E28, type metadata accessor for ExportableDatabaseRecordCountReport);
    sub_1B7CFF400();
    v37 = v53;
    v38 = v57;
    swift_beginAccess();
    v39 = *&v3[v33];
    *&v3[v33] = v38;

    type metadata accessor for StorageInspectorCrossCheckReport();
    LOBYTE(v57) = 3;
    sub_1B7C77334(&qword_1EBA52E30, type metadata accessor for StorageInspectorCrossCheckReport);
    sub_1B7CFF400();
    v40 = v56;
    swift_beginAccess();
    v41 = *&v3[v37];
    *&v3[v37] = v40;

    LOBYTE(v56) = 4;
    sub_1B7C77334(&qword_1EBA52A78, MEMORY[0x1E6968FB0]);
    v42 = v46;
    sub_1B7CFF400();
    v43 = v54;
    swift_beginAccess();
    sub_1B7C4FB78(v42, &v3[v43]);
    swift_endAccess();
    v44 = type metadata accessor for StorageInspectorReport();
    v55.receiver = v3;
    v55.super_class = v44;
    v3 = objc_msgSendSuper2(&v55, sel_init);
    (*(v32 + 8))(v49, v18);
    sub_1B7AE9168(v52);
  }

  return v3;
}