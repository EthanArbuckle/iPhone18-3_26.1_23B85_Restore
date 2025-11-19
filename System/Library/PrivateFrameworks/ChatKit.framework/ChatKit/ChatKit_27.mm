uint64_t sub_190A4E030(void *a1)
{
  v2 = v1;
  v4 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v62 = (v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v61 = v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v53 - v12);
  v64 = v14;
  v15 = sub_190A5DFF0(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  v65 = v15;
  swift_getKeyPath();
  v16 = qword_1EAD629D8;
  v66 = v1;
  v17 = sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
  sub_190D51C20();

  if (*(v1 + qword_1EAD629B0) == 1)
  {
    v59 = v8;
    MEMORY[0x1EEE9AC00](result);
    v53[-2] = v4;
    v53[-1] = v15;
    swift_getKeyPath();
    v66 = v1;
    sub_190D51C20();

    v19 = qword_1EAD629B8;
    v20 = *(v1 + qword_1EAD629B8);
    sub_190D52690();
    v21 = sub_190A4FC2C(a1, v20, _s14descr1F03EACB9V10AttachmentVMa, _s14descr1F03EACB9V10AttachmentVMa, _s14descr1F03EACB9V10AttachmentVMa);

    if (!v21)
    {
      v31 = sub_190A5E038(a1, v62, _s14descr1F03EACB9V10AttachmentVMa);
      MEMORY[0x1EEE9AC00](v31);
      v53[-2] = v4;
      v53[-1] = v15;
      swift_getKeyPath();
      v66 = v2;
      sub_190D51C20();

      v66 = v2;
      MEMORY[0x1EEE9AC00](v32);
      v53[-2] = v4;
      v53[-1] = v15;
      swift_getKeyPath();
      sub_190D51C40();

      v26 = *(v2 + v19);
      sub_190D52690();
      v13 = v19;
      v24 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_43:
        v26 = sub_1908365C4(0, *(v26 + 16) + 1, 1, v26);
      }

      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        v26 = sub_1908365C4(v33 > 1, v34 + 1, 1, v26);
      }

      *(v26 + 16) = v34 + 1;
      sub_190A5D874(v62, v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v34, _s14descr1F03EACB9V10AttachmentVMa);
      v35 = *(v13 + v2);
      *(v13 + v2) = v26;
      sub_1908ED9B4(v35);

      v66 = v2;
      MEMORY[0x1EEE9AC00](v36);
      v53[-2] = v4;
      v53[-1] = v24;
      swift_getKeyPath();
      goto LABEL_40;
    }

    v53[1] = v53;
    MEMORY[0x1EEE9AC00](v22);
    v60 = &v53[-4];
    v62 = a1;
    v53[-2] = a1;
    MEMORY[0x1EEE9AC00](v23);
    v53[-2] = v4;
    v53[-1] = v15;
    swift_getKeyPath();
    v58 = v17;
    v66 = v2;
    sub_190D51C20();
    v24 = v15;

    v66 = v2;
    MEMORY[0x1EEE9AC00](v25);
    v57 = v4;
    v53[-2] = v4;
    v53[-1] = v15;
    v55 = v15;
    swift_getKeyPath();
    v56 = v16;
    v26 = v2 + v16;
    sub_190D51C40();

    v54 = v19;
    v27 = *(v2 + v19);
    sub_190D52690();
    result = sub_190A54EBC(sub_190A5D798, v60, v27, _s14descr1F03EACB9V10AttachmentVMa);
    if (v28)
    {
      v29 = v27[2];
      v30 = v29;
LABEL_32:
      v44 = v30;
      v45 = v30 - v29;
      v46 = v29 + v45;
      if (!__OFADD__(v29, v45))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v27;
        if (!isUniquelyReferenced_nonNull_native || v46 > v27[3] >> 1)
        {
          if (v29 <= v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = v29;
          }

          v27 = sub_1908365C4(isUniquelyReferenced_nonNull_native, v48, 1, v27);
          v66 = v27;
        }

        v49 = v54;
        sub_190CAC630(v44, v29, 0);
        v50 = *(v2 + v49);
        *(v2 + v49) = v27;
        sub_1908ED9B4(v50);

        v66 = v2;
        MEMORY[0x1EEE9AC00](v51);
        v52 = v55;
        v53[-2] = v57;
        v53[-1] = v52;
        swift_getKeyPath();
LABEL_40:
        sub_190D51C30();
      }
    }

    else
    {
      v60 = result;
      v29 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      while (1)
      {
        v37 = v27[2];
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
          goto LABEL_43;
        }

        v38 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v39 = v27 + v38;
        v24 = *(v63 + 72);
        v4 = v24 * v29;
        sub_190A5E038(v27 + v38 + v24 * v29, v13, _s14descr1F03EACB9V10AttachmentVMa);
        if (*v13 == *v62 && v13[1] == v62[1])
        {
LABEL_12:
          result = sub_190A5E0A0(v13, _s14descr1F03EACB9V10AttachmentVMa);
          ++v29;
        }

        else
        {
          v26 = sub_190D58760();
          result = sub_190A5E0A0(v13, _s14descr1F03EACB9V10AttachmentVMa);
          if ((v26 & 1) == 0)
          {
            v41 = v60;
            if (v29 != v60)
            {
              if ((v60 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              v42 = v27[2];
              if (v60 >= v42)
              {
                goto LABEL_48;
              }

              v26 = v24 * v60;
              result = sub_190A5E038(&v39[v24 * v60], v61, _s14descr1F03EACB9V10AttachmentVMa);
              if (v29 >= v42)
              {
                goto LABEL_49;
              }

              sub_190A5E038(&v39[v4], v59, _s14descr1F03EACB9V10AttachmentVMa);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_190A5BCB0(v27);
              }

              v43 = v27 + v38;
              result = sub_190A5D80C(v59, &v43[v26], _s14descr1F03EACB9V10AttachmentVMa);
              if (v29 >= v27[2])
              {
                goto LABEL_50;
              }

              result = sub_190A5D80C(v61, &v43[v4], _s14descr1F03EACB9V10AttachmentVMa);
              v41 = v60;
            }

            v60 = v41 + 1;
          }

          ++v29;
        }
      }

      v30 = v60;
      if (v29 < v60)
      {
        __break(1u);
      }

      else if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  return result;
}

uint64_t sub_190A4E900(void *a1)
{
  v2 = v1;
  v4 = _s8LocationVMa(0);
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v62 = (v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v61 = v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v53 - v12);
  v64 = v14;
  v15 = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
  v65 = v15;
  swift_getKeyPath();
  v16 = qword_1EAD629D8;
  v66 = v1;
  v17 = sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  if (*(v1 + qword_1EAD629B0) == 1)
  {
    v59 = v8;
    MEMORY[0x1EEE9AC00](result);
    v53[-2] = v4;
    v53[-1] = v15;
    swift_getKeyPath();
    v66 = v1;
    sub_190D51C20();

    v19 = qword_1EAD629B8;
    v20 = *(v1 + qword_1EAD629B8);
    sub_190D52690();
    v21 = sub_190A4FC2C(a1, v20, _s8LocationVMa, _s8LocationVMa, _s8LocationVMa);

    if (!v21)
    {
      v31 = sub_190A5E038(a1, v62, _s8LocationVMa);
      MEMORY[0x1EEE9AC00](v31);
      v53[-2] = v4;
      v53[-1] = v15;
      swift_getKeyPath();
      v66 = v2;
      sub_190D51C20();

      v66 = v2;
      MEMORY[0x1EEE9AC00](v32);
      v53[-2] = v4;
      v53[-1] = v15;
      swift_getKeyPath();
      sub_190D51C40();

      v26 = *(v2 + v19);
      sub_190D52690();
      v13 = v19;
      v24 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_43:
        v26 = sub_1908366F0(0, *(v26 + 16) + 1, 1, v26);
      }

      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        v26 = sub_1908366F0(v33 > 1, v34 + 1, 1, v26);
      }

      *(v26 + 16) = v34 + 1;
      sub_190A5D874(v62, v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v34, _s8LocationVMa);
      v35 = *(v13 + v2);
      *(v13 + v2) = v26;
      sub_1908EDD8C(v35);

      v66 = v2;
      MEMORY[0x1EEE9AC00](v36);
      v53[-2] = v4;
      v53[-1] = v24;
      swift_getKeyPath();
      goto LABEL_40;
    }

    v53[1] = v53;
    MEMORY[0x1EEE9AC00](v22);
    v60 = &v53[-4];
    v62 = a1;
    v53[-2] = a1;
    MEMORY[0x1EEE9AC00](v23);
    v53[-2] = v4;
    v53[-1] = v15;
    swift_getKeyPath();
    v58 = v17;
    v66 = v2;
    sub_190D51C20();
    v24 = v15;

    v66 = v2;
    MEMORY[0x1EEE9AC00](v25);
    v57 = v4;
    v53[-2] = v4;
    v53[-1] = v15;
    v55 = v15;
    swift_getKeyPath();
    v56 = v16;
    v26 = v2 + v16;
    sub_190D51C40();

    v54 = v19;
    v27 = *(v2 + v19);
    sub_190D52690();
    result = sub_190A54EBC(sub_190A5E154, v60, v27, _s8LocationVMa);
    if (v28)
    {
      v29 = v27[2];
      v30 = v29;
LABEL_32:
      v44 = v30;
      v45 = v30 - v29;
      v46 = v29 + v45;
      if (!__OFADD__(v29, v45))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v27;
        if (!isUniquelyReferenced_nonNull_native || v46 > v27[3] >> 1)
        {
          if (v29 <= v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = v29;
          }

          v27 = sub_1908366F0(isUniquelyReferenced_nonNull_native, v48, 1, v27);
          v66 = v27;
        }

        v49 = v54;
        sub_190CAC648(v44, v29, 0);
        v50 = *(v2 + v49);
        *(v2 + v49) = v27;
        sub_1908EDD8C(v50);

        v66 = v2;
        MEMORY[0x1EEE9AC00](v51);
        v52 = v55;
        v53[-2] = v57;
        v53[-1] = v52;
        swift_getKeyPath();
LABEL_40:
        sub_190D51C30();
      }
    }

    else
    {
      v60 = result;
      v29 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      while (1)
      {
        v37 = v27[2];
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
          goto LABEL_43;
        }

        v38 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v39 = v27 + v38;
        v24 = *(v63 + 72);
        v4 = v24 * v29;
        sub_190A5E038(v27 + v38 + v24 * v29, v13, _s8LocationVMa);
        if (*v13 == *v62 && v13[1] == v62[1])
        {
LABEL_12:
          result = sub_190A5E0A0(v13, _s8LocationVMa);
          ++v29;
        }

        else
        {
          v26 = sub_190D58760();
          result = sub_190A5E0A0(v13, _s8LocationVMa);
          if ((v26 & 1) == 0)
          {
            v41 = v60;
            if (v29 != v60)
            {
              if ((v60 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              v42 = v27[2];
              if (v60 >= v42)
              {
                goto LABEL_48;
              }

              v26 = v24 * v60;
              result = sub_190A5E038(&v39[v24 * v60], v61, _s8LocationVMa);
              if (v29 >= v42)
              {
                goto LABEL_49;
              }

              sub_190A5E038(&v39[v4], v59, _s8LocationVMa);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_190A5BCC4(v27);
              }

              v43 = v27 + v38;
              result = sub_190A5D80C(v59, &v43[v26], _s8LocationVMa);
              if (v29 >= v27[2])
              {
                goto LABEL_50;
              }

              result = sub_190A5D80C(v61, &v43[v4], _s8LocationVMa);
              v41 = v60;
            }

            v60 = v41 + 1;
          }

          ++v29;
        }
      }

      v30 = v60;
      if (v29 < v60)
      {
        __break(1u);
      }

      else if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  return result;
}

uint64_t sub_190A4F1D0(void *a1)
{
  v2 = v1;
  v4 = _s10WalletPassVMa(0);
  v63 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v62 = (v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v53 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v61 = v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v53 - v12);
  v64 = v14;
  v15 = sub_190A5DFF0(&qword_1EAD555A0, _s10WalletPassVMa);
  v65 = v15;
  swift_getKeyPath();
  v16 = qword_1EAD629D8;
  v66 = v1;
  v17 = sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  if (*(v1 + qword_1EAD629B0) == 1)
  {
    v59 = v8;
    MEMORY[0x1EEE9AC00](result);
    v53[-2] = v4;
    v53[-1] = v15;
    swift_getKeyPath();
    v66 = v1;
    sub_190D51C20();

    v19 = qword_1EAD629B8;
    v20 = *(v1 + qword_1EAD629B8);
    sub_190D52690();
    v21 = sub_190A4FC2C(a1, v20, _s10WalletPassVMa, _s10WalletPassVMa, _s10WalletPassVMa);

    if (!v21)
    {
      v31 = sub_190A5E038(a1, v62, _s10WalletPassVMa);
      MEMORY[0x1EEE9AC00](v31);
      v53[-2] = v4;
      v53[-1] = v15;
      swift_getKeyPath();
      v66 = v2;
      sub_190D51C20();

      v66 = v2;
      MEMORY[0x1EEE9AC00](v32);
      v53[-2] = v4;
      v53[-1] = v15;
      swift_getKeyPath();
      sub_190D51C40();

      v26 = *(v2 + v19);
      sub_190D52690();
      v13 = v19;
      v24 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_43:
        v26 = sub_190837344(0, *(v26 + 16) + 1, 1, v26);
      }

      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        v26 = sub_190837344(v33 > 1, v34 + 1, 1, v26);
      }

      *(v26 + 16) = v34 + 1;
      sub_190A5D874(v62, v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v34, _s10WalletPassVMa);
      v35 = *(v13 + v2);
      *(v13 + v2) = v26;
      sub_1908EDC44(v35);

      v66 = v2;
      MEMORY[0x1EEE9AC00](v36);
      v53[-2] = v4;
      v53[-1] = v24;
      swift_getKeyPath();
      goto LABEL_40;
    }

    v53[1] = v53;
    MEMORY[0x1EEE9AC00](v22);
    v60 = &v53[-4];
    v62 = a1;
    v53[-2] = a1;
    MEMORY[0x1EEE9AC00](v23);
    v53[-2] = v4;
    v53[-1] = v15;
    swift_getKeyPath();
    v58 = v17;
    v66 = v2;
    sub_190D51C20();
    v24 = v15;

    v66 = v2;
    MEMORY[0x1EEE9AC00](v25);
    v57 = v4;
    v53[-2] = v4;
    v53[-1] = v15;
    v55 = v15;
    swift_getKeyPath();
    v56 = v16;
    v26 = v2 + v16;
    sub_190D51C40();

    v54 = v19;
    v27 = *(v2 + v19);
    sub_190D52690();
    result = sub_190A54EBC(sub_190A5E154, v60, v27, _s10WalletPassVMa);
    if (v28)
    {
      v29 = v27[2];
      v30 = v29;
LABEL_32:
      v44 = v30;
      v45 = v30 - v29;
      v46 = v29 + v45;
      if (!__OFADD__(v29, v45))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v27;
        if (!isUniquelyReferenced_nonNull_native || v46 > v27[3] >> 1)
        {
          if (v29 <= v46)
          {
            v48 = v46;
          }

          else
          {
            v48 = v29;
          }

          v27 = sub_190837344(isUniquelyReferenced_nonNull_native, v48, 1, v27);
          v66 = v27;
        }

        v49 = v54;
        sub_190CAC660(v44, v29, 0);
        v50 = *(v2 + v49);
        *(v2 + v49) = v27;
        sub_1908EDC44(v50);

        v66 = v2;
        MEMORY[0x1EEE9AC00](v51);
        v52 = v55;
        v53[-2] = v57;
        v53[-1] = v52;
        swift_getKeyPath();
LABEL_40:
        sub_190D51C30();
      }
    }

    else
    {
      v60 = result;
      v29 = result + 1;
      if (__OFADD__(result, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      while (1)
      {
        v37 = v27[2];
        if (v29 == v37)
        {
          break;
        }

        if (v29 >= v37)
        {
          __break(1u);
          goto LABEL_43;
        }

        v38 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v39 = v27 + v38;
        v24 = *(v63 + 72);
        v4 = v24 * v29;
        sub_190A5E038(v27 + v38 + v24 * v29, v13, _s10WalletPassVMa);
        if (*v13 == *v62 && v13[1] == v62[1])
        {
LABEL_12:
          result = sub_190A5E0A0(v13, _s10WalletPassVMa);
          ++v29;
        }

        else
        {
          v26 = sub_190D58760();
          result = sub_190A5E0A0(v13, _s10WalletPassVMa);
          if ((v26 & 1) == 0)
          {
            v41 = v60;
            if (v29 != v60)
            {
              if ((v60 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              v42 = v27[2];
              if (v60 >= v42)
              {
                goto LABEL_48;
              }

              v26 = v24 * v60;
              result = sub_190A5E038(&v39[v24 * v60], v61, _s10WalletPassVMa);
              if (v29 >= v42)
              {
                goto LABEL_49;
              }

              sub_190A5E038(&v39[v4], v59, _s10WalletPassVMa);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_190A5BD50(v27);
              }

              v43 = v27 + v38;
              result = sub_190A5D80C(v59, &v43[v26], _s10WalletPassVMa);
              if (v29 >= v27[2])
              {
                goto LABEL_50;
              }

              result = sub_190A5D80C(v61, &v43[v4], _s10WalletPassVMa);
              v41 = v60;
            }

            v60 = v41 + 1;
          }

          ++v29;
        }
      }

      v30 = v60;
      if (v29 < v60)
      {
        __break(1u);
      }

      else if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  return result;
}

BOOL sub_190A4FAA0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_190D51C00();
    ++v2;
    sub_190A5DFF0(&qword_1EAD462B8, MEMORY[0x1E6969C28]);
  }

  while ((sub_190D56E30() & 1) == 0);
  return v3 != v4;
}

BOOL sub_190A4FC2C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a3(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v19 - v11);
  v13 = 0;
  v14 = *(a2 + 16);
  do
  {
    v15 = v13;
    if (v14 == v13)
    {
      break;
    }

    sub_190A5E038(a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v13, v12, a4);
    if (*v12 == *a1 && v12[1] == a1[1])
    {
      sub_190A5E0A0(v12, a5);
      return v14 != v15;
    }

    ++v13;
    v17 = sub_190D58760();
    sub_190A5E0A0(v12, a5);
  }

  while ((v17 & 1) == 0);
  return v14 != v15;
}

void sub_190A4FDB0(uint64_t a1, uint64_t a2)
{
  v69 = type metadata accessor for AttributedTapbackItem();
  MEMORY[0x1EEE9AC00](v69);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a2 + 16);
  if (!v81)
  {
    return;
  }

  v7 = a1;
  v8 = 0;
  v10 = *v7;
  v9 = *(v7 + 8);
  v70 = v7;
  v71 = v10;
  v68 = v9;
  v80 = *(v7 + 16);
  v11 = *(v4 + 80);
  v78 = *(v4 + 72);
  v79 = a2 + ((v11 + 32) & ~v11);
  while (1)
  {
    sub_190A5E038(v79 + v78 * v8, v6, type metadata accessor for AttributedTapbackItem);
    v12 = *v6;
    if (!v6[16])
    {
      break;
    }

    if (v6[16] == 1)
    {
      if (v80 != 1 || (v12 != v71 || *(v6 + 1) != v68) && (sub_190D58760() & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

    if (v80 == 2)
    {
      v13 = [v12 stickerIdentifier];
      v14 = sub_190D56F10();
      v16 = v15;

      v17 = [v71 stickerIdentifier];
      v18 = sub_190D56F10();
      v20 = v19;

      if (v14 == v18 && v16 == v20)
      {

        goto LABEL_19;
      }

      v22 = sub_190D58760();

      if (v22)
      {
        goto LABEL_19;
      }
    }

LABEL_4:
    sub_190A5E0A0(v6, type metadata accessor for AttributedTapbackItem);
    if (++v8 == v81)
    {
      return;
    }
  }

  if (v80)
  {
    goto LABEL_4;
  }

  v21 = [v12 associatedMessageType];
  if (v21 != [v71 associatedMessageType])
  {
    goto LABEL_4;
  }

LABEL_19:
  v23 = *(v6 + 3);
  v24 = *(v70 + 24);
  v25 = *(v24 + 16);
  v77 = *(v23 + 16);
  if (v77 != v25)
  {
    goto LABEL_4;
  }

  if (v77)
  {
    v26 = v23 == v24;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
LABEL_25:
    if ((sub_190D517D0() & 1) != 0 && *(*&v6[*(v69 + 28)] + 16) == *(*(v70 + *(v69 + 28)) + 16))
    {
      if (v27 = *(v69 + 32), v28 = *&v6[v27], v29 = *&v6[v27 + 8], v30 = (v70 + v27), v28 == *v30) && v29 == v30[1] || (sub_190D58760())
      {
        sub_190A5E0A0(v6, type metadata accessor for AttributedTapbackItem);
        return;
      }
    }

    goto LABEL_4;
  }

  v31 = 0;
  v32 = 0;
  v72 = v24;
  v73 = v23;
  while (v32 < *(v23 + 16))
  {
    if (v32 >= *(v24 + 16))
    {
      goto LABEL_67;
    }

    v35 = v23 + v31;
    v36 = *(v23 + v31 + 32);
    v37 = *(v23 + v31 + 40);
    v38 = *(v23 + v31 + 48);
    v39 = *(v23 + v31 + 56);
    v41 = *(v35 + 64);
    v40 = *(v35 + 72);
    v42 = (v24 + v31);
    v43 = *(v24 + v31 + 32);
    v44 = *(v24 + v31 + 40);
    v45 = v42[7];
    v82 = v42[6];
    v83 = v40;
    v46 = v42[8];
    v84 = v42[9];
    v85 = v37;
    if ((v36 != v43 || v85 != v44) && (sub_190D58760() & 1) == 0 || (v41 != v46 || v83 != v84) && (sub_190D58760() & 1) == 0)
    {
      goto LABEL_4;
    }

    v74 = v39;
    v75 = v45;
    v76 = v44;
    if (v39)
    {
      if (!v45)
      {
        goto LABEL_4;
      }

      sub_1902495E8();
      v67 = v82;
      sub_190D52690();
      v47 = v39;
      v48 = v45;
      v49 = v47;
      v50 = v48;
      sub_190D52690();
      v51 = v38;
      sub_190D52690();
      sub_190D52690();
      v52 = sub_190D57D90();

      if ((v52 & 1) == 0)
      {

        goto LABEL_4;
      }

      if (!v38)
      {
LABEL_51:
        v56 = 0;
        v54 = 0;
        v57 = 0;
        v24 = v72;
        v23 = v73;
        v33 = v82;
        if (!v82)
        {
          goto LABEL_32;
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v45)
      {
        goto LABEL_4;
      }

      v58 = v82;
      sub_190D52690();
      sub_190D52690();
      v59 = v38;
      sub_190D52690();
      sub_190D52690();
      if (!v38)
      {
        goto LABEL_51;
      }
    }

    v53 = [v38 identifier];
    v54 = sub_190D56F10();
    v56 = v55;

    v24 = v72;
    v23 = v73;
    v33 = v82;
    if (!v82)
    {
      v57 = 0;
      if (v56)
      {
        v64 = v38;
        v65 = 0;
        v66 = v75;
LABEL_63:

        goto LABEL_4;
      }

      goto LABEL_32;
    }

LABEL_52:
    v60 = [v33 identifier];
    v61 = sub_190D56F10();
    v57 = v62;

    if (!v56)
    {
      v24 = v72;
      v23 = v73;
      v33 = v82;
LABEL_32:
      v34 = v33;

      if (v57)
      {

        goto LABEL_4;
      }

      goto LABEL_33;
    }

    if (!v57)
    {
      v64 = v38;
      v66 = v75;
      v65 = v82;
      goto LABEL_63;
    }

    if (v54 == v61 && v56 == v57)
    {
      v63 = 1;
    }

    else
    {
      v63 = sub_190D58760();
    }

    v24 = v72;
    v23 = v73;

    if ((v63 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_33:
    ++v32;
    v31 += 48;
    if (v77 == v32)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_190A504E0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v20 - v11);
  v13 = *(a2 + 16);
  v14 = 0;
  if (v13)
  {
    v15 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    while (1)
    {
      sub_190A5E038(v15, v12, a4);
      if (*v12 == *a1 && v12[1] == a1[1])
      {
        break;
      }

      v18 = sub_190D58760();
      sub_190A5E0A0(v12, a5);
      if (v18)
      {
        return v14;
      }

      ++v14;
      v15 += v16;
      if (v13 == v14)
      {
        return 0;
      }
    }

    sub_190A5E0A0(v12, a5);
  }

  return v14;
}

__n128 sub_190A50638@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v112 = a1;
  v93 = a3;
  v94 = sub_190D54270();
  v113 = *(v94 - 8);
  v109 = v113[8];
  v6 = MEMORY[0x1EEE9AC00](v94);
  v101 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v98 = &v84 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v95 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v84 - v12;
  v13 = type metadata accessor for DetailsLinksTabView();
  v111 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v100 = &v84 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v99 = &v84 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v97 = &v84 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v92 = &v84 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v88 = &v84 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v85 = &v84 - v27;
  v107 = v28;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  v108 = *(v31 - 8);
  v32 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v84 - v33;
  v35 = sub_190A5DFF0(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView);
  v36 = (*(v35 + 56))(v13, v35);
  v114 = _s4LinkVMa(0);
  v115 = sub_190A5DFF0(&qword_1EAD555A8, _s4LinkVMa);
  swift_getKeyPath();
  v116.n128_u64[0] = v36;
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  v96 = v36[qword_1EAD629D0];

  sub_19022FD14(a2, v34, &qword_1EAD576A0);
  v37 = v30;
  v89 = v30;
  sub_190A5E038(v4, v30, type metadata accessor for DetailsLinksTabView);
  v38 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v39 = v111[80];
  v108 = v39 | 7;
  v40 = swift_allocObject();
  v91 = v40;
  sub_190A5BD64(v34, v40 + v38);
  v106 = type metadata accessor for DetailsLinksTabView;
  sub_190A5D874(v37, v40 + ((v32 + v39 + v38) & ~v39), type metadata accessor for DetailsLinksTabView);
  v110 = v4;
  v41 = v4;
  v42 = v85;
  v84 = type metadata accessor for DetailsLinksTabView;
  sub_190A5E038(v41, v85, type metadata accessor for DetailsLinksTabView);
  v44 = v112;
  v43 = v113;
  v103 = v113[2];
  v104 = v113 + 2;
  v45 = v90;
  v46 = v94;
  v103(v90, v112, v94);
  v47 = (v39 + 16) & ~v39;
  v86 = v47 + v107;
  v105 = v47;
  v107 = *(v43 + 80);
  v48 = (v86 + v107) & ~v107;
  v49 = swift_allocObject();
  v87 = v49;
  sub_190A5D874(v42, v49 + v47, type metadata accessor for DetailsLinksTabView);
  v50 = v113[4];
  v113 += 4;
  v111 = v50;
  (v50)(v49 + v48, v45, v46);
  v51 = v110;
  v52 = v88;
  sub_190A5E038(v110, v88, type metadata accessor for DetailsLinksTabView);
  v53 = v95;
  v54 = v103;
  v103(v95, v44, v46);
  v55 = swift_allocObject();
  v90 = v55;
  sub_190A5D874(v52, v55 + v105, v106);
  (v111)(v55 + v48, v53, v46);
  v56 = v92;
  v57 = v84;
  sub_190A5E038(v51, v92, v84);
  v58 = v98;
  v54(v98, v112, v46);
  v59 = swift_allocObject();
  v95 = v59;
  v60 = v105;
  v61 = v56;
  v62 = v106;
  sub_190A5D874(v61, v59 + v105, v106);
  (v111)(v59 + v48, v58, v46);
  v63 = v97;
  sub_190A5E038(v110, v97, v57);
  v64 = v101;
  v103(v101, v112, v46);
  v65 = swift_allocObject();
  v112 = v65;
  sub_190A5D874(v63, v65 + v60, v62);
  (v111)(v65 + v48, v64, v46);
  v66 = v110;
  v67 = v99;
  sub_190A5E038(v110, v99, v57);
  v113 = swift_allocObject();
  sub_190A5D874(v67, v113 + v60, v62);
  v68 = v100;
  sub_190A5E038(v66, v100, v57);
  v69 = swift_allocObject();
  sub_190A5D874(v68, v69 + v60, v62);
  v70 = v102;
  sub_190A5E038(v66, v102, v57);
  v71 = swift_allocObject();
  sub_190A5D874(v70, v71 + v60, v62);
  sub_190D56500();
  sub_190D53C60();
  v72 = v66;
  v73 = v89;
  sub_190A5E038(v72, v89, v57);
  v74 = swift_allocObject();
  sub_190A5D874(v73, v74 + v60, v62);
  v75 = v93;
  *v93 = v96;
  v76 = v91;
  *(v75 + 1) = sub_190A5D1A8;
  *(v75 + 2) = v76;
  v77 = v87;
  *(v75 + 3) = sub_190A5D1D4;
  *(v75 + 4) = v77;
  v78 = v90;
  *(v75 + 5) = sub_190A5D204;
  *(v75 + 6) = v78;
  v79 = v95;
  *(v75 + 7) = sub_190A5D234;
  *(v75 + 8) = v79;
  v81 = v112;
  v80 = v113;
  *(v75 + 9) = sub_190A5D5C8;
  *(v75 + 10) = v81;
  *(v75 + 11) = sub_190A5D5F8;
  *(v75 + 12) = v80;
  *(v75 + 13) = sub_190A5D624;
  *(v75 + 14) = v69;
  *(v75 + 15) = sub_190A5D650;
  *(v75 + 16) = v71;
  result = v116;
  v83 = v117;
  *(v75 + 168) = v118;
  *(v75 + 152) = v83;
  *(v75 + 136) = result;
  *(v75 + 23) = 0;
  *(v75 + 24) = sub_190A5D67C;
  *(v75 + 25) = v74;
  *(v75 + 26) = 0;
  *(v75 + 27) = 0;
  return result;
}

__n128 sub_190A5106C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v112 = a1;
  v93 = a3;
  v94 = sub_190D54270();
  v113 = *(v94 - 8);
  v109 = v113[8];
  MEMORY[0x1EEE9AC00](v94);
  v101 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v84 - v12;
  v13 = type metadata accessor for DetailsAttachmentsTabView();
  v111 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v84 - v26;
  v107 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  v108 = *(v31 - 8);
  v32 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v84 - v33;
  v35 = sub_190A5DFF0(&qword_1EAD590A0, type metadata accessor for DetailsAttachmentsTabView);
  v36 = (*(v35 + 56))(v13, v35);
  v114 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v115 = sub_190A5DFF0(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  swift_getKeyPath();
  v116.n128_u64[0] = v36;
  sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
  sub_190D51C20();

  v96 = v36[qword_1EAD629D0];

  sub_19022FD14(a2, v34, &qword_1EAD576A0);
  v37 = v30;
  v89 = v30;
  sub_190A5E038(v4, v30, type metadata accessor for DetailsAttachmentsTabView);
  v38 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v39 = v111[80];
  v108 = v39 | 7;
  v40 = swift_allocObject();
  v91 = v40;
  sub_190A5BD64(v34, v40 + v38);
  v106 = type metadata accessor for DetailsAttachmentsTabView;
  sub_190A5D874(v37, v40 + ((v32 + v39 + v38) & ~v39), type metadata accessor for DetailsAttachmentsTabView);
  v110 = v4;
  v41 = v4;
  v42 = v85;
  v84 = type metadata accessor for DetailsAttachmentsTabView;
  sub_190A5E038(v41, v85, type metadata accessor for DetailsAttachmentsTabView);
  v44 = v112;
  v43 = v113;
  v103 = v113[2];
  v104 = v113 + 2;
  v45 = v90;
  v46 = v94;
  v103(v90, v112, v94);
  v47 = (v39 + 16) & ~v39;
  v86 = v47 + v107;
  v105 = v47;
  v107 = *(v43 + 80);
  v48 = (v86 + v107) & ~v107;
  v49 = swift_allocObject();
  v87 = v49;
  sub_190A5D874(v42, v49 + v47, type metadata accessor for DetailsAttachmentsTabView);
  v50 = v113[4];
  v113 += 4;
  v111 = v50;
  (v50)(v49 + v48, v45, v46);
  v51 = v110;
  v52 = v88;
  sub_190A5E038(v110, v88, type metadata accessor for DetailsAttachmentsTabView);
  v53 = v95;
  v54 = v103;
  v103(v95, v44, v46);
  v55 = swift_allocObject();
  v90 = v55;
  sub_190A5D874(v52, v55 + v105, v106);
  (v111)(v55 + v48, v53, v46);
  v56 = v92;
  v57 = v84;
  sub_190A5E038(v51, v92, v84);
  v58 = v98;
  v54(v98, v112, v46);
  v59 = swift_allocObject();
  v95 = v59;
  v60 = v105;
  v61 = v56;
  v62 = v106;
  sub_190A5D874(v61, v59 + v105, v106);
  (v111)(v59 + v48, v58, v46);
  v63 = v97;
  sub_190A5E038(v110, v97, v57);
  v64 = v101;
  v103(v101, v112, v46);
  v65 = swift_allocObject();
  v112 = v65;
  sub_190A5D874(v63, v65 + v60, v62);
  (v111)(v65 + v48, v64, v46);
  v66 = v110;
  v67 = v99;
  sub_190A5E038(v110, v99, v57);
  v113 = swift_allocObject();
  sub_190A5D874(v67, v113 + v60, v62);
  v68 = v100;
  sub_190A5E038(v66, v100, v57);
  v69 = swift_allocObject();
  sub_190A5D874(v68, v69 + v60, v62);
  v70 = v102;
  sub_190A5E038(v66, v102, v57);
  v71 = swift_allocObject();
  sub_190A5D874(v70, v71 + v60, v62);
  sub_190D56500();
  sub_190D53C60();
  v72 = v66;
  v73 = v89;
  sub_190A5E038(v72, v89, v57);
  v74 = swift_allocObject();
  sub_190A5D874(v73, v74 + v60, v62);
  v75 = v93;
  *v93 = v96;
  v76 = v91;
  *(v75 + 1) = sub_190A5D8DC;
  *(v75 + 2) = v76;
  v77 = v87;
  *(v75 + 3) = sub_190A5D908;
  *(v75 + 4) = v77;
  v78 = v90;
  *(v75 + 5) = sub_190A5D938;
  *(v75 + 6) = v78;
  v79 = v95;
  *(v75 + 7) = sub_190A5D968;
  *(v75 + 8) = v79;
  v81 = v112;
  v80 = v113;
  *(v75 + 9) = sub_190A5DD5C;
  *(v75 + 10) = v81;
  *(v75 + 11) = sub_190A5DD8C;
  *(v75 + 12) = v80;
  *(v75 + 13) = sub_190A5DDB8;
  *(v75 + 14) = v69;
  *(v75 + 15) = sub_190A5DDE4;
  *(v75 + 16) = v71;
  result = v116;
  v83 = v117;
  *(v75 + 168) = v118;
  *(v75 + 152) = v83;
  *(v75 + 136) = result;
  *(v75 + 23) = 0;
  *(v75 + 24) = sub_190A5DE10;
  *(v75 + 25) = v74;
  *(v75 + 26) = 0;
  *(v75 + 27) = 0;
  return result;
}

__n128 sub_190A51AA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v112 = a1;
  v93 = a3;
  v94 = sub_190D54270();
  v113 = *(v94 - 8);
  v109 = v113[8];
  MEMORY[0x1EEE9AC00](v94);
  v101 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v84 - v12;
  v13 = type metadata accessor for DetailsLocationsTabView();
  v111 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v84 - v26;
  v107 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  v108 = *(v31 - 8);
  v32 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v84 - v33;
  v35 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
  v36 = (*(v35 + 56))(v13, v35);
  v114 = _s8LocationVMa(0);
  v115 = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
  swift_getKeyPath();
  v116.n128_u64[0] = v36;
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  v96 = v36[qword_1EAD629D0];

  sub_19022FD14(a2, v34, &qword_1EAD576A0);
  v37 = v30;
  v89 = v30;
  sub_190A5E038(v4, v30, type metadata accessor for DetailsLocationsTabView);
  v38 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v39 = v111[80];
  v108 = v39 | 7;
  v40 = swift_allocObject();
  v91 = v40;
  sub_190A5BD64(v34, v40 + v38);
  v106 = type metadata accessor for DetailsLocationsTabView;
  sub_190A5D874(v37, v40 + ((v32 + v39 + v38) & ~v39), type metadata accessor for DetailsLocationsTabView);
  v110 = v4;
  v41 = v4;
  v42 = v85;
  v84 = type metadata accessor for DetailsLocationsTabView;
  sub_190A5E038(v41, v85, type metadata accessor for DetailsLocationsTabView);
  v44 = v112;
  v43 = v113;
  v103 = v113[2];
  v104 = v113 + 2;
  v45 = v90;
  v46 = v94;
  v103(v90, v112, v94);
  v47 = (v39 + 16) & ~v39;
  v86 = v47 + v107;
  v105 = v47;
  v107 = *(v43 + 80);
  v48 = (v86 + v107) & ~v107;
  v49 = swift_allocObject();
  v87 = v49;
  sub_190A5D874(v42, v49 + v47, type metadata accessor for DetailsLocationsTabView);
  v50 = v113[4];
  v113 += 4;
  v111 = v50;
  (v50)(v49 + v48, v45, v46);
  v51 = v110;
  v52 = v88;
  sub_190A5E038(v110, v88, type metadata accessor for DetailsLocationsTabView);
  v53 = v95;
  v54 = v103;
  v103(v95, v44, v46);
  v55 = swift_allocObject();
  v90 = v55;
  sub_190A5D874(v52, v55 + v105, v106);
  (v111)(v55 + v48, v53, v46);
  v56 = v92;
  v57 = v84;
  sub_190A5E038(v51, v92, v84);
  v58 = v98;
  v54(v98, v112, v46);
  v59 = swift_allocObject();
  v95 = v59;
  v60 = v105;
  v61 = v56;
  v62 = v106;
  sub_190A5D874(v61, v59 + v105, v106);
  (v111)(v59 + v48, v58, v46);
  v63 = v97;
  sub_190A5E038(v110, v97, v57);
  v64 = v101;
  v103(v101, v112, v46);
  v65 = swift_allocObject();
  v112 = v65;
  sub_190A5D874(v63, v65 + v60, v62);
  (v111)(v65 + v48, v64, v46);
  v66 = v110;
  v67 = v99;
  sub_190A5E038(v110, v99, v57);
  v113 = swift_allocObject();
  sub_190A5D874(v67, v113 + v60, v62);
  v68 = v100;
  sub_190A5E038(v66, v100, v57);
  v69 = swift_allocObject();
  sub_190A5D874(v68, v69 + v60, v62);
  v70 = v102;
  sub_190A5E038(v66, v102, v57);
  v71 = swift_allocObject();
  sub_190A5D874(v70, v71 + v60, v62);
  sub_190D56500();
  sub_190D53C60();
  v72 = v66;
  v73 = v89;
  sub_190A5E038(v72, v89, v57);
  v74 = swift_allocObject();
  sub_190A5D874(v73, v74 + v60, v62);
  v75 = v93;
  *v93 = v96;
  v76 = v91;
  *(v75 + 1) = sub_190A5BDD4;
  *(v75 + 2) = v76;
  v77 = v87;
  *(v75 + 3) = sub_190A5BE00;
  *(v75 + 4) = v77;
  v78 = v90;
  *(v75 + 5) = sub_190A5BE30;
  *(v75 + 6) = v78;
  v79 = v95;
  *(v75 + 7) = sub_190A5BF40;
  *(v75 + 8) = v79;
  v81 = v112;
  v80 = v113;
  *(v75 + 9) = sub_190A5C2D0;
  *(v75 + 10) = v81;
  *(v75 + 11) = sub_190A5C300;
  *(v75 + 12) = v80;
  *(v75 + 13) = sub_190A5C32C;
  *(v75 + 14) = v69;
  *(v75 + 15) = sub_190A5C358;
  *(v75 + 16) = v71;
  result = v116;
  v83 = v117;
  *(v75 + 168) = v118;
  *(v75 + 152) = v83;
  *(v75 + 136) = result;
  *(v75 + 23) = 0;
  *(v75 + 24) = sub_190A5C6D8;
  *(v75 + 25) = v74;
  *(v75 + 26) = 0;
  *(v75 + 27) = 0;
  return result;
}

__n128 sub_190A524D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v112 = a1;
  v93 = a3;
  v94 = sub_190D54270();
  v113 = *(v94 - 8);
  v109 = v113[8];
  MEMORY[0x1EEE9AC00](v94);
  v101 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v84 - v12;
  v13 = type metadata accessor for DetailsWalletTabView();
  v111 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v84 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v99 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v85 = &v84 - v26;
  v107 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  v108 = *(v31 - 8);
  v32 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v84 - v33;
  v35 = sub_190A5DFF0(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
  v36 = (*(v35 + 56))(v13, v35);
  v114 = _s10WalletPassVMa(0);
  v115 = sub_190A5DFF0(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  v116.n128_u64[0] = v36;
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v96 = v36[qword_1EAD629D0];

  sub_19022FD14(a2, v34, &qword_1EAD576A0);
  v37 = v30;
  v89 = v30;
  sub_190A5E038(v4, v30, type metadata accessor for DetailsWalletTabView);
  v38 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v39 = v111[80];
  v108 = v39 | 7;
  v40 = swift_allocObject();
  v91 = v40;
  sub_190A5BD64(v34, v40 + v38);
  v106 = type metadata accessor for DetailsWalletTabView;
  sub_190A5D874(v37, v40 + ((v32 + v39 + v38) & ~v39), type metadata accessor for DetailsWalletTabView);
  v110 = v4;
  v41 = v4;
  v42 = v85;
  v84 = type metadata accessor for DetailsWalletTabView;
  sub_190A5E038(v41, v85, type metadata accessor for DetailsWalletTabView);
  v44 = v112;
  v43 = v113;
  v103 = v113[2];
  v104 = v113 + 2;
  v45 = v90;
  v46 = v94;
  v103(v90, v112, v94);
  v47 = (v39 + 16) & ~v39;
  v86 = v47 + v107;
  v105 = v47;
  v107 = *(v43 + 80);
  v48 = (v86 + v107) & ~v107;
  v49 = swift_allocObject();
  v87 = v49;
  sub_190A5D874(v42, v49 + v47, type metadata accessor for DetailsWalletTabView);
  v50 = v113[4];
  v113 += 4;
  v111 = v50;
  (v50)(v49 + v48, v45, v46);
  v51 = v110;
  v52 = v88;
  sub_190A5E038(v110, v88, type metadata accessor for DetailsWalletTabView);
  v53 = v95;
  v54 = v103;
  v103(v95, v44, v46);
  v55 = swift_allocObject();
  v90 = v55;
  sub_190A5D874(v52, v55 + v105, v106);
  (v111)(v55 + v48, v53, v46);
  v56 = v92;
  v57 = v84;
  sub_190A5E038(v51, v92, v84);
  v58 = v98;
  v54(v98, v112, v46);
  v59 = swift_allocObject();
  v95 = v59;
  v60 = v105;
  v61 = v56;
  v62 = v106;
  sub_190A5D874(v61, v59 + v105, v106);
  (v111)(v59 + v48, v58, v46);
  v63 = v97;
  sub_190A5E038(v110, v97, v57);
  v64 = v101;
  v103(v101, v112, v46);
  v65 = swift_allocObject();
  v112 = v65;
  sub_190A5D874(v63, v65 + v60, v62);
  (v111)(v65 + v48, v64, v46);
  v66 = v110;
  v67 = v99;
  sub_190A5E038(v110, v99, v57);
  v113 = swift_allocObject();
  sub_190A5D874(v67, v113 + v60, v62);
  v68 = v100;
  sub_190A5E038(v66, v100, v57);
  v69 = swift_allocObject();
  sub_190A5D874(v68, v69 + v60, v62);
  v70 = v102;
  sub_190A5E038(v66, v102, v57);
  v71 = swift_allocObject();
  sub_190A5D874(v70, v71 + v60, v62);
  sub_190D56500();
  sub_190D53C60();
  v72 = v66;
  v73 = v89;
  sub_190A5E038(v72, v89, v57);
  v74 = swift_allocObject();
  sub_190A5D874(v73, v74 + v60, v62);
  v75 = v93;
  *v93 = v96;
  v76 = v91;
  *(v75 + 1) = sub_190A5C80C;
  *(v75 + 2) = v76;
  v77 = v87;
  *(v75 + 3) = sub_190A5C92C;
  *(v75 + 4) = v77;
  v78 = v90;
  *(v75 + 5) = sub_190A5C95C;
  *(v75 + 6) = v78;
  v79 = v95;
  *(v75 + 7) = sub_190A5C98C;
  *(v75 + 8) = v79;
  v81 = v112;
  v80 = v113;
  *(v75 + 9) = sub_190A5CD14;
  *(v75 + 10) = v81;
  *(v75 + 11) = sub_190A5CD44;
  *(v75 + 12) = v80;
  *(v75 + 13) = sub_190A5CD70;
  *(v75 + 14) = v69;
  *(v75 + 15) = sub_190A5CD9C;
  *(v75 + 16) = v71;
  result = v116;
  v83 = v117;
  *(v75 + 168) = v118;
  *(v75 + 152) = v83;
  *(v75 + 136) = result;
  *(v75 + 23) = 0;
  *(v75 + 24) = sub_190A5D08C;
  *(v75 + 25) = v74;
  *(v75 + 26) = 0;
  *(v75 + 27) = 0;
  return result;
}

uint64_t sub_190A52F5C(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v6 = sub_190D540E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190A504E0(a3, a2, _s14descr1F03EACB9V10AttachmentVMa, _s14descr1F03EACB9V10AttachmentVMa, _s14descr1F03EACB9V10AttachmentVMa);
  if (v11)
  {
    return 0;
  }

  v13 = v10;
  sub_1909C99D4(v9);
  v14 = sub_190D540D0();
  v15 = *(v7 + 8);
  v15(v9, v6);
  if (v14)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_17;
    }

    result = v13 - v16;
    if (!__OFSUB__(v13, v16))
    {
      return result;
    }

    __break(1u);
  }

  if (a1 != 2)
  {
    goto LABEL_20;
  }

  if (!(v13 % v16))
  {
    return 0;
  }

  result = v13 - 1;
  if (!__OFSUB__(v13, 1))
  {
    return result;
  }

  __break(1u);
LABEL_17:
  result = v13 + v16;
  if (!__OFADD__(v13, v16))
  {
    return result;
  }

  __break(1u);
LABEL_20:
  sub_1909C99D4(v9);
  v17 = sub_190D540D0();
  v15(v9, v6);
  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  if (v13 % v16 == v18)
  {
    return 0;
  }

  result = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    return 0;
  }

  return result;
}

uint64_t sub_190A53164(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v5 = sub_190A504E0(a3, a2, _s8LocationVMa, _s8LocationVMa, _s8LocationVMa);
  if (v6)
  {
    return 0;
  }

  v8 = v5;
  result = type metadata accessor for DetailsLocationsTabView();
  v9 = *(v3 + *(result + 36));
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_16;
    }

    result = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      return result;
    }

    __break(1u);
  }

  if (a1 != 2)
  {
    goto LABEL_19;
  }

  if (!v9)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_31;
  }

  v9 = v8 % v9;
  if (!v9)
  {
    return 0;
  }

  result = v8 - 1;
  if (!__OFSUB__(v8, 1))
  {
    return result;
  }

  __break(1u);
LABEL_16:
  result = v8 + v9;
  if (!__OFADD__(v8, v9))
  {
    return result;
  }

  __break(1u);
LABEL_19:
  if (!v9)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v8 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_32;
  }

  if (__OFSUB__(v9, 1))
  {
    goto LABEL_30;
  }

  if (v8 % v9 == v9 - 1)
  {
    return 0;
  }

  result = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_190A532B0(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v10 = sub_190A504E0(a3, a2, a4, a5, a6);
  if (v11)
  {
    return 0;
  }

  v13 = v10;
  result = a7(0);
  v14 = *(v7 + *(result + 40));
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_16;
    }

    result = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      return result;
    }

    __break(1u);
  }

  if (a1 != 2)
  {
    goto LABEL_19;
  }

  if (!v14)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_31;
  }

  v14 = v13 % v14;
  if (!v14)
  {
    return 0;
  }

  result = v13 - 1;
  if (!__OFSUB__(v13, 1))
  {
    return result;
  }

  __break(1u);
LABEL_16:
  result = v13 + v14;
  if (!__OFADD__(v13, v14))
  {
    return result;
  }

  __break(1u);
LABEL_19:
  if (!v14)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v13 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_32;
  }

  if (__OFSUB__(v14, 1))
  {
    goto LABEL_30;
  }

  if (v13 % v14 == v14 - 1)
  {
    return 0;
  }

  result = v13 + 1;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  return result;
}

void sub_190A533D0(int a1, uint64_t a2)
{
  v68 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v65 = (&v56 - v11);
  v12 = sub_190D54190();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v67 = v2;
  sub_1909C9BDC(&v56 - v17);
  (*(v13 + 104))(v15, *MEMORY[0x1E697E7D8], v12);
  v19 = sub_190D54180();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  v60 = a2;
  v61 = v6;
  v62 = v9;
  if ((v19 & 1) == 0)
  {
LABEL_5:
    v63 = a1;
    goto LABEL_6;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v63 = 2;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v63 = 3;
LABEL_6:
  v21 = sub_190A5DFF0(&qword_1EAD590A0, type metadata accessor for DetailsAttachmentsTabView);
  v22 = *(v21 + 56);
  v23 = type metadata accessor for DetailsAttachmentsTabView();
  v66 = v22;
  v24 = v22(v23, v21);
  MEMORY[0x1EEE9AC00](v24);
  *(&v56 - 2) = v68;
  v25 = sub_190A5DFF0(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  *(&v56 - 1) = v25;
  swift_getKeyPath();
  v71 = v24;
  sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
  sub_190D51C20();

  v26 = *&v24[qword_1EAD629B8];
  sub_190D52690();

  v27 = *(v26 + 16);

  if (v27 == 1)
  {
    v28 = v66(v23, v21);
    MEMORY[0x1EEE9AC00](v28);
    *(&v56 - 2) = v68;
    *(&v56 - 1) = v25;
    swift_getKeyPath();
    v71 = v28;
    sub_190D51C20();

    v29 = *&v28[qword_1EAD629B8];
    sub_190D52690();

    if (*(v29 + 16))
    {
      v56 = *(v64 + 80);
      v57 = (v56 + 32) & ~v56;
      v30 = v62;
      sub_190A5E038(v29 + v57, v62, _s14descr1F03EACB9V10AttachmentVMa);

      v31 = v65;
      sub_190A5D874(v30, v65, _s14descr1F03EACB9V10AttachmentVMa);
      v62 = v23;
      v59 = v21 + 56;
      v32 = v66;
      v33 = v66(v23, v21);
      MEMORY[0x1EEE9AC00](v33);
      v34 = v68;
      *(&v56 - 2) = v68;
      *(&v56 - 1) = v25;
      v58 = v25;
      swift_getKeyPath();
      v71 = v33;
      sub_190D51C20();

      v35 = qword_1EAD62988;
      swift_beginAccess();
      v36 = *&v33[v35];
      sub_190D52690();

      v37 = sub_190A52F5C(v63, v36, v31);
      v39 = v38;

      if ((v39 & 1) != 0 || (v37 & 0x8000000000000000) != 0 || (v40 = v32(v62, v21), MEMORY[0x1EEE9AC00](v40), v41 = v58, *(&v56 - 2) = v34, *(&v56 - 1) = v41, swift_getKeyPath(), v70 = v40, sub_190D51C20(), v42 = v68, , v43 = qword_1EAD62988, swift_beginAccess(), v44 = *&v40[v43], sub_190D52690(), v40, v45 = *(v44 + 16), , v37 >= v45))
      {
        v55 = v31;
        goto LABEL_14;
      }

      v46 = v32(v62, v21);
      MEMORY[0x1EEE9AC00](v46);
      v47 = v58;
      *(&v56 - 2) = v42;
      *(&v56 - 1) = v47;
      swift_getKeyPath();
      v69 = v46;
      sub_190D51C20();

      v48 = qword_1EAD62988;
      swift_beginAccess();
      v49 = *&v46[v48];
      sub_190D52690();

      if (v37 < *(v49 + 16))
      {
        v50 = v57;
        v51 = v61;
        sub_190A5E038(v49 + v57 + *(v64 + 72) * v37, v61, _s14descr1F03EACB9V10AttachmentVMa);

        v52 = v32(v62, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CC8);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_190DD1D90;
        sub_190A5E038(v51, v53 + v50, _s14descr1F03EACB9V10AttachmentVMa);
        sub_1908EADC0(v53);

        MEMORY[0x1EEE9AC00](v54);
        *(&v56 - 2) = v60;
        *(&v56 - 1) = v51;
        sub_190D565A0();
        sub_190D53E40();

        sub_190A5E0A0(v65, _s14descr1F03EACB9V10AttachmentVMa);
        v55 = v51;
LABEL_14:
        sub_190A5E0A0(v55, _s14descr1F03EACB9V10AttachmentVMa);
        return;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_190A53C98(int a1, uint64_t a2)
{
  v68 = _s8LocationVMa(0);
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v65 = (&v56 - v11);
  v12 = sub_190D54190();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  v67 = v2;
  sub_190A54FAC(&v56 - v17);
  (*(v13 + 104))(v15, *MEMORY[0x1E697E7D8], v12);
  v19 = sub_190D54180();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  v60 = a2;
  v61 = v6;
  v62 = v9;
  if ((v19 & 1) == 0)
  {
LABEL_5:
    v63 = a1;
    goto LABEL_6;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v63 = 2;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v63 = 3;
LABEL_6:
  v21 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
  v22 = *(v21 + 56);
  v23 = type metadata accessor for DetailsLocationsTabView();
  v66 = v22;
  v24 = v22(v23, v21);
  MEMORY[0x1EEE9AC00](v24);
  *(&v56 - 2) = v68;
  v25 = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
  *(&v56 - 1) = v25;
  swift_getKeyPath();
  v71 = v24;
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  v26 = *&v24[qword_1EAD629B8];
  sub_190D52690();

  v27 = *(v26 + 16);

  if (v27 == 1)
  {
    v28 = v66(v23, v21);
    MEMORY[0x1EEE9AC00](v28);
    *(&v56 - 2) = v68;
    *(&v56 - 1) = v25;
    swift_getKeyPath();
    v71 = v28;
    sub_190D51C20();

    v29 = *&v28[qword_1EAD629B8];
    sub_190D52690();

    if (*(v29 + 16))
    {
      v56 = *(v64 + 80);
      v57 = (v56 + 32) & ~v56;
      v30 = v62;
      sub_190A5E038(v29 + v57, v62, _s8LocationVMa);

      v31 = v65;
      sub_190A5D874(v30, v65, _s8LocationVMa);
      v62 = v23;
      v59 = v21 + 56;
      v32 = v66;
      v33 = v66(v23, v21);
      MEMORY[0x1EEE9AC00](v33);
      v34 = v68;
      *(&v56 - 2) = v68;
      *(&v56 - 1) = v25;
      v58 = v25;
      swift_getKeyPath();
      v71 = v33;
      sub_190D51C20();

      v35 = qword_1EAD62988;
      swift_beginAccess();
      v36 = *&v33[v35];
      sub_190D52690();

      v37 = sub_190A53164(v63, v36, v31);
      v39 = v38;

      if ((v39 & 1) != 0 || (v37 & 0x8000000000000000) != 0 || (v40 = v32(v62, v21), MEMORY[0x1EEE9AC00](v40), v41 = v58, *(&v56 - 2) = v34, *(&v56 - 1) = v41, swift_getKeyPath(), v70 = v40, sub_190D51C20(), v42 = v68, , v43 = qword_1EAD62988, swift_beginAccess(), v44 = *&v40[v43], sub_190D52690(), v40, v45 = *(v44 + 16), , v37 >= v45))
      {
        v55 = v31;
        goto LABEL_14;
      }

      v46 = v32(v62, v21);
      MEMORY[0x1EEE9AC00](v46);
      v47 = v58;
      *(&v56 - 2) = v42;
      *(&v56 - 1) = v47;
      swift_getKeyPath();
      v69 = v46;
      sub_190D51C20();

      v48 = qword_1EAD62988;
      swift_beginAccess();
      v49 = *&v46[v48];
      sub_190D52690();

      if (v37 < *(v49 + 16))
      {
        v50 = v57;
        v51 = v61;
        sub_190A5E038(v49 + v57 + *(v64 + 72) * v37, v61, _s8LocationVMa);

        v52 = v32(v62, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53EE8);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_190DD1D90;
        sub_190A5E038(v51, v53 + v50, _s8LocationVMa);
        sub_1908EB33C(v53);

        MEMORY[0x1EEE9AC00](v54);
        *(&v56 - 2) = v60;
        *(&v56 - 1) = v51;
        sub_190D565A0();
        sub_190D53E40();

        sub_190A5E0A0(v65, _s8LocationVMa);
        v55 = v51;
LABEL_14:
        sub_190A5E0A0(v55, _s8LocationVMa);
        return;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void sub_190A54560(int a1, uint64_t a2)
{
  v67 = _s10WalletPassVMa(0);
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v56 - v10;
  v11 = sub_190D54190();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v68 = v2;
  sub_190C8A9E8(&v56 - v16);
  (*(v12 + 104))(v14, *MEMORY[0x1E697E7D8], v11);
  v18 = sub_190D54180();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v19(v17, v11);
  v60 = a2;
  v61 = v6;
  if (v18)
  {
    v20 = v67;
    if (a1 == 2)
    {
      v63 = 3;
    }

    else if (a1 == 3)
    {
      v63 = 2;
    }

    else
    {
      v63 = a1;
    }
  }

  else
  {
    v63 = a1;
    v20 = v67;
  }

  v21 = sub_190A5DFF0(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
  v22 = *(v21 + 56);
  v23 = type metadata accessor for DetailsWalletTabView();
  v66 = v21;
  v24 = v22(v23, v21);
  MEMORY[0x1EEE9AC00](v24);
  *(&v56 - 2) = v20;
  v25 = sub_190A5DFF0(&qword_1EAD555A0, _s10WalletPassVMa);
  *(&v56 - 1) = v25;
  swift_getKeyPath();
  v71 = v24;
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  v26 = *&v24[qword_1EAD629B8];
  sub_190D52690();

  v27 = *(v26 + 16);

  if (v27 == 1)
  {
    v28 = v22(v23, v66);
    MEMORY[0x1EEE9AC00](v28);
    *(&v56 - 2) = v20;
    *(&v56 - 1) = v25;
    swift_getKeyPath();
    v71 = v28;
    sub_190D51C20();

    v29 = *&v28[qword_1EAD629B8];
    sub_190D52690();

    if (!*(v29 + 16))
    {

      return;
    }

    v57 = *(v64 + 80);
    v58 = (v57 + 32) & ~v57;
    v30 = v62;
    sub_190A5E038(v29 + v58, v62, _s10WalletPassVMa);

    v31 = v65;
    sub_190A5D874(v30, v65, _s10WalletPassVMa);
    v62 = v23;
    v32 = v23;
    v33 = v66;
    v59 = v22;
    v34 = v22(v32, v66);
    MEMORY[0x1EEE9AC00](v34);
    *(&v56 - 2) = v20;
    *(&v56 - 1) = v25;
    v35 = v31;
    swift_getKeyPath();
    v71 = v34;
    sub_190D51C20();

    v36 = qword_1EAD62988;
    swift_beginAccess();
    v37 = *&v34[v36];
    sub_190D52690();

    v38 = sub_190A532B0(v63, v37, v35, _s10WalletPassVMa, _s10WalletPassVMa, _s10WalletPassVMa, type metadata accessor for DetailsWalletTabView);
    LOBYTE(v36) = v39;

    if (v36)
    {
      v40 = v35;
    }

    else
    {
      v41 = v35;
      v42 = v62;
      if ((v38 & 0x8000000000000000) != 0 || (v43 = v59(v62, v33), MEMORY[0x1EEE9AC00](v43), *(&v56 - 2) = v67, *(&v56 - 1) = v25, swift_getKeyPath(), v70 = v43, sub_190D51C20(), , v44 = qword_1EAD62988, swift_beginAccess(), v45 = *&v43[v44], sub_190D52690(), v43, v46 = *(v45 + 16), , v38 >= v46))
      {
        v40 = v41;
      }

      else
      {
        v47 = v59;
        v48 = v59(v42, v33);
        MEMORY[0x1EEE9AC00](v48);
        *(&v56 - 2) = v67;
        *(&v56 - 1) = v25;
        swift_getKeyPath();
        v69 = v48;
        sub_190D51C20();

        v49 = qword_1EAD62988;
        swift_beginAccess();
        v50 = *&v48[v49];
        sub_190D52690();

        if (v38 >= *(v50 + 16))
        {
          __break(1u);
          return;
        }

        v51 = v58;
        v52 = v61;
        sub_190A5E038(v50 + v58 + *(v64 + 72) * v38, v61, _s10WalletPassVMa);

        v53 = v47(v42, v33);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53EF0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_190DD1D90;
        sub_190A5E038(v52, v54 + v51, _s10WalletPassVMa);
        sub_1908EB168(v54);

        MEMORY[0x1EEE9AC00](v55);
        *(&v56 - 2) = v60;
        *(&v56 - 1) = v52;
        sub_190D565A0();
        sub_190D53E40();

        sub_190A5E0A0(v65, _s10WalletPassVMa);
        v40 = v52;
      }
    }

    sub_190A5E0A0(v40, _s10WalletPassVMa);
  }
}

uint64_t sub_190A54EBC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_190A54FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsLocationsTabView();
  sub_19022FD14(v1 + *(v10 + 20), v9, &qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190A551B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsLocationsTabView();
  sub_19022FD14(v1 + *(v10 + 24), v9, &qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190A553BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B030);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  type metadata accessor for DetailsLocationsTabView();
  v10 = a2;
  v11 = a1;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B038);
  sub_190233640(&qword_1EAD5B040, &qword_1EAD5B038);
  sub_190D52590();
  sub_190233640(&qword_1EAD5B048, &qword_1EAD5B030);
  sub_190D557E0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_190A5559C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_190D56500();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B050);
  return sub_190A555FC(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_190A555FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v56 = a2;
  v5 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v5);
  *&v65 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B058);
  v59 = *(v7 - 8);
  *&v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v55 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B060);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v55 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B068);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v55 - v17;
  type metadata accessor for DetailsLocationsTabView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  sub_190D55FF0();
  sub_190A51AA0(v56, v18, &v69);
  sub_19022EEA4(v18, &qword_1EAD576A0);
  sub_190D52690();
  sub_190D52610();
  v66 = a1;
  sub_190D54AC0();
  LODWORD(v68[0]) = 0;
  sub_190A5DFF0(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B070);
  sub_190A56FE4();
  v19 = v57;
  sub_190D565F0();
  v20 = sub_190D552A0();
  sub_190D525F0();
  v22 = v21;
  v23 = 0uLL;
  v65 = 0u;
  v24 = 0uLL;
  if ((v21 & 1) == 0)
  {
    sub_190D539C0();
    *(&v24 + 1) = v25;
    *(&v23 + 1) = v26;
  }

  v55 = v24;
  v56 = v23;
  v27 = v62;
  (*(v59 + 32))(v62, v19, v60);
  v28 = v27 + *(v58 + 36);
  *v28 = v20;
  v29 = v56;
  *(v28 + 24) = v55;
  *(v28 + 8) = v29;
  *(v28 + 40) = v22 & 1;
  v30 = sub_190D552D0();
  sub_190D525E0();
  v32 = v31;
  v33 = 0uLL;
  if ((v31 & 1) == 0)
  {
    sub_190D539C0();
    *(&v33 + 1) = v34;
    *(&v36 + 1) = v35;
    v65 = v36;
  }

  v60 = v33;
  sub_19081E40C(v27, v13, &qword_1EAD5B060);
  v37 = &v13[*(v61 + 36)];
  *v37 = v30;
  *(v37 + 24) = v60;
  *(v37 + 8) = v65;
  v37[40] = v32 & 1;
  v38 = v63;
  sub_19081E40C(v13, v63, &qword_1EAD5B068);
  v39 = v64;
  sub_190276698(v38, v64);
  v40 = v80;
  v67[10] = v79;
  v67[11] = v80;
  v41 = v81;
  v42 = v82;
  v67[12] = v81;
  v67[13] = v82;
  v43 = v75;
  v44 = v76;
  v67[6] = v75;
  v67[7] = v76;
  v45 = v77;
  v46 = v78;
  v67[8] = v77;
  v67[9] = v78;
  v47 = v71;
  v48 = v72;
  v67[2] = v71;
  v67[3] = v72;
  v49 = v73;
  v50 = v74;
  v67[4] = v73;
  v67[5] = v74;
  v51 = v69;
  v52 = v70;
  v67[0] = v69;
  v67[1] = v70;
  a3[10] = v79;
  a3[11] = v40;
  a3[12] = v41;
  a3[13] = v42;
  a3[6] = v43;
  a3[7] = v44;
  a3[8] = v45;
  a3[9] = v46;
  a3[2] = v47;
  a3[3] = v48;
  a3[4] = v49;
  a3[5] = v50;
  *a3 = v51;
  a3[1] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B0B8);
  sub_190276698(v39, a3 + *(v53 + 48));
  sub_19022FD14(v67, v68, &qword_1EAD576C0);
  sub_190276708(v38);
  sub_190276708(v39);
  v68[10] = v79;
  v68[11] = v80;
  v68[12] = v81;
  v68[13] = v82;
  v68[6] = v75;
  v68[7] = v76;
  v68[8] = v77;
  v68[9] = v78;
  v68[2] = v71;
  v68[3] = v72;
  v68[4] = v73;
  v68[5] = v74;
  v68[0] = v69;
  v68[1] = v70;
  return sub_19022EEA4(v68, &qword_1EAD576C0);
}

uint64_t sub_190A55CC4(uint64_t a1)
{
  v2 = type metadata accessor for DetailsLocationsTabView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v12[3] = *(a1 + *(v5 + 40) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B0C0);
  sub_190D55FD0();
  v12[0] = _s8LocationVMa(0);
  v12[1] = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
  swift_getKeyPath();
  v12[2] = v13;
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  v6 = qword_1EAD62988;
  swift_beginAccess();
  v7 = *&v13[v6];
  sub_190D52690();

  v13 = v7;
  swift_getKeyPath();
  sub_190A5E038(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsLocationsTabView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_190A5D874(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for DetailsLocationsTabView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_190A5B320;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B088);
  sub_190A5B410();
  sub_190A57068();
  return sub_190D56280();
}

char *sub_190A55FAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v73 = a1;
  v72 = a4;
  v6 = _s8LocationVMa(0);
  v91 = *(v6 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v71 - v9;
  v10 = type metadata accessor for DetailsLocationsTabView();
  v11 = v10 - 8;
  v87 = *(v10 - 8);
  v86 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B0A0);
  MEMORY[0x1EEE9AC00](v83);
  v14 = &v71 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B098) - 8;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v71 - v15;
  v77 = a2;
  v94 = _s8LocationVMa;
  sub_190A5E038(a2, v14, _s8LocationVMa);
  v16 = (a3 + *(v11 + 40));
  v18 = *v16;
  v17 = v16[1];
  *&v104 = v18;
  *(&v104 + 1) = v17;
  v19 = v18;
  v20 = v17;
  v75 = v17;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B0C0);
  sub_190D55FD0();
  v21 = v101[0];
  v80 = *(v101[0] + qword_1EAD629A0);
  v22 = v80;

  *&v104 = v19;
  *(&v104 + 1) = v20;
  v23 = v19;
  sub_190D55FD0();
  v24 = v101[0];
  v99 = v6;
  v79 = v6;
  v100 = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
  v25 = v100;
  v93 = v100;
  swift_getKeyPath();
  *&v104 = v24;
  v81 = sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  v26 = *&v24[qword_1EAD629B8];
  sub_190D52690();

  v76 = sub_190A4FC2C(a2, v26, _s8LocationVMa, _s8LocationVMa, _s8LocationVMa);

  v78 = v23;
  v27 = v75;
  *&v104 = v23;
  *(&v104 + 1) = v75;
  sub_190D55FD0();
  v28 = v101[0];
  v97 = v6;
  v98 = v25;
  swift_getKeyPath();
  *&v104 = v28;
  sub_190D51C20();

  LOBYTE(v24) = v28[qword_1EAD629B0];

  *&v104 = v23;
  *(&v104 + 1) = v27;
  v29 = v27;
  sub_190D55FD0();
  LOBYTE(v28) = *(v101[0] + qword_1EAD62980);

  v30 = _s8CellViewVMa();
  v31 = v30[9];
  v101[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57778);
  sub_190D55FC0();
  *&v14[v31] = v104;
  *&v14[v30[8]] = v80;
  v14[v30[5]] = v76;
  v14[v30[6]] = v24;
  v14[v30[7]] = v28;
  v14[*(v83 + 36)] = 0;
  v32 = v84;
  sub_190A5E038(v82, v84, type metadata accessor for DetailsLocationsTabView);
  v33 = v77;
  v34 = v88;
  sub_190A5E038(v77, v88, v94);
  v35 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v36 = (v86 + *(v91 + 80) + v35) & ~*(v91 + 80);
  v37 = swift_allocObject();
  sub_190A5D874(v32, v37 + v35, type metadata accessor for DetailsLocationsTabView);
  sub_190A5D874(v34, v37 + v36, _s8LocationVMa);
  sub_190A571EC();
  v38 = v92;
  v39 = v85;
  sub_190D557E0();

  sub_19022EEA4(v14, &qword_1EAD5B0A0);
  v40 = v79;
  v41 = v38 + *(v89 + 44);
  v42 = v29;
  v43 = v78;
  sub_19022FD14(v33 + *(v79 + 28), v41, &unk_1EAD55F20);
  KeyPath = swift_getKeyPath();
  *(v41 + *(type metadata accessor for DetailsDoubleTapGestureModifier() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  swift_storeEnumTagMultiPayload();
  *&v104 = v43;
  *(&v104 + 1) = v42;
  sub_190D55FD0();
  v45 = v101[0];
  v95 = v40;
  v96 = v93;
  swift_getKeyPath();
  *&v104 = v45;
  sub_190D51C20();

  v46 = *&v45[qword_1EAD629B8];
  sub_190D52690();

  v47 = sub_1908A24B8(v46);

  sub_190A5E038(v33, v39, v94);
  result = CKFrameworkBundle();
  if (result)
  {
    v49 = result;
    v50 = sub_190D56ED0();
    v51 = sub_190D56ED0();
    v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

    v94 = sub_190D56F10();
    v91 = v53;

    *&v104 = v43;
    *(&v104 + 1) = v42;
    sub_190D55FD0();
    v54 = v101[0];
    v55 = *(v101[0] + qword_1EAD629A0);
    v56 = v55;

    v105 = v40;
    v106 = v93;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
    sub_190A5E038(v39, boxed_opaque_existential_1, _s8LocationVMa);
    v58 = *(v47 + 16);
    v59 = v39;
    if (!v58)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C30);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_190DD1D90;
      sub_19083B854(&v104, v47 + 32);
      v58 = *(v47 + 16);
    }

    sub_190D52690();
    result = (v47 + 32);
    v60 = -v58;
    v61 = -1;
    while (1)
    {
      v62 = v60 + v61;
      if (v60 + v61 == -1)
      {
LABEL_8:

        sub_190A5E0A0(v59, _s8LocationVMa);
        __swift_destroy_boxed_opaque_existential_0(&v104);
        v67 = v72;
        sub_19081E40C(v92, v72, &qword_1EAD5B098);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B088);
        v68 = v67 + *(result + 9);
        v69 = v73;
        *v68 = v47;
        *(v68 + 8) = v69;
        v70 = v91;
        *(v68 + 16) = v94;
        *(v68 + 24) = v70;
        *(v68 + 32) = v55;
        *(v68 + 40) = v62 == -1;
        return result;
      }

      if (++v61 >= *(v47 + 16))
      {
        break;
      }

      v63 = result + 40;
      sub_19083B854(result, v101);
      v64 = v102;
      v65 = v103;
      __swift_project_boxed_opaque_existential_1(v101, v102);
      v66 = (*(v65 + 64))(v64, v65);
      __swift_destroy_boxed_opaque_existential_0(v101);
      result = v63;
      if (v66)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_190A56A00(uint64_t a1, void *a2)
{
  v27 = a2;
  v2 = sub_190D53DF0();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_190D515F0();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
  v10 = *(v9 + 56);
  v11 = type metadata accessor for DetailsLocationsTabView();
  v12 = v10(v11, v9);
  v13 = _s8LocationVMa(0);
  v28 = v13;
  v29 = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
  swift_getKeyPath();
  v30 = v12;
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  v14 = v12[qword_1EAD629B0];

  if (v14 == 1)
  {
    v15 = v10(v11, v9);
    sub_190A4E900(v27);
  }

  else
  {
    sub_19022FD14(v27 + *(v13 + 28), v6, &unk_1EAD55F20);
    v17 = v25;
    v16 = v26;
    if ((*(v25 + 48))(v6, 1, v26) == 1)
    {
      sub_19022EEA4(v6, &unk_1EAD55F20);
    }

    else
    {
      v18 = v21;
      (*(v17 + 32))(v21, v6, v16);
      v19 = v22;
      sub_190A551B4(v22);
      sub_190D53DE0();
      (*(v23 + 8))(v19, v24);
      (*(v17 + 8))(v18, v16);
    }
  }
}

uint64_t sub_190A56DC0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190A5E038(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsLocationsTabView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_190A5D874(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DetailsLocationsTabView);
  *a2 = sub_190A56F54;
  a2[1] = v7;
  return result;
}

uint64_t sub_190A56EE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B0C0);
  sub_190D55FD0();
  return v1;
}

uint64_t sub_190A56F54(uint64_t a1)
{
  v3 = *(type metadata accessor for DetailsLocationsTabView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_190A553BC(a1, v4);
}

unint64_t sub_190A56FE4()
{
  result = qword_1EAD5B078;
  if (!qword_1EAD5B078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B070);
    sub_190A57068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B078);
  }

  return result;
}

unint64_t sub_190A57068()
{
  result = qword_1EAD5B080;
  if (!qword_1EAD5B080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B088);
    sub_190A570F4();
    sub_190955DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B080);
  }

  return result;
}

unint64_t sub_190A570F4()
{
  result = qword_1EAD5B090;
  if (!qword_1EAD5B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B0A0);
    sub_190A571EC();
    swift_getOpaqueTypeConformance2();
    sub_190A5DFF0(&qword_1EAD57748, type metadata accessor for DetailsDoubleTapGestureModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B090);
  }

  return result;
}

unint64_t sub_190A571EC()
{
  result = qword_1EAD5B0A8;
  if (!qword_1EAD5B0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B0A0);
    sub_190A5DFF0(&qword_1EAD5B0B0, _s8CellViewVMa);
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B0A8);
  }

  return result;
}

uint64_t sub_190A572D4(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = _s4LinkVMa(0);
  v24 = *(v27 - 8);
  v2 = MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x193AF1A80]();
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_19022EEA4(v11, &unk_1EAD55F20);
  if (v14 == 1)
  {
    v15 = sub_190A5DFF0(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView);
    v16 = *(v15 + 56);
    v17 = type metadata accessor for DetailsLinksTabView();
    v18 = v16(v17, v15);
    MEMORY[0x1EEE9AC00](v18);
    v19 = v27;
    *(&v23 - 2) = v27;
    *(&v23 - 1) = sub_190A5DFF0(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();
    v28 = v18;
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C20();

    v20 = *&v18[qword_1EAD629B8];
    sub_190D52690();

    if (*(v20 + 16))
    {
      v21 = v25;
      sub_190A5E038(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v25, _s4LinkVMa);

      sub_190A5D874(v21, v5, _s4LinkVMa);
      sub_19022FD14(&v5[*(v19 + 28)], v9, &unk_1EAD55F20);
      sub_190D56200();
      return sub_190A5E0A0(v5, _s4LinkVMa);
    }

    else
    {
    }
  }

  else
  {
    (*(v13 + 56))(v9, 1, 1, v12);
    return sub_190D56200();
  }
}

uint64_t sub_190A57700(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = _s14descr1F03EACB9V10AttachmentVMa(0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x193AF1A80]();
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_19022EEA4(v11, &unk_1EAD55F20);
  if (v14 == 1)
  {
    v15 = sub_190A5DFF0(&qword_1EAD590A0, type metadata accessor for DetailsAttachmentsTabView);
    v16 = *(v15 + 56);
    v17 = type metadata accessor for DetailsAttachmentsTabView();
    v18 = v16(v17, v15);
    MEMORY[0x1EEE9AC00](v18);
    v19 = v27;
    *(&v23 - 2) = v27;
    *(&v23 - 1) = sub_190A5DFF0(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();
    v28 = v18;
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C20();

    v20 = *&v18[qword_1EAD629B8];
    sub_190D52690();

    if (*(v20 + 16))
    {
      v21 = v25;
      sub_190A5E038(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v25, _s14descr1F03EACB9V10AttachmentVMa);

      sub_190A5D874(v21, v5, _s14descr1F03EACB9V10AttachmentVMa);
      sub_19022FD14(&v5[*(v19 + 28)], v8, &unk_1EAD55F20);
      sub_190D56200();
      return sub_190A5E0A0(v5, _s14descr1F03EACB9V10AttachmentVMa);
    }

    else
    {
    }
  }

  else
  {
    (*(v13 + 56))(v8, 1, 1, v12);
    return sub_190D56200();
  }
}

uint64_t sub_190A57B2C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = _s8LocationVMa(0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x193AF1A80]();
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_19022EEA4(v11, &unk_1EAD55F20);
  if (v14 == 1)
  {
    v15 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
    v16 = *(v15 + 56);
    v17 = type metadata accessor for DetailsLocationsTabView();
    v18 = v16(v17, v15);
    MEMORY[0x1EEE9AC00](v18);
    v19 = v27;
    *(&v23 - 2) = v27;
    *(&v23 - 1) = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();
    v28 = v18;
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C20();

    v20 = *&v18[qword_1EAD629B8];
    sub_190D52690();

    if (*(v20 + 16))
    {
      v21 = v25;
      sub_190A5E038(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v25, _s8LocationVMa);

      sub_190A5D874(v21, v5, _s8LocationVMa);
      sub_19022FD14(&v5[*(v19 + 28)], v8, &unk_1EAD55F20);
      sub_190D56200();
      return sub_190A5E0A0(v5, _s8LocationVMa);
    }

    else
    {
    }
  }

  else
  {
    (*(v13 + 56))(v8, 1, 1, v12);
    return sub_190D56200();
  }
}

uint64_t sub_190A57F58(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v27 = _s10WalletPassVMa(0);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x193AF1A80]();
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_19022EEA4(v11, &unk_1EAD55F20);
  if (v14 == 1)
  {
    v15 = sub_190A5DFF0(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
    v16 = *(v15 + 56);
    v17 = type metadata accessor for DetailsWalletTabView();
    v18 = v16(v17, v15);
    MEMORY[0x1EEE9AC00](v18);
    v19 = v27;
    *(&v23 - 2) = v27;
    *(&v23 - 1) = sub_190A5DFF0(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();
    v28 = v18;
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C20();

    v20 = *&v18[qword_1EAD629B8];
    sub_190D52690();

    if (*(v20 + 16))
    {
      v21 = v25;
      sub_190A5E038(v20 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v25, _s10WalletPassVMa);

      sub_190A5D874(v21, v5, _s10WalletPassVMa);
      sub_19022FD14(&v5[*(v19 + 28)], v8, &unk_1EAD55F20);
      sub_190D56200();
      return sub_190A5E0A0(v5, _s10WalletPassVMa);
    }

    else
    {
    }
  }

  else
  {
    (*(v13 + 56))(v8, 1, 1, v12);
    return sub_190D56200();
  }
}

void sub_190A58384()
{
  v0 = sub_190A5DFF0(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView);
  v1 = *(v0 + 56);
  v2 = type metadata accessor for DetailsLinksTabView();
  v3 = v1(v2, v0);
  sub_1908EAF94(MEMORY[0x1E69E7CC0]);
}

void sub_190A58438()
{
  v0 = sub_190A5DFF0(&qword_1EAD590A0, type metadata accessor for DetailsAttachmentsTabView);
  v1 = *(v0 + 56);
  v2 = type metadata accessor for DetailsAttachmentsTabView();
  v3 = v1(v2, v0);
  sub_1908EADC0(MEMORY[0x1E69E7CC0]);
}

void sub_190A584EC()
{
  v0 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
  v1 = *(v0 + 56);
  v2 = type metadata accessor for DetailsLocationsTabView();
  v3 = v1(v2, v0);
  sub_1908EB33C(MEMORY[0x1E69E7CC0]);
}

void sub_190A585A0()
{
  v0 = sub_190A5DFF0(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
  v1 = *(v0 + 56);
  v2 = type metadata accessor for DetailsWalletTabView();
  v3 = v1(v2, v0);
  sub_1908EB168(MEMORY[0x1E69E7CC0]);
}

void sub_190A58654(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsLinksTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C0] == v1)
  {
    v5[qword_1EAD629C0] = v1;
  }

  else
  {
    v7 = MEMORY[0x1EEE9AC00](v5);
    _s4LinkVMa(0);
    sub_190A5DFF0(&qword_1EAD555A8, _s4LinkVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C10();
  }
}

void sub_190A5886C(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD590A0, type metadata accessor for DetailsAttachmentsTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsAttachmentsTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C0] == v1)
  {
    v5[qword_1EAD629C0] = v1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = v6;
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_190A5DFF0(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C10();
  }
}

void sub_190A58A84(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsLocationsTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C0] == v1)
  {
    v5[qword_1EAD629C0] = v1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = v6;
    _s8LocationVMa(0);
    sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C10();
  }
}

void sub_190A58C9C(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsWalletTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C0] == v1)
  {
    v5[qword_1EAD629C0] = v1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = v6;
    _s10WalletPassVMa(0);
    sub_190A5DFF0(&qword_1EAD555A0, _s10WalletPassVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C10();
  }
}

void sub_190A58EB4(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsLinksTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C8] == v1)
  {
    v5[qword_1EAD629C8] = v1;
  }

  else
  {
    v7 = MEMORY[0x1EEE9AC00](v5);
    _s4LinkVMa(0);
    sub_190A5DFF0(&qword_1EAD555A8, _s4LinkVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C10();
  }
}

void sub_190A590CC(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD590A0, type metadata accessor for DetailsAttachmentsTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsAttachmentsTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C8] == v1)
  {
    v5[qword_1EAD629C8] = v1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = v6;
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_190A5DFF0(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C10();
  }
}

void sub_190A592E4(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsLocationsTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C8] == v1)
  {
    v5[qword_1EAD629C8] = v1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = v6;
    _s8LocationVMa(0);
    sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C10();
  }
}

void sub_190A594FC(char a1)
{
  v1 = a1 & 1;
  v2 = sub_190A5DFF0(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
  v3 = *(v2 + 56);
  v4 = type metadata accessor for DetailsWalletTabView();
  v5 = v3(v4, v2);
  if (v5[qword_1EAD629C8] == v1)
  {
    v5[qword_1EAD629C8] = v1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = v6;
    _s10WalletPassVMa(0);
    sub_190A5DFF0(&qword_1EAD555A0, _s10WalletPassVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C10();
  }
}

uint64_t sub_190A59714(uint64_t a1)
{
  v2 = type metadata accessor for DetailsLinksTabView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190A5E038(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsLinksTabView);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_190A5D874(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for DetailsLinksTabView);
  sub_1908590EC(0, 0, v7, &unk_190DEA598, v10);
}

uint64_t sub_190A598D8(uint64_t a1)
{
  v2 = type metadata accessor for DetailsAttachmentsTabView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190A5E038(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsAttachmentsTabView);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_190A5D874(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for DetailsAttachmentsTabView);
  sub_1908590EC(0, 0, v7, &unk_190DEA5B0, v10);
}

uint64_t sub_190A59A9C(uint64_t a1)
{
  v2 = type metadata accessor for DetailsLocationsTabView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190A5E038(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsLocationsTabView);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_190A5D874(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for DetailsLocationsTabView);
  sub_1908590EC(0, 0, v7, &unk_190DEA4F0, v10);
}

uint64_t sub_190A59C60(uint64_t a1)
{
  v2 = type metadata accessor for DetailsWalletTabView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190A5E038(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsWalletTabView);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_190A5D874(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for DetailsWalletTabView);
  sub_1908590EC(0, 0, v7, &unk_190DEA588, v10);
}

uint64_t sub_190A59E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_190D58420();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190A59EE4, 0, 0);
}

uint64_t sub_190A59EE4()
{
  sub_190D587F0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_190A59FB0;

  return sub_190A5B780(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_190A59FB0()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_190A5E150;
  }

  else
  {
    v5 = sub_190A5A120;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190A5A120()
{
  v1 = sub_190A5DFF0(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView);
  v2 = *(v1 + 56);
  v3 = type metadata accessor for DetailsLinksTabView();
  v4 = v2(v3, v1);
  v5 = v4;
  if (*(v4 + qword_1EAD629D0) == 1)
  {
    *(v4 + qword_1EAD629D0) = 1;
  }

  else
  {
    v6 = swift_task_alloc();
    *v6 = _s4LinkVMa(0);
    v6[1] = sub_190A5DFF0(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();

    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = 1;
    *(v0 + 16) = v5;
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C10();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_190A5A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_190D58420();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190A5A3F0, 0, 0);
}

uint64_t sub_190A5A3F0()
{
  sub_190D587F0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_190A5A4BC;

  return sub_190A5B780(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_190A5A4BC()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_190A5E150;
  }

  else
  {
    v5 = sub_190A5A62C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190A5A62C()
{
  v1 = sub_190A5DFF0(&qword_1EAD590A0, type metadata accessor for DetailsAttachmentsTabView);
  v2 = *(v1 + 56);
  v3 = type metadata accessor for DetailsAttachmentsTabView();
  v4 = v2(v3, v1);
  v5 = v4;
  if (*(v4 + qword_1EAD629D0) == 1)
  {
    *(v4 + qword_1EAD629D0) = 1;
  }

  else
  {
    v6 = swift_task_alloc();
    *v6 = _s14descr1F03EACB9V10AttachmentVMa(0);
    v6[1] = sub_190A5DFF0(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();

    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = 1;
    *(v0 + 16) = v5;
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C10();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_190A5A83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_190D58420();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190A5A8FC, 0, 0);
}

uint64_t sub_190A5A8FC()
{
  sub_190D587F0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_190A5A9C8;

  return sub_190A5B780(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_190A5A9C8()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_190A5AD48;
  }

  else
  {
    v5 = sub_190A5AB38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190A5AB38()
{
  v1 = sub_190A5DFF0(&qword_1EAD5B0F0, type metadata accessor for DetailsLocationsTabView);
  v2 = *(v1 + 56);
  v3 = type metadata accessor for DetailsLocationsTabView();
  v4 = v2(v3, v1);
  v5 = v4;
  if (*(v4 + qword_1EAD629D0) == 1)
  {
    *(v4 + qword_1EAD629D0) = 1;
  }

  else
  {
    v6 = swift_task_alloc();
    *v6 = _s8LocationVMa(0);
    v6[1] = sub_190A5DFF0(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();

    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = 1;
    *(v0 + 16) = v5;
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C10();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_190A5AD48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A5ADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_190D58420();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190A5AE6C, 0, 0);
}

uint64_t sub_190A5AE6C()
{
  sub_190D587F0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_190A5AF38;

  return sub_190A5B780(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_190A5AF38()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_190A5E150;
  }

  else
  {
    v5 = sub_190A5B0A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190A5B0A8()
{
  v1 = sub_190A5DFF0(&qword_1EAD5B108, type metadata accessor for DetailsWalletTabView);
  v2 = *(v1 + 56);
  v3 = type metadata accessor for DetailsWalletTabView();
  v4 = v2(v3, v1);
  v5 = v4;
  if (*(v4 + qword_1EAD629D0) == 1)
  {
    *(v4 + qword_1EAD629D0) = 1;
  }

  else
  {
    v6 = swift_task_alloc();
    *v6 = _s10WalletPassVMa(0);
    v6[1] = sub_190A5DFF0(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();

    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = 1;
    *(v0 + 16) = v5;
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C10();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_190A5B2B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190CD25C0();

  return sub_190D52690();
}

char *sub_190A5B320@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for DetailsLocationsTabView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_190A55FAC(a1, a2, v8, a3);
}

uint64_t sub_190A5B3A8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B0E8);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_190A5B410()
{
  result = qword_1EAD5B0D0;
  if (!qword_1EAD5B0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B0C8);
    sub_190233640(&qword_1EAD5B0D8, &qword_1EAD5B0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B0D0);
  }

  return result;
}

void sub_190A5B4C0()
{
  v1 = *(type metadata accessor for DetailsLocationsTabView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s8LocationVMa(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_190A56A00(v0 + v2, v5);
}

uint64_t sub_190A5B58C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0EB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190A5B5E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0F14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190A5B63C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0F70();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190A5B6B8(uint64_t a1)
{
  v2 = sub_190D53DF0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_190D54760();
}

uint64_t sub_190A5B780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_190D58400();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_190A5B880, 0, 0);
}

uint64_t sub_190A5B880()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_190D58420();
  v5 = sub_190A5DFF0(&qword_1EAD5B0F8, MEMORY[0x1E69E8820]);
  sub_190D587D0();
  sub_190A5DFF0(&qword_1EAD5B100, MEMORY[0x1E69E87E8]);
  sub_190D58430();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_190A5BA10;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_190A5BA10()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_190A5BBCC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_190A5BBCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A5BCEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_190D581C0();
  }

  return sub_190D58310();
}

uint64_t sub_190A5BD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A5BE60(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  v6 = *(a1(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_190D54270() - 8);
  return a3(a2, v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)));
}

uint64_t objectdestroy_40Tm()
{
  v1 = type metadata accessor for DetailsLocationsTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v19 = sub_190D54270();
  v4 = *(v19 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D540E0();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D54190();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  v12 = v6 + v1[10];
  v13 = sub_190D515F0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v15 = (v3 + v17 + v5) & ~v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  (*(v4 + 8))(v0 + v15, v19);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v18, v2 | v5 | 7);
}

uint64_t sub_190A5C384(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for DetailsLocationsTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D540E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_190D54190();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53DF0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[10];
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190A5C704(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailsLocationsTabView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190A5A83C(a1, v6, v7, v1 + v5);
}

uint64_t sub_190A5C838(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(v2 + v5, v8);
}

uint64_t objectdestroy_85Tm_0()
{
  v1 = type metadata accessor for DetailsWalletTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_190D54270();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v19 = *(v6 + 64);
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D540E0();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_190D53DF0();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  else
  {
  }

  v14 = v8 + v1[11];
  v15 = sub_190D515F0();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  v17 = (v3 + v4 + v7) & ~v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  (*(v6 + 8))(v0 + v17, v5);

  return MEMORY[0x1EEE6BDD0](v0, v17 + v19, v2 | v7 | 7);
}

uint64_t objectdestroy_97Tm()
{
  v1 = type metadata accessor for DetailsWalletTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D540E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_190D54190();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53DF0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v5 + v1[11];
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190A5D0B8(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailsWalletTabView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190A5ADAC(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_118Tm()
{
  v1 = type metadata accessor for DetailsLinksTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_190D54270();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v20 = *(v6 + 64);
  v8 = v0 + v3;

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D540E0();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D54190();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_190D53DF0();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  else
  {
  }

  v15 = v8 + v1[11];
  v16 = sub_190D515F0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v18 = (v3 + v4 + v7) & ~v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  (*(v6 + 8))(v0 + v18, v5);

  return MEMORY[0x1EEE6BDD0](v0, v18 + v20, v2 | v7 | 7);
}

uint64_t sub_190A5D6A8(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailsLinksTabView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190A59E24(a1, v6, v7, v1 + v5);
}

uint64_t sub_190A5D7B4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_190D58760() & 1;
  }
}

uint64_t sub_190A5D80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_190A5D874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_151Tm()
{
  v1 = type metadata accessor for DetailsAttachmentsTabView();
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = sub_190D54270();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v20 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);

  v7 = v1[5];
  v8 = sub_190D52BC0();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53DF0();
    (*(*(v10 - 8) + 8))(v6 + v9, v10);
  }

  else
  {
  }

  v11 = v6 + v1[8];
  v12 = sub_190D515F0();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v14 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_190D540E0();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  v16 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_190D54190();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
  }

  else
  {
  }

  v18 = (((v2 + 16) & ~v2) + v21 + v5) & ~v5;
  (*(v4 + 8))(v0 + v18, v3);

  return MEMORY[0x1EEE6BDD0](v0, v18 + v20, v2 | v5 | 7);
}

uint64_t sub_190A5DE3C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_190A5DEB8(uint64_t a1)
{
  v4 = *(type metadata accessor for DetailsAttachmentsTabView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190A5A330(a1, v6, v7, v1 + v5);
}

uint64_t sub_190A5DFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190A5E038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190A5E0A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8CellViewVMa()
{
  result = qword_1EAD5B120;
  if (!qword_1EAD5B120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A5E1FC()
{
  _s8LocationVMa(319);
  if (v0 <= 0x3F)
  {
    sub_190A5E2A4();
    if (v1 <= 0x3F)
    {
      sub_190A5E2FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190A5E2A4()
{
  if (!qword_1EAD5B130)
  {
    type metadata accessor for DetailsViewCoordinator();
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5B130);
    }
  }
}

void sub_190A5E2FC()
{
  if (!qword_1EAD5B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57778);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5B138);
    }
  }
}

uint64_t sub_190A5E37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B150);
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v76 - v4;
  v94 = _s8LocationVMa(0);
  v86 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v87 = v5;
  v88 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B158);
  MEMORY[0x1EEE9AC00](v89);
  v7 = &v76 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B160);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v76 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B168);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v76 - v9;
  v85 = sub_190D543C0();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B170);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B178);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - v16;
  v18 = _s8CellViewVMa();
  v19 = a1;
  v100 = *(a1 + v18[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B148);
  sub_190D55FD0();
  v20 = v99;
  if (v99)
  {
    v85 = v15;
    *(v7 + 3) = v94;
    *(v7 + 4) = sub_190A5FDF4(&qword_1EAD55598, _s8LocationVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
    v77 = _s8LocationVMa;
    sub_190A5F9C8(a1, boxed_opaque_existential_1, _s8LocationVMa);
    v93 = v18;
    v22 = *(a1 + v18[8]);
    *(v7 + 5) = v20;
    *(v7 + 6) = v22;
    LODWORD(v84) = *(a1 + v18[6]);
    v7[56] = v84 ^ 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B220);
    sub_190D544B0();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_190DD1DA0;
    v24 = v22;
    v82 = v20;
    sub_190D54490();
    sub_190D544A0();
    *&v100 = v23;
    v25 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B1D0) + 36)];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B1F8);
    sub_190A5FDF4(&qword_1EAD5B228, MEMORY[0x1E697ECE8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B230);
    sub_190233640(&qword_1EAD5B238, &qword_1EAD5B230);
    sub_190D58170();
    sub_190D525D0();
    v28 = v27;
    v81 = sub_190D543E0();
    v29 = *(v81 + 20);
    v30 = *MEMORY[0x1E697F468];
    v31 = sub_190D54A20();
    v32 = *(v31 - 8);
    v33 = *(v32 + 104);
    v80 = v30;
    v79 = v32 + 104;
    v78 = v33;
    v33(&v25[v29], v30, v31);
    *v25 = v28;
    *(v25 + 1) = v28;
    v25[*(v26 + 36)] = 0;
    v34 = v88;
    v7[*(v89 + 36)] = 0;
    v35 = v77;
    sub_190A5F9C8(v19, v34, v77);
    v36 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v37 = swift_allocObject();
    sub_190A5FA30(v34, v37 + v36, v35);
    sub_190A5F65C();
    v38 = v90;
    sub_190D55BB0();

    sub_19022EEA4(v7, &qword_1EAD5B158);
    v39 = sub_190D564C0();
    v89 = v40;
    v41 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B1B8) + 36)];
    v42 = *(v19 + v93[7]);
    v43 = v19;
    v44 = v38;
    if (v42)
    {
      v45 = *(v43 + *(v94 + 32));
      sub_190D52BD0();
      swift_allocObject();
      v46 = v45;
      sub_190D52BE0();
      v47 = v83;
      sub_190D52BF0();
      sub_190D525C0();
      LOBYTE(v45) = sub_190D552B0();
      sub_190D539C0();
      v48 = v92;
      v49 = v47 + *(v92 + 36);
      *v49 = v45;
      *(v49 + 8) = v50;
      *(v49 + 16) = v51;
      *(v49 + 24) = v52;
      *(v49 + 32) = v53;
      *(v49 + 40) = 0;
      sub_190A5FAF8(v47, v41);
      v54 = 0;
      v55 = v97;
      v56 = v96;
    }

    else
    {
      v54 = 1;
      v55 = v97;
      v56 = v96;
      v48 = v92;
    }

    (*(v91 + 56))(v41, v54, 1, v48);
    v66 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B208) + 36));
    v67 = v89;
    *v66 = v39;
    v66[1] = v67;
    sub_190D525D0();
    v69 = v68;
    v70 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B1A8) + 36));
    v78(&v70[*(v81 + 20)], v80, v31);
    *v70 = v69;
    *(v70 + 1) = v69;
    *&v70[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55A00) + 36)] = 256;
    v71 = *(v43 + v93[5]);
    v72 = sub_190D564D0();
    v73 = v44 + *(v55 + 36);
    *v73 = v71;
    *(v73 + 1) = v84;
    *(v73 + 8) = v72;
    *(v73 + 16) = v74;
    sub_19022FD14(v44, v56, &qword_1EAD5B160);
    swift_storeEnumTagMultiPayload();
    sub_190A5F424();
    sub_190A5F900();
    sub_190D54C50();

    v64 = v44;
    v65 = &qword_1EAD5B160;
  }

  else
  {
    sub_190D525D0();
    v58 = v57;
    v59 = *(sub_190D543E0() + 20);
    v60 = *MEMORY[0x1E697F468];
    v61 = sub_190D54A20();
    (*(*(v61 - 8) + 104))(&v14[v59], v60, v61);
    *v14 = v58;
    *(v14 + 1) = v58;
    sub_190D52600();
    sub_190D543B0();
    sub_190A5F33C();
    sub_190D55C40();
    (*(v84 + 8))(v11, v85);
    sub_19022EEA4(v14, &qword_1EAD5B170);
    sub_190D56500();
    sub_190D53C60();
    v62 = &v17[*(v15 + 36)];
    v63 = v101;
    *v62 = v100;
    *(v62 + 1) = v63;
    *(v62 + 2) = v102;
    sub_19022FD14(v17, v96, &qword_1EAD5B178);
    swift_storeEnumTagMultiPayload();
    sub_190A5F424();
    sub_190A5F900();
    sub_190D54C50();
    v64 = v17;
    v65 = &qword_1EAD5B178;
  }

  return sub_19022EEA4(v64, v65);
}

uint64_t sub_190A5EE88(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_190D572A0();
  v1[7] = sub_190D57290();
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_190A5EF38;

  return sub_190A60190();
}

uint64_t sub_190A5EF38(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A5F07C, v3, v2);
}

uint64_t sub_190A5F07C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + *(_s8CellViewVMa() + 36));
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B148);
  sub_190D55FE0();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_190A5F12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190A5E37C(v2, a2);
  sub_190A5F9C8(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s8CellViewVMa);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_190A5FA30(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, _s8CellViewVMa);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B140) + 36));
  sub_190D53E20();
  result = sub_190D572C0();
  *v8 = &unk_190DEA640;
  v8[1] = v7;
  return result;
}

uint64_t sub_190A5F270()
{
  v2 = *(_s8CellViewVMa() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA4;

  return sub_190A5EE88(v0 + v3);
}

unint64_t sub_190A5F33C()
{
  result = qword_1EAD5B180;
  if (!qword_1EAD5B180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B170);
    sub_190A5FDF4(&qword_1EAD577F8, MEMORY[0x1E697EAF0]);
    sub_190233640(&qword_1EAD5B188, &qword_1EAD5B190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B180);
  }

  return result;
}

unint64_t sub_190A5F424()
{
  result = qword_1EAD5B198;
  if (!qword_1EAD5B198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B160);
    sub_190A5F4B0();
    sub_190A5F8AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B198);
  }

  return result;
}

unint64_t sub_190A5F4B0()
{
  result = qword_1EAD5B1A0;
  if (!qword_1EAD5B1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B1A8);
    sub_190A5F568();
    sub_190233640(&qword_1EAD467C8, &qword_1EAD55A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B1A0);
  }

  return result;
}

unint64_t sub_190A5F568()
{
  result = qword_1EAD5B1B0;
  if (!qword_1EAD5B1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B1B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B158);
    sub_190A5F65C();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD5B200, &qword_1EAD5B208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B1B0);
  }

  return result;
}

unint64_t sub_190A5F65C()
{
  result = qword_1EAD5B1C0;
  if (!qword_1EAD5B1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B158);
    sub_190A5F714();
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B1C0);
  }

  return result;
}

unint64_t sub_190A5F714()
{
  result = qword_1EAD5B1C8;
  if (!qword_1EAD5B1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B1D0);
    sub_190A5F7CC();
    sub_190233640(&qword_1EAD5B1F0, &qword_1EAD5B1F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B1C8);
  }

  return result;
}

unint64_t sub_190A5F7CC()
{
  result = qword_1EAD5B1D8;
  if (!qword_1EAD5B1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B1E0);
    sub_190A5F858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B1D8);
  }

  return result;
}

unint64_t sub_190A5F858()
{
  result = qword_1EAD5B1E8;
  if (!qword_1EAD5B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B1E8);
  }

  return result;
}

unint64_t sub_190A5F8AC()
{
  result = qword_1EAD5B210;
  if (!qword_1EAD5B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B210);
  }

  return result;
}

unint64_t sub_190A5F900()
{
  result = qword_1EAD5B218;
  if (!qword_1EAD5B218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B170);
    sub_190A5F33C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B218);
  }

  return result;
}

uint64_t sub_190A5F9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190A5FA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_190A5FA98()
{
  v1 = *(_s8LocationVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1909C94C0(v2);
}

uint64_t sub_190A5FAF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_190A5FB84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_190A5FBCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_190A5FC28()
{
  result = qword_1EAD5B240;
  if (!qword_1EAD5B240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B140);
    sub_190A5FCE4();
    sub_190A5FDF4(&qword_1EAD52288, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B240);
  }

  return result;
}

unint64_t sub_190A5FCE4()
{
  result = qword_1EAD5B248;
  if (!qword_1EAD5B248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B250);
    sub_190A5FD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B248);
  }

  return result;
}

unint64_t sub_190A5FD68()
{
  result = qword_1EAD5B258;
  if (!qword_1EAD5B258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B260);
    sub_190A5F424();
    sub_190A5F900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B258);
  }

  return result;
}

uint64_t sub_190A5FDF4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_190A5FE40()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696ECC8]) init];
  [v1 setMetadata_];
  [v1 _setPreferredSizeClass_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B270);
  sub_190D55030();
  [v1 setDelegate_];

  sub_190D525D0();
  [v1 _setEffectiveCornerRadius_];
  return v1;
}

uint64_t sub_190A5FF08@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for LPLinkViewRepresentableCoordinator();
  sub_19083B854(v1, v16);
  v4 = *(v1 + 48);
  v5 = v17;
  v6 = v18;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v11 + 16))(v10, v8);
  v12 = v4;
  v13 = sub_190B19CEC(v10, v4, v3, v5, v6);

  result = __swift_destroy_boxed_opaque_existential_0(v16);
  *a1 = v13;
  return result;
}

uint64_t sub_190A60030(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4069000000000000;
  }

  return result;
}

uint64_t sub_190A6004C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A6013C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190A600B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190A6013C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190A60114()
{
  sub_190A6013C();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_190A6013C()
{
  result = qword_1EAD5B268;
  if (!qword_1EAD5B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B268);
  }

  return result;
}

uint64_t sub_190A60190()
{
  v1[19] = v0;
  sub_190D572A0();
  v1[20] = sub_190D57290();
  v3 = sub_190D57240();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190A60228, v3, v2);
}

uint64_t sub_190A60228()
{
  v1 = v0[19];
  v2 = [objc_opt_self() sharedInstance];
  v0[23] = v2;
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() currentTraitCollection];
  v0[24] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_190A603A8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD543C8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_190843AB8;
  v0[13] = &block_descriptor_63;
  v0[14] = v5;
  [v2 generateMapLinkMetadataForQueryResult:v3 traitCollection:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190A603A8()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_190A604B0, v2, v1);
}

uint64_t sub_190A604B0()
{
  v2 = v0[23];
  v1 = v0[24];

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

void sub_190A6052C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v37 = _s8LocationVMa(0);
  *(a2 + *(v37 + 36)) = 0;
  v16 = [a1 identifier];
  v17 = sub_190D56F10();
  v19 = v18;

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  v20 = a1;
  v21 = [v20 item];
  v22 = [v21 attributeSet];

  v23 = [v22 contentURL];
  if (v23)
  {
    v24 = v23;
    sub_190D515B0();

    v25 = *(v5 + 32);
    v25(v12, v7, v4);
    v26 = *(v5 + 56);
    v26(v12, 0, 1, v4);
    v25(v15, v12, v4);
    v26(v15, 0, 1, v4);
  }

  else
  {
    v27 = v36;
    v28 = 1;
    v35 = *(v5 + 56);
    v35(v12, 1, 1, v4);
    v29 = [v22 URL];
    if (v29)
    {
      v30 = v27;
      v31 = v29;
      sub_190D515B0();

      v27 = v30;
      v28 = 0;
    }

    v35(v27, v28, 1, v4);
    sub_190844E18(v27, v15);
    if ((*(v5 + 48))(v12, 1, v4) != 1)
    {
      sub_19084CF50(v12);
    }
  }

  v32 = v37;
  sub_190844E18(v15, a2 + *(v37 + 28));
  v33 = [objc_opt_self() contactForResult_];

  *(a2 + *(v32 + 32)) = v33;
}

id sub_190A608BC()
{
  v1 = sub_190D52E90();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = _s8LocationVMa(0);
  sub_190844DA8(v0 + *(v15 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_19084CF50(v7);
    return 0;
  }

  else
  {
    v27 = v4;
    v28 = v2;
    v29 = v1;
    v26 = *(v9 + 32);
    v26(v14, v7, v8);
    sub_190D51560();
    v17 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    v18 = sub_190D51570();
    v16 = [v17 initWithContentsOfURL_];

    if (v16)
    {
      v19 = v16;
      v20 = sub_190D56ED0();

      [v19 setSuggestedName_];

      v21 = v19;
      v22 = v27;
      sub_190D52E10();
      (*(v9 + 16))(v11, v14, v8);
      v23 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v24 = swift_allocObject();
      v26((v24 + v23), v11, v8);
      sub_190D576D0();

      (*(v28 + 8))(v22, v29);
    }

    else
    {
    }

    (*(v9 + 8))(v14, v8);
  }

  return v16;
}

uint64_t sub_190A60C40(void (*a1)(void))
{
  v2 = sub_190D51520();
  v4 = sub_190AF7EDC(v2, v3);
  v6 = v5;
  a1();
  sub_19083B6D4(v4, v6);
  return 0;
}

uint64_t sub_190A60CB0()
{
  v1 = qword_1EAD45918;
  v2 = sub_190D51C60();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_190A60D18()
{
  v2.receiver = v0;
  v2.super_class = _s9ViewModelCMa_8(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190A60D50(uint64_t a1)
{
  v2 = qword_1EAD45918;
  v3 = sub_190D51C60();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_190A60DDC()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_190A60EBC()
{
  sub_1902188FC(319, &unk_1EAD44FC0);
  if (v0 <= 0x3F)
  {
    sub_190844C7C(319, &qword_1ED777010, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_190844C14();
      if (v2 <= 0x3F)
      {
        sub_190844C7C(319, &qword_1EAD54398, type metadata accessor for DetailsQueryResultItemPreviewProvider);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_190A60FD0(uint64_t a1)
{
  *(a1 + 8) = sub_190A61038(&qword_1EAD5B288);
  result = sub_190A61038(&qword_1EAD45900);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_190A61038(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s8LocationVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_190A6107C(void (*a1)(void))
{
  sub_190D515F0();

  return sub_190A60C40(a1);
}

id sub_190A610FC()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A611DC@<X0>(uint64_t *a1@<X8>)
{
  sub_190A63024();
  result = sub_190D529A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_190A6121C()
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();
}

uint64_t sub_190A612B4()
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();
}

void (*sub_190A61350(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7ChatKit19DetailsLocationsTab___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  *v4 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  v4[7] = sub_1908F5C8C();
  return sub_190A61484;
}

void sub_190A61484(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_190D51C30();

  free(v1);
}

uint64_t sub_190A61518()
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  v1 = *(v0 + 16);
  sub_190D52690();
  return v1;
}

uint64_t sub_190A615C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190A61674(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_190D58760() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
    sub_190D51C10();
  }
}

uint64_t sub_190A617D4()
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  v1 = *(v0 + 32);
  sub_190D52690();
  return v1;
}

uint64_t sub_190A61884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190A61930(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
    sub_190D51C10();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_190A61AA0()
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  return *(v0 + 48);
}

uint64_t sub_190A61B40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_190A61BE8(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190A61CEC()
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  MEMORY[0x1EEE9AC00](Strong);
  _s8LocationVMa(0);
  sub_190A6507C(&qword_1EAD55598, _s8LocationVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  v2 = v1[qword_1EAD629B0];

  return v2;
}

uint64_t sub_190A61E8C()
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_190A61F30@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_190A61FDC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
    sub_190D51C10();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  _s9ViewModelCMa_8(0);
  v3 = v2;
  v4 = sub_190D57D90();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

id sub_190A62174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = 1;
    goto LABEL_8;
  }

  v5 = Strong;
  v31 = a3;
  MEMORY[0x1EEE9AC00](Strong);
  _s8LocationVMa(0);
  sub_190A6507C(&qword_1EAD55598, _s8LocationVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  v6 = sub_190D56ED0();
  v30 = objc_opt_self();
  [v30 systemImageNamed_];

  result = CKFrameworkBundle();
  if (result)
  {
    v8 = result;
    sub_1908D84D0();
    v9 = sub_190D56ED0();
    v10 = sub_190D56ED0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:{v10, "AB_FILTER_SCREENSHOTS"}];

    sub_190D56F10();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    sub_19029063C(a1);
    v14 = sub_190D57DC0();

    swift_getKeyPath();
    sub_190D51C20();

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {

      v28 = 1;
      a3 = v31;
      goto LABEL_8;
    }

    v16 = v15;
    MEMORY[0x1EEE9AC00](v15);
    swift_getKeyPath();
    sub_190D51C20();

    v17 = sub_190D56ED0();
    v18 = [v30 systemImageNamed_];

    result = CKFrameworkBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_190D56ED0();
      v21 = sub_190D56ED0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      sub_190D56F10();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a1;
      v24[4] = a2;
      sub_19029063C(a1);
      v25 = sub_190D57DC0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_190DD55F0;
      *(v26 + 32) = v14;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_190DD55F0;
      *(v27 + 32) = v25;
      a3 = v31;
      sub_190D52C00();
      v28 = 0;
LABEL_8:
      v29 = sub_190D52C10();
      return (*(*(v29 - 8) + 56))(a3, v28, 1, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190A627D4()
{

  MEMORY[0x193AF7B30](v0 + 56);
  v1 = OBJC_IVAR____TtC7ChatKit19DetailsLocationsTab___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsLocationsTab()
{
  result = qword_1EAD45B90;
  if (!qword_1EAD45B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A628DC()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_190A62A00()
{
  result = qword_1EAD45BB8;
  if (!qword_1EAD45BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45BB8);
  }

  return result;
}

unint64_t sub_190A62A58()
{
  result = qword_1EAD45BC8;
  if (!qword_1EAD45BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45BC8);
  }

  return result;
}

unint64_t sub_190A62AB0()
{
  result = qword_1EAD45BB0;
  if (!qword_1EAD45BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45BB0);
  }

  return result;
}

unint64_t sub_190A62B08()
{
  result = qword_1EAD45BC0;
  if (!qword_1EAD45BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45BC0);
  }

  return result;
}

void (*sub_190A62B5C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_190A61350(v2);
  return sub_190854AE0;
}

void sub_190A62BCC()
{
  type metadata accessor for DetailsLocationsTab();

  JUMPOUT(0x193AEE5C0);
}

void sub_190A62C0C(char a1)
{
  swift_getKeyPath();
  sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1908EAB48(a1 & 1);
  }
}

void (*sub_190A62CC8(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC7ChatKit19DetailsLocationsTab___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_190A6507C(&qword_1EAD45BA0, type metadata accessor for DetailsLocationsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    _s8LocationVMa(0);
    sub_190A6507C(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();
    *v4 = v6;
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C20();

    v7 = v6[qword_1EAD629B0];
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return sub_190A62EC0;
}

void sub_190A62EC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  *v1 = v1[1];
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1908EAB48(v2);
  }

  free(v1);
}

uint64_t sub_190A62F5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DetailsLocationsTab();
  sub_190A6507C(&qword_1EAD45BA8, type metadata accessor for DetailsLocationsTab);
  result = sub_190D52DD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_190A63024()
{
  result = qword_1EAD45BD0;
  if (!qword_1EAD45BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45BD0);
  }

  return result;
}

void sub_190A630A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a5();
  }
}

void sub_190A6314C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a5(a1);
  }
}

void sub_190A6323C()
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9DF70);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    MEMORY[0x1EEE9AC00](v6);
    v15 = _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_190A6507C(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C20();

    v7 = *&v2[qword_1EAD629B8];
    sub_190D52690();

    v8 = MEMORY[0x193AF2A20](v7, v15);
    v10 = v9;

    v11 = sub_19021D9F8(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_19020E000, v3, v4, "Performing deletion on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  else
  {
  }

  if (*&v2[qword_1EAD629A0])
  {
    v12 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v12);
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_190A6507C(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C20();

    v13 = sub_190D52690();
    v14 = sub_1908A1DF4(v13);

    sub_190B822A8(v14);
    MEMORY[0x193AF7B30](&v16);
  }
}

void sub_190A635F4()
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9DF70);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    MEMORY[0x1EEE9AC00](v6);
    v15 = _s4LinkVMa(0);
    sub_190A6507C(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C20();

    v7 = *&v2[qword_1EAD629B8];
    sub_190D52690();

    v8 = MEMORY[0x193AF2A20](v7, v15);
    v10 = v9;

    v11 = sub_19021D9F8(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_19020E000, v3, v4, "Performing deletion on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  else
  {
  }

  if (*&v2[qword_1EAD629A0])
  {
    v12 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v12);
    _s4LinkVMa(0);
    sub_190A6507C(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C20();

    v13 = sub_190D52690();
    v14 = sub_1908A203C(v13);

    sub_190B822A8(v14);
    MEMORY[0x193AF7B30](&v16);
  }
}

void sub_190A639AC()
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9DF70);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    MEMORY[0x1EEE9AC00](v6);
    v15 = _s10WalletPassVMa(0);
    sub_190A6507C(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C20();

    v7 = *&v2[qword_1EAD629B8];
    sub_190D52690();

    v8 = MEMORY[0x193AF2A20](v7, v15);
    v10 = v9;

    v11 = sub_19021D9F8(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_19020E000, v3, v4, "Performing deletion on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  else
  {
  }

  if (*&v2[qword_1EAD629A0])
  {
    v12 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v12);
    _s10WalletPassVMa(0);
    sub_190A6507C(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C20();

    v13 = sub_190D52690();
    v14 = sub_1908A2470(v13);

    sub_190B822A8(v14);
    MEMORY[0x193AF7B30](&v16);
  }
}

void sub_190A63D64()
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9DF70);
  v2 = v0;
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    MEMORY[0x1EEE9AC00](v6);
    v15 = _s8LocationVMa(0);
    sub_190A6507C(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C20();

    v7 = *&v2[qword_1EAD629B8];
    sub_190D52690();

    v8 = MEMORY[0x193AF2A20](v7, v15);
    v10 = v9;

    v11 = sub_19021D9F8(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_19020E000, v3, v4, "Performing deletion on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  else
  {
  }

  if (*&v2[qword_1EAD629A0])
  {
    v12 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v12);
    _s8LocationVMa(0);
    sub_190A6507C(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C20();

    v13 = sub_190D52690();
    v14 = sub_1908A24B8(v13);

    sub_190B822A8(v14);
    MEMORY[0x193AF7B30](&v16);
  }
}

void sub_190A6411C(void *a1)
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9DF70);
  v4 = v1;
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v7 = 136315138;
    MEMORY[0x1EEE9AC00](v18);
    v17 = _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_190A6507C(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C20();

    v8 = *&v4[qword_1EAD629B8];
    sub_190D52690();

    v9 = MEMORY[0x193AF2A20](v8, v17);
    v11 = v10;

    v12 = sub_19021D9F8(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_19020E000, v5, v6, "Performing share on %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  else
  {
  }

  if (*&v4[qword_1EAD629A0])
  {
    v13 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v13);
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_190A6507C(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    v14 = a1;
    sub_190D51C20();

    v15 = sub_190D52690();
    v16 = sub_1908A1DF4(v15);

    sub_190B830C4(v16, &v19, a1);

    MEMORY[0x193AF7B30](&v19);
  }
}

void sub_190A644F4(void *a1)
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9DF70);
  v4 = v1;
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v7 = 136315138;
    MEMORY[0x1EEE9AC00](v18);
    v17 = _s4LinkVMa(0);
    sub_190A6507C(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C20();

    v8 = *&v4[qword_1EAD629B8];
    sub_190D52690();

    v9 = MEMORY[0x193AF2A20](v8, v17);
    v11 = v10;

    v12 = sub_19021D9F8(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_19020E000, v5, v6, "Performing share on %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  else
  {
  }

  if (*&v4[qword_1EAD629A0])
  {
    v13 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v13);
    _s4LinkVMa(0);
    sub_190A6507C(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    v14 = a1;
    sub_190D51C20();

    v15 = sub_190D52690();
    v16 = sub_1908A203C(v15);

    sub_190B830C4(v16, &v19, a1);

    MEMORY[0x193AF7B30](&v19);
  }
}

void sub_190A648CC(void *a1)
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9DF70);
  v4 = v1;
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v7 = 136315138;
    MEMORY[0x1EEE9AC00](v18);
    v17 = _s10WalletPassVMa(0);
    sub_190A6507C(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C20();

    v8 = *&v4[qword_1EAD629B8];
    sub_190D52690();

    v9 = MEMORY[0x193AF2A20](v8, v17);
    v11 = v10;

    v12 = sub_19021D9F8(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_19020E000, v5, v6, "Performing share on %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  else
  {
  }

  if (*&v4[qword_1EAD629A0])
  {
    v13 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v13);
    _s10WalletPassVMa(0);
    sub_190A6507C(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    v14 = a1;
    sub_190D51C20();

    v15 = sub_190D52690();
    v16 = sub_1908A2470(v15);

    sub_190B830C4(v16, &v19, a1);

    MEMORY[0x193AF7B30](&v19);
  }
}

void sub_190A64CA4(void *a1)
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9DF70);
  v4 = v1;
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v7 = 136315138;
    MEMORY[0x1EEE9AC00](v18);
    v17 = _s8LocationVMa(0);
    sub_190A6507C(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C20();

    v8 = *&v4[qword_1EAD629B8];
    sub_190D52690();

    v9 = MEMORY[0x193AF2A20](v8, v17);
    v11 = v10;

    v12 = sub_19021D9F8(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_19020E000, v5, v6, "Performing share on %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  else
  {
  }

  if (*&v4[qword_1EAD629A0])
  {
    v13 = swift_unknownObjectWeakInit();
    MEMORY[0x1EEE9AC00](v13);
    _s8LocationVMa(0);
    sub_190A6507C(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    v14 = a1;
    sub_190D51C20();

    v15 = sub_190D52690();
    v16 = sub_1908A24B8(v15);

    sub_190B830C4(v16, &v19, a1);

    MEMORY[0x193AF7B30](&v19);
  }
}

uint64_t sub_190A6507C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_190A650C4(void *a1)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_190D56F10();
    v10 = v9;

    v1[2] = v8;
    v1[3] = v10;
    result = CKFrameworkBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_190D56ED0();
      v13 = sub_190D56ED0();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v15 = sub_190D56F10();
      v17 = v16;

      v1[4] = v15;
      v1[5] = v17;
      v1[6] = 4;
      swift_unknownObjectWeakInit();
      sub_190D51C50();
      v18 = a1;
      sub_190A61FDC(a1);
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_190A65270(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (v4 == a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v5 = v1;
  v6 = sub_190A65A40();
  v7 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v8 = sub_190A66768();
  v9 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  [v8 setNeedsDisplay];

  sub_190A65F28();

  [v5 setNeedsLayout];
}

uint64_t sub_190A65374(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_configuration;
  swift_beginAccess();
  sub_190A67CF0(v2 + v13, v12, type metadata accessor for CKBalloonLayer.Configuration);
  swift_beginAccess();
  sub_1909B78A0(a1, v2 + v13);
  swift_endAccess();
  sub_190A67CF0(v2 + v13, v10, type metadata accessor for CKBalloonLayer.Configuration);
  if (MEMORY[0x193AF24B0](v10, v12))
  {
    v14 = _s7ChatKit14CKBalloonLayerC5StyleO2eeoiySbAE_AEtFZ_0(&v10[*(v4 + 20)], &v12[*(v4 + 20)]);
    sub_190A67D58(v10, type metadata accessor for CKBalloonLayer.Configuration);
    if (v14)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_190A67D58(v10, type metadata accessor for CKBalloonLayer.Configuration);
  }

  v15 = sub_190A65A40();
  sub_190A67CF0(v2 + v13, v7, type metadata accessor for CKBalloonLayer.Configuration);
  sub_190A66384(v7);

  [v2 setNeedsLayout];
LABEL_6:
  sub_190A67D58(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return sub_190A67D58(v12, type metadata accessor for CKBalloonLayer.Configuration);
}

id sub_190A65594(uint64_t a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = &v1[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  sub_190A67CF0(a1, &v1[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_configuration], type metadata accessor for CKBalloonLayer.Configuration);
  v7 = type metadata accessor for CKBalloonGradientLayer(0);
  v16.receiver = v1;
  v16.super_class = v7;
  v8 = objc_msgSendSuper2(&v16, sel_init);
  sub_190A67CF0(a1, v5, type metadata accessor for CKBalloonLayer.Configuration);
  v9 = objc_allocWithZone(type metadata accessor for CKBalloonGradientPositionTrackingLayer(0));
  v10 = v8;
  v11 = sub_190A66590(v5);
  CATransform3DMakeScale(&v15, -1.0, -1.0, 1.0);
  [v11 setSublayerTransform_];
  v12 = v10;
  [v12 addSublayer_];
  [v12 setNeedsDisplayOnBoundsChange_];
  v13 = sub_190D56ED0();
  [v12 setName_];

  sub_190A67D58(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return v12;
}

id sub_190A65780(void *a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v6 = &v1[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v6[32] = 1;
  sub_19021834C(a1, v17);
  v7 = type metadata accessor for CKBalloonGradientLayer(0);
  swift_dynamicCast();
  v8 = v16;
  v9 = OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_configuration;
  swift_beginAccess();
  sub_190A67CF0(v8 + v9, v5, type metadata accessor for CKBalloonLayer.Configuration);
  sub_190A67DB8(v5, &v1[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_configuration]);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_190D58740();
  v15.receiver = v1;
  v15.super_class = v7;
  v12 = objc_msgSendSuper2(&v15, sel_initWithLayer_, v11);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

void sub_190A65C10()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CKBalloonGradientLayer(0);
  objc_msgSendSuper2(&v25, sel_layoutSublayers);
  v2 = sub_190A65A40();
  v3 = sub_190A66768();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong gradientFrame];
    v7 = v6;
    v9 = v8;
    [v1 bounds];
    v11 = v10 / v7;
    [v1 bounds];
    v13 = v12 / v9;
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14 && (v15 = [v14 shouldAnimatePathChanges], swift_unknownObjectRelease(), (v15 & 1) != 0))
    {
      v16 = 1;
    }

    else
    {
      v17 = objc_opt_self();
      [v17 begin];
      [v17 setDisableActions_];
      v16 = 0;
    }

    v18 = v2;
    [v18 setBounds_];
    [v1 bounds];
    MidX = CGRectGetMidX(v26);
    [v1 bounds];
    [v18 setPosition_];
    CATransform3DMakeScale(&v24, -v7, -v9, 1.0);
    [v18 setTransform_];

    v20 = &v1[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame];
    if (v1[OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame + 32])
    {
      v21 = -v11;
      v22 = -v13;
    }

    else
    {
      v21 = -*v20 / v7;
      v22 = -v20[1] / v9;
    }

    [v3 setContentsRect_];
    v23 = v3;
    [v1 bounds];
    [v23 setBounds_];
    CATransform3DMakeScale(&v24, 1.0 / v7, 1.0 / v9, 1.0);
    [v23 setTransform_];

    if ((v16 & 1) == 0)
    {
      [objc_opt_self() commit];
    }
  }

  else
  {
    v5 = v2;
  }
}

void sub_190A65F28()
{
  v1 = sub_190D56ED0();
  [v0 removeAnimationForKey_];

  if (*(v0 + OBJC_IVAR____TtC7ChatKit22CKBalloonGradientLayer_gradientOverrideFrame + 32) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
      v5 = sub_190D56ED0();
      [v4 setKeyPath_];

      v6 = [v3 layer];
      [v4 setSourceLayer_];

      v7 = v4;
      [v7 setDuration_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_190DD55F0;
      *(v8 + 32) = [objc_opt_self() valueWithCGPoint_];
      sub_1902188FC(0, &qword_1EAD44EB8);
      v9 = sub_190D57160();

      [v7 setSourcePoints_];

      v10 = sub_190D56ED0();
      [v7 setBeginTimeMode_];

      [v7 setBeginTime_];
      [v7 setAdditive_];
      [v7 setTargetsSuperlayer_];
      v11 = sub_190A65A40();
      v12 = sub_190A66768();

      v13 = sub_190D56ED0();
      [v12 addAnimation:v7 forKey:v13];
    }
  }
}

uint64_t sub_190A662DC()
{
  result = type metadata accessor for CKBalloonLayer.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190A66384(uint64_t a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC7ChatKit38CKBalloonGradientPositionTrackingLayer_configuration;
  swift_beginAccess();
  sub_190A67CF0(v1 + v12, v11, type metadata accessor for CKBalloonLayer.Configuration);
  swift_beginAccess();
  sub_1909B78A0(a1, v1 + v12);
  swift_endAccess();
  sub_190A67CF0(v1 + v12, v9, type metadata accessor for CKBalloonLayer.Configuration);
  if (MEMORY[0x193AF24B0](v9, v11))
  {
    v13 = _s7ChatKit14CKBalloonLayerC5StyleO2eeoiySbAE_AEtFZ_0(&v9[*(v3 + 20)], &v11[*(v3 + 20)]);
    sub_190A67D58(v9, type metadata accessor for CKBalloonLayer.Configuration);
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_190A67D58(v9, type metadata accessor for CKBalloonLayer.Configuration);
  }

  v14 = sub_190A66768();
  sub_190A67CF0(v1 + v12, v6, type metadata accessor for CKBalloonLayer.Configuration);
  sub_190A66E3C(v6);

LABEL_6:
  sub_190A67D58(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return sub_190A67D58(v11, type metadata accessor for CKBalloonLayer.Configuration);
}

id sub_190A66590(uint64_t a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_190A67CF0(a1, v1 + OBJC_IVAR____TtC7ChatKit38CKBalloonGradientPositionTrackingLayer_configuration, type metadata accessor for CKBalloonLayer.Configuration);
  v6 = type metadata accessor for CKBalloonGradientPositionTrackingLayer(0);
  v13.receiver = v1;
  v13.super_class = v6;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  v8 = sub_190D56ED0();
  [v7 setName_];

  sub_190A67CF0(a1, v5, type metadata accessor for CKBalloonLayer.Configuration);
  v9 = objc_allocWithZone(type metadata accessor for CKBalloonGradientContentLayer(0));
  v10 = sub_190A66A78(v5);
  [v7 addSublayer_];
  CATransform3DMakeScale(&v12, -1.0, -1.0, 1.0);
  [v7 setSublayerTransform_];

  sub_190A67D58(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return v7;
}

uint64_t sub_190A66780(void (*a1)(void))
{
  v3 = [v1 sublayers];
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
    sub_1902188FC(0, &qword_1EAD46528);
    v6 = sub_190D57180();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v16 = v4;
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_23:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v7 = sub_190D581C0();
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_6:
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AF3B90](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      a1(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x193AF29E0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v9 = v16;
  }

  while (v8 != v7);
LABEL_24:

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_26;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = sub_190D581C0();
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v14 = MEMORY[0x193AF3B90](0, v9);
    goto LABEL_29;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v9 + 32);
LABEL_29:
    v15 = v14;

    return v15;
  }

  __break(1u);
  return result;
}

id sub_190A669FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_190A66A78(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  sub_190A67CF0(a1, v1 + OBJC_IVAR____TtC7ChatKit29CKBalloonGradientContentLayer_configuration, type metadata accessor for CKBalloonLayer.Configuration);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CKBalloonGradientContentLayer(0);
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = sub_190D56ED0();
  [v3 setName_];

  [v3 setAnchorPoint_];
  sub_190A67D58(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return v3;
}

id sub_190A66B78(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v8 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_19021834C(a1, v21);
  v11 = a3(0);
  swift_dynamicCast();
  v12 = v20;
  v13 = *a4;
  swift_beginAccess();
  sub_190A67CF0(v12 + v13, v10, type metadata accessor for CKBalloonLayer.Configuration);
  sub_190A67DB8(v10, v4 + *a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_190D58740();
  v19.receiver = v4;
  v19.super_class = v11;
  v16 = objc_msgSendSuper2(&v19, sel_initWithLayer_, v15);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v16;
}

id sub_190A66D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  swift_unknownObjectRetain();
  sub_190D58140();
  swift_unknownObjectRelease();
  return sub_190A66B78(v10, a4, a5, a6);
}

void sub_190A66DCC()
{
  swift_unknownObjectWeakInit();
  sub_190D58510();
  __break(1u);
}

uint64_t sub_190A66E3C(uint64_t a1)
{
  v3 = type metadata accessor for CKBalloonLayer.Configuration(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC7ChatKit29CKBalloonGradientContentLayer_configuration;
  swift_beginAccess();
  sub_190A67CF0(v1 + v9, v8, type metadata accessor for CKBalloonLayer.Configuration);
  swift_beginAccess();
  sub_1909B78A0(a1, v1 + v9);
  swift_endAccess();
  sub_190A67CF0(v1 + v9, v6, type metadata accessor for CKBalloonLayer.Configuration);
  if (MEMORY[0x193AF24B0](v6, v8))
  {
    v10 = _s7ChatKit14CKBalloonLayerC5StyleO2eeoiySbAE_AEtFZ_0(&v6[*(v3 + 20)], &v8[*(v3 + 20)]);
    sub_190A67D58(v6, type metadata accessor for CKBalloonLayer.Configuration);
    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_190A67D58(v6, type metadata accessor for CKBalloonLayer.Configuration);
  }

  [v1 setNeedsDisplay];
LABEL_6:
  sub_190A67D58(a1, type metadata accessor for CKBalloonLayer.Configuration);
  return sub_190A67D58(v8, type metadata accessor for CKBalloonLayer.Configuration);
}

CKCache *sub_190A67000()
{
  v0 = CKDefaultCacheLimit();
  result = CKCreateCache(v0);
  if (result)
  {
    qword_1EAD45550 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190A67060(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(id))
{
  v7.receiver = a1;
  v7.super_class = a3(0);
  v5 = v7.receiver;
  v6 = objc_msgSendSuper2(&v7, sel_display);
  a4(v6);
}

void sub_190A670CC()
{
  v1 = sub_190A671AC();
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions_];
  if (v1 && (v3 = [v1 CGImage]) != 0)
  {
    v5 = v3;
    type metadata accessor for CGImage(0);
    v4 = sub_190D58740();
  }

  else
  {
    v4 = 0;
  }

  [v0 setContents_];
  swift_unknownObjectRelease();
  [v2 commit];
}

unint64_t *sub_190A671AC()
{
  v1 = type metadata accessor for CKBalloonLayer.Style(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  v52 = result;
  if (!result)
  {
    return result;
  }

  v5 = v0 + OBJC_IVAR____TtC7ChatKit29CKBalloonGradientContentLayer_configuration;
  swift_beginAccess();
  v6 = type metadata accessor for CKBalloonLayer.Configuration(0);
  sub_190A67CF0(v5 + *(v6 + 20), v3, type metadata accessor for CKBalloonLayer.Style);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_44;
  }

  v7 = *v3;
  v3 = v52;
  [v52 gradientFrame];
  v9 = CGFloatPxFloor_0(v8);
  v10 = [v3 window];
  if (!v10 || (v3 = v10, v11 = [v10 screen], v3, !v11))
  {
    v11 = [objc_opt_self() mainScreen];
  }

  [v11 scale];
  v13 = v9 * v12;
  *&v63[0] = sub_190D573C0();
  *(&v63[0] + 1) = v14;
  MEMORY[0x193AF28B0](45, 0xE100000000000000);
  if (v7 >> 62)
  {
    v15 = sub_190D581C0();
  }

  else
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x1E69E7CC0];
  v51 = v11;
  if (v15)
  {
    *&v61 = MEMORY[0x1E69E7CC0];
    sub_19082DBB4(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v18 = v61;
      v56 = v7 & 0xC000000000000001;
      v53 = v7 + 32;
      v60 = xmmword_190DD1D90;
      v55 = v7;
      v54 = v15;
      do
      {
        v59 = v17;
        if (v56)
        {
          v19 = MEMORY[0x193AF3B90]();
        }

        else
        {
          v19 = *(v53 + 8 * v17);
        }

        v58 = v19;
        v20 = sub_190D57590();
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v16;
        }

        v22 = *(v21 + 16);
        if (v22)
        {
          v57 = v18;
          v64 = v16;
          sub_19082DBB4(0, v22, 0);
          v23 = v64;
          v24 = 32;
          do
          {
            v25 = *(v21 + v24);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
            v26 = swift_allocObject();
            *(v26 + 16) = v60;
            *(v26 + 56) = MEMORY[0x1E69E7DE0];
            *(v26 + 64) = sub_190A67AB4();
            *(v26 + 32) = v25;
            v27 = sub_190D56F20();
            v29 = v28;
            v64 = v23;
            v31 = *(v23 + 16);
            v30 = *(v23 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_19082DBB4((v30 > 1), v31 + 1, 1);
              v23 = v64;
            }

            *(v23 + 16) = v31 + 1;
            v32 = v23 + 16 * v31;
            *(v32 + 32) = v27;
            *(v32 + 40) = v29;
            v24 += 8;
            --v22;
          }

          while (v22);

          v7 = v55;
          v15 = v54;
          v18 = v57;
          v16 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v23 = v16;
        }

        v64 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
        sub_19085CD58();
        v33 = sub_190D56DF0();
        v35 = v34;
        v36 = v58;

        *&v61 = v18;
        v38 = *(v18 + 16);
        v37 = *(v18 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_19082DBB4((v37 > 1), v38 + 1, 1);
          v18 = v61;
        }

        v17 = v59 + 1;
        *(v18 + 16) = v38 + 1;
        v39 = v18 + 16 * v38;
        *(v39 + 32) = v33;
        *(v39 + 40) = v35;
      }

      while (v17 != v15);
      goto LABEL_29;
    }

    __break(1u);
LABEL_44:
    sub_190A67D58(v3, type metadata accessor for CKBalloonLayer.Style);
    result = sub_190D58510();
    __break(1u);
    return result;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_29:
  *&v61 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_19085CD58();
  v40 = sub_190D56DF0();
  v42 = v41;

  MEMORY[0x193AF28B0](v40, v42);

  if (qword_1EAD45540 != -1)
  {
    swift_once();
  }

  v43 = qword_1EAD45550;
  v44 = sub_190D56ED0();
  v45 = [v43 objectForKey_];

  if (v45)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v63[0] = v61;
  v63[1] = v62;
  if (*(&v62 + 1))
  {
    sub_1902188FC(0, &qword_1EAD44EB0);
    if (swift_dynamicCast())
    {

      return v64;
    }
  }

  else
  {
    sub_19021E7D8(v63);
  }

  v46 = sub_190A67B08(v7, v13);

  if (v46)
  {
    v47 = v46;
    v48 = v46;
    v49 = sub_190D56ED0();

    [v43 setObject:v48 forKey:v49];

    return v47;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_190A67910(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_190A67D58(a1 + *a3, type metadata accessor for CKBalloonLayer.Configuration);
  v6 = a1 + *a4;

  return sub_19024C978(v6);
}

uint64_t sub_190A67994()
{
  result = type metadata accessor for CKBalloonLayer.Configuration(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double CGFloatPxFloor_0(double a1)
{
  v2 = CKMainScreenScale_once_110;
  v3 = &__block_literal_global_304;
  if (v2 != -1)
  {
    dispatch_once(&CKMainScreenScale_once_110, &__block_literal_global_304);
  }

  v4 = *&CKMainScreenScale_sMainScreenScale_110;
  if (*&CKMainScreenScale_sMainScreenScale_110 == 0.0)
  {
    v4 = 1.0;
  }

  return floor(v4 * a1) / v4;
}

unint64_t sub_190A67AB4()
{
  result = qword_1EAD462B0;
  if (!qword_1EAD462B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD462B0);
  }

  return result;
}

UIImage *sub_190A67B08(unint64_t a1, CGFloat a2)
{
  if (a2 <= 0.0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    v14 = sub_190D581C0();
    if (v14 < 0)
    {
      __break(1u);
    }

    v3 = v14;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_19082E07C(0, v3, 0);
    v5 = 0;
    v4 = v15;
    v6 = *(v15 + 16);
    do
    {
      v7 = *(v15 + 24);
      if (v6 >= v7 >> 1)
      {
        sub_19082E07C((v7 > 1), v6 + 1, 1);
      }

      *(v15 + 16) = v6 + 1;
      *(v15 + 8 * v6++ + 32) = v5++ / (v3 - 1);
    }

    while (v3 != v5);
  }

  type metadata accessor for CGColor(0);
  v9 = sub_190D57160();
  v10 = CGGradientCreateWithColors(0, v9, (v4 + 32));

  if (v10)
  {
    v16.width = 1.0;
    v16.height = a2;
    UIGraphicsBeginImageContextWithOptions(v16, 0, 1.0);
    v11 = UIGraphicsGetCurrentContext();
    if (v11)
    {
      v17.x = 0.0;
      v17.y = 0.0;
      v18.x = 0.0;
      v12 = v11;
      v18.y = a2;
      CGContextDrawLinearGradient(v11, v10, v17, v18, 0);
      v8 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      v9 = v10;
      v10 = v12;
    }

    else
    {
      v8 = 0;
    }

    v9 = v10;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_190A67CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190A67D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_190A67DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_190A67E20()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A67F00@<X0>(uint64_t *a1@<X8>)
{
  sub_190A68CDC();
  result = sub_190D529A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_190A67F40()
{
  swift_getKeyPath();
  sub_190A68D30(&qword_1EAD45A58);
  sub_190D51C20();
}

uint64_t sub_190A67FC4()
{
  swift_getKeyPath();
  sub_190A68D30(&qword_1EAD45A58);
  sub_190D51C20();
}

void (*sub_190A6804C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7ChatKit21DetailsBackgroundsTab___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_190A68D30(&qword_1EAD45A58);
  sub_190D51C20();

  *v4 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  v4[7] = sub_1908F5C8C();
  return sub_190A6816C;
}

void sub_190A6816C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_190D51C30();

  free(v1);
}

uint64_t sub_190A68200()
{
  swift_getKeyPath();
  sub_190A68D30(&qword_1EAD45A58);
  sub_190D51C20();

  v1 = *(v0 + 16);
  sub_190D52690();
  return v1;
}

uint64_t sub_190A6829C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A68D30(&qword_1EAD45A58);
  sub_190D51C20();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190A68334(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_190D58760() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A68D30(&qword_1EAD45A58);
    sub_190D51C10();
  }
}

uint64_t sub_190A68480()
{
  swift_getKeyPath();
  sub_190A68D30(&qword_1EAD45A58);
  sub_190D51C20();

  return *(v0 + 32);
}

uint64_t sub_190A6850C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A68D30(&qword_1EAD45A58);
  sub_190D51C20();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_190A685A0(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A68D30(&qword_1EAD45A58);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_190A68690()
{

  v1 = OBJC_IVAR____TtC7ChatKit21DetailsBackgroundsTab___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsBackgroundsTab()
{
  result = qword_1EAD45A48;
  if (!qword_1EAD45A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A68788()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_190A68854()
{
  result = qword_1EAD45140;
  if (!qword_1EAD45140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45140);
  }

  return result;
}

unint64_t sub_190A688BC()
{
  result = qword_1EAD45A70;
  if (!qword_1EAD45A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A70);
  }

  return result;
}

unint64_t sub_190A68914()
{
  result = qword_1EAD45A80;
  if (!qword_1EAD45A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A80);
  }

  return result;
}

unint64_t sub_190A6896C()
{
  result = qword_1EAD45A68;
  if (!qword_1EAD45A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A68);
  }

  return result;
}

unint64_t sub_190A689C4()
{
  result = qword_1EAD45A78;
  if (!qword_1EAD45A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A78);
  }

  return result;
}

void *sub_190A68A18()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v2 = result;
    v3 = sub_190D56ED0();
    v4 = sub_190D56ED0();
    v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

    v6 = sub_190D56F10();
    v8 = v7;

    v0[2] = v6;
    v0[3] = v8;
    v0[4] = 1;
    sub_190D51C50();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_190A68B08(uint64_t **a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_190A6804C(v2);
  return sub_190A09898;
}

void sub_190A68B78()
{
  type metadata accessor for DetailsBackgroundsTab();

  JUMPOUT(0x193AEE5C0);
}

void (*sub_190A68BB4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_190D52D70();
  return sub_190A68D74;
}

uint64_t sub_190A68C3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DetailsBackgroundsTab();
  sub_190A68D30(&qword_1EAD45A60);
  result = sub_190D52DD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_190A68CDC()
{
  result = qword_1EAD45A88;
  if (!qword_1EAD45A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A88);
  }

  return result;
}

uint64_t sub_190A68D30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DetailsBackgroundsTab();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_190A68D78()
{
  result = sub_190A68E78(0xD000000000000022, 0x8000000190E6F5E0, 1u);
  byte_1EAD9DD38 = result & 1;
  return result;
}

id sub_190A68DB8()
{
  result = sub_190A68E78(0xD000000000000024, 0x8000000190E6F610, 1u);
  byte_1EAD9DD39 = result & 1;
  return result;
}

id sub_190A68DF8()
{
  result = sub_190A68E78(0xD000000000000026, 0x8000000190E6F640, 1u);
  byte_1EAD9DD3A = result & 1;
  return result;
}

id sub_190A68E38()
{
  result = sub_190A68E78(0xD000000000000023, 0x8000000190E6F670, 1u);
  byte_1EAD9DD3B = result & 1;
  return result;
}

id sub_190A68E78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = [result isInternalInstall];

    if (v6)
    {
      v7 = [objc_opt_self() standardUserDefaults];
      v8 = sub_190D56ED0();
      v9 = [v7 objectForKey_];

      if (v9)
      {
        sub_190D58140();
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      v13[0] = v11;
      v13[1] = v12;
      if (*(&v12 + 1))
      {
        sub_19021DC70();
        if (swift_dynamicCast())
        {
          a3 = [v10 BOOLValue];
        }
      }

      else
      {
        sub_19021E7D8(v13);
      }
    }

    return (a3 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKLanguageSelectionViewModel.__allocating_init(excludedLocale:currentSelectedLocale:suggestedLanguages:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-v12];
  v14 = *a4;
  sub_190870234(a1, &v18[-v12]);
  sub_190870234(a2, v10);
  v15 = sub_190D51930();
  v19 = v14;
  v16 = swift_allocObject();
  CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(v13, v10, a3, v15, &v19);
  sub_19022EEA4(a2, &qword_1EAD54C10);
  sub_19022EEA4(a1, &qword_1EAD54C10);
  return v16;
}

uint64_t CKLanguageSelectionViewModel.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1);
  return sub_190D588C0();
}

uint64_t CKLanguageSelectionViewModel.__allocating_init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = swift_allocObject();
  CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v86 = a2;
  v11 = sub_190D519C0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v75 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v92 = v73 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v74 = v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v73 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v76 = v73 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v83 = v73 - v26;
  v80 = *a5;
  v27 = v11;
  v28 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = v28;
  *(v6 + 33) = 0;
  v29 = *(v12 + 56);
  v77 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__excludedLocale;
  v29(v6 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__excludedLocale, 1, 1, v27);
  v79 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__currentSelectedLocale;
  v84 = v29;
  v29(v6 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__currentSelectedLocale, 1, 1, v27);
  v30 = a3;
  *(v6 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel_modelMap) = MEMORY[0x1E69E7CC8];
  *(v6 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel_cancellables) = v28;
  sub_190D51C50();
  v31 = *(a3 + 16);
  v93 = v12;
  v94 = v27;
  v81 = v23;
  v82 = v6;
  v87 = a1;
  v85 = a4;
  if (v31)
  {
    v73[2] = v12 + 56;
    v101 = v28;
    sub_19082DD94(0, v31, 0);
    v27 = v94;
    v32 = v101;
    v33 = v12 + 16;
    v90 = *(v12 + 16);
    v34 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v73[1] = v30;
    v89 = v34;
    v35 = v30 + v34;
    v88 = (v33 - 8);
    v36 = *(v33 + 56);
    v91 = v33;
    v37 = (v33 + 16);
    v38 = v74;
    do
    {
      v39 = v92;
      v90(v92, v35, v27);
      v99 = sub_190D518C0();
      v100 = v40;
      v97 = 45;
      v98 = 0xE100000000000000;
      v95 = 95;
      v96 = 0xE100000000000000;
      sub_19081E484();
      sub_190D580C0();

      v27 = v94;
      sub_190D518B0();
      (*v88)(v39, v27);
      v101 = v32;
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_19082DD94(v41 > 1, v42 + 1, 1);
        v27 = v94;
        v32 = v101;
      }

      *(v32 + 16) = v42 + 1;
      (*v37)(v32 + v89 + v42 * v36, v38, v27);
      v35 += v36;
      --v31;
    }

    while (v31);

    v23 = v81;
    v6 = v82;
    v43 = v87;
    v12 = v93;
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
    v43 = a1;
  }

  *(v6 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel_suggestedLocales) = v32;
  v44 = v76;
  sub_190870234(v43, v76);
  v45 = *(v12 + 48);
  v46 = 1;
  if (v45(v44, 1, v27) != 1)
  {
    v48 = v92;
    v47 = v93;
    (*(v93 + 32))(v92, v44, v27);
    v99 = sub_190D518C0();
    v100 = v49;
    v97 = 45;
    v98 = 0xE100000000000000;
    v95 = 95;
    v96 = 0xE100000000000000;
    sub_19081E484();
    sub_190D580C0();

    v27 = v94;
    sub_190D518B0();
    v50 = v48;
    v23 = v81;
    (*(v47 + 8))(v50, v27);
    v46 = 0;
  }

  v51 = v27;
  v52 = 1;
  v53 = v83;
  v54 = v46;
  v55 = v84;
  v84(v83, v54, 1, v51);
  v56 = v77;
  sub_19022EEA4(v6 + v77, &qword_1EAD54C10);
  sub_190A6C37C(v53, v6 + v56);
  v57 = v86;
  v58 = v78;
  sub_190870234(v86, v78);
  v59 = v45(v58, 1, v51);
  v60 = v93;
  if (v59 != 1)
  {
    v61 = v92;
    (*(v93 + 32))(v92, v58, v51);
    v99 = sub_190D518C0();
    v100 = v62;
    v97 = 45;
    v98 = 0xE100000000000000;
    v95 = 95;
    v96 = 0xE100000000000000;
    sub_19081E484();
    sub_190D580C0();
    v55 = v84;

    sub_190D518B0();
    (*(v60 + 8))(v61, v51);
    v52 = 0;
  }

  v55(v23, v52, 1, v51);
  v63 = v79;
  sub_19022EEA4(v6 + v79, &qword_1EAD54C10);
  sub_190A6C37C(v23, v6 + v63);
  v64 = v85;
  v65 = *(v85 + 16);
  if (v65)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_19082DD94(0, v65, 0);
    v66 = v101;
    sub_19081E484();
    v67 = (v64 + 40);
    v68 = v75;
    do
    {
      v69 = *v67;
      v99 = *(v67 - 1);
      v100 = v69;
      v97 = 45;
      v98 = 0xE100000000000000;
      v95 = 95;
      v96 = 0xE100000000000000;
      sub_190D52690();
      sub_190D580C0();
      sub_190D518B0();

      v101 = v66;
      v71 = *(v66 + 16);
      v70 = *(v66 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_19082DD94(v70 > 1, v71 + 1, 1);
        v68 = v75;
        v66 = v101;
      }

      *(v66 + 16) = v71 + 1;
      (*(v93 + 32))(v66 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v71, v68, v94);
      v67 += 2;
      --v65;
    }

    while (v65);

    sub_19022EEA4(v86, &qword_1EAD54C10);
    sub_19022EEA4(v87, &qword_1EAD54C10);
    v6 = v82;
  }

  else
  {

    sub_19022EEA4(v57, &qword_1EAD54C10);
    sub_19022EEA4(v87, &qword_1EAD54C10);
    v66 = MEMORY[0x1E69E7CC0];
  }

  *(v6 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel_preferredLanguages) = v66;
  *(v6 + 32) = v80;
  return v6;
}

uint64_t sub_190A69B70(uint64_t a1)
{
  v3 = sub_190D52690();
  v4 = sub_1909A8050(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
    sub_190D51C10();
  }
}

uint64_t sub_190A69CC4(uint64_t a1)
{
  v3 = sub_190D52690();
  v4 = sub_1909A8050(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
    sub_190D51C10();
  }
}

uint64_t sub_190A69E68(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_190870234(v2 + v8, v7);
  LOBYTE(a2) = sub_190A6C6A4(v7, a1);
  sub_19022EEA4(v7, &qword_1EAD54C10);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
    sub_190D51C10();
  }

  else
  {
    swift_beginAccess();
    sub_190A6C994(a1, v2 + v8);
    swift_endAccess();
  }

  return sub_19022EEA4(a1, &qword_1EAD54C10);
}

unsigned __int8 *sub_190A6A048(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == *(v1 + 32))
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
    sub_190D51C10();
  }

  return result;
}

uint64_t CKLanguageSelectionViewModel.prepare()()
{
  v1[2] = v0;
  sub_190D572A0();
  v1[3] = sub_190D57290();
  v3 = sub_190D57240();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190A6A1F0, v3, v2);
}

uint64_t sub_190A6A1F0()
{
  sub_190D52100();
  *(v0 + 48) = sub_190D520F0();
  v3 = (*MEMORY[0x1E69A6758] + MEMORY[0x1E69A6758]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_190A6A2A8;

  return v3();
}

uint64_t sub_190A6A2A8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_190A6A3EC, v3, v2);
}

uint64_t sub_190A6A3EC()
{

  sub_190A6A454();
  CKLanguageSelectionViewModel.subscribeToNotification()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A6A454()
{
  v1 = v0;
  v2 = sub_190D52170();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v127 = (&v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v126 = &v103 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v124 = &v103 - v10;
  v132 = sub_190D52080();
  v128 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v123 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v103 - v13;
  v14 = sub_190D519C0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v103 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v103 - v21;
  v23 = *(v0 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel_suggestedLocales);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  v141 = &v103 - v21;
  v142 = v20;
  v129 = v0;
  v133 = v2;
  if (v24)
  {
    v138 = v3;
    v145 = MEMORY[0x1E69E7CC0];
    sub_19082DBB4(0, v24, 0);
    v26 = v145;
    v137 = v15;
    v27 = *(v15 + 2);
    v28 = v23 + ((v15[80] + 32) & ~v15[80]);
    v139 = *(v15 + 9);
    v140 = v27;
    v29 = (v15 + 8);
    do
    {
      v30 = v142;
      v140(v22, v28, v142);
      v31 = sub_190D518C0();
      v33 = v32;
      (*v29)(v22, v30);
      v145 = v26;
      v35 = v26[2];
      v34 = v26[3];
      if (v35 >= v34 >> 1)
      {
        sub_19082DBB4((v34 > 1), v35 + 1, 1);
        v26 = v145;
      }

      v26[2] = v35 + 1;
      v36 = &v26[2 * v35];
      *(v36 + 4) = v31;
      *(v36 + 5) = v33;
      v28 += v139;
      --v24;
      v22 = v141;
    }

    while (v24);
    v140 = v26;
    v1 = v129;
    v37 = v142;
    v25 = MEMORY[0x1E69E7CC0];
    v15 = v137;
    v3 = v138;
  }

  else
  {
    v140 = MEMORY[0x1E69E7CC0];
    v37 = v20;
  }

  v146 = v25;
  v147 = v25;
  v38 = v25;
  v136 = sub_190D52100();
  sub_190D520F0();
  v39 = sub_190D520C0();

  v135 = *(v39 + 16);
  if (!v135)
  {
    v109 = v38;
LABEL_52:

    sub_190A69B70(v38);
    return sub_190A69CC4(v109);
  }

  v131 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel_modelMap;
  v119 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel___observationRegistrar;
  v118 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__currentSelectedLocale;
  swift_beginAccess();
  v40 = 0;
  v138 = 0;
  v117 = v128 + 16;
  v116 = v128 + 32;
  v137 = v15 + 8;
  v130 = *MEMORY[0x1E69A6780];
  v108 = (v3 + 104);
  v107 = (v15 + 32);
  v115 = (v15 + 48);
  v105 = (v15 + 16);
  v114 = (v3 + 16);
  v113 = (v3 + 88);
  v112 = *MEMORY[0x1E69A6778];
  v104 = *MEMORY[0x1E69A6790];
  v110 = (v3 + 8);
  v103 = *MEMORY[0x1E69A6788];
  v106 = (v3 + 96);
  v111 = (v128 + 8);
  v41 = (v39 + 40);
  v38 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v120 = v39;
  while (v40 < *(v39 + 16))
  {
    v43 = *(v41 - 1);
    v42 = *v41;
    sub_190D52690();
    sub_190D520F0();
    v44 = sub_190D520A0();

    if (*(v44 + 16))
    {
      v45 = sub_19022DCEC(v43, v42);
      v47 = v46;

      if (v47)
      {
        v48 = v128;
        v49 = *(v44 + 56) + *(v128 + 72) * v45;
        v50 = v123;
        v51 = v132;
        (*(v128 + 16))(v123, v49, v132);

        (*(v48 + 32))(v134, v50, v51);
        v52 = v121;
        sub_190D52060();
        v53 = sub_190D518C0();
        v55 = v54;
        v139 = *v137;
        v139(v52, v37);
        v56 = v131;
        swift_beginAccess();
        v57 = *(v1 + v56);
        if (*(v57 + 16))
        {
          v58 = sub_19022DCEC(v53, v55);
          v60 = v59;

          if (v60)
          {
            v61 = *(*(v57 + 56) + 8 * v58);
            swift_endAccess();
            sub_190D50920();
            goto LABEL_22;
          }
        }

        else
        {
        }

        swift_endAccess();
        v62 = v141;
        sub_190D52060();
        type metadata accessor for CKLanguageSelectionDownloadModel();
        v61 = swift_allocObject();
        *(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress) = 0;
        (*v108)(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__state, v130, v133);
        *(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isDefaultModel) = 0;
        *(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected) = 0;
        sub_190D51C50();
        (*v107)(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale, v62, v37);
LABEL_22:
        v63 = v122;
        sub_190D52060();
        v64 = sub_190D518C0();
        v66 = v65;
        v139(v63, v37);
        swift_getKeyPath();
        v144[0] = v1;
        sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
        sub_190D51C20();

        v67 = v124;
        sub_190870234(v1 + v118, v124);
        if ((*v115)(v67, 1, v37))
        {
          v68 = v37;
          sub_19022EEA4(v67, &qword_1EAD54C10);

          v69 = 0;
          v70 = (v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected);
          if (*(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected))
          {
            goto LABEL_24;
          }

LABEL_30:
          *v70 = v69 & 1;
        }

        else
        {
          v73 = v141;
          (*v105)(v141, v67, v37);
          sub_19022EEA4(v67, &qword_1EAD54C10);
          v74 = sub_190D518C0();
          v76 = v75;
          v139(v73, v37);
          if (v64 == v74 && v66 == v76)
          {
            v68 = v37;

            v70 = (v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected);
            v69 = 1;
            if (*(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected))
            {
              goto LABEL_30;
            }
          }

          else
          {
            v68 = v37;
            v69 = sub_190D58760();

            v70 = (v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected);
            if ((v69 & 1) == *(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__isSelected))
            {
              goto LABEL_30;
            }
          }

LABEL_24:
          KeyPath = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](KeyPath);
          *(&v103 - 2) = v61;
          *(&v103 - 8) = v69 & 1;
          v144[0] = v61;
          sub_190A6CAF4(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
          v72 = v138;
          sub_190D51C10();
          v138 = v72;
        }

        v77 = v127;
        v78 = v134;
        v79 = v125;
        sub_190D52070();
        sub_190C4F0A4(v79);
        v80 = v126;
        sub_190D52070();
        v81 = v80;
        v82 = v80;
        v83 = v133;
        (*v114)(v77, v82, v133);
        v84 = (*v113)(v77, v83);
        if (v84 == v112)
        {
          (*v110)(v81, v83);
          (*v106)(v77, v83);
          if (*(v77 + 8))
          {
            v85 = 0.01;
          }

          else
          {
            v85 = *v77;
          }

LABEL_40:
          if (*(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress) == v85)
          {
            *(v61 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel__progress) = v85;
          }

          else
          {
            v86 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v86);
            *(&v103 - 2) = v61;
            *(&v103 - 1) = v85;
            v144[0] = v61;
            sub_190A6CAF4(&qword_1EAD5B318, type metadata accessor for CKLanguageSelectionDownloadModel);
            v87 = v138;
            sub_190D51C10();
            v138 = v87;

            v78 = v134;
          }

          v88 = v141;
          sub_190D52060();
          v89 = sub_190D518C0();
          v91 = v90;
          v139(v88, v68);
          v92 = v131;
          v1 = v129;
          swift_beginAccess();
          sub_190D50920();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = *(v1 + v92);
          *(v1 + v92) = 0x8000000000000000;
          sub_190C1CD4C(v61, v89, v91, isUniquelyReferenced_nonNull_native);

          *(v1 + v92) = v143;
          swift_endAccess();
          v94 = sub_190D50920();
          MEMORY[0x193AF29E0](v94);
          if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_190D571A0();
          }

          sub_190D571E0();
          v38 = v147;
          sub_190D52060();
          v95 = sub_190D518C0();
          v97 = v96;
          v98 = (v139)(v88, v142);
          v99 = v78;
          v144[0] = v95;
          v144[1] = v97;
          MEMORY[0x1EEE9AC00](v98);
          *(&v103 - 2) = v144;
          v100 = v138;
          LOBYTE(v95) = sub_190CA8558(sub_1909F5BC8, (&v103 - 8), v140);

          v138 = v100;
          if (v95)
          {
            v101 = sub_190D50920();
            MEMORY[0x193AF29E0](v101);
            if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_190D571A0();
            }

            sub_190D571E0();

            (*v111)(v134, v132);
            v109 = v146;
          }

          else
          {
            (*v111)(v99, v132);
          }

          v37 = v142;
          v39 = v120;
          goto LABEL_12;
        }

        if (v84 != v130)
        {
          if (v84 == v104)
          {
            (*v110)(v81, v133);
            v85 = 1.0;
            goto LABEL_40;
          }

          if (v84 != v103)
          {
            goto LABEL_54;
          }
        }

        (*v110)(v81, v133);
        v85 = 0.0;
        goto LABEL_40;
      }
    }

    else
    {
    }

LABEL_12:
    ++v40;
    v41 += 2;
    if (v135 == v40)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  result = sub_190D58750();
  __break(1u);
  return result;
}

Swift::Void __swiftcall CKLanguageSelectionViewModel.subscribeToNotification()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B2D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_190D579B0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F5E0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel_cancellables;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    goto LABEL_3;
  }

  if (!sub_190D581C0())
  {
LABEL_3:
    v15 = [objc_opt_self() defaultCenter];
    v22 = v10;
    v16 = v15;
    sub_190D579C0();

    v17 = [objc_opt_self() mainRunLoop];
    v21 = v9;
    v18 = v17;
    v23 = v17;
    v19 = sub_190D58010();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    sub_190A6C3EC();
    sub_190A6CAF4(&qword_1EAD5F5F0, MEMORY[0x1E6969F20]);
    sub_190A6CAF4(&qword_1EAD5B2E8, sub_190A6C3EC);
    sub_190D53930();
    sub_19022EEA4(v4, &qword_1EAD5B2D8);

    (*(v6 + 8))(v8, v5);
    swift_allocObject();
    swift_weakInit();
    sub_190233640(&qword_1EAD5F600, &unk_1EAD5F5E0);
    v20 = v21;
    sub_190D53940();

    (*(v22 + 8))(v12, v20);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B2F0);
    sub_190233640(&qword_1EAD5B2F8, &qword_1EAD5B2F0);
    sub_190D53890();
    swift_endAccess();
  }
}

uint64_t sub_190A6B914()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_190A6A454();
  }

  return result;
}

uint64_t CKLanguageSelectionViewModel.availableLanguages.getter()
{
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_190A6BA10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  *a2 = *(v3 + 16);
  return sub_190D52690();
}

uint64_t CKLanguageSelectionViewModel.suggestedLanguages.getter()
{
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  return sub_190D52690();
}

uint64_t sub_190A6BB8C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  *a2 = *(v3 + 24);
  return sub_190D52690();
}

uint64_t CKLanguageSelectionViewModel.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_190A6BD0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  *a2 = *(v3 + 32);
  return result;
}

id sub_190A6BDEC()
{
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  v1 = *(v0 + 32);
  result = CKFrameworkBundle();
  v3 = result;
  if (v1)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (result)
  {
LABEL_5:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_190A6BF7C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  v5 = *a1;
  swift_beginAccess();
  return sub_190870234(v2 + v5, a2);
}

uint64_t sub_190A6C044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A6CAF4(&qword_1EAD5B300, type metadata accessor for CKLanguageSelectionViewModel);
  sub_190D51C20();

  v4 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__currentSelectedLocale;
  swift_beginAccess();
  return sub_190870234(v3 + v4, a2);
}

uint64_t sub_190A6C10C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_190870234(a1, &v6 - v3);
  return sub_190A69E68(v4, &OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__currentSelectedLocale);
}

uint64_t sub_190A6C1C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_190A6C994(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t CKLanguageSelectionViewModel.deinit()
{

  sub_19022EEA4(v0 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__excludedLocale, &qword_1EAD54C10);

  sub_19022EEA4(v0 + OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel__currentSelectedLocale, &qword_1EAD54C10);

  v1 = OBJC_IVAR____TtC7ChatKit28CKLanguageSelectionViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CKLanguageSelectionViewModel.__deallocating_deinit()
{
  CKLanguageSelectionViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_190A6C37C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190A6C3EC()
{
  result = qword_1EAD5B2E0;
  if (!qword_1EAD5B2E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5B2E0);
  }

  return result;
}

uint64_t type metadata accessor for CKLanguageSelectionViewModel()
{
  result = qword_1EAD45650;
  if (!qword_1EAD45650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_190A6C4C4()
{
  result = qword_1EAD5B308;
  if (!qword_1EAD5B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B308);
  }

  return result;
}

void sub_190A6C520()
{
  sub_190A6C63C();
  if (v0 <= 0x3F)
  {
    sub_190D51C60();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_190A6C63C()
{
  if (!qword_1EAD46BC0)
  {
    sub_190D519C0();
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD46BC0);
    }
  }
}

uint64_t sub_190A6C6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D519C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B310);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_190870234(a1, &v21 - v12);
  sub_190870234(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_190870234(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_190A6CAF4(&qword_1EAD54DA0, MEMORY[0x1E6969770]);
      v18 = sub_190D56E30();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_19022EEA4(v13, &qword_1EAD54C10);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_19022EEA4(v13, &qword_1EAD5B310);
    v17 = 1;
    return v17 & 1;
  }

  sub_19022EEA4(v13, &qword_1EAD54C10);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_190A6C994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A6CA5C()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
  sub_190D52690();
}

uint64_t sub_190A6CA98()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
  sub_190D52690();
}