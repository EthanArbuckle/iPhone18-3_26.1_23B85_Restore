uint64_t sub_1DB262F30()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 8);
  v5 = *(v0 + 18);
  v6 = *(v1 + 19);
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + 40);
  v10 = v1[6];
  v11 = v1[7];
  v12 = sub_1DB2B995C(34, 0xE100000000000000);
  v13 = *&aInteger_2[8 * v5];
  v40 = v12;
  v41 = v14;
  v15 = qword_1DB2CDB90[v5];
  v42 = v13;
  v43 = v15;
  if (v9 < 3 || v7 | v8)
  {
    sub_1DB262884(v7, v8, v9);
    sub_1DB26289C(v7, v8, v9);
    sub_1DB26289C(0, 0, 3u);
    MEMORY[0x1E1283490](0x20544C5541464544, 0xE800000000000000);
    sub_1DB262D78(v7, v8, v9);
    v16 = 0xE000000000000000;
  }

  else
  {
    sub_1DB26289C(v7, v8, 3u);
    sub_1DB26289C(0, 0, 3u);
    v16 = 0;
  }

  v44 = 0;
  v45 = v16;
  if (v4 == 2)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_1DB26678C();
  }

  v46 = v17;
  v47 = v18;
  v19 = 0x4C4C554E20544F4ELL;
  if (v6)
  {
    v19 = 0;
  }

  v20 = 0xE800000000000000;
  if (v6)
  {
    v20 = 0;
  }

  v48 = v19;
  v49 = v20;
  if (v11)
  {
    v35 = *(v1 + 4);
    v36 = *(v1 + 5);
    v37 = *(v1 + 6);
    v38 = *(v1 + 7);
    result = sub_1DB266A48();
  }

  else
  {
    result = 0;
    v22 = 0;
  }

  v23 = 0;
  v50 = result;
  v51 = v22;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_15:
  if (v23 <= 6)
  {
    v25 = 6;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 + 1;
  v27 = 16 * v23 + 40;
  while (1)
  {
    if (v23 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
      v34 = sub_1DB2BAD24();

      return v34;
    }

    if (v26 == ++v23)
    {
      break;
    }

    v28 = v27 + 16;
    v29 = *&v39[v27];
    v27 += 16;
    if (v29)
    {
      v30 = *&v39[v28 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DB1572F0(0, *(v24 + 16) + 1, 1, v24);
        v24 = result;
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1DB1572F0((v31 > 1), v32 + 1, 1, v24);
        v24 = result;
      }

      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB263264(char a1)
{
  v2 = v1[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *v1;
    v4 = v1[1];
    v43 = xmmword_1DB2CD160;
    v6 = 0x5241524F504D4554;
    if ((a1 & 1) == 0)
    {
      v6 = 0;
    }

    v7 = 0xE900000000000059;
    if ((a1 & 1) == 0)
    {
      v7 = 0;
    }

    v44 = v6;
    v45 = v7;
    v46 = xmmword_1DB2CD170;
    v47 = v5;
    v48 = v4;
    v49 = xmmword_1DB2CD180;
    v40 = MEMORY[0x1E69E7CC0];

    sub_1DB138470(0, v3, 0);
    v8 = v40;
    v9 = (v2 + 32);
    do
    {
      v36 = v9[4];
      v37 = v9[5];
      v38 = v9[6];
      v39 = v9[7];
      v32 = *v9;
      v33 = v9[1];
      v34 = v9[2];
      v35 = v9[3];
      v10 = sub_1DB262F30();
      v41 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = v10;
        v16 = v11;
        sub_1DB138470((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v15;
        v8 = v41;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 8;
      --v3;
    }

    while (v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
    sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
    v17 = sub_1DB2BAD24();
    v19 = v18;

    v21 = 0;
    v50 = v17;
    v51 = v19;
    v52 = xmmword_1DB2CD190;
    v22 = MEMORY[0x1E69E7CC0];
LABEL_11:
    if (v21 <= 7)
    {
      v23 = 7;
    }

    else
    {
      v23 = v21;
    }

    v24 = v23 + 1;
    v25 = 16 * v21 + 40;
    while (1)
    {
      if (v21 == 7)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
        swift_arrayDestroy();
        v3 = sub_1DB2BAD24();

        return v3;
      }

      if (v24 == ++v21)
      {
        break;
      }

      v26 = v25 + 16;
      v27 = *&v42[v25];
      v25 += 16;
      if (v27)
      {
        v28 = *&v42[v26 - 24];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DB1572F0(0, *(v22 + 16) + 1, 1, v22);
          v22 = result;
        }

        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          result = sub_1DB1572F0((v29 > 1), v30 + 1, 1, v22);
          v22 = result;
        }

        *(v22 + 16) = v30 + 1;
        v31 = v22 + 16 * v30;
        *(v31 + 32) = v28;
        *(v31 + 40) = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1DB15B09C(0xD000000000000024, 0x80000001DB2D6D10);
    return v3;
  }

  return result;
}

Swift::String __swiftcall IndexDefinition.toSQL(ifNotExists:)(Swift::Bool ifNotExists)
{
  v56 = v1[1];
  v57 = *v1;
  v54 = v1[3];
  v55 = v1[2];
  v52 = *(v1 + 32);
  v2 = v1[5];
  v3 = v1[6];
  v58 = v1[7];
  v4 = *(v2 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v51 = v1[6];
    v6 = v1[8];
    v77 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v4, 0);
    v7 = (v2 + 40);
    v5 = v77;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = sub_1DB2B995C(34, 0xE100000000000000);
      v12 = v11;
      if (v6 && *(v6 + 16) && (v13 = sub_1DB141B30(v8, v9), (v14 & 1) != 0))
      {
        v15 = *(*(v6 + 56) + v13);
        v75 = 32;
        v76 = 0xE100000000000000;
        if (v15)
        {
          v16 = 1129530692;
        }

        else
        {
          v16 = 4412225;
        }

        if (v15)
        {
          v17 = 0xE400000000000000;
        }

        else
        {
          v17 = 0xE300000000000000;
        }

        MEMORY[0x1E1283490](v16, v17);

        v18 = v75;
        v19 = v76;
      }

      else
      {
        v18 = 0;
        v19 = 0xE000000000000000;
      }

      v75 = v10;
      v76 = v12;

      MEMORY[0x1E1283490](v18, v19);

      v20 = v10;
      v77 = v5;
      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1DB138470((v21 > 1), v22 + 1, 1);
        v5 = v77;
      }

      *(v5 + 16) = v22 + 1;
      v23 = v5 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v12;
      v7 += 2;
      --v4;
    }

    while (v4);
    v3 = v51;
  }

  v75 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v24 = sub_1DB2BAD24();
  v26 = v25;

  v60 = xmmword_1DB2CD160;
  v27 = 0x455551494E55;
  if (v52)
  {
    v28 = 0xE600000000000000;
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  v61 = v27;
  v62 = v28;
  v63 = xmmword_1DB2CD1A0;
  v29 = 0x4520544F4E204649;
  if (!ifNotExists)
  {
    v29 = 0;
  }

  v30 = 0xED00005354534958;
  if (!ifNotExists)
  {
    v30 = 0;
  }

  v64 = v29;
  v65 = v30;
  v66 = sub_1DB2B995C(34, 0xE100000000000000);
  v67 = v31;
  v68 = xmmword_1DB2CD1B0;
  v69 = sub_1DB2B995C(34, 0xE100000000000000);
  v70 = v32;
  v75 = 40;
  v76 = 0xE100000000000000;
  MEMORY[0x1E1283490](v24, v26);

  isUniquelyReferenced_nonNull_native = MEMORY[0x1E1283490](41, 0xE100000000000000);
  v71 = 40;
  v72 = 0xE100000000000000;
  v34 = v58;
  if (v58)
  {
    v75 = 0x204552454857;
    v76 = 0xE600000000000000;
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E1283490](v3);
    v3 = 0x204552454857;
    v35 = 0xE600000000000000;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0;
  v73 = v3;
  v74 = v35;
  v37 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (v36 <= 9)
  {
    v38 = 9;
  }

  else
  {
    v38 = v36;
  }

  v39 = v38 + 1;
  v40 = 16 * v36 + 40;
  while (1)
  {
    if (v36 == 9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      v75 = v37;
      v47 = sub_1DB2BAD24();
      v49 = v48;

      isUniquelyReferenced_nonNull_native = v47;
      v34 = v49;
      goto LABEL_43;
    }

    if (v39 == ++v36)
    {
      break;
    }

    v41 = v40 + 16;
    v42 = *&v59[v40];
    v40 += 16;
    if (v42)
    {
      v43 = *&v59[v41 - 24];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1DB1572F0(0, *(v37 + 16) + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
      }

      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1DB1572F0((v44 > 1), v45 + 1, 1, v37);
        v37 = isUniquelyReferenced_nonNull_native;
      }

      *(v37 + 16) = v45 + 1;
      v46 = v37 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v42;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_43:
  result._object = v34;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t sub_1DB263A3C(uint64_t *a1)
{
  v2 = *(v1[2] + 16);
  if (v2 && v2 == *(a1[2] + 16))
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = *v1;
    v6 = v1[1];
    v12 = *(a1 + 1);
    v13 = *(v1 + 1);
    sub_1DB2BB4F4();

    strcpy(v14, "INSERT INTO ");
    BYTE5(v14[1]) = 0;
    HIWORD(v14[1]) = -5120;
    v7 = sub_1DB2B995C(34, 0xE100000000000000);
    MEMORY[0x1E1283490](v7);

    MEMORY[0x1E1283490](10272, 0xE200000000000000);
    v8 = sub_1DB263C3C();
    MEMORY[0x1E1283490](v8);

    MEMORY[0x1E1283490](0x5443454C45532029, 0xE900000000000020);
    v9 = sub_1DB263C3C();
    MEMORY[0x1E1283490](v9);

    MEMORY[0x1E1283490](0x204D4F524620, 0xE600000000000000);
    v10 = sub_1DB2B995C(34, 0xE100000000000000);
    MEMORY[0x1E1283490](v10);

    return v14[0];
  }

  else
  {
    sub_1DB15B09C(0xD000000000000029, 0x80000001DB2D6CE0);
    return 0;
  }
}

void __swiftcall IndexDefinition.init(table:name:unique:columns:where:orders:)(OnDeviceStorageCore::IndexDefinition *__return_ptr retstr, Swift::String table, Swift::String name, Swift::Bool unique, Swift::OpaquePointer columns, Swift::String_optional where, Swift::OpaquePointer_optional orders)
{
  retstr->table = table;
  retstr->name = name;
  retstr->unique = unique;
  retstr->columns = columns;
  retstr->where = where;
  retstr->orders.value._rawValue = orders.value._rawValue;
}

uint64_t TableDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DB263C3C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1DB138470(0, v2, 0);
    v3 = v21;
    v4 = (v1 + 32);
    do
    {
      v5 = v4[3];
      v7 = *v4;
      v6 = v4[1];
      v20[2] = v4[2];
      v20[3] = v5;
      v20[0] = v7;
      v20[1] = v6;
      v8 = v4[4];
      v9 = v4[5];
      v10 = v4[7];
      v20[6] = v4[6];
      v20[7] = v10;
      v20[4] = v8;
      v20[5] = v9;
      sub_1DB13AC2C(v20, &v19);
      v11 = sub_1DB2B995C(34, 0xE100000000000000);
      v13 = v12;
      sub_1DB13AC88(v20);
      v21 = v3;
      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DB138470((v14 > 1), v15 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  *&v20[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
  sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
  v17 = sub_1DB2BAD24();

  return v17;
}

uint64_t static TableDefinition.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1DB2BB924() & 1) == 0 || (sub_1DB137CBC(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB137E28(v3, v4);
}

uint64_t sub_1DB263E68(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1DB2BB924() & 1) == 0 || (sub_1DB137CBC(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1DB137E28(v3, v4);
}

OnDeviceStorageCore::ObjectDefinition::ObjectType_optional __swiftcall ObjectDefinition.ObjectType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ObjectDefinition.ObjectType.rawValue.getter()
{
  v1 = 0x656C626174;
  v2 = 2003134838;
  if (*v0 != 2)
  {
    v2 = 0x72656767697274;
  }

  if (*v0)
  {
    v1 = 0x7865646E69;
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

uint64_t sub_1DB263FD0()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB264084()
{
  *v0;
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB264124()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2641E0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C626174;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (*v1 != 2)
  {
    v5 = 0x72656767697274;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x7865646E69;
    v2 = 0xE500000000000000;
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

uint64_t ObjectDefinition.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ObjectDefinition.tableName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ObjectDefinition.sql.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ObjectDefinition.isInternal.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[7];
  return sub_1DB23D950() & 1 | (v3 == 0);
}

uint64_t ColumnDefinition.Affinity.description.getter()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1279346002;
  v4 = 1415071060;
  if (v1 != 3)
  {
    v4 = 1112493122;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x434952454D554ELL;
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

uint64_t sub_1DB2643CC@<X0>(char *a1@<X8>)
{
  sub_1DB2BAE14();
  sub_1DB143508();
  if (sub_1DB2BB3F4())
  {

    v3 = 0;
  }

  else
  {

    if (sub_1DB2BB3F4() & 1) != 0 || (, , (sub_1DB2BB3F4()) || (, , (sub_1DB2BB3F4()))
    {
      v3 = 3;
      swift_arrayDestroy();
    }

    else
    {

      swift_arrayDestroy();
      v4 = sub_1DB2BB3F4();

      if (v4)
      {

        v3 = 4;
      }

      else
      {

        if (sub_1DB2BB3F4() & 1) != 0 || (, , (sub_1DB2BB3F4()) || (, , (sub_1DB2BB3F4()))
        {

          swift_arrayDestroy();

          v3 = 2;
        }

        else
        {

          result = swift_arrayDestroy();
          v3 = 1;
        }
      }
    }
  }

  *a1 = v3;
  return result;
}

OnDeviceStorageCore::ColumnDefinition::Affinity_optional __swiftcall ColumnDefinition.Affinity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB264798()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB264864()
{
  *v0;
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB26491C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB2649F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x52454745544E49;
  v5 = 1279346002;
  v6 = 1415071060;
  if (v2 != 3)
  {
    v6 = 1112493122;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x434952454D554ELL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DB264A78()
{
  v1 = *v0;
  v2 = 0x52454745544E49;
  v3 = 1279346002;
  v4 = 1415071060;
  if (v1 != 3)
  {
    v4 = 1112493122;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x434952454D554ELL;
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

uint64_t sub_1DB264B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0x4B4341424C4C4F52;
  v6 = byte_1F56DEE50;
  v7 = 0xE800000000000000;
  v8 = 0xE400000000000000;
  v9 = 1279869254;
  v10 = 0xE600000000000000;
  v11 = 0x45524F4E4749;
  if (byte_1F56DEE50 != 3)
  {
    v11 = 0x4543414C504552;
    v10 = 0xE700000000000000;
  }

  if (byte_1F56DEE50 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = 0x54524F4241;
  if (byte_1F56DEE50)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v12 = 0x4B4341424C4C4F52;
  }

  if (byte_1F56DEE50 <= 1u)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (byte_1F56DEE50 <= 1u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  if (v13 == a1 && v14 == a2)
  {
    goto LABEL_16;
  }

  v16 = sub_1DB2BB924();

  if (v16)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE51;
  if (byte_1F56DEE51 <= 1u)
  {
    if (byte_1F56DEE51)
    {
      v18 = 0xE500000000000000;
      if (a1 != 0x54524F4241)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = 0xE800000000000000;
      if (a1 != 0x4B4341424C4C4F52)
      {
        goto LABEL_34;
      }
    }
  }

  else if (byte_1F56DEE51 == 2)
  {
    v18 = 0xE400000000000000;
    if (a1 != 1279869254)
    {
      goto LABEL_34;
    }
  }

  else if (byte_1F56DEE51 == 3)
  {
    v18 = 0xE600000000000000;
    if (a1 != 0x45524F4E4749)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v18 = 0xE700000000000000;
    if (a1 != 0x4543414C504552)
    {
      goto LABEL_34;
    }
  }

  if (v18 == a2)
  {
LABEL_16:

    goto LABEL_18;
  }

LABEL_34:
  v19 = sub_1DB2BB924();

  if (v19)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE52;
  if (byte_1F56DEE52 <= 1u)
  {
    if (byte_1F56DEE52)
    {
      v20 = 0xE500000000000000;
      v21 = 0x54524F4241;
    }

    else
    {
      v20 = 0xE800000000000000;
      v21 = 0x4B4341424C4C4F52;
    }
  }

  else if (byte_1F56DEE52 == 2)
  {
    v20 = 0xE400000000000000;
    v21 = 1279869254;
  }

  else if (byte_1F56DEE52 == 3)
  {
    v20 = 0xE600000000000000;
    v21 = 0x45524F4E4749;
  }

  else
  {
    v20 = 0xE700000000000000;
    v21 = 0x4543414C504552;
  }

  if (v21 == a1 && v20 == a2)
  {
    goto LABEL_16;
  }

  v22 = sub_1DB2BB924();

  if (v22)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE53;
  if (byte_1F56DEE53 <= 1u)
  {
    if (byte_1F56DEE53)
    {
      v23 = 0xE500000000000000;
      v24 = 0x54524F4241;
    }

    else
    {
      v23 = 0xE800000000000000;
      v24 = 0x4B4341424C4C4F52;
    }
  }

  else if (byte_1F56DEE53 == 2)
  {
    v23 = 0xE400000000000000;
    v24 = 1279869254;
  }

  else if (byte_1F56DEE53 == 3)
  {
    v23 = 0xE600000000000000;
    v24 = 0x45524F4E4749;
  }

  else
  {
    v23 = 0xE700000000000000;
    v24 = 0x4543414C504552;
  }

  if (v24 == a1 && v23 == a2)
  {
    goto LABEL_16;
  }

  v25 = sub_1DB2BB924();

  if (v25)
  {
    goto LABEL_18;
  }

  v6 = byte_1F56DEE54;
  if (byte_1F56DEE54 <= 1u)
  {
    if (byte_1F56DEE54)
    {
      v26 = 0xE500000000000000;
      v5 = 0x54524F4241;
    }

    else
    {
      v26 = 0xE800000000000000;
    }
  }

  else if (byte_1F56DEE54 == 2)
  {
    v26 = 0xE400000000000000;
    v5 = 1279869254;
  }

  else if (byte_1F56DEE54 == 3)
  {
    v26 = 0xE600000000000000;
    v5 = 0x45524F4E4749;
  }

  else
  {
    v26 = 0xE700000000000000;
    v5 = 0x4543414C504552;
  }

  if (v5 == a1 && v26 == a2)
  {
    goto LABEL_16;
  }

  v27 = sub_1DB2BB924();

  if ((v27 & 1) == 0)
  {

    v6 = 5;
    goto LABEL_19;
  }

LABEL_18:

LABEL_19:
  *a3 = v6;
  return result;
}

uint64_t ColumnDefinition.OnConflict.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4B4341424C4C4F52;
  v3 = 1279869254;
  v4 = 0x45524F4E4749;
  if (v1 != 3)
  {
    v4 = 0x4543414C504552;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x54524F4241;
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

OnDeviceStorageCore::ColumnDefinition::OnConflict_optional __swiftcall ColumnDefinition.OnConflict.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB265018()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB2650EC()
{
  *v0;
  *v0;
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB2651AC()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

void sub_1DB265288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x4B4341424C4C4F52;
  v5 = 0xE400000000000000;
  v6 = 1279869254;
  v7 = 0xE600000000000000;
  v8 = 0x45524F4E4749;
  if (v2 != 3)
  {
    v8 = 0x4543414C504552;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x54524F4241;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id sub_1DB265328()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DB23CB20(0xD000000000000048, 0x80000001DB2D6D70, 0);
  qword_1EE14C860 = result;
  return result;
}

uint64_t ColumnDefinition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ColumnDefinition.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1DB262884(v2, v3, v4);
}

uint64_t ColumnDefinition.references.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v9 = v1[5];
  v10 = v2;
  v11 = v1[7];
  v3 = v11;
  v4 = v1[4];
  v8[0] = v1[3];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1DB267B2C(v8, &v7);
}

__n128 ColumnDefinition.init(name:primaryKey:type:nullable:defaultValue:references:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  v9 = *a4;
  v10 = *(a6 + 16);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v8;
  *(a8 + 18) = v9;
  *(a8 + 19) = a5;
  *(a8 + 24) = *a6;
  *(a8 + 40) = v10;
  v11 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v11;
  *(a8 + 112) = *(a7 + 64);
  result = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = result;
  return result;
}

uint64_t sub_1DB265534@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0uLL;
  if (!a2)
  {
LABEL_10:
    v7 = 3;
    goto LABEL_11;
  }

  v6 = result;
  if ((result != 1280070990 || a2 != 0xE400000000000000) && (sub_1DB2BB924() & 1) == 0)
  {
    if (v6 == 1163219540 && a2 == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2C77D0;
    }

    else if (v6 == 0x45534C4146 && a2 == 0xE500000000000000 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2C77C0;
    }

    else if (v6 == 0x5F544E4552525543 && a2 == 0xEC000000454D4954 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2CD1D0;
    }

    else if (v6 == 0xD000000000000011 && 0x80000001DB2D46C0 == a2 || (sub_1DB2BB924() & 1) != 0)
    {

      v4 = xmmword_1DB2CD1C0;
    }

    else
    {
      if ((v6 != 0x5F544E4552525543 || a2 != 0xEC00000045544144) && (sub_1DB2BB924() & 1) == 0)
      {
        sub_1DB265784(v6, a2, &v8);

        v4 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v4 = xmmword_1DB2C77A0;
    }

    goto LABEL_10;
  }

  v7 = 3;
  v4 = 0uLL;
LABEL_11:
  *a3 = v4;
  *(a3 + 16) = v7;
  return result;
}

void sub_1DB265784(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EE13EC50 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE13EC58;
  v7 = sub_1DB2BAD64();
  v8 = [v6 firstMatchInString:v7 options:0 range:{0, sub_1DB2BAE94()}];

  if (v8)
  {
    goto LABEL_4;
  }

  if (qword_1EE13EC60 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE13EC68;
  v16 = sub_1DB2BAD64();
  v8 = [v15 firstMatchInString:v16 options:0 range:{0, sub_1DB2BAE94()}];

  if (v8)
  {
LABEL_4:
    v9 = sub_1DB2BAD64();
    v10 = 1;
    v11 = [v8 rangeAtIndex_];
    v13 = [v9 substringWithRange_];

    sub_1DB2BAD94();
    sub_1DB143508();
    a1 = sub_1DB2BB3D4();
    a2 = v14;
  }

  else
  {
    if (qword_1EE13EC40 != -1)
    {
      swift_once();
    }

    v17 = qword_1EE13EC48;
    v18 = sub_1DB2BAD64();
    v19 = [v17 firstMatchInString:v18 options:0 range:{0, sub_1DB2BAE94()}];

    if (v19)
    {
      v20 = sub_1DB2BAD64();
      v21 = [v19 rangeAtIndex_];
      v23 = [v20 substringWithRange_];

      a1 = sub_1DB2BAD94();
      a2 = v24;

      v10 = 2;
    }

    else
    {

      v10 = 0;
    }
  }

  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v10;
}

uint64_t LiteralValue.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v4 = sub_1DB2B995C(39, 0xE100000000000000);
      MEMORY[0x1E1283490](v4);

      return 88;
    }

    else
    {
      v7 = 1280070990;
      if (v1 ^ 4 | v2)
      {
        v8 = 0xD000000000000011;
      }

      else
      {
        v8 = 0x5F544E4552525543;
      }

      if (v1 ^ 3 | v2)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x5F544E4552525543;
      }

      if (v1 ^ 1 | v2)
      {
        v10 = 0x45534C4146;
      }

      else
      {
        v10 = 1163219540;
      }

      if (v1 | v2)
      {
        v7 = v10;
      }

      if (v1 <= 2)
      {
        return v7;
      }

      else
      {
        return v9;
      }
    }
  }

  else if (*(v0 + 16))
  {
    v5 = *v0;
    v6 = *(v0 + 8);
    return sub_1DB2B995C(39, 0xE100000000000000);
  }

  else
  {
    v3 = *(v0 + 8);
  }

  return v1;
}

id sub_1DB265D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DB23CB20(a2, a3, 0);
  *a4 = result;
  return result;
}

OnDeviceStorageCore::IndexDefinition::Order_optional __swiftcall IndexDefinition.Order.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB2BB6F4();

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

uint64_t IndexDefinition.Order.rawValue.getter()
{
  if (*v0)
  {
    result = 1129530692;
  }

  else
  {
    result = 4412225;
  }

  *v0;
  return result;
}

uint64_t sub_1DB265E94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1129530692;
  }

  else
  {
    v4 = 4412225;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1129530692;
  }

  else
  {
    v6 = 4412225;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DB2BB924();
  }

  return v9 & 1;
}

uint64_t sub_1DB265F2C()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB265FA0()
{
  *v0;
  sub_1DB2BAE84();
}

uint64_t sub_1DB266000()
{
  v1 = *v0;
  sub_1DB2BBA04();
  sub_1DB2BAE84();

  return sub_1DB2BBA54();
}

uint64_t sub_1DB266070@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB2BB6F4();

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

void sub_1DB2660D0(uint64_t *a1@<X8>)
{
  v2 = 4412225;
  if (*v1)
  {
    v2 = 1129530692;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DB266100(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  if (qword_1EE13E9B8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v4 = qword_1EE14C870;
  v5 = sub_1DB2BAD64();
  v6 = [v4 matchesInString:v5 options:0 range:{0, sub_1DB2BAE94()}];

  sub_1DB268248();
  v7 = sub_1DB2BB0C4();

  if (v7 >> 62)
  {
    v8 = sub_1DB2BB694();
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_4:
      v9 = 0;
      v38 = v7 & 0xFFFFFFFFFFFFFF8;
      v39 = v7 & 0xC000000000000001;
      v10 = MEMORY[0x1E69E7CC8];
      v36 = v8;
      v37 = v7;
      v35 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v39)
        {
          v12 = MEMORY[0x1E1283AD0](v9, v7);
        }

        else
        {
          if (v9 >= *(v38 + 16))
          {
            goto LABEL_24;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v40 = v9 + 1;

        v14 = a2;
        v15 = sub_1DB2BAD64();
        v16 = v13;
        v17 = [v13 rangeAtIndex_];
        v19 = [v15 substringWithRange_];

        v20 = sub_1DB2BAD94();
        v22 = v21;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = sub_1DB141B30(v20, v22);
        v25 = v10[2];
        v26 = (v23 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_25;
        }

        a2 = v23;
        if (v10[3] >= v27)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v23)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_1DB29EB44();
            if (a2)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_1DB29DC44(v27, isUniquelyReferenced_nonNull_native);
          v28 = sub_1DB141B30(v20, v22);
          if ((a2 & 1) != (v29 & 1))
          {
            result = sub_1DB2BB984();
            __break(1u);
            return result;
          }

          v24 = v28;
          if (a2)
          {
LABEL_5:

            v11 = v10;
            *(v10[7] + v24) = 1;

            goto LABEL_6;
          }
        }

        v11 = v10;
        v10[(v24 >> 6) + 8] |= 1 << v24;
        v30 = (v10[6] + 16 * v24);
        *v30 = v20;
        v30[1] = v22;
        *(v10[7] + v24) = 1;

        v31 = v10[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_26;
        }

        v10[2] = v33;
LABEL_6:
        v10 = v11;
        ++v9;
        isUniquelyReferenced_nonNull_native = v35;
        a2 = v14;
        v7 = v37;
        if (v40 == v36)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_30:

  return v10;
}

uint64_t IndexDefinition.table.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IndexDefinition.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IndexDefinition.where.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_1DB2664FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DB2BB4F4();
  MEMORY[0x1E1283490](0x616E207865646E49, 0xEC0000002720656DLL);
  MEMORY[0x1E1283490](a1, a2);
  MEMORY[0x1E1283490](0x626174206E6F2027, 0xEC0000002720656CLL);
  MEMORY[0x1E1283490](a3, a4);
  MEMORY[0x1E1283490](0xD00000000000001CLL, 0x80000001DB2D6DC0);
  v10 = sub_1DB2BB8F4();
  v11 = v8;
  MEMORY[0x1E1283490](0x7463617261686320, 0xEB00000000737265);

  MEMORY[0x1E1283490](v10, v11);

  return 0;
}

uint64_t ForeignKeyError.from.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ForeignKeyError.to.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ForeignKeyError.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v6 = *v0;
  v7 = v0[1];

  MEMORY[0x1E1283490](23328, 0xE200000000000000);
  v4 = sub_1DB2BB8F4();
  MEMORY[0x1E1283490](v4);

  MEMORY[0x1E1283490](0x203E3D205DLL, 0xE500000000000000);
  MEMORY[0x1E1283490](v1, v3);
  return v6;
}

void sub_1DB26678C()
{
  v1 = 0;
  v2 = 0;
  v3 = 0x52434E494F545541;
  if (!*v0)
  {
    v3 = 0;
  }

  v4 = 0xED0000544E454D45;
  if (!*v0)
  {
    v4 = 0;
  }

  v21 = v3;
  v22 = v4;
  v5 = v0[1];
  v20 = xmmword_1DB2C5DD0;
  if (v5 != 5)
  {
    strcpy(v19, "ON CONFLICT ");
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    if (v5 <= 1)
    {
      if (v5)
      {
        v6 = 0x54524F4241;
      }

      else
      {
        v6 = 0x4B4341424C4C4F52;
      }

      if (v5)
      {
        v7 = 0xE500000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }
    }

    else if (v5 == 2)
    {
      v7 = 0xE400000000000000;
      v6 = 1279869254;
    }

    else
    {
      if (v5 == 3)
      {
        v6 = 0x45524F4E4749;
      }

      else
      {
        v6 = 0x4543414C504552;
      }

      if (v5 == 3)
      {
        v7 = 0xE600000000000000;
      }

      else
      {
        v7 = 0xE700000000000000;
      }
    }

    MEMORY[0x1E1283490](v6, v7, xmmword_1DB2C5DD0);

    v1 = v19[0];
    v2 = v19[1];
  }

  v8 = 0;
  v23 = v1;
  v24 = v2;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_23:
  if (v8 <= 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 + 1;
  v12 = 16 * v8 + 40;
  while (1)
  {
    if (v8 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      v19[0] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB2BAD24();

      return;
    }

    if (v11 == ++v8)
    {
      break;
    }

    v13 = v12 + 16;
    v14 = *(&v19[2] + v12);
    v12 += 16;
    if (v14)
    {
      v15 = *(&v19[-1] + v13);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1DB1572F0(0, *(v9 + 2) + 1, 1, v9);
      }

      v17 = *(v9 + 2);
      v16 = *(v9 + 3);
      if (v17 >= v16 >> 1)
      {
        v9 = sub_1DB1572F0((v16 > 1), v17 + 1, 1, v9);
      }

      *(v9 + 2) = v17 + 1;
      v18 = &v9[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_1DB266A48()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v27 = xmmword_1DB2CD1E0;
  result = sub_1DB2B995C(34, 0xE100000000000000);
  v28 = result;
  v29 = v10;
  if (v3)
  {
    v11 = sub_1DB2B995C(34, 0xE100000000000000);
    MEMORY[0x1E1283490](v11);

    result = MEMORY[0x1E1283490](41, 0xE100000000000000);
    v4 = 40;
    v12 = 0xE100000000000000;
  }

  else
  {
    v12 = 0;
  }

  v30 = v4;
  v31 = v12;
  if (!v6)
  {
    v32 = v5;
    v33 = 0;
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  result = MEMORY[0x1E1283490](v5, v6);
  v32 = 0x5441445055204E4FLL;
  v33 = 0xEA00000000002045;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  result = MEMORY[0x1E1283490](v7, v8);
  v7 = 0x54454C4544204E4FLL;
  v13 = 0xEA00000000002045;
LABEL_9:
  v14 = 0;
  v34 = v7;
  v35 = v13;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_10:
  if (v14 <= 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = 16 * v14 + 40;
  while (1)
  {
    if (v14 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D28, &unk_1DB2CD1F8);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB1688F0(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
      v25 = sub_1DB2BAD24();

      return v25;
    }

    if (v17 == ++v14)
    {
      break;
    }

    v19 = v18 + 16;
    v20 = *&v26[v18];
    v18 += 16;
    if (v20)
    {
      v21 = *&v26[v19 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DB1572F0(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_1DB1572F0((v22 > 1), v23 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB266CFC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
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
    v28 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(result + 56) + v12);
    v18 = v15 == 0;

    if (!v15)
    {
      return v18;
    }

    v19 = sub_1DB141B30(v16, v15);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      return v18;
    }

    if (*(*(a2 + 56) + v19))
    {
      v22 = 1129530692;
    }

    else
    {
      v22 = 4412225;
    }

    if (*(*(a2 + 56) + v19))
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE300000000000000;
    }

    if (v17)
    {
      v24 = 1129530692;
    }

    else
    {
      v24 = 4412225;
    }

    if (v17)
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE300000000000000;
    }

    if (v22 == v24 && v23 == v25)
    {

      result = v13;
      v7 = v28;
    }

    else
    {
      v27 = sub_1DB2BB924();

      result = v13;
      v7 = v28;
      if ((v27 & 1) == 0)
      {
        return v18;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19OnDeviceStorageCore12LiteralValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_1DB2BB924();
          sub_1DB262884(v6, v5, 2u);
          sub_1DB262884(v3, v2, 2u);
          sub_1DB26289C(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_22;
        }

        sub_1DB262884(v14, v2, 2u);
        sub_1DB262884(v3, v2, 2u);
        sub_1DB26289C(v3, v2, 2u);
        v20 = v3;
        v21 = v2;
        v22 = 2;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v3 > 2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v3 ^ 4 | v2)
        {
          if (v7 != 3 || v6 != 5 || v5)
          {
            goto LABEL_56;
          }

          sub_1DB26289C(*a1, v2, 3u);
          v20 = 5;
        }

        else
        {
          if (v7 != 3 || v6 != 4 || v5)
          {
            goto LABEL_56;
          }

          sub_1DB26289C(*a1, v2, 3u);
          v20 = 4;
        }
      }

      else
      {
        if (v7 != 3 || v6 != 3 || v5)
        {
          goto LABEL_56;
        }

        sub_1DB26289C(*a1, v2, 3u);
        v20 = 3;
      }
    }

    else if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 != 3 || v6 != 1 || v5)
        {
          goto LABEL_56;
        }

        sub_1DB26289C(*a1, v2, 3u);
        v19 = 1;
        sub_1DB26289C(1, 0, 3u);
        return v19;
      }

      if (v7 != 3 || v6 != 2 || v5)
      {
        goto LABEL_56;
      }

      sub_1DB26289C(*a1, v2, 3u);
      v20 = 2;
    }

    else
    {
      if (v7 != 3 || v5 | v6)
      {
        goto LABEL_56;
      }

      sub_1DB26289C(*a1, v2, 3u);
      v20 = 0;
    }

    v21 = 0;
    v22 = 3;
LABEL_55:
    sub_1DB26289C(v20, v21, v22);
    return 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1DB2BB924();
        sub_1DB262884(v6, v5, 0);
        sub_1DB262884(v3, v2, 0);
        sub_1DB26289C(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
LABEL_22:
        sub_1DB26289C(v11, v12, v13);
        return v10 & 1;
      }

      sub_1DB262884(v8, v2, 0);
      sub_1DB262884(v3, v2, 0);
      sub_1DB26289C(v3, v2, 0);
      v20 = v3;
      v21 = v2;
      v22 = 0;
      goto LABEL_55;
    }

LABEL_56:
    sub_1DB262884(*a2, *(a2 + 8), v7);
    sub_1DB262884(v3, v2, v4);
    sub_1DB26289C(v3, v2, v4);
    sub_1DB26289C(v6, v5, v7);
    return 0;
  }

  if (v7 != 1)
  {
    goto LABEL_56;
  }

  if (v3 != v6 || v2 != v5)
  {
    v17 = *a1;
    v10 = sub_1DB2BB924();
    sub_1DB262884(v6, v5, 1u);
    sub_1DB262884(v3, v2, 1u);
    sub_1DB26289C(v3, v2, 1u);
    v11 = v6;
    v12 = v5;
    v13 = 1;
    goto LABEL_22;
  }

  v19 = 1;
  sub_1DB262884(*a1, v2, 1u);
  sub_1DB262884(v3, v2, 1u);
  sub_1DB26289C(v3, v2, 1u);
  sub_1DB26289C(v3, v2, 1u);
  return v19;
}

BOOL _s19OnDeviceStorageCore15IndexDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a1 + 48);
  v11 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = *(a1 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }

LABEL_10:
    if (sub_1DB1375FC(v5, v10))
    {
      if (v6)
      {
        if (!v11 || (v16 != v15 || v6 != v11) && (sub_1DB2BB924() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v18)
      {
        if (!v17)
        {
          return 0;
        }

        v14 = sub_1DB266CFC(v18, v17);

        return (v14 & 1) != 0;
      }

      if (!v17)
      {
        return 1;
      }
    }

    return 0;
  }

  v12 = sub_1DB2BB924();
  result = 0;
  if ((v12 & 1) != 0 && ((v4 ^ v9) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL _s19OnDeviceStorageCore16ColumnDefinitionV10PrimaryKeyV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 == 5)
  {
    return v4 == 5;
  }

  return v4 != 5 && (sub_1DB236900(v3, v4) & 1) != 0;
}

uint64_t _s19OnDeviceStorageCore16ColumnDefinitionV10ForeignKeyV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v18 = a1[9];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v15 = a2[6];
  v16 = a1[6];
  v13 = a2[8];
  v14 = a1[8];
  v17 = a2[9];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DB2BB924() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (sub_1DB2BB924() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v16 != v15 || v6 != v11) && (sub_1DB2BB924() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v18)
  {
    if (v17 && (v14 == v13 && v18 == v17 || (sub_1DB2BB924() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t _s19OnDeviceStorageCore16ColumnDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 8);
  v9 = *(a1 + 18);
  v31 = *(a1 + 19);
  v29 = a1[4];
  v30 = a1[3];
  v28 = *(a1 + 40);
  v10 = *(a1 + 6);
  v64 = *(a1 + 5);
  v65 = v10;
  v66 = *(a1 + 7);
  v11 = *(a1 + 4);
  v62 = *(a1 + 3);
  v63 = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = *(a2 + 8);
  v15 = *(a2 + 18);
  v16 = *(a2 + 19);
  v17 = a2[3];
  v18 = a2[4];
  v19 = *(a2 + 40);
  v20 = *(a2 + 7);
  v70 = *(a2 + 6);
  v71 = v20;
  v21 = *(a2 + 5);
  v68 = *(a2 + 4);
  v69 = v21;
  v67 = *(a2 + 3);
  if ((v4 != v12 || v5 != v13) && (sub_1DB2BB924() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v14 == 2 || ((v6 ^ v14) & 1) != 0)
    {
      goto LABEL_14;
    }

    if (v7 == 5)
    {
      if (v14 >> 8 != 5)
      {
        goto LABEL_14;
      }
    }

    else if (v14 >> 8 == 5 || (sub_1DB236900(v7, BYTE1(v14)) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v22 = sub_1DB2367AC(v9, v15);
  v23 = 0;
  if ((v22 & 1) != 0 && ((v31 ^ v16) & 1) == 0)
  {
    *&v44 = v30;
    *(&v44 + 1) = v29;
    LOBYTE(v45) = v28;
    *&v39 = v17;
    *(&v39 + 1) = v18;
    LOBYTE(v40) = v19;
    sub_1DB262884(v30, v29, v28);
    sub_1DB262884(v17, v18, v19);
    v24 = _s19OnDeviceStorageCore12LiteralValueO2eeoiySbAC_ACtFZ_0(&v44, &v39);
    sub_1DB26289C(v39, *(&v39 + 1), v40);
    sub_1DB26289C(v44, *(&v44 + 1), v45);
    if (v24)
    {
      v25 = v62;
      v58 = v63;
      v59 = v64;
      v60 = v65;
      v61 = v66;
      v26 = v67;
      v56 = v70;
      v57 = v71;
      v54 = v68;
      v55 = v69;
      if (*(&v62 + 1))
      {
        v44 = v62;
        v45 = v63;
        v46 = v64;
        v47 = v65;
        v48 = v66;
        v41 = v64;
        v42 = v65;
        v43 = v66;
        v39 = v62;
        v40 = v63;
        if (*(&v67 + 1))
        {
          v35 = v68;
          v36 = v69;
          v37 = v70;
          v38 = v71;
          v34 = v67;
          v23 = _s19OnDeviceStorageCore16ColumnDefinitionV10ForeignKeyV2eeoiySbAE_AEtFZ_0(&v39, &v34);
          v32[2] = v36;
          v32[3] = v37;
          v32[4] = v38;
          v32[0] = v34;
          v32[1] = v35;
          sub_1DB267B2C(&v62, v33);
          sub_1DB267B2C(&v67, v33);
          sub_1DB267B2C(&v44, v33);
          sub_1DB268294(v32);
          v33[2] = v41;
          v33[3] = v42;
          v33[4] = v43;
          v33[0] = v39;
          v33[1] = v40;
          sub_1DB268294(v33);
          v34 = v25;
          v35 = v58;
          v36 = v59;
          v37 = v60;
          v38 = v61;
          sub_1DB1445E0(&v34, &qword_1ECC28D20, &unk_1DB2CD150);
          return v23 & 1;
        }

        v36 = v46;
        v37 = v47;
        v38 = v48;
        v34 = v44;
        v35 = v45;
        sub_1DB267B2C(&v62, v33);
        sub_1DB267B2C(&v67, v33);
        sub_1DB267B2C(&v44, v33);
        sub_1DB268294(&v34);
      }

      else
      {
        if (!*(&v67 + 1))
        {
          v44 = v62;
          v45 = v63;
          v46 = v64;
          v47 = v65;
          v48 = v66;
          sub_1DB267B2C(&v62, &v39);
          sub_1DB267B2C(&v67, &v39);
          sub_1DB1445E0(&v44, &qword_1ECC28D20, &unk_1DB2CD150);
          v23 = 1;
          return v23 & 1;
        }

        sub_1DB267B2C(&v62, &v44);
        sub_1DB267B2C(&v67, &v44);
      }

      v44 = v25;
      v45 = v58;
      v46 = v59;
      v47 = v60;
      v48 = v61;
      v49 = v26;
      v50 = v54;
      v51 = v55;
      v52 = v56;
      v53 = v57;
      sub_1DB1445E0(&v44, &qword_1ECC28D70, &qword_1DB2CDAA0);
      v23 = 0;
      return v23 & 1;
    }

LABEL_14:
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t _s19OnDeviceStorageCore16ObjectDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a1 + 48);
  v16 = *(a2 + 56);
  v17 = *(a1 + 56);
  if ((sub_1DB236684(*a1, *a2) & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1DB2BB924() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 != v11)
    {
      return 0;
    }

LABEL_11:
    if (v17)
    {
      if (!v16 || (v15 != v14 || v17 != v16) && (sub_1DB2BB924() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    return 1;
  }

  v12 = sub_1DB2BB924();
  result = 0;
  if ((v12 & 1) != 0 && v6 == v11)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1DB267B2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D20, &unk_1DB2CD150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB267BA0()
{
  result = qword_1ECC28D30;
  if (!qword_1ECC28D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D30);
  }

  return result;
}

unint64_t sub_1DB267BF8()
{
  result = qword_1ECC28D38;
  if (!qword_1ECC28D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D38);
  }

  return result;
}

unint64_t sub_1DB267C94()
{
  result = qword_1ECC28D50;
  if (!qword_1ECC28D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D50);
  }

  return result;
}

unint64_t sub_1DB267D30()
{
  result = qword_1ECC28D68;
  if (!qword_1ECC28D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D68);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB267DA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DB267DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB267E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1DB267EA8(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnDefinition.PrimaryKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ColumnDefinition.PrimaryKey(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1DB2680B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DB268100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB268164(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DB2681AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DB2681F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DB268248()
{
  result = qword_1EE13E530;
  if (!qword_1EE13E530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE13E530);
  }

  return result;
}

uint64_t sub_1DB2682C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DB26830C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

OnDeviceStorageCore::LogMessage::StringInterpolation __swiftcall LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)(OnDeviceStorageCore::LogMessage::StringInterpolation literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  if (__OFADD__(literalCapacity.components._rawValue, interpolationCount))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v2->components._rawValue = MEMORY[0x1E69E7CC0];
    literalCapacity.components._rawValue = sub_1DB156674(0, (literalCapacity.components._rawValue + interpolationCount) & ~((literalCapacity.components._rawValue + interpolationCount) >> 63), 0, v4);
    v3->components._rawValue = literalCapacity.components._rawValue;
  }

  return literalCapacity;
}

Swift::Void __swiftcall LogMessage.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v11 = MEMORY[0x1E69E6158];
    v10 = a1;
    v12 = 0u;
    v13 = 0u;

    sub_1DB156864(&v10, &v12);
    v14 = 0;
    v3 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1DB156674(0, *(v3 + 2) + 1, 1, v3);
      *v1 = v3;
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_1DB156674((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    v7 = &v3[40 * v6];
    v8 = v12;
    v9 = v13;
    v7[64] = v14;
    *(v7 + 2) = v8;
    *(v7 + 3) = v9;
    *v1 = v3;
  }
}

OnDeviceStorageCore::LogMessage __swiftcall LogMessage.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB2BCC40;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = countAndFlagsBits;
  v7[1] = object;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result.components._rawValue = sub_1DB156864(v7, v5 + 32);
  *(v5 + 64) = 0;
  *v4 = v5;
  return result;
}

uint64_t LogMessage.ValueTreatment.hashValue.getter()
{
  v1 = *v0;
  sub_1DB2BBA04();
  MEMORY[0x1E1283FC0](v1);
  return sub_1DB2BBA54();
}

uint64_t sub_1DB26870C@<X0>(uint64_t a1@<X8>)
{
  sub_1DB2BAD44();
  sub_1DB26A114();
  v2 = sub_1DB2BAFC4();
  v4 = v3;
  swift_getObjectType();
  v7[0] = sub_1DB2BBB14();
  v7[1] = v5;
  MEMORY[0x1E1283490](7876666, 0xE300000000000000);
  MEMORY[0x1E1283490](v2, v4);

  v7[3] = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = sub_1DB156864(v7, a1);
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1DB2687EC(char a1)
{
  v2 = v1;
  v4 = sub_1DB2BAC94();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DB2BAB44();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DB2BA824();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  sub_1DB1567F4(v2, &v51);
  if (!v52)
  {
    sub_1DB1445E0(&v51, &qword_1ECC26F30, &unk_1DB2BFA90);
    return 0x296C6C756E28;
  }

  sub_1DB144640(&v51, v53);
  v20 = *(v2 + 32);
  LOBYTE(v51) = a1 & 1;
  BYTE1(v51) = v20;
  sub_1DB1444CC(v53, &v51 + 8);
  if ((a1 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (BYTE1(v51))
  {
    if (BYTE1(v51) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v51 + 1);
      __swift_destroy_boxed_opaque_existential_1(v53);
      return 0x657461766972705BLL;
    }

    else
    {
      sub_1DB144640((&v51 + 8), v49);
      v23 = v50;
      v24 = __swift_project_boxed_opaque_existential_1(v49, v50);
      v25 = *(*(v23 - 8) + 64);
      MEMORY[0x1EEE9AC00](v24);
      (*(v27 + 16))(&v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      v28 = sub_1DB2BADF4();
      v30 = sub_1DB2B73AC(v28, v29);
      v32 = v31;
      sub_1DB26A7A0(&qword_1ECC28568, MEMORY[0x1E6966640]);
      sub_1DB2BAB34();
      sub_1DB226094(v30, v32);
      sub_1DB26A520(v30, v32);
      sub_1DB207494(v30, v32);
      sub_1DB2BAB24();
      (*(v46 + 8))(v7, v4);
      v48 = sub_1DB269370(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE8, &qword_1DB2BCC60);
      sub_1DB26A700(&qword_1EE13F678, &qword_1ECC26CE8, &qword_1DB2BCC60);
      v33 = sub_1DB2BAD24();
      sub_1DB207494(v30, v32);

      (*(v47 + 8))(v11, v8);
      __swift_destroy_boxed_opaque_existential_1(v49);
      __swift_destroy_boxed_opaque_existential_1(v53);
      return v33;
    }
  }

  if (swift_dynamicCast())
  {
    (*(v13 + 32))(v17, v19, v12);
    v22 = _s10Foundation3URLV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
    (*(v13 + 8))(v17, v12);
    __swift_destroy_boxed_opaque_existential_1(&v51 + 1);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(v53);
    return v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27448, &qword_1DB2BFA70);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v38 = v54;
    v39 = __swift_project_boxed_opaque_existential_1(v53, v54);
    v40 = *(*(v38 - 8) + 64);
    MEMORY[0x1EEE9AC00](v39);
    (*(v42 + 16))(&v45 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_1DB2BADF4();
    sub_1DB1445E0(&v51, &qword_1ECC28DB8, &qword_1DB2CDE88);
    goto LABEL_14;
  }

  v34 = v49[0];
  if (os_variant_has_internal_content())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1DB2BCC40;
    v36 = sub_1DB2BA7B4();
    *(v35 + 56) = sub_1DB26A754();
    *(v35 + 64) = sub_1DB26A7A0(&qword_1ECC28DC8, sub_1DB26A754);
    *(v35 + 32) = v36;
    v37 = sub_1DB2BADC4();
    MEMORY[0x1E1284A10](v34);
    __swift_destroy_boxed_opaque_existential_1(&v51 + 1);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return v37;
  }

  else
  {
    v43 = sub_1DB2BA7B4();
    v44 = sub_1DB268F20(v43);

    MEMORY[0x1E1284A10](v34);
    __swift_destroy_boxed_opaque_existential_1(&v51 + 1);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return v44;
  }
}

uint64_t sub_1DB268F20(void *a1)
{
  v36 = 8315;
  v37 = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB2BD5A0;
  v3 = [a1 domain];
  v4 = sub_1DB2BAD94();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1DB156A2C();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v7 = [a1 code];
  v8 = MEMORY[0x1E69E65A8];
  *(v2 + 96) = MEMORY[0x1E69E6530];
  *(v2 + 104) = v8;
  *(v2 + 72) = v7;
  sub_1DB143508();
  v9 = sub_1DB2BB3C4();
  v11 = v10;

  v38 = v9;
  v39 = v11;
  v12 = [a1 userInfo];
  v13 = sub_1DB2BACD4();

  v14 = *MEMORY[0x1E696AA08];
  v15 = sub_1DB2BAD94();
  if (*(v13 + 16))
  {
    v17 = sub_1DB141B30(v15, v16);
    v19 = v18;

    if (v19)
    {
      sub_1DB1444CC(*(v13 + 56) + 32 * v17, &v36);

      sub_1DB26A754();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_7;
      }

      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1DB2BB4F4();

      v36 = 0xD000000000000014;
      v37 = 0x80000001DB2D6E50;
      v20 = (sub_1DB268F20)();
      MEMORY[0x1E1283490](v20);

      MEMORY[0x1E1283490](32032, 0xE200000000000000);
      MEMORY[0x1E1283490](v36, v37);
    }
  }

  else
  {
  }

LABEL_7:
  v21 = [a1 userInfo];
  v22 = sub_1DB2BACD4();

  v23 = *MEMORY[0x1E696A750];
  v24 = sub_1DB2BAD94();
  if (!*(v22 + 16))
  {

    goto LABEL_19;
  }

  v26 = sub_1DB141B30(v24, v25);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_1DB1444CC(*(v22 + 56) + 32 * v26, &v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28DD0, &unk_1DB2CDE90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    MEMORY[0x1E1283490](32032, 0xE200000000000000);
    return v38;
  }

  result = MEMORY[0x1E1283490](0xD00000000000001DLL, 0x80000001DB2D6E30);
  if (!(v35 >> 62))
  {
    v30 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_12;
    }

LABEL_22:

    MEMORY[0x1E1283490](23840, 0xE200000000000000);
    goto LABEL_20;
  }

  result = sub_1DB2BB694();
  v30 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (v30 >= 1)
  {
    v31 = 0;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1E1283AD0](v31);
      }

      else
      {
        v32 = *(v35 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v36 = sub_1DB268F20(v32);
      v37 = v34;
      MEMORY[0x1E1283490](32, 0xE100000000000000);
      MEMORY[0x1E1283490](v36, v37);
    }

    while (v30 != v31);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB269370(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DB2BAB44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB26A7A0(&qword_1ECC28DD8, MEMORY[0x1E6966420]);
  v9 = sub_1DB2BB024();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DB138470(0, v9 & ~(v9 >> 63), 0);
  v10 = v39;
  (*(v5 + 16))(v8, a1, v4);
  result = sub_1DB2BB014();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = v38;
    if (v9)
    {
      v34 = v1;
      v13 = v37;
      *&v36 = *(v37 + 16);
      v35 = xmmword_1DB2BCC40;
      v14 = v38;
      while (v36 != v14)
      {
        if (v12 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(v13 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 32 + v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        *(v16 + 56) = MEMORY[0x1E69E7508];
        *(v16 + 64) = MEMORY[0x1E69E7558];
        *(v16 + 32) = v15;
        result = sub_1DB2BADC4();
        v39 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          v33 = result;
          v21 = v17;
          sub_1DB138470((v18 > 1), v19 + 1, 1);
          v17 = v21;
          result = v33;
          v10 = v39;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = result;
        *(v20 + 40) = v17;
        ++v14;
        if (!--v9)
        {
          v38 = v14;
          v2 = v34;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v14 = v38;
LABEL_12:
      v22 = v37;
      v23 = *(v37 + 16);
      if (v14 == v23)
      {
LABEL_13:

        return v10;
      }

      v36 = xmmword_1DB2BCC40;
      while (v14 < v23)
      {
        v24 = v14 + 1;
        v25 = *(v22 + 32 + v14);
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CE0, &qword_1DB2CE000);
        v26 = swift_allocObject();
        *(v26 + 16) = v36;
        *(v26 + 56) = MEMORY[0x1E69E7508];
        *(v26 + 64) = MEMORY[0x1E69E7558];
        *(v26 + 32) = v25;
        result = sub_1DB2BADC4();
        v39 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          *&v35 = result;
          v31 = v2;
          v32 = v27;
          sub_1DB138470((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v2 = v31;
          result = v35;
          v10 = v39;
        }

        *(v10 + 16) = v29 + 1;
        v30 = v10 + 16 * v29;
        *(v30 + 32) = result;
        *(v30 + 40) = v27;
        v23 = *(v22 + 16);
        v14 = v38;
        if (v38 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB269754@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB2BCC40;
  sub_1DB1567F4(a1, v8);
  *(v6 + 48) = 0u;
  *(v6 + 32) = 0u;
  result = sub_1DB156864(v8, v6 + 32);
  *(v6 + 64) = a2;
  *a3 = v6;
  return result;
}

uint64_t static LogMessage.identity(_:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB2BCC40;
  swift_unknownObjectRetain();
  result = sub_1DB26870C(v2 + 32);
  *a1 = v2;
  return result;
}

uint64_t static LogMessage.describe(contentsOf:withRedaction:separator:)(uint64_t a1, char a2)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27468, &unk_1DB2CDBD0);
  sub_1DB156944();
  v2 = sub_1DB2BAD24();

  return v2;
}

uint64_t sub_1DB26992C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D80, &unk_1DB2CDBE0);
  sub_1DB26A19C();

  v5 = sub_1DB2BAD24();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t static LogMessage.values(of:withRedaction:)(uint64_t result, char a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  while (2)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v3 >= v4)
    {
      __break(1u);
    }

    else
    {
      v7 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        v8 = *(v5 + 8 * v3);
        v9 = *(v8 + 16);
        ++v3;
        if (!v9)
        {
          continue;
        }

        v3 = v7;
        v10 = v8 + 32;

        while (1)
        {
          sub_1DB26A0AC(v10, v23);
          sub_1DB1567F4(v23, &v19);
          if (v20)
          {
            sub_1DB144640(&v19, &v21);
            if ((a2 & 1) == 0 || !v23[32])
            {
              sub_1DB1444CC(&v21, &v19);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v6 = sub_1DB158300(0, *(v6 + 2) + 1, 1, v6);
              }

              v18 = *(v6 + 2);
              v17 = *(v6 + 3);
              if (v18 >= v17 >> 1)
              {
                v6 = sub_1DB158300((v17 > 1), v18 + 1, 1, v6);
              }

              __swift_destroy_boxed_opaque_existential_1(&v21);
              sub_1DB26A0E4(v23);
              *(v6 + 2) = v18 + 1;
              v11 = &v6[32 * v18];
              v12 = &v19;
              goto LABEL_8;
            }

            __swift_destroy_boxed_opaque_existential_1(&v21);
          }

          else
          {
            sub_1DB1445E0(&v19, &qword_1ECC26F30, &unk_1DB2BFA90);
          }

          v13 = sub_1DB2687EC(1);
          v22 = MEMORY[0x1E69E6158];
          *&v21 = v13;
          *(&v21 + 1) = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1DB158300(0, *(v6 + 2) + 1, 1, v6);
          }

          v16 = *(v6 + 2);
          v15 = *(v6 + 3);
          if (v16 >= v15 >> 1)
          {
            v6 = sub_1DB158300((v15 > 1), v16 + 1, 1, v6);
          }

          sub_1DB26A0E4(v23);
          *(v6 + 2) = v16 + 1;
          v11 = &v6[32 * v16];
          v12 = &v21;
LABEL_8:
          sub_1DB144640(v12, v11 + 2);
          v10 += 40;
          if (!--v9)
          {

            goto LABEL_2;
          }
        }
      }
    }

    break;
  }

  __break(1u);
  return result;
}

__n128 sub_1DB269C48(uint64_t a1, char a2)
{
  sub_1DB1567F4(a1, v11);
  v12 = 0u;
  v13 = 0u;
  sub_1DB156864(v11, &v12);
  v14 = a2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DB156674(0, *(v4 + 2) + 1, 1, v4);
    *v2 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DB156674((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[40 * v7];
  result = v12;
  v10 = v13;
  v8[64] = v14;
  *(v8 + 2) = result;
  *(v8 + 3) = v10;
  *v2 = v4;
  return result;
}

__n128 LogMessage.StringInterpolation.appendInterpolation(identity:)()
{
  v1 = v0;
  swift_unknownObjectRetain();
  sub_1DB2BAD44();
  sub_1DB26A114();
  v2 = sub_1DB2BAFC4();
  v4 = v3;
  swift_getObjectType();
  v15.n128_u64[0] = sub_1DB2BBB14();
  v15.n128_u64[1] = v5;
  MEMORY[0x1E1283490](7876666, 0xE300000000000000);
  MEMORY[0x1E1283490](v2, v4);

  v14 = MEMORY[0x1E69E6158];
  swift_unknownObjectRelease();
  v13 = v15;
  v15 = 0u;
  v16 = 0u;
  sub_1DB156864(&v13, &v15);
  v17 = 0;
  v6 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1DB156674(0, *(v6 + 2) + 1, 1, v6);
    *v1 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1DB156674((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[40 * v9];
  result = v15;
  v12 = v16;
  v10[64] = v17;
  *(v10 + 2) = result;
  *(v10 + 3) = v12;
  *v1 = v6;
  return result;
}

char *sub_1DB269ED8@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    *a3 = MEMORY[0x1E69E7CC0];
    result = sub_1DB156674(0, &result[a2] & ~(&result[a2] >> 63), 0, v4);
    *a3 = result;
  }

  return result;
}

uint64_t LogMessage.description.getter()
{
  v1 = *v0;
  v2 = os_variant_has_internal_content() ^ 1;
  *(swift_allocObject() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28D80, &unk_1DB2CDBE0);
  sub_1DB26A19C();

  v3 = sub_1DB2BAD24();

  return v3;
}

uint64_t sub_1DB26A018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274E0, &unk_1DB2BFDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB2BCC40;
  v7[3] = MEMORY[0x1E69E6158];
  v7[0] = v3;
  v7[1] = v4;
  *(v5 + 48) = 0u;
  *(v5 + 32) = 0u;
  result = sub_1DB156864(v7, v5 + 32);
  *(v5 + 64) = 0;
  *a2 = v5;
  return result;
}

unint64_t sub_1DB26A114()
{
  result = qword_1ECC28D78;
  if (!qword_1ECC28D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D78);
  }

  return result;
}

uint64_t sub_1DB26A168@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DB2687EC(*(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DB26A19C()
{
  result = qword_1EE13F658;
  if (!qword_1EE13F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28D80, &unk_1DB2CDBE0);
    sub_1DB26A700(&qword_1EE13F6B0, &qword_1ECC28D88, &qword_1DB2CDBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F658);
  }

  return result;
}

unint64_t sub_1DB26A23C()
{
  result = qword_1ECC28D90;
  if (!qword_1ECC28D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D90);
  }

  return result;
}

unint64_t sub_1DB26A2A0()
{
  result = qword_1ECC28D98;
  if (!qword_1ECC28D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28D98);
  }

  return result;
}

unint64_t sub_1DB26A2F8()
{
  result = qword_1ECC28DA0;
  if (!qword_1ECC28DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DA0);
  }

  return result;
}

unint64_t sub_1DB26A350()
{
  result = qword_1ECC28DA8;
  if (!qword_1ECC28DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DA8);
  }

  return result;
}

unint64_t sub_1DB26A3A8()
{
  result = qword_1ECC28DB0;
  if (!qword_1ECC28DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB26A45C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1DB26A4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1DB26A520(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1DB2BAC94();
      sub_1DB26A7A0(&qword_1ECC28568, MEMORY[0x1E6966640]);
      result = sub_1DB2BAB14();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1DB26A7E8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB26A700(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1DB26A754()
{
  result = qword_1ECC28DC0;
  if (!qword_1ECC28DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC28DC0);
  }

  return result;
}

uint64_t sub_1DB26A7A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB26A7E8(uint64_t a1, uint64_t a2)
{
  result = sub_1DB2BA6E4();
  if (!result || (result = sub_1DB2BA714(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DB2BA704();
      sub_1DB2BAC94();
      sub_1DB26A7A0(&qword_1ECC28568, MEMORY[0x1E6966640]);
      return sub_1DB2BAB14();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

OnDeviceStorageCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = v1;
  v5 = name._countAndFlagsBits == 0x6775626564 && name._object == 0xE500000000000000;
  if (v5 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1868983913 && object == 0xE400000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x676E696E726177 && object == 0xE700000000000000 || (sub_1DB2BB924() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x726F727265 && object == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_1DB2BB924();

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 4;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t LogMessageLevel.name.getter()
{
  v1 = 0x6775626564;
  if (*v0 == 2)
  {
    v1 = 1868983913;
  }

  v2 = 0x726F727265;
  if (*v0)
  {
    v2 = 0x676E696E726177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

OnDeviceStorageCore::LogMessageLevel_optional __swiftcall LogMessageLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DB26AAF0()
{
  result = qword_1ECC28DE0;
  if (!qword_1ECC28DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DE0);
  }

  return result;
}

unint64_t sub_1DB26ABA0()
{
  result = qword_1ECC28DE8;
  if (!qword_1ECC28DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC28DF0, &qword_1DB2CDF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DE8);
  }

  return result;
}

uint64_t OSLogger.init(subsystem:category:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1EE13FF58 != -1)
  {
    a1 = swift_once();
  }

  v5 = *(off_1EE13FF60 + 2);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v5 + 24));
  sub_1DB15E330((v5 + 16), &v7);
  os_unfair_lock_unlock((v5 + 24));

  *a2 = v7;
  return result;
}

uint64_t sub_1DB26AD14()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB26AD7C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB2BAE84();

  return sub_1DB2BAE84();
}

uint64_t sub_1DB26ADCC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DB2BBA04();
  sub_1DB2BAE84();
  sub_1DB2BAE84();
  return sub_1DB2BBA54();
}

uint64_t sub_1DB26AE30(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DB2BB924(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DB2BB924();
    }
  }

  return result;
}

uint64_t sub_1DB26AED4()
{
  type metadata accessor for OSLogRegistry();
  v0 = swift_allocObject();
  v1 = sub_1DB142D18(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28E00, &unk_1DB2CE1E0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  off_1EE13FF60 = v0;
  return result;
}

id sub_1DB26AF4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = *(*a1 + 16);

  if (v13 && (v14 = sub_1DB141BA8(a2, a3, a4, a5), (v15 & 1) != 0))
  {
    v16 = v14;

    v17 = *(*(v12 + 56) + 8 * v16);
    *a6 = v17;
    return v17;
  }

  else
  {
    sub_1DB26B38C();

    v19 = sub_1DB2BB324();
    v20 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    sub_1DB142BA0(v19, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *a1 = v22;
    *a6 = v19;
  }

  return result;
}

uint64_t sub_1DB26B088()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t OSLogger.Subsystem.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *sub_1DB26B0F0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_1DB26B288()
{
  result = qword_1ECC28DF8;
  if (!qword_1ECC28DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC28DF8);
  }

  return result;
}

unint64_t sub_1DB26B338()
{
  result = qword_1EE13FF68;
  if (!qword_1EE13FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13FF68);
  }

  return result;
}

unint64_t sub_1DB26B38C()
{
  result = qword_1EE13F660;
  if (!qword_1EE13F660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE13F660);
  }

  return result;
}

uint64_t sub_1DB26B3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v15[0] = a1;
  v15[1] = a2;
  v15[4] = sub_1DB26F5E0();
  v15[2] = a3;
  v14[3] = MEMORY[0x1E69E6158];
  v14[4] = &protocol witness table for String;
  v14[0] = a4;
  v14[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E60, &qword_1DB2BCFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB2BD5A0;
  sub_1DB164980(v15, inited + 32);
  sub_1DB164980(v14, inited + 72);

  sub_1DB2B57D4(inited, 1, 61, 0xE100000000000000, a6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E58, &unk_1DB2BD510);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DB26B520(uint64_t a1, uint64_t a2)
{
  sub_1DB26DC3C();
  if (!v3)
  {
    v7 = sub_1DB26F214(v6);

    v8 = *(v2 + 16);
    sub_1DB2BB4F4();

    v9 = sub_1DB2B995C(34, 0xE100000000000000);
    MEMORY[0x1E1283490](v9);

    MEMORY[0x1E1283490](41, 0xE100000000000000);
    type metadata accessor for Statement();
    swift_allocObject();

    sub_1DB253534(v10);
    v11 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

    sub_1DB254F54();
    v13 = v12;

    sub_1DB2A0774(v11, v13, v2, a1, a2, v7);
    v2 = v14;

    swift_bridgeObjectRelease_n();
  }

  return v2;
}

unint64_t sub_1DB26B6F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (qword_1EE13F240 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1EE13F248, unk_1EE13F250, qword_1EE13F258, v10, v11);
  if (!v5)
  {
    v14 = v13;
    v58 = result;
    if (qword_1EE13F220 != -1)
    {
      swift_once();
    }

    sub_1DB275CE8(qword_1EE13F228, unk_1EE13F230, qword_1EE13F238, v10, v11);
    if (qword_1EE13F200 != -1)
    {
      swift_once();
    }

    v56 = sub_1DB275CD0(qword_1EE13F208, unk_1EE13F210, qword_1EE13F218, v10, v11);
    if (qword_1EE13F1E0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DB277674(qword_1EE13F1E8, unk_1EE13F1F0, qword_1EE13F1F8, v10, v11);
    if ((v16 & 1) != 0 || v15 < 1 || (sub_1DB26EA48(a2, a3), !v17))
    {
      v25 = 2;
    }

    else
    {
      v18 = qword_1EE13E9A0;

      if (v18 != -1)
      {
        swift_once();
      }

      v52 = qword_1EE14C860;
      v19 = sub_1DB2BAD64();
      v20 = [v52 firstMatchInString:v19 options:0 range:{0, sub_1DB2BAE94()}];

      if (v20)
      {
        v53 = v20;
        v21 = [v20 rangeAtIndex_];
        v23 = v22;
        if (v21 == sub_1DB2BA594())
        {

          v24 = 5;
        }

        else
        {
          v47 = sub_1DB2BAD64();

          v41 = [v47 substringWithRange_];

          v42 = sub_1DB2BAD94();
          v50 = v43;

          sub_1DB264B0C(v42, v50, &v60);
          v24 = v60;
        }

        v51 = v24;
        v48 = [v53 rangeAtIndex_];
        v44 = sub_1DB2BA594();

        v25 = (v48 != v44) | (v51 << 8);
      }

      else
      {
        v25 = 2;
        swift_bridgeObjectRelease_n();
      }
    }

    sub_1DB2643CC(&v67);
    v26 = v67;
    if (qword_1EE13F1C0 != -1)
    {
      swift_once();
    }

    v27 = sub_1DB277034(qword_1EE13F1C8, unk_1EE13F1D0, qword_1EE13F1D8, v10, v11);
    result = sub_1DB265534(v27, v28, &v65);
    v29 = v65;
    v30 = v66;
    v31 = 0uLL;
    if (*(a4 + 16))
    {
      v57 = v65;
      result = sub_1DB141B30(v58, v14);
      if (v32)
      {
        v33 = *(*(a4 + 56) + 8 * result);
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = v58;
        v29 = v57;
        v31 = 0uLL;
        if (*(v33 + 16))
        {
          v39 = *(v33 + 48);
          v60 = *(v33 + 32);
          v61 = v39;
          v40 = *(v33 + 80);
          v62 = *(v33 + 64);
          v63 = v40;
          v64 = *(v33 + 96);
          *v54 = v61;
          v55 = v60;
          *v46 = v40;
          v49 = v62;
          v45 = v64;
          result = sub_1DB26F644(&v60, v59);
          v37 = v45;
          v36 = *v46;
          v35 = v49;
          v34 = *v54;
          v31 = v55;
          v29 = v57;
          v38 = v58;
        }
      }

      else
      {
        v34 = 0uLL;
        v35 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v38 = v58;
        v29 = v57;
        v31 = 0uLL;
      }
    }

    else
    {
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = v58;
    }

    *a5 = v38;
    *(a5 + 8) = v14;
    *(a5 + 16) = v25;
    *(a5 + 18) = v26;
    *(a5 + 19) = v56 == 0;
    *(a5 + 24) = v29;
    *(a5 + 40) = v30;
    *(a5 + 48) = v31;
    *(a5 + 64) = v34;
    *(a5 + 80) = v35;
    *(a5 + 96) = v36;
    *(a5 + 112) = v37;
  }

  return result;
}

char *sub_1DB26BCB4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4)
{
  v9 = *a3;
  v10 = *(v4 + 16);
  v11 = &type metadata for Table;
  v47 = &type metadata for Table;
  v12 = sub_1DB26F468();
  v48 = v12;
  v46[0] = swift_allocObject();
  sub_1DB26C254(a4, v46[0] + 16);
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1(v46, &type metadata for Table);
    if (qword_1EE13EE98 != -1)
    {
      swift_once();
    }

    sub_1DB26B3DC(qword_1EE13EEA0, *algn_1EE13EEA8, qword_1EE13EEB0, a1, a2, v37);
    *v34 = *v37;
    *&v34[8] = *&v37[8];
    *(&v41 + 1) = &type metadata for Table;
    *&v42 = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v40);
    QueryType.where(_:)(v34, &type metadata for Table, v12, boxed_opaque_existential_0);

    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_1DB1355D0(&v40, v46);
    v11 = v47;
    v12 = v48;
  }

  if (v9 != 4)
  {
    __swift_project_boxed_opaque_existential_1(v46, v11);
    if (qword_1EE13EE78 != -1)
    {
      swift_once();
    }

    v14 = 0x656C626174;
    v15 = 0xE400000000000000;
    v16 = 2003134838;
    if (v9 != 2)
    {
      v16 = 0x72656767697274;
      v15 = 0xE700000000000000;
    }

    if (v9)
    {
      v14 = 0x7865646E69;
    }

    if (v9 <= 1)
    {
      v17 = v14;
    }

    else
    {
      v17 = v16;
    }

    if (v9 <= 1)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = v15;
    }

    sub_1DB26B3DC(qword_1EE13EE80, *algn_1EE13EE88, qword_1EE13EE90, v17, v18, v37);

    *v34 = *v37;
    *&v34[8] = *&v37[8];
    *(&v41 + 1) = v11;
    *&v42 = v12;
    v19 = __swift_allocate_boxed_opaque_existential_0(&v40);
    QueryType.where(_:)(v34, v11, v12, v19);

    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_1DB1355D0(&v40, v46);
    v11 = v47;
    v12 = v48;
  }

  __swift_project_boxed_opaque_existential_1(v46, v11);
  (*(*(v12 + 8) + 24))(&v40, v11);
  v20 = v41;
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v21);
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v22 = sub_1DB255E8C(v20);

    v24 = sub_1DB29611C(v46);
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28FF0, &qword_1DB2CE1F0);
    inited = swift_initStackObject();
    *(inited + 16) = sub_1DB26F4BC;
    *(inited + 24) = v25;

    sub_1DB296FF8(v24, v45);
    v27 = v45[0];
    if (v45[0])
    {
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        v44[0] = v27;
        v44[1] = v45[1];
        sub_1DB26C434(v44, &v40);

        if (v41)
        {
          *v37 = v40;
          *&v37[16] = v41;
          v38 = v42;
          v39 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1DB157900(0, *(v10 + 2) + 1, 1, v10);
          }

          v29 = *(v10 + 2);
          v28 = *(v10 + 3);
          if (v29 >= v28 >> 1)
          {
            v10 = sub_1DB157900((v28 > 1), v29 + 1, 1, v10);
          }

          v35 = v38;
          v36 = v39;
          v30 = *v37;
          *v34 = *v37;
          *&v34[16] = *&v37[16];
          *(v10 + 2) = v29 + 1;
          v31 = &v10[64 * v29];
          v32 = *&v34[16];
          v33 = v36;
          *(v31 + 4) = v35;
          *(v31 + 5) = v33;
          *(v31 + 2) = v30;
          *(v31 + 3) = v32;
        }

        else
        {
          *v37 = v40;
          *&v37[16] = v41;
          v38 = v42;
          v39 = v43;
          sub_1DB1445E0(v37, &qword_1ECC28FF8, &qword_1DB2CE1F8);
        }

        sub_1DB296FF8(v24, v45);
        v27 = v45[0];
      }

      while (v45[0]);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  return v10;
}

uint64_t sub_1DB26C254@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  Connection.sqliteVersion.getter(&v30);
  v4 = v30 < 3;
  if (v30 == 3 && (v4 = v31 < 33, v31 == 33))
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (!v4)
  {
LABEL_4:
    if (a1)
    {
      if (qword_1EE13ECB8 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_1EE13ECC0;
    }

    else
    {
      if (qword_1EE13ED78 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_1EE13ED80;
    }

    goto LABEL_20;
  }

  if (a1)
  {
    if (qword_1ECC26C20 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_1ECC28EC0;
  }

  else
  {
    if (qword_1ECC26C18 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_1ECC28E08;
  }

LABEL_20:
  v6 = v5[9];
  v26 = v5[8];
  v27 = v6;
  v28 = v5[10];
  v29 = *(v5 + 22);
  v7 = v5[5];
  v22 = v5[4];
  v23 = v7;
  v8 = v5[7];
  v24 = v5[6];
  v25 = v8;
  v9 = v5[1];
  v18 = *v5;
  v19 = v9;
  v10 = v5[3];
  v20 = v5[2];
  v21 = v10;
  v11 = v27;
  *(a2 + 128) = v26;
  *(a2 + 144) = v11;
  *(a2 + 160) = v28;
  *(a2 + 176) = v29;
  v12 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v12;
  v13 = v25;
  *(a2 + 96) = v24;
  *(a2 + 112) = v13;
  v14 = v19;
  *a2 = v18;
  *(a2 + 16) = v14;
  v15 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v15;
  return sub_1DB175954(&v18, v17);
}

uint64_t sub_1DB26C434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (qword_1EE13EE78 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1EE13EE80, *algn_1EE13EE88, qword_1EE13EE90, v4, v5);
  if (!v2)
  {
    v8 = result;
    v9 = v7;

    v10 = sub_1DB2BB6F4();

    if (v10 >= 4)
    {
      sub_1DB2BB4F4();

      MEMORY[0x1E1283490](v8, v9);

      sub_1DB15B09C(0xD000000000000018, 0x80000001DB2D6F70);

      *(a2 + 32) = 0u;
      *(a2 + 48) = 0u;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    else
    {

      if (qword_1EE13EE98 != -1)
      {
        swift_once();
      }

      v11 = sub_1DB275CE8(qword_1EE13EEA0, *algn_1EE13EEA8, qword_1EE13EEB0, v4, v5);
      v13 = v12;
      v14 = v11;
      if (qword_1EE13EE38 != -1)
      {
        swift_once();
      }

      v15 = sub_1DB275CE8(qword_1EE13EE40, *algn_1EE13EE48, qword_1EE13EE50, v4, v5);
      v17 = v16;
      if (qword_1EE13EE58 != -1)
      {
        swift_once();
      }

      v18 = sub_1DB277674(qword_1EE13EE60, *algn_1EE13EE68, qword_1EE13EE70, v4, v5);
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (qword_1EE13EC98 != -1)
      {
        swift_once();
      }

      result = sub_1DB277034(qword_1EE13ECA0, *algn_1EE13ECA8, qword_1EE13ECB0, v4, v5);
      *a2 = v10;
      *(a2 + 8) = v14;
      *(a2 + 16) = v13;
      *(a2 + 24) = v15;
      *(a2 + 32) = v17;
      *(a2 + 40) = v20;
      *(a2 + 48) = result;
      *(a2 + 56) = v21;
    }
  }

  return result;
}

void sub_1DB26C774(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 16);
  sub_1DB2BB4F4();

  *&v76 = 0xD000000000000012;
  *(&v76 + 1) = 0x80000001DB2D6EF0;
  v8 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v8);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v9);
  if (v3)
  {

    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  sub_1DB254F54();
  v13 = v12;
  v64 = v4;
  sub_1DB143044();
  *&v65 = 0xD000000000000019;
  *(&v65 + 1) = 0x80000001DB2D1D60;
  v14 = v11;
  v60 = v10;
  v62 = v11;
  v63 = a2;
  v61 = a1;
  v68 = v13;
  while (1)
  {
    v15 = *(v14 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((BYTE8(v76) & 1) != 0 || v76 != v15)
    {
      v17 = *(v15 + 120);
      sub_1DB2BB2C4();
      if ((v70 & 1) == 0)
      {
LABEL_62:

        return;
      }
    }

    else
    {
      v16 = *(v14 + 16);
      os_unfair_lock_lock((v16 + 24));
      sub_1DB14A424((v16 + 16), &v76);
      os_unfair_lock_unlock((v16 + 24));
      if (v76 != 1)
      {
        goto LABEL_62;
      }
    }

    Statement.row.getter(&v76);
    v18 = v76;
    swift_retain_n();
    if (*(&v18 + 1) >= 1)
    {
      v19 = 0;
      v20 = 0;
      v21 = (MEMORY[0x1E69E7CC0] + 32);
      v69 = MEMORY[0x1E69E7CC0];
      v22 = v68;
      v23 = v10;
      while (1)
      {
        os_unfair_lock_lock((v18 + 24));
        if (v19 == 0x80000000)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          os_unfair_lock_unlock(v24);

          return;
        }

        v25 = sqlite3_column_type(*(v18 + 16), v19);
        os_unfair_lock_unlock((v18 + 24));
        if (v25 > 2)
        {
          break;
        }

        if (v25 == 1)
        {
          os_unfair_lock_lock((v18 + 24));
          v33 = COERCE_DOUBLE(sqlite3_column_int64(*(v18 + 16), v19));
          os_unfair_lock_unlock((v18 + 24));
          v36 = MEMORY[0x1E69E7360];
          v37 = &protocol witness table for Int64;
          if (v20)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v25 != 2)
          {
            goto LABEL_31;
          }

          os_unfair_lock_lock((v18 + 24));
          v35 = sqlite3_column_double(*(v18 + 16), v19);
          os_unfair_lock_unlock((v18 + 24));
          v33 = v35;
          v36 = MEMORY[0x1E69E63B0];
          v37 = &protocol witness table for Double;
          if (v20)
          {
            goto LABEL_48;
          }
        }

LABEL_38:
        v40 = v69[3];
        if (((v40 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_66;
        }

        v66 = v37;
        v67 = v23;
        v41 = v40 & 0xFFFFFFFFFFFFFFFELL;
        if (v41 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v41;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v43 = swift_allocObject();
        v44 = (_swift_stdlib_malloc_size(v43) - 32) / 40;
        v43[2] = v42;
        v43[3] = 2 * v44;
        v45 = (v43 + 4);
        v46 = v69[3] >> 1;
        if (v69[2])
        {
          v47 = v69 + 4;
          if (v43 != v69 || v45 >= v47 + 40 * v46)
          {
            memmove(v43 + 4, v47, 40 * v46);
          }

          v69[2] = 0;
        }

        v21 = (v45 + 40 * v46);
        v20 = (v44 & 0x7FFFFFFFFFFFFFFFLL) - v46;

        v69 = v43;
        v23 = v67;
        v22 = v68;
        v37 = v66;
LABEL_48:
        v48 = __OFSUB__(v20--, 1);
        if (v48)
        {
          goto LABEL_64;
        }

        ++v19;
        *v21 = v33;
        *(v21 + 1) = v23;
        v21[2] = 0.0;
        *(v21 + 3) = v36;
        *(v21 + 4) = v37;
        v21 += 5;
        if (*(&v18 + 1) == v19)
        {
          goto LABEL_52;
        }
      }

      if (v25 == 3)
      {
        os_unfair_lock_lock((v18 + 24));
        if (!sqlite3_column_text(*(v18 + 16), v19))
        {
          goto LABEL_67;
        }

        v33 = COERCE_DOUBLE(sub_1DB2BAF14());
        v23 = v38;
        os_unfair_lock_unlock((v18 + 24));
        v36 = MEMORY[0x1E69E6158];
        v37 = &protocol witness table for String;
        if (v20)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      if (v25 != 5)
      {
        if (v25 == 4)
        {
          v26 = v23;
          v27 = sub_1DB138CA8();
          os_unfair_lock_lock((v18 + 24));
          v28 = *(v18 + 16);
          v29 = sqlite3_column_blob(v28, v19);
          if (v29 && (v30 = v29, (v31 = sqlite3_column_bytes(v28, v19)) != 0))
          {
            v32 = v31;
            if (v31 <= 0)
            {
              v33 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v33 = COERCE_DOUBLE(swift_allocObject());
              v34 = _swift_stdlib_malloc_size(*&v33);
              *(*&v33 + 16) = v32;
              *(*&v33 + 24) = 2 * v34 - 64;
            }

            memcpy((*&v33 + 32), v30, v32);
          }

          else
          {
            v33 = MEMORY[0x1E69E7CC0];
          }

          v23 = v26;
          os_unfair_lock_unlock((v18 + 24));
          v36 = &type metadata for Blob;
          v37 = v27;
          v22 = v68;
          if (v20)
          {
            goto LABEL_48;
          }

          goto LABEL_38;
        }

LABEL_31:
        *&v70 = 0;
        *(&v70 + 1) = 0xE000000000000000;
        sub_1DB2BB4F4();

        v70 = v65;
        LODWORD(v75[0]) = v25;
        v39 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v39);
        v22 = v68;

        sub_1DB15B09C(v70, *(&v70 + 1));
      }

      v33 = 0.0;
      v23 = 0;
      v36 = 0;
      v37 = 0;
      if (v20)
      {
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    v20 = 0;
    v69 = MEMORY[0x1E69E7CC0];
    v22 = v68;
    v23 = v10;
LABEL_52:

    v49 = v69;
    v50 = v69[3];
    v14 = v62;
    if (v50 >= 2)
    {
      break;
    }

LABEL_55:

    v75[0] = v22;
    v75[1] = v49;

    sub_1DB26D8F4(v75, v61, v63, v64, &v76);

    if (*(&v76 + 1))
    {
      v72 = v78;
      v73 = v79;
      v74 = v80;
      v70 = v76;
      v71 = v77;
      v10 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1DB1581D8(0, *(v60 + 2) + 1, 1, v60);
      }

      v53 = v60;
      v55 = *(v60 + 2);
      v54 = *(v60 + 3);
      if (v55 >= v54 >> 1)
      {
        v53 = sub_1DB1581D8((v54 > 1), v55 + 1, 1, v60);
      }

      *(v53 + 2) = v55 + 1;
      v60 = v53;
      v56 = &v53[72 * v55];
      *(v56 + 2) = v70;
      v57 = v71;
      v58 = v72;
      v59 = v73;
      *(v56 + 12) = v74;
      *(v56 + 4) = v58;
      *(v56 + 5) = v59;
      *(v56 + 3) = v57;
    }

    else
    {
      v10 = v23;
      v72 = v78;
      v73 = v79;
      v74 = v80;
      v70 = v76;
      v71 = v77;
      sub_1DB1445E0(&v70, &qword_1ECC29000, &qword_1DB2CE200);
    }
  }

  v51 = v50 >> 1;
  v48 = __OFSUB__(v51, v20);
  v52 = v51 - v20;
  if (!v48)
  {
    v49 = v69;
    v69[2] = v52;
    goto LABEL_55;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

char *sub_1DB26CFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 1;
  result = sub_1DB26BCB4(a1, a2, &v18, 0);
  if (!v3)
  {
    v6 = 0;
    v7 = *(result + 2);
    v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v9 = (v6 << 6) + 88;
    while (v7 != v6)
    {
      if (v6 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v10 = v9 + 64;
      ++v6;
      v11 = *&result[v9];
      v9 += 64;
      if (v11)
      {
        v12 = result;
        v13 = *&result[v10 - 72];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB1572F0(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        if (v15 >= v14 >> 1)
        {
          v8 = sub_1DB1572F0((v14 > 1), v15 + 1, 1, v8);
        }

        result = v12;
        *(v8 + 2) = v15 + 1;
        v16 = &v8[16 * v15];
        *(v16 + 4) = v13;
        *(v16 + 5) = v11;
        goto LABEL_3;
      }
    }

    if (*(v8 + 2))
    {
      a3 = *(v8 + 4);
      v17 = *(v8 + 5);
    }

    else
    {
      a3 = 0;
    }
  }

  return a3;
}

void sub_1DB26D124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1DB2BB4F4();

  v65 = 0xD000000000000012;
  v66 = 0x80000001DB2D6F50;
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v6);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v7);
  if (v3)
  {

    return;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  sub_1DB254F54();
  v11 = v10;
  v59 = v9;
  sub_1DB143044();
  v57 = v8;
  v58 = v11;
  while (1)
  {
    v12 = *(v9 + 24);
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((v66 & 1) != 0 || v65 != v12)
    {
      v14 = *(v12 + 120);
      sub_1DB2BB2C4();
      if ((v64 & 1) == 0)
      {
LABEL_63:

        return;
      }
    }

    else
    {
      v13 = *(v9 + 16);
      os_unfair_lock_lock((v13 + 24));
      sub_1DB256240((v13 + 16), &v65);
      os_unfair_lock_unlock((v13 + 24));
      if (v65 != 1)
      {
        goto LABEL_63;
      }
    }

    Statement.row.getter(&v65);
    v16 = v65;
    v15 = v66;
    swift_retain_n();
    if (v15 >= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = (MEMORY[0x1E69E7CC0] + 32);
      v63 = MEMORY[0x1E69E7CC0];
      v20 = v4;
      while (1)
      {
        os_unfair_lock_lock((v16 + 24));
        if (v17 == 0x80000000)
        {
          __break(1u);
LABEL_65:
          __break(1u);
          os_unfair_lock_unlock(v21);

          return;
        }

        v22 = sqlite3_column_type(*(v16 + 16), v17);
        os_unfair_lock_unlock((v16 + 24));
        if (v22 > 2)
        {
          break;
        }

        if (v22 == 1)
        {
          os_unfair_lock_lock((v16 + 24));
          v28 = COERCE_DOUBLE(sqlite3_column_int64(*(v16 + 16), v17));
          os_unfair_lock_unlock((v16 + 24));
          v31 = MEMORY[0x1E69E7360];
          v32 = &protocol witness table for Int64;
          if (v18)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_31;
          }

          os_unfair_lock_lock((v16 + 24));
          v30 = sqlite3_column_double(*(v16 + 16), v17);
          os_unfair_lock_unlock((v16 + 24));
          v28 = v30;
          v31 = MEMORY[0x1E69E63B0];
          v32 = &protocol witness table for Double;
          if (v18)
          {
            goto LABEL_48;
          }
        }

LABEL_38:
        v35 = *(v63 + 3);
        if (((v35 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_67;
        }

        v62 = v32;
        v60 = v20;
        v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
        if (v36 <= 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v38 = swift_allocObject();
        v39 = (_swift_stdlib_malloc_size(v38) - 32) / 40;
        *(v38 + 2) = v37;
        *(v38 + 3) = 2 * v39;
        v40 = (v38 + 32);
        v41 = *(v63 + 3) >> 1;
        if (*(v63 + 2))
        {
          v42 = v63 + 32;
          if (v38 != v63 || v40 >= v42 + 40 * v41)
          {
            memmove(v38 + 32, v42, 40 * v41);
          }

          *(v63 + 2) = 0;
        }

        v19 = (v40 + 40 * v41);
        v18 = (v39 & 0x7FFFFFFFFFFFFFFFLL) - v41;

        v63 = v38;
        v20 = v60;
        v32 = v62;
LABEL_48:
        v43 = __OFSUB__(v18--, 1);
        if (v43)
        {
          goto LABEL_65;
        }

        ++v17;
        *v19 = v28;
        *(v19 + 1) = v20;
        v19[2] = 0.0;
        *(v19 + 3) = v31;
        *(v19 + 4) = v32;
        v19 += 5;
        if (v15 == v17)
        {
          goto LABEL_52;
        }
      }

      if (v22 == 3)
      {
        os_unfair_lock_lock((v16 + 24));
        if (!sqlite3_column_text(*(v16 + 16), v17))
        {
          goto LABEL_68;
        }

        v28 = COERCE_DOUBLE(sub_1DB2BAF14());
        v20 = v33;
        os_unfair_lock_unlock((v16 + 24));
        v31 = MEMORY[0x1E69E6158];
        v32 = &protocol witness table for String;
        if (v18)
        {
          goto LABEL_48;
        }

        goto LABEL_38;
      }

      if (v22 != 5)
      {
        if (v22 == 4)
        {
          v61 = sub_1DB138CA8();
          os_unfair_lock_lock((v16 + 24));
          v23 = *(v16 + 16);
          v24 = sqlite3_column_blob(v23, v17);
          if (v24 && (v25 = v24, (v26 = sqlite3_column_bytes(v23, v17)) != 0))
          {
            v27 = v26;
            if (v26 <= 0)
            {
              v28 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v28 = COERCE_DOUBLE(swift_allocObject());
              v29 = _swift_stdlib_malloc_size(*&v28);
              *(*&v28 + 16) = v27;
              *(*&v28 + 24) = 2 * v29 - 64;
            }

            memcpy((*&v28 + 32), v25, v27);
          }

          else
          {
            v28 = MEMORY[0x1E69E7CC0];
          }

          os_unfair_lock_unlock((v16 + 24));
          v31 = &type metadata for Blob;
          v32 = v61;
          if (v18)
          {
            goto LABEL_48;
          }

          goto LABEL_38;
        }

LABEL_31:
        sub_1DB2BB4F4();

        v64 = 25;
        v34 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v34);

        sub_1DB15B09C(0xD000000000000019, 0x80000001DB2D1D60);
      }

      v28 = 0.0;
      v20 = 0;
      v31 = 0;
      v32 = 0;
      if (v18)
      {
        goto LABEL_48;
      }

      goto LABEL_38;
    }

    v18 = 0;
    v63 = MEMORY[0x1E69E7CC0];
    v20 = v4;
LABEL_52:

    v44 = *(v63 + 3);
    if (v44 >= 2)
    {
      break;
    }

LABEL_55:
    v4 = v20;

    v47 = qword_1EE13EA08;

    if (v47 != -1)
    {
      swift_once();
    }

    v48 = sub_1DB277034(qword_1EE13EA10, *algn_1EE13EA18, qword_1EE13EA20, v58, v63);
    v9 = v59;
    v50 = v49;
    v51 = v48;

    if (v50)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1DB1572F0(0, *(v57 + 2) + 1, 1, v57);
      }

      v52 = v51;
      v53 = v57;
      v55 = *(v57 + 2);
      v54 = *(v57 + 3);
      if (v55 >= v54 >> 1)
      {
        v53 = sub_1DB1572F0((v54 > 1), v55 + 1, 1, v57);
        v52 = v51;
      }

      *(v53 + 2) = v55 + 1;
      v57 = v53;
      v56 = &v53[16 * v55];
      *(v56 + 4) = v52;
      *(v56 + 5) = v50;
    }
  }

  v45 = v44 >> 1;
  v43 = __OFSUB__(v45, v18);
  v46 = v45 - v18;
  if (!v43)
  {
    *(v63 + 2) = v46;
    goto LABEL_55;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_1DB26D8F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (qword_1EE13E9E8 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1EE13E9F0, *algn_1EE13E9F8, qword_1EE13EA00, v10, v11);
  if (!v5)
  {
    v14 = result;
    v15 = v13;
    if (sub_1DB23D950())
    {

      *(a5 + 64) = 0;
      *(a5 + 32) = 0u;
      *(a5 + 48) = 0u;
      *a5 = 0u;
      *(a5 + 16) = 0u;
    }

    else
    {
      if (qword_1EE13E9C8 != -1)
      {
        swift_once();
      }

      v39 = sub_1DB275CD0(qword_1EE13E9D0, *algn_1EE13E9D8, qword_1EE13E9E0, v10, v11);
      sub_1DB26D124(v14, v15, a4);
      v17 = v16;
      v18 = sub_1DB26CFB8(v14, v15, a4);
      v20 = v19;
      if (v19)
      {
        v21 = v18;
        v22 = qword_1EE13E9B0;

        if (v22 != -1)
        {
          swift_once();
        }

        v23 = qword_1EE14C868;
        v24 = sub_1DB2BAD64();
        v25 = v21;
        v26 = v24;
        v38 = v25;
        v27 = [v23 firstMatchInString:v24 options:0 range:{0, sub_1DB2BAE94()}];

        if (v27)
        {
          v36 = v27;
          v28 = sub_1DB2BAD64();
          v29 = [v36 rangeAtIndex_];
          v31 = [v28 substringWithRange_];

          v37 = sub_1DB2BAD94();
          v35 = v32;

          v33 = v35;
        }

        else
        {

          v37 = 0;
          v33 = 0;
        }

        v34 = sub_1DB266100(v38, v20);
        swift_bridgeObjectRelease_n();
        v18 = v37;
      }

      else
      {
        v34 = 0;
        v33 = 0;
      }

      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = v14;
      *(a5 + 24) = v15;
      *(a5 + 32) = v39 == 1;
      *(a5 + 40) = v17;
      *(a5 + 48) = v18;
      *(a5 + 56) = v33;
      *(a5 + 64) = v34;
    }
  }

  return result;
}

void sub_1DB26DC3C()
{
  v3 = *(v0 + 16);
  sub_1DB2BB4F4();

  *&v65[0] = 0xD000000000000018;
  *(&v65[0] + 1) = 0x80000001DB2D6FB0;
  v4 = sub_1DB2B995C(34, 0xE100000000000000);
  MEMORY[0x1E1283490](v4);

  MEMORY[0x1E1283490](41, 0xE100000000000000);
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_1DB253534(v5);
  if (v1)
  {

    return;
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1DB255E8C(MEMORY[0x1E69E7CC0]);

  sub_1DB254F54();
  v9 = v8;
  sub_1DB143044();
  v54 = *(v7 + 24);
  v10 = v6;
  v52 = v7;
  v53 = v9;
  while (1)
  {
    if (qword_1EE13F098 != -1)
    {
      swift_once();
    }

    sub_1DB2BB294();
    if ((BYTE8(v65[0]) & 1) != 0 || *&v65[0] != v54)
    {
      v12 = *(v54 + 120);
      sub_1DB2BB2C4();
      if ((v59 & 1) == 0)
      {
LABEL_59:

        return;
      }
    }

    else
    {
      v11 = *(v7 + 16);
      os_unfair_lock_lock((v11 + 24));
      sub_1DB256240((v11 + 16), v65);
      os_unfair_lock_unlock((v11 + 24));
      if (LOBYTE(v65[0]) != 1)
      {
        goto LABEL_59;
      }
    }

    v55 = v10;
    Statement.row.getter(v65);
    v13 = v65[0];
    swift_retain_n();
    if (*(&v13 + 1) >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = (MEMORY[0x1E69E7CC0] + 32);
      v17 = MEMORY[0x1E69E7CC0];
      v18 = v2;
      while (1)
      {
        os_unfair_lock_lock((v13 + 24));
        if (v14 == 0x80000000)
        {
          __break(1u);
LABEL_62:
          __break(1u);
          os_unfair_lock_unlock(v19);

          return;
        }

        v20 = sqlite3_column_type(*(v13 + 16), v14);
        os_unfair_lock_unlock((v13 + 24));
        if (v20 > 2)
        {
          break;
        }

        if (v20 == 1)
        {
          os_unfair_lock_lock((v13 + 24));
          v27 = COERCE_DOUBLE(sqlite3_column_int64(*(v13 + 16), v14));
          os_unfair_lock_unlock((v13 + 24));
          v30 = MEMORY[0x1E69E7360];
          v31 = &protocol witness table for Int64;
          if (v15)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v20 != 2)
          {
            goto LABEL_30;
          }

          os_unfair_lock_lock((v13 + 24));
          v29 = sqlite3_column_double(*(v13 + 16), v14);
          os_unfair_lock_unlock((v13 + 24));
          v27 = v29;
          v30 = MEMORY[0x1E69E63B0];
          v31 = &protocol witness table for Double;
          if (v15)
          {
            goto LABEL_47;
          }
        }

LABEL_37:
        v34 = v17[3];
        if (((v34 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
          goto LABEL_64;
        }

        v58 = v31;
        v56 = v18;
        v35 = v34 & 0xFFFFFFFFFFFFFFFELL;
        if (v35 <= 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = v35;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v37 = swift_allocObject();
        v38 = (_swift_stdlib_malloc_size(v37) - 32) / 40;
        v37[2] = v36;
        v37[3] = 2 * v38;
        v39 = v17;
        v40 = (v37 + 4);
        v41 = v39[3] >> 1;
        if (v39[2])
        {
          v42 = v39 + 4;
          v43 = v39;
          if (v37 != v39 || v40 >= v42 + 40 * v41)
          {
            memmove(v37 + 4, v42, 40 * v41);
          }

          v43[2] = 0;
        }

        v16 = (v40 + 40 * v41);
        v15 = (v38 & 0x7FFFFFFFFFFFFFFFLL) - v41;

        v17 = v37;
        v18 = v56;
        v31 = v58;
LABEL_47:
        v44 = __OFSUB__(v15--, 1);
        if (v44)
        {
          goto LABEL_62;
        }

        ++v14;
        *v16 = v27;
        *(v16 + 1) = v18;
        v16[2] = 0.0;
        *(v16 + 3) = v30;
        *(v16 + 4) = v31;
        v16 += 5;
        if (*(&v13 + 1) == v14)
        {
          goto LABEL_51;
        }
      }

      if (v20 == 3)
      {
        os_unfair_lock_lock((v13 + 24));
        if (!sqlite3_column_text(*(v13 + 16), v14))
        {
          goto LABEL_65;
        }

        v27 = COERCE_DOUBLE(sub_1DB2BAF14());
        v18 = v32;
        os_unfair_lock_unlock((v13 + 24));
        v30 = MEMORY[0x1E69E6158];
        v31 = &protocol witness table for String;
        if (v15)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (v20 != 5)
      {
        if (v20 == 4)
        {
          v21 = v17;
          v57 = sub_1DB138CA8();
          os_unfair_lock_lock((v13 + 24));
          v22 = *(v13 + 16);
          v23 = sqlite3_column_blob(v22, v14);
          if (v23 && (v24 = v23, (v25 = sqlite3_column_bytes(v22, v14)) != 0))
          {
            v26 = v25;
            if (v25 <= 0)
            {
              v27 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26CD8, &unk_1DB2BCC50);
              v27 = COERCE_DOUBLE(swift_allocObject());
              v28 = _swift_stdlib_malloc_size(*&v27);
              *(*&v27 + 16) = v26;
              *(*&v27 + 24) = 2 * v28 - 64;
            }

            memcpy((*&v27 + 32), v24, v26);
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          v17 = v21;
          os_unfair_lock_unlock((v13 + 24));
          v30 = &type metadata for Blob;
          v31 = v57;
          if (v15)
          {
            goto LABEL_47;
          }

          goto LABEL_37;
        }

LABEL_30:
        sub_1DB2BB4F4();

        LODWORD(v64[0]) = v20;
        v33 = sub_1DB2BB8F4();
        MEMORY[0x1E1283490](v33);

        sub_1DB15B09C(0xD000000000000019, 0x80000001DB2D1D60);
      }

      v18 = 0;
      v27 = 0.0;
      v30 = 0;
      v31 = 0;
      if (v15)
      {
        goto LABEL_47;
      }

      goto LABEL_37;
    }

    v15 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v2;
LABEL_51:

    v45 = v17[3];
    v46 = v17;
    v10 = v55;
    if (v45 >= 2)
    {
      break;
    }

LABEL_54:

    v64[0] = v53;
    v64[1] = v46;

    sub_1DB26E3F8(v64, v65);

    v61 = v65[2];
    v62 = v65[3];
    v63 = v65[4];
    v59 = v65[0];
    v60 = v65[1];
    v7 = v52;
    v2 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DB157A0C(0, *(v55 + 2) + 1, 1, v55);
    }

    v50 = *(v10 + 2);
    v49 = *(v10 + 3);
    if (v50 >= v49 >> 1)
    {
      v10 = sub_1DB157A0C((v49 > 1), v50 + 1, 1, v10);
    }

    *(v10 + 2) = v50 + 1;
    v51 = &v10[80 * v50];
    *(v51 + 2) = v59;
    *(v51 + 5) = v62;
    *(v51 + 6) = v63;
    *(v51 + 3) = v60;
    *(v51 + 4) = v61;
  }

  v47 = v45 >> 1;
  v44 = __OFSUB__(v47, v15);
  v48 = v47 - v15;
  if (!v44)
  {
    *(v46 + 16) = v48;
    goto LABEL_54;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1DB26E3F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (qword_1ECC26C28 != -1)
  {
    swift_once();
  }

  result = sub_1DB275CE8(qword_1ECC28F78, unk_1ECC28F80, qword_1ECC28F88, v4, v5);
  if (!v2)
  {
    v8 = v7;
    v28 = result;
    if (qword_1ECC26C30 != -1)
    {
      swift_once();
    }

    v9 = sub_1DB275CE8(qword_1ECC28F90, *algn_1ECC28F98, qword_1ECC28FA0, v4, v5);
    v11 = v10;
    v27 = v9;
    if (qword_1ECC26C38 != -1)
    {
      swift_once();
    }

    v12 = sub_1DB277034(qword_1ECC28FA8, unk_1ECC28FB0, qword_1ECC28FB8, v4, v5);
    v14 = v13;
    if (qword_1ECC26C40 != -1)
    {
      swift_once();
    }

    if (sub_1DB275CE8(qword_1ECC28FC0, *algn_1ECC28FC8, qword_1ECC28FD0, v4, v5) == 0x4F49544341204F4ELL && v15 == 0xE90000000000004ELL)
    {

      v16 = 0;
      v17 = 0;
    }

    else
    {
      v26 = v14;
      v18 = sub_1DB2BB924();

      if (v18)
      {
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = sub_1DB275CE8(qword_1ECC28FC0, *algn_1ECC28FC8, qword_1ECC28FD0, v4, v5);
        v17 = v19;
      }

      v14 = v26;
    }

    v25 = v16;
    if (qword_1ECC26C48 != -1)
    {
      swift_once();
    }

    v20 = sub_1DB275CE8(qword_1ECC28FD8, unk_1ECC28FE0, qword_1ECC28FE8, v4, v5);
    if (v20 == 0x4F49544341204F4ELL && v21 == 0xE90000000000004ELL)
    {

      result = 0;
      v22 = 0;
    }

    else
    {
      v24 = v17;
      v23 = sub_1DB2BB924();

      if (v23)
      {
        result = 0;
        v22 = 0;
      }

      else
      {
        result = sub_1DB275CE8(qword_1ECC28FD8, unk_1ECC28FE0, qword_1ECC28FE8, v4, v5);
      }

      v17 = v24;
    }

    *a2 = v28;
    a2[1] = v8;
    a2[2] = v27;
    a2[3] = v11;
    a2[4] = v12;
    a2[5] = v14;
    a2[6] = v25;
    a2[7] = v17;
    a2[8] = result;
    a2[9] = v22;
  }

  return result;
}

uint64_t sub_1DB26E840()
{
  v21 = 0;
  v2 = sub_1DB26BCB4(0, 0, &v21, 0);
  if (v0)
  {
    return v1;
  }

  v3 = v2;
  v4 = *(v2 + 2);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1DB138600(0, v4, 0);
  v6 = 0;
  v1 = v20;
  v7 = (v3 + 48);
  v17 = v4;
  v18 = v3;
  while (v6 < *(v3 + 2))
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = v7[2];
    v11 = v7[5];

    swift_bridgeObjectRetain_n();

    v19 = sub_1DB26B520(v9, v8);
    sub_1DB26C774(v9, v8);
    v13 = v12;

    v15 = *(v20 + 16);
    v14 = *(v20 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_1DB138600((v14 > 1), v15 + 1, 1);
    }

    ++v6;
    *(v20 + 16) = v15 + 1;
    v16 = (v20 + 32 * v15);
    v16[4] = v9;
    v16[5] = v8;
    v16[6] = v19;
    v16[7] = v13;
    v7 += 8;
    v3 = v18;
    if (v17 == v6)
    {

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB26EA48(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v6 = sub_1DB26BCB4(a1, a2, &v26, 0);
  if (!v3)
  {
    v7 = v6;
    v25 = 0;
    v8 = sub_1DB26BCB4(a1, a2, &v25, 1);
    result = sub_1DB141944(v8);
    v10 = 0;
    v11 = v7;
    v12 = *(v7 + 2);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v14 = (v10 << 6) + 88;
    while (v12 != v10)
    {
      if (v10 >= *(v11 + 2))
      {
        __break(1u);
        return result;
      }

      v15 = v14 + 64;
      ++v10;
      v16 = *&v11[v14];
      v14 += 64;
      if (v16)
      {
        v17 = *&v11[v15 - 72];

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DB1572F0(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v18 = *(v13 + 16);
        v19 = *(v13 + 24);
        v20 = v18 + 1;
        if (v18 >= v19 >> 1)
        {
          v22 = v13;
          v23 = *(v13 + 16);
          result = sub_1DB1572F0((v19 > 1), v18 + 1, 1, v22);
          v18 = v23;
          v13 = result;
        }

        *(v13 + 16) = v20;
        v21 = v13 + 16 * v18;
        *(v21 + 32) = v17;
        *(v21 + 40) = v16;
        goto LABEL_5;
      }
    }

    if (*(v13 + 16))
    {
      v2 = *(v13 + 32);
      v24 = *(v13 + 40);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t SchemaReader.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SchemaReader.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DB26ED10()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13EE80 = result;
  *algn_1EE13EE88 = v1;
  qword_1EE13EE90 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26ED54()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13EEA0 = result;
  *algn_1EE13EEA8 = v1;
  qword_1EE13EEB0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26ED98()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13EE40 = result;
  *algn_1EE13EE48 = v1;
  qword_1EE13EE50 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EDE4()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13EE60 = result;
  *algn_1EE13EE68 = v1;
  qword_1EE13EE70 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EE30()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13ECA0 = result;
  *algn_1EE13ECA8 = v1;
  qword_1EE13ECB0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EE74()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F248 = result;
  unk_1EE13F250 = v1;
  qword_1EE13F258 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EEB8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F228 = result;
  unk_1EE13F230 = v1;
  qword_1EE13F238 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EEFC()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F208 = result;
  unk_1EE13F210 = v1;
  qword_1EE13F218 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EF48()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F1C8 = result;
  unk_1EE13F1D0 = v1;
  qword_1EE13F1D8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EF98()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13F1E8 = result;
  unk_1EE13F1F0 = v1;
  qword_1EE13F1F8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26EFD8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13EA10 = result;
  *algn_1EE13EA18 = v1;
  qword_1EE13EA20 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F01C()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13E9F0 = result;
  *algn_1EE13E9F8 = v1;
  qword_1EE13EA00 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F060()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1EE13E9D0 = result;
  *algn_1EE13E9D8 = v1;
  qword_1EE13E9E0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F0A8()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1ECC28F78 = result;
  unk_1ECC28F80 = v1;
  qword_1ECC28F88 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F0F0()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1ECC28F90 = result;
  *algn_1ECC28F98 = v1;
  qword_1ECC28FA0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F134()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1ECC28FA8 = result;
  unk_1ECC28FB0 = v1;
  qword_1ECC28FB8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F174()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1ECC28FC0 = result;
  *algn_1ECC28FC8 = v1;
  qword_1ECC28FD0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F1C4()
{
  result = sub_1DB2B995C(34, 0xE100000000000000);
  qword_1ECC28FD8 = result;
  unk_1ECC28FE0 = v1;
  qword_1ECC28FE8 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1DB26F214(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 5)
  {
    v8 = i[3];
    v36 = i[2];
    v37 = v8;
    v38 = i[4];
    v9 = i[1];
    v34 = *i;
    v35 = v9;
    v10 = v9;
    sub_1DB26F644(&v34, v33);

    v12 = sub_1DB141B30(v10, *(&v10 + 1));
    v13 = v1[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v16 = v11;
    if (v1[3] < v15)
    {
      sub_1DB29D990(v15, 1);
      v1 = v39;
      v17 = sub_1DB141B30(v10, *(&v10 + 1));
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    if (v16)
    {

      v19 = v1[7];
      v20 = *(v19 + 8 * v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v12) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_1DB157A0C(0, *(v20 + 2) + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1DB157A0C((v22 > 1), v23 + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      *(v20 + 2) = v23 + 1;
      v4 = &v20[80 * v23];
      *(v4 + 2) = v34;
      v5 = v35;
      v6 = v36;
      v7 = v38;
      *(v4 + 5) = v37;
      *(v4 + 6) = v7;
      *(v4 + 3) = v5;
      *(v4 + 4) = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC274C0, &qword_1DB2BFDC0);
      v24 = swift_allocObject();
      v25 = v36;
      v26 = v37;
      v27 = v34;
      v24[3] = v35;
      v24[4] = v25;
      v28 = v38;
      v24[5] = v26;
      v24[6] = v28;
      v24[1] = xmmword_1DB2BCC40;
      v24[2] = v27;
      v1[(v12 >> 6) + 8] |= 1 << v12;
      *(v1[6] + 16 * v12) = v10;
      *(v1[7] + 8 * v12) = v24;
      v29 = v1[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v1[2] = v31;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB2BB984();
  __break(1u);
  return result;
}

unint64_t sub_1DB26F468()
{
  result = qword_1EE13F300;
  if (!qword_1EE13F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE13F300);
  }

  return result;
}

unint64_t sub_1DB26F5E0()
{
  result = qword_1EE1400C0[0];
  if (!qword_1EE1400C0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC280D8, &unk_1DB2C4B30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1400C0);
  }

  return result;
}

uint64_t ExpressionType<>.distinct.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(a2 + 32))();
  MEMORY[0x1E1283490](v6);

  v7 = (*(a2 + 40))(a1, a2);
  swift_getAssociatedTypeWitness();

  return Expression.init(_:_:)(0x54434E4954534944, 0xE900000000000020, v7, a3);
}

{
  v6 = (*(a2 + 32))();
  MEMORY[0x1E1283490](v6);

  v7 = (*(a2 + 40))(a1, a2);
  swift_getAssociatedTypeWitness();

  return Expression.init(_:_:)(0x54434E4954534944, 0xE900000000000020, v7, a3);
}

uint64_t ExpressionType<>.count.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v7[3] = a1;
  v7[4] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  sub_1DB203564(v7, 0x746E756F63, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t ExpressionType<>.max.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return sub_1DB26F9B8(a1, a2, 7889261, a3);
}

{
  return sub_1DB26FB90(a1, a2, 7889261, a3);
}

uint64_t ExpressionType<>.min.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return sub_1DB26F9B8(a1, a2, 7235949, a3);
}

{
  return sub_1DB26FB90(a1, a2, 7235949, a3);
}

uint64_t ExpressionType<>.sum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return sub_1DB26F9B8(a1, a2, 7173491, a3);
}

{
  return sub_1DB26FB90(a1, a2, 7173491, a3);
}

uint64_t sub_1DB26F9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v8 = *(a2 + 8);
  v11[3] = a1;
  v11[4] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v4, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB2BB364();
  sub_1DB2B9D5C(v11, a3, 0xE300000000000000, a4);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1DB26FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *, uint64_t, uint64_t))
{
  v12 = *(a2 + 8);
  v15[3] = a1;
  v15[4] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v7, a1);
  a7(v15, a5, a6);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_1DB26FB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v8 = *(a2 + 8);
  v11[3] = a1;
  v11[4] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v4, a1);
  swift_getAssociatedTypeWitness();
  sub_1DB2B9D5C(v11, a3, 0xE300000000000000, a4);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1DB26FC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *, uint64_t, uint64_t))
{
  v13 = *(a2 + 8);
  v16[3] = a1;
  v16[4] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v8, a1);
  a8(v16, a6, a7);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t count(_:)(void (*a1)(uint64_t *__return_ptr, void *, void *))
{
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
  v5[4] = sub_1DB219960();
  a1(v5, v4, v3);
  sub_1DB203564(v5, 0x746E756F63, 0xE500000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t QueryType.insert(_:userInfo:otherSetters:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for SQLiteEncoder();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = 0;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17[3] = v8;
  v17[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  v17[0] = v9;

  sub_1DB2BACE4();
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    swift_beginAccess();
    v18 = *(v9 + 16);

    sub_1DB141A38(v13);
    QueryType.insert(_:)(v18, a3, a4, a5);
  }
}

uint64_t QueryType.insert(or:encodable:userInfo:otherSetters:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = type metadata accessor for SQLiteEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = v12;
  *(v11 + 32) = a3;
  *(v11 + 40) = 0;
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19[3] = v10;
  v19[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  v19[0] = v11;

  sub_1DB2BACE4();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v9;
    swift_beginAccess();
    v18 = *(v11 + 16);

    sub_1DB141A38(v15);
    QueryType.insert(or:_:)(&v20, v18, a5, a6);
  }
}

uint64_t QueryType.insertMany(_:userInfo:otherSetters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v62 = v7;
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_21:
    swift_getKeyPath();
    v26 = v10[2];
    if (v26)
    {
      v77[0] = v8;
      sub_1DB1387C0(0, v26, 0);
      v27 = v77[0];
      v28 = v10 + 4;
      do
      {
        v82 = *v28;

        swift_getAtKeyPath();

        v29 = v71[0];
        v77[0] = v27;
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1DB1387C0((v30 > 1), v31 + 1, 1);
          v27 = v77[0];
        }

        *(v27 + 16) = v31 + 1;
        *(v27 + 8 * v31 + 32) = v29;
        ++v28;
        --v26;
      }

      while (v26);
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v70 = v6;
    v32 = sub_1DB21FF14(v27);

    v33 = *(v32 + 16);

    if (v33 == 1)
    {
      v34 = v10;
      v35 = *(a5 + 16);
      v35(v71, a4, a5);
      v36 = v72;
      v37 = v74;
      v67 = v73;
      v69 = v71[2];
      v38 = v76;
      v65 = v75;

      sub_1DB17181C(v71);
      v35(v77, a4, a5);
      v40 = v79;
      v39 = v80;
      v41 = v81;
      sub_1DB1757B0(v79, v80);
      sub_1DB17181C(v77);
      *(a6 + 112) = 0u;
      *(a6 + 128) = 0;
      *(a6 + 96) = 0u;
      *a6 = v69;
      *(a6 + 8) = v36;
      *(a6 + 16) = v67;
      *(a6 + 24) = v37;
      *(a6 + 32) = v65;
      *(a6 + 40) = v38;
      *(a6 + 48) = 5;
      *(a6 + 56) = 0;
      *(a6 + 64) = v34;
      *(a6 + 72) = v40;
      *(a6 + 80) = v39;
      *(a6 + 88) = v41;
      result = sub_1DB1445E0(a6 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
      *(a6 + 96) = 0u;
      *(a6 + 112) = 0u;
      *(a6 + 128) = 0;
      *(a6 + 136) = 1;
      return result;
    }

    v42 = MEMORY[0x1E69E7CC0];
    v43 = v62;
    if (!v62)
    {
      v44 = MEMORY[0x1E69E7CC0];
LABEL_51:
      QueryType.insertMany(_:)(v44, a4, a5);
    }

    v83 = MEMORY[0x1E69E7CC0];
    sub_1DB1386A0(0, v62, 0);
    v44 = v83;
    v45 = a1 + 32;
    while (1)
    {
      v63 = v43;
      sub_1DB164980(v45, v77);
      v46 = type metadata accessor for SQLiteEncoder();
      v47 = swift_allocObject();
      *(v47 + 16) = v42;
      *(v47 + 24) = v42;
      *(v47 + 32) = a2;
      *(v47 + 40) = 1;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v72 = v46;
      v73 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
      v71[0] = v47;

      sub_1DB2BACE4();
      if (v70)
      {
        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      result = swift_beginAccess();
      v48 = *(v47 + 16);
      v49 = *(a3 + 16);
      v50 = *(v48 + 16);
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_56;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && (v52 = *(v48 + 24) >> 1, v52 >= v51))
      {
        if (!v49)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v50 <= v51)
        {
          v55 = v50 + v49;
        }

        else
        {
          v55 = v50;
        }

        result = sub_1DB158410(result, v55, 1, v48);
        v48 = result;
        v52 = *(result + 24) >> 1;
        if (!v49)
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      if (v52 - *(v48 + 16) < v49)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      v53 = *(v48 + 16);
      v21 = __OFADD__(v53, v49);
      v54 = v53 + v49;
      if (v21)
      {
        goto LABEL_58;
      }

      *(v48 + 16) = v54;
LABEL_46:
      v70 = 0;

      __swift_destroy_boxed_opaque_existential_1(v77);
      v83 = v44;
      v57 = *(v44 + 16);
      v56 = *(v44 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1DB1386A0((v56 > 1), v57 + 1, 1);
        v44 = v83;
      }

      *(v44 + 16) = v57 + 1;
      *(v44 + 8 * v57 + 32) = v48;
      v45 += 40;
      v43 = v63 - 1;
      v42 = MEMORY[0x1E69E7CC0];
      if (v63 == 1)
      {
        goto LABEL_51;
      }
    }
  }

  v82 = MEMORY[0x1E69E7CC0];
  sub_1DB1386A0(0, v7, 0);
  v10 = v82;
  v11 = a1 + 32;
  while (1)
  {
    v68 = v7;
    sub_1DB164980(v11, v77);
    v12 = type metadata accessor for SQLiteEncoder();
    v13 = swift_allocObject();
    *(v13 + 16) = v8;
    *(v13 + 24) = v8;
    *(v13 + 32) = a2;
    *(v13 + 40) = 0;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v72 = v12;
    v73 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
    v71[0] = v13;

    sub_1DB2BACE4();
    if (v6)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v71);
      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    result = swift_beginAccess();
    v15 = *(v13 + 16);
    v16 = *(a3 + 16);
    v17 = *(v15 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v19 = *(v15 + 24) >> 1, v19 >= v18))
    {
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v23 = v17 + v16;
      }

      else
      {
        v23 = v17;
      }

      result = sub_1DB158410(result, v23, 1, v15);
      v15 = result;
      v19 = *(result + 24) >> 1;
      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v19 - *(v15 + 16) < v16)
    {
      goto LABEL_54;
    }

    swift_arrayInitWithCopy();

    v20 = *(v15 + 16);
    v21 = __OFADD__(v20, v16);
    v22 = v20 + v16;
    if (v21)
    {
      goto LABEL_55;
    }

    *(v15 + 16) = v22;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v77);
    v82 = v10;
    v25 = v10[2];
    v24 = v10[3];
    if (v25 >= v24 >> 1)
    {
      sub_1DB1386A0((v24 > 1), v25 + 1, 1);
      v10 = v82;
    }

    v10[2] = v25 + 1;
    v10[v25 + 4] = v15;
    v11 += 40;
    --v7;
    v8 = MEMORY[0x1E69E7CC0];
    if (v68 == 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t QueryType.insertMany(or:encodables:userInfo:otherSetters:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v60 = *a1;
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v64 = v8;
  if (!v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_21:
    swift_getKeyPath();
    v27 = v11[2];
    if (v27)
    {
      v79[0] = v9;
      sub_1DB1387C0(0, v27, 0);
      v28 = v79[0];
      v29 = v11 + 4;
      do
      {
        v84 = *v29;

        swift_getAtKeyPath();

        v30 = v73[0];
        v79[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1DB1387C0((v31 > 1), v32 + 1, 1);
          v28 = v79[0];
        }

        *(v28 + 16) = v32 + 1;
        *(v28 + 8 * v32 + 32) = v30;
        ++v29;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v72 = v7;
    v33 = sub_1DB21FF14(v28);

    v34 = *(v33 + 16);

    if (v34 == 1)
    {
      v35 = v11;
      v36 = *(a6 + 16);
      v36(v73, a5, a6);
      v37 = v74;
      v38 = v76;
      v69 = v75;
      v71 = v73[2];
      v39 = v78;
      v67 = v77;

      sub_1DB17181C(v73);
      v36(v79, a5, a6);
      v41 = v81;
      v40 = v82;
      v42 = v83;
      sub_1DB1757B0(v81, v82);
      sub_1DB17181C(v79);
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 96) = 0u;
      *a7 = v71;
      *(a7 + 8) = v37;
      *(a7 + 16) = v69;
      *(a7 + 24) = v38;
      *(a7 + 32) = v67;
      *(a7 + 40) = v39;
      *(a7 + 48) = v60;
      *(a7 + 56) = 0;
      *(a7 + 64) = v35;
      *(a7 + 72) = v41;
      *(a7 + 80) = v40;
      *(a7 + 88) = v42;
      result = sub_1DB1445E0(a7 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
      *(a7 + 96) = 0u;
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 136) = 1;
      return result;
    }

    v43 = MEMORY[0x1E69E7CC0];
    v44 = v64;
    if (!v64)
    {
      v45 = MEMORY[0x1E69E7CC0];
LABEL_51:
      QueryType.insertMany(_:)(v45, a5, a6);
    }

    v85 = MEMORY[0x1E69E7CC0];
    sub_1DB1386A0(0, v64, 0);
    v45 = v85;
    v46 = a2 + 32;
    while (1)
    {
      v65 = v44;
      sub_1DB164980(v46, v79);
      v47 = type metadata accessor for SQLiteEncoder();
      v48 = swift_allocObject();
      *(v48 + 16) = v43;
      *(v48 + 24) = v43;
      *(v48 + 32) = a3;
      *(v48 + 40) = 1;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v74 = v47;
      v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
      v73[0] = v48;

      sub_1DB2BACE4();
      if (v72)
      {
        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1(v73);
      result = swift_beginAccess();
      v49 = *(v48 + 16);
      v50 = *(a4 + 16);
      v51 = *(v49 + 16);
      v52 = v51 + v50;
      if (__OFADD__(v51, v50))
      {
        goto LABEL_56;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && (v53 = *(v49 + 24) >> 1, v53 >= v52))
      {
        if (!v50)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v51 <= v52)
        {
          v56 = v51 + v50;
        }

        else
        {
          v56 = v51;
        }

        result = sub_1DB158410(result, v56, 1, v49);
        v49 = result;
        v53 = *(result + 24) >> 1;
        if (!v50)
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      if (v53 - *(v49 + 16) < v50)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      v54 = *(v49 + 16);
      v22 = __OFADD__(v54, v50);
      v55 = v54 + v50;
      if (v22)
      {
        goto LABEL_58;
      }

      *(v49 + 16) = v55;
LABEL_46:
      v72 = 0;

      __swift_destroy_boxed_opaque_existential_1(v79);
      v85 = v45;
      v58 = *(v45 + 16);
      v57 = *(v45 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1DB1386A0((v57 > 1), v58 + 1, 1);
        v45 = v85;
      }

      *(v45 + 16) = v58 + 1;
      *(v45 + 8 * v58 + 32) = v49;
      v46 += 40;
      v44 = v65 - 1;
      v43 = MEMORY[0x1E69E7CC0];
      if (v65 == 1)
      {
        goto LABEL_51;
      }
    }
  }

  v84 = MEMORY[0x1E69E7CC0];
  sub_1DB1386A0(0, v8, 0);
  v11 = v84;
  v12 = a2 + 32;
  while (1)
  {
    v70 = v8;
    sub_1DB164980(v12, v79);
    v13 = type metadata accessor for SQLiteEncoder();
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v9;
    *(v14 + 32) = a3;
    *(v14 + 40) = 0;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v74 = v13;
    v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
    v73[0] = v14;

    sub_1DB2BACE4();
    if (v7)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v73);
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
    result = swift_beginAccess();
    v16 = *(v14 + 16);
    v17 = *(a4 + 16);
    v18 = *(v16 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v20 = *(v16 + 24) >> 1, v20 >= v19))
    {
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v24 = v18 + v17;
      }

      else
      {
        v24 = v18;
      }

      result = sub_1DB158410(result, v24, 1, v16);
      v16 = result;
      v20 = *(result + 24) >> 1;
      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v20 - *(v16 + 16) < v17)
    {
      goto LABEL_54;
    }

    swift_arrayInitWithCopy();

    v21 = *(v16 + 16);
    v22 = __OFADD__(v21, v17);
    v23 = v21 + v17;
    if (v22)
    {
      goto LABEL_55;
    }

    *(v16 + 16) = v23;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v79);
    v84 = v11;
    v26 = v11[2];
    v25 = v11[3];
    if (v26 >= v25 >> 1)
    {
      sub_1DB1386A0((v25 > 1), v26 + 1, 1);
      v11 = v84;
    }

    v11[2] = v26 + 1;
    v11[v26 + 4] = v16;
    v12 += 40;
    --v8;
    v9 = MEMORY[0x1E69E7CC0];
    if (v70 == 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflictOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19[3] = v9;
  v19[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  v19[0] = v10;

  sub_1DB2BACE4();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_beginAccess();
    v20 = *(v10 + 16);

    sub_1DB141A38(v14);
    QueryType.upsert(_:onConflictOf:)(v20, a3, a4, a5, a6);
  }
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflictOf:set:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for SQLiteEncoder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  *(v11 + 24) = v12;
  *(v11 + 32) = a2;
  *(v11 + 40) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20[3] = v10;
  v20[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  v20[0] = v11;

  sub_1DB2BACE4();
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    swift_beginAccess();
    v21 = *(v11 + 16);

    sub_1DB141A38(v15);
    QueryType.upsert(_:onConflictOf:set:)(v21, a4, a5, a6, a7);
  }
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflict:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19[3] = v9;
  v19[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  v19[0] = v10;

  sub_1DB2BACE4();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_beginAccess();
    v20 = *(v10 + 16);

    sub_1DB141A38(v14);
    QueryType.upsert(_:onConflict:)(v20, a3, a4, a5, a6);
  }
}

uint64_t QueryType.upsertMany(_:userInfo:otherSetters:onConflict:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D88, &qword_1DB2BCEF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB2BCC40;
  sub_1DB201088(a4, v14 + 32);

  sub_1DB141760(v15);
  QueryType.upsertMany(_:userInfo:otherSetters:onConflict:)(a1, a2, a3, v14, a5, a6, a7);
}

uint64_t QueryType.upsertMany(_:userInfo:otherSetters:onConflict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v64 = v8;
  if (!v8)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_21:
    swift_getKeyPath();
    v27 = v11[2];
    if (v27)
    {
      v79[0] = v9;
      sub_1DB1387C0(0, v27, 0);
      v28 = v79[0];
      v29 = v11 + 4;
      do
      {
        v84 = *v29;

        swift_getAtKeyPath();

        v30 = v73[0];
        v79[0] = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1DB1387C0((v31 > 1), v32 + 1, 1);
          v28 = v79[0];
        }

        *(v28 + 16) = v32 + 1;
        *(v28 + 8 * v32 + 32) = v30;
        ++v29;
        --v27;
      }

      while (v27);
    }

    else
    {

      v28 = MEMORY[0x1E69E7CC0];
    }

    v72 = v7;
    v33 = sub_1DB21FF14(v28);

    v34 = *(v33 + 16);

    if (v34 == 1)
    {
      v35 = v11;
      v36 = *(a6 + 16);
      v36(v73, a5, a6);
      v37 = v74;
      v38 = v76;
      v69 = v75;
      v71 = v73[2];
      v39 = v78;
      v67 = v77;

      sub_1DB17181C(v73);
      v36(v79, a5, a6);
      v41 = v81;
      v40 = v82;
      v42 = v83;
      sub_1DB1757B0(v81, v82);
      sub_1DB17181C(v79);
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 96) = 0u;
      *a7 = v71;
      *(a7 + 8) = v37;
      *(a7 + 16) = v69;
      *(a7 + 24) = v38;
      *(a7 + 32) = v67;
      *(a7 + 40) = v39;
      *(a7 + 48) = 5;
      *(a7 + 56) = a4;
      *(a7 + 64) = v35;
      *(a7 + 72) = v41;
      *(a7 + 80) = v40;
      *(a7 + 88) = v42;

      result = sub_1DB1445E0(a7 + 96, &qword_1ECC279E8, &unk_1DB2C3AE0);
      *(a7 + 96) = 0u;
      *(a7 + 112) = 0u;
      *(a7 + 128) = 0;
      *(a7 + 136) = 1;
      return result;
    }

    v43 = MEMORY[0x1E69E7CC0];
    v44 = v64;
    if (!v64)
    {
      v45 = MEMORY[0x1E69E7CC0];
LABEL_51:
      QueryType.insertMany(_:)(v45, a5, a6);
    }

    v85 = MEMORY[0x1E69E7CC0];
    sub_1DB1386A0(0, v64, 0);
    v45 = v85;
    v46 = a1 + 32;
    while (1)
    {
      v65 = v44;
      sub_1DB164980(v46, v79);
      v47 = type metadata accessor for SQLiteEncoder();
      v48 = swift_allocObject();
      *(v48 + 16) = v43;
      *(v48 + 24) = v43;
      *(v48 + 32) = a2;
      *(v48 + 40) = 1;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v74 = v47;
      v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
      v73[0] = v48;

      sub_1DB2BACE4();
      if (v72)
      {
        goto LABEL_27;
      }

      __swift_destroy_boxed_opaque_existential_1(v73);
      result = swift_beginAccess();
      v49 = *(v48 + 16);
      v50 = *(a3 + 16);
      v51 = *(v49 + 16);
      v52 = v51 + v50;
      if (__OFADD__(v51, v50))
      {
        goto LABEL_56;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && (v53 = *(v49 + 24) >> 1, v53 >= v52))
      {
        if (!v50)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v51 <= v52)
        {
          v56 = v51 + v50;
        }

        else
        {
          v56 = v51;
        }

        result = sub_1DB158410(result, v56, 1, v49);
        v49 = result;
        v53 = *(result + 24) >> 1;
        if (!v50)
        {
LABEL_45:

          goto LABEL_46;
        }
      }

      if (v53 - *(v49 + 16) < v50)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      v54 = *(v49 + 16);
      v22 = __OFADD__(v54, v50);
      v55 = v54 + v50;
      if (v22)
      {
        goto LABEL_58;
      }

      *(v49 + 16) = v55;
LABEL_46:
      v72 = 0;

      __swift_destroy_boxed_opaque_existential_1(v79);
      v85 = v45;
      v58 = *(v45 + 16);
      v57 = *(v45 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1DB1386A0((v57 > 1), v58 + 1, 1);
        v45 = v85;
      }

      *(v45 + 16) = v58 + 1;
      *(v45 + 8 * v58 + 32) = v49;
      v46 += 40;
      v44 = v65 - 1;
      v43 = MEMORY[0x1E69E7CC0];
      if (v65 == 1)
      {
        goto LABEL_51;
      }
    }
  }

  v84 = MEMORY[0x1E69E7CC0];
  sub_1DB1386A0(0, v8, 0);
  v11 = v84;
  v12 = a1 + 32;
  while (1)
  {
    v70 = v8;
    sub_1DB164980(v12, v79);
    v13 = type metadata accessor for SQLiteEncoder();
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v9;
    *(v14 + 32) = a2;
    *(v14 + 40) = 0;
    __swift_project_boxed_opaque_existential_1(v79, v80);
    v74 = v13;
    v75 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
    v73[0] = v14;

    sub_1DB2BACE4();
    if (v7)
    {
LABEL_27:

      __swift_destroy_boxed_opaque_existential_1(v73);
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    __swift_destroy_boxed_opaque_existential_1(v73);
    result = swift_beginAccess();
    v16 = *(v14 + 16);
    v17 = *(a3 + 16);
    v18 = *(v16 + 16);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v20 = *(v16 + 24) >> 1, v20 >= v19))
    {
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v24 = v18 + v17;
      }

      else
      {
        v24 = v18;
      }

      result = sub_1DB158410(result, v24, 1, v16);
      v16 = result;
      v20 = *(result + 24) >> 1;
      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v20 - *(v16 + 16) < v17)
    {
      goto LABEL_54;
    }

    swift_arrayInitWithCopy();

    v21 = *(v16 + 16);
    v22 = __OFADD__(v21, v17);
    v23 = v21 + v17;
    if (v22)
    {
      goto LABEL_55;
    }

    *(v16 + 16) = v23;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v79);
    v84 = v11;
    v26 = v11[2];
    v25 = v11[3];
    if (v26 >= v25 >> 1)
    {
      sub_1DB1386A0((v25 > 1), v26 + 1, 1);
      v11 = v84;
    }

    v11[2] = v26 + 1;
    v11[v26 + 4] = v16;
    v12 += 40;
    --v8;
    v9 = MEMORY[0x1E69E7CC0];
    if (v70 == 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t QueryType.update(_:userInfo:otherSetters:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for SQLiteEncoder();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  *(v9 + 24) = v10;
  *(v9 + 32) = a2;
  *(v9 + 40) = 0;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17[3] = v8;
  v17[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  v17[0] = v9;

  sub_1DB2BACE4();
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    swift_beginAccess();
    v18 = *(v9 + 16);

    sub_1DB141A38(v13);
    QueryType.update(_:)(v18, a3, a4, a5);
  }
}

uint64_t Row.decode<A>(userInfo:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for SQLiteDecoder();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v6;
  v5[5] = a1;
  sub_1DB27ABD0(qword_1ECC29010, type metadata accessor for SQLiteDecoder);

  return sub_1DB2BB1C4();
}

uint64_t Row.decoder(userInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = type metadata accessor for SQLiteDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v9;
  v8[5] = a1;
  a2[3] = v7;
  a2[4] = sub_1DB27ABD0(qword_1ECC29010, type metadata accessor for SQLiteDecoder);
  *a2 = v8;
}

uint64_t static Row.setters<A>(for:userInfo:forcingNilValueSetters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  *(v10 + 24) = v11;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  v13[3] = v9;
  v13[4] = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  v13[0] = v10;

  sub_1DB2BACE4();
  if (v5)
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    swift_beginAccess();
    a5 = *(v10 + 16);
  }

  return a5;
}

uint64_t static Row.columns<A>(for:in:userInfo:includingNilValueColumns:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *&v50 = a2;
  v7 = type metadata accessor for SQLiteEncoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v10 = v8 + 16;
  *(v8 + 24) = v9;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v59 = v7;
  v11 = v8;
  v60 = sub_1DB27ABD0(&qword_1ECC29008, type metadata accessor for SQLiteEncoder);
  *&v58 = v11;

  sub_1DB2BACE4();
  if (v4)
  {

    __swift_destroy_boxed_opaque_existential_1(&v58);
    return v11;
  }

  __swift_destroy_boxed_opaque_existential_1(&v58);
  sub_1DB1446A4(v50, &v58, &qword_1ECC279E8, &unk_1DB2C3AE0);
  if (!v59)
  {
    sub_1DB1445E0(&v58, &qword_1ECC279E8, &unk_1DB2C3AE0);
    swift_beginAccess();
    v26 = *v10;
    v27 = *(v26 + 16);
    if (v27)
    {
      v48 = v11;
      v57[0] = v9;

      sub_1DB1384B0(0, v27, 0);
      v11 = v9;
      v28 = v26 + 32;
      do
      {
        sub_1DB164AE0(v28, &v58);
        sub_1DB164980(&v58, v61);
        sub_1DB164B3C(&v58);
        v57[0] = v11;
        v30 = *(v11 + 16);
        v29 = *(v11 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1DB1384B0((v29 > 1), v30 + 1, 1);
        }

        v31 = v62;
        v32 = v63;
        v33 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
        v34 = *(*(v31 - 8) + 64);
        MEMORY[0x1EEE9AC00](v33);
        v36 = v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v37 + 16))(v36);
        sub_1DB16412C(v30, v36, v57, v31, v32);
        __swift_destroy_boxed_opaque_existential_1(v61);
        v11 = v57[0];
        v28 += 80;
        --v27;
      }

      while (v27);

      return v11;
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1DB1355D0(&v58, v61);
  swift_beginAccess();
  v13 = *v10;
  v14 = *(*v10 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v47[1] = 0;
  v48 = v11;
  if (v14)
  {
    v55 = MEMORY[0x1E69E7CC0];

    sub_1DB1387F0(0, v14, 0);
    v16 = v15;
    *&v50 = v13;
    v17 = v13 + 32;
    do
    {
      v18 = v15;
      sub_1DB164AE0(v17, &v58);
      v19 = v59;
      v20 = v60;
      __swift_project_boxed_opaque_existential_1(&v58, v59);
      (*(v20 + 24))(&v51, v19, v20);
      v21 = v51;
      v22 = v52;

      sub_1DB164B3C(&v58);
      v55 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1DB1387F0((v23 > 1), v24 + 1, 1);
        v16 = v55;
      }

      *(v16 + 16) = v24 + 1;
      v25 = (v16 + 24 * v24);
      v25[4] = v21;
      v25[5] = v22;
      v15 = v18;
      v25[6] = v18;
      v17 += 80;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  sub_1DB164980(v61, &v58);
  v38 = *(v16 + 16);
  if (!v38)
  {

    __swift_destroy_boxed_opaque_existential_1(&v58);

    __swift_destroy_boxed_opaque_existential_1(v61);
    return MEMORY[0x1E69E7CC0];
  }

  v64 = v15;
  result = sub_1DB1384B0(0, v38, 0);
  v39 = 0;
  v11 = v64;
  v40 = (v16 + 40);
  v49 = v38;
  while (v39 < *(v16 + 16))
  {
    v41 = *(v40 - 1);
    v42 = v59;
    v43 = v60;
    v50 = *v40;
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    v51 = v41;
    v52 = v50;
    QueryType.namespace<A>(_:)(&v51, v42, MEMORY[0x1E69E7CA8] + 8, v43);
    v64 = v11;
    v45 = *(v11 + 16);
    v44 = *(v11 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1DB1384B0((v44 > 1), v45 + 1, 1);
      v11 = v64;
    }

    ++v39;
    v46 = v55;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26D98, &unk_1DB2BCF00);
    v54 = sub_1DB1688F0(&qword_1EE1400B8, &qword_1ECC26D98, &unk_1DB2BCF00);
    v51 = v46;
    v52 = v56;
    *(v11 + 16) = v45 + 1;
    result = sub_1DB1355D0(&v51, v11 + 40 * v45 + 32);
    v40 = (v40 + 24);
    if (v49 == v39)
    {

      __swift_destroy_boxed_opaque_existential_1(&v58);
      __swift_destroy_boxed_opaque_existential_1(v61);
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB272814(uint64_t a1, char a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v5;
  *(result + 32) = a2;
  return result;
}

uint64_t sub_1DB272918()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_1DB2BBAA4();
  v4 = sub_1DB2B995C(34, 0xE100000000000000);
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
  v8 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DB2BCC40;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  swift_beginAccess();
  v10 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1DB158410(0, *(v10 + 2) + 1, 1, v10);
    *(v1 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1DB158410((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  v15 = MEMORY[0x1E69E7CC0];
  *(v14 + 4) = v4;
  *(v14 + 5) = v6;
  *(v14 + 6) = v15;
  *(v14 + 7) = v7;
  *(v14 + 8) = v8;
  *(v14 + 9) = 63;
  *(v14 + 10) = 0xE100000000000000;
  *(v14 + 11) = v9;
  *(v14 + 12) = v7;
  *(v14 + 13) = v8;
  *(v1 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1DB272B00(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28108, &unk_1DB2C4B50);
  v10 = sub_1DB1688F0(&qword_1ECC28CF8, &qword_1ECC28108, &unk_1DB2C4B50);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E6530];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Int;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB272CBC(char a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28178, &unk_1DB2CE7D0);
  v10 = sub_1DB1688F0(&qword_1EE13EF60, &qword_1ECC28178, &unk_1DB2CE7D0);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  v15[72] = a1 & 1;
  v16 = MEMORY[0x1E69E6370];
  *(v15 + 11) = *&v18[15];
  *(v15 + 12) = v16;
  *(v15 + 73) = *v18;
  *(v15 + 13) = &protocol witness table for Bool;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB272E88(float a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28128, &unk_1DB2C4B60);
  v10 = sub_1DB1688F0(&qword_1ECC29160, &qword_1ECC28128, &unk_1DB2C4B60);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E63B0];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB27305C(double a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_1DB2BBAA4();
  v6 = sub_1DB2B995C(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28128, &unk_1DB2C4B60);
  v10 = sub_1DB1688F0(&qword_1ECC29160, &qword_1ECC28128, &unk_1DB2C4B60);
  swift_beginAccess();
  v11 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1DB158410(0, *(v11 + 2) + 1, 1, v11);
    *(v3 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1DB158410((v13 > 1), v14 + 1, 1, v11);
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[80 * v14];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  *(v15 + 6) = MEMORY[0x1E69E7CC0];
  *(v15 + 7) = v9;
  *(v15 + 8) = v10;
  *(v15 + 9) = a1;
  v16 = MEMORY[0x1E69E63B0];
  *(v15 + 5) = v18;
  *(v15 + 12) = v16;
  *(v15 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_1DB27322C(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  sub_1DB2BBAA4();
  v7 = sub_1DB2B995C(34, 0xE100000000000000);
  v9 = v8;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
  v11 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
  swift_beginAccess();
  v12 = *(v4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1DB158410(0, *(v12 + 2) + 1, 1, v12);
    *(v4 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1DB158410((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[80 * v15];
  *(v16 + 4) = v7;
  *(v16 + 5) = v9;
  *(v16 + 6) = MEMORY[0x1E69E7CC0];
  *(v16 + 7) = v10;
  *(v16 + 8) = v11;
  *(v16 + 9) = a1;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 10) = a2;
  *(v16 + 12) = v17;
  *(v16 + 13) = &protocol witness table for String;
  *(v4 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_1DB2733F0(uint64_t result, char a2)
{
  v3 = *v2;
  if ((a2 & 1) == 0)
  {
    return sub_1DB272B00(result);
  }

  if (*(v2 + 32) == 1)
  {
    v4 = v2[2];
    v5 = *(v3 + 80);
    v6 = *(v3 + 88);
    sub_1DB2BBAA4();
    v7 = sub_1DB2B995C(34, 0xE100000000000000);
    v9 = v8;

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28118, &unk_1DB2CE7C0);
    v11 = sub_1DB1688F0(&qword_1ECC29158, &qword_1ECC28118, &unk_1DB2CE7C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB2BCC40;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0;
    swift_beginAccess();
    v13 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1DB158410(0, *(v13 + 2) + 1, 1, v13);
      *(v4 + 16) = v13;
    }

    v15 = *(v13 + 2);
    v16 = *(v13 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v23 = v15 + 1;
      v20 = v13;
      v21 = *(v13 + 2);
      v22 = sub_1DB158410((v16 > 1), v15 + 1, 1, v20);
      v15 = v21;
      v17 = v23;
      v13 = v22;
    }

    *(v13 + 2) = v17;
    v18 = &v13[80 * v15];
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 4) = v7;
    *(v18 + 5) = v9;
    *(v18 + 6) = v19;
    *(v18 + 7) = v10;
    *(v18 + 8) = v11;
    *(v18 + 9) = 63;
    *(v18 + 10) = 0xE100000000000000;
    *(v18 + 11) = v12;
    *(v18 + 12) = v10;
    *(v18 + 13) = v11;
    *(v4 + 16) = v13;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB2735FC(uint64_t result)
{
  v2 = *v1;
  if (result != 2)
  {
    return sub_1DB272CBC(result & 1);
  }

  if (*(v1 + 32) == 1)
  {
    v3 = v1[2];
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    sub_1DB2BBAA4();
    v6 = sub_1DB2B995C(34, 0xE100000000000000);
    v8 = v7;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC27E20, &qword_1DB2C3AF0);
    v10 = sub_1DB1688F0(&qword_1EE13F5C0, &qword_1ECC27E20, &qword_1DB2C3AF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB2BCC40;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    swift_beginAccess();
    v12 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1DB158410(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 16) = v12;
    }

    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v22 = v14 + 1;
      v19 = v12;
      v20 = *(v12 + 2);
      v21 = sub_1DB158410((v15 > 1), v14 + 1, 1, v19);
      v14 = v20;
      v16 = v22;
      v12 = v21;
    }

    *(v12 + 2) = v16;
    v17 = &v12[80 * v14];
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 4) = v6;
    *(v17 + 5) = v8;
    *(v17 + 6) = v18;
    *(v17 + 7) = v9;
    *(v17 + 8) = v10;
    *(v17 + 9) = 63;
    *(v17 + 10) = 0xE100000000000000;
    *(v17 + 11) = v11;
    *(v17 + 12) = v9;
    *(v17 + 13) = v10;
    *(v3 + 16) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273814(uint64_t result)
{
  v2 = *v1;
  if ((result & 0x100000000) == 0)
  {
    return sub_1DB272E88(*&result);
  }

  if (*(v1 + 32) == 1)
  {
    v3 = v1[2];
    v4 = *(v2 + 80);
    v5 = *(v2 + 88);
    sub_1DB2BBAA4();
    v6 = sub_1DB2B995C(34, 0xE100000000000000);
    v8 = v7;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28138, &unk_1DB2CE7B0);
    v10 = sub_1DB1688F0(&qword_1ECC29150, &qword_1ECC28138, &unk_1DB2CE7B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DB2BCC40;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0;
    swift_beginAccess();
    v12 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1DB158410(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 16) = v12;
    }

    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v22 = v14 + 1;
      v19 = v12;
      v20 = *(v12 + 2);
      v21 = sub_1DB158410((v15 > 1), v14 + 1, 1, v19);
      v14 = v20;
      v16 = v22;
      v12 = v21;
    }

    *(v12 + 2) = v16;
    v17 = &v12[80 * v14];
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 4) = v6;
    *(v17 + 5) = v8;
    *(v17 + 6) = v18;
    *(v17 + 7) = v9;
    *(v17 + 8) = v10;
    *(v17 + 9) = 63;
    *(v17 + 10) = 0xE100000000000000;
    *(v17 + 11) = v11;
    *(v17 + 12) = v9;
    *(v17 + 13) = v10;
    *(v3 + 16) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273A28(uint64_t result, char a2)
{
  v3 = *v2;
  if ((a2 & 1) == 0)
  {
    return sub_1DB27305C(*&result);
  }

  if (*(v2 + 32) == 1)
  {
    v4 = v2[2];
    v5 = *(v3 + 80);
    v6 = *(v3 + 88);
    sub_1DB2BBAA4();
    v7 = sub_1DB2B995C(34, 0xE100000000000000);
    v9 = v8;

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28138, &unk_1DB2CE7B0);
    v11 = sub_1DB1688F0(&qword_1ECC29150, &qword_1ECC28138, &unk_1DB2CE7B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB2BCC40;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0;
    swift_beginAccess();
    v13 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1DB158410(0, *(v13 + 2) + 1, 1, v13);
      *(v4 + 16) = v13;
    }

    v15 = *(v13 + 2);
    v16 = *(v13 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v23 = v15 + 1;
      v20 = v13;
      v21 = *(v13 + 2);
      v22 = sub_1DB158410((v16 > 1), v15 + 1, 1, v20);
      v15 = v21;
      v17 = v23;
      v13 = v22;
    }

    *(v13 + 2) = v17;
    v18 = &v13[80 * v15];
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 4) = v7;
    *(v18 + 5) = v9;
    *(v18 + 6) = v19;
    *(v18 + 7) = v10;
    *(v18 + 8) = v11;
    *(v18 + 9) = 63;
    *(v18 + 10) = 0xE100000000000000;
    *(v18 + 11) = v12;
    *(v18 + 12) = v10;
    *(v18 + 13) = v11;
    *(v4 + 16) = v13;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273C38(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    return sub_1DB27322C(result, a2);
  }

  if (*(v2 + 32) == 1)
  {
    v4 = v2[2];
    v5 = *(v3 + 80);
    v6 = *(v3 + 88);
    sub_1DB2BBAA4();
    v7 = sub_1DB2B995C(34, 0xE100000000000000);
    v9 = v8;

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
    v11 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB2BCC40;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0;
    swift_beginAccess();
    v13 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1DB158410(0, *(v13 + 2) + 1, 1, v13);
      *(v4 + 16) = v13;
    }

    v15 = *(v13 + 2);
    v16 = *(v13 + 3);
    v17 = v15 + 1;
    if (v15 >= v16 >> 1)
    {
      v23 = v15 + 1;
      v20 = v13;
      v21 = *(v13 + 2);
      v22 = sub_1DB158410((v16 > 1), v15 + 1, 1, v20);
      v15 = v21;
      v17 = v23;
      v13 = v22;
    }

    *(v13 + 2) = v17;
    v18 = &v13[80 * v15];
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 4) = v7;
    *(v18 + 5) = v9;
    *(v18 + 6) = v19;
    *(v18 + 7) = v10;
    *(v18 + 8) = v11;
    *(v18 + 9) = 63;
    *(v18 + 10) = 0xE100000000000000;
    *(v18 + 11) = v12;
    *(v18 + 12) = v10;
    *(v18 + 13) = v11;
    *(v4 + 16) = v13;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB273E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v114[2] = a4;
  v8 = *v4;
  v9 = sub_1DB2BADE4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114[0] = v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1DB2BA944();
  v115 = *(v118 - 8);
  v12 = *(v115 + 64);
  v13 = MEMORY[0x1EEE9AC00](v118);
  v117 = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v114 - v15;
  v17 = sub_1DB2BA904();
  v116 = *(v17 - 8);
  v18 = *(v116 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v119 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v114 - v22;
  v24 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v27;
  v28 = *(v27 + 16);
  v114[1] = a1;
  v28(v26, a1, a3);
  v29 = swift_dynamicCast();
  v120 = v26;
  v121 = a3;
  if (v29)
  {
    v118 = v124;
    v119 = v123;
    v30 = v5[2];
    v31 = *(v8 + 80);
    v32 = *(v8 + 88);
    sub_1DB2BBAA4();
    v33 = sub_1DB2B995C(34, 0xE100000000000000);
    v35 = v34;

    v36 = sub_1DB2074E8();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC28168, &unk_1DB2C4B80);
    v38 = sub_1DB1688F0(&qword_1ECC281E0, &qword_1ECC28168, &unk_1DB2C4B80);
    swift_beginAccess();
    v39 = *(v30 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 16) = v39;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v39 = sub_1DB158410(0, *(v39 + 2) + 1, 1, v39);
      *(v30 + 16) = v39;
    }

    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    if (v42 >= v41 >> 1)
    {
      v39 = sub_1DB158410((v41 > 1), v42 + 1, 1, v39);
    }

    *(v39 + 2) = v42 + 1;
    v43 = &v39[80 * v42];
    *(v43 + 4) = v33;
    *(v43 + 5) = v35;
    *(v43 + 6) = MEMORY[0x1E69E7CC0];
    *(v43 + 7) = v37;
    v44 = v118;
    v45 = v119;
    *(v43 + 8) = v38;
    *(v43 + 9) = v45;
    *(v43 + 10) = v44;
    *(v43 + 12) = MEMORY[0x1E6969080];
    *(v43 + 13) = v36;
    *(v30 + 16) = v39;
    swift_endAccess();
  }

  else
  {
    v46 = v8;
    if (swift_dynamicCast())
    {
      v47 = v116;
      (*(v116 + 32))(v119, v23, v17);
      v48 = v5[2];
      v49 = *(v8 + 80);
      v50 = *(v8 + 88);
      sub_1DB2BBAA4();
      v51 = sub_1DB2B995C(34, 0xE100000000000000);
      v117 = v52;
      v118 = v51;

      if (qword_1ECC26C50 != -1)
      {
        swift_once();
      }

      v53 = qword_1ECC29568;
      v54 = sub_1DB2BA8C4();
      v55 = [v53 stringFromDate_];

      v56 = sub_1DB2BAD94();
      v115 = v57;

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
      v59 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
      swift_beginAccess();
      v60 = *(v48 + 16);
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *(v48 + 16) = v60;
      if ((v61 & 1) == 0)
      {
        v60 = sub_1DB158410(0, *(v60 + 2) + 1, 1, v60);
        *(v48 + 16) = v60;
      }

      v63 = *(v60 + 2);
      v62 = *(v60 + 3);
      if (v63 >= v62 >> 1)
      {
        v60 = sub_1DB158410((v62 > 1), v63 + 1, 1, v60);
      }

      *(v60 + 2) = v63 + 1;
      v64 = &v60[80 * v63];
      v65 = v117;
      *(v64 + 4) = v118;
      *(v64 + 5) = v65;
      *(v64 + 6) = MEMORY[0x1E69E7CC0];
      *(v64 + 7) = v58;
      *(v64 + 8) = v59;
      *(v64 + 9) = v56;
      v66 = MEMORY[0x1E69E6158];
      *(v64 + 10) = v115;
      *(v64 + 12) = v66;
      *(v64 + 13) = &protocol witness table for String;
      *(v48 + 16) = v60;
      swift_endAccess();
      (*(v47 + 8))(v119, v17);
    }

    else
    {
      v67 = v118;
      if (swift_dynamicCast())
      {
        v68 = v115;
        (*(v115 + 32))(v117, v16, v67);
        v69 = v5[2];
        v70 = *(v8 + 80);
        v71 = *(v8 + 88);
        sub_1DB2BBAA4();
        v119 = sub_1DB2B995C(34, 0xE100000000000000);
        v116 = v72;

        v73 = _s10Foundation4UUIDV19OnDeviceStorageCoreE13datatypeValueSSvg_0();
        v75 = v74;
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280D8, &unk_1DB2C4B30);
        v77 = sub_1DB1688F0(qword_1EE1400C0, &qword_1ECC280D8, &unk_1DB2C4B30);
        swift_beginAccess();
        v78 = *(v69 + 16);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *(v69 + 16) = v78;
        if ((v79 & 1) == 0)
        {
          v78 = sub_1DB158410(0, *(v78 + 2) + 1, 1, v78);
          *(v69 + 16) = v78;
        }

        v81 = *(v78 + 2);
        v80 = *(v78 + 3);
        if (v81 >= v80 >> 1)
        {
          v78 = sub_1DB158410((v80 > 1), v81 + 1, 1, v78);
        }

        *(v78 + 2) = v81 + 1;
        v82 = &v78[80 * v81];
        v83 = v116;
        *(v82 + 4) = v119;
        *(v82 + 5) = v83;
        *(v82 + 6) = MEMORY[0x1E69E7CC0];
        *(v82 + 7) = v76;
        *(v82 + 8) = v77;
        *(v82 + 9) = v73;
        v84 = MEMORY[0x1E69E6158];
        *(v82 + 10) = v75;
        *(v82 + 12) = v84;
        *(v82 + 13) = &protocol witness table for String;
        *(v69 + 16) = v78;
        swift_endAccess();
        (*(v68 + 8))(v117, v118);
      }

      else
      {
        v85 = sub_1DB2BA5F4();
        v86 = *(v85 + 48);
        v87 = *(v85 + 52);
        swift_allocObject();
        sub_1DB2BA5E4();
        v88 = v125;
        v89 = sub_1DB2BA5D4();
        v91 = v90;

        if (v88)
        {
          return (*(v122 + 8))(v26, a3);
        }

        v125 = 0;
        sub_1DB2BADD4();
        v118 = v91;
        v119 = v89;
        v93 = sub_1DB2BADB4();
        v95 = v94;
        v96 = v5[2];
        v97 = *(v46 + 80);
        v98 = *(v46 + 88);
        sub_1DB2BBAA4();
        v117 = sub_1DB2B995C(34, 0xE100000000000000);
        v100 = v99;

        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC280E0, &unk_1DB2CE7A0);
        v102 = sub_1DB1688F0(&qword_1EE13EF70, &qword_1ECC280E0, &unk_1DB2CE7A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC26E20, &unk_1DB2BCF80);
        v103 = swift_allocObject();
        v104 = v103;
        *(v103 + 16) = xmmword_1DB2BCC40;
        if (v95)
        {
          v105 = &protocol witness table for String;
          v106 = MEMORY[0x1E69E6158];
        }

        else
        {
          v93 = 0;
          v106 = 0;
          v105 = 0;
          *(v103 + 48) = 0;
        }

        *(v103 + 32) = v93;
        *(v103 + 40) = v95;
        *(v103 + 56) = v106;
        *(v103 + 64) = v105;
        swift_beginAccess();
        v107 = *(v96 + 16);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        *(v96 + 16) = v107;
        if ((v108 & 1) == 0)
        {
          v107 = sub_1DB158410(0, *(v107 + 2) + 1, 1, v107);
          *(v96 + 16) = v107;
        }

        v109 = v118;
        v111 = *(v107 + 2);
        v110 = *(v107 + 3);
        if (v111 >= v110 >> 1)
        {
          v107 = sub_1DB158410((v110 > 1), v111 + 1, 1, v107);
        }

        *(v107 + 2) = v111 + 1;
        v112 = &v107[80 * v111];
        v113 = MEMORY[0x1E69E7CC0];
        *(v112 + 4) = v117;
        *(v112 + 5) = v100;
        *(v112 + 6) = v113;
        *(v112 + 7) = v101;
        *(v112 + 8) = v102;
        *(v112 + 9) = 63;
        *(v112 + 10) = 0xE100000000000000;
        *(v112 + 11) = v104;
        *(v112 + 12) = v101;
        *(v112 + 13) = v102;
        *(v96 + 16) = v107;
        swift_endAccess();
        sub_1DB207494(v119, v109);
      }
    }
  }

  return (*(v122 + 8))(v120, v121);
}