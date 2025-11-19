uint64_t getEnumTagSinglePayload for SqlOperation.RowIterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for SqlOperation.RowIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7C1F044()
{
  result = qword_1EBA52078;
  if (!qword_1EBA52078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52078);
  }

  return result;
}

uint64_t sub_1B7C1F098()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000031, 0x80000001B7D513C0);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);
}

uint64_t sub_1B7C1F1A4()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD000000000000027, 0x80000001B7D51370);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0);
}

uint64_t sub_1B7C1F2C4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C1F330()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA5DAC8);
  sub_1B7AD9040(v0, qword_1EBA5DAC8);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t sub_1B7C1F39C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B7C20504(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B7C1F454(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B7C20518(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1B7C1F50C(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFDF40();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1B7CFDFF0();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1B7CFDEC0();

    swift_willThrow();
    v9 = sub_1B7CFDFF0();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B7C1F664(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B7CFE030();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v11 = *(a2 + 16);
  }

  sub_1B7C1A208(a2, a3);
  sub_1B7CFE040();
  v12 = *(a1 + 16);
  sub_1B7C20A58(&qword_1EBA52090, MEMORY[0x1E6969050]);
  sub_1B7CFF040();
  if (v12)
  {
    v13 = (a1 + 32);
    while (1)
    {
      v14 = 0;
      if (v18)
      {
        break;
      }

      v15 = *v13++;
      if (v17[14] != v15)
      {
        break;
      }

      sub_1B7CFF040();
      if (!--v12)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v14 = v18;
  }

  (*(v7 + 8))(v10, v6);
  return v14;
}

uint64_t sub_1B7C1F8F0(uint64_t a1)
{
  v2 = v1;
  v91[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v91[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7CFDF40();
  LODWORD(v2) = [v2 imagePreviewIsMultiFrameAtFileURL_];

  if (!v2)
  {
    goto LABEL_57;
  }

  sub_1B7C203E8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_1B7C1F50C(v8);
  v11 = sub_1B7CFEE90();
  v27 = v12;
  if (v12 >> 60 == 15)
  {
    if (qword_1EBA51598 != -1)
    {
      swift_once();
    }

    v28 = sub_1B7CFE420();
    sub_1B7AD9040(v28, qword_1EBA5DAC8);
    v29 = sub_1B7CFE400();
    v30 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B7AD5000, v29, v30, "Failed to read frame length", v31, 2u);
      MEMORY[0x1B8CB0E70](v31, -1, -1);
    }

    goto LABEL_56;
  }

  v32 = v12 >> 62;
  v33 = v11;
  if ((v12 >> 62) > 1)
  {
    if (v32 != 2)
    {
      goto LABEL_29;
    }

    v36 = *(v11 + 16);
    v35 = *(v11 + 24);
    v37 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (!v37)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v32)
  {
    v34 = BYTE6(v12);
    goto LABEL_22;
  }

  LODWORD(v34) = HIDWORD(v11) - v11;
  if (__OFSUB__(HIDWORD(v11), v11))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v34 = v34;
LABEL_22:
  if (v34 != 8)
  {
LABEL_29:
    if (qword_1EBA51598 != -1)
    {
      swift_once();
    }

    v44 = sub_1B7CFE420();
    sub_1B7AD9040(v44, qword_1EBA5DAC8);
    sub_1B7C1A208(v33, v27);
    v29 = sub_1B7CFE400();
    v45 = sub_1B7CFEEF0();
    if (!os_log_type_enabled(v29, v45))
    {
      sub_1B7C2049C(v33, v27);
      goto LABEL_55;
    }

    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v48 = *(v33 + 16);
        v47 = *(v33 + 24);
        v37 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (v37)
        {
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        v46 = 0;
      }
    }

    else if (v32)
    {
      LODWORD(v46) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
LABEL_94:
        __break(1u);
LABEL_95:
        swift_once();
LABEL_48:
        v56 = sub_1B7CFE420();
        sub_1B7AD9040(v56, qword_1EBA5DAC8);
        v29 = sub_1B7CFE400();
        v57 = sub_1B7CFEEF0();
        if (os_log_type_enabled(v29, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = "Failed to read first frame";
          v60 = v57;
          v61 = v29;
          v62 = v58;
          v63 = 2;
LABEL_54:
          _os_log_impl(&dword_1B7AD5000, v61, v60, v59, v62, v63);
          MEMORY[0x1B8CB0E70](v58, -1, -1);
        }

LABEL_55:
        sub_1B7C2049C(v33, v27);
LABEL_56:

LABEL_57:
        result = 0;
LABEL_58:
        v64 = *MEMORY[0x1E69E9840];
        return result;
      }

      v46 = v46;
    }

    else
    {
      v46 = BYTE6(v27);
    }

    *(v11 + 4) = v46;
    v58 = v11;
    sub_1B7C2049C(v33, v27);
    v59 = "Failed to read frame length - data wrong length: %ld";
    v60 = v45;
    v61 = v29;
    v62 = v58;
    v63 = 12;
    goto LABEL_54;
  }

  v38 = v11;
  if (!v32)
  {
LABEL_45:
    if ((v38 & 0x8000000000000000) == 0)
    {
      v54 = sub_1B7CFEE90();
      if (v55 >> 60 == 15)
      {
        if (qword_1EBA51598 == -1)
        {
          goto LABEL_48;
        }

        goto LABEL_95;
      }

      v65 = v55 >> 62;
      if ((v55 >> 62) > 1)
      {
        if (v65 != 2)
        {
          if (!v38)
          {
            goto LABEL_69;
          }

LABEL_72:
          v72 = v54;
          v73 = v55;
          if (qword_1EBA51598 != -1)
          {
            swift_once();
          }

          v74 = sub_1B7CFE420();
          sub_1B7AD9040(v74, qword_1EBA5DAC8);
          sub_1B7C1A208(v72, v73);
          v29 = sub_1B7CFE400();
          v75 = sub_1B7CFEEF0();
          if (!os_log_type_enabled(v29, v75))
          {
            sub_1B7C2049C(v72, v73);
            sub_1B7C2049C(v72, v73);
            goto LABEL_55;
          }

          v76 = swift_slowAlloc();
          *v76 = 134217984;
          if (v65 > 1)
          {
            v77 = v73;
            if (v65 == 2)
            {
              v87 = v72[2];
              v86 = v72[3];
              v37 = __OFSUB__(v86, v87);
              v78 = v86 - v87;
              if (v37)
              {
                __break(1u);
                swift_once();
                v13 = sub_1B7CFE420();
                sub_1B7AD9040(v13, qword_1EBA5DAC8);
                v14 = v72;
                v15 = sub_1B7CFE400();
                v16 = sub_1B7CFEEF0();

                if (os_log_type_enabled(v15, v16))
                {
                  v17 = swift_slowAlloc();
                  v18 = swift_slowAlloc();
                  *v17 = 138412290;
                  v19 = v72;
                  v20 = _swift_stdlib_bridgeErrorToNSError();
                  *(v17 + 4) = v20;
                  *v18 = v20;
                  _os_log_impl(&dword_1B7AD5000, v15, v16, "Failed to copy first frame: %@", v17, 0xCu);
                  sub_1B7C20434(v18);
                  MEMORY[0x1B8CB0E70](v18, -1, -1);
                  MEMORY[0x1B8CB0E70](v17, -1, -1);
                }

                v21 = [objc_opt_self() defaultManager];
                v22 = sub_1B7CFDF40();
                v91[0] = 0;
                v23 = [v21 removeItemAtURL:v22 error:v91];

                if (v23)
                {
                  v24 = v91[0];
                }

                else
                {
                  v25 = v91[0];
                  v26 = sub_1B7CFDEC0();

                  swift_willThrow();
                }

                goto LABEL_57;
              }
            }

            else
            {
              v78 = 0;
            }

            goto LABEL_88;
          }

          v77 = v73;
          if (!v65)
          {
            v78 = BYTE6(v73);
LABEL_88:
            *(v76 + 4) = v78;
            v88 = v72;
            v89 = v76;
            sub_1B7C2049C(v88, v77);
            _os_log_impl(&dword_1B7AD5000, v29, v75, "Failed to read first frame- data wrong length: %ld", v89, 0xCu);
            MEMORY[0x1B8CB0E70](v89, -1, -1);
            sub_1B7C2049C(v88, v77);
            goto LABEL_55;
          }

          LODWORD(v78) = HIDWORD(v72) - v72;
          if (!__OFSUB__(HIDWORD(v72), v72))
          {
            v78 = v78;
            goto LABEL_88;
          }

          goto LABEL_97;
        }

        v68 = *(v54 + 16);
        v67 = *(v54 + 24);
        v37 = __OFSUB__(v67, v68);
        v66 = v67 - v68;
        if (!v37)
        {
LABEL_68:
          if (v66 == v38)
          {
LABEL_69:
            v69 = v54;
            v70 = v55;
            v91[0] = 0;
            if ([v10 closeAndReturnError_])
            {
              v71 = v91[0];
            }

            else
            {
              v79 = v91[0];
              v80 = sub_1B7CFDEC0();

              swift_willThrow();
            }

            v81 = [objc_opt_self() defaultManager];
            sub_1B7CFDFD0();
            v82 = sub_1B7CFEA30();

            v83 = v69;
            v84 = sub_1B7CFE010();
            v85 = [v81 createFileAtPath:v82 contents:v84 attributes:0];

            sub_1B7C2049C(v83, v70);
            sub_1B7C2049C(v33, v27);

            result = v85;
            goto LABEL_58;
          }

          goto LABEL_72;
        }

        __break(1u);
      }

      else if (!v65)
      {
        v66 = BYTE6(v55);
        goto LABEL_68;
      }

      LODWORD(v66) = HIDWORD(v54) - v54;
      if (__OFSUB__(HIDWORD(v54), v54))
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v66 = v66;
      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_90;
  }

  if (v32 == 2)
  {
    v39 = *(v11 + 16);
    v40 = sub_1B7CFDC90();
    if (!v40)
    {
LABEL_98:
      sub_1B7CFDCA0();
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v41 = v40;
    v42 = sub_1B7CFDCB0();
    if (__OFSUB__(v39, v42))
    {
      goto LABEL_92;
    }

    v43 = (v39 - v42 + v41);
    sub_1B7CFDCA0();
    if (!v43)
    {
      goto LABEL_99;
    }

LABEL_44:
    v38 = *v43;
    goto LABEL_45;
  }

LABEL_40:
  v49 = v11;
  if (v11 > v11 >> 32)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v50 = sub_1B7CFDC90();
  if (!v50)
  {
LABEL_100:
    result = sub_1B7CFDCA0();
    __break(1u);
    goto LABEL_101;
  }

  v51 = v50;
  v52 = sub_1B7CFDCB0();
  if (__OFSUB__(v49, v52))
  {
    goto LABEL_93;
  }

  v43 = (v49 - v52 + v51);
  result = sub_1B7CFDCA0();
  if (v43)
  {
    goto LABEL_44;
  }

LABEL_101:
  __break(1u);
  return result;
}

unint64_t sub_1B7C203E8()
{
  result = qword_1EBA52080;
  if (!qword_1EBA52080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52080);
  }

  return result;
}

uint64_t sub_1B7C20434(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA521E0, &unk_1B7D0CE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C2049C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7C204B0(a1, a2);
  }

  return a1;
}

uint64_t sub_1B7C204B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B7C2052C(uint64_t a1)
{
  v2 = sub_1B7CFDFF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = sub_1B7C1F39C(&unk_1F2FA18B8);
  if (qword_1EBA51598 != -1)
  {
    swift_once();
  }

  v11 = sub_1B7CFE420();
  v12 = sub_1B7AD9040(v11, qword_1EBA5DAC8);
  v42 = *(v3 + 16);
  v42(v9, a1, v2);
  v41 = v12;
  v13 = sub_1B7CFE400();
  v14 = sub_1B7CFEED0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v10;
    v16 = v15;
    v38 = swift_slowAlloc();
    v39 = a1;
    v43 = v38;
    *v16 = 136315138;
    sub_1B7C20A58(&qword_1EBA52088, MEMORY[0x1E6968FB0]);
    v17 = sub_1B7CFF570();
    v18 = v7;
    v20 = v19;
    (*(v3 + 8))(v9, v2);
    v21 = sub_1B7AED1B8(v17, v20, &v43);
    v7 = v18;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1B7AD5000, v13, v14, "Opening source file: %s", v16, 0xCu);
    v22 = v38;
    sub_1B7AE9168(v38);
    v23 = v22;
    a1 = v39;
    MEMORY[0x1B8CB0E70](v23, -1, -1);
    v24 = v16;
    v10 = v40;
    MEMORY[0x1B8CB0E70](v24, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  sub_1B7C203E8();
  v42(v7, a1, v2);
  v25 = sub_1B7C1F50C(v7);
  result = sub_1B7CFEEA0();
  if (result < 4)
  {
    v28 = result;

    v29 = sub_1B7CFE400();
    v30 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v28;
      _os_log_impl(&dword_1B7AD5000, v29, v30, "File too small: %llu", v31, 0xCu);
      MEMORY[0x1B8CB0E70](v31, -1, -1);
    }

    v27 = 0;
    return v27 & 1;
  }

  v32 = *(v10 + 16);
  if (result >= v32)
  {
    [v25 seekToFileOffset_];
    v33 = [v25 readDataOfLength_];
    v34 = sub_1B7CFE020();
    v36 = v35;

    [v25 closeFile];
    v27 = sub_1B7C1F664(v10, v34, v36);
    sub_1B7C204B0(v34, v36);

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C20A58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C20AA0()
{
  v1 = *(v0 + 80);
  v2 = (*(*(v0 + 88) + 8))();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 0xE700000000000000;
      v4 = 0x52454745544E49;
    }

    else
    {
      v3 = 0xE400000000000000;
      v4 = 1280070990;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    if (v2 == 2)
    {
      v4 = 1279346002;
    }

    else if (v2 == 3)
    {
      v4 = 1415071060;
    }

    else
    {
      v4 = 1112493122;
    }
  }

  MEMORY[0x1B8CADCA0](v4, v3);

  if (*(v0 + 32))
  {
    v5 = 0x455551494E5520;
  }

  else
  {
    v5 = 0;
  }

  if (*(v0 + 32))
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x1B8CADCA0](v5, v6);

  v7 = sub_1B7C20BEC();
  MEMORY[0x1B8CADCA0](v7);

  v8 = sub_1B7C20DE8();
  MEMORY[0x1B8CADCA0](v8);

  return 0;
}

uint64_t sub_1B7C20BEC()
{
  sub_1B7C21820(v0 + 96, &v5);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
    if (swift_dynamicCast())
    {
      v5 = 0x544C554146454420;
      v6 = 0xE900000000000020;
LABEL_8:
      v1 = sub_1B7CFF570();
      MEMORY[0x1B8CADCA0](v1);
LABEL_16:

      return v5;
    }
  }

  else
  {
    sub_1B7C1A0C8(&v5);
  }

  sub_1B7C21820(v0 + 96, &v5);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
    if (swift_dynamicCast())
    {
      v5 = 0x544C554146454420;
      v6 = 0xE900000000000020;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1B7C1A0C8(&v5);
  }

  sub_1B7C21820(v0 + 96, &v5);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
    if (swift_dynamicCast())
    {
      v5 = 0x544C554146454420;
      v6 = 0xE900000000000020;
      if (v4)
      {
        v2 = 49;
      }

      else
      {
        v2 = 48;
      }

      MEMORY[0x1B8CADCA0](v2, 0xE100000000000000);
      goto LABEL_16;
    }
  }

  else
  {
    sub_1B7C1A0C8(&v5);
  }

  if (*(v0 + 33))
  {
    result = 0;
  }

  else
  {
    result = 0x4C554E20544F4E20;
  }

  *(v0 + 33);
  return result;
}

uint64_t sub_1B7C20DE8()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 72);
  v3 = v2 >> 8;
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  strcpy(v29, " ON DELETE ");
  HIDWORD(v29[1]) = -352321536;
  v7 = 0xE800000000000000;
  v8 = 0x4C4C554E20544553;
  v9 = 0x4146454420544553;
  v10 = 0xEB00000000544C55;
  if (v2 >> 8 != 3)
  {
    v9 = 0x45444143534143;
    v10 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  v11 = 0xE800000000000000;
  v12 = 0x5443495254534552;
  if (!v3)
  {
    v12 = 0x4F49544341204F4ELL;
    v11 = 0xE90000000000004ELL;
  }

  if (v2 >> 8 <= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v2 >> 8 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1B8CADCA0](v13, v14);

  v15 = v2;
  v17 = v29[0];
  v16 = v29[1];
  strcpy(v29, " ON UPDATE ");
  HIDWORD(v29[1]) = -352321536;
  v18 = 0xE800000000000000;
  v19 = 0x4C4C554E20544553;
  v20 = 0x4146454420544553;
  v21 = 0xEB00000000544C55;
  if (v15 != 3)
  {
    v20 = 0x45444143534143;
    v21 = 0xE700000000000000;
  }

  if (v15 != 2)
  {
    v19 = v20;
    v18 = v21;
  }

  v22 = 0xE800000000000000;
  v23 = 0x5443495254534552;
  if (!v15)
  {
    v23 = 0x4F49544341204F4ELL;
    v22 = 0xE90000000000004ELL;
  }

  if (v15 <= 1)
  {
    v24 = v23;
  }

  else
  {
    v24 = v19;
  }

  if (v15 <= 1)
  {
    v25 = v22;
  }

  else
  {
    v25 = v18;
  }

  MEMORY[0x1B8CADCA0](v24, v25);

  v27 = v29[0];
  v26 = v29[1];
  sub_1B7CFF210();

  strcpy(v29, " REFERENCES ");
  BYTE5(v29[1]) = 0;
  HIWORD(v29[1]) = -5120;
  MEMORY[0x1B8CADCA0](v4, v1);
  MEMORY[0x1B8CADCA0](40, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v5, v6);
  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v27, v26);

  MEMORY[0x1B8CADCA0](v17, v16);

  return v29[0];
}

uint64_t sub_1B7C21090(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v2, 0);
    v4 = v1 + 32;
    v3 = v56;
    do
    {
      v5 = v3;
      sub_1B7AEBEFC(v4, &v50);
      v47 = v52;
      v49 = v53;

      MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
      v6 = (*(v55 + 8))();
      if (v6 <= 1)
      {
        if (v6)
        {
          v7 = 0xE700000000000000;
          v8 = 0x52454745544E49;
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1280070990;
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        if (v6 == 2)
        {
          v8 = 1279346002;
        }

        else if (v6 == 3)
        {
          v8 = 1415071060;
        }

        else
        {
          v8 = 1112493122;
        }
      }

      MEMORY[0x1B8CADCA0](v8, v7);

      if (v54)
      {
        v9 = 0x455551494E5520;
      }

      else
      {
        v9 = 0;
      }

      if (v54)
      {
        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      MEMORY[0x1B8CADCA0](v9, v10);

      v11 = sub_1B7C20BEC();
      MEMORY[0x1B8CADCA0](v11);

      v12 = sub_1B7C20DE8();
      MEMORY[0x1B8CADCA0](v12);

      MEMORY[0x1B8CADCA0](0, 0xE000000000000000);

      sub_1B7AEBF70(&v50);
      v3 = v5;
      v56 = v5;
      v13 = *(v5 + 16);
      v14 = *(v3 + 24);
      if (v13 >= v14 >> 1)
      {
        sub_1B7AECEEC((v14 > 1), v13 + 1, 1);
        v3 = v56;
      }

      *(v3 + 16) = v13 + 1;
      v15 = v3 + 16 * v13;
      *(v15 + 32) = v47;
      *(v15 + 40) = v49;
      v4 += 136;
      --v2;
    }

    while (v2);
  }

  v16 = a1[5];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v41 = v3;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v17, 0);
    v19 = 0;
    result = v48;
    v43 = v16 + 32;
    v44 = v17;
    v45 = v16;
    while (v19 < *(v16 + 16))
    {
      v46 = result;
      v21 = *(v43 + 8 * v19);
      v50 = 0x2820455551494E55;
      v51 = 0xE800000000000000;
      v22 = *(v21 + 16);
      if (v22)
      {

        sub_1B7AECEEC(0, v22, 0);
        v23 = v18;
        v24 = (v21 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v28 = *(v23 + 16);
          v27 = *(v23 + 24);

          if (v28 >= v27 >> 1)
          {
            sub_1B7AECEEC((v27 > 1), v28 + 1, 1);
          }

          *(v23 + 16) = v28 + 1;
          v29 = v23 + 16 * v28;
          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
          v24 += 2;
          --v22;
        }

        while (v22);
        v18 = MEMORY[0x1E69E7CC0];
      }

      else
      {
      }

      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v30 = sub_1B7CFEA10();
      v32 = v31;

      MEMORY[0x1B8CADCA0](v30, v32);

      MEMORY[0x1B8CADCA0](41, 0xE100000000000000);

      v33 = v50;
      v34 = v51;
      result = v46;
      v36 = *(v46 + 16);
      v35 = *(v46 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B7AECEEC((v35 > 1), v36 + 1, 1);
        result = v46;
      }

      ++v19;
      *(result + 16) = v36 + 1;
      v37 = result + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v16 = v45;
      if (v19 == v44)
      {
        v3 = v41;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
LABEL_36:
    v50 = v3;
    sub_1B7C50BFC(result);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1B7CFF210();

    v50 = 0xD00000000000001BLL;
    v51 = 0x80000001B7D513A0;
    MEMORY[0x1B8CADCA0](a1[2], a1[3]);
    MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v38 = sub_1B7CFEA10();
    v40 = v39;

    MEMORY[0x1B8CADCA0](v38, v40);

    MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
    return v50;
  }

  return result;
}

uint64_t sub_1B7C215A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v6 = result;
  v7 = *(result + 32);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v3 = &v26;
    v10 = v7 + 32;
    while (v9 < *(v7 + 16))
    {
      sub_1B7AEBEFC(v10, v24);
      v11 = *&v24[0] == a2 && *(&v24[0] + 1) == a3;
      if (v11 || (sub_1B7CFF590() & 1) != 0)
      {
        goto LABEL_11;
      }

      ++v9;
      result = sub_1B7AEBF70(v24);
      v10 += 136;
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1B7CFF210();

    v26 = 0x79747265706F7250;
    v27 = 0xE900000000000020;
    MEMORY[0x1B8CADCA0](a2, a3);
    MEMORY[0x1B8CADCA0](0xD000000000000014, 0x80000001B7D51480);
    MEMORY[0x1B8CADCA0](*(v6 + 16), *(v6 + 24));
    sub_1B7CFF340();
    __break(1u);
LABEL_11:
    v12 = v24[7];
    *(v3 + 6) = v24[6];
    *(v3 + 7) = v12;
    v30 = v25;
    v13 = v24[3];
    *(v3 + 2) = v24[2];
    *(v3 + 3) = v13;
    v14 = v24[5];
    *(v3 + 4) = v24[4];
    *(v3 + 5) = v14;
    v15 = v24[1];
    *v3 = v24[0];
    *(v3 + 1) = v15;
    v16 = *(v6 + 16);
    v17 = *(v6 + 24);
    v18 = v28;
    v19 = v29;
    v20 = sub_1B7C20AA0();
    v22 = v21;
    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_1B7CFF210();

    strcpy(v24, "ALTER TABLE ");
    BYTE13(v24[0]) = 0;
    HIWORD(v24[0]) = -5120;
    MEMORY[0x1B8CADCA0](v16, v17);
    MEMORY[0x1B8CADCA0](0x4C4F432044444120, 0xEC000000204E4D55);
    MEMORY[0x1B8CADCA0](v18, v19);
    MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
    MEMORY[0x1B8CADCA0](v20, v22);

    v23 = *&v24[0];
    sub_1B7AEBF70(&v26);
    return v23;
  }

  return result;
}

uint64_t sub_1B7C21820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FD0, qword_1B7D11D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StorageInspectionReport.reportLines.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StorageInspectorReportStringBuilder();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v3 + 16);
  *(v3 + 24) = 0;
  (*(a2 + 8))();
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t StorageInspectionReport.report.getter(uint64_t a1, uint64_t a2)
{
  StorageInspectionReport.reportLines.getter(a1, a2);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v2 = sub_1B7CFEA10();

  return v2;
}

uint64_t sub_1B7C219E4(uint64_t a1, uint64_t a2)
{
  if (*(v3 + 3) + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v3;
    v14 = sub_1B7CFEC10();
    v15 = v8;
    MEMORY[0x1B8CADCA0](a1, a2);
    v4 = v14;
    v5 = v15;
    swift_beginAccess();
    v3 = *(v3 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 2) = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v3 = sub_1B7AF182C(0, *(v3 + 2) + 1, 1, v3);
  *(v2 + 2) = v3;
LABEL_3:
  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = sub_1B7AF182C((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = v4;
  *(v12 + 5) = v5;
  *(v2 + 2) = v3;
  return swift_endAccess();
}

uint64_t StorageInspectorReportStringBuilder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StorageInspectorReportStringBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1B7C21B78(uint64_t a1, uint64_t a2, void (*a3)(BOOL, void))
{
  sub_1B7AE3F68();

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v10 = MEMORY[0x1E69E6158];
  v17 = MEMORY[0x1E69E6158];
  v18 = &off_1F2FA8B58;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v6[2] = v9;
  sub_1B7AE910C(&v16, &v6[5 * v8 + 4]);
  v11 = v6[3];
  v12 = v8 + 2;

  if (v12 > (v11 >> 1))
  {
    v6 = sub_1B7AE3A9C((v11 > 1), v12, 1, v6);
  }

  v17 = v10;
  v18 = &off_1F2FA8B58;
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v6[2] = v12;
  sub_1B7AE910C(&v16, &v6[5 * v9 + 4]);
  v13 = sub_1B7AE3B2C(0xD0000000000000DALL, 0x80000001B7D51500, 0);
  *&v16 = v5;

  sub_1B7AF2C24(v6, v13, &v16, v13);

  v14 = *(v16 + 16);

  a3(v14 != 0, 0);
}

void sub_1B7C21F1C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B7CFDEB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1B7C21FA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7C21FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1B7C22058(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7C2206C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7C220B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C22108()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA50F10);
  sub_1B7AD9040(v0, qword_1EBA50F10);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

Swift::Void __swiftcall IMDPersistenceServiceListener.resume()()
{
  v1 = *(v0 + OBJC_IVAR___IMDPersistenceServiceListener_listener);
  [v1 setDelegate_];
  [v1 resume];
  v2 = [objc_opt_self() defaultCenter];
  [v2 addObserver:v0 selector:sel_serviceResetting_ name:@"IMDPersistenceServiceResettingNotification" object:0];
}

Swift::Void __swiftcall IMDPersistenceServiceListener.invalidate()()
{
  v1 = v0;
  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA50F10);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Invalidating listener", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR___IMDPersistenceServiceListener_listener);

  [v6 invalidate];
}

id sub_1B7C22370()
{
  v1 = v0;
  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA50F10);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Service is being reset", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  return [v1 invalidate];
}

void sub_1B7C22550(char *a1)
{
  v3 = *(v1 + OBJC_IVAR___IMDPersistenceServiceListener_state);
  os_unfair_lock_lock((v3 + 24));
  sub_1B7C22828((v3 + 16), a1, &v20);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v21;
  if (!v21)
  {
    return;
  }

  v5 = v20;
  v6 = v22;
  v7 = qword_1EBA50F00;

  if (v7 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v8 = sub_1B7CFE420();
    sub_1B7AD9040(v8, qword_1EBA50F10);

    v9 = a1;
    v10 = sub_1B7CFE400();
    v11 = sub_1B7CFEEE0();

    if (!os_log_type_enabled(v10, v11))
    {
      break;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134218242;
    *(v12 + 4) = *(v6 + 16);

    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_1B7AD5000, v10, v11, "Invoking %ld cleanup handler(s) for connection %@", v12, 0x16u);
    sub_1B7C20434(v13);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
    MEMORY[0x1B8CB0E70](v12, -1, -1);

    a1 = *(v6 + 16);
    if (!a1)
    {
      goto LABEL_12;
    }

LABEL_5:

    v15 = 0;
    v16 = (v6 + 40);
    while (v15 < *(v4 + 16))
    {
      if (v15 >= *(v6 + 16))
      {
        goto LABEL_16;
      }

      ++v15;
      v18 = *(v16 - 1);
      v17 = *v16;

      v18(v19);

      v16 += 2;
      if (a1 == v15)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  a1 = *(v6 + 16);
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_12:

  sub_1B7C255F0(v5, v4);
}

void sub_1B7C22828(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_1B7C402DC(a2);
  if (v7)
  {
    v8 = v6;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v16 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B7CE8BD0();
      v11 = v16;
    }

    v12 = *(v11 + 56) + 24 * v8;
    v13 = *v12;
    v15 = *(v12 + 8);
    sub_1B7CE70EC(v8, v11);
    v14 = v15;
    *a1 = v11;
  }

  else
  {
    v13 = 0;
    v14 = 0uLL;
  }

  *a3 = v13;
  *(a3 + 8) = v14;
}

void sub_1B7C22928(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = [a1 __imdp_persistenceServiceListener];
  if (!v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v13 = sub_1B7CFE420();
  sub_1B7AD9040(v13, qword_1EBA50F10);
  v14 = a1;

  v15 = sub_1B7CFE400();
  v16 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = a4;
    v19 = a2;
    v20 = swift_slowAlloc();
    v45 = a5;
    v46 = swift_slowAlloc();
    v21 = v6;
    v22 = v46;
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v20 = v14;
    *(v17 + 12) = 2080;
    v23 = v14;
    *(v17 + 14) = sub_1B7AED1B8(v19, a3, &v46);
    _os_log_impl(&dword_1B7AD5000, v15, v16, "Registering cleanup handler for connection %@ with ID %s", v17, 0x16u);
    sub_1B7C20434(v20);
    v24 = v20;
    a2 = v19;
    a4 = v18;
    MEMORY[0x1B8CB0E70](v24, -1, -1);
    sub_1B7AE9168(v22);
    v25 = v22;
    v6 = v21;
    a5 = v45;
    MEMORY[0x1B8CB0E70](v25, -1, -1);
    MEMORY[0x1B8CB0E70](v17, -1, -1);
  }

  v26 = *(v6 + OBJC_IVAR___IMDPersistenceServiceListener_state);
  os_unfair_lock_lock((v26 + 24));
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;

  v28 = *(v26 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v26 + 16);
  v30 = v46;
  *(v26 + 16) = 0x8000000000000000;
  v32 = sub_1B7C402DC(v14);
  v33 = *(v30 + 16);
  v34 = (v31 & 1) == 0;
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(a4) = v31;
  if (*(v30 + 24) >= v35)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

LABEL_17:
    sub_1B7CE8BD0();
    v30 = v46;
    goto LABEL_11;
  }

  sub_1B7CE4C18(v35, isUniquelyReferenced_nonNull_native);
  v30 = v46;
  v36 = sub_1B7C402DC(v14);
  if ((a4 & 1) != (v37 & 1))
  {
LABEL_19:
    sub_1B7AEE088(0, &qword_1EBA521E8, 0x1E696B0B8);
    sub_1B7CFF740();
    __break(1u);
    return;
  }

  v32 = v36;
LABEL_11:
  v38 = *(v26 + 16);
  *(v26 + 16) = v30;

  v39 = *(v26 + 16);
  if ((a4 & 1) == 0)
  {
    v40 = sub_1B7CCAF28(MEMORY[0x1E69E7CC0]);
    sub_1B7CA6728(v32, v14, v40, v41, v42, v39);
    v43 = v14;
  }

  v44 = v39[7] + 24 * v32;

  sub_1B7CC7D28(sub_1B7C25694, v27, a2, a3);

  os_unfair_lock_unlock((v26 + 24));
}

void sub_1B7C22D68(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EBA50F00 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7CFE420();
  sub_1B7AD9040(v8, qword_1EBA50F10);
  v9 = a1;

  v10 = sub_1B7CFE400();
  v11 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    *(v12 + 14) = sub_1B7AED1B8(a2, a3, &v17);
    _os_log_impl(&dword_1B7AD5000, v10, v11, "Unregistering cleanup handler for connection %@ with ID %s", v12, 0x16u);
    sub_1B7C20434(v13);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
    sub_1B7AE9168(v14);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
    MEMORY[0x1B8CB0E70](v12, -1, -1);
  }

  v16 = *(v4 + OBJC_IVAR___IMDPersistenceServiceListener_state);
  os_unfair_lock_lock((v16 + 24));
  sub_1B7C22F54((v16 + 16), v9, a2, a3);

  os_unfair_lock_unlock((v16 + 24));
}

unint64_t sub_1B7C22F54(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7C2302C(v16, a2);
  if (*(v9 + 8))
  {
    v10 = sub_1B7CC8184(a3, a4);
    sub_1B7AE15D4(v10);
  }

  result = (v8)(v16, 0);
  v12 = *a1;
  if (*(*a1 + 16))
  {
    result = sub_1B7C402DC(a2);
    if ((v13 & 1) != 0 && !*(*(*(v12 + 56) + 24 * result + 16) + 16))
    {
      v14 = sub_1B7CE2F50(a2);
      return sub_1B7C255F0(v14, v15);
    }
  }

  return result;
}

void (*sub_1B7C2302C(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B7C232C0(v4, a2);
  return sub_1B7C230A4;
}

void sub_1B7C230A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void __swiftcall IMDPersistenceServiceListener.init()(IMDPersistenceServiceListener *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

void sub_1B7C23204(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1B7C22550(a2);
  }
}

void (*sub_1B7C232C0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1B7C2361C(v6);
  v6[9] = sub_1B7C233C4(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B7C23364;
}

void sub_1B7C23364(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1B7C233C4(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 24) = a2;
  *(v8 + 32) = v3;
  v10 = *v3;
  v11 = sub_1B7C402DC(a2);
  *(v9 + 48) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B7CE8BD0();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B7CE4C18(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_1B7C402DC(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1B7AEE088(0, &qword_1EBA521E8, 0x1E696B0B8);
    result = sub_1B7CFF740();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 40) = v11;
  if (v17)
  {
    v22 = *(*v4 + 56) + 24 * v11;
    v23 = *v22;
    v24 = *(v22 + 8);
  }

  else
  {
    v23 = 0;
    v24 = 0uLL;
  }

  *v9 = v23;
  *(v9 + 8) = v24;
  return sub_1B7C23530;
}

void sub_1B7C23530(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 48);
  if (v3)
  {
    v6 = v1[5];
    v7 = *v1[4];
    if (v5)
    {
      v8 = (v7[7] + 24 * v6);
      *v8 = v2;
      v8[1] = v3;
      v8[2] = v4;
    }

    else
    {
      v11 = v1[3];
      sub_1B7CA6728(v6, v11, v2, v3, v4, v7);
      v12 = v11;
    }
  }

  else if ((*a1)[6])
  {
    v9 = v1[5];
    v10 = *v1[4];

    sub_1B7CE70EC(v9, v10);
  }

  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  sub_1B7C25640(v2, v3);
  sub_1B7C255F0(v13, v14);

  free(v1);
}

uint64_t (*sub_1B7C2361C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1B7C23644;
}

unint64_t sub_1B7C23650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52260, &qword_1B7D0B3B8);
    v3 = sub_1B7CFF380();
    for (i = a1 + 32; ; i += 72)
    {
      sub_1B7C2569C(i, &v15, &qword_1EBA52268, &qword_1B7D0B3C0);
      v5 = v15;
      result = sub_1B7AE1160(v15);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + (result << 6));
      v9 = v16;
      v10 = v17;
      v11 = v19;
      v8[2] = v18;
      v8[3] = v11;
      *v8 = v9;
      v8[1] = v10;
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

unint64_t sub_1B7C237A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521F8, &qword_1B7D0B358);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, &v17, &qword_1EBA52200, &qword_1B7D0B360);
      v5 = v17;
      v6 = v18;
      result = sub_1B7AE11D0(v17, v18);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + (result << 6));
      v11 = v19;
      v12 = v20;
      v13 = v22;
      v10[2] = v21;
      v10[3] = v13;
      *v10 = v11;
      v10[1] = v12;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 80;
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

unint64_t sub_1B7C238DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52210, &qword_1B7D0B370);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1B7C400B4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
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

unint64_t sub_1B7C239C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521A8, &qword_1B7D0B328);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, &v13, &qword_1EBA521B0, &unk_1B7D0A710);
      v5 = v13;
      v6 = v14;
      result = sub_1B7AE11D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B7AE910C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1B7C23AFC(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52160, &qword_1B7D0AA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52168, &qword_1B7D0B2E8);
    v8 = sub_1B7CFF380();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B7C2569C(v10, v6, &qword_1EBA52160, &qword_1B7D0AA60);
      result = sub_1B7C40208(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B7CFDD90();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 8);
      *v17 = *v9;
      *(v17 + 8) = v18;
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

unint64_t sub_1B7C23CF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52238, &qword_1B7D0B390);
    v3 = sub_1B7CFF380();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B7AE1160(v5);
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

unint64_t sub_1B7C23DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&unk_1EBA52270, &qword_1B7D0B3C8);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 56); ; i += 4)
    {
      v6 = *(i - 3);
      v5 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v6;
      result = sub_1B7C402DC(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = (v3[7] + 24 * result);
      *v12 = v5;
      v12[1] = v7;
      v12[2] = v8;
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

unint64_t sub_1B7C23EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1B7C107FC(&qword_1EBA52250, &qword_1B7D0B3A8);
  v3 = sub_1B7CFF380();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v20 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  result = sub_1B7C41954(v4);
  v10 = v20;
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v13 = v3[7] + 48 * result;
    *v13 = v5;
    *(v13 + 8) = v6;
    *(v13 + 16) = v10;
    *(v13 + 32) = v7;
    *(v13 + 40) = v8;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 7;
    v4 = *(v12 - 6);
    v5 = *(v12 - 5);
    v6 = *(v12 - 4);
    v21 = *(v12 - 3);
    v18 = *(v12 - 1);
    v8 = *v12;

    result = sub_1B7C41954(v4);
    v12 = v17;
    v7 = v18;
    v10 = v21;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B7C2404C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1B7C107FC(&qword_1EBA52258, &qword_1B7D0B3B0);
  v3 = sub_1B7CFF380();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1B7C41954(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1B7C41954(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B7C24154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52248, &qword_1B7D0B3A0);
    v3 = sub_1B7CFF380();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B7C41954(v5);
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

unint64_t sub_1B7C24230(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521D0, &qword_1B7D0B348);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, v13, &qword_1EBA521D8, &qword_1B7D0B350);
      result = sub_1B7C40388(v13);
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
      result = sub_1B7C255E0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1B7C2436C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52240, &qword_1B7D0B398);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
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

unint64_t sub_1B7C24490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52228, &qword_1B7D0B388);
    v3 = sub_1B7CFF380();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7C2569C(v4, v13, &qword_1EBA52230, &unk_1B7D10DA0);
      result = sub_1B7C40388(v13);
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
      *(v3[7] + result) = v15;
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

unint64_t sub_1B7C245B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52220, &qword_1B7D0B380);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_1B7C246B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA52218, &qword_1B7D0B378);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1B7C400B4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_1B7C247C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1B7C107FC(a2, a3);
    v5 = sub_1B7CFF380();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_1B7AE11D0(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1B7C248BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B7C107FC(&qword_1EBA521C8, &qword_1B7D0B340);
    v3 = sub_1B7CFF380();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B7AE11D0(v5, v6);
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

unint64_t sub_1B7C249D0(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52150, &qword_1B7D0B2D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52158, &qword_1B7D0B2E0);
    v8 = sub_1B7CFF380();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B7C2569C(v10, v6, &qword_1EBA52150, &qword_1B7D0B2D8);
      result = sub_1B7C403CC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B7CFF330();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1B7C255E0(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_1B7C24BE0(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52138, &qword_1B7D0B2C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52140, &qword_1B7D0B2C8);
    v8 = sub_1B7CFF380();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B7C2569C(v10, v6, &qword_1EBA52138, &qword_1B7D0B2C0);
      result = sub_1B7C40430(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B7CFE7C0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1B7CFE6C0();
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

unint64_t sub_1B7C24E24(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_1B7C107FC(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_1B7C107FC(a4, a5);
    v15 = sub_1B7CFF380();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1B7C2569C(v17, v13, a2, v28);
      result = sub_1B7C40430(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_1B7CFE7C0();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

void *sub_1B7C2502C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1B7C107FC(a2, a3);
  v7 = sub_1B7CFF380();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v10;
  v15 = a1 + 9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v9;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 2);
    v9 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C2514C(void *a1)
{
  v2 = v1;
  [a1 auditToken];
  v4 = __IMDPersistenceCheckAnyEntitlementsForInitialConnection();
  if (v4)
  {
    if (qword_1EBA50F00 != -1)
    {
      swift_once();
    }

    v5 = sub_1B7CFE420();
    sub_1B7AD9040(v5, qword_1EBA50F10);
    v6 = a1;
    v7 = sub_1B7CFE400();
    v8 = sub_1B7CFEED0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = [v6 processIdentifier];

      _os_log_impl(&dword_1B7AD5000, v7, v8, "Accepting connection from PID %d", v9, 8u);
      MEMORY[0x1B8CB0E70](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v15 = [objc_allocWithZone(IMDPersistenceService) initWithListener_];
    [v6 setExportedObject:v15];

    v16 = sub_1B7CE04F8();
    [v6 setExportedInterface:v16];

    [v6 _setQueue:*(v2 + OBJC_IVAR___IMDPersistenceServiceListener_queue)];
    [v6 __imdp_setPersistenceServiceListener:v2];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v6;
    v30 = sub_1B7C25764;
    v31 = v18;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1B7AE14D0;
    v29 = &unk_1F2F9F820;
    v19 = _Block_copy(&v26);
    v20 = v6;

    [v20 setInterruptionHandler:v19];
    _Block_release(v19);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    v30 = sub_1B7C25744;
    v31 = v22;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1B7AE14D0;
    v29 = &unk_1F2FA3710;
    v23 = _Block_copy(&v26);
    v24 = v20;

    [v24 setInvalidationHandler:v23];
    _Block_release(v23);
    [v24 resume];
  }

  else
  {
    if (qword_1EBA50F00 != -1)
    {
      swift_once();
    }

    v10 = sub_1B7CFE420();
    sub_1B7AD9040(v10, qword_1EBA50F10);
    v11 = a1;
    v12 = sub_1B7CFE400();
    v13 = sub_1B7CFEED0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109120;
      *(v14 + 4) = [v11 processIdentifier];

      _os_log_impl(&dword_1B7AD5000, v12, v13, "Connection from %d has no IMDP entitlements, denying connection", v14, 8u);
      MEMORY[0x1B8CB0E70](v14, -1, -1);
    }

    else
    {
    }
  }

  return v4;
}

_OWORD *sub_1B7C255E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B7C255F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B7C25640(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B7C2569C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B7C107FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7C25704()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1B7C25780()
{
  result = qword_1EBA52280;
  if (!qword_1EBA52280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52280);
  }

  return result;
}

uint64_t sub_1B7C257D4()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C2581C()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1);
  return sub_1B7CFF800();
}

unint64_t sub_1B7C25864()
{
  result = qword_1EBA52288;
  if (!qword_1EBA52288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52288);
  }

  return result;
}

uint64_t sub_1B7C258B8()
{
  v1 = *v0;
  v2 = 0x4449776F72;
  v3 = 0x6843746E65726170;
  if (v1 != 6)
  {
    v3 = 0x656D686361747461;
  }

  v4 = 0x6574656C65447369;
  if (v1 != 4)
  {
    v4 = 0x65766F6365527369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4449656C646E6168;
  if (v1 != 2)
  {
    v5 = 0x6E6148726568746FLL;
  }

  if (*v0)
  {
    v2 = 1684632935;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7C259D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7C26D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7C25A10(uint64_t a1)
{
  v2 = sub_1B7C27548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7C25A4C(uint64_t a1)
{
  v2 = sub_1B7C27548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7C25A88(void *a1)
{
  v3 = v1;
  v5 = sub_1B7C107FC(&qword_1EBA522C8, &qword_1B7D0B5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C27548();
  sub_1B7CFF830();
  v11 = *v3;
  LOBYTE(v24) = 0;
  sub_1B7CFF520();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v24) = 1;
    sub_1B7CFF4E0();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v24) = 2;
    sub_1B7CFF4A0();
    v16 = v3[5];
    v17 = v3[6];
    LOBYTE(v24) = 3;
    sub_1B7CFF4A0();
    v18 = *(v3 + 56);
    LOBYTE(v24) = 4;
    sub_1B7CFF4B0();
    v19 = *(v3 + 57);
    LOBYTE(v24) = 5;
    sub_1B7CFF4B0();
    v20 = v3[8];
    v21 = *(v3 + 72);
    LOBYTE(v24) = 6;
    sub_1B7CFF4D0();
    v24 = v3[10];
    v23[7] = 7;
    sub_1B7C107FC(&qword_1EBA522B0, &qword_1B7D0B598);
    sub_1B7C27604(&qword_1EBA522D0, &qword_1EBA522D8);
    sub_1B7CFF4C0();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_1B7C25D58@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7C27024(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1B7C25DCC()
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000026, 0x80000001B7D517A0);
  v20 = *v0;
  v1 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v1);

  MEMORY[0x1B8CADCA0](0x203A64697567202CLL, 0xE800000000000000);
  MEMORY[0x1B8CADCA0](v0[1], v0[2]);
  MEMORY[0x1B8CADCA0](0x656C646E6168202CLL, 0xEC000000203A4449);
  if (v0[4])
  {
    v2 = v0[3];
    v3 = v0[4];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v2, v3);

  MEMORY[0x1B8CADCA0](0x48726568746F202CLL, 0xEF203A656C646E61);
  if (v0[6])
  {
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1B8CADCA0](v4, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D517D0);
  v6 = 7104878;
  v7 = 0xE300000000000000;
  if ((v0[9] & 1) == 0)
  {
    v21 = v0[8];
    sub_1B7C2617C();
    v6 = sub_1B7CFF090();
    v7 = v8;
  }

  MEMORY[0x1B8CADCA0](v6, v7);

  MEMORY[0x1B8CADCA0](0x656C65447369202CLL, 0xED0000203A646574);
  v9 = *(v0 + 56);
  if (v9)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v9 == 2)
  {
    v12 = 7104878;
  }

  else
  {
    v12 = v10;
  }

  if (v9 == 2)
  {
    v13 = 0xE300000000000000;
  }

  else
  {
    v13 = v11;
  }

  MEMORY[0x1B8CADCA0](v12, v13);

  MEMORY[0x1B8CADCA0](0xD000000000000011, 0x80000001B7D517F0);
  v14 = *(v0 + 57);
  if (v14)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v14)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if (v14 == 2)
  {
    v17 = 7104878;
  }

  else
  {
    v17 = v15;
  }

  if (v14 == 2)
  {
    v18 = 0xE300000000000000;
  }

  else
  {
    v18 = v16;
  }

  MEMORY[0x1B8CADCA0](v17, v18);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B7C260C4()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE930](v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C26138()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE930](v1);
  return sub_1B7CFF800();
}

unint64_t sub_1B7C2617C()
{
  result = qword_1EBA52290;
  if (!qword_1EBA52290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52290);
  }

  return result;
}

uint64_t sub_1B7C261D0@<X0>(uint64_t a1@<X0>, sqlite3_int64 a2@<X1>, sqlite3_int64 a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a2);
  v14[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v14);
  v10 = v14[0];
  swift_endAccess();
  if (v10)
  {
    goto LABEL_8;
  }

  if (a3 < 0)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, a3);
  v14[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v14);
  v10 = v14[0];
  swift_endAccess();
  if (v10)
  {
    goto LABEL_8;
  }

  v11 = *(a4 + 24);
  if (v11 < 0xFFFFFFFF80000000)
  {
    goto LABEL_13;
  }

  if (v11 > 0x7FFFFFFF)
  {
    goto LABEL_14;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt(a1 + 48, v11);
  v14[0] = 0;
  IMDSqlOperationGetError(a1 + 16, v14);
  v10 = v14[0];
  swift_endAccess();
  if (!v10)
  {
    result = SqlOperation.uint64s(forColumnName:)(0x5F6567617373656DuLL, 0xEA00000000006469);
    *a5 = result;
    goto LABEL_9;
  }

LABEL_8:
  v10;
  result = swift_willThrow();
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C26374(void *a1)
{
  v3 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *a1;
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D51850);
  v6 = *(v1 + 112);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  MEMORY[0x1B8CADCA0](v7, v8);

  MEMORY[0x1B8CADCA0](0xD00000000000002CLL, 0x80000001B7D51870);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v1;

  v10 = sub_1B7CD7370(0, 0xE000000000000000, sub_1B7C26BF4, v9);
  if (v3)
  {

    return v3;
  }

  v3 = v10;

  if (!v3)
  {
LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  v11 = *(v3 + 16);
  if (!v11)
  {

    goto LABEL_10;
  }

  v12 = *(v3 + 24 * v11 + 8);

  if (v12 != -1)
  {
    *a1 = v12 + 1;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C2657C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (v8 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  swift_beginAccess();
  IMDSqlStatementBindInt64(a1 + 48, v8);
  *&v36 = 0;
  IMDSqlOperationGetError(a1 + 16, &v36);
  v9 = v36;
  swift_endAccess();
  if (!v9)
  {
    v10 = *(a3 + 24);
    if (v10 >= 0xFFFFFFFF80000000)
    {
      if (v10 <= 0x7FFFFFFF)
      {
        swift_beginAccess();
        IMDSqlStatementBindInt(a1 + 48, v10);
        *&v36 = 0;
        IMDSqlOperationGetError(a1 + 16, &v36);
        v9 = v36;
        swift_endAccess();
        if (v9)
        {
          goto LABEL_6;
        }

        swift_beginAccess();
        swift_beginAccess();

        HasRows = IMDSqlOperationHasRows(a1 + 16);
        swift_endAccess();
        if (!HasRows)
        {
          v15 = MEMORY[0x1E69E7CC0];
          goto LABEL_33;
        }

        type metadata accessor for SqlOperation.Row();
        v14 = MEMORY[0x1E69E7CC0];
        v15 = MEMORY[0x1E69E7CC0];
        v34 = a4;
LABEL_10:
        v35 = v15;
        while (1)
        {
          inited = swift_initStackObject();
          v20 = sub_1B7C23650(v14);
          *(inited + 16) = a1;
          *(inited + 24) = v20;
          SqlOperation.Row.column(forColumnName:)(0x64697567uLL, 0xE400000000000000, &v36);
          if (*(&v36 + 1))
          {
            v40 = v36;
            v41 = v37;
            v42 = v38;
            v43 = v39;
            v21 = v37;
            sub_1B7C26C78(&v40);
            v22 = SqlOperation.Row.string(forColumnIndex:)(v21);
            object = v22.value._object;
            v24 = v22.value._object ? v22.value._countAndFlagsBits : 0;
          }

          else
          {
            sub_1B7C26C10(&v36);
            v24 = 0;
            object = 0;
          }

          SqlOperation.Row.column(forColumnName:)(0x4449574F52uLL, 0xE500000000000000, &v36);
          if (!*(&v36 + 1))
          {
            break;
          }

          v40 = v36;
          v41 = v37;
          v42 = v38;
          v43 = v39;
          v25 = v37;
          sub_1B7C26C78(&v40);
          v45 = SqlOperation.Row.uint64(forColumnIndex:)(v25);
          if (v45.is_nil)
          {
            goto LABEL_23;
          }

          value = v45.value;
          if (v45.value == -1)
          {
            goto LABEL_35;
          }

          *(a2 + 16) = v45.value + 1;
          if (object)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = sub_1B7CA22D0(0, v35[2] + 1, 1, v35);
            }

            v29 = v35[2];
            v28 = v35[3];
            v32 = v29 + 1;
            v33 = v29;
            if (v29 >= v28 >> 1)
            {
              v35 = sub_1B7CA22D0((v28 > 1), v29 + 1, 1, v35);
            }

            v35[2] = v32;
            v30 = &v35[3 * v33];
            v30[4] = value;
            v30[5] = v24;
            v15 = v35;
            v30[6] = object;
            swift_beginAccess();

            v31 = IMDSqlOperationHasRows(a1 + 16);
            swift_endAccess();
            a4 = v34;
            if (!v31)
            {
LABEL_33:

              *a4 = v15;
              goto LABEL_7;
            }

            goto LABEL_10;
          }

LABEL_11:
          swift_setDeallocating();
          v16 = *(inited + 16);

          v17 = *(inited + 24);

          swift_beginAccess();

          v18 = IMDSqlOperationHasRows(a1 + 16);
          swift_endAccess();
          if (!v18)
          {
            a4 = v34;
            v15 = v35;
            goto LABEL_33;
          }
        }

        sub_1B7C26C10(&v36);
LABEL_23:
        if (object)
        {
        }

        goto LABEL_11;
      }

LABEL_37:
      __break(1u);
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_6:
  v9;
  result = swift_willThrow();
LABEL_7:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B7C26978(uint64_t a1)
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();

  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  MEMORY[0x1B8CADCA0](v4, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D51830);
  sub_1B7AF7F10(0x3F, 0xE100000000000000, *(a1 + 16));
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v6 = sub_1B7CFEA10();
  v8 = v7;

  MEMORY[0x1B8CADCA0](v6, v8);

  MEMORY[0x1B8CADCA0](15138, 0xE200000000000000);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;

  v10 = sub_1B7CD7370(0xD000000000000012, 0x80000001B7D51810, sub_1B7C26BD8, v9);

  if (v10)
  {
    return v10;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1B7C26B80(Swift::OpaquePointer a1@<0:X1>, uint64_t *a2@<X8>)
{
  SqlOperation.bind(_:)(a1);
  if (!v3)
  {
    *a2 = SqlOperation.uint64s(forColumnName:)(0x4449574F52uLL, 0xE500000000000000);
  }
}

uint64_t sub_1B7C26C10(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52298, &unk_1B7D10570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C26CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1B7C26D14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C26D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B7CFF590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632935 && a2 == 0xE400000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C646E6168 && a2 == 0xE800000000000000 || (sub_1B7CFF590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6148726568746FLL && a2 == 0xEB00000000656C64 || (sub_1B7CFF590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C65447369 && a2 == 0xE900000000000064 || (sub_1B7CFF590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65766F6365527369 && a2 == 0xED0000656C626172 || (sub_1B7CFF590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6843746E65726170 && a2 == 0xEC00000044497461 || (sub_1B7CFF590() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B7CFF590();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B7C27024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1B7C107FC(&qword_1EBA522A0, &qword_1B7D0B590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_1B7AE9124(a1, a1[3]);
  sub_1B7C27548();
  sub_1B7CFF820();
  if (v2)
  {
    return sub_1B7AE9168(a1);
  }

  LOBYTE(v42[0]) = 0;
  v11 = sub_1B7CFF460();
  LOBYTE(v42[0]) = 1;
  v33 = sub_1B7CFF420();
  v35 = v12;
  LOBYTE(v42[0]) = 2;
  v13 = sub_1B7CFF3E0();
  v34 = v14;
  v31 = v13;
  LOBYTE(v42[0]) = 3;
  v30 = sub_1B7CFF3E0();
  v32 = v15;
  LOBYTE(v42[0]) = 4;
  v29 = sub_1B7CFF3F0();
  LOBYTE(v42[0]) = 5;
  v28 = sub_1B7CFF3F0();
  LOBYTE(v42[0]) = 6;
  v27 = sub_1B7CFF410();
  v49 = v16 & 1;
  sub_1B7C107FC(&qword_1EBA522B0, &qword_1B7D0B598);
  v50 = 7;
  sub_1B7C27604(&qword_1EBA522B8, &qword_1EBA522C0);
  sub_1B7CFF400();
  (*(v6 + 8))(v9, v5);
  v26 = v48;
  *&v36 = v11;
  v17 = v33;
  *(&v36 + 1) = v33;
  v18 = v35;
  *&v37 = v35;
  *(&v37 + 1) = v31;
  v19 = v34;
  *&v38 = v34;
  *(&v38 + 1) = v30;
  v20 = v32;
  *&v39 = v32;
  BYTE8(v39) = v29;
  BYTE9(v39) = v28;
  *&v40 = v27;
  v21 = v49;
  BYTE8(v40) = v49;
  v41 = v48;
  sub_1B7C2759C(&v36, v42);
  sub_1B7AE9168(a1);
  v42[0] = v11;
  v42[1] = v17;
  v42[2] = v18;
  v42[3] = v31;
  v42[4] = v19;
  v42[5] = v30;
  v42[6] = v20;
  v43 = v29;
  v44 = v28;
  v45 = v27;
  v46 = v21;
  v47 = v26;
  result = sub_1B7C275D4(v42);
  v23 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v23;
  *(a2 + 64) = v40;
  *(a2 + 80) = v41;
  v24 = v37;
  *a2 = v36;
  *(a2 + 16) = v24;
  return result;
}

unint64_t sub_1B7C27548()
{
  result = qword_1EBA522A8;
  if (!qword_1EBA522A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522A8);
  }

  return result;
}

uint64_t sub_1B7C27604(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA522B0, &qword_1B7D0B598);
    sub_1B7C2768C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7C2768C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StorageInspectionAttachmentRecord();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorageInspectionMessageRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StorageInspectionMessageRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7C27824()
{
  result = qword_1EBA522E0;
  if (!qword_1EBA522E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522E0);
  }

  return result;
}

unint64_t sub_1B7C2787C()
{
  result = qword_1EBA522E8;
  if (!qword_1EBA522E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522E8);
  }

  return result;
}

unint64_t sub_1B7C278D4()
{
  result = qword_1EBA522F0;
  if (!qword_1EBA522F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA522F0);
  }

  return result;
}

id IMDSyncChatSliceRecord.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = v1;
  sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
  v4 = sub_1B7CFEFB0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B7CFEFB0();
    v7 = [v2 initWithServiceName:v5 ckRecordID:v6];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

void sub_1B7C27D38(void *a1)
{
  v3 = [v1 serviceName];
  if (!v3)
  {
    sub_1B7CFEA60();
    v3 = sub_1B7CFEA30();
  }

  v4 = sub_1B7CFEA30();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 ckRecordID];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B7CFEA30();
    [a1 encodeObject:v6 forKey:v7];
  }
}

id IMDSyncChatSliceRecord.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B7C27FB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C280C0()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C281C4()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7C28278(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1D0();
}

double sub_1B7C2837C@<D0>(void *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, void (*a4)(uint64_t, uint64_t, void)@<X6>, _OWORD *a5@<X8>)
{
  *&v10 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  a4(a2, a3, MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  result = *&v10;
  *a5 = v10;
  return result;
}

uint64_t sub_1B7C284F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void))
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  a4(a2, a3, MEMORY[0x1E69E7C88]);
  sub_1B7CFE770();

  return v4;
}

uint64_t sub_1B7C28628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void))
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  a7(a5, a6, MEMORY[0x1E69E7C70]);
  sub_1B7CFE790();
}

uint64_t sub_1B7C28710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE770();

  *a2 = v4;
  return result;
}

uint64_t sub_1B7C28818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C288E8()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C289E4()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7C28BE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7C2D7E4(&qword_1EBA523F8);
  sub_1B7CFE770();

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1B7C28D1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C28DF4()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7C2D7E4(&qword_1EBA523F8);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C28F1C()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7C2D7E4(&qword_1EBA523E8);
  sub_1B7CFE790();
}

uint64_t sub_1B7C29014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE770();

  *a2 = v5;
  return result;
}

uint64_t sub_1B7C2911C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C291F0()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5680, type metadata accessor for MessageRecord);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE770();

  return v1;
}

uint64_t sub_1B7C292EC()
{
  swift_getKeyPath();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE790();
}

uint64_t sub_1B7C299CC(__int128 *a1)
{
  v2 = v1;
  type metadata accessor for MessageRecord();
  *(v1 + 80) = sub_1B7C107FC(&unk_1EBA52428, &qword_1B7D0CA10);
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  *(v1 + 88) = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C((v1 + 56));
  sub_1B7CFE720();
  *(v1 + 16) = 1;
  v3 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 17) = 1;
  v4 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 18) = 257;
  *(v1 + 20) = 1;
  v5 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v6 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 21) = 257;
  *(v1 + 23) = 1;
  v7 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 24) = 257;
  *(v1 + 26) = 1;
  v8 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v9 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v10 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v11 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v12 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v13 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v14 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v15 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v16 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v17 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v18 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v19 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v20 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v21 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v22 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v23 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v24 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 27) = 1;
  v25 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v26 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v27 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v28 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 28) = 1;
  v29 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v30 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 29) = 1;
  v31 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v32 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v33 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v34 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v35 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v36 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v37 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 30) = 1;
  v38 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 31) = 1;
  *(v1 + 32) = 1;
  *(v1 + 33) = 1;
  v39 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v40 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 34) = 1;
  *(v1 + 35) = 1;
  v41 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 36) = 1;
  *(v1 + 37) = 1;
  *(v1 + 38) = 1;
  v42 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 39) = 1;
  *(v1 + 40) = 1;
  v43 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v44 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 41) = 1;
  *(v1 + 42) = 1;
  *(v1 + 43) = 1;
  *(v1 + 44) = 1;
  v45 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v46 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 45) = 1;
  *(v1 + 46) = 1;
  *(v1 + 47) = 1;
  v47 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 48) = 1;
  v48 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v49 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v50 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 49) = 1;
  v51 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 50) = 1;
  *(v1 + 51) = 1;
  v52 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v53 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v54 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v55 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v56 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  v57 = *(v1 + 88);
  sub_1B7AE9124((v2 + 56), *(v2 + 80));
  swift_getKeyPath();
  sub_1B7CFE530();

  *(v1 + 52) = 1;
  sub_1B7CFE1F0();
  *(v1 + 45) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_beginAccess();
  sub_1B7AE9168((v1 + 56));
  sub_1B7AE910C(a1, v1 + 56);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B7C2AB38()
{
  sub_1B7AE9168(v0 + 7);
  v1 = OBJC_IVAR____TtC14IMDPersistence13MessageRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C2ABE4()
{
  result = sub_1B7CFE200();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1B7C2ADB0(__int128 *a1)
{
  v2 = type metadata accessor for MessageRecord();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1B7C299CC(a1);
  return v5;
}

uint64_t sub_1B7C2AE3C(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 56));
  sub_1B7AE910C(a1, v1 + 56);
  return swift_endAccess();
}

void (*sub_1B7C2AE94(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 56, v4);
  return sub_1B7C2AF24;
}

void sub_1B7C2AF24(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 56));
    sub_1B7AE910C((v2 + 40), v3 + 56);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 56));
    sub_1B7AE910C(v2, v3 + 56);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C2AFE0()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  type metadata accessor for MessageRecord();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C2B06C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B7CFE750();
}

uint64_t sub_1B7C2B0C4()
{
  sub_1B7CFF7C0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C2B12C()
{
  v1 = *v0;
  type metadata accessor for MessageRecord();
  sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C2B1A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C2B3C4(uint64_t a1)
{
  result = sub_1B7C2D4BC(&qword_1EDBE5678, type metadata accessor for MessageRecord);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C2B41C()
{
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v0 = *(sub_1B7CFE850() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B7D0B6C0;
  swift_getKeyPath();
  sub_1B7C107FC(&qword_1EBA523D0, &qword_1B7D0BB90);
  v3 = *(sub_1B7CFE910() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1B7D0A7B0;
  sub_1B7CFE900();
  v6 = sub_1B7CFE940();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7C2D4BC(&qword_1EDBE3A00, MEMORY[0x1E697BD30]);
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  v9 = *(v6 + 48);
  v10 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  v11 = *(v6 + 48);
  v12 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  sub_1B7CFE840();
  swift_getKeyPath();
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  sub_1B7CFE950();
  sub_1B7CFE840();
  return v16;
}

uint64_t sub_1B7C2D4BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7C2D550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D578()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D5A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2D5C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2D5E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D610()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D6D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D76C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D794()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D7BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2D7E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA523F0, &unk_1B7D0CA00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7C2D850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2D8A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2D8C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2D8F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2D918()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2DA70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2DA98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2DAC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2DB34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2DC40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

unint64_t sub_1B7C2DCBC()
{
  result = qword_1EBA52410;
  if (!qword_1EBA52410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52410);
  }

  return result;
}

uint64_t sub_1B7C2DD10(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B7C1091C(&qword_1EBA52408, qword_1B7D13650);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7C2DD88()
{
  result = qword_1EBA52420;
  if (!qword_1EBA52420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52420);
  }

  return result;
}

uint64_t sub_1B7C2DDDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2DE04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2DE28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2DF3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2DFAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2DFD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2DFF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E018()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E064()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E088()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E0F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E11C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E140()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2E168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E190()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E1B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E1E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E27C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E2CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E2F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E31C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E344()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E394()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E3BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E3E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E40C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E434()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E45C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E4AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E4D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C292EC();
}

uint64_t sub_1B7C2E4FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2E524()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2E54C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1B7C28F1C();
}

uint64_t sub_1B7C2E574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E67C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E6A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E7B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E824()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1B7C289E4();
}

uint64_t sub_1B7C2E894()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B7C281C4();
}

uint64_t sub_1B7C2E8B4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = sub_1B7AE8874(a1, a2);
  v12 = v11;

  v18 = a3;
  v21 = sub_1B7AE8874(a3, a4);
  v14 = v13;
  v24 = 0;
  MEMORY[0x1B8CADCA0](v10, v12);
  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  swift_bridgeObjectRetain_n();

  v15 = sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D50BA0, 1);
  if (v22)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v16 = v15;

    sub_1B7C94814(MEMORY[0x1E69E7CC0], v16, v21, v14, &v24);

    swift_bridgeObjectRelease_n();

    result = swift_bridgeObjectRelease_n();
    if ((v24 & 1) == 0)
    {
      sub_1B7CFF210();

      strcpy(v23, "ALTER TABLE ");
      BYTE5(v23[1]) = 0;
      HIWORD(v23[1]) = -5120;
      MEMORY[0x1B8CADCA0](a1, a2);
      MEMORY[0x1B8CADCA0](0x4C4F432044444120, 0xEC000000204E4D55);
      MEMORY[0x1B8CADCA0](v18, a4);
      MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
      MEMORY[0x1B8CADCA0](a5, a6);
      sub_1B7AE3B2C(v23[0], v23[1], 1);

      sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
    }
  }

  return result;
}

uint64_t sub_1B7C2EBBC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[6];
  if (*(v6 + 16) && (v7 = v3, v9 = sub_1B7AE11D0(a2, a3), (v10 & 1) != 0))
  {
    v21 = a3;
    v11 = (*(v6 + 56) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
    v15 = a1[2];
    v14 = a1[3];
    v22 = 0;

    MEMORY[0x1B8CADCA0](v15, v14);
    MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
    swift_bridgeObjectRetain_n();

    v16 = sub_1B7AE3B2C(0xD000000000000012, 0x80000001B7D50BA0, 1);
    if (v7)
    {
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v17 = v16;

      sub_1B7C94814(MEMORY[0x1E69E7CC0], v17, v13, v12, &v22);
      swift_bridgeObjectRelease_n();

      result = swift_bridgeObjectRelease_n();
      if ((v22 & 1) == 0)
      {
        v19 = sub_1B7C215A8(a1, a2, v21);
        sub_1B7AE3B2C(v19, v20, 1);

        sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
      }
    }
  }

  else
  {
    sub_1B7CFF210();

    MEMORY[0x1B8CADCA0](a2, a3);
    MEMORY[0x1B8CADCA0](0x65646F6D206E6F20, 0xE90000000000006CLL);
    result = sub_1B7CFF340();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C2EF3C(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionConfiguration();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - v8;
  if (a1)
  {
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = *(result + 28);
      v12 = sub_1B7CFE420();
      (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
      *v9 = 1;
      *(v9 + 1) = 0;
      *(v9 + 8) = 1;
      sub_1B7AE3EA4(v9, v6);
      v13 = type metadata accessor for SQLConnection(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      v16 = swift_allocObject();
      v17 = (v16 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_cachedStatementsByStatementString);
      v18 = MEMORY[0x1E69E7CC8];
      *v17 = MEMORY[0x1E69E7CC8];
      v17[1] = v18;
      v17[2] = 32;
      *(v16 + 16) = v10;
      *(v16 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_owned) = 0;
      result = sub_1B7AE3EA4(v6, v16 + OBJC_IVAR____TtC14IMDPersistence13SQLConnection_configuration);
      if (v6[2])
      {
LABEL_8:
        sub_1B7AE3F08(v6);
        v20[1] = v16;
        sub_1B7C17B04();

        return sub_1B7AE3F08(v9);
      }

      v19 = v6[1] * 1000.0;
      if (COERCE__INT64(fabs(v19)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v19 > -2147483650.0)
      {
        if (v19 < 2147483650.0)
        {
          sqlite3_busy_timeout(v10, v19);
          goto LABEL_8;
        }

LABEL_12:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1B7C2F148(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B7C31188(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v11;
    do
    {
      v9 = *v4;
      sub_1B7C107FC(&qword_1EBA524C0, &qword_1B7D0CAA8);
      sub_1B7C107FC(&qword_1EBA524C8, &qword_1B7D0CAB0);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1B7C31188((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + 16 * v7 + 32) = v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B7C2F27C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1B7C31268(0, v1, 0);
    v2 = v15;
    v4 = (a1 + 48);
    do
    {
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;

      sub_1B7C107FC(&qword_1EBA52478, &unk_1B7D0D930);
      sub_1B7C107FC(&qword_1EBA52560, &qword_1B7D0CB20);
      swift_dynamicCast();
      v6 = *(v15 + 16);
      v5 = *(v15 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B7C31268((v5 > 1), v6 + 1, 1);
      }

      v4 += 3;
      *(v15 + 16) = v6 + 1;
      v7 = (v15 + 24 * v6);
      v7[4] = v12;
      v7[5] = v13;
      v7[6] = v14;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B7C2F3B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B7AF5760(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E6530];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1B7AF5760((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = &off_1F2FA89F8;
      *&v11 = v6;
      *(v2 + 16) = v9 + 1;
      sub_1B7AE910C(&v11, v2 + 40 * v9 + 32);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B7C2F4BC(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B7CFF2C0();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      a2(v7);
      sub_1B7CFF290();
      v8 = *(v9 + 16);
      sub_1B7CFF2D0();
      sub_1B7CFF2E0();
      sub_1B7CFF2A0();
      --v3;
    }

    while (v3);
    return v9;
  }

  return result;
}

void IMDPersistentTaskQueries.loadRecentTasks(withFlags:groups:lanes:excludingReasons:limit:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v10, 0);
    v11 = aBlock[0];
    v13 = (a1 + 32);
    v14 = *(aBlock[0] + 16);
    do
    {
      v16 = *v13++;
      v15 = v16;
      aBlock[0] = v11;
      v17 = *(v11 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_1B7C312D8((v17 > 1), v14 + 1, 1);
        v11 = aBlock[0];
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 8 * v14++ + 32) = v15;
      --v10;
    }

    while (v10);
  }

  sub_1B7C2F4BC(v11, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v18 = sub_1B7CFECC0();

  v19 = *(a2 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v19, 0);
    v20 = aBlock[0];
    v21 = (a2 + 32);
    v22 = *(aBlock[0] + 16);
    do
    {
      v24 = *v21++;
      v23 = v24;
      aBlock[0] = v20;
      v25 = *(v20 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B7C312D8((v25 > 1), v22 + 1, 1);
        v20 = aBlock[0];
      }

      *(v20 + 16) = v22 + 1;
      *(v20 + 8 * v22++ + 32) = v23;
      --v19;
    }

    while (v19);
  }

  sub_1B7C2F4BC(v20, MEMORY[0x1E696A038]);

  v26 = sub_1B7CFECC0();

  v27 = *(a3 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v27, 0);
    v28 = aBlock[0];
    v29 = (a3 + 32);
    v30 = *(aBlock[0] + 16);
    do
    {
      v32 = *v29++;
      v31 = v32;
      aBlock[0] = v28;
      v33 = *(v28 + 24);
      if (v30 >= v33 >> 1)
      {
        sub_1B7C312D8((v33 > 1), v30 + 1, 1);
        v28 = aBlock[0];
      }

      *(v28 + 16) = v30 + 1;
      *(v28 + 8 * v30++ + 32) = v31;
      --v27;
    }

    while (v27);
  }

  sub_1B7C2F4BC(v28, MEMORY[0x1E696A038]);

  v34 = sub_1B7CFECC0();

  sub_1B7C2F4BC(a4, MEMORY[0x1E6969E50]);
  v35 = sub_1B7CFECC0();

  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7C2F91C;
  aBlock[3] = &unk_1F2F9F848;
  v36 = _Block_copy(aBlock);

  [v39 loadRecentTasksWithFlags:v18 groups:v26 lanes:v34 excludingReasons:v35 limit:a5 completionBlock:v36];
  _Block_release(v36);
}

uint64_t IMDPersistentTaskQueries.loadRecentTasks(withFlags:groups:lanes:excludingReasons:limit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7C2F958, 0, 0);
}

uint64_t sub_1B7C2F958()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v2, 0);
    v3 = v36;
    v4 = (v1 + 32);
    v5 = *(v36 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v36 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1B7C312D8((v8 > 1), v5 + 1, 1);
      }

      *(v36 + 16) = v5 + 1;
      *(v36 + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  v9 = v0[20];
  sub_1B7C2F4BC(v3, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v35 = sub_1B7CFECC0();
  v0[25] = v35;

  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v0[20];
    v37 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v10, 0);
    v11 = v37;
    v13 = (v12 + 32);
    v14 = *(v37 + 16);
    do
    {
      v16 = *v13++;
      v15 = v16;
      v17 = *(v37 + 24);
      if (v14 >= v17 >> 1)
      {
        sub_1B7C312D8((v17 > 1), v14 + 1, 1);
      }

      *(v37 + 16) = v14 + 1;
      *(v37 + 8 * v14++ + 32) = v15;
      --v10;
    }

    while (v10);
  }

  v18 = v0[21];
  sub_1B7C2F4BC(v11, MEMORY[0x1E696A038]);

  v19 = sub_1B7CFECC0();
  v0[26] = v19;

  v20 = *(v18 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v0[21];
    v38 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v20, 0);
    v21 = v38;
    v23 = (v22 + 32);
    v24 = *(v38 + 16);
    do
    {
      v26 = *v23++;
      v25 = v26;
      v27 = *(v38 + 24);
      if (v24 >= v27 >> 1)
      {
        sub_1B7C312D8((v27 > 1), v24 + 1, 1);
      }

      *(v38 + 16) = v24 + 1;
      *(v38 + 8 * v24++ + 32) = v25;
      --v20;
    }

    while (v20);
  }

  v28 = v0[23];
  v29 = v0[24];
  v30 = v0[22];
  sub_1B7C2F4BC(v21, MEMORY[0x1E696A038]);

  v31 = sub_1B7CFECC0();
  v0[27] = v31;

  sub_1B7C2F4BC(v30, MEMORY[0x1E6969E50]);
  v32 = sub_1B7CFECC0();
  v0[28] = v32;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B7C2FD74;
  v33 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&qword_1EBA52438, &qword_1B7D0CA20);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C2FED4;
  v0[13] = &unk_1F2FA39A0;
  v0[14] = v33;
  [v29 loadRecentTasksWithFlags:v35 groups:v19 lanes:v31 excludingReasons:v32 limit:v28 completionBlock:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C2FD74()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7C2FE54, 0, 0);
}

uint64_t sub_1B7C2FE54()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5(v4);
}

void IMDPersistentTaskQueries.clearTasks(withRowIDs:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C2F4BC(a1, MEMORY[0x1E6969E50]);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v6 = sub_1B7CFECC0();

  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B7AE14D0;
  v8[3] = &unk_1F2FA39C8;
  v7 = _Block_copy(v8);

  [v3 clearTasksWithRowIDs:v6 completionBlock:v7];
  _Block_release(v7);
}

uint64_t IMDPersistentTaskQueries.clearTasks(withRowIDs:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C3001C, 0, 0);
}

uint64_t sub_1B7C3001C()
{
  v1 = v0[19];
  sub_1B7C2F4BC(v0[18], MEMORY[0x1E6969E50]);
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v2 = sub_1B7CFECC0();
  v0[20] = v2;

  v0[2] = v0;
  v0[3] = sub_1B7C3018C;
  v3 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&qword_1EBA52440, &qword_1B7D0CA30);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C302CC;
  v0[13] = &unk_1F2F9F5F0;
  v0[14] = v3;
  [v1 clearTasksWithRowIDs:v2 completionBlock:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C3018C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7C3026C, 0, 0);
}

uint64_t sub_1B7C3026C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C302CC(uint64_t a1)
{
  v1 = *sub_1B7AE9124((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

void IMDPersistentTaskQueries.loadPTaskReports(forGroups:excludingReasons:loadFullReports:completionBlock:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  if (!a1)
  {
    v19 = 0;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v21 = v6;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v12, 0);
    v13 = aBlock[0];
    v14 = (a1 + 32);
    v15 = *(aBlock[0] + 16);
    do
    {
      v17 = *v14++;
      v16 = v17;
      aBlock[0] = v13;
      v18 = *(v13 + 24);
      if (v15 >= v18 >> 1)
      {
        sub_1B7C312D8((v18 > 1), v15 + 1, 1);
        v13 = aBlock[0];
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 8 * v15++ + 32) = v16;
      --v12;
    }

    while (v12);
    v6 = v21;
  }

  sub_1B7C2F4BC(v13, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v19 = sub_1B7CFECC0();

  if (v10)
  {
LABEL_9:
    sub_1B7C2F4BC(v10, MEMORY[0x1E6969E50]);
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    v10 = sub_1B7CFECC0();
  }

LABEL_10:
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7C3053C;
  aBlock[3] = &unk_1F2FA39F0;
  v20 = _Block_copy(aBlock);

  [v6 loadPTaskReportsForGroups:v19 excludingReasons:v10 loadFullReports:a3 & 1 completionBlock:v20];
  _Block_release(v20);
}

uint64_t sub_1B7C30550(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1B7AEE088(0, a3, a4);
  v6 = sub_1B7CFECE0();

  v5(v6);
}

uint64_t IMDPersistentTaskQueries.loadPTaskReports(forGroups:excludingReasons:loadFullReports:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = v3;
  *(v4 + 192) = a3;
  *(v4 + 152) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C305F4, 0, 0);
}

uint64_t sub_1B7C305F4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = MEMORY[0x1E69E7CC0];
    if (v2)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1B7C312D8(0, v2, 0);
      v3 = v16;
      v4 = (v1 + 32);
      v5 = *(v16 + 16);
      do
      {
        v7 = *v4++;
        v6 = v7;
        v8 = *(v16 + 24);
        if (v5 >= v8 >> 1)
        {
          sub_1B7C312D8((v8 > 1), v5 + 1, 1);
        }

        *(v16 + 16) = v5 + 1;
        *(v16 + 8 * v5++ + 32) = v6;
        --v2;
      }

      while (v2);
    }

    sub_1B7C2F4BC(v3, MEMORY[0x1E696A038]);

    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    v9 = sub_1B7CFECC0();
  }

  else
  {
    v9 = 0;
  }

  *(v0 + 176) = v9;
  v10 = *(v0 + 160);
  if (v10)
  {
    sub_1B7C2F4BC(v10, MEMORY[0x1E6969E50]);
    sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
    v11 = sub_1B7CFECC0();
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 184) = v11;
  v12 = *(v0 + 168);
  v13 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1B7C30880;
  v14 = swift_continuation_init();
  *(v0 + 136) = sub_1B7C107FC(&qword_1EBA52448, &qword_1B7D0CA40);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B7C309CC;
  *(v0 + 104) = &unk_1F2F9F780;
  *(v0 + 112) = v14;
  [v12 loadPTaskReportsForGroups:v9 excludingReasons:v11 loadFullReports:v13 completionBlock:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B7C30880()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7C30960, 0, 0);
}

uint64_t sub_1B7C30960()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1B7C309E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v6 = *sub_1B7AE9124((a1 + 32), *(a1 + 56));
  sub_1B7AEE088(0, a3, a4);
  **(*(v6 + 64) + 40) = sub_1B7CFECE0();

  return MEMORY[0x1EEE6DED8](v6);
}

void IMDPersistentTaskQueries.clearAllTasks(in:flags:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v19[0] = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v9, 0);
    v10 = v19[0];
    v12 = (a2 + 32);
    v13 = *(v19[0] + 16);
    do
    {
      v15 = *v12++;
      v14 = v15;
      v19[0] = v10;
      v16 = *(v10 + 24);
      if (v13 >= v16 >> 1)
      {
        sub_1B7C312D8((v16 > 1), v13 + 1, 1);
        v10 = v19[0];
      }

      *(v10 + 16) = v13 + 1;
      *(v10 + 8 * v13++ + 32) = v14;
      --v9;
    }

    while (v9);
  }

  sub_1B7C2F4BC(v10, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v17 = sub_1B7CFECC0();

  v19[4] = a3;
  v19[5] = a4;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B7C30C34;
  v19[3] = &unk_1F2F9F5C8;
  v18 = _Block_copy(v19);

  [v5 clearAllTasksInLane:a1 flags:v17 completionBlock:v18];
  _Block_release(v18);
}

void sub_1B7C30C34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t IMDPersistentTaskQueries.clearAllTasks(in:flags:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7C30CC4, 0, 0);
}

uint64_t sub_1B7C30CC4()
{
  v1 = v0[19];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B7C312D8(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 32);
    v5 = *(v14 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v14 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1B7C312D8((v8 > 1), v5 + 1, 1);
      }

      *(v14 + 16) = v5 + 1;
      *(v14 + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  v9 = v0[20];
  v10 = v0[18];
  sub_1B7C2F4BC(v3, MEMORY[0x1E696A038]);

  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v11 = sub_1B7CFECC0();
  v0[21] = v11;

  v0[2] = v0;
  v0[3] = sub_1B7C30ED8;
  v12 = swift_continuation_init();
  v0[17] = sub_1B7C107FC(&unk_1EBA52450, &qword_1B7D0CA50);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B7C310BC;
  v0[13] = &unk_1F2F9F708;
  v0[14] = v12;
  [v9 clearAllTasksInLane:v10 flags:v11 completionBlock:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7C30ED8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1B7C3104C;
  }

  else
  {
    v3 = sub_1B7C30FE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B7C30FE8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7C3104C()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_1B7C310BC(uint64_t a1, void *a2)
{
  v3 = sub_1B7AE9124((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
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

void *sub_1B7C31168(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C31470(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B7C31188(char *a1, int64_t a2, char a3)
{
  result = sub_1B7C315B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B7C311A8(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52550, &qword_1B7D0CB10, &qword_1EBA52558, &qword_1B7D0CB18);
  *v3 = result;
  return result;
}

void *sub_1B7C311E8(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52540, &qword_1B7D0CB00, &qword_1EBA52548, &qword_1B7D0CB08);
  *v3 = result;
  return result;
}

void *sub_1B7C31228(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &qword_1EBA52530, &qword_1B7D0CAF8, &qword_1EBA52538, &qword_1B7D0FF90);
  *v3 = result;
  return result;
}

void *sub_1B7C31268(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52568, &qword_1B7D0CB28, &qword_1EBA52560, &qword_1B7D0CB20);
  *v3 = result;
  return result;
}

void *sub_1B7C312A8(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C31B70(a1, a2, a3, *v3, &qword_1EBA52520, &qword_1B7D0CAE8);
  *v3 = result;
  return result;
}

char *sub_1B7C312D8(char *a1, int64_t a2, char a3)
{
  result = sub_1B7C3183C(a1, a2, a3, *v3, &unk_1EBA52590, &unk_1B7D0CB40);
  *v3 = result;
  return result;
}

char *sub_1B7C31320(char *a1, int64_t a2, char a3)
{
  result = sub_1B7C3183C(a1, a2, a3, *v3, &qword_1EBA52508, qword_1B7D13910);
  *v3 = result;
  return result;
}

char *sub_1B7C31350(char *a1, int64_t a2, char a3)
{
  result = sub_1B7C31938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B7C31370(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &qword_1EBA524F0, &qword_1B7D0CAC8, &qword_1EBA524F8, &qword_1B7D0CAD0);
  *v3 = result;
  return result;
}

void *sub_1B7C313B0(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &unk_1EBA52510, &qword_1B7D0CAE0, &unk_1EBA525A0, "D\r\b");
  *v3 = result;
  return result;
}

void *sub_1B7C313F0(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C31A3C(a1, a2, a3, *v3, &qword_1EBA52578, &qword_1B7D0CB38, &unk_1EBA52580, &qword_1B7D10D90);
  *v3 = result;
  return result;
}

void *sub_1B7C31430(void *a1, int64_t a2, char a3)
{
  result = sub_1B7C316BC(a1, a2, a3, *v3, &qword_1EBA52470, &qword_1B7D0CA60, &qword_1EBA52478, &unk_1B7D0D930);
  *v3 = result;
  return result;
}

void *sub_1B7C31470(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B7C107FC(&qword_1EBA524B0, &qword_1B7D0CA98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA524B8, &qword_1B7D0CAA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B7C315B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA524D0, &qword_1B7D0CAB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_1B7C316BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1B7C3183C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
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

char *sub_1B7C31938(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B7C107FC(&qword_1EBA52500, &qword_1B7D0CAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_1B7C31A3C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1B7C107FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1B7C31B70(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B7C107FC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B7C107FC(&qword_1EBA52528, &qword_1B7D0CAF0);
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1B7C31CD8(unint64_t a1)
{
  sub_1B7AE3F68();
  v21 = 0;
  v22 = 0xE000000000000000;
  v23 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000076, 0x80000001B7D539C0);
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B7CFF120())
  {
    v3 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v4 = a1;
    v20 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31370(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    a1 = 0;
    v3 = v20;
    v7 = v4;
    v17 = v4 & 0xC000000000000001;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = v4;
    while (1)
    {
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v17)
      {
        v10 = MEMORY[0x1B8CAE380](v6, v7);
      }

      else
      {
        if (v6 >= *(v16 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(v7 + 8 * v6 + 32);
      }

      v11 = v10;
      v18 = v10;
      sub_1B7C32164(&v18, &v19);

      v12 = v19;
      v20 = v3;
      v14 = v3[2];
      v13 = v3[3];
      if (v14 >= v13 >> 1)
      {
        sub_1B7C31370((v13 > 1), v14 + 1, 1);
        v3 = v20;
      }

      v3[2] = v14 + 1;
      v3[v14 + 4] = v12;
      ++v6;
      v7 = v8;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_14:
  sub_1B7C8BDE8(v3);

  MEMORY[0x1B8CADCA0](10, 0xE100000000000000);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v15 = v23;
  sub_1B7AE3B2C(v21, v22, 0);
  sub_1B7AF3FE4(v15);

  [objc_opt_self() _notifyPTasksUpdated];
}

unint64_t sub_1B7C32164@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B7C107FC(&unk_1EBA52600, &qword_1B7D0AA78);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7D0CB50;
  v5 = [v3 guid];
  v6 = sub_1B7CFEA60();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = &off_1F2FA8B58;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = [v3 group];
  v10 = MEMORY[0x1E69E6810];
  *(v4 + 96) = MEMORY[0x1E69E6810];
  *(v4 + 104) = &off_1F2FA8A98;
  *(v4 + 72) = v9;
  v11 = [v3 flag];
  *(v4 + 136) = v10;
  *(v4 + 144) = &off_1F2FA8A98;
  *(v4 + 112) = v11;
  v12 = [v3 flagPriority];
  v13 = MEMORY[0x1E69E6530];
  *(v4 + 176) = MEMORY[0x1E69E6530];
  *(v4 + 184) = &off_1F2FA89F8;
  *(v4 + 152) = v12;
  v14 = [v3 lane];
  *(v4 + 216) = v10;
  *(v4 + 224) = &off_1F2FA8A98;
  *(v4 + 192) = v14;
  v15 = [v3 reason];
  *(v4 + 256) = v13;
  *(v4 + 264) = &off_1F2FA89F8;
  *(v4 + 232) = v15;
  v16 = [v3 reasonPriority];
  *(v4 + 296) = v13;
  *(v4 + 304) = &off_1F2FA89F8;
  *(v4 + 272) = v16;
  v17 = [v3 userInfo];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B7CFE990();
  }

  else
  {
    v19 = 0;
  }

  *(v4 + 336) = sub_1B7C107FC(&unk_1EBA525C0, &qword_1B7D0CB80);
  result = sub_1B7C3D3E0();
  *(v4 + 344) = result;
  if (v19)
  {
    v21 = objc_opt_self();
    v22 = sub_1B7CFE980();
    v23 = [v21 _dataForUserInfo_];

    if (v23)
    {
      v24 = sub_1B7CFE020();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xF000000000000000;
    }

    *(v4 + 312) = v24;
    *(v4 + 320) = v26;
  }

  else
  {
    *(v4 + 312) = 0;
    *(v4 + 320) = 0xB000000000000000;
  }

  *a2 = v4;
  return result;
}

char *sub_1B7C324F0(unint64_t a1, void (*a2)(void))
{
  v4 = sub_1B7AE3F68();
  v22 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD00000000000002CLL, 0x80000001B7D53990);
  if (a1 >> 62)
  {
    v5 = sub_1B7CFF120();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31320(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v4;
    v8 = a2;
    v6 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v10 = [MEMORY[0x1B8CAE380](i a1)];
        swift_unknownObjectRelease();
        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1B7C31320((v11 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        *(v21 + 8 * v12 + 32) = v10;
      }
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = [*v13 integerValue];
        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_1B7C31320((v15 > 1), v16 + 1, 1);
          v14 = v17;
        }

        *(v21 + 16) = v16 + 1;
        *(v21 + 8 * v16 + 32) = v14;
        ++v13;
        --v5;
      }

      while (v5);
    }

    a2 = v8;
  }

  v18 = sub_1B7C2F3B4(v6);

  sub_1B7AF57A0(v18);

  sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  sub_1B7AF3FE4(v22);

  v19 = [objc_opt_self() _notifyPTasksUpdated];
  a2(v19);
}

void sub_1B7C32AC0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, void *a6, void (*a7)(uint64_t))
{
  sub_1B7AE3F68();
  v13 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v14 = sub_1B7C32F1C(a1, a2, a3, a4);
  v16 = v15;
  v18 = v17;
  v19 = sub_1B7AE3A9C(0, 1, 1, v13);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1B7AE3A9C((v20 > 1), v21 + 1, 1, v19);
  }

  v33 = MEMORY[0x1E69E6530];
  v34 = &off_1F2FA89F8;
  *&v32 = a5;
  v19[2] = v21 + 1;
  sub_1B7AE910C(&v32, &v19[5 * v21 + 4]);
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 32) = 0xD0000000000000B0;
  *(inited + 40) = 0x80000001B7D53890;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  *(inited + 80) = 0x3F202054494D494CLL;
  *(inited + 88) = 0xE900000000000020;
  *(inited + 96) = v19;
  v23 = sub_1B7CB5C48(inited);
  v25 = v24;
  v27 = v26;
  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = a6;

  v29 = sub_1B7AE3B2C(v23, v25, 0);
  v30 = v28;
  sub_1B7C95CC8(v27, v29, v30, &v35);

  swift_bridgeObjectRelease_n();
  a7(v35);
}

uint64_t sub_1B7C32F1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v29 = sub_1B7C330B0(a1);
  v30 = v7;
  v31 = v8;
  v9 = sub_1B7C33248(a2);
  v27 = v10;
  v28 = v9;
  v12 = v11;
  v13 = sub_1B7C336A0(a3, 0x20203D20656E616CLL, 0xEA0000000000203FLL, 40, 0xE100000000000000);
  v15 = v14;
  v17 = v16;
  v18 = sub_1B7C336A0(a4, 0x3D206E6F73616572, 0xEC000000203F2020, 0x2820544F4ELL, 0xE500000000000000);
  v20 = v19;
  v22 = v21;
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 32) = v29;
  *(inited + 16) = xmmword_1B7D0CB70;
  *(inited + 40) = v31;
  *(inited + 48) = v30;
  *(inited + 56) = v28;
  *(inited + 64) = v27;
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  *(inited + 88) = v15;
  *(inited + 96) = v17;
  *(inited + 104) = v18;
  *(inited + 112) = v20;
  *(inited + 120) = v22;
  *(inited + 128) = 0xD000000000000010;
  v24 = MEMORY[0x1E69E7CC0];
  *(inited + 136) = 0x80000001B7D53950;
  *(inited + 144) = v24;
  v25 = sub_1B7C81314(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v25;
}

void *sub_1B7C330B0(unint64_t a1)
{
  if (!a1)
  {
    v10 = 0;
    v3 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v12 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    v2 = sub_1B7CFF120();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v4 = sub_1B7C3382C(a1, 0x20203D2067616C66, 0xEA0000000000203FLL);
  v6 = v5;
  v8 = v7;
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 32) = 40;
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = 8233;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = v3;
  v10 = sub_1B7CB5C48(inited);
  v12 = v11;
  v3 = v13;
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_9:
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1B7D0A7B0;
  *(v14 + 32) = v10;
  v15 = v14 + 32;
  *(v14 + 40) = v12;
  *(v14 + 48) = v3;
  v16 = sub_1B7CB5C48(v14);
  swift_setDeallocating();
  sub_1B7C3D308(v15);
  return v16;
}

void *sub_1B7C33248(unint64_t a1)
{
  if (!a1)
  {
    v10 = 0;
    v3 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v12 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (a1 >> 62)
  {
    v2 = sub_1B7CFF120();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v4 = sub_1B7C333C8(a1);
  v6 = v5;
  v8 = v7;
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  inited = swift_initStackObject();
  *(inited + 32) = 40;
  *(inited + 16) = xmmword_1B7D0CB60;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = 8233;
  *(inited + 88) = 0xE200000000000000;
  *(inited + 96) = v3;
  v10 = sub_1B7CB5C48(inited);
  v12 = v11;
  v3 = v13;
  swift_setDeallocating();
  swift_arrayDestroy();
LABEL_9:
  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1B7D0A7B0;
  *(v14 + 32) = v10;
  v15 = v14 + 32;
  *(v14 + 40) = v12;
  *(v14 + 48) = v3;
  v16 = sub_1B7CB5C48(v14);
  swift_setDeallocating();
  sub_1B7C3D308(v15);
  return v16;
}

unint64_t sub_1B7C333C8(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = &unk_1B7D0A000;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v5 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v22 = sub_1B7C81304(v5);
    v24 = v23;
    v26 = v25;

    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = v22;
    v28 = inited + 32;
    *(inited + 40) = v24;
    *(inited + 48) = v26;
    v29 = sub_1B7C81304(inited);
    swift_setDeallocating();
    sub_1B7C3D308(v28);
    return v29;
  }

  result = sub_1B7CFF120();
  v2 = result;
  v3 = &unk_1B7D0A000;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v4 = 0;
    v31 = 0x80000001B7D53970;
    v5 = MEMORY[0x1E69E7CC0];
    v30 = v3[123];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CAE380](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];
      v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v11 = v9[2];
      v10 = v9[3];
      if (v11 >= v10 >> 1)
      {
        v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
      }

      v34 = &off_1F2FA89F8;
      v33 = MEMORY[0x1E69E6530];
      *&v32 = v8;
      v9[2] = v11 + 1;
      sub_1B7AE910C(&v32, &v9[5 * v11 + 4]);
      sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
      v12 = swift_initStackObject();
      *(v12 + 16) = v30;
      *(v12 + 32) = 0xD000000000000010;
      v13 = v12 + 32;
      *(v12 + 40) = v31;
      *(v12 + 48) = v9;
      v14 = sub_1B7C81304(v12);
      v16 = v15;
      v18 = v17;
      swift_setDeallocating();
      sub_1B7C3D308(v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1B7CA23F8(0, *(v5 + 2) + 1, 1, v5);
      }

      v20 = *(v5 + 2);
      v19 = *(v5 + 3);
      if (v20 >= v19 >> 1)
      {
        v5 = sub_1B7CA23F8((v19 > 1), v20 + 1, 1, v5);
      }

      ++v4;

      *(v5 + 2) = v20 + 1;
      v21 = &v5[24 * v20];
      *(v21 + 4) = v14;
      *(v21 + 5) = v16;
      *(v21 + 6) = v18;
    }

    while (v2 != v4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void *sub_1B7C336A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    v23 = a1;
    v24 = a3;
    v25 = a2;
    v26 = sub_1B7CFF120();
    a2 = v25;
    a3 = v24;
    v7 = v26;
    a1 = v23;
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = sub_1B7C3382C(a1, a2, a3);
    v11 = v10;
    v13 = v12;
    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0CB60;
    *(inited + 32) = a4;
    *(inited + 40) = a5;
    *(inited + 48) = v8;
    *(inited + 56) = v9;
    *(inited + 64) = v11;
    *(inited + 72) = v13;
    *(inited + 80) = 8233;
    *(inited + 88) = 0xE200000000000000;
    *(inited + 96) = v8;
    v15 = sub_1B7CB5C48(inited);
    v17 = v16;
    v8 = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1B7D0A7B0;
  *(v19 + 32) = v15;
  v20 = v19 + 32;
  *(v19 + 40) = v17;
  *(v19 + 48) = v8;
  v21 = sub_1B7CB5C48(v19);
  swift_setDeallocating();
  sub_1B7C3D308(v20);
  return v21;
}

unint64_t sub_1B7C3382C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = &unk_1B7D0A000;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_17:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v24 = sub_1B7C81304(v7);
    v26 = v25;
    v28 = v27;

    sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A7B0;
    *(inited + 32) = v24;
    v30 = inited + 32;
    *(inited + 40) = v26;
    *(inited + 48) = v28;
    v31 = sub_1B7C81304(inited);
    swift_setDeallocating();
    sub_1B7C3D308(v30);
    return v31;
  }

  result = sub_1B7CFF120();
  v4 = result;
  v5 = &unk_1B7D0A000;
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v32 = v5[123];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CAE380](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];
      v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v13 = v11[2];
      v12 = v11[3];
      if (v13 >= v12 >> 1)
      {
        v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
      }

      v37 = &off_1F2FA89F8;
      v36 = MEMORY[0x1E69E6530];
      *&v35 = v10;
      v11[2] = v13 + 1;
      sub_1B7AE910C(&v35, &v11[5 * v13 + 4]);
      sub_1B7C107FC(&unk_1EBA525B0, &qword_1B7D113F0);
      v14 = swift_initStackObject();
      *(v14 + 16) = v32;
      *(v14 + 32) = a2;
      v15 = v14 + 32;
      *(v14 + 40) = a3;
      *(v14 + 48) = v11;
      v16 = sub_1B7C81304(v14);
      v18 = v17;
      v20 = v19;
      swift_setDeallocating();
      sub_1B7C3D308(v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B7CA23F8(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_1B7CA23F8((v21 > 1), v22 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v22 + 1;
      v23 = &v7[24 * v22];
      *(v23 + 4) = v16;
      *(v23 + 5) = v18;
      *(v23 + 6) = v20;
    }

    while (v4 != v6);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C33CE0(char a1, uint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v11 = [objc_allocWithZone(_IMPersistentTaskReportSetBuilder) init];
  v12 = v11;
  if (a1)
  {
    v39 = a4;
    v40 = a3;
    v13 = sub_1B7AE3F68();
    v14 = sub_1B7AE3B2C(0xD00000000000007ALL, 0x80000001B7D537A0, 0);
    v37 = v13;
    v15 = MEMORY[0x1E69E7CC0];
    v41[0] = MEMORY[0x1E69E7CC0];

    sub_1B7C950E4(v15, v14, v41, v14);
    v38 = v12;

    v19 = *(v41[0] + 16);
    if (v19)
    {
      v35 = a6;
      v36 = a5;
      v34 = v41[0];
      v20 = (v41[0] + 64);
      do
      {
        v21 = *(v20 - 4);
        v22 = *(v20 - 2);
        v23 = *(v20 - 1);
        v24 = *v20;
        v25 = v40;
        if (!v40 || (v26 = *(v20 - 3), v27 = sub_1B7CFF050(), v41[0] = v27, MEMORY[0x1EEE9AC00](v27), v33 = v41, v28 = sub_1B7C19BFC(sub_1B7C3D934, v32, v25), v27, (v28 & 1) != 0))
        {
          v29 = v39;
          if (!v39 || (v30 = sub_1B7CFEE20(), v41[0] = v30, MEMORY[0x1EEE9AC00](v30), v33 = v41, v31 = sub_1B7C19BFC(sub_1B7C3D7E8, v32, v29), v30, (v31 & 1) == 0))
          {
            [v38 recordFlag:v21 lane:v22 reason:v23 count:v24];
          }
        }

        v20 += 5;
        --v19;
      }

      while (v19);

      a5 = v36;
      v12 = v38;
    }

    else
    {

      v12 = v38;
    }
  }

  else
  {
    sub_1B7C3AE7C(v11, a3, a4);
  }

  v16 = [v12 reset];
  sub_1B7AEE088(0, &qword_1EDBE5A10, 0x1E69A81D0);
  v17 = sub_1B7CFECE0();

  a5(v17);
}

void sub_1B7C34340(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_1B7AEE088(0, a3, a4);
  v5 = sub_1B7CFECC0();
  (*(a2 + 16))(a2, v5);
}

char *sub_1B7C343B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), unint64_t a7)
{
  sub_1B7AE3F68();
  v62 = 0;
  v63 = 0xE000000000000000;
  v64 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000073, 0x80000001B7D53660);
  if (qword_1EDBE3010 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDBE79C8;
  v15 = *(qword_1EDBE79C8 + 16);
  if (v15)
  {
    v16 = sub_1B7C41954(a1);
    if (v17)
    {
      v57 = a2;
      v58 = a3;
      a3 = *(*(v14 + 56) + 48 * v16 + 40);
      v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      a2 = v7[2];
      v15 = v7[3];
      v14 = a2 + 1;
      if (a2 < v15 >> 1)
      {
        goto LABEL_6;
      }

      goto LABEL_44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_44:
  v7 = sub_1B7AE3A9C((v15 > 1), v14, 1, v7);
LABEL_6:
  v60 = MEMORY[0x1E69E6810];
  v61 = &off_1F2FA8A98;
  *&v59 = a3;
  v7[2] = v14;
  sub_1B7AE910C(&v59, &v7[5 * a2 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v19 = v7[2];
  v18 = v7[3];
  if (v19 >= v18 >> 1)
  {
    v7 = sub_1B7AE3A9C((v18 > 1), v19 + 1, 1, v7);
  }

  v61 = &off_1F2FA8A98;
  v60 = MEMORY[0x1E69E6810];
  *&v59 = a1;
  v7[2] = v19 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v19 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  if (qword_1EBA50DE8 != -1)
  {
    swift_once();
  }

  v20 = qword_1EBA5DA00;
  v21 = *(qword_1EBA5DA00 + 16);
  if (v21)
  {
    v22 = sub_1B7C41954(a1);
    if (v23)
    {
      v56 = a6;
      a6 = *(*(v20 + 56) + 8 * v22);
      a7 = v7[2];
      v21 = v7[3];
      v20 = a7 + 1;
      if (a7 < v21 >> 1)
      {
        goto LABEL_13;
      }

      goto LABEL_47;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_47:
  v7 = sub_1B7AE3A9C((v21 > 1), v20, 1, v7);
LABEL_13:
  v24 = MEMORY[0x1E69E6530];
  v60 = MEMORY[0x1E69E6530];
  v61 = &off_1F2FA89F8;
  *&v59 = a6;
  v7[2] = v20;
  sub_1B7AE910C(&v59, &v7[5 * a7 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v26 = v7[2];
  v25 = v7[3];
  if (v26 >= v25 >> 1)
  {
    v7 = sub_1B7AE3A9C((v25 > 1), v26 + 1, 1, v7);
  }

  v61 = &off_1F2FA8A98;
  v60 = MEMORY[0x1E69E6810];
  *&v59 = v57;
  v7[2] = v26 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v26 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v28 = v7[2];
  v27 = v7[3];
  if (v28 >= v27 >> 1)
  {
    v7 = sub_1B7AE3A9C((v27 > 1), v28 + 1, 1, v7);
  }

  v60 = v24;
  v61 = &off_1F2FA89F8;
  *&v59 = v58;
  v7[2] = v28 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v28 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](8236, 0xE200000000000000);
  v29 = sub_1B7C3DA5C(v58, a1);
  v31 = v7[2];
  v30 = v7[3];
  if (v31 >= v30 >> 1)
  {
    v55 = v29;
    v7 = sub_1B7AE3A9C((v30 > 1), v31 + 1, 1, v7);
    v29 = v55;
  }

  v60 = v24;
  v61 = &off_1F2FA89F8;
  *&v59 = v29;
  v7[2] = v31 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v31 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD00000000000006FLL, 0x80000001B7D536E0);
  v32 = sub_1B7CFE0A0();
  v33 = [v32 __im_nanosecondTimeInterval];

  v35 = v7[2];
  v34 = v7[3];
  if (v35 >= v34 >> 1)
  {
    v7 = sub_1B7AE3A9C((v34 > 1), v35 + 1, 1, v7);
  }

  v60 = MEMORY[0x1E69E7360];
  v61 = &off_1F2FA8A78;
  *&v59 = v33;
  v7[2] = v35 + 1;
  sub_1B7AE910C(&v59, &v7[5 * v35 + 4]);
  v64 = v7;
  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
  MEMORY[0x1B8CADCA0](0xD000000000000018, 0x80000001B7D53750);
  if (a5 >> 62)
  {
    v36 = sub_1B7CFF120();
  }

  else
  {
    v36 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    *&v59 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31320(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v59;
    if ((a5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v36; ++i)
      {
        v40 = [MEMORY[0x1B8CAE380](i a5)];
        swift_unknownObjectRelease();
        *&v59 = v37;
        v42 = *(v37 + 16);
        v41 = *(v37 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1B7C31320((v41 > 1), v42 + 1, 1);
          v37 = v59;
        }

        *(v37 + 16) = v42 + 1;
        *(v37 + 8 * v42 + 32) = v40;
      }
    }

    else
    {
      v43 = (a5 + 32);
      do
      {
        v44 = [*v43 integerValue];
        *&v59 = v37;
        v46 = *(v37 + 16);
        v45 = *(v37 + 24);
        if (v46 >= v45 >> 1)
        {
          v47 = v44;
          sub_1B7C31320((v45 > 1), v46 + 1, 1);
          v44 = v47;
          v37 = v59;
        }

        *(v37 + 16) = v46 + 1;
        *(v37 + 8 * v46 + 32) = v44;
        ++v43;
        --v36;
      }

      while (v36);
    }
  }

  v48 = sub_1B7CBBF98(v37);

  v49 = *(v48 + 16);
  if (!v49)
  {
    goto LABEL_38;
  }

  v50 = sub_1B7CD94A8(*(v48 + 16), 0);
  v51 = sub_1B7CD9C28(&v59, v50 + 4, v49, v48);
  sub_1B7AEC4CC();
  if (v51 != v49)
  {
    __break(1u);
LABEL_38:

    v50 = MEMORY[0x1E69E7CC0];
  }

  v52 = sub_1B7C2F3B4(v50);

  sub_1B7AF57A0(v52);

  MEMORY[0x1B8CADCA0](0xD000000000000020, 0x80000001B7D53770);
  if (qword_1EBA50C88 != -1)
  {
    swift_once();
  }

  MEMORY[0x1B8CADCA0](qword_1EBA50C90, unk_1EBA50C98);
  sub_1B7AF3098(MEMORY[0x1E69E7CC0]);
  v53 = v64;
  sub_1B7AE3B2C(v62, v63, 0);
  sub_1B7AF3FE4(v53);

  v54 = [objc_opt_self() _notifyPTasksUpdated];
  v56(v54);
}

char *sub_1B7C350C8(unint64_t a1, void (*a2)(void))
{
  v4 = sub_1B7AE3F68();
  v22 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000051, 0x80000001B7D53600);
  if (a1 >> 62)
  {
    v5 = sub_1B7CFF120();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v21 = MEMORY[0x1E69E7CC0];
    result = sub_1B7C31320(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v4;
    v8 = a2;
    v6 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        v10 = [MEMORY[0x1B8CAE380](i a1)];
        swift_unknownObjectRelease();
        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1B7C31320((v11 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        *(v21 + 8 * v12 + 32) = v10;
      }
    }

    else
    {
      v13 = (a1 + 32);
      do
      {
        v14 = [*v13 integerValue];
        v16 = *(v21 + 16);
        v15 = *(v21 + 24);
        if (v16 >= v15 >> 1)
        {
          v17 = v14;
          sub_1B7C31320((v15 > 1), v16 + 1, 1);
          v14 = v17;
        }

        *(v21 + 16) = v16 + 1;
        *(v21 + 8 * v16 + 32) = v14;
        ++v13;
        --v5;
      }

      while (v5);
    }

    a2 = v8;
  }

  v18 = sub_1B7C2F3B4(v6);

  sub_1B7AF57A0(v18);

  sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  sub_1B7AF3FE4(v22);

  v19 = [objc_opt_self() _notifyPTasksUpdated];
  a2(v19);
}

uint64_t sub_1B7C35698(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 dictionaryRepresentation];
  if (v8)
  {
    v9 = v8;
    sub_1B7CFE990();

    v10 = objc_opt_self();
    v11 = sub_1B7CFE980();
    v12 = [v10 _dataForUserInfo_];

    if (v12)
    {
      v13 = sub_1B7CFE020();
      v15 = v14;

      goto LABEL_6;
    }
  }

  v13 = 0;
  v15 = 0xF000000000000000;
LABEL_6:
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v16 = sub_1B7CFE420();
  sub_1B7AD9040(v16, qword_1EBA5DA38);
  v17 = sub_1B7CFE400();
  v18 = sub_1B7CFEED0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1B7AD5000, v17, v18, "Scheduling full reindex...", v19, 2u);
    MEMORY[0x1B8CB0E70](v19, -1, -1);
  }

  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a1;
  v20[4] = v13;
  v20[5] = v15;
  v20[6] = a3;
  v20[7] = a4;
  v21 = a2;
  v22 = a1;
  sub_1B7C3D3CC(v13, v15);

  sub_1B7C35D30(v22, v13, v15, sub_1B7C3D69C, v20);

  return sub_1B7C2049C(v13, v15);
}

uint64_t sub_1B7C358F4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B7CFE420();
  sub_1B7AD9040(v11, qword_1EBA5DA38);
  v12 = sub_1B7CFE400();
  v13 = sub_1B7CFEED0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v12, v13, "Scheduled chat reindexing, scheduling messages...", v14, 2u);
    MEMORY[0x1B8CB0E70](v14, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;

  sub_1B7C35B6C(a2, a3, a4, sub_1B7C3D6E4, v15);
}

uint64_t sub_1B7C35A60(uint64_t (*a1)(id))
{
  if (qword_1EBA50EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA5DA38);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEED0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Finished scheduling reindexing", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  v6 = [objc_opt_self() _notifyPTasksUpdated];
  return a1(v6);
}

uint64_t sub_1B7C35B6C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = objc_opt_self();
  [v10 setReindexSchedulingLastRowID_];
  [v10 setReindexSchedulingInProgress_];
  v22[0] = 0;
  v11 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v22];
  v12 = v22[0];
  if (v11)
  {
    v13 = sub_1B7CFE020();
    v15 = v14;

    v16 = sub_1B7CFE010();
    sub_1B7C204B0(v13, v15);
  }

  else
  {
    v17 = v12;
    v18 = sub_1B7CFDEC0();

    swift_willThrow();
    v16 = 0;
  }

  [v10 setReindexSchedulingContext_];

  if (a3 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_1B7CFE010();
  }

  [v10 setReindexSchedulingUserInfoData_];

  result = sub_1B7C35FA4(a1, a2, a3, a4, a5);
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B7C35D30(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = ObjectType;
  v15[4] = sub_1B7C3D6B4;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B7AE14D0;
  v15[3] = &unk_1F2FA3E00;
  v13 = _Block_copy(v15);
  v14 = a1;
  sub_1B7C3D3CC(a2, a3);

  [v5 _performHandoffBlock_];
  _Block_release(v13);
}

uint64_t sub_1B7C35FA4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v41 = a3;
  v37 = a1;
  v7 = sub_1B7CFE180();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1B7C36318();
  sub_1B7CFE170();
  v42 = v12;
  v13 = sub_1B7CFE150();
  [v6 setLastReindexSchedulingID_];

  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  *(v14 + 16) = 0;
  v15 = *(v8 + 16);
  v35 = v7;
  v15(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v7);
  v16 = *(v8 + 80);
  v17 = v8;
  v36 = v8;
  v18 = (v16 + 32) & ~v16;
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v6;
  (*(v17 + 32))(v21 + v18, v34, v7);
  v22 = (v21 + v19);
  v23 = v39;
  *v22 = v38;
  v22[1] = v23;
  v24 = v37;
  *(v21 + v20) = v37;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v40;
  v26 = v41;
  *v25 = v40;
  v25[1] = v26;
  swift_beginAccess();
  v28 = *(v14 + 16);
  v29 = *(v14 + 24);

  v30 = v6;

  v31 = v24;
  sub_1B7C3D3CC(v27, v26);
  *(v14 + 16) = sub_1B7C3D51C;
  *(v14 + 24) = v21;
  sub_1B7AE15D4(v28);
  aBlock[4] = sub_1B7C3D51C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA3CE8;
  v32 = _Block_copy(aBlock);

  [v30 _performHandoffBlock_];
  _Block_release(v32);
  (*(v36 + 8))(v42, v35);
}

id sub_1B7C36318()
{
  v1 = v0;
  v2 = sub_1B7C107FC(&qword_1EBA525D8, &qword_1B7D0CB88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = [v1 lastReindexSchedulingID];
  if (v6)
  {
    v7 = v6;
    sub_1B7CFE160();

    v8 = sub_1B7CFE180();
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    sub_1B7AEE190(v5, &qword_1EBA525D8, &qword_1B7D0CB88);
    if (qword_1EBA50EC0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B7CFE420();
    sub_1B7AD9040(v9, qword_1EBA5DA38);
    v10 = sub_1B7CFE400();
    v11 = sub_1B7CFEED0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B7AD5000, v10, v11, "Invalidaating prior reindex scheduling job", v12, 2u);
      MEMORY[0x1B8CB0E70](v12, -1, -1);
    }

    return [v1 setLastReindexSchedulingID_];
  }

  else
  {
    v14 = sub_1B7CFE180();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    return sub_1B7AEE190(v5, &qword_1EBA525D8, &qword_1B7D0CB88);
  }
}

uint64_t sub_1B7C3659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void))
{
  sub_1B7AE3F68();
  if (a1)
  {
    v9 = objc_opt_self();
    v10 = sub_1B7CFE980();
    v11 = [v9 _dataForUserInfo_];

    if (v11)
    {
      v12 = sub_1B7CFE020();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0xB000000000000000;
  }

  v15 = *(sub_1B7C40CA8(a2) + 16);
  v16 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = v16[2];
  v17 = v16[3];
  v19 = v18 + 1;
  v48 = v14;
  v20 = v12;
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7AE3A9C((v17 > 1), v18 + 1, 1, v16);
  }

  v21 = MEMORY[0x1E69E6810];
  v51 = MEMORY[0x1E69E6810];
  v52 = &off_1F2FA8A98;
  *&v50 = v15;
  v16[2] = v19;
  sub_1B7AE910C(&v50, &v16[5 * v18 + 4]);
  v22 = v16[3];
  if ((v18 + 2) > (v22 >> 1))
  {
    v16 = sub_1B7AE3A9C((v22 > 1), v18 + 2, 1, v16);
  }

  v51 = v21;
  v52 = &off_1F2FA8A98;
  *&v50 = a2;
  v16[2] = v18 + 2;
  sub_1B7AE910C(&v50, &v16[5 * v19 + 4]);
  v23 = [objc_opt_self() priorityForFlag_];
  v25 = v16[2];
  v24 = v16[3];
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
    v43 = v23;
    v16 = sub_1B7AE3A9C((v24 > 1), v25 + 1, 1, v16);
    v23 = v43;
  }

  v27 = MEMORY[0x1E69E6530];
  v51 = MEMORY[0x1E69E6530];
  v52 = &off_1F2FA89F8;
  *&v50 = v23;
  v16[2] = v26;
  sub_1B7AE910C(&v50, &v16[5 * v25 + 4]);
  v28 = v16[3];
  v29 = v25 + 2;
  if ((v25 + 2) > (v28 >> 1))
  {
    v16 = sub_1B7AE3A9C((v28 > 1), v25 + 2, 1, v16);
  }

  v51 = v21;
  v52 = &off_1F2FA8A98;
  *&v50 = a3;
  v16[2] = v29;
  sub_1B7AE910C(&v50, &v16[5 * v26 + 4]);
  v30 = v16[3];
  if ((v25 + 3) > (v30 >> 1))
  {
    v16 = sub_1B7AE3A9C((v30 > 1), v25 + 3, 1, v16);
  }

  v31 = v20;
  v51 = v27;
  v52 = &off_1F2FA89F8;
  *&v50 = a4;
  v16[2] = v25 + 3;
  sub_1B7AE910C(&v50, &v16[5 * v29 + 4]);
  v32 = sub_1B7C3DA5C(a4, a2);
  v34 = v16[2];
  v33 = v16[3];
  v35 = v34 + 1;
  if (v34 >= v33 >> 1)
  {
    v44 = v32;
    v16 = sub_1B7AE3A9C((v33 > 1), v34 + 1, 1, v16);
    v32 = v44;
  }

  v51 = v27;
  v52 = &off_1F2FA89F8;
  *&v50 = v32;
  v16[2] = v35;
  sub_1B7AE910C(&v50, &v16[5 * v34 + 4]);
  sub_1B7C3D3B8(v31, v48);
  v36 = v16[3];
  v37 = v34 + 2;
  if ((v34 + 2) > (v36 >> 1))
  {
    v16 = sub_1B7AE3A9C((v36 > 1), v34 + 2, 1, v16);
  }

  v51 = sub_1B7C107FC(&unk_1EBA525C0, &qword_1B7D0CB80);
  v52 = sub_1B7C3D3E0();
  *&v50 = v31;
  *(&v50 + 1) = v48;
  v16[2] = v37;
  sub_1B7AE910C(&v50, &v16[5 * v35 + 4]);
  v38 = v16[3];
  if ((v34 + 3) > (v38 >> 1))
  {
    v16 = sub_1B7AE3A9C((v38 > 1), v34 + 3, 1, v16);
  }

  v51 = v27;
  v52 = &off_1F2FA89F8;
  *&v50 = a5;
  v16[2] = v34 + 3;
  sub_1B7AE910C(&v50, &v16[5 * v37 + 4]);
  v39 = objc_opt_self();
  if ([v39 _shouldExplainQueryPlans])
  {
    v40 = 4;
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_1B7C154F8(0xD00000000000017CLL, 0x80000001B7D52B10, v16, v40);

  [v39 _notifyPTasksUpdatedImmediately_];
  a7(v41, 0);
  sub_1B7C3D4E0(v31, v48);
}

void sub_1B7C36D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_1B7CFECC0();
    if (a2)
    {
LABEL_3:
      v6 = sub_1B7CFDEB0();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7C36E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1B7C3BB68(a1);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = v14;
  v16[7] = a5;
  v16[8] = a2;
  v16[9] = a3;
  v16[10] = a4;
  v16[11] = v23;
  swift_beginAccess();
  v17 = *(v15 + 16);
  v18 = *(v15 + 24);
  *(v15 + 16) = sub_1B7C3D380;
  *(v15 + 24) = v16;

  v19 = v23;
  sub_1B7AE15D4(v17);
  aBlock[4] = sub_1B7C3D380;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA3BF8;
  v20 = _Block_copy(aBlock);

  [v19 _performHandoffBlock_];
  _Block_release(v20);
}

void sub_1B7C37018(uint64_t a1, uint64_t a2, void (*a3)(void *), void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  swift_beginAccess();
  v19 = *(a1 + 16);
  if (!*(v19 + 16))
  {
    swift_beginAccess();
    v25 = *(a2 + 16);
    v26 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    sub_1B7AE15D4(v25);
    [objc_opt_self() _notifyPTasksUpdatedImmediately_];
    swift_beginAccess();
    v27 = *(a5 + 16);
    v28 = v27;
    a3(v27);

    return;
  }

  swift_beginAccess();
  v20 = *(v19 + 16);
  if (v20)
  {
    v63 = a8;
    v64 = *(v19 + 32);

    sub_1B7C901EC(0, 1);
    swift_endAccess();
    sub_1B7AE3F68();
    if (a6)
    {
      v21 = objc_opt_self();
      v22 = sub_1B7CFE980();
      v23 = [v21 _dataForUserInfo_];

      if (v23)
      {
        v65 = sub_1B7CFE020();
        a6 = v24;
      }

      else
      {
        v65 = 0;
        a6 = 0xF000000000000000;
      }
    }

    else
    {
      v65 = 0;
      a6 = 0xB000000000000000;
    }

    v29 = MEMORY[0x1E69E7CC0];
    v72 = MEMORY[0x1E69E7CC0];
    v73 = 0xD000000000000081;
    v74 = 0x80000001B7D525F0;
    a3 = *(sub_1B7C40CA8(a7) + 16);
    a4 = sub_1B7AE3A9C(0, 1, 1, v29);
    v19 = a4[2];
    v20 = a4[3];
    v10 = v19 + 1;
    v66 = a2;
    if (v19 < v20 >> 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  a4 = sub_1B7AE3A9C((v20 > 1), v10, 1, a4);
LABEL_10:
  v30 = MEMORY[0x1E69E6810];
  v69 = MEMORY[0x1E69E6810];
  v70 = &off_1F2FA8A98;
  *&aBlock = a3;
  a4[2] = v10;
  sub_1B7AE910C(&aBlock, &a4[5 * v19 + 4]);
  v72 = a4;
  v73 = 0xD000000000000086;
  v74 = 0x80000001B7D52680;
  v31 = a4[3];
  if ((v19 + 2) > (v31 >> 1))
  {
    a4 = sub_1B7AE3A9C((v31 > 1), v19 + 2, 1, a4);
  }

  v69 = v30;
  v70 = &off_1F2FA8A98;
  *&aBlock = a7;
  a4[2] = v19 + 2;
  sub_1B7AE910C(&aBlock, &a4[5 * v10 + 4]);
  v72 = a4;
  v73 = 0xD00000000000008BLL;
  v74 = 0x80000001B7D52710;
  v32 = [objc_opt_self() priorityForFlag_];
  v34 = a4[2];
  v33 = a4[3];
  v35 = v34 + 1;
  if (v34 >= v33 >> 1)
  {
    v61 = v32;
    a4 = sub_1B7AE3A9C((v33 > 1), v34 + 1, 1, a4);
    v32 = v61;
  }

  v69 = MEMORY[0x1E69E6530];
  v70 = &off_1F2FA89F8;
  *&aBlock = v32;
  a4[2] = v35;
  sub_1B7AE910C(&aBlock, &a4[5 * v34 + 4]);
  v72 = a4;
  v73 = 0xD000000000000090;
  v74 = 0x80000001B7D527A0;
  v36 = a4[3];
  v37 = v34 + 2;
  v38 = a6;
  if ((v34 + 2) > (v36 >> 1))
  {
    a4 = sub_1B7AE3A9C((v36 > 1), v34 + 2, 1, a4);
  }

  v69 = v30;
  v70 = &off_1F2FA8A98;
  *&aBlock = v63;
  a4[2] = v37;
  sub_1B7AE910C(&aBlock, &a4[5 * v35 + 4]);
  v72 = a4;
  v73 = 0xD000000000000095;
  v74 = 0x80000001B7D52840;
  v39 = a4[3];
  if ((v34 + 3) > (v39 >> 1))
  {
    a4 = sub_1B7AE3A9C((v39 > 1), v34 + 3, 1, a4);
  }

  v70 = &off_1F2FA89F8;
  v69 = MEMORY[0x1E69E6530];
  *&aBlock = a9;
  a4[2] = v34 + 3;
  sub_1B7AE910C(&aBlock, &a4[5 * v37 + 4]);
  v72 = a4;
  v73 = 0xD00000000000009ALL;
  v74 = 0x80000001B7D528E0;
  v40 = sub_1B7C3DA5C(a9, a7);
  v42 = a4[2];
  v41 = a4[3];
  v43 = v42 + 1;
  if (v42 >= v41 >> 1)
  {
    v62 = v40;
    a4 = sub_1B7AE3A9C((v41 > 1), v42 + 1, 1, a4);
    v40 = v62;
  }

  v70 = &off_1F2FA89F8;
  v69 = MEMORY[0x1E69E6530];
  *&aBlock = v40;
  a4[2] = v43;
  sub_1B7AE910C(&aBlock, &a4[5 * v42 + 4]);
  v72 = a4;
  v73 = 0xD00000000000009FLL;
  v74 = 0x80000001B7D52980;
  sub_1B7C3D3B8(v65, a6);
  v44 = a4[3];
  v45 = v42 + 2;
  if ((v42 + 2) > (v44 >> 1))
  {
    a4 = sub_1B7AE3A9C((v44 > 1), v42 + 2, 1, a4);
  }

  v69 = sub_1B7C107FC(&unk_1EBA525C0, &qword_1B7D0CB80);
  v70 = sub_1B7C3D3E0();
  *&aBlock = v65;
  *(&aBlock + 1) = a6;
  v46 = a6;
  a4[2] = v45;
  sub_1B7AE910C(&aBlock, &a4[5 * v43 + 4]);
  v72 = a4;
  v73 = 0xD0000000000000B9;
  v74 = 0x80000001B7D52A20;
  v47 = sub_1B7AF5664(v64);

  sub_1B7AF3098(v48);
  v49 = *(v47 + 16);

  *&aBlock = sub_1B7AF7F10(0x293F28, 0xE300000000000000, v49);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v50 = sub_1B7CFEA10();
  v52 = v51;

  MEMORY[0x1B8CADCA0](v50, v52);

  MEMORY[0x1B8CADCA0](0xD00000000000002ELL, 0x80000001B7D52AE0);
  v53 = v73;
  v54 = v74;
  v55 = v72;
  if ([objc_opt_self() _shouldExplainQueryPlans])
  {
    v56 = 4;
  }

  else
  {
    v56 = 0;
  }

  sub_1B7CA46D8(v53, v54, v55, v56);

  v57 = v46;
  swift_beginAccess();
  v58 = *(v66 + 16);
  if (v58)
  {
    v59 = *(v66 + 24);
    v70 = *(v66 + 16);
    v71 = v59;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v68 = sub_1B7AE14D0;
    v69 = &unk_1F2F9F640;
    v60 = _Block_copy(&aBlock);
    sub_1B7AD8F38(v58);

    [a10 _performHandoffBlock_];
    sub_1B7C3D4E0(v65, v57);

    _Block_release(v60);
    sub_1B7AE15D4(v58);
  }

  else
  {
    sub_1B7C3D4E0(v65, v38);
  }
}