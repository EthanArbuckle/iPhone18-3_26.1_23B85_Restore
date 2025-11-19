uint64_t sub_1DB084C0C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = a1[5];
  v11 = a1[6];
  v12 = *(a1 + 56);
  v13 = *(a2 + 8);
  v14 = *(a2 + 9);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v14 != 213)
        {
          return 0;
        }
      }

      else if (v14 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v14 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v14 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v14 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v14 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v14 != 215)
      {
        return 0;
      }
    }

    else if (v14 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v14 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v14 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v14 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *a2)
    {
      v21 = *(a2 + 8);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v17 != 213)
        {
          return 0;
        }
      }

      else if (v17 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v17 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v17 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v17 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v17 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v17 != 215)
      {
        return 0;
      }
    }

    else if (v17 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v17 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v17 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v17 != 219)
  {
    return 0;
  }

LABEL_69:
  if (!v8)
  {
    if (!v16)
    {
      goto LABEL_76;
    }

    return 0;
  }

  if (!v16 || (v7 != v15 || v8 != v16) && (sub_1DB09E254() & 1) == 0)
  {
    return 0;
  }

LABEL_76:

  return sub_1DB055D08(v10, v11, v12, v18, v19, v20);
}

uint64_t sub_1DB084EF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = *(a1 + 65);
  v14 = *(a1 + 66);
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v18 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 64);
  v23 = *(a2 + 65);
  v24 = *(a2 + 66);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v16 != 213)
        {
          return 0;
        }
      }

      else if (v16 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v16 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v16 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v16 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v16 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v16 != 215)
      {
        return 0;
      }
    }

    else if (v16 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v16 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v16 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v16 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v15)
    {
      v44 = *(a2 + 48);
      v45 = *(a2 + 56);
      v42 = *(a2 + 65);
      v43 = *(a2 + 66);
      v41 = v12;
      v40 = v11;
      v25 = v10;
      v26 = v14;
      v27 = v13;
      v28 = *(a2 + 64);
      v29 = v7;
      v30 = v8;
      v31 = *(a2 + 32);
      v32 = *(a2 + 24);
      v33 = *(a2 + 40);
      v34 = sub_1DB09E254();
      v19 = v33;
      v18 = v32;
      v17 = v31;
      v8 = v30;
      v7 = v29;
      v22 = v28;
      v13 = v27;
      v14 = v26;
      v10 = v25;
      v11 = v40;
      v12 = v41;
      v23 = v42;
      v24 = v43;
      v20 = v44;
      v21 = v45;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v19 != 213)
        {
          return 0;
        }
      }

      else if (v19 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v19 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v19 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v19 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v19 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v19 != 215)
      {
        return 0;
      }
    }

    else if (v19 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v19 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v19 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v19 != 219)
  {
    return 0;
  }

LABEL_69:
  if (!v8)
  {
    if (!v17)
    {
      goto LABEL_76;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (v7 != v18 || v8 != v17)
  {
    v36 = v13;
    v37 = v22;
    v38 = sub_1DB09E254();
    v22 = v37;
    v13 = v36;
    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_76:
  v39 = v13;
  if ((sub_1DB055D08(v10, v11, v12, v20, v21, v22) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055E54(v39 | (v14 << 8), v23 | (v24 << 8));
}

uint64_t sub_1DB0852AC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (a1[1] <= 0xD6u)
  {
    if (a1[1] > 0xD4u)
    {
      if (v3 == 213)
      {
        if (v5 != 213)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v3 == 214)
      {
        if (v5 != 214)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v3 == 211)
      {
        if (v5 != 211)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v3 == 212)
      {
        if (v5 != 212)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

LABEL_31:
    if ((v5 - 211) < 9 || qword_1DB0BD040[v3 ^ 0x80] != qword_1DB0BD040[v5 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (a1[1] <= 0xD8u)
  {
    if (v3 == 215)
    {
      if (v5 != 215)
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v3 == 216)
    {
      if (v5 != 216)
      {
        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v3 == 217)
  {
    if (v5 != 217)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v3 == 218)
  {
    if (v5 != 218)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v3 != 219)
  {
    goto LABEL_31;
  }

  if (v5 != 219)
  {
    return 0;
  }

LABEL_33:
  if (v2 == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }
  }

  else if (v4 == 2 || ((v2 ^ v4) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1DB0853E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v74 = *(a1 + 17);
  v73 = *(a1 + 18);
  v7 = a1[3];
  v69 = *(a1 + 32);
  v68 = *(a1 + 33);
  v8 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 49);
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = *(a1 + 65);
  v14 = a1[9];
  v15 = *(a1 + 80);
  v16 = *(a1 + 81);
  v17 = a1[11];
  v18 = *(a1 + 96);
  v19 = *(a1 + 97);
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v71 = *(a2 + 17);
  v72 = *(a2 + 18);
  v67 = *(a2 + 24);
  v65 = *(a2 + 33);
  v66 = *(a2 + 32);
  v64 = *(a2 + 40);
  v62 = *(a2 + 49);
  v63 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 72);
  v24 = *(a2 + 80);
  v25 = *(a2 + 81);
  v26 = *(a2 + 88);
  v27 = *(a2 + 96);
  v28 = *(a2 + 97);
  v60 = *(a2 + 65);
  v61 = *(a2 + 64);
  v70 = v7;
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v21 != 213)
        {
          return 0;
        }
      }

      else if (v21 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v21 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v21 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v21 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v21 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v21 != 215)
      {
        return 0;
      }
    }

    else if (v21 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v21 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v21 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v21 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v20)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v20)
    {
      v46 = v8;
      v51 = *(a2 + 88);
      v49 = v15;
      v50 = v16;
      v48 = v14;
      v47 = v19;
      v44 = v10;
      v45 = v18;
      v29 = v17;
      v30 = *(a2 + 96);
      v43 = v11;
      v31 = v12;
      v32 = v13;
      v33 = *(a2 + 72);
      v34 = *(a2 + 80);
      v35 = *(a2 + 81);
      v36 = v9;
      v37 = sub_1DB09E254();
      v9 = v36;
      v25 = v35;
      v8 = v46;
      v24 = v34;
      v23 = v33;
      v13 = v32;
      v12 = v31;
      v11 = v43;
      v27 = v30;
      v17 = v29;
      v10 = v44;
      v18 = v45;
      v19 = v47;
      v14 = v48;
      v15 = v49;
      v16 = v50;
      v26 = v51;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v58 = v13;
  v59 = v12;
  v55 = v25;
  v56 = v23;
  v57 = v24;
  v52 = v27;
  v53 = v28;
  v54 = v17;
  v38 = v11;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  if ((sub_1DB055E54(v74 | (v73 << 8), v71 | (v72 << 8)) & 1) == 0 || !sub_1DB0560B4(v70, v69 | (v68 << 8), v67, v66 | (v65 << 8)) || !sub_1DB0560B4(v39, v40 | (v41 << 8), v64, v63 | (v62 << 8)) || !sub_1DB0560B4(v38, v59 | (v58 << 8), v22, v61 | (v60 << 8)) || !sub_1DB0560B4(v14, v15 | (v16 << 8), v56, v57 | (v55 << 8)))
  {
    return 0;
  }

  return sub_1DB0560B4(v54, v18 | (v19 << 8), v26, v52 | (v53 << 8));
}

uint64_t sub_1DB0857B0(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v2 = sub_1DB09D154();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnyODIKnownBinding.BindingContent(0);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v56 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v56 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = (&v56 - v22);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = (&v56 - v26);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = (&v56 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10008, &qword_1DB0BB0D0);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v36 = &v56 - v35;
  v37 = (&v56 + *(v34 + 56) - v35);
  sub_1DB08E6B0(v60, &v56 - v35, type metadata accessor for AnyODIKnownBinding.BindingContent);
  sub_1DB08E6B0(v61, v37, type metadata accessor for AnyODIKnownBinding.BindingContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1DB08E6B0(v36, v27, type metadata accessor for AnyODIKnownBinding.BindingContent);
        v45 = *v27;
        v44 = v27[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (v45 == *v37 && v44 == v37[1])
          {
            v55 = v37[1];
          }

          else
          {
            v47 = v37[1];
            v48 = sub_1DB09E254();

            if ((v48 & 1) == 0)
            {
              sub_1DB08E718(v36, type metadata accessor for AnyODIKnownBinding.BindingContent);
LABEL_34:
              v42 = 0;
              return v42 & 1;
            }
          }

          goto LABEL_37;
        }

LABEL_33:
        sub_1DAF40AEC(v36, &qword_1ECC10008, &qword_1DB0BB0D0);
        goto LABEL_34;
      }

      sub_1DB08E6B0(v36, v23, type metadata accessor for AnyODIKnownBinding.BindingContent);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_33;
      }

      v52 = *v23 == *v37;
    }

    else
    {
      sub_1DB08E6B0(v36, v30, type metadata accessor for AnyODIKnownBinding.BindingContent);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_33;
      }

      v52 = *v30 == *v37;
    }

    v42 = v52;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_1DB08E6B0(v36, v11, type metadata accessor for AnyODIKnownBinding.BindingContent);
      v49 = *v11;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v50 = *(v49 + 16);
        v51 = *(*v37 + 16);

        v42 = sub_1DB07E820(v50, v51);

        goto LABEL_25;
      }

      goto LABEL_33;
    }

    if (swift_getEnumCaseMultiPayload() == 6)
    {
LABEL_37:
      sub_1DB08E718(v36, type metadata accessor for AnyODIKnownBinding.BindingContent);
      v42 = 1;
      return v42 & 1;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1DB08E6B0(v36, v15, type metadata accessor for AnyODIKnownBinding.BindingContent);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v53 = *v15 ^ *v37;
      sub_1DB08E718(v36, type metadata accessor for AnyODIKnownBinding.BindingContent);
      v42 = v53 ^ 1;
      return v42 & 1;
    }

    goto LABEL_33;
  }

  sub_1DB08E6B0(v36, v19, type metadata accessor for AnyODIKnownBinding.BindingContent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v58 + 8))(v19, v59);
    goto LABEL_33;
  }

  v40 = v57;
  v39 = v58;
  v41 = v59;
  (*(v58 + 32))(v57, v37, v59);
  v42 = sub_1DB09D114();
  v43 = *(v39 + 8);
  v43(v40, v41);
  v43(v19, v41);
LABEL_25:
  sub_1DB08E718(v36, type metadata accessor for AnyODIKnownBinding.BindingContent);
  return v42 & 1;
}

BOOL sub_1DB085D68(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v5 <= 214)
  {
    if (v5 > 212)
    {
      if (v5 == 213)
      {
        if (v7 != 213)
        {
          return 0;
        }
      }

      else if (v7 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v5 == 211)
    {
      if (v7 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v5 == 212)
    {
      if (v7 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v7 - 211) < 9 || qword_1DB0BD040[v5 ^ 0x80] != qword_1DB0BD040[v7 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 <= 216)
  {
    if (v5 == 215)
    {
      if (v7 != 215)
      {
        return 0;
      }
    }

    else if (v7 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 == 217)
  {
    if (v7 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 == 218)
  {
    if (v7 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v5 != 219)
  {
    goto LABEL_29;
  }

  if (v7 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v4)
  {
    return v6 && (sub_1DB083D44(v4, v6) & 1) != 0;
  }

  return !v6;
}

uint64_t sub_1DB085EB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v2 = *(a2 + 32);
  v4 = *(a2 + 40);
  v67 = *(a2 + 56);
  v68 = *(a2 + 48);
  v66 = *(a2 + 64);
  v64 = *(a2 + 80);
  v65 = *(a2 + 72);
  v63 = *(a2 + 88);
  v59 = *(a2 + 104);
  v60 = *(a2 + 96);
  v58 = *(a2 + 112);
  v53 = *(a2 + 128);
  v54 = *(a2 + 120);
  v52 = *(a2 + 136);
  v48 = *(a2 + 144);
  v47 = *(a2 + 152);
  v46 = *(a2 + 160);
  v41 = *(a2 + 176);
  v42 = *(a2 + 168);
  v40 = *(a2 + 184);
  v35 = *(a2 + 200);
  v36 = *(a2 + 192);
  v34 = *(a2 + 208);
  v29 = *(a2 + 224);
  v30 = *(a2 + 216);
  v28 = *(a2 + 232);
  v23 = *(a2 + 248);
  v24 = *(a2 + 240);
  v22 = *(a2 + 256);
  v17 = *(a2 + 272);
  v18 = *(a2 + 264);
  v16 = *(a2 + 280);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v62 = *(a1 + 80);
  v61 = *(a1 + 88);
  v56 = *(a1 + 104);
  v57 = *(a1 + 96);
  v55 = *(a1 + 112);
  v50 = *(a1 + 128);
  v51 = *(a1 + 120);
  v49 = *(a1 + 136);
  v44 = *(a1 + 152);
  v45 = *(a1 + 144);
  v43 = *(a1 + 160);
  v38 = *(a1 + 176);
  v39 = *(a1 + 168);
  v37 = *(a1 + 184);
  v32 = *(a1 + 200);
  v33 = *(a1 + 192);
  v31 = *(a1 + 208);
  v26 = *(a1 + 224);
  v27 = *(a1 + 216);
  v25 = *(a1 + 232);
  v20 = *(a1 + 248);
  v21 = *(a1 + 240);
  v19 = *(a1 + 256);
  v14 = *(a1 + 272);
  v15 = *(a1 + 264);
  v13 = *(a1 + 280);
  if ((sub_1DB055D08(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & 1) == 0 || (sub_1DB055D08(v6, v5, v7, v3, v2, v4) & 1) == 0 || (sub_1DB055D08(v9, v8, v10, v68, v67, v66) & 1) == 0 || (sub_1DB055D08(v11, v62, v61, v65, v64, v63) & 1) == 0 || (sub_1DB055D08(v57, v56, v55, v60, v59, v58) & 1) == 0 || (sub_1DB055D08(v51, v50, v49, v54, v53, v52) & 1) == 0 || (sub_1DB055D08(v45, v44, v43, v48, v47, v46) & 1) == 0 || (sub_1DB055D08(v39, v38, v37, v42, v41, v40) & 1) == 0 || (sub_1DB055D08(v33, v32, v31, v36, v35, v34) & 1) == 0 || (sub_1DB055D08(v27, v26, v25, v30, v29, v28) & 1) == 0 || (sub_1DB055D08(v21, v20, v19, v24, v23, v22) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055D08(v15, v14, v13, v18, v17, v16);
}

uint64_t sub_1DB0861A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 1);
  v8 = *(a1 + 3);
  v9 = a1[32];
  v10 = a1[33];
  v11 = a1[34];
  v12 = a1[35];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = *(a2 + 3);
  v18 = a2[32];
  v19 = a2[33];
  v20 = a2[34];
  v21 = a2[35];
  if (v4 <= 214)
  {
    if (v4 > 212)
    {
      if (v4 == 213)
      {
        if (v14 != 213)
        {
          return 0;
        }
      }

      else if (v14 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v4 == 211)
    {
      if (v14 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v4 == 212)
    {
      if (v14 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v14 - 211) < 9 || qword_1DB0BD040[v4 ^ 0x80] != qword_1DB0BD040[v14 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 <= 216)
  {
    if (v4 == 215)
    {
      if (v14 != 215)
      {
        return 0;
      }
    }

    else if (v14 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 217)
  {
    if (v14 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 218)
  {
    if (v14 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 != 219)
  {
    goto LABEL_29;
  }

  if (v14 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v3 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v3 ^ v13) & 1) != 0)
  {
    return 0;
  }

  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v16 != 213)
        {
          return 0;
        }
      }

      else if (v16 != 214)
      {
        return 0;
      }

      goto LABEL_66;
    }

    if (v6 == 211)
    {
      if (v16 != 211)
      {
        return 0;
      }

      goto LABEL_66;
    }

    if (v6 == 212)
    {
      if (v16 != 212)
      {
        return 0;
      }

      goto LABEL_66;
    }

LABEL_64:
    if ((v16 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v16 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v16 != 215)
      {
        return 0;
      }
    }

    else if (v16 != 216)
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 == 217)
  {
    if (v16 != 217)
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 == 218)
  {
    if (v16 != 218)
    {
      return 0;
    }

    goto LABEL_66;
  }

  if (v6 != 219)
  {
    goto LABEL_64;
  }

  if (v16 != 219)
  {
    return 0;
  }

LABEL_66:
  if (v5 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v5 ^ v15) & 1) != 0)
  {
    return 0;
  }

  if ((sub_1DB055FA0(v7, a1[16] | (a1[17] << 8), *(a2 + 1), a2[16] | (a2[17] << 8)) & 1) == 0 || (sub_1DB055FA0(v8, v9 | (v10 << 8), v17, v18 | (v19 << 8)) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055E54(v11 | (v12 << 8), v20 | (v21 << 8));
}

BOOL sub_1DB0864E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v44 = *(a1 + 32);
  v42 = *(a1 + 41);
  v43 = *(a1 + 40);
  v40 = *(a1 + 48);
  v38 = *(a1 + 57);
  v39 = *(a1 + 56);
  v36 = *(a1 + 64);
  v34 = *(a1 + 73);
  v35 = *(a1 + 72);
  v30 = *(a1 + 80);
  v28 = *(a1 + 89);
  v29 = *(a1 + 88);
  v24 = *(a1 + 96);
  v22 = *(a1 + 105);
  v23 = *(a1 + 104);
  v18 = *(a1 + 112);
  v16 = *(a1 + 121);
  v17 = *(a1 + 120);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v41 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 41);
  v37 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 57);
  v33 = *(a2 + 64);
  v31 = *(a2 + 73);
  v32 = *(a2 + 72);
  v27 = *(a2 + 80);
  v25 = *(a2 + 89);
  v26 = *(a2 + 88);
  v21 = *(a2 + 96);
  v19 = *(a2 + 105);
  v20 = *(a2 + 104);
  v15 = *(a2 + 112);
  v13 = *(a2 + 121);
  v14 = *(a2 + 120);
  if (!sub_1DB0560B4(*a1, *(a1 + 8) | (*(a1 + 9) << 8), *a2, *(a2 + 8) | (*(a2 + 9) << 8)) || !sub_1DB0560B4(v2, v3 | (v4 << 8), v5, v6 | (v7 << 8)) || !sub_1DB0560B4(v44, v43 | (v42 << 8), v41, v8 | (v9 << 8)) || !sub_1DB0560B4(v40, v39 | (v38 << 8), v37, v10 | (v11 << 8)) || !sub_1DB0560B4(v36, v35 | (v34 << 8), v33, v32 | (v31 << 8)) || !sub_1DB0560B4(v30, v29 | (v28 << 8), v27, v26 | (v25 << 8)) || !sub_1DB0560B4(v24, v23 | (v22 << 8), v21, v20 | (v19 << 8)))
  {
    return 0;
  }

  return sub_1DB0560B4(v18, v17 | (v16 << 8), v15, v14 | (v13 << 8));
}

uint64_t sub_1DB086758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 9) <= 0xD6u)
  {
    if (*(a1 + 9) > 0xD4u)
    {
      if (v2 == 213)
      {
        if (v4 != 213)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v2 == 214)
      {
        if (v4 != 214)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v2 == 211)
      {
        if (v4 != 211)
        {
          return 0;
        }

        goto LABEL_33;
      }

      if (v2 == 212)
      {
        if (v4 != 212)
        {
          return 0;
        }

        goto LABEL_33;
      }
    }

LABEL_31:
    if ((v4 - 211) < 9 || qword_1DB0BD040[v2 ^ 0x80] != qword_1DB0BD040[v4 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (*(a1 + 9) <= 0xD8u)
  {
    if (v2 == 215)
    {
      if (v4 != 215)
      {
        return 0;
      }

      goto LABEL_33;
    }

    if (v2 == 216)
    {
      if (v4 != 216)
      {
        return 0;
      }

      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v2 == 217)
  {
    if (v4 != 217)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v2 == 218)
  {
    if (v4 != 218)
    {
      return 0;
    }

    goto LABEL_33;
  }

  if (v2 != 219)
  {
    goto LABEL_31;
  }

  if (v4 != 219)
  {
    return 0;
  }

LABEL_33:
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s17CoreODIEssentials16ArmandDeviceDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = *v2;
  v7 = *(v2 + 24);
  v8 = *(v2 + 56);
  v163[2] = *(v2 + 40);
  v163[3] = v8;
  v164 = *(v2 + 72);
  v9 = *(v2 + 8);
  v163[1] = v7;
  v163[0] = v9;
  v140 = *(v2 + 88);
  v141 = *(v2 + 80);
  v139 = *(v2 + 96);
  v137 = *(v2 + 112);
  v138 = *(v2 + 104);
  v136 = *(v2 + 120);
  v132 = *(v2 + 136);
  v133 = *(v2 + 128);
  v131 = *(v2 + 144);
  v127 = *(v2 + 152);
  v126 = *(v2 + 160);
  v125 = *(v2 + 161);
  v120 = *(v2 + 176);
  v121 = *(v2 + 168);
  v119 = *(v2 + 184);
  *(v167 + 9) = *(v2 + 233);
  v10 = *(v2 + 208);
  v167[0] = *(v2 + 224);
  v11 = *(v2 + 192);
  v166 = v10;
  v165 = v11;
  *(v171 + 15) = *(v2 + 319);
  v12 = *(v2 + 288);
  v171[0] = *(v2 + 304);
  v170 = v12;
  v13 = *(v2 + 272);
  v168 = *(v2 + 256);
  v169 = v13;
  v115 = *(v2 + 328);
  v114 = *(v2 + 344);
  v110 = *(v2 + 346);
  v111 = *(v2 + 345);
  v106 = *(v2 + 360);
  v107 = *(v2 + 352);
  v105 = *(v2 + 368);
  v14 = *(v2 + 376);
  v173 = *(v2 + 392);
  v172 = v14;
  v15 = *(v2 + 408);
  v16 = *(v2 + 424);
  v17 = *(v2 + 440);
  v18 = *(v2 + 456);
  v178 = *(v2 + 472);
  v177 = v18;
  v176 = v17;
  v174 = v15;
  v175 = v16;
  v102 = *(v2 + 480);
  v101 = *(v2 + 488);
  memcpy(__dst, (v2 + 496), 0x119uLL);
  v19 = *(v5 + 800);
  v180 = *(v5 + 784);
  v181 = v19;
  v182 = *(v5 + 816);
  v20 = *(v5 + 904);
  v187 = *(v5 + 888);
  v188 = v20;
  v189[0] = *(v5 + 920);
  *(v189 + 10) = *(v5 + 930);
  v21 = *(v5 + 840);
  v183 = *(v5 + 824);
  v184 = v21;
  v22 = *(v5 + 872);
  v185 = *(v5 + 856);
  v186 = v22;
  v97 = *(v5 + 960);
  v98 = *(v5 + 952);
  v96 = *(v5 + 968);
  v94 = *(v5 + 984);
  v95 = *(v5 + 976);
  v93 = *(v5 + 992);
  v91 = *(v5 + 1008);
  v92 = *(v5 + 1000);
  v90 = *(v5 + 1016);
  v89 = *(v5 + 1024);
  v87 = *(v5 + 1033);
  v88 = *(v5 + 1032);
  v23 = *v4;
  v24 = *(v4 + 8);
  v191 = *(v4 + 72);
  v25 = *(v4 + 40);
  v190[3] = *(v4 + 56);
  v190[2] = v25;
  v26 = *(v4 + 24);
  v190[0] = v24;
  v190[1] = v26;
  v28 = *(v4 + 80);
  v27 = *(v4 + 88);
  v29 = *(v4 + 96);
  v134 = *(v4 + 104);
  v135 = *(v4 + 112);
  v30 = *(v4 + 120);
  v129 = *(v4 + 136);
  v130 = *(v4 + 128);
  v128 = *(v4 + 144);
  v124 = *(v4 + 152);
  v123 = *(v4 + 160);
  v122 = *(v4 + 161);
  v117 = *(v4 + 176);
  v118 = *(v4 + 168);
  v116 = *(v4 + 184);
  v31 = *(v4 + 192);
  v32 = *(v4 + 208);
  v33 = *(v4 + 224);
  *(v194 + 9) = *(v4 + 233);
  v194[0] = v33;
  v193 = v32;
  v192 = v31;
  v34 = *(v4 + 256);
  v35 = *(v4 + 272);
  v36 = *(v4 + 288);
  v37 = *(v4 + 304);
  *(v198 + 15) = *(v4 + 319);
  v198[0] = v37;
  v197 = v36;
  v195 = v34;
  v196 = v35;
  v113 = *(v4 + 328);
  v38 = *(v4 + 376);
  v200 = *(v4 + 392);
  v199 = v38;
  v39 = *(v4 + 408);
  v40 = *(v4 + 424);
  v41 = *(v4 + 440);
  v42 = *(v4 + 456);
  v205 = *(v4 + 472);
  v112 = *(v4 + 344);
  v204 = v42;
  v203 = v41;
  v201 = v39;
  v202 = v40;
  v108 = *(v4 + 346);
  v109 = *(v4 + 345);
  v43 = *(v4 + 352);
  v104 = *(v4 + 360);
  v103 = *(v4 + 368);
  v100 = *(v4 + 480);
  v99 = *(v4 + 488);
  memcpy(__src, (v4 + 496), 0x119uLL);
  v44 = *(v4 + 800);
  v207 = *(v4 + 784);
  v208 = v44;
  v209 = *(v4 + 816);
  v45 = *(v4 + 904);
  v214 = *(v4 + 888);
  v215 = v45;
  v216[0] = *(v4 + 920);
  *(v216 + 10) = *(v4 + 930);
  v46 = *(v4 + 840);
  v210 = *(v4 + 824);
  v211 = v46;
  v47 = *(v4 + 872);
  v212 = *(v4 + 856);
  v213 = v47;
  v48 = *(v4 + 952);
  v49 = *(v4 + 960);
  v50 = *(v4 + 968);
  v51 = *(v4 + 976);
  v52 = *(v4 + 984);
  v53 = *(v4 + 992);
  v54 = *(v4 + 1000);
  v55 = *(v4 + 1008);
  v56 = *(v4 + 1016);
  v57 = *(v4 + 1024);
  v58 = *(v4 + 1032);
  v59 = *(v4 + 1033);
  if (v6)
  {
    if (!v23)
    {
      goto LABEL_26;
    }

    v84 = *(v4 + 968);
    v85 = *(v4 + 960);
    v86 = *(v4 + 952);
    v81 = *(v4 + 992);
    v82 = *(v4 + 984);
    v83 = *(v4 + 976);
    v77 = *(v4 + 1032);
    v78 = *(v4 + 1016);
    v79 = *(v4 + 1008);
    v80 = *(v4 + 1000);
    v76 = *(v4 + 1033);

    v60 = sub_1DB07EA68(v6, v23);

    if ((v60 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v84 = *(v4 + 968);
    v85 = *(v4 + 960);
    v86 = *(v4 + 952);
    v81 = *(v4 + 992);
    v82 = *(v4 + 984);
    v83 = *(v4 + 976);
    v77 = *(v4 + 1032);
    v78 = *(v4 + 1016);
    v79 = *(v4 + 1008);
    v80 = *(v4 + 1000);
    v76 = *(v4 + 1033);
    if (v23)
    {
LABEL_26:
      v74 = 0;
      return v74 & 1;
    }
  }

  v61 = *(v5 + 24);
  v62 = *(v5 + 56);
  v146[2] = *(v5 + 40);
  v146[3] = v62;
  LOBYTE(v146[4]) = *(v5 + 72);
  v63 = *(v5 + 8);
  v146[1] = v61;
  v146[0] = v63;
  v64 = *(v4 + 24);
  v65 = *(v4 + 56);
  v145[2] = *(v4 + 40);
  v145[3] = v65;
  LOBYTE(v145[4]) = *(v4 + 72);
  v66 = *(v4 + 8);
  v145[1] = v64;
  v145[0] = v66;
  v67 = sub_1DB0847BC(v146, v145);
  v159[2] = v145[2];
  v159[3] = v145[3];
  v160 = v145[4];
  v159[1] = v145[1];
  v159[0] = v145[0];
  sub_1DB08B170(v163, v144);
  sub_1DB08B170(v190, v144);
  sub_1DB08EDEC(v159);
  v161[2] = v146[2];
  v161[3] = v146[3];
  v162 = v146[4];
  v161[1] = v146[1];
  v161[0] = v146[0];
  sub_1DB08EDEC(v161);
  if (!v67)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v141, v140, v139, v28, v27, v29) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v138, v137, v136, v134, v135, v30) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v133, v132, v131, v130, v129, v128) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055FA0(v127, v126 | (v125 << 8), v124, v123 | (v122 << 8)) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v121, v120, v119, v118, v117, v116) & 1) == 0)
  {
    goto LABEL_26;
  }

  v146[0] = v165;
  v146[1] = v166;
  v146[2] = v167[0];
  *(&v146[2] + 9) = *(v167 + 9);
  v145[0] = v192;
  v145[1] = v193;
  v145[2] = v194[0];
  *(&v145[2] + 9) = *(v194 + 9);
  v68 = sub_1DB084C0C(v146, v145);
  v155[0] = v145[0];
  v155[1] = v145[1];
  v156[0] = v145[2];
  *(v156 + 9) = *(&v145[2] + 9);
  sub_1DB08B1E0(&v165, v144);
  sub_1DB08B1E0(&v192, v144);
  sub_1DB08ECE4(v155);
  v157[0] = v146[0];
  v157[1] = v146[1];
  v158[0] = v146[2];
  *(v158 + 9) = *(&v146[2] + 9);
  sub_1DB08ECE4(v157);
  if ((v68 & 1) == 0)
  {
    goto LABEL_26;
  }

  v146[2] = v170;
  v146[3] = v171[0];
  *(&v146[3] + 15) = *(v171 + 15);
  v146[1] = v169;
  v146[0] = v168;
  v145[2] = v197;
  v145[3] = v198[0];
  *(&v145[3] + 15) = *(v198 + 15);
  v145[1] = v196;
  v145[0] = v195;
  v69 = sub_1DB084EF0(v146, v145);
  v151[2] = v145[2];
  v152[0] = v145[3];
  *(v152 + 15) = *(&v145[3] + 15);
  v151[1] = v145[1];
  v151[0] = v145[0];
  sub_1DB08B218(&v168, v144);
  sub_1DB08B218(&v195, v144);
  sub_1DB08EC60(v151);
  v153[2] = v146[2];
  v154[0] = v146[3];
  *(v154 + 15) = *(&v146[3] + 15);
  v153[1] = v146[1];
  v153[0] = v146[0];
  sub_1DB08EC60(v153);
  if ((v69 & 1) == 0)
  {
    goto LABEL_26;
  }

  v146[0] = v115;
  LOBYTE(v146[1]) = v114;
  v145[0] = v113;
  LOBYTE(v145[1]) = v112;
  v70 = sub_1DAF1F398(v146, v145);

  if ((v70 & 1) == 0)
  {
    goto LABEL_26;
  }

  LOBYTE(v146[0]) = v111;
  BYTE1(v146[0]) = v110;
  LOBYTE(v145[0]) = v109;
  BYTE1(v145[0]) = v108;
  if ((sub_1DB0852AC(v146, v145) & 1) == 0)
  {
    goto LABEL_26;
  }

  if ((sub_1DB055D08(v107, v106, v105, v43, v104, v103) & 1) == 0)
  {
    goto LABEL_26;
  }

  v146[4] = v176;
  v146[5] = v177;
  LOWORD(v146[6]) = v178;
  v146[0] = v172;
  v146[1] = v173;
  v146[3] = v175;
  v146[2] = v174;
  v145[4] = v203;
  v145[5] = v204;
  LOWORD(v145[6]) = v205;
  v145[0] = v199;
  v145[1] = v200;
  v145[3] = v202;
  v145[2] = v201;
  v71 = sub_1DB0853E8(v146, v145);
  v147[4] = v145[4];
  v147[5] = v145[5];
  v148 = v145[6];
  v147[0] = v145[0];
  v147[1] = v145[1];
  v147[3] = v145[3];
  v147[2] = v145[2];
  sub_1DB08B250(&v172, v144);
  sub_1DB08B250(&v199, v144);
  sub_1DB08EBDC(v147);
  v149[4] = v146[4];
  v149[5] = v146[5];
  v150 = v146[6];
  v149[0] = v146[0];
  v149[1] = v146[1];
  v149[3] = v146[3];
  v149[2] = v146[2];
  sub_1DB08EBDC(v149);
  if (!v71)
  {
    goto LABEL_26;
  }

  *&v146[0] = v102;
  BYTE8(v146[0]) = v101;
  *&v145[0] = v100;
  BYTE8(v145[0]) = v99;

  v72 = sub_1DB085D68(v146, v145);

  if (!v72)
  {
    goto LABEL_26;
  }

  memcpy(v144, __dst, 0x119uLL);
  memcpy(v143, __src, 0x119uLL);
  v73 = sub_1DB085EB0(v144, v143);
  memcpy(v145, v143, 0x119uLL);
  sub_1DB08B298(__dst, v142);
  sub_1DB08B298(__src, v142);
  sub_1DB08EB58(v145);
  memcpy(v146, v144, 0x119uLL);
  sub_1DB08EB58(v146);
  if ((v73 & 1) == 0)
  {
    goto LABEL_26;
  }

  v144[0] = v180;
  v144[1] = v181;
  LODWORD(v144[2]) = v182;
  v143[0] = v207;
  v143[1] = v208;
  LODWORD(v143[2]) = v209;
  if ((sub_1DB0861A4(v144, v143) & 1) == 0)
  {
    goto LABEL_26;
  }

  v144[4] = v187;
  v144[5] = v188;
  v144[6] = v189[0];
  *(&v144[6] + 10) = *(v189 + 10);
  v144[0] = v183;
  v144[1] = v184;
  v144[2] = v185;
  v144[3] = v186;
  v143[4] = v214;
  v143[5] = v215;
  v143[6] = v216[0];
  *(&v143[6] + 10) = *(v216 + 10);
  v143[0] = v210;
  v143[1] = v211;
  v143[2] = v212;
  v143[3] = v213;
  if (!sub_1DB0864E8(v144, v143) || (sub_1DB055D08(v98, v97, v96, v86, v85, v84) & 1) == 0 || (sub_1DB055D08(v95, v94, v93, v83, v82, v81) & 1) == 0 || (sub_1DB055D08(v92, v91, v90, v80, v79, v78) & 1) == 0)
  {
    goto LABEL_26;
  }

  *&v144[0] = v89;
  BYTE8(v144[0]) = v88;
  BYTE9(v144[0]) = v87;
  *&v143[0] = v57;
  BYTE8(v143[0]) = v77;
  BYTE9(v143[0]) = v76;
  v74 = sub_1DB086758(v144, v143);
  return v74 & 1;
}

uint64_t sub_1DB0873E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v8 = a1[3];
  v7 = a1[4];
  v9 = *(a1 + 40);
  v10 = a1[6];
  v11 = a1[7];
  v12 = *(a1 + 64);
  v13 = a1[9];
  v14 = *(a1 + 80);
  v15 = *(a1 + 81);
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v19 = *(a2 + 24);
  v18 = *(a2 + 32);
  v20 = *(a2 + 40);
  v22 = *(a2 + 48);
  v21 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 81);
  if (v6 <= 214)
  {
    if (v6 > 212)
    {
      if (v6 == 213)
      {
        if (v17 != 213)
        {
          return 0;
        }
      }

      else if (v17 != 214)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 211)
    {
      if (v17 != 211)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v6 == 212)
    {
      if (v17 != 212)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if ((v17 - 211) < 9 || qword_1DB0BD040[v6 ^ 0x80] != qword_1DB0BD040[v17 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 <= 216)
  {
    if (v6 == 215)
    {
      if (v17 != 215)
      {
        return 0;
      }
    }

    else if (v17 != 216)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 217)
  {
    if (v17 != 217)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 == 218)
  {
    if (v17 != 218)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v6 != 219)
  {
    goto LABEL_29;
  }

  if (v17 != 219)
  {
    return 0;
  }

LABEL_31:
  if (v5)
  {
    if (!v16)
    {
      return 0;
    }

    if (v4 != *a2 || v5 != v16)
    {
      v52 = *(a2 + 56);
      v49 = v12;
      v50 = *(a2 + 80);
      v47 = v10;
      v48 = v11;
      v46 = *(a2 + 72);
      v44 = v14;
      v45 = v15;
      v27 = v13;
      v28 = *(a2 + 81);
      v29 = *(a2 + 64);
      v30 = v7;
      v31 = *(a2 + 32);
      v32 = *(a2 + 24);
      v33 = *(a2 + 40);
      v34 = sub_1DB09E254();
      v20 = v33;
      v19 = v32;
      v18 = v31;
      v7 = v30;
      v23 = v29;
      v21 = v52;
      v26 = v28;
      v13 = v27;
      v14 = v44;
      v15 = v45;
      v24 = v46;
      v10 = v47;
      v11 = v48;
      v12 = v49;
      v25 = v50;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  if (v9 <= 214)
  {
    if (v9 > 212)
    {
      if (v9 == 213)
      {
        if (v20 != 213)
        {
          return 0;
        }
      }

      else if (v20 != 214)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 211)
    {
      if (v20 != 211)
      {
        return 0;
      }

      goto LABEL_69;
    }

    if (v9 == 212)
    {
      if (v20 != 212)
      {
        return 0;
      }

      goto LABEL_69;
    }

LABEL_67:
    if ((v20 - 211) < 9 || qword_1DB0BD040[v9 ^ 0x80] != qword_1DB0BD040[v20 ^ 0x80])
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 <= 216)
  {
    if (v9 == 215)
    {
      if (v20 != 215)
      {
        return 0;
      }
    }

    else if (v20 != 216)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 217)
  {
    if (v20 != 217)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 == 218)
  {
    if (v20 != 218)
    {
      return 0;
    }

    goto LABEL_69;
  }

  if (v9 != 219)
  {
    goto LABEL_67;
  }

  if (v20 != 219)
  {
    return 0;
  }

LABEL_69:
  if (!v7)
  {
    if (!v18)
    {
      goto LABEL_76;
    }

    return 0;
  }

  if (!v18)
  {
    return 0;
  }

  if (v8 != v19 || v7 != v18)
  {
    v51 = v13;
    v53 = v21;
    v36 = v26;
    v37 = v22;
    v38 = v23;
    v39 = sub_1DB09E254();
    v23 = v38;
    v13 = v51;
    v21 = v53;
    v22 = v37;
    v26 = v36;
    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_76:
  v40 = v12;
  v41 = v22;
  v42 = v13;
  v43 = v26;
  if ((sub_1DB055D08(v10, v11, v40, v41, v21, v23) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB055FA0(v42, v14 | (v15 << 8), v24, v25 | (v43 << 8));
}

BOOL _s17CoreODIEssentials25ArmandDeviceDataErrorCodeO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 0xD6u)
  {
    if (*a1 > 0xD4u)
    {
      if (v2 == 213)
      {
        return v3 == 213;
      }

      if (v2 == 214)
      {
        return v3 == 214;
      }
    }

    else
    {
      if (v2 == 211)
      {
        return v3 == 211;
      }

      if (v2 == 212)
      {
        return v3 == 212;
      }
    }
  }

  else if (*a1 <= 0xD8u)
  {
    if (v2 == 215)
    {
      return v3 == 215;
    }

    if (v2 == 216)
    {
      return v3 == 216;
    }
  }

  else
  {
    switch(v2)
    {
      case 0xD9:
        return v3 == 217;
      case 0xDA:
        return v3 == 218;
      case 0xDB:
        return v3 == 219;
    }
  }

  if ((v3 - 211) < 9)
  {
    return 0;
  }

  return qword_1DB0BD040[v2 ^ 0x80] == qword_1DB0BD040[v3 ^ 0x80];
}

uint64_t sub_1DB0878EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v33 = *(a1 + 24);
  v32 = *(a1 + 40);
  v29 = *(a1 + 64);
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v30 = *(a1 + 48);
  v31 = *(a2 + 24);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v27 = v9;
  v28 = *(a1 + 56);
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  if (v6 == 1)
  {
    v10 = 0;
    v11 = 0;
    if (v3 != 1)
    {
LABEL_3:

      goto LABEL_6;
    }
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 16);

    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  v4 = 0;
LABEL_6:
  v12 = sub_1DB0561D4(v10, v6, v11, v2, v3, v4);
  sub_1DB0932C0(v10, v6);
  sub_1DB0932C0(v2, v3);
  if ((v12 & 1) == 0)
  {
    if (v6 == 1)
    {
      v13 = 0;
      v8 = 0;
      v7 = 1;
      v14 = v33;
      v15 = v32;
      if (v3 != 1)
      {
LABEL_9:

        goto LABEL_12;
      }
    }

    else
    {

      v14 = v33;
      v15 = v32;
      v13 = v31;
      if (v3 != 1)
      {
        goto LABEL_9;
      }
    }

    v14 = 0;
    v15 = 0;
    v5 = 1;
LABEL_12:
    v16 = sub_1DB0561D4(v13, v7, v8, v14, v5, v15);
    sub_1DB0932C0(v13, v7);
    sub_1DB0932C0(v14, v5);
    if (v16)
    {
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      v18 = 0;
      v19 = 0;
      if (v3 != 1)
      {
LABEL_16:
        v20 = v28;

        v21 = v30;
        v22 = v29;
LABEL_19:
        v23 = sub_1DB0561D4(v18, v6, v19, v21, v20, v22);
        sub_1DB0932C0(v18, v6);
        sub_1DB0932C0(v21, v20);
        v17 = v23 ^ 1;
        return v17 & 1;
      }
    }

    else
    {
      v6 = v25;

      v18 = v27;
      v19 = v26;
      if (v3 != 1)
      {
        goto LABEL_16;
      }
    }

    v21 = 0;
    v22 = 0;
    v20 = 1;
    goto LABEL_19;
  }

LABEL_13:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1DB087B44(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v45 = *(a1 + 24);
  v44 = *(a1 + 40);
  v6 = *(a1 + 48);
  v41 = *(a1 + 64);
  v38 = *(a1 + 72);
  v36 = *(a1 + 81);
  v37 = *(a1 + 80);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  v39 = *(a2 + 24);
  v40 = *(a1 + 56);
  v9 = *(a2 + 40);
  v31 = *(a2 + 56);
  v32 = *(a2 + 48);
  v43 = *(a2 + 64);
  v35 = *(a2 + 72);
  v33 = *(a2 + 81);
  v34 = *(a2 + 80);
  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 16);
  }

  v42 = v6;
  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
  }

  v12 = sub_1DB0561D4(v10, v7, v11, v3, v2, v4);
  sub_1DB0932C0(v10, v7);
  sub_1DB0932C0(v3, v2);
  if (v12)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v13 = 0;
    v9 = 0;
    v8 = 1;
    v14 = v45;
    v15 = v44;
    if (v2 != 1)
    {
LABEL_10:

      goto LABEL_13;
    }
  }

  else
  {

    v14 = v45;
    v15 = v44;
    v13 = v39;
    if (v2 != 1)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  v15 = 0;
  v5 = 1;
LABEL_13:
  v16 = sub_1DB0561D4(v13, v8, v9, v14, v5, v15);
  sub_1DB0932C0(v13, v8);
  sub_1DB0932C0(v14, v5);
  if (v16)
  {
LABEL_20:
    v25 = 0;
    return v25 & 1;
  }

  if (v7 == 1)
  {
    v17 = 0;
    v43 = 0;
    v18 = 1;
    v19 = v42;
    v20 = v41;
    v21 = v40;
    if (v2 != 1)
    {
LABEL_16:

      goto LABEL_19;
    }
  }

  else
  {
    v18 = v31;

    v19 = v42;
    v20 = v41;
    v21 = v40;
    v17 = v32;
    if (v2 != 1)
    {
      goto LABEL_16;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 1;
LABEL_19:
  v22 = sub_1DB0561D4(v17, v18, v43, v19, v21, v20);
  v23 = v18;
  v24 = v22;
  sub_1DB0932C0(v17, v23);
  sub_1DB0932C0(v19, v21);
  if (v24)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = v35;
  }

  if (v7 == 1)
  {
    v28 = -9216;
  }

  else
  {
    v28 = v34 & 1 | (v33 << 8);
  }

  if (v2 == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = v38;
  }

  if (v2 == 1)
  {
    v30 = -9216;
  }

  else
  {
    v30 = v37 & 1 | (v36 << 8);
  }

  v25 = sub_1DAF1EECC(v27, v28, v29, v30) ^ 1;
  return v25 & 1;
}

uint64_t sub_1DB087E14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v25 = *(a1 + 56);
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v24 = *(a2 + 40);
  v12 = *(a2 + 56);
  if (v9 == 1)
  {
    v7 = 0;
    v13 = -9216;
  }

  else
  {
    v13 = *(a2 + 8) & 1 | (*(a2 + 9) << 8);
  }

  if (v2 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  if (v2 == 1)
  {
    v15 = -9216;
  }

  else
  {
    v15 = *(a1 + 8) & 1 | (*(a1 + 9) << 8);
  }

  if ((sub_1DAF1EECC(v7, v13, v14, v15) & 1) == 0)
  {
    if (v9 == 1)
    {
      v8 = 0;
      v10 = 0;
    }

    else
    {
    }

    v23 = v6;
    if (v2 == 1)
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
    }

    v16 = sub_1DB0561D4(v8, v9, v10, v3, v2, v4);
    sub_1DB0932C0(v8, v9);
    sub_1DB0932C0(v3, v2);
    if ((v16 & 1) == 0)
    {
      if (v9 == 1)
      {
        v18 = 0;
        v12 = 0;
        v11 = 1;
        v19 = v23;
        if (v2 != 1)
        {
LABEL_21:

          v20 = v25;
LABEL_24:
          v21 = sub_1DB0561D4(v18, v11, v12, v19, v5, v20);
          sub_1DB0932C0(v18, v11);
          sub_1DB0932C0(v19, v5);
          v17 = v21 ^ 1;
          return v17 & 1;
        }
      }

      else
      {

        v19 = v23;
        v18 = v24;
        if (v2 != 1)
        {
          goto LABEL_21;
        }
      }

      v19 = 0;
      v20 = 0;
      v5 = 1;
      goto LABEL_24;
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1DB087FF0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v41 = *(a1 + 24);
  v6 = *(a1 + 48);
  v37 = *(a1 + 64);
  v33 = *(a1 + 66);
  v34 = *(a1 + 65);
  v7 = *(a2 + 8);
  v8 = *(a2 + 32);
  v35 = *(a2 + 24);
  v36 = *(a1 + 56);
  v9 = *(a2 + 40);
  v29 = *(a2 + 56);
  v30 = *(a2 + 48);
  v39 = *(a2 + 64);
  v40 = *(a1 + 40);
  v31 = *(a2 + 66);
  v32 = *(a2 + 65);
  if (v7 == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 16);
  }

  v38 = v6;
  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
  }

  v12 = sub_1DB0561D4(v10, v7, v11, v3, v2, v4);
  sub_1DB0932C0(v10, v7);
  sub_1DB0932C0(v3, v2);
  if (v12)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v13 = 0;
    v9 = 0;
    v8 = 1;
    v14 = v41;
    v15 = v40;
    if (v2 != 1)
    {
LABEL_10:

      goto LABEL_13;
    }
  }

  else
  {

    v14 = v41;
    v15 = v40;
    v13 = v35;
    if (v2 != 1)
    {
      goto LABEL_10;
    }
  }

  v14 = 0;
  v15 = 0;
  v5 = 1;
LABEL_13:
  v16 = sub_1DB0561D4(v13, v8, v9, v14, v5, v15);
  sub_1DB0932C0(v13, v8);
  sub_1DB0932C0(v14, v5);
  if (v16)
  {
LABEL_20:
    v25 = 0;
    return v25 & 1;
  }

  if (v7 == 1)
  {
    v17 = 0;
    v39 = 0;
    v18 = 1;
    v19 = v38;
    v20 = v37;
    v21 = v36;
    if (v2 != 1)
    {
LABEL_16:

      goto LABEL_19;
    }
  }

  else
  {
    v18 = v29;

    v19 = v38;
    v20 = v37;
    v21 = v36;
    v17 = v30;
    if (v2 != 1)
    {
      goto LABEL_16;
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 1;
LABEL_19:
  v22 = sub_1DB0561D4(v17, v18, v39, v19, v21, v20);
  v23 = v18;
  v24 = v22;
  sub_1DB0932C0(v17, v23);
  sub_1DB0932C0(v19, v21);
  if (v24)
  {
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v27 = 3;
  }

  else
  {
    v27 = v32 | (v31 << 8);
  }

  if (v2 == 1)
  {
    v28 = 3;
  }

  else
  {
    v28 = v34 | (v33 << 8);
  }

  v25 = sub_1DB056364(v27, v28) ^ 1;
  return v25 & 1;
}

uint64_t sub_1DB088294(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  v7 = *(a1 + 40);
  v8 = *(a1 + 49);
  v9 = *(a1 + 56);
  v35 = *(a1 + 64);
  v10 = *(a1 + 65);
  v43 = *(a1 + 81);
  v40 = *(a1 + 97);
  v41 = *(a1 + 32);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v44 = *(a2 + 32);
  v14 = *(a2 + 33);
  v15 = *(a2 + 40);
  v37 = *(a1 + 48);
  v38 = *(a2 + 48);
  v16 = *(a2 + 49);
  v17 = *(a2 + 56);
  v36 = *(a2 + 64);
  v18 = *(a2 + 65);
  if (v11 == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a2;
  }

  if (v11 == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(a2 + 16);
  }

  v42 = *(a2 + 81);
  if (v3 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v2;
  }

  if (v3 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v4;
  }

  v39 = *(a2 + 97);
  if (sub_1DB0561D4(v19, v11, v20, v21, v3, v22))
  {
LABEL_14:
    v23 = 0;
    return v23 & 1;
  }

  if (v11 == 1)
  {
    v25 = 3;
  }

  else
  {
    v25 = (v12 >> 8) & 0xFF00 | BYTE1(v12);
  }

  v26 = v3 == 1;
  if (v26)
  {
    v27 = 3;
  }

  else
  {
    v27 = (v4 >> 8) & 0xFF00 | BYTE1(v4);
  }

  v28 = sub_1DB056364(v25, v27);
  v23 = v28 ^ (v28 | v26);
  if (((v28 | v26) & 1) == 0 && v11 != 1)
  {
    if (v6 == 211 && v14 != 211 || v8 == 211 && v16 != 211 || v10 == 211 && v18 != 211)
    {
      goto LABEL_14;
    }

    if ((v44 & 1) == 0 && (v41 & 1) == 0 && (v38 & 1) == 0 && (v37 & 1) == 0 && (v36 & 1) == 0 && (v35 & 1) == 0)
    {
      v30 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v13 longitude:v15];
      v31 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v5 longitude:v7];
      [v30 distanceFromLocation_];
      v33 = v32;

      v34 = v9 >= v17 ? v17 : v9;
      if (v33 <= v34)
      {
        v23 = 1;
        return v23 & 1;
      }
    }

    if (v43 == 211 && v42 != 211)
    {
      goto LABEL_14;
    }

    v23 = v40 != 211 || v39 == 211;
  }

  return v23 & 1;
}

uint64_t sub_1DB0884F4(uint64_t *a1, uint64_t *a2)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10170, &qword_1DB0BB370);
  v4 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94, v5);
  v7 = &v80 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E238, &qword_1DB0A01D0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v97 = &v80 - v19;
  v91 = type metadata accessor for AnyODIKnownBinding(0);
  v95 = *(v91 - 8);
  v20 = *(v95 + 64);
  v22 = MEMORY[0x1EEE9AC00](v91, v21);
  v24 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v98 = &v80 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v93 = &v80 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0FFF8, &qword_1DB0BB0C0);
  v31 = *(*(v30 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v30 - 8, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v96 = (&v80 - v36);
  if (*a2 == 1)
  {
    return 0;
  }

  v38 = *a1;
  if (*a1 == 1)
  {
    return 1;
  }

  v39 = *(a1 + 8) != 211 && *(a2 + 8) == 211;
  result = 1;
  if (!v39 && v38)
  {
    v88 = *a2;
    v89 = v7;
    v92 = v35;
    v83 = v24;
    v84 = v13;
    v40 = *(v38 + 64);
    v81 = v38 + 64;
    v41 = 1 << *(v38 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v40;
    v80 = (v41 + 63) >> 6;
    v86 = (v95 + 48);
    v87 = (v95 + 56);
    v85 = v38;

    v44 = 0;
    v45 = v91;
    v82 = v17;
    while (v43)
    {
      v46 = v44;
LABEL_23:
      v50 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v51 = v50 | (v46 << 6);
      v52 = (*(v85 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v93;
      sub_1DB08E6B0(*(v85 + 56) + *(v95 + 72) * v51, v93, type metadata accessor for AnyODIKnownBinding);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      v57 = *(v56 + 48);
      v58 = v92;
      *v92 = v54;
      v58[1] = v53;
      v49 = v58;
      sub_1DB08E91C(v55, v58 + v57, type metadata accessor for AnyODIKnownBinding);
      (*(*(v56 - 8) + 56))(v49, 0, 1, v56);

LABEL_24:
      v59 = v96;
      sub_1DAF624E8(v49, v96, &qword_1ECC0FFF8, &qword_1DB0BB0C0);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
      v61 = (*(*(v60 - 8) + 48))(v59, 1, v60);
      v90 = v61 != 1;
      if (v61 == 1)
      {
        goto LABEL_41;
      }

      v63 = *v96;
      v62 = v96[1];
      sub_1DB08E91C(v96 + *(v60 + 48), v98, type metadata accessor for AnyODIKnownBinding);
      v64 = v88;
      if (v88 && *(v88 + 16))
      {
        v65 = v97;
        v66 = sub_1DAF35210(v63, v62);
        v68 = v67;

        if (v68)
        {
          sub_1DB08E6B0(*(v64 + 56) + *(v95 + 72) * v66, v65, type metadata accessor for AnyODIKnownBinding);
          v69 = 0;
        }

        else
        {
          v69 = 1;
        }

        v17 = v82;
      }

      else
      {

        v69 = 1;
      }

      v71 = *v87;
      v72 = v97;
      (*v87)(v97, v69, 1, v45);
      sub_1DB08E6B0(v98, v17, type metadata accessor for AnyODIKnownBinding);
      v71(v17, 0, 1, v45);
      v73 = *(v94 + 48);
      v74 = v89;
      sub_1DAF40A84(v72, v89, &qword_1ECC0E238, &qword_1DB0A01D0);
      sub_1DAF40A84(v17, v74 + v73, &qword_1ECC0E238, &qword_1DB0A01D0);
      v75 = *v86;
      if ((*v86)(v74, 1, v45) == 1)
      {
        sub_1DAF40AEC(v17, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DAF40AEC(v97, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DB08E718(v98, type metadata accessor for AnyODIKnownBinding);
        if (v75(v74 + v73, 1, v45) != 1)
        {
          goto LABEL_40;
        }

        result = sub_1DAF40AEC(v74, &qword_1ECC0E238, &qword_1DB0A01D0);
      }

      else
      {
        v76 = v45;
        v77 = v84;
        sub_1DAF40A84(v74, v84, &qword_1ECC0E238, &qword_1DB0A01D0);
        if (v75(v74 + v73, 1, v76) == 1)
        {
          sub_1DAF40AEC(v17, &qword_1ECC0E238, &qword_1DB0A01D0);
          sub_1DAF40AEC(v97, &qword_1ECC0E238, &qword_1DB0A01D0);
          sub_1DB08E718(v98, type metadata accessor for AnyODIKnownBinding);
          sub_1DB08E718(v77, type metadata accessor for AnyODIKnownBinding);
LABEL_40:
          sub_1DAF40AEC(v74, &qword_1ECC10170, &qword_1DB0BB370);
LABEL_41:

          return v90;
        }

        v78 = v83;
        sub_1DB08E91C(v74 + v73, v83, type metadata accessor for AnyODIKnownBinding);
        v79 = sub_1DB0857B0(v77, v78);
        sub_1DB08E718(v78, type metadata accessor for AnyODIKnownBinding);
        sub_1DAF40AEC(v17, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DAF40AEC(v97, &qword_1ECC0E238, &qword_1DB0A01D0);
        sub_1DB08E718(v98, type metadata accessor for AnyODIKnownBinding);
        sub_1DB08E718(v77, type metadata accessor for AnyODIKnownBinding);
        result = sub_1DAF40AEC(v74, &qword_1ECC0E238, &qword_1DB0A01D0);
        v45 = v91;
        if ((v79 & 1) == 0)
        {
          goto LABEL_41;
        }
      }
    }

    if (v80 <= v44 + 1)
    {
      v47 = v44 + 1;
    }

    else
    {
      v47 = v80;
    }

    v48 = v47 - 1;
    v49 = v92;
    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v80)
      {
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10000, &qword_1DB0BB0C8);
        (*(*(v70 - 8) + 56))(v49, 1, 1, v70);
        v43 = 0;
        v44 = v48;
        goto LABEL_24;
      }

      v43 = *(v81 + 8 * v46);
      ++v44;
      if (v43)
      {
        v44 = v46;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB088D78(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  memcpy(v115, v2, sizeof(v115));
  memcpy(v116, v4, sizeof(v116));
  memcpy(v117, v4, 0x119uLL);
  if (sub_1DAF33380(v117) == 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v6 = v117[0];
    v8 = v117[1];
    v7 = v117[2];
  }

  memcpy(v114, v5, 0x119uLL);
  if (sub_1DAF33380(v114) == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v9 = v114[0];
    v11 = v114[1];
    v10 = v114[2];
  }

  v12 = sub_1DB0561D4(v6, v8, v7, v9, v11, v10);
  sub_1DB0932C0(v6, v8);
  sub_1DB0932C0(v9, v11);
  if (v12)
  {
    goto LABEL_78;
  }

  memcpy(v113, v4, 0x119uLL);
  if (sub_1DAF33380(v113) == 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v13 = v113[3];
    v15 = v113[4];
    v14 = v113[5];
  }

  memcpy(v112, v5, 0x119uLL);
  if (sub_1DAF33380(v112) == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = 1;
  }

  else
  {
    v16 = v112[3];
    v18 = v112[4];
    v17 = v112[5];
  }

  v19 = sub_1DB0561D4(v13, v15, v14, v16, v18, v17);
  sub_1DB0932C0(v13, v15);
  sub_1DB0932C0(v16, v18);
  if (v19)
  {
    goto LABEL_78;
  }

  memcpy(v111, v4, 0x119uLL);
  if (sub_1DAF33380(v111) == 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 1;
  }

  else
  {
    v20 = v111[6];
    v22 = v111[7];
    v21 = v111[8];
  }

  memcpy(v110, v5, 0x119uLL);
  if (sub_1DAF33380(v110) == 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v23 = v110[6];
    v25 = v110[7];
    v24 = v110[8];
  }

  v26 = sub_1DB0561D4(v20, v22, v21, v23, v25, v24);
  sub_1DB0932C0(v20, v22);
  sub_1DB0932C0(v23, v25);
  if (v26)
  {
    goto LABEL_78;
  }

  memcpy(v109, v4, 0x119uLL);
  if (sub_1DAF33380(v109) == 1)
  {
    v27 = 0;
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v27 = v109[9];
    v29 = v109[10];
    v28 = v109[11];
  }

  memcpy(v108, v5, 0x119uLL);
  if (sub_1DAF33380(v108) == 1)
  {
    v30 = 0;
    v31 = 0;
    v32 = 1;
  }

  else
  {
    v30 = v108[9];
    v32 = v108[10];
    v31 = v108[11];
  }

  v33 = sub_1DB0561D4(v27, v29, v28, v30, v32, v31);
  sub_1DB0932C0(v27, v29);
  sub_1DB0932C0(v30, v32);
  if (v33)
  {
    goto LABEL_78;
  }

  memcpy(v107, v4, 0x119uLL);
  if (sub_1DAF33380(v107) == 1)
  {
    v34 = 0;
    v35 = 0;
    v36 = 1;
  }

  else
  {
    v34 = v107[12];
    v36 = v107[13];
    v35 = v107[14];
  }

  memcpy(__dst, v5, 0x119uLL);
  if (sub_1DAF33380(__dst) == 1)
  {
    v37 = 0;
    v38 = 0;
    v39 = 1;
  }

  else
  {
    v37 = __dst[12];
    v39 = __dst[13];
    v38 = __dst[14];
  }

  v40 = sub_1DB0561D4(v34, v36, v35, v37, v39, v38);
  sub_1DB0932C0(v34, v36);
  sub_1DB0932C0(v37, v39);
  if (v40)
  {
    goto LABEL_78;
  }

  memcpy(v105, v116, 0x119uLL);
  if (sub_1DAF33380(v105) == 1)
  {
    v41 = 0;
    v42 = 0;
    v43 = 1;
  }

  else
  {
    v41 = v105[15];
    v43 = v105[16];
    v42 = v105[17];
  }

  memcpy(v104, v115, 0x119uLL);
  if (sub_1DAF33380(v104) == 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = 1;
  }

  else
  {
    v44 = v104[15];
    v46 = v104[16];
    v45 = v104[17];
  }

  v47 = sub_1DB0561D4(v41, v43, v42, v44, v46, v45);
  sub_1DB0932C0(v41, v43);
  sub_1DB0932C0(v44, v46);
  if (v47)
  {
    goto LABEL_78;
  }

  memcpy(v103, v116, 0x119uLL);
  if (sub_1DAF33380(v103) == 1)
  {
    v48 = 0;
    v49 = 0;
    v50 = 1;
  }

  else
  {
    v48 = v103[18];
    v50 = v103[19];
    v49 = v103[20];
  }

  memcpy(v102, v115, 0x119uLL);
  if (sub_1DAF33380(v102) == 1)
  {
    v51 = 0;
    v52 = 0;
    v53 = 1;
  }

  else
  {
    v51 = v102[18];
    v53 = v102[19];
    v52 = v102[20];
  }

  v54 = sub_1DB0561D4(v48, v50, v49, v51, v53, v52);
  sub_1DB0932C0(v48, v50);
  sub_1DB0932C0(v51, v53);
  if (v54)
  {
    goto LABEL_78;
  }

  memcpy(v101, v116, 0x119uLL);
  if (sub_1DAF33380(v101) == 1)
  {
    v55 = 0;
    v56 = 0;
    v57 = 1;
  }

  else
  {
    v55 = v101[21];
    v57 = v101[22];
    v56 = v101[23];
  }

  memcpy(v100, v115, 0x119uLL);
  if (sub_1DAF33380(v100) == 1)
  {
    v58 = 0;
    v59 = 0;
    v60 = 1;
  }

  else
  {
    v58 = v100[21];
    v60 = v100[22];
    v59 = v100[23];
  }

  v61 = sub_1DB0561D4(v55, v57, v56, v58, v60, v59);
  sub_1DB0932C0(v55, v57);
  sub_1DB0932C0(v58, v60);
  if (v61)
  {
    goto LABEL_78;
  }

  memcpy(v99, v116, 0x119uLL);
  if (sub_1DAF33380(v99) == 1)
  {
    v62 = 0;
    v63 = 0;
    v64 = 1;
  }

  else
  {
    v62 = v99[24];
    v64 = v99[25];
    v63 = v99[26];
  }

  memcpy(v98, v115, 0x119uLL);
  if (sub_1DAF33380(v98) == 1)
  {
    v65 = 0;
    v66 = 0;
    v67 = 1;
  }

  else
  {
    v65 = v98[24];
    v67 = v98[25];
    v66 = v98[26];
  }

  v68 = sub_1DB0561D4(v62, v64, v63, v65, v67, v66);
  sub_1DB0932C0(v62, v64);
  sub_1DB0932C0(v65, v67);
  if (v68)
  {
    goto LABEL_78;
  }

  memcpy(v97, v116, 0x119uLL);
  if (sub_1DAF33380(v97) == 1)
  {
    v69 = 0;
    v70 = 0;
    v71 = 1;
  }

  else
  {
    v69 = v97[27];
    v71 = v97[28];
    v70 = v97[29];
  }

  memcpy(v96, v115, 0x119uLL);
  if (sub_1DAF33380(v96) == 1)
  {
    v72 = 0;
    v73 = 0;
    v74 = 1;
  }

  else
  {
    v72 = v96[27];
    v74 = v96[28];
    v73 = v96[29];
  }

  v75 = sub_1DB0561D4(v69, v71, v70, v72, v74, v73);
  sub_1DB0932C0(v69, v71);
  sub_1DB0932C0(v72, v74);
  if (v75)
  {
    goto LABEL_78;
  }

  memcpy(v95, v116, 0x119uLL);
  if (sub_1DAF33380(v95) == 1)
  {
    v76 = 0;
    v77 = 0;
    v78 = 1;
  }

  else
  {
    v76 = v95[30];
    v78 = v95[31];
    v77 = v95[32];
  }

  memcpy(v94, v115, 0x119uLL);
  if (sub_1DAF33380(v94) == 1)
  {
    v79 = 0;
    v80 = 0;
    v81 = 1;
  }

  else
  {
    v79 = v94[30];
    v81 = v94[31];
    v80 = v94[32];
  }

  v82 = sub_1DB0561D4(v76, v78, v77, v79, v81, v80);
  sub_1DB0932C0(v76, v78);
  sub_1DB0932C0(v79, v81);
  if (v82)
  {
LABEL_78:
    v83 = 0;
  }

  else
  {
    memcpy(v93, v116, 0x119uLL);
    if (sub_1DAF33380(v93) == 1)
    {
      v85 = 0;
      v86 = 0;
      v87 = 1;
    }

    else
    {
      v85 = v93[33];
      v87 = v93[34];
      v86 = v93[35];
    }

    memcpy(v92, v115, 0x119uLL);
    if (sub_1DAF33380(v92) == 1)
    {
      v88 = 0;
      v89 = 0;
      v90 = 1;
    }

    else
    {
      v88 = v92[33];
      v90 = v92[34];
      v89 = v92[35];
    }

    v91 = sub_1DB0561D4(v85, v87, v86, v88, v90, v89);
    sub_1DB0932C0(v85, v87);
    sub_1DB0932C0(v88, v90);
    v83 = v91 ^ 1;
  }

  return v83 & 1;
}

uint64_t sub_1DB089824(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v27 = a1[3];
  v28 = a1[1];
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v26 = a2[3];
  v8 = *(a2 + 8);
  v9 = *a2;
  if (v9 == 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = *a2;
  }

  if (v2 == 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v2;
  }

  if (sub_1DB056364(v10, v11))
  {
    goto LABEL_35;
  }

  v12 = v9 == 3 ? 3 : WORD1(v5);
  v13 = v2 == 3 ? 3 : WORD1(v2);
  if (sub_1DB056364(v12, v13) & 1) != 0 || (v9 != 3 ? (v14 = HIWORD(v8)) : (v14 = 3), v2 != 3 ? (v15 = HIWORD(v4)) : (v15 = 3), (sub_1DB056364(v14, v15) & 1) != 0 || (v9 != 3 ? (v16 = v6) : (v16 = 0), v9 != 3 ? (v17 = v7 & 0xFF01) : (v17 = -9216), v2 != 3 ? (v18 = v28) : (v18 = 0), v2 != 3 ? (v19 = v3 & 0xFFFFFF01) : (v19 = -9216), (sub_1DAF1EECC(v16, v17, v18, v19))))
  {
LABEL_35:
    v20 = 0;
  }

  else
  {
    if (v9 == 3)
    {
      v22 = 0;
    }

    else
    {
      v22 = v26;
    }

    if (v9 == 3)
    {
      v23 = -9216;
    }

    else
    {
      v23 = v8 & 0xFF01;
    }

    if (v2 == 3)
    {
      v24 = 0;
    }

    else
    {
      v24 = v27;
    }

    if (v2 == 3)
    {
      v25 = -9216;
    }

    else
    {
      v25 = v4 & 0xFFFFFF01;
    }

    v20 = sub_1DAF1EECC(v22, v23, v24, v25) ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_1DB089958(_OWORD *a1, _OWORD *a2)
{
  v4 = a2[5];
  v146[4] = a2[4];
  v146[5] = v4;
  v147[0] = a2[6];
  *(v147 + 10) = *(a2 + 106);
  v5 = a2[1];
  v146[0] = *a2;
  v146[1] = v5;
  v6 = a2[3];
  v146[2] = a2[2];
  v146[3] = v6;
  if (sub_1DB0932A0(v146) == 1)
  {
    v7 = 0;
    v8 = 56320;
  }

  else
  {
    v7 = *&v146[0];
    v8 = BYTE8(v146[0]) | (BYTE9(v146[0]) << 8);
  }

  v9 = a1[5];
  v144[4] = a1[4];
  v144[5] = v9;
  v145[0] = a1[6];
  *(v145 + 10) = *(a1 + 106);
  v10 = a1[1];
  v144[0] = *a1;
  v144[1] = v10;
  v11 = a1[3];
  v144[2] = a1[2];
  v144[3] = v11;
  if (sub_1DB0932A0(v144) == 1)
  {
    v12 = 0;
    v13 = 56320;
  }

  else
  {
    v12 = *&v144[0];
    v13 = BYTE8(v144[0]) | (BYTE9(v144[0]) << 8);
  }

  if (sub_1DB0564C0(v7, v8, v12, v13))
  {
    goto LABEL_50;
  }

  v14 = a2[5];
  v141 = a2[4];
  v142 = v14;
  v143[0] = a2[6];
  *(v143 + 10) = *(a2 + 106);
  v15 = a2[1];
  v137 = *a2;
  v138 = v15;
  v16 = a2[3];
  v139 = a2[2];
  v140 = v16;
  if (sub_1DB0932A0(&v137) == 1)
  {
    v17 = 0;
    v18 = 56320;
  }

  else
  {
    v17 = v138;
    v18 = BYTE8(v138) | (BYTE9(v138) << 8);
  }

  v19 = a1[5];
  v134 = a1[4];
  v135 = v19;
  v136[0] = a1[6];
  *(v136 + 10) = *(a1 + 106);
  v20 = a1[1];
  v130 = *a1;
  v131 = v20;
  v21 = a1[3];
  v132 = a1[2];
  v133 = v21;
  if (sub_1DB0932A0(&v130) == 1)
  {
    v22 = 0;
    v23 = 56320;
  }

  else
  {
    v22 = v131;
    v23 = BYTE8(v131) | (BYTE9(v131) << 8);
  }

  if (sub_1DB0564C0(v17, v18, v22, v23))
  {
    goto LABEL_50;
  }

  v24 = a2[5];
  v127 = a2[4];
  v128 = v24;
  v129[0] = a2[6];
  *(v129 + 10) = *(a2 + 106);
  v25 = a2[1];
  v124[0] = *a2;
  v124[1] = v25;
  v26 = a2[3];
  v125 = a2[2];
  v126 = v26;
  if (sub_1DB0932A0(v124) == 1)
  {
    v27 = 0;
    v28 = 56320;
  }

  else
  {
    v27 = v125;
    v28 = BYTE8(v125) | (BYTE9(v125) << 8);
  }

  v29 = a1[5];
  v121 = a1[4];
  v122 = v29;
  v123[0] = a1[6];
  *(v123 + 10) = *(a1 + 106);
  v30 = a1[1];
  v118[0] = *a1;
  v118[1] = v30;
  v31 = a1[3];
  v119 = a1[2];
  v120 = v31;
  if (sub_1DB0932A0(v118) == 1)
  {
    v32 = 0;
    v33 = 56320;
  }

  else
  {
    v32 = v119;
    v33 = BYTE8(v119) | (BYTE9(v119) << 8);
  }

  if (sub_1DB0564C0(v27, v28, v32, v33))
  {
    goto LABEL_50;
  }

  v34 = a2[5];
  v115 = a2[4];
  v116 = v34;
  v117[0] = a2[6];
  *(v117 + 10) = *(a2 + 106);
  v35 = a2[1];
  v113[0] = *a2;
  v113[1] = v35;
  v36 = a2[3];
  v113[2] = a2[2];
  v114 = v36;
  if (sub_1DB0932A0(v113) == 1)
  {
    v37 = 0;
    v38 = 56320;
  }

  else
  {
    v37 = v114;
    v38 = BYTE8(v114) | (BYTE9(v114) << 8);
  }

  v39 = a1[5];
  v110 = a1[4];
  v111 = v39;
  v112[0] = a1[6];
  *(v112 + 10) = *(a1 + 106);
  v40 = a1[1];
  v108[0] = *a1;
  v108[1] = v40;
  v41 = a1[3];
  v108[2] = a1[2];
  v109 = v41;
  if (sub_1DB0932A0(v108) == 1)
  {
    v42 = 0;
    v43 = 56320;
  }

  else
  {
    v42 = v109;
    v43 = BYTE8(v109) | (BYTE9(v109) << 8);
  }

  if (sub_1DB0564C0(v37, v38, v42, v43))
  {
    goto LABEL_50;
  }

  v44 = a2[5];
  v105 = a2[4];
  v106 = v44;
  v107[0] = a2[6];
  *(v107 + 10) = *(a2 + 106);
  v45 = a2[1];
  v104[0] = *a2;
  v104[1] = v45;
  v46 = a2[3];
  v104[2] = a2[2];
  v104[3] = v46;
  if (sub_1DB0932A0(v104) == 1)
  {
    v47 = 0;
    v48 = 56320;
  }

  else
  {
    v47 = v105;
    v48 = BYTE8(v105) | (BYTE9(v105) << 8);
  }

  v49 = a1[5];
  v101 = a1[4];
  v102 = v49;
  v103[0] = a1[6];
  *(v103 + 10) = *(a1 + 106);
  v50 = a1[1];
  v100[0] = *a1;
  v100[1] = v50;
  v51 = a1[3];
  v100[2] = a1[2];
  v100[3] = v51;
  if (sub_1DB0932A0(v100) == 1)
  {
    v52 = 0;
    v53 = 56320;
  }

  else
  {
    v52 = v101;
    v53 = BYTE8(v101) | (BYTE9(v101) << 8);
  }

  if (sub_1DB0564C0(v47, v48, v52, v53))
  {
    goto LABEL_50;
  }

  v54 = a2[5];
  v97[4] = a2[4];
  v98 = v54;
  v99[0] = a2[6];
  *(v99 + 10) = *(a2 + 106);
  v55 = a2[1];
  v97[0] = *a2;
  v97[1] = v55;
  v56 = a2[3];
  v97[2] = a2[2];
  v97[3] = v56;
  if (sub_1DB0932A0(v97) == 1)
  {
    v57 = 0;
    v58 = 56320;
  }

  else
  {
    v57 = v98;
    v58 = BYTE8(v98) | (BYTE9(v98) << 8);
  }

  v59 = a1[5];
  v94[4] = a1[4];
  v95 = v59;
  v96[0] = a1[6];
  *(v96 + 10) = *(a1 + 106);
  v60 = a1[1];
  v94[0] = *a1;
  v94[1] = v60;
  v61 = a1[3];
  v94[2] = a1[2];
  v94[3] = v61;
  if (sub_1DB0932A0(v94) == 1)
  {
    v62 = 0;
    v63 = 56320;
  }

  else
  {
    v62 = v95;
    v63 = BYTE8(v95) | (BYTE9(v95) << 8);
  }

  if (sub_1DB0564C0(v57, v58, v62, v63))
  {
    goto LABEL_50;
  }

  v64 = a2[5];
  v92[4] = a2[4];
  v92[5] = v64;
  v93[0] = a2[6];
  *(v93 + 10) = *(a2 + 106);
  v65 = a2[1];
  v92[0] = *a2;
  v92[1] = v65;
  v66 = a2[3];
  v92[2] = a2[2];
  v92[3] = v66;
  if (sub_1DB0932A0(v92) == 1)
  {
    v67 = 0;
    v68 = 56320;
  }

  else
  {
    v67 = *&v93[0];
    v68 = BYTE8(v93[0]) | (BYTE9(v93[0]) << 8);
  }

  v69 = a1[5];
  v90[4] = a1[4];
  v90[5] = v69;
  v91[0] = a1[6];
  *(v91 + 10) = *(a1 + 106);
  v70 = a1[1];
  v90[0] = *a1;
  v90[1] = v70;
  v71 = a1[3];
  v90[2] = a1[2];
  v90[3] = v71;
  if (sub_1DB0932A0(v90) == 1)
  {
    v72 = 0;
    v73 = 56320;
  }

  else
  {
    v72 = *&v91[0];
    v73 = BYTE8(v91[0]) | (BYTE9(v91[0]) << 8);
  }

  if (sub_1DB0564C0(v67, v68, v72, v73))
  {
LABEL_50:
    v74 = 0;
  }

  else
  {
    v76 = a2[5];
    v88[4] = a2[4];
    v88[5] = v76;
    *v89 = a2[6];
    *&v89[10] = *(a2 + 106);
    v77 = a2[1];
    v88[0] = *a2;
    v88[1] = v77;
    v78 = a2[3];
    v88[2] = a2[2];
    v88[3] = v78;
    if (sub_1DB0932A0(v88) == 1)
    {
      v79 = 0;
      v80 = 56320;
    }

    else
    {
      v79 = *&v89[16];
      v80 = v89[24] | (v89[25] << 8);
    }

    v81 = a1[5];
    v86[4] = a1[4];
    v86[5] = v81;
    *v87 = a1[6];
    *&v87[10] = *(a1 + 106);
    v82 = a1[1];
    v86[0] = *a1;
    v86[1] = v82;
    v83 = a1[3];
    v86[2] = a1[2];
    v86[3] = v83;
    if (sub_1DB0932A0(v86) == 1)
    {
      v84 = 0;
      v85 = 56320;
    }

    else
    {
      v84 = *&v87[16];
      v85 = v87[24] | (v87[25] << 8);
    }

    v74 = sub_1DB0564C0(v79, v80, v84, v85) ^ 1;
  }

  return v74 & 1;
}

BOOL _s17CoreODIEssentials16ArmandDeviceDataV21isLessCompleteOrEqual3lhs2toSbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = *(v2 + 24);
  v7 = *(v2 + 56);
  v112 = *(v2 + 40);
  v113 = v7;
  v114 = *(v2 + 72);
  v8 = *(v2 + 8);
  v111 = v6;
  v110 = v8;
  v9 = *(v2 + 128);
  v117 = *(v2 + 112);
  v118 = v9;
  v119 = *(v2 + 144);
  v120 = *(v2 + 160);
  v10 = *(v2 + 96);
  v115 = *(v2 + 80);
  v116 = v10;
  v12 = *(v2 + 168);
  v11 = *(v2 + 176);
  v13 = *(v2 + 184);
  v14 = *(v2 + 208);
  v121 = *(v2 + 192);
  v122 = v14;
  v123[0] = *(v2 + 224);
  *(v123 + 9) = *(v2 + 233);
  v15 = *(v2 + 304);
  v126 = *(v2 + 288);
  *v127 = v15;
  *&v127[15] = *(v2 + 319);
  v16 = *(v2 + 256);
  v125 = *(v2 + 272);
  v124 = v16;
  v92 = *(v2 + 336);
  v93 = *(v2 + 328);
  v91 = *(v2 + 344);
  v86 = *(v2 + 346);
  v87 = *(v2 + 345);
  v82 = *(v2 + 360);
  v83 = *(v2 + 352);
  v81 = *(v2 + 368);
  v134 = *(v2 + 472);
  v17 = *(v2 + 440);
  v133 = *(v2 + 456);
  v132 = v17;
  v18 = *(v2 + 408);
  v131 = *(v2 + 424);
  v130 = v18;
  v19 = *(v2 + 376);
  v129 = *(v2 + 392);
  v128 = v19;
  v77 = *(v2 + 480);
  v76 = *(v2 + 488);
  memcpy(__dst, (v2 + 496), 0x119uLL);
  v72 = *(v5 + 792);
  v73 = *(v5 + 784);
  v70 = *(v5 + 808);
  v71 = *(v5 + 800);
  v69 = *(v5 + 816);
  v20 = *(v5 + 904);
  v140 = *(v5 + 888);
  v141 = v20;
  v142[0] = *(v5 + 920);
  *(v142 + 10) = *(v5 + 930);
  v21 = *(v5 + 840);
  v136 = *(v5 + 824);
  v137 = v21;
  v22 = *(v5 + 872);
  v138 = *(v5 + 856);
  v139 = v22;
  v23 = *(v4 + 24);
  v24 = *(v4 + 56);
  v145 = *(v4 + 40);
  v146 = v24;
  v147 = *(v4 + 72);
  v25 = *(v4 + 8);
  v144 = v23;
  v143 = v25;
  v26 = *(v4 + 128);
  v150 = *(v4 + 112);
  v151 = v26;
  v152 = *(v4 + 144);
  v153 = *(v4 + 160);
  v27 = *(v4 + 96);
  v148 = *(v4 + 80);
  v149 = v27;
  v28 = *(v4 + 168);
  v29 = *(v4 + 176);
  v30 = *(v4 + 184);
  *(v156 + 9) = *(v4 + 233);
  v31 = *(v4 + 208);
  v156[0] = *(v4 + 224);
  v32 = *(v4 + 192);
  v155 = v31;
  v154 = v32;
  *&v160[15] = *(v4 + 319);
  v33 = *(v4 + 288);
  *v160 = *(v4 + 304);
  v159 = v33;
  v34 = *(v4 + 272);
  v157 = *(v4 + 256);
  v158 = v34;
  v89 = *(v4 + 336);
  v90 = *(v4 + 328);
  v88 = *(v4 + 344);
  v84 = *(v4 + 346);
  v85 = *(v4 + 345);
  v79 = *(v4 + 360);
  v80 = *(v4 + 352);
  v78 = *(v4 + 368);
  v35 = *(v4 + 376);
  v162 = *(v4 + 392);
  v161 = v35;
  v36 = *(v4 + 408);
  v37 = *(v4 + 424);
  v38 = *(v4 + 440);
  v39 = *(v4 + 456);
  v167 = *(v4 + 472);
  v166 = v39;
  v165 = v38;
  v163 = v36;
  v164 = v37;
  v75 = *(v4 + 480);
  v74 = *(v4 + 488);
  memcpy(v168, (v4 + 496), 0x119uLL);
  v67 = *(v4 + 792);
  v68 = *(v4 + 784);
  v65 = *(v4 + 808);
  v66 = *(v4 + 800);
  v64 = *(v4 + 816);
  v40 = *(v4 + 904);
  v173 = *(v4 + 888);
  v174 = v40;
  v175[0] = *(v4 + 920);
  *(v175 + 10) = *(v4 + 930);
  v41 = *(v4 + 840);
  v169 = *(v4 + 824);
  v170 = v41;
  v42 = *(v4 + 872);
  v171 = *(v4 + 856);
  v172 = v42;
  if ((sub_1DB055D08(v110, *(&v110 + 1), v111, v143, *(&v143 + 1), v144) & 1) == 0 || (sub_1DB055D08(*(&v111 + 1), v112, BYTE8(v112), *(&v144 + 1), v145, BYTE8(v145)) & 1) == 0 || (sub_1DB055D08(v113, *(&v113 + 1), v114, v146, *(&v146 + 1), v147) & 1) == 0)
  {
    v43 = *(v5 + 24);
    v44 = *(v5 + 56);
    v99[2] = *(v5 + 40);
    v99[3] = v44;
    LOBYTE(v99[4]) = *(v5 + 72);
    v45 = *(v5 + 8);
    v99[1] = v43;
    v99[0] = v45;
    v46 = *(v4 + 24);
    v47 = *(v4 + 56);
    __src[2] = *(v4 + 40);
    __src[3] = v47;
    LOBYTE(__src[4]) = *(v4 + 72);
    v48 = *(v4 + 8);
    __src[1] = v46;
    __src[0] = v48;
    sub_1DB08B170(&v110, v101);
    sub_1DB08B170(&v143, v101);
    v49 = sub_1DB0878EC(v99, __src);
    v100[2] = __src[2];
    v100[3] = __src[3];
    LOBYTE(v100[4]) = __src[4];
    v100[1] = __src[1];
    v100[0] = __src[0];
    sub_1DAF40AEC(v100, &qword_1ECC0FC98, &qword_1DB0B92A0);
    v101[2] = v99[2];
    v101[3] = v99[3];
    LOBYTE(v101[4]) = v99[4];
    v101[1] = v99[1];
    v101[0] = v99[0];
    sub_1DAF40AEC(v101, &qword_1ECC0FC98, &qword_1DB0B92A0);
    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1DB055D08(v115, *(&v115 + 1), v116, v148, *(&v148 + 1), v149) & 1) == 0 || (sub_1DB055D08(*(&v116 + 1), v117, BYTE8(v117), *(&v149 + 1), v150, BYTE8(v150)) & 1) == 0 || (sub_1DB055D08(v118, *(&v118 + 1), v119, v151, *(&v151 + 1), v152) & 1) == 0 || (sub_1DB055FA0(*(&v119 + 1), v120 | (HIBYTE(v120) << 8), *(&v152 + 1), v153 | (HIBYTE(v153) << 8)) & 1) == 0)
  {
    v99[2] = v117;
    v99[3] = v118;
    v99[4] = v119;
    LOWORD(v99[5]) = v120;
    v99[0] = v115;
    v99[1] = v116;
    __src[2] = v150;
    __src[3] = v151;
    __src[4] = v152;
    LOWORD(__src[5]) = v153;
    __src[0] = v148;
    __src[1] = v149;
    sub_1DB08B1A8(&v115, v101);
    sub_1DB08B1A8(&v148, v101);
    v50 = sub_1DB087B44(v99, __src);
    v100[2] = __src[2];
    v100[3] = __src[3];
    v100[4] = __src[4];
    LOWORD(v100[5]) = __src[5];
    v100[0] = __src[0];
    v100[1] = __src[1];
    sub_1DAF40AEC(v100, &qword_1ECC0FCA0, &qword_1DB0B92A8);
    v101[2] = v99[2];
    v101[3] = v99[3];
    v101[4] = v99[4];
    LOWORD(v101[5]) = v99[5];
    v101[0] = v99[0];
    v101[1] = v99[1];
    sub_1DAF40AEC(v101, &qword_1ECC0FCA0, &qword_1DB0B92A8);
    if ((v50 & 1) == 0)
    {
      return 0;
    }
  }

  *&v101[0] = v12;
  *(&v101[0] + 1) = v11;
  LOBYTE(v101[1]) = v13;
  *&v100[0] = v28;
  *(&v100[0] + 1) = v29;
  LOBYTE(v100[1]) = v30;
  v51 = sub_1DAF1F398(v101, v100);

  if (v51 & 1) == 0 && (sub_1DB0561D4(v28, v29, v30, v12, v11, v13))
  {
    return 0;
  }

  v101[0] = v121;
  v101[1] = v122;
  v101[2] = v123[0];
  *(&v101[2] + 9) = *(v123 + 9);
  v100[0] = v154;
  v100[1] = v155;
  v100[2] = v156[0];
  *(&v100[2] + 9) = *(v156 + 9);
  v52 = sub_1DB084C0C(v101, v100);
  v106[0] = v100[0];
  v106[1] = v100[1];
  v107[0] = v100[2];
  *(v107 + 9) = *(&v100[2] + 9);
  sub_1DB08B1E0(&v121, v99);
  sub_1DB08B1E0(&v154, v99);
  sub_1DB08ECE4(v106);
  v108[0] = v101[0];
  v108[1] = v101[1];
  v109[0] = v101[2];
  *(v109 + 9) = *(&v101[2] + 9);
  sub_1DB08ECE4(v108);
  if ((v52 & 1) == 0)
  {
    v99[0] = v121;
    v99[1] = v122;
    v99[2] = v123[0];
    *(&v99[2] + 9) = *(v123 + 9);
    __src[0] = v154;
    __src[1] = v155;
    __src[2] = v156[0];
    *(&__src[2] + 9) = *(v156 + 9);
    sub_1DB08B1E0(&v121, v101);
    sub_1DB08B1E0(&v154, v101);
    v53 = sub_1DB087E14(v99, __src);
    v100[0] = __src[0];
    v100[1] = __src[1];
    v100[2] = __src[2];
    *(&v100[2] + 9) = *(&__src[2] + 9);
    sub_1DAF40AEC(v100, &qword_1ECC0FCA8, &qword_1DB0B92B0);
    v101[0] = v99[0];
    v101[1] = v99[1];
    v101[2] = v99[2];
    *(&v101[2] + 9) = *(&v99[2] + 9);
    sub_1DAF40AEC(v101, &qword_1ECC0FCA8, &qword_1DB0B92B0);
    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1DB055D08(v124, *(&v124 + 1), v125, v157, *(&v157 + 1), v158) & 1) == 0 || (sub_1DB055D08(*(&v125 + 1), v126, BYTE8(v126), *(&v158 + 1), v159, BYTE8(v159)) & 1) == 0 || (sub_1DB055D08(*v127, *&v127[8], v127[16], *v160, *&v160[8], v160[16]) & 1) == 0 || (sub_1DB055E54(*&v127[17], *&v160[17]) & 1) == 0)
  {
    v99[2] = v126;
    v99[3] = *v127;
    *(&v99[3] + 15) = *&v127[15];
    v99[1] = v125;
    v99[0] = v124;
    __src[2] = v159;
    __src[3] = *v160;
    *(&__src[3] + 15) = *&v160[15];
    __src[1] = v158;
    __src[0] = v157;
    sub_1DB08B218(&v124, v101);
    sub_1DB08B218(&v157, v101);
    v54 = sub_1DB087FF0(v99, __src);
    v100[2] = __src[2];
    v100[3] = __src[3];
    *(&v100[3] + 15) = *(&__src[3] + 15);
    v100[1] = __src[1];
    v100[0] = __src[0];
    sub_1DAF40AEC(v100, &qword_1ECC0FCB0, &qword_1DB0B92B8);
    v101[2] = v99[2];
    v101[3] = v99[3];
    *(&v101[3] + 15) = *(&v99[3] + 15);
    v101[1] = v99[1];
    v101[0] = v99[0];
    sub_1DAF40AEC(v101, &qword_1ECC0FCB0, &qword_1DB0B92B8);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  v101[4] = v132;
  v101[5] = v133;
  LOWORD(v101[6]) = v134;
  v101[0] = v128;
  v101[1] = v129;
  v101[3] = v131;
  v101[2] = v130;
  v100[4] = v165;
  v100[5] = v166;
  LOWORD(v100[6]) = v167;
  v100[0] = v161;
  v100[1] = v162;
  v100[3] = v164;
  v100[2] = v163;
  v55 = sub_1DB0853E8(v101, v100);
  v102[4] = v100[4];
  v102[5] = v100[5];
  v103 = v100[6];
  v102[0] = v100[0];
  v102[1] = v100[1];
  v102[3] = v100[3];
  v102[2] = v100[2];
  sub_1DB08B250(&v128, v99);
  sub_1DB08B250(&v161, v99);
  sub_1DB08EBDC(v102);
  v104[4] = v101[4];
  v104[5] = v101[5];
  v105 = v101[6];
  v104[0] = v101[0];
  v104[1] = v101[1];
  v104[3] = v101[3];
  v104[2] = v101[2];
  sub_1DB08EBDC(v104);
  if (!v55)
  {
    v99[4] = v132;
    v99[5] = v133;
    LOWORD(v99[6]) = v134;
    v99[0] = v128;
    v99[1] = v129;
    v99[3] = v131;
    v99[2] = v130;
    __src[4] = v165;
    __src[5] = v166;
    LOWORD(__src[6]) = v167;
    __src[0] = v161;
    __src[1] = v162;
    __src[3] = v164;
    __src[2] = v163;
    sub_1DB08B250(&v128, v101);
    sub_1DB08B250(&v161, v101);
    v56 = sub_1DB088294(v99, __src);
    v100[4] = __src[4];
    v100[5] = __src[5];
    LOWORD(v100[6]) = __src[6];
    v100[0] = __src[0];
    v100[1] = __src[1];
    v100[3] = __src[3];
    v100[2] = __src[2];
    sub_1DAF40AEC(v100, &qword_1ECC0FCB8, &qword_1DB0B92C0);
    v101[4] = v99[4];
    v101[5] = v99[5];
    LOWORD(v101[6]) = v99[6];
    v101[0] = v99[0];
    v101[1] = v99[1];
    v101[3] = v99[3];
    v101[2] = v99[2];
    sub_1DAF40AEC(v101, &qword_1ECC0FCB8, &qword_1DB0B92C0);
    if ((v56 & 1) == 0)
    {
      return 0;
    }
  }

  *&v101[0] = v93;
  *(&v101[0] + 1) = v92;
  LOBYTE(v101[1]) = v91;
  *&v100[0] = v90;
  *(&v100[0] + 1) = v89;
  LOBYTE(v100[1]) = v88;
  v57 = sub_1DAF1F398(v101, v100);

  if (v57 & 1) == 0 && (sub_1DB0561D4(v90, v89, v88, v93, v92, v91))
  {
    return 0;
  }

  LOBYTE(v101[0]) = v87;
  BYTE1(v101[0]) = v86;
  LOBYTE(v100[0]) = v85;
  BYTE1(v100[0]) = v84;
  if (sub_1DB0852AC(v101, v100) & 1) == 0 && (sub_1DB056364(v85 | (v84 << 8), v87 | (v86 << 8)))
  {
    return 0;
  }

  *&v101[0] = v83;
  *(&v101[0] + 1) = v82;
  LOBYTE(v101[1]) = v81;
  *&v100[0] = v80;
  *(&v100[0] + 1) = v79;
  LOBYTE(v100[1]) = v78;
  v58 = sub_1DAF1F398(v101, v100);

  if (v58 & 1) == 0 && (sub_1DB0561D4(v80, v79, v78, v83, v82, v81))
  {
    return 0;
  }

  *&v101[0] = v77;
  BYTE8(v101[0]) = v76;
  *&v100[0] = v75;
  BYTE8(v100[0]) = v74;

  v59 = sub_1DB085D68(v101, v100);

  if (!v59)
  {
    *&v101[0] = v77;
    BYTE8(v101[0]) = v76;
    *&v100[0] = v75;
    BYTE8(v100[0]) = v74;

    v60 = sub_1DB0884F4(v101, v100);
    sub_1DB08B288(*&v100[0]);
    sub_1DB08B288(*&v101[0]);
    if ((v60 & 1) == 0)
    {
      return 0;
    }
  }

  memcpy(v99, __dst, 0x119uLL);
  memcpy(__src, v168, 0x119uLL);
  v61 = sub_1DB085EB0(v99, __src);
  memcpy(v100, __src, 0x119uLL);
  sub_1DB08B298(__dst, v97);
  sub_1DB08B298(v168, v97);
  sub_1DB08EB58(v100);
  memcpy(v101, v99, 0x119uLL);
  sub_1DB08EB58(v101);
  if ((v61 & 1) == 0)
  {
    memcpy(v96, __dst, 0x119uLL);
    nullsub_3(v96);
    memcpy(v95, v96, 0x119uLL);
    memcpy(v97, v168, 0x119uLL);
    nullsub_3(v97);
    memcpy(v94, v97, 0x119uLL);
    sub_1DB08B298(__dst, v99);
    sub_1DB08B298(v168, v99);
    v62 = sub_1DB088D78(v95, v94);
    memcpy(__src, v94, 0x119uLL);
    sub_1DAF40AEC(__src, &qword_1ECC0FCC0, &qword_1DB0B92C8);
    memcpy(v99, v95, 0x119uLL);
    sub_1DAF40AEC(v99, &qword_1ECC0FCC0, &qword_1DB0B92C8);
    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  *&v99[0] = v73;
  *(&v99[0] + 1) = v72;
  *&v99[1] = v71;
  *(&v99[1] + 1) = v70;
  LODWORD(v99[2]) = v69;
  *&__src[0] = v68;
  *(&__src[0] + 1) = v67;
  *&__src[1] = v66;
  *(&__src[1] + 1) = v65;
  LODWORD(__src[2]) = v64;
  if ((sub_1DB0861A4(v99, __src) & 1) == 0)
  {
    *&v99[0] = v73;
    *(&v99[0] + 1) = v72;
    *&v99[1] = v71;
    *(&v99[1] + 1) = v70;
    LODWORD(v99[2]) = v69;
    *&__src[0] = v68;
    *(&__src[0] + 1) = v67;
    *&__src[1] = v66;
    *(&__src[1] + 1) = v65;
    LODWORD(__src[2]) = v64;
    if ((sub_1DB089824(v99, __src) & 1) == 0)
    {
      return 0;
    }
  }

  v99[4] = v140;
  v99[5] = v141;
  v99[6] = v142[0];
  *(&v99[6] + 10) = *(v142 + 10);
  v99[0] = v136;
  v99[1] = v137;
  v99[2] = v138;
  v99[3] = v139;
  __src[4] = v173;
  __src[5] = v174;
  __src[6] = v175[0];
  *(&__src[6] + 10) = *(v175 + 10);
  __src[0] = v169;
  __src[1] = v170;
  __src[2] = v171;
  __src[3] = v172;
  if (sub_1DB0864E8(v99, __src))
  {
    return 1;
  }

  __src[4] = v140;
  __src[5] = v141;
  __src[6] = v142[0];
  *(&__src[6] + 10) = *(v142 + 10);
  __src[0] = v136;
  __src[1] = v137;
  __src[2] = v138;
  __src[3] = v139;
  nullsub_3(__src);
  v97[4] = __src[4];
  v97[5] = __src[5];
  v97[6] = __src[6];
  *(&v97[6] + 10) = *(&__src[6] + 10);
  v97[0] = __src[0];
  v97[1] = __src[1];
  v97[2] = __src[2];
  v97[3] = __src[3];
  v99[3] = v172;
  v99[2] = v171;
  v99[1] = v170;
  v99[0] = v169;
  *(&v99[6] + 10) = *(v175 + 10);
  v99[6] = v175[0];
  v99[5] = v174;
  v99[4] = v173;
  nullsub_3(v99);
  v96[4] = v99[4];
  v96[5] = v99[5];
  v96[6] = v99[6];
  *(&v96[6] + 10) = *(&v99[6] + 10);
  v96[0] = v99[0];
  v96[1] = v99[1];
  v96[2] = v99[2];
  v96[3] = v99[3];
  return (sub_1DB089958(v97, v96) & 1) != 0;
}

uint64_t sub_1DB08B288(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1DB08B2D0()
{
  result = qword_1ECC0FD20;
  if (!qword_1ECC0FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD20);
  }

  return result;
}

unint64_t sub_1DB08B324()
{
  result = qword_1ECC0FD28;
  if (!qword_1ECC0FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD28);
  }

  return result;
}

unint64_t sub_1DB08B378()
{
  result = qword_1ECC0FD30;
  if (!qword_1ECC0FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD30);
  }

  return result;
}

unint64_t sub_1DB08B3CC()
{
  result = qword_1ECC0FD38;
  if (!qword_1ECC0FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD38);
  }

  return result;
}

unint64_t sub_1DB08B420()
{
  result = qword_1ECC0FD40;
  if (!qword_1ECC0FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD40);
  }

  return result;
}

unint64_t sub_1DB08B474()
{
  result = qword_1ECC0FD48;
  if (!qword_1ECC0FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD48);
  }

  return result;
}

unint64_t sub_1DB08B4C8()
{
  result = qword_1ECC0FD50;
  if (!qword_1ECC0FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD50);
  }

  return result;
}

unint64_t sub_1DB08B51C()
{
  result = qword_1ECC0FD58;
  if (!qword_1ECC0FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD58);
  }

  return result;
}

unint64_t sub_1DB08B570()
{
  result = qword_1ECC0FD60;
  if (!qword_1ECC0FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD60);
  }

  return result;
}

unint64_t sub_1DB08B5C4()
{
  result = qword_1ECC0FD68;
  if (!qword_1ECC0FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD68);
  }

  return result;
}

unint64_t sub_1DB08B618()
{
  result = qword_1ECC0FD70;
  if (!qword_1ECC0FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FD70);
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[6];

  v5 = v1[9];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DB08B71C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v20 = *(v2 + 80);
  v21 = *(v2 + 64);
  v18 = *(v2 + 112);
  v19 = *(v2 + 96);
  v16 = *(v2 + 144);
  v17 = *(v2 + 128);
  v15 = *(v2 + 160);
  v11 = *(v2 + 176);
  v12 = *(v2 + 184);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DAF62CC4;

  return sub_1DB073774(a1, a2, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1DB08B868()
{
  result = qword_1ECC0FDD8;
  if (!qword_1ECC0FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDD8);
  }

  return result;
}

unint64_t sub_1DB08B8C0()
{
  result = qword_1ECC0FDE0;
  if (!qword_1ECC0FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDE0);
  }

  return result;
}

uint64_t dispatch thunk of ODIBindingsProvider.allBindings.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DAF63DEC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ODIBindingsProvider.geoCoder.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAFD37FC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ODIBindingsProvider.getBinding(bindingName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DAF63DEC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ODIBindingsProvider.registerBinding(_:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1DAF63DEC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ODILocationProvider.gpsLocationEnabled()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB0954A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ODILocationProvider.getLocation()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DB0954A0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ODILocationProvider.getLocationOrWait()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF61E90;

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for ArmandDeviceDataErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x25)
  {
    goto LABEL_20;
  }

  v2 = a2 + 219;
  if (a2 + 219 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 219;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 219;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0xD3)
  {
    v8 = v7 - 210;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArmandDeviceDataErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 219;
  if (a3 + 219 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0x25)
  {
    v5 = 0;
  }

  if (a2 > 0x24)
  {
    v6 = ((a2 - 37) >> 8) + 1;
    *result = a2 - 37;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 - 37;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1DB08C284(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xD3)
  {
    return v1 - 210;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DB08C298(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 46;
  }

  return result;
}

uint64_t sub_1DB08C2C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 1034))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DB08C31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1032) = 0;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1034) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 1034) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of ArmandDataFiller.updateArmandData(for:locationHelper:bindingsHelper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 600);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1DAFD37FC;

  return v14(a1, a2, a3, a4);
}

uint64_t getEnumTagSinglePayload for TelephonyUtilitiesSource(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

_WORD *storeEnumTagSinglePayload for TelephonyUtilitiesSource(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB08C864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_1DB08C8C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB08C924(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DB08C980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB08C9F8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[36])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DB08CA58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DB08CADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x25 && *(a1 + 122))
  {
    return (*a1 + 37);
  }

  v3 = *(a1 + 9);
  if (v3 <= 0xDB)
  {
    v4 = 219;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 220;
  if (v3 < 0xD3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1DB08CB30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x24)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 37;
    if (a3 >= 0x25)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0x25)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 - 37;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x25 && *(a1 + 10))
  {
    return (*a1 + 37);
  }

  v3 = *(a1 + 9);
  if (v3 <= 0xDB)
  {
    v4 = 219;
  }

  else
  {
    v4 = *(a1 + 9);
  }

  v5 = v4 - 220;
  if (v3 < 0xD3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x24)
  {
    *(result + 8) = 0;
    *result = a2 - 37;
    if (a3 >= 0x25)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x25)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 - 37;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArmandDeviceDataErrorCode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArmandDeviceDataErrorCode.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DB08CE70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 281))
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

uint64_t sub_1DB08CECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 281) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 281) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DB08CFA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 98))
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

uint64_t sub_1DB08D004(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DB08D0A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 67))
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

uint64_t sub_1DB08D104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 67) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB08D180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1DB08D1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1DB08D274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 82))
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

uint64_t sub_1DB08D2D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB08D34C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_1DB08D3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DB08D424()
{
  result = qword_1ECC0FDE8;
  if (!qword_1ECC0FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDE8);
  }

  return result;
}

unint64_t sub_1DB08D47C()
{
  result = qword_1ECC0FDF0;
  if (!qword_1ECC0FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDF0);
  }

  return result;
}

unint64_t sub_1DB08D4D4()
{
  result = qword_1ECC0FDF8;
  if (!qword_1ECC0FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FDF8);
  }

  return result;
}

unint64_t sub_1DB08D52C()
{
  result = qword_1ECC0FE00;
  if (!qword_1ECC0FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE00);
  }

  return result;
}

unint64_t sub_1DB08D584()
{
  result = qword_1ECC0FE08;
  if (!qword_1ECC0FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE08);
  }

  return result;
}

unint64_t sub_1DB08D5DC()
{
  result = qword_1ECC0FE10;
  if (!qword_1ECC0FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE10);
  }

  return result;
}

unint64_t sub_1DB08D634()
{
  result = qword_1ECC0FE18;
  if (!qword_1ECC0FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE18);
  }

  return result;
}

unint64_t sub_1DB08D68C()
{
  result = qword_1ECC0FE20;
  if (!qword_1ECC0FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE20);
  }

  return result;
}

unint64_t sub_1DB08D6E4()
{
  result = qword_1ECC0FE28;
  if (!qword_1ECC0FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE28);
  }

  return result;
}

unint64_t sub_1DB08D73C()
{
  result = qword_1ECC0FE30;
  if (!qword_1ECC0FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE30);
  }

  return result;
}

unint64_t sub_1DB08D794()
{
  result = qword_1ECC0FE38;
  if (!qword_1ECC0FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE38);
  }

  return result;
}

unint64_t sub_1DB08D7EC()
{
  result = qword_1ECC0FE40;
  if (!qword_1ECC0FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE40);
  }

  return result;
}

unint64_t sub_1DB08D844()
{
  result = qword_1ECC0FE48;
  if (!qword_1ECC0FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE48);
  }

  return result;
}

unint64_t sub_1DB08D89C()
{
  result = qword_1ECC0FE50;
  if (!qword_1ECC0FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE50);
  }

  return result;
}

unint64_t sub_1DB08D8F4()
{
  result = qword_1ECC0FE58;
  if (!qword_1ECC0FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE58);
  }

  return result;
}

unint64_t sub_1DB08D94C()
{
  result = qword_1ECC0FE60;
  if (!qword_1ECC0FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE60);
  }

  return result;
}

unint64_t sub_1DB08D9A4()
{
  result = qword_1ECC0FE68;
  if (!qword_1ECC0FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE68);
  }

  return result;
}

unint64_t sub_1DB08D9FC()
{
  result = qword_1ECC0FE70;
  if (!qword_1ECC0FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE70);
  }

  return result;
}

unint64_t sub_1DB08DA54()
{
  result = qword_1ECC0FE78;
  if (!qword_1ECC0FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE78);
  }

  return result;
}

unint64_t sub_1DB08DAAC()
{
  result = qword_1ECC0FE80;
  if (!qword_1ECC0FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE80);
  }

  return result;
}

unint64_t sub_1DB08DB04()
{
  result = qword_1ECC0FE88;
  if (!qword_1ECC0FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE88);
  }

  return result;
}

unint64_t sub_1DB08DB5C()
{
  result = qword_1ECC0FE90;
  if (!qword_1ECC0FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE90);
  }

  return result;
}

unint64_t sub_1DB08DBB4()
{
  result = qword_1ECC0FE98;
  if (!qword_1ECC0FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FE98);
  }

  return result;
}

unint64_t sub_1DB08DC0C()
{
  result = qword_1ECC0FEA0;
  if (!qword_1ECC0FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEA0);
  }

  return result;
}

unint64_t sub_1DB08DC64()
{
  result = qword_1ECC0FEA8;
  if (!qword_1ECC0FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEA8);
  }

  return result;
}

unint64_t sub_1DB08DCBC()
{
  result = qword_1ECC0FEB0;
  if (!qword_1ECC0FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEB0);
  }

  return result;
}

unint64_t sub_1DB08DD14()
{
  result = qword_1ECC0FEB8;
  if (!qword_1ECC0FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEB8);
  }

  return result;
}

unint64_t sub_1DB08DD6C()
{
  result = qword_1ECC0FEC0;
  if (!qword_1ECC0FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEC0);
  }

  return result;
}

unint64_t sub_1DB08DDC4()
{
  result = qword_1ECC0FEC8;
  if (!qword_1ECC0FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEC8);
  }

  return result;
}

unint64_t sub_1DB08DE1C()
{
  result = qword_1ECC0FED0;
  if (!qword_1ECC0FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FED0);
  }

  return result;
}

unint64_t sub_1DB08DE74()
{
  result = qword_1ECC0FED8;
  if (!qword_1ECC0FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FED8);
  }

  return result;
}

unint64_t sub_1DB08DECC()
{
  result = qword_1ECC0FEE0;
  if (!qword_1ECC0FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEE0);
  }

  return result;
}

unint64_t sub_1DB08DF24()
{
  result = qword_1ECC0FEE8;
  if (!qword_1ECC0FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEE8);
  }

  return result;
}

unint64_t sub_1DB08DF7C()
{
  result = qword_1ECC0FEF0;
  if (!qword_1ECC0FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEF0);
  }

  return result;
}

unint64_t sub_1DB08DFD4()
{
  result = qword_1ECC0FEF8;
  if (!qword_1ECC0FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FEF8);
  }

  return result;
}

unint64_t sub_1DB08E02C()
{
  result = qword_1ECC0FF00;
  if (!qword_1ECC0FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF00);
  }

  return result;
}

unint64_t sub_1DB08E084()
{
  result = qword_1ECC0FF08;
  if (!qword_1ECC0FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF08);
  }

  return result;
}

unint64_t sub_1DB08E0DC()
{
  result = qword_1ECC0FF10;
  if (!qword_1ECC0FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF10);
  }

  return result;
}

unint64_t sub_1DB08E134()
{
  result = qword_1ECC0FF18;
  if (!qword_1ECC0FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF18);
  }

  return result;
}

uint64_t sub_1DB08E188(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1E12801C0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      sub_1DB081F4C(&v12, v11, a4);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1DB08E208(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7272456F6ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61567465736E75 && a2 == 0xEA00000000006575 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974704F6C696ELL && a2 == 0xEB000000006C616ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465696E6564 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7463657078656E75 && a2 == 0xEF726F7272456465 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001DB0CB590 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E69646F636E65 && a2 == 0xED0000726F727245 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DB0CB5B0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6369447974706D65 && a2 == 0xEF7972616E6F6974 || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x726F727245636170 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_1DB08E57C()
{
  result = qword_1ECC0FF20;
  if (!qword_1ECC0FF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E448, &qword_1DB0A3110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF20);
  }

  return result;
}

uint64_t sub_1DB08E5F8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAF4062C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB08E648(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DB08E6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB08E718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DB08E778()
{
  result = qword_1ECC0FF40;
  if (!qword_1ECC0FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF40);
  }

  return result;
}

unint64_t sub_1DB08E7CC()
{
  result = qword_1ECC0FF70;
  if (!qword_1ECC0FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF70);
  }

  return result;
}

unint64_t sub_1DB08E820()
{
  result = qword_1ECC0FF88;
  if (!qword_1ECC0FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FF88);
  }

  return result;
}

unint64_t sub_1DB08E874()
{
  result = qword_1ECC0FFB8;
  if (!qword_1ECC0FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FFB8);
  }

  return result;
}

unint64_t sub_1DB08E8C8()
{
  result = qword_1ECC0FFD0;
  if (!qword_1ECC0FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0FFD0);
  }

  return result;
}

uint64_t sub_1DB08E91C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DB08E984()
{
  result = qword_1ECC10018;
  if (!qword_1ECC10018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10018);
  }

  return result;
}

unint64_t sub_1DB08E9D8()
{
  result = qword_1ECC10048;
  if (!qword_1ECC10048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10048);
  }

  return result;
}

unint64_t sub_1DB08EA2C()
{
  result = qword_1ECC10078;
  if (!qword_1ECC10078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10078);
  }

  return result;
}

unint64_t sub_1DB08EAB0()
{
  result = qword_1ECC10090;
  if (!qword_1ECC10090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10090);
  }

  return result;
}

unint64_t sub_1DB08EB04()
{
  result = qword_1ECC100A8;
  if (!qword_1ECC100A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100A8);
  }

  return result;
}

unint64_t sub_1DB08EB88()
{
  result = qword_1ECC100C0;
  if (!qword_1ECC100C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100C0);
  }

  return result;
}

unint64_t sub_1DB08EC0C()
{
  result = qword_1ECC100D8;
  if (!qword_1ECC100D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100D8);
  }

  return result;
}

unint64_t sub_1DB08EC90()
{
  result = qword_1ECC100F0;
  if (!qword_1ECC100F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC100F0);
  }

  return result;
}

unint64_t sub_1DB08ED14()
{
  result = qword_1ECC10120;
  if (!qword_1ECC10120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10120);
  }

  return result;
}

unint64_t sub_1DB08ED98()
{
  result = qword_1ECC10138;
  if (!qword_1ECC10138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10138);
  }

  return result;
}

uint64_t sub_1DB08EE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C62756F44 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69727453 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7630409 && a2 == 0xE300000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1702125892 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1819242306 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961727241 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1819047246 && a2 == 0xE400000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DB08F060(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x645F73656E757469 && a2 == 0xEB00000000646973;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x645F64756F6C6369 && a2 == 0xEB00000000646973 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C707061 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6169726573 && a2 == 0xE600000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684628325 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F2E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684628325 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684628851 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F400(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469636369 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1769172329 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6572506D69537369 && a2 == 0xEC000000746E6573)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08F560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F6C5F737067 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0CC0C0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C1160 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0C1180 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DB08F7B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697665447369 && a2 == 0xEE0064656B636F4CLL;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB0C1300 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0C1320 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614C656369766564 && a2 == 0xEE0065676175676ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DB0C0FC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DB08F980(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DB0C1350 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB0C1370 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001DB0C1390 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1DB09E254();

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

uint64_t sub_1DB08FAA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974614C656D6F68 && a2 == 0xEC00000065647574;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6F4C656D6F68 && a2 == 0xED00006564757469 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0CC060 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DB0CC080 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C676E696C6C6962 && a2 == 0xEF65647574697461 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB0CC0A0 == a2 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746974614C636F64 && a2 == 0xEB00000000656475 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69676E6F4C636F64 && a2 == 0xEC00000065647574)
  {

    return 7;
  }

  else
  {
    v6 = sub_1DB09E254();

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

uint64_t sub_1DB08FD5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869 || (sub_1DB09E254() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E72656570 && a2 == 0xEE00786966657250 || (sub_1DB09E254() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696D614672656570 && a2 == 0xEE00656D614E796CLL || (sub_1DB09E254() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6576694772656570 && a2 == 0xED0000656D614E6ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6464694D72656570 && a2 == 0xEE00656D614E656CLL || (sub_1DB09E254() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D614E72656570 && a2 == 0xEE00786966667553 || (sub_1DB09E254() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6B63694E72656570 && a2 == 0xEC000000656D616ELL)
  {

    return 11;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1DB09017C(void *a1)
{
  [a1 coordinate];
  v3 = v2;
  if (qword_1ECC0DFD8 != -1)
  {
    swift_once();
  }

  v4 = 0x64696C61766E69;
  v5 = qword_1ECC0E9F0;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = [v5 stringFromNumber_];

  if (v7)
  {
    v8 = sub_1DB09D6C4();
  }

  else
  {
    v8 = 0x64696C61766E69;
  }

  MEMORY[0x1E127FE90](44, 0xE100000000000000);
  [a1 coordinate];
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v11 = [v5 stringFromNumber_];

  if (v11)
  {
    v4 = sub_1DB09D6C4();
    v13 = v12;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x1E127FE90](v4, v13);

  return v8;
}

uint64_t sub_1DB090324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DB06B9B4(a1, v4, v5, v6);
}

unint64_t sub_1DB090428()
{
  result = qword_1ECC10150;
  if (!qword_1ECC10150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10150);
  }

  return result;
}

unint64_t sub_1DB09047C()
{
  result = qword_1ECC10158;
  if (!qword_1ECC10158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10158);
  }

  return result;
}

uint64_t sub_1DB0904D0(uint64_t a1)
{
  v4 = v1[3];
  v13 = v1[2];
  v5 = v1[4];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[13];
  v10 = v1[14];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DB075DEC(a1, v13, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_1DB090620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DAF63DEC;

  return sub_1DB07DA08(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DB090710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB07D274(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DB0907E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB07C3D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_240Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB090900(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB07B0C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1DB0909D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB07AE04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB090A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB07A4E8(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1DB090B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB079BCC(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_1DB090C44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DB079774(a1, v4, v5, v6);
}

uint64_t sub_1DB090CF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[18];
  v8 = v1[19];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB0790F0(a1, v4, v5, (v1 + 4), v6, (v1 + 13), v7, v8);
}

uint64_t sub_1DB090DD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB0787D4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t objectdestroy_256Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_1DB041AD8(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DB090F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = v1[13];
  v8 = v1[14];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB077CC4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t objectdestroy_218Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1DB091080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF63DEC;

  return sub_1DB077B28(a1, v4, v5, v6);
}

uint64_t sub_1DB091134(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DAF63DEC;

  return sub_1DB0771F4(a1, v4, v5, v6, v7, (v1 + 6), v8, v9);
}

uint64_t sub_1DB09120C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB077A8C(a1, v4, v1 + 24);
}

uint64_t sub_1DB0912D0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF63DEC;

  return sub_1DB0785F4(a1, v1);
}

uint64_t sub_1DB09136C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB079060();
}

uint64_t objectdestroy_288Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DB091448(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB0796D8(a1, v4, v1 + 24);
}

uint64_t sub_1DB0914F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB07A458();
}

uint64_t sub_1DB091590()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB07AD74();
}

uint64_t sub_1DB09162C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF62CC4;

  return sub_1DB07BDF0(a1);
}

uint64_t sub_1DB0916DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF63DEC;

  return sub_1DB07CE64(a1, v1);
}

uint64_t sub_1DB091778()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF63DEC;

  return sub_1DB07D978();
}

uint64_t sub_1DB091814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF63DEC;

  return sub_1DB07E5A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1DB0918C4(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB076400(a1, (v1 + 2), v4, v5, v6, v7);
}

uint64_t sub_1DB0919B0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;

  v4 = sub_1DB08E188(v3, sub_1DB09324C, &type metadata for GeocoderSource.AddressType, sub_1DB082DA0);

  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1DAFF6FC4(*(v4 + 16), 0);
  v7 = sub_1DAFF7F6C(v250, v6 + 4, v5, v4);
  sub_1DAF333A4();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1DAF3FDB4(MEMORY[0x1E69E7CC0]);
  v9 = v6[2];
  if (!v9)
  {
LABEL_312:

    return v8;
  }

  v10 = 32;
  v231 = v6;
  while (1)
  {
    if (*(v6 + v10) <= 1u)
    {
      if (!*(v6 + v10))
      {
        if (*(v2 + 16) && (v14 = sub_1DAF35210(0x31746565727473, 0xE700000000000000), (v15 & 1) != 0))
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v14, &v242);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v16 = swift_dynamicCast();
          if (v16)
          {
            v17 = v235;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v18 = *(&v235 + 1);
          }

          else
          {
            v18 = 0;
          }

          *&v224 = v17;
          *(&v224 + 1) = v18;
          if (!*(v2 + 16))
          {
            goto LABEL_85;
          }
        }

        else
        {
          v224 = 0uLL;
          if (!*(v2 + 16))
          {
            goto LABEL_85;
          }
        }

        v34 = sub_1DAF35210(0x32746565727473, 0xE700000000000000);
        if (v35)
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v34, &v242);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v36 = swift_dynamicCast();
          v37 = v235;
          if (!v36)
          {
            v37 = 0;
          }

          v222 = v37;
          if (v36)
          {
            v38 = *(&v235 + 1);
          }

          else
          {
            v38 = 0;
          }

LABEL_86:
          v223 = v8;
          if (*(v2 + 16) && (v54 = sub_1DAF35210(2037672291, 0xE400000000000000), (v55 & 1) != 0))
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v54, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v56 = swift_dynamicCast();
            v57 = v235;
            if (!v56)
            {
              v57 = 0;
            }

            v218 = v57;
            if (v56)
            {
              v58 = *(&v235 + 1);
            }

            else
            {
              v58 = 0;
            }

            if (!*(v2 + 16))
            {
              goto LABEL_159;
            }
          }

          else
          {
            v218 = 0;
            v58 = 0;
            if (!*(v2 + 16))
            {
              goto LABEL_159;
            }
          }

          v74 = sub_1DAF35210(0x6574617473, 0xE500000000000000);
          if (v75)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v74, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v76 = swift_dynamicCast();
            if (v76)
            {
              v77 = v235;
            }

            else
            {
              v77 = 0;
            }

            if (v76)
            {
              v78 = *(&v235 + 1);
            }

            else
            {
              v78 = 0;
            }

            if (!*(v2 + 16))
            {
              goto LABEL_197;
            }

            goto LABEL_160;
          }

LABEL_159:
          v77 = 0;
          v78 = 0;
          if (!*(v2 + 16))
          {
            goto LABEL_197;
          }

LABEL_160:
          v94 = sub_1DAF35210(0x6F436C6174736F70, 0xEA00000000006564);
          if (v95)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v94, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v96 = swift_dynamicCast();
            if (v96)
            {
              v97 = v235;
            }

            else
            {
              v97 = 0;
            }

            if (v96)
            {
              v98 = *(&v235 + 1);
            }

            else
            {
              v98 = 0;
            }

            v99 = *(v2 + 16);
            if (!v99)
            {
LABEL_254:
              v119 = 0;
              if (*(&v224 + 1))
              {
                goto LABEL_262;
              }

LABEL_255:
              if (v38 || v58 || v98 || v119)
              {
                goto LABEL_262;
              }

              v247 = 0u;
              v248 = 0u;
              v245 = 0u;
              v246 = 0u;
              v243 = 0u;
              v244 = 0u;
              v242 = 0u;
              sub_1DB0931F8(&v242);
              v8 = v223;
              v150 = sub_1DAF35670(0);
              if ((v151 & 1) == 0)
              {
                goto LABEL_311;
              }

              v152 = v150;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v234[0] = v223;
              v6 = v231;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_297;
              }

LABEL_261:
              sub_1DAF3DC18();
              v8 = *&v234[0];
LABEL_297:
              v174 = (*(v8 + 56) + 112 * v152);
              v176 = v174[1];
              v175 = v174[2];
              v235 = *v174;
              v236 = v176;
              v237 = v175;
              v177 = v174[3];
              v178 = v174[4];
              v179 = v174[6];
              v240 = v174[5];
              v241 = v179;
              v238 = v177;
              v239 = v178;
              sub_1DB0810B0(v152, v8);
              sub_1DB0931F8(&v235);
              goto LABEL_10;
            }

LABEL_198:
            v116 = sub_1DAF35210(0x437972746E756F63, 0xEB0000000065646FLL);
            if ((v117 & 1) == 0)
            {
              v99 = 0;
              goto LABEL_254;
            }

            sub_1DAF3523C(*(v2 + 56) + 40 * v116, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v118 = swift_dynamicCast();
            v119 = *(&v235 + 1);
            v99 = v235;
            if (!v118)
            {
              v99 = 0;
              v119 = 0;
            }

            if (!*(&v224 + 1))
            {
              goto LABEL_255;
            }

LABEL_262:
            v235 = v224;
            *&v236 = v222;
            *(&v236 + 1) = v38;
            *&v237 = v218;
            *(&v237 + 1) = v58;
            *&v238 = v77;
            *(&v238 + 1) = v78;
            *&v239 = v97;
            *(&v239 + 1) = v98;
            *&v240 = v99;
            *(&v240 + 1) = v119;
            v241 = 0uLL;
            v242 = v224;
            *&v243 = v222;
            *(&v243 + 1) = v38;
            *&v244 = v218;
            *(&v244 + 1) = v58;
            *&v245 = v77;
            *(&v245 + 1) = v78;
            *&v246 = v97;
            *(&v246 + 1) = v98;
            *&v247 = v99;
            *(&v247 + 1) = v119;
            v248 = 0uLL;
            sub_1DAF406C8(&v235, v234);
            sub_1DB0931F8(&v242);
            v154 = swift_isUniquelyReferenced_nonNull_native();
            v233 = v223;
            v155 = sub_1DAF35670(0);
            v157 = v223[2];
            v158 = (v156 & 1) == 0;
            v159 = __OFADD__(v157, v158);
            v160 = v157 + v158;
            if (v159)
            {
              goto LABEL_314;
            }

            v161 = v156;
            if (v223[3] >= v160)
            {
              if ((v154 & 1) == 0)
              {
                v199 = v155;
                sub_1DAF3DC18();
                v155 = v199;
                if (v161)
                {
                  goto LABEL_305;
                }

                goto LABEL_300;
              }
            }

            else
            {
              sub_1DAF3AACC(v160, v154);
              v155 = sub_1DAF35670(0);
              if ((v161 & 1) != (v162 & 1))
              {
                goto LABEL_317;
              }
            }

            if (v161)
            {
              goto LABEL_305;
            }

LABEL_300:
            v8 = v223;
            v223[(v155 >> 6) + 8] |= 1 << v155;
            *(v223[6] + v155) = 0;
            v180 = (v223[7] + 112 * v155);
            v182 = v236;
            v181 = v237;
            *v180 = v235;
            v180[1] = v182;
            v180[2] = v181;
            v183 = v238;
            v184 = v239;
            v185 = v241;
            v180[5] = v240;
            v180[6] = v185;
            v180[3] = v183;
            v180[4] = v184;
            v186 = v223[2];
            v159 = __OFADD__(v186, 1);
            v187 = v186 + 1;
            if (v159)
            {
              goto LABEL_315;
            }

            goto LABEL_310;
          }

LABEL_197:
          v97 = 0;
          v98 = 0;
          v99 = *(v2 + 16);
          if (!v99)
          {
            goto LABEL_254;
          }

          goto LABEL_198;
        }

LABEL_85:
        v222 = 0;
        v38 = 0;
        goto LABEL_86;
      }

      if (*(v2 + 16) && (v24 = sub_1DAF35210(0xD000000000000016, 0x80000001DB0C1D20), (v25 & 1) != 0))
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v24, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v26 = swift_dynamicCast();
        v27 = v235;
        if (!v26)
        {
          v27 = 0;
        }

        v220 = v27;
        if (v26)
        {
          v28 = *(&v235 + 1);
        }

        else
        {
          v28 = 0;
        }

        v229 = v28;
        if (!*(v2 + 16))
        {
          goto LABEL_104;
        }
      }

      else
      {
        v220 = 0;
        v229 = 0;
        if (!*(v2 + 16))
        {
          goto LABEL_104;
        }
      }

      v44 = sub_1DAF35210(0xD000000000000016, 0x80000001DB0C1D40);
      if (v45)
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v44, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v46 = swift_dynamicCast();
        v47 = v235;
        if (!v46)
        {
          v47 = 0;
        }

        v216 = v47;
        if (v46)
        {
          v48 = *(&v235 + 1);
        }

        else
        {
          v48 = 0;
        }

        v226 = v48;
        if (!*(v2 + 16))
        {
          goto LABEL_141;
        }

        goto LABEL_105;
      }

LABEL_104:
      v216 = 0;
      v226 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_141;
      }

LABEL_105:
      v64 = sub_1DAF35210(0xD000000000000013, 0x80000001DB0C1CA0);
      if (v65)
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v64, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v66 = swift_dynamicCast();
        v67 = v235;
        if (!v66)
        {
          v67 = 0;
        }

        v213 = v67;
        if (v66)
        {
          v68 = *(&v235 + 1);
        }

        else
        {
          v68 = 0;
        }

        if (!*(v2 + 16))
        {
          goto LABEL_179;
        }

        goto LABEL_142;
      }

LABEL_141:
      v213 = 0;
      v68 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_179;
      }

LABEL_142:
      v84 = sub_1DAF35210(0xD000000000000014, 0x80000001DB0C1CC0);
      if (v85)
      {
        sub_1DAF3523C(*(v2 + 56) + 40 * v84, &v242);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
        v86 = swift_dynamicCast();
        v87 = v235;
        if (!v86)
        {
          v87 = 0;
        }

        v210 = v87;
        if (v86)
        {
          v88 = *(&v235 + 1);
        }

        else
        {
          v88 = 0;
        }

        if (!*(v2 + 16))
        {
          goto LABEL_213;
        }

LABEL_180:
        v106 = sub_1DAF35210(0xD000000000000019, 0x80000001DB0C1C80);
        if (v107)
        {
          sub_1DAF3523C(*(v2 + 56) + 40 * v106, &v242);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
          v108 = swift_dynamicCast();
          if (v108)
          {
            v109 = v235;
          }

          else
          {
            v109 = 0;
          }

          if (v108)
          {
            v110 = *(&v235 + 1);
          }

          else
          {
            v110 = 0;
          }

LABEL_214:
          v232 = v9;
          if (*(v2 + 16))
          {
            v105 = v8;
            v126 = sub_1DAF35210(0xD000000000000016, 0x80000001DB0C1CE0);
            if (v127)
            {
              sub_1DAF3523C(*(v2 + 56) + 40 * v126, &v242);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
              v128 = swift_dynamicCast();
              if (v128)
              {
                v129 = v235;
              }

              else
              {
                v129 = 0;
              }

              if (v128)
              {
                v130 = *(&v235 + 1);
              }

              else
              {
                v130 = 0;
              }

              v131 = *(v2 + 16);
              if (!v131)
              {
                goto LABEL_288;
              }

              goto LABEL_248;
            }
          }

          else
          {
            v105 = v8;
          }

          v129 = 0;
          v130 = 0;
          v131 = *(v2 + 16);
          if (!v131)
          {
            goto LABEL_288;
          }

LABEL_248:
          v146 = sub_1DAF35210(0xD00000000000001ALL, 0x80000001DB0C1D00);
          if (v147)
          {
            sub_1DAF3523C(*(v2 + 56) + 40 * v146, &v242);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
            v148 = swift_dynamicCast();
            v149 = *(&v235 + 1);
            v131 = v235;
            if (!v148)
            {
              v131 = 0;
              v149 = 0;
            }

            if (v229)
            {
LABEL_7:
              v249[0] = v220;
              v249[1] = v229;
              v249[2] = v216;
              v249[3] = v226;
              v249[4] = v213;
              v249[5] = v68;
              v249[6] = v210;
              v249[7] = v88;
              v249[8] = v109;
              v249[9] = v110;
              v249[10] = v129;
              v249[11] = v130;
              v249[12] = v131;
              v249[13] = v149;
              *&v242 = v220;
              *(&v242 + 1) = v229;
              *&v243 = v216;
              *(&v243 + 1) = v226;
              *&v244 = v213;
              *(&v244 + 1) = v68;
              *&v245 = v210;
              *(&v245 + 1) = v88;
              *&v246 = v109;
              *(&v246 + 1) = v110;
              *&v247 = v129;
              *(&v247 + 1) = v130;
              *&v248 = v131;
              *(&v248 + 1) = v149;
              sub_1DAF406C8(v249, &v235);
              sub_1DB0931F8(&v242);
              v11 = swift_isUniquelyReferenced_nonNull_native();
              *&v235 = v105;
              v12 = v249;
              v13 = 1;
LABEL_8:
              sub_1DAF3BF7C(v12, v13, v11);
              v8 = v235;
              goto LABEL_9;
            }

            goto LABEL_289;
          }

          v131 = 0;
LABEL_288:
          v149 = 0;
          if (v229)
          {
            goto LABEL_7;
          }

LABEL_289:
          if (v226 || v68 || v110 || v130 || v149)
          {
            goto LABEL_7;
          }

          v247 = 0u;
          v248 = 0u;
          v245 = 0u;
          v246 = 0u;
          v243 = 0u;
          v244 = 0u;
          v242 = 0u;
          sub_1DB0931F8(&v242);
          v163 = 1;
          goto LABEL_295;
        }

LABEL_213:
        v109 = 0;
        v110 = 0;
        goto LABEL_214;
      }

LABEL_179:
      v210 = 0;
      v88 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_213;
      }

      goto LABEL_180;
    }

    v232 = v9;
    if (*(v6 + v10) != 2)
    {
      break;
    }

    if (*(v2 + 16) && (v19 = sub_1DAF35210(0xD000000000000015, 0x80000001DB0C1C10), (v20 & 1) != 0))
    {
      sub_1DAF3523C(*(v2 + 56) + 40 * v19, &v242);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      v21 = swift_dynamicCast();
      v22 = v235;
      if (!v21)
      {
        v22 = 0;
      }

      v219 = v22;
      if (v21)
      {
        v23 = *(&v235 + 1);
      }

      else
      {
        v23 = 0;
      }

      v228 = v23;
      if (!*(v2 + 16))
      {
LABEL_95:
        v215 = 0;
        v225 = 0;
        if (!*(v2 + 16))
        {
          goto LABEL_132;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v219 = 0;
      v228 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_95;
      }
    }

    v39 = sub_1DAF35210(0xD000000000000015, 0x80000001DB0C1C30);
    if ((v40 & 1) == 0)
    {
      goto LABEL_95;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v39, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v41 = swift_dynamicCast();
    v42 = v235;
    if (!v41)
    {
      v42 = 0;
    }

    v215 = v42;
    if (v41)
    {
      v43 = *(&v235 + 1);
    }

    else
    {
      v43 = 0;
    }

    v225 = v43;
    if (!*(v2 + 16))
    {
LABEL_132:
      v212 = 0;
      v63 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_169;
      }

      goto LABEL_133;
    }

LABEL_96:
    v59 = sub_1DAF35210(0xD000000000000012, 0x80000001DB0C1B90);
    if ((v60 & 1) == 0)
    {
      goto LABEL_132;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v59, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v61 = swift_dynamicCast();
    v62 = v235;
    if (!v61)
    {
      v62 = 0;
    }

    v212 = v62;
    if (v61)
    {
      v63 = *(&v235 + 1);
    }

    else
    {
      v63 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_169:
      v209 = 0;
      v83 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_203;
      }

      goto LABEL_170;
    }

LABEL_133:
    v79 = sub_1DAF35210(0xD000000000000013, 0x80000001DB0C1BB0);
    if ((v80 & 1) == 0)
    {
      goto LABEL_169;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v79, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v81 = swift_dynamicCast();
    v82 = v235;
    if (!v81)
    {
      v82 = 0;
    }

    v209 = v82;
    if (v81)
    {
      v83 = *(&v235 + 1);
    }

    else
    {
      v83 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_203:
      v103 = 0;
      v104 = 0;
      if (!*(v2 + 16))
      {
        goto LABEL_178;
      }

      goto LABEL_204;
    }

LABEL_170:
    v100 = sub_1DAF35210(0xD000000000000018, 0x80000001DB0C1B70);
    if ((v101 & 1) == 0)
    {
      goto LABEL_203;
    }

    sub_1DAF3523C(*(v2 + 56) + 40 * v100, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v102 = swift_dynamicCast();
    if (v102)
    {
      v103 = v235;
    }

    else
    {
      v103 = 0;
    }

    if (v102)
    {
      v104 = *(&v235 + 1);
    }

    else
    {
      v104 = 0;
    }

    if (!*(v2 + 16))
    {
LABEL_178:
      v105 = v8;
      goto LABEL_234;
    }

LABEL_204:
    v105 = v8;
    v120 = sub_1DAF35210(0xD000000000000015, 0x80000001DB0C1BD0);
    if (v121)
    {
      sub_1DAF3523C(*(v2 + 56) + 40 * v120, &v242);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      v122 = swift_dynamicCast();
      if (v122)
      {
        v123 = v235;
      }

      else
      {
        v123 = 0;
      }

      if (v122)
      {
        v124 = *(&v235 + 1);
      }

      else
      {
        v124 = 0;
      }

      v125 = *(v2 + 16);
      if (!v125)
      {
        goto LABEL_267;
      }

      goto LABEL_235;
    }

LABEL_234:
    v123 = 0;
    v124 = 0;
    v125 = *(v2 + 16);
    if (!v125)
    {
      goto LABEL_267;
    }

LABEL_235:
    v138 = sub_1DAF35210(0xD000000000000019, 0x80000001DB0C1BF0);
    if (v139)
    {
      sub_1DAF3523C(*(v2 + 56) + 40 * v138, &v242);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
      v140 = swift_dynamicCast();
      v141 = *(&v235 + 1);
      v125 = v235;
      if (!v140)
      {
        v125 = 0;
        v141 = 0;
      }

      if (v228)
      {
LABEL_274:
        v250[0] = v219;
        v250[1] = v228;
        v250[2] = v215;
        v250[3] = v225;
        v250[4] = v212;
        v250[5] = v63;
        v250[6] = v209;
        v250[7] = v83;
        v250[8] = v103;
        v250[9] = v104;
        v250[10] = v123;
        v250[11] = v124;
        v250[12] = v125;
        v250[13] = v141;
        *&v242 = v219;
        *(&v242 + 1) = v228;
        *&v243 = v215;
        *(&v243 + 1) = v225;
        *&v244 = v212;
        *(&v244 + 1) = v63;
        *&v245 = v209;
        *(&v245 + 1) = v83;
        *&v246 = v103;
        *(&v246 + 1) = v104;
        *&v247 = v123;
        *(&v247 + 1) = v124;
        *&v248 = v125;
        *(&v248 + 1) = v141;
        sub_1DAF406C8(v250, &v235);
        sub_1DB0931F8(&v242);
        v11 = swift_isUniquelyReferenced_nonNull_native();
        *&v235 = v105;
        v12 = v250;
        v13 = 2;
        goto LABEL_8;
      }

      goto LABEL_268;
    }

    v125 = 0;
LABEL_267:
    v141 = 0;
    if (v228)
    {
      goto LABEL_274;
    }

LABEL_268:
    if (v225 || v63 || v104 || v124 || v141)
    {
      goto LABEL_274;
    }

    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    sub_1DB0931F8(&v242);
    v163 = 2;
LABEL_295:
    v8 = v105;
    v171 = sub_1DAF35670(v163);
    if (v172)
    {
      v152 = v171;
      v173 = swift_isUniquelyReferenced_nonNull_native();
      *&v234[0] = v105;
      v6 = v231;
      v9 = v232;
      if (v173)
      {
        goto LABEL_297;
      }

      goto LABEL_261;
    }

LABEL_9:
    v6 = v231;
    v9 = v232;
LABEL_10:
    ++v10;
    if (!--v9)
    {
      goto LABEL_312;
    }
  }

  if (*(v2 + 16) && (v29 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C1990), (v30 & 1) != 0))
  {
    sub_1DAF3523C(*(v2 + 56) + 40 * v29, &v242);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v31 = swift_dynamicCast();
    v32 = v235;
    if (!v31)
    {
      v32 = 0;
    }

    v221 = v32;
    if (v31)
    {
      v33 = *(&v235 + 1);
    }

    else
    {
      v33 = 0;
    }

    v230 = v33;
    if (!*(v2 + 16))
    {
LABEL_113:
      v217 = 0;
      v227 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_114;
      }

LABEL_150:
      v214 = 0;
      v73 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_151;
      }

LABEL_187:
      v211 = 0;
      v93 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_188;
      }

LABEL_224:
      v114 = 0;
      v115 = 0;
      if (*(v2 + 16))
      {
        goto LABEL_225;
      }

LABEL_196:
      v105 = v8;
      goto LABEL_240;
    }
  }

  else
  {
    v221 = 0;
    v230 = 0;
    if (!*(v2 + 16))
    {
      goto LABEL_113;
    }
  }

  v49 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C19B0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_113;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v49, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v51 = swift_dynamicCast();
  v52 = v235;
  if (!v51)
  {
    v52 = 0;
  }

  v217 = v52;
  if (v51)
  {
    v53 = *(&v235 + 1);
  }

  else
  {
    v53 = 0;
  }

  v227 = v53;
  if (!*(v2 + 16))
  {
    goto LABEL_150;
  }

LABEL_114:
  v69 = sub_1DAF35210(0x746E656D75636F64, 0xED0000797469632ELL);
  if ((v70 & 1) == 0)
  {
    goto LABEL_150;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v69, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v71 = swift_dynamicCast();
  v72 = v235;
  if (!v71)
  {
    v72 = 0;
  }

  v214 = v72;
  if (v71)
  {
    v73 = *(&v235 + 1);
  }

  else
  {
    v73 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_187;
  }

LABEL_151:
  v89 = sub_1DAF35210(0x746E656D75636F64, 0xEE0065746174732ELL);
  if ((v90 & 1) == 0)
  {
    goto LABEL_187;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v89, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v91 = swift_dynamicCast();
  v92 = v235;
  if (!v91)
  {
    v92 = 0;
  }

  v211 = v92;
  if (v91)
  {
    v93 = *(&v235 + 1);
  }

  else
  {
    v93 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_224;
  }

LABEL_188:
  v111 = sub_1DAF35210(0xD000000000000013, 0x80000001DB0C19E0);
  if ((v112 & 1) == 0)
  {
    goto LABEL_224;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v111, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v113 = swift_dynamicCast();
  if (v113)
  {
    v114 = v235;
  }

  else
  {
    v114 = 0;
  }

  if (v113)
  {
    v115 = *(&v235 + 1);
  }

  else
  {
    v115 = 0;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_196;
  }

LABEL_225:
  v105 = v8;
  v132 = sub_1DAF35210(0xD000000000000010, 0x80000001DB0C1A00);
  if ((v133 & 1) == 0)
  {
LABEL_240:
    v135 = 0;
    v136 = 0;
    v137 = *(v2 + 16);
    if (v137)
    {
      goto LABEL_241;
    }

    goto LABEL_276;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v132, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v134 = swift_dynamicCast();
  if (v134)
  {
    v135 = v235;
  }

  else
  {
    v135 = 0;
  }

  if (v134)
  {
    v136 = *(&v235 + 1);
  }

  else
  {
    v136 = 0;
  }

  v137 = *(v2 + 16);
  if (!v137)
  {
    goto LABEL_276;
  }

LABEL_241:
  v142 = sub_1DAF35210(0xD000000000000017, 0x80000001DB0C1A40);
  if ((v143 & 1) == 0)
  {
    v137 = 0;
LABEL_276:
    v145 = 0;
    if (v230)
    {
      goto LABEL_283;
    }

    goto LABEL_277;
  }

  sub_1DAF3523C(*(v2 + 56) + 40 * v142, &v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v144 = swift_dynamicCast();
  v145 = *(&v235 + 1);
  v137 = v235;
  if (!v144)
  {
    v137 = 0;
    v145 = 0;
  }

  if (!v230)
  {
LABEL_277:
    if (v227 || v73 || v115 || v136 || v145)
    {
      goto LABEL_283;
    }

    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v242 = 0u;
    sub_1DB0931F8(&v242);
    v163 = 3;
    goto LABEL_295;
  }

LABEL_283:
  *&v235 = v221;
  *(&v235 + 1) = v230;
  *&v236 = v217;
  *(&v236 + 1) = v227;
  *&v237 = v214;
  *(&v237 + 1) = v73;
  *&v238 = v211;
  *(&v238 + 1) = v93;
  *&v239 = v114;
  *(&v239 + 1) = v115;
  *&v240 = v135;
  *(&v240 + 1) = v136;
  *&v241 = v137;
  *(&v241 + 1) = v145;
  *&v242 = v221;
  *(&v242 + 1) = v230;
  *&v243 = v217;
  *(&v243 + 1) = v227;
  *&v244 = v214;
  *(&v244 + 1) = v73;
  *&v245 = v211;
  *(&v245 + 1) = v93;
  *&v246 = v114;
  *(&v246 + 1) = v115;
  *&v247 = v135;
  *(&v247 + 1) = v136;
  *&v248 = v137;
  *(&v248 + 1) = v145;
  sub_1DAF406C8(&v235, v234);
  sub_1DB0931F8(&v242);
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v233 = v105;
  v155 = sub_1DAF35670(3u);
  v166 = v105[2];
  v167 = (v165 & 1) == 0;
  v159 = __OFADD__(v166, v167);
  v168 = v166 + v167;
  if (!v159)
  {
    v169 = v165;
    if (v105[3] >= v168)
    {
      v9 = v232;
      if (v164)
      {
        goto LABEL_304;
      }

      v200 = v155;
      sub_1DAF3DC18();
      v155 = v200;
      if ((v169 & 1) == 0)
      {
        goto LABEL_309;
      }

LABEL_305:
      v8 = v233;
      v188 = (v233[7] + 112 * v155);
      v190 = v188[1];
      v189 = v188[2];
      v234[0] = *v188;
      v234[1] = v190;
      v234[2] = v189;
      v191 = v188[6];
      v193 = v188[3];
      v192 = v188[4];
      v234[5] = v188[5];
      v234[6] = v191;
      v234[3] = v193;
      v234[4] = v192;
      v194 = v235;
      v195 = v237;
      v188[1] = v236;
      v188[2] = v195;
      *v188 = v194;
      v196 = v238;
      v197 = v239;
      v198 = v241;
      v188[5] = v240;
      v188[6] = v198;
      v188[3] = v196;
      v188[4] = v197;
      sub_1DB0931F8(v234);
    }

    else
    {
      sub_1DAF3AACC(v168, v164);
      v155 = sub_1DAF35670(3u);
      v9 = v232;
      if ((v169 & 1) != (v170 & 1))
      {
        goto LABEL_317;
      }

LABEL_304:
      if (v169)
      {
        goto LABEL_305;
      }

LABEL_309:
      v8 = v233;
      v233[(v155 >> 6) + 8] |= 1 << v155;
      *(v233[6] + v155) = 3;
      v201 = (v233[7] + 112 * v155);
      v203 = v236;
      v202 = v237;
      *v201 = v235;
      v201[1] = v203;
      v201[2] = v202;
      v204 = v238;
      v205 = v239;
      v206 = v241;
      v201[5] = v240;
      v201[6] = v206;
      v201[3] = v204;
      v201[4] = v205;
      v207 = v233[2];
      v159 = __OFADD__(v207, 1);
      v187 = v207 + 1;
      if (v159)
      {
        goto LABEL_316;
      }

LABEL_310:
      *(v8 + 16) = v187;
    }

LABEL_311:
    v6 = v231;
    goto LABEL_10;
  }

  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  result = sub_1DB09E2E4();
  __break(1u);
  return result;
}

unint64_t sub_1DB09324C()
{
  result = qword_1ECC10168;
  if (!qword_1ECC10168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10168);
  }

  return result;
}

uint64_t sub_1DB0932A0(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 <= 0xDB)
  {
    v2 = 219;
  }

  else
  {
    v2 = *(a1 + 9);
  }

  v3 = v2 - 219;
  if (v1 >= 0xD3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB0932C0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials21LocationProviderErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB0932FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB093358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DB0934B8()
{
  result = sub_1DB09D154();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB093578()
{
  result = type metadata accessor for AnyODIKnownBinding.BindingContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB093630(void *a1)
{
  a1[1] = sub_1DB08E648(&qword_1ECC101A0, 255, type metadata accessor for AnyODIKnownBinding);
  a1[2] = sub_1DB08E648(&qword_1ECC101A8, 255, type metadata accessor for AnyODIKnownBinding);
  result = sub_1DB08E648(&qword_1ECC101B0, 255, type metadata accessor for AnyODIKnownBinding);
  a1[3] = result;
  return result;
}

unint64_t sub_1DB093738()
{
  result = qword_1ECC101C0;
  if (!qword_1ECC101C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101C0);
  }

  return result;
}

unint64_t sub_1DB093790()
{
  result = qword_1ECC101C8;
  if (!qword_1ECC101C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101C8);
  }

  return result;
}

unint64_t sub_1DB0937E8()
{
  result = qword_1ECC101D0;
  if (!qword_1ECC101D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101D0);
  }

  return result;
}

unint64_t sub_1DB093840()
{
  result = qword_1ECC101D8;
  if (!qword_1ECC101D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101D8);
  }

  return result;
}

unint64_t sub_1DB093898()
{
  result = qword_1ECC101E0;
  if (!qword_1ECC101E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101E0);
  }

  return result;
}

unint64_t sub_1DB0938F0()
{
  result = qword_1ECC101E8;
  if (!qword_1ECC101E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101E8);
  }

  return result;
}

unint64_t sub_1DB093948()
{
  result = qword_1ECC101F0;
  if (!qword_1ECC101F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101F0);
  }

  return result;
}

unint64_t sub_1DB0939A0()
{
  result = qword_1ECC101F8;
  if (!qword_1ECC101F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC101F8);
  }

  return result;
}

unint64_t sub_1DB0939F8()
{
  result = qword_1ECC10200;
  if (!qword_1ECC10200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10200);
  }

  return result;
}

unint64_t sub_1DB093A50()
{
  result = qword_1ECC10208;
  if (!qword_1ECC10208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10208);
  }

  return result;
}

unint64_t sub_1DB093AA8()
{
  result = qword_1ECC10210;
  if (!qword_1ECC10210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10210);
  }

  return result;
}

unint64_t sub_1DB093B00()
{
  result = qword_1ECC10218;
  if (!qword_1ECC10218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10218);
  }

  return result;
}

unint64_t sub_1DB093B58()
{
  result = qword_1ECC10220;
  if (!qword_1ECC10220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10220);
  }

  return result;
}

unint64_t sub_1DB093BB0()
{
  result = qword_1ECC10228;
  if (!qword_1ECC10228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10228);
  }

  return result;
}

unint64_t sub_1DB093C08()
{
  result = qword_1ECC10230;
  if (!qword_1ECC10230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10230);
  }

  return result;
}

unint64_t sub_1DB093C60()
{
  result = qword_1ECC10238;
  if (!qword_1ECC10238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10238);
  }

  return result;
}

unint64_t sub_1DB093CB8()
{
  result = qword_1ECC10240;
  if (!qword_1ECC10240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10240);
  }

  return result;
}

unint64_t sub_1DB093D10()
{
  result = qword_1ECC10248;
  if (!qword_1ECC10248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10248);
  }

  return result;
}

unint64_t sub_1DB093D68()
{
  result = qword_1ECC10250;
  if (!qword_1ECC10250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10250);
  }

  return result;
}

unint64_t sub_1DB093DC0()
{
  result = qword_1ECC10258;
  if (!qword_1ECC10258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10258);
  }

  return result;
}

unint64_t sub_1DB093E18()
{
  result = qword_1ECC10260;
  if (!qword_1ECC10260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10260);
  }

  return result;
}

unint64_t sub_1DB093E70()
{
  result = qword_1ECC10268;
  if (!qword_1ECC10268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10268);
  }

  return result;
}

unint64_t sub_1DB093EC8()
{
  result = qword_1ECC10270;
  if (!qword_1ECC10270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10270);
  }

  return result;
}

unint64_t sub_1DB093F20()
{
  result = qword_1ECC10278;
  if (!qword_1ECC10278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10278);
  }

  return result;
}

unint64_t sub_1DB093F78()
{
  result = qword_1ECC10280;
  if (!qword_1ECC10280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10280);
  }

  return result;
}

unint64_t sub_1DB093FD0()
{
  result = qword_1ECC10288;
  if (!qword_1ECC10288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10288);
  }

  return result;
}

unint64_t sub_1DB094028()
{
  result = qword_1ECC10290;
  if (!qword_1ECC10290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10290);
  }

  return result;
}

unint64_t sub_1DB094080()
{
  result = qword_1ECC10298;
  if (!qword_1ECC10298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10298);
  }

  return result;
}

unint64_t sub_1DB0940D8()
{
  result = qword_1ECC102A0;
  if (!qword_1ECC102A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102A0);
  }

  return result;
}

unint64_t sub_1DB094130()
{
  result = qword_1ECC102A8;
  if (!qword_1ECC102A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102A8);
  }

  return result;
}

unint64_t sub_1DB094188()
{
  result = qword_1ECC102B0;
  if (!qword_1ECC102B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102B0);
  }

  return result;
}

unint64_t sub_1DB0941E0()
{
  result = qword_1ECC102B8;
  if (!qword_1ECC102B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102B8);
  }

  return result;
}

unint64_t sub_1DB094238()
{
  result = qword_1ECC102C0;
  if (!qword_1ECC102C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102C0);
  }

  return result;
}

unint64_t sub_1DB094290()
{
  result = qword_1ECC102C8;
  if (!qword_1ECC102C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102C8);
  }

  return result;
}

unint64_t sub_1DB0942E8()
{
  result = qword_1ECC102D0;
  if (!qword_1ECC102D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102D0);
  }

  return result;
}

unint64_t sub_1DB094340()
{
  result = qword_1ECC102D8;
  if (!qword_1ECC102D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102D8);
  }

  return result;
}

unint64_t sub_1DB094398()
{
  result = qword_1ECC102E0;
  if (!qword_1ECC102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102E0);
  }

  return result;
}

unint64_t sub_1DB0943F0()
{
  result = qword_1ECC102E8;
  if (!qword_1ECC102E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102E8);
  }

  return result;
}

unint64_t sub_1DB094448()
{
  result = qword_1ECC102F0;
  if (!qword_1ECC102F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102F0);
  }

  return result;
}

unint64_t sub_1DB0944A0()
{
  result = qword_1ECC102F8;
  if (!qword_1ECC102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC102F8);
  }

  return result;
}

unint64_t sub_1DB0944F8()
{
  result = qword_1ECC10300;
  if (!qword_1ECC10300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10300);
  }

  return result;
}

unint64_t sub_1DB094550()
{
  result = qword_1ECC10308;
  if (!qword_1ECC10308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10308);
  }

  return result;
}

unint64_t sub_1DB0945A8()
{
  result = qword_1ECC10310;
  if (!qword_1ECC10310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10310);
  }

  return result;
}

unint64_t sub_1DB094600()
{
  result = qword_1ECC10318;
  if (!qword_1ECC10318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10318);
  }

  return result;
}

unint64_t sub_1DB094658()
{
  result = qword_1ECC10320;
  if (!qword_1ECC10320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10320);
  }

  return result;
}

unint64_t sub_1DB0946B0()
{
  result = qword_1ECC10328;
  if (!qword_1ECC10328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10328);
  }

  return result;
}

unint64_t sub_1DB094708()
{
  result = qword_1ECC10330;
  if (!qword_1ECC10330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10330);
  }

  return result;
}

unint64_t sub_1DB09475C()
{
  result = qword_1ECC10378;
  if (!qword_1ECC10378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10378);
  }

  return result;
}

unint64_t sub_1DB0947B0()
{
  result = qword_1ECC10380;
  if (!qword_1ECC10380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10380);
  }

  return result;
}

unint64_t sub_1DB094804()
{
  result = qword_1ECC10388;
  if (!qword_1ECC10388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10388);
  }

  return result;
}

unint64_t sub_1DB094858()
{
  result = qword_1ECC103A0;
  if (!qword_1ECC103A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103A0);
  }

  return result;
}

unint64_t sub_1DB0948AC()
{
  result = qword_1ECC103A8;
  if (!qword_1ECC103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103A8);
  }

  return result;
}

unint64_t sub_1DB094900()
{
  result = qword_1ECC103B0;
  if (!qword_1ECC103B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103B0);
  }

  return result;
}

unint64_t sub_1DB094954()
{
  result = qword_1ECC103B8;
  if (!qword_1ECC103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103B8);
  }

  return result;
}

unint64_t sub_1DB0949A8()
{
  result = qword_1ECC103C0;
  if (!qword_1ECC103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC103C0);
  }

  return result;
}

uint64_t sub_1DB0949FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC10390, &qword_1DB0BC678);
    sub_1DB08E648(a2, 255, type metadata accessor for AnyODIKnownBinding);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB094A9C()
{
  result = qword_1ECC10418;
  if (!qword_1ECC10418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10418);
  }

  return result;
}

unint64_t sub_1DB094B84()
{
  result = qword_1ECC10438;
  if (!qword_1ECC10438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10438);
  }

  return result;
}

unint64_t sub_1DB094BDC()
{
  result = qword_1ECC10440;
  if (!qword_1ECC10440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10440);
  }

  return result;
}

unint64_t sub_1DB094C34()
{
  result = qword_1ECC10448;
  if (!qword_1ECC10448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10448);
  }

  return result;
}

unint64_t sub_1DB094C8C()
{
  result = qword_1ECC10450;
  if (!qword_1ECC10450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10450);
  }

  return result;
}

unint64_t sub_1DB094CE4()
{
  result = qword_1ECC10458;
  if (!qword_1ECC10458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10458);
  }

  return result;
}

unint64_t sub_1DB094D3C()
{
  result = qword_1ECC10460;
  if (!qword_1ECC10460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10460);
  }

  return result;
}

unint64_t sub_1DB094D94()
{
  result = qword_1ECC10468;
  if (!qword_1ECC10468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10468);
  }

  return result;
}

unint64_t sub_1DB094DEC()
{
  result = qword_1ECC10470;
  if (!qword_1ECC10470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10470);
  }

  return result;
}

unint64_t sub_1DB094E44()
{
  result = qword_1ECC10478;
  if (!qword_1ECC10478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10478);
  }

  return result;
}

unint64_t sub_1DB094E9C()
{
  result = qword_1ECC10480;
  if (!qword_1ECC10480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10480);
  }

  return result;
}

unint64_t sub_1DB094EF4()
{
  result = qword_1ECC10488;
  if (!qword_1ECC10488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10488);
  }

  return result;
}

unint64_t sub_1DB094F4C()
{
  result = qword_1ECC10490;
  if (!qword_1ECC10490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10490);
  }

  return result;
}

unint64_t sub_1DB094FA4()
{
  result = qword_1ECC10498;
  if (!qword_1ECC10498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10498);
  }

  return result;
}

unint64_t sub_1DB094FFC()
{
  result = qword_1ECC104A0;
  if (!qword_1ECC104A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104A0);
  }

  return result;
}

unint64_t sub_1DB095054()
{
  result = qword_1ECC104A8;
  if (!qword_1ECC104A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104A8);
  }

  return result;
}

unint64_t sub_1DB0950AC()
{
  result = qword_1ECC104B0;
  if (!qword_1ECC104B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104B0);
  }

  return result;
}

unint64_t sub_1DB095104()
{
  result = qword_1ECC104B8;
  if (!qword_1ECC104B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104B8);
  }

  return result;
}

unint64_t sub_1DB09515C()
{
  result = qword_1ECC104C0;
  if (!qword_1ECC104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104C0);
  }

  return result;
}

unint64_t sub_1DB0951B4()
{
  result = qword_1ECC104C8;
  if (!qword_1ECC104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104C8);
  }

  return result;
}

unint64_t sub_1DB09520C()
{
  result = qword_1ECC104D0;
  if (!qword_1ECC104D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104D0);
  }

  return result;
}

unint64_t sub_1DB095264()
{
  result = qword_1ECC104D8;
  if (!qword_1ECC104D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104D8);
  }

  return result;
}

unint64_t sub_1DB0952BC()
{
  result = qword_1ECC104E0;
  if (!qword_1ECC104E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104E0);
  }

  return result;
}

unint64_t sub_1DB095314()
{
  result = qword_1ECC104E8;
  if (!qword_1ECC104E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104E8);
  }

  return result;
}

unint64_t sub_1DB09536C()
{
  result = qword_1ECC104F0;
  if (!qword_1ECC104F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104F0);
  }

  return result;
}

unint64_t sub_1DB0953C4()
{
  result = qword_1ECC104F8;
  if (!qword_1ECC104F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC104F8);
  }

  return result;
}

unint64_t sub_1DB09541C()
{
  result = qword_1ECC10500;
  if (!qword_1ECC10500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10500);
  }

  return result;
}

uint64_t sub_1DB0954E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1DB09D3A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE301470 != -1)
  {
    swift_once();
  }

  v30[0] = xmmword_1EE30A010;
  v30[1] = *&byte_1EE30A020;
  v31 = byte_1EE30A030;
  result = sub_1DAFA5558(a1, a2, v30, v12);
  if (!v3)
  {
    sub_1DB096208();
    v14 = sub_1DB09D374();
    if (v15 >> 60 == 15)
    {
      sub_1DB096674();
      swift_allocError();
      *v16 = 5;
      swift_willThrow();
      return (*(v8 + 8))(v12, v7);
    }

    else
    {
      if (qword_1ECC0E108 != -1)
      {
        v23 = v14;
        v24 = v15;
        swift_once();
        v14 = v23;
        v15 = v24;
      }

      v28[0] = xmmword_1ECC25DE8;
      v28[1] = *&byte_1ECC25DF8;
      v29 = byte_1ECC25E08;
      v17 = v14;
      v18 = v15;
      sub_1DAFA577C(v14, v15, v28, v26);
      (*(v8 + 8))(v12, v7);
      result = sub_1DAF4AC40(v17, v18);
      v19 = v26[7];
      *(a3 + 96) = v26[6];
      *(a3 + 112) = v19;
      *(a3 + 128) = v27;
      v20 = v26[3];
      *(a3 + 32) = v26[2];
      *(a3 + 48) = v20;
      v21 = v26[5];
      *(a3 + 64) = v26[4];
      *(a3 + 80) = v21;
      v22 = v26[1];
      *a3 = v26[0];
      *(a3 + 16) = v22;
    }
  }

  return result;
}

uint64_t sub_1DB0957B4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB09E424();
  __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  sub_1DB09E214();
  if (!v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    sub_1DAF40674(a2, a3);
    sub_1DAFEA608();
    sub_1DB09E224();
    sub_1DAF40780(a2, a3);
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    sub_1DB09E224();
    sub_1DAF40780(0, 0xC000000000000000);
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    sub_1DAF40674(a4, a5);
    sub_1DB09E224();
    sub_1DAF40780(a4, a5);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1DB095970()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 0x65746365746F7270;
  }

  *v0;
  return result;
}

uint64_t sub_1DB0959B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746365746F7270 && a2 == 0xE900000000000064;
  if (v6 || (sub_1DB09E254() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB09E254();

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

uint64_t sub_1DB095A94(uint64_t a1)
{
  v2 = sub_1DB096C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB095AD0(uint64_t a1)
{
  v2 = sub_1DB096C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB095B0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DB096A14(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

__SecKey *sub_1DB095B5C(__SecCertificate *a1)
{
  result = SecCertificateCopyKey(a1);
  if (result)
  {
    v2 = result;
    v3 = SecKeyCopyAttributes(result);
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      v5 = 0;
      sub_1DB09D614();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DB095D90(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v48 = a5;
  v49 = a6;
  v52 = a1;
  v53 = a2;
  v45 = sub_1DB09D5F4();
  v47 = *(v45 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45, v10);
  v51 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB09D564();
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DB09D584();
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v56 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DB09D5B4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a3;
  v55 = a4;
  sub_1DAF40674(a3, a4);
  result = sub_1DB09D5A4();
  if (!v6)
  {
    v28 = v51;
    v43 = v26;
    v44 = v22;
    v41 = v16;
    v42 = v17;
    v54 = v52;
    v55 = v53;
    sub_1DAF40674(v52, v53);
    sub_1DB09671C();
    v29 = v56;
    sub_1DB09D574();
    sub_1DB096770(&qword_1ECC0FAB8, MEMORY[0x1E6966620]);
    v30 = v28;
    v31 = v45;
    sub_1DB09D554();
    v33 = v48;
    v32 = v49;
    sub_1DAF40674(v48, v49);
    sub_1DB040F20(v33, v32);
    sub_1DAF40780(v33, v32);
    v34 = v41;
    sub_1DB09D544();
    (*(v47 + 8))(v30, v31);
    sub_1DB096770(&qword_1ECC0FAB0, MEMORY[0x1E69663E0]);
    v35 = v12;
    v36 = v43;
    v37 = sub_1DB09D594();
    v38 = v44;
    if ((v37 & 1) == 0)
    {
      sub_1DB096674();
      swift_allocError();
      *v39 = 4;
      swift_willThrow();
    }

    (*(v46 + 8))(v34, v35);
    (*(v50 + 8))(v29, v42);
    return (*(v38 + 8))(v36, v21);
  }

  return result;
}

void sub_1DB096208()
{
  v1 = sub_1DB09D394();
  if (v1)
  {
    v2 = sub_1DB009AC8(v1);
    if (v0)
    {
    }

    else
    {
      v4 = v2;

      sub_1DAF3EF40(MEMORY[0x1E69E7CC0]);
      v5 = sub_1DAFA7D80(v4, 10, 0);

      v6 = SecTrustCopyCertificateChain(v5);
      if (v6)
      {
        v7 = v6;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          type metadata accessor for SecCertificate(0);
          sub_1DB09D924();
        }
      }

      sub_1DB096674();
      swift_allocError();
      *v8 = 7;
      swift_willThrow();
    }
  }

  else
  {
    sub_1DB096674();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }
}

unint64_t sub_1DB096674()
{
  result = qword_1ECC10508;
  if (!qword_1ECC10508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10508);
  }

  return result;
}

unint64_t sub_1DB0966C8()
{
  result = qword_1ECC10510;
  if (!qword_1ECC10510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10510);
  }

  return result;
}

unint64_t sub_1DB09671C()
{
  result = qword_1ECC10518;
  if (!qword_1ECC10518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10518);
  }

  return result;
}

uint64_t sub_1DB096770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB0967B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DB09680C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for COSEError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for COSEError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DB0969C0()
{
  result = qword_1ECC10520;
  if (!qword_1ECC10520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10520);
  }

  return result;
}

uint64_t sub_1DB096A14(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC10528, &qword_1DB0BDA58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DB096C40();
  sub_1DB09E414();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v16 = 0;
    sub_1DAFEA408();
    sub_1DB09E0C4();
    v9 = v14;
    v11 = v15;
    v16 = 1;
    sub_1DB09E0C4();
    (*(v4 + 8))(v8, v3);
    v12 = v14;
    v13 = v15;
    sub_1DAF40674(v9, v11);
    sub_1DAF40674(v12, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1DAF40780(v9, v11);
    sub_1DAF40780(v12, v13);
  }

  return v9;
}

unint64_t sub_1DB096C40()
{
  result = qword_1ECC10530;
  if (!qword_1ECC10530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10530);
  }

  return result;
}

unint64_t sub_1DB096CA8()
{
  result = qword_1ECC10538;
  if (!qword_1ECC10538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10538);
  }

  return result;
}

unint64_t sub_1DB096D00()
{
  result = qword_1ECC10540;
  if (!qword_1ECC10540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10540);
  }

  return result;
}

unint64_t sub_1DB096D58()
{
  result = qword_1ECC10548;
  if (!qword_1ECC10548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC10548);
  }

  return result;
}

Swift::Bool __swiftcall NSUserDefaults.internalBool(forKey:)(Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {
    return 0;
  }

  v2 = sub_1DB09D6B4();
  v3 = [v1 BOOLForKey_];

  return v3;
}

Swift::String_optional __swiftcall NSUserDefaults.internalString(forKey:)(Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1 && (v2 = sub_1DB09D6B4(), v3 = [v1 stringForKey_], v2, v3))
  {
    v4 = sub_1DB09D6C4();
    v6 = v5;

    v7 = v6;
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1DB096F24()
{
  v1 = *v0;
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {
    return 0;
  }

  v2 = sub_1DB09D6B4();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1DB09D6C4();

  return v4;
}

Swift::Int_optional __swiftcall NSUserDefaults.internalInt(forKey:)(Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v2 = sub_1DB09D6B4();
    v3 = [v1 stringForKey_];

    if (v3)
    {
      v4 = sub_1DB09D6C4();
      v6 = v5;

      v8 = HIBYTE(v6) & 0xF;
      v9 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v10 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          v33 = 0;
          v12 = sub_1DB04059C(v4, v6, 10);
          v30 = v31;
LABEL_67:

          if (v30)
          {
            v7 = 0;
          }

          else
          {
            v7 = v12;
          }

          goto LABEL_72;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v32[0] = v4;
          v32[1] = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v8)
            {
              if (--v8)
              {
                v12 = 0;
                v22 = v32 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  v24 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    break;
                  }

                  v12 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    break;
                  }

                  ++v22;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          if (v4 != 45)
          {
            if (v8)
            {
              v12 = 0;
              v27 = v32;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                v29 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  break;
                }

                ++v27;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }

          if (v8)
          {
            if (--v8)
            {
              v12 = 0;
              v16 = v32 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v7 = sub_1DB09DEC4();
          }

          v11 = *v7;
          if (v11 == 43)
          {
            if (v9 >= 1)
            {
              v8 = v9 - 1;
              if (v9 != 1)
              {
                v12 = 0;
                if (v7)
                {
                  v19 = v7 + 1;
                  while (1)
                  {
                    v20 = *v19 - 48;
                    if (v20 > 9)
                    {
                      goto LABEL_65;
                    }

                    v21 = 10 * v12;
                    if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                    {
                      goto LABEL_65;
                    }

                    v12 = v21 + v20;
                    if (__OFADD__(v21, v20))
                    {
                      goto LABEL_65;
                    }

                    ++v19;
                    if (!--v8)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                goto LABEL_57;
              }

              goto LABEL_65;
            }

            goto LABEL_77;
          }

          if (v11 != 45)
          {
            if (v9)
            {
              v12 = 0;
              if (v7)
              {
                while (1)
                {
                  v25 = *v7 - 48;
                  if (v25 > 9)
                  {
                    goto LABEL_65;
                  }

                  v26 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    goto LABEL_65;
                  }

                  ++v7;
                  if (!--v9)
                  {
                    goto LABEL_57;
                  }
                }
              }

              goto LABEL_57;
            }

LABEL_65:
            v12 = 0;
            LOBYTE(v8) = 1;
            goto LABEL_66;
          }

          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v12 = 0;
              if (v7)
              {
                v13 = v7 + 1;
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_65;
                  }

                  v15 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    goto LABEL_65;
                  }

                  ++v13;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

LABEL_57:
              LOBYTE(v8) = 0;
LABEL_66:
              v33 = v8;
              v30 = v8;
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          __break(1u);
        }

        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }
  }

  v7 = 0;
  v30 = 1;
LABEL_72:
  LOBYTE(v9) = v30 & 1;
LABEL_79:
  result.is_nil = v9;
  result.value = v7;
  return result;
}

void __swiftcall NSUserDefaults.internalFloat(forKey:)(Swift::Float_optional *__return_ptr retstr, Swift::String forKey)
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1)
  {
    v3 = sub_1DB09D6B4();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_1DB09D6C4();
      v7 = v6;

      sub_1DB09761C(v5, v7);
    }
  }
}

uint64_t static NSUserDefaults.globalInternalBool(forKey:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EE301DD8 != -1)
  {
    v10 = a1;
    v11 = a2;
    swift_once();
    a1 = v10;
    a2 = v11;
  }

  if (byte_1EE30A140 == 1)
  {
    v2 = a1;
    v3 = a2;
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = [v4 persistentDomainForName_];

    if (v5)
    {
      v6 = sub_1DB09D624();

      if (v6)
      {
        if (*(v6 + 16) && (v7 = sub_1DAF35210(v2, v3), (v8 & 1) != 0))
        {
          sub_1DAF409DC(*(v6 + 56) + 32 * v7, v13);

          if (swift_dynamicCast())
          {
            return v12;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

BOOL sub_1DB09761C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1DB09DE14();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_1DB097714@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1DB098C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB098E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB099178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB0993EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB099650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB0999CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1DB099C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB099F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DB09A20C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB09A5B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1DB09A9D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09AC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09AEB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09B12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09B37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DB09B5CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB09B7F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DB09BA54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}