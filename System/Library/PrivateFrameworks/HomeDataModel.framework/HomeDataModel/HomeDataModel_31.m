uint64_t sub_1D195F5DC()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.Template.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D195F634()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_1D1E6920C();
  StaticRVCClusterGroup.Command.Template.hash(into:)(v3);
  return sub_1D1E6926C();
}

void StaticRVCClusterGroup.Command.init(clusterKind:commandID:expectedValues:commandFields:)(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{

  v8 = *a1;
  v9 = *a3;
  if (v8 <= 0x19)
  {
    if (v8 != 24)
    {
      if (v8 == 25)
      {
        if (v9)
        {
          sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
          v10 = sub_1D1E684DC();
          v11 = v10;
          if (*(v9 + 16))
          {
            v12 = sub_1D171D228(v10);
            if (v13)
            {
              v14 = *(v9 + 56) + 16 * v12;
              v15 = *v14;
              v16 = *(v14 + 8);
              sub_1D1741AF8(*v14, *(v14 + 8));

              if (v16 == 2)
              {
                *a4 = v15;
                *(a4 + 8) = 0;
                return;
              }

              goto LABEL_31;
            }
          }

          goto LABEL_25;
        }

LABEL_26:
        *a4 = 0;
        v21 = -1;
        goto LABEL_27;
      }

LABEL_16:

      goto LABEL_26;
    }

    if (a2 == 3)
    {
      v26 = 1;
    }

    else
    {
      if (!a2)
      {
        *a4 = 0;
        v21 = 4;
        goto LABEL_27;
      }

      v26 = 2;
    }

    *a4 = v26;
    v21 = 4;
    goto LABEL_27;
  }

  if (v8 == 26)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v22 = sub_1D1E684DC();
    v11 = v22;
    if (*(v9 + 16))
    {
      v23 = sub_1D171D228(v22);
      if (v24)
      {
        v25 = *(v9 + 56) + 16 * v23;
        v15 = *v25;
        v16 = *(v25 + 8);
        sub_1D1741AF8(*v25, *(v25 + 8));

        if (v16 == 2)
        {
          *a4 = v15;
          v21 = 1;
          goto LABEL_27;
        }

LABEL_31:
        sub_1D1757AE8(v15, v16);
        goto LABEL_26;
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v8 != 27)
  {
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_26;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v17 = sub_1D1E684DC();
  v11 = v17;
  if (!*(v9 + 16))
  {
    goto LABEL_25;
  }

  v18 = sub_1D171D228(v17);
  if ((v19 & 1) == 0)
  {
    goto LABEL_25;
  }

  v20 = *(v9 + 56) + 16 * v18;
  v15 = *v20;
  v16 = *(v20 + 8);
  sub_1D1741AF8(*v20, *(v20 + 8));

  if (v16 != 3)
  {
    goto LABEL_31;
  }

  *a4 = v15;
  v21 = 2;
LABEL_27:
  *(a4 + 8) = v21;
}

uint64_t StaticRVCClusterGroup.Command.commandID.getter()
{
  v1 = *(v0 + 8);
  if (v1 < 3)
  {
    return 0;
  }

  if (v1 == 3)
  {
    return 2;
  }

  return qword_1D1E86880[*v0];
}

uint64_t StaticRVCClusterGroup.Command.executionOrder.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v1 == 2)
  {
    return 0;
  }

  else if (v1 == 3)
  {
    return 1;
  }

  else
  {
    return *v0 + 3;
  }
}

unint64_t StaticRVCClusterGroup.Command.expectedValues.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 1;
      v5 = inited + 32;
      *(inited + 16) = xmmword_1D1E739C0;
      v6 = 26;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 1;
      v5 = inited + 32;
      *(inited + 16) = xmmword_1D1E739C0;
      v6 = 25;
    }

    *(inited + 36) = v6;
    *(inited + 40) = v1;
    goto LABEL_16;
  }

  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    v7 = swift_initStackObject();
    *(v7 + 32) = 2;
    v5 = v7 + 32;
    *(v7 + 16) = xmmword_1D1E739C0;
    *(v7 + 36) = 27;
    *(v7 + 40) = v1;
    *(v7 + 48) = 3;
    v3 = sub_1D18D4B28(v7);
    swift_setDeallocating();
    sub_1D19637F0(v1, 2);
LABEL_18:
    sub_1D1741A30(v5, &qword_1EC646E70, &qword_1D1E83830);
    return v3;
  }

  if (v2 != 3)
  {
    if (!v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 4;
      v5 = inited + 32;
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 36) = 24;
      *(inited + 40) = 2;
      *(inited + 48) = 2;
LABEL_17:
      v3 = sub_1D18D4B28(inited);
      swift_setDeallocating();
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 4;
    v5 = inited + 32;
    *(inited + 36) = 24;
    if (v1 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 64;
    }

    *(inited + 40) = v8;
LABEL_16:
    *(inited + 48) = 2;
    goto LABEL_17;
  }

  return 0;
}

unint64_t StaticRVCClusterGroup.Command.overridingAttributes.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return StaticRVCClusterGroup.Command.expectedValues.getter();
}

void StaticRVCClusterGroup.Command.commandFields.getter(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);

      v5 = sub_1D1E684DC();
      v10 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v10;
      v8 = v3;
      v9 = 3;
      goto LABEL_7;
    }

    if (v4 != 3)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v3 = v3;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v5 = sub_1D1E684DC();
  v6 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v6;
  v8 = v3;
  v9 = 2;
LABEL_7:
  sub_1D17524E4(v8, v9, v5, isUniquelyReferenced_nonNull_native);

  v11 = v12;

LABEL_8:
  *a1 = v11;
}

unint64_t StaticRVCClusterGroup.Command.operationType.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 8) >= 4u)
  {
    v5 = *v1;
    *(a1 + 24) = &type metadata for StaticRVCClusterGroup.Command.RVCOperationType;
    result = sub_1D1963804();
    *(a1 + 32) = result;
    v4 = v5 == 1;
  }

  else
  {
    *(a1 + 24) = &type metadata for StaticRVCClusterGroup.Command.RVCOperationType;
    result = sub_1D1963804();
    *(a1 + 32) = result;
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D195FDE8(uint64_t a1)
{
  v2 = sub_1D1963BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D195FE24(uint64_t a1)
{
  v2 = sub_1D1963BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D195FE60(uint64_t a1)
{
  v2 = sub_1D1963CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D195FE9C(uint64_t a1)
{
  v2 = sub_1D1963CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D195FED8()
{
  v1 = *v0;
  v2 = 0x755265676E616863;
  v3 = 0x6165724170696B73;
  if (v1 != 5)
  {
    v3 = 0x656D6F486F67;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6F527463656C6573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6573756170;
  if (v1 != 1)
  {
    v5 = 0x656D75736572;
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

uint64_t sub_1D195FFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1964E7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D195FFE8(uint64_t a1)
{
  v2 = sub_1D1963A90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1960024(uint64_t a1)
{
  v2 = sub_1D1963A90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1960060(uint64_t a1)
{
  v2 = sub_1D1963AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D196009C(uint64_t a1)
{
  v2 = sub_1D1963AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19600D8(uint64_t a1)
{
  v2 = sub_1D1963C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1960114(uint64_t a1)
{
  v2 = sub_1D1963C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1960150(uint64_t a1)
{
  v2 = sub_1D1963C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D196018C(uint64_t a1)
{
  v2 = sub_1D1963C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19601C8(uint64_t a1)
{
  v2 = sub_1D1963B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1960204(uint64_t a1)
{
  v2 = sub_1D1963B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1960240(uint64_t a1)
{
  v2 = sub_1D1963B38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D196027C(uint64_t a1)
{
  v2 = sub_1D1963B38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647560, &qword_1D1E858C8);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647568, &qword_1D1E858D0);
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647570, &qword_1D1E858D8);
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647578, &qword_1D1E858E0);
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647580, &qword_1D1E858E8);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647588, &qword_1D1E858F0);
  v53 = *(v54 - 8);
  v20 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v52 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647590, &qword_1D1E858F8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v52 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647598, &unk_1D1E85900);
  v71 = *(v27 - 8);
  v72 = v27;
  v28 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v52 - v29;
  v69 = *v2;
  v31 = *(v2 + 8);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1963A90();
  v70 = v30;
  sub_1D1E6930C();
  if (v31 <= 1)
  {
    v66 = v23;
    v39 = v67;
    v38 = v68;
    if (!v31)
    {
      v74 = 0;
      sub_1D1963CDC();
      v40 = v72;
      v41 = v70;
      sub_1D1E68DFC();
      sub_1D1E68F0C();
      (*(v66 + 8))(v26, v22);
      return (*(v71 + 8))(v41, v40);
    }

    v77 = 3;
    sub_1D1963BE0();
    v48 = v16;
    v34 = v72;
    v35 = v70;
    sub_1D1E68DFC();
    sub_1D1E68F0C();
    (*(v39 + 8))(v48, v38);
    return (*(v71 + 8))(v35, v34);
  }

  if (v31 == 2)
  {
    v78 = 4;
    sub_1D1963B8C();
    v33 = v61;
    v34 = v72;
    v35 = v70;
    sub_1D1E68DFC();
    v73 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
    sub_1D1963D30(&qword_1EC6475C0);
    v36 = v64;
    sub_1D1E68F1C();
    v37 = v63;
    goto LABEL_8;
  }

  if (v31 == 3)
  {
    v79 = 5;
    sub_1D1963B38();
    v33 = v62;
    v34 = v72;
    v35 = v70;
    sub_1D1E68DFC();
    v36 = v66;
    sub_1D1E68F5C();
    v37 = v65;
LABEL_8:
    (*(v37 + 8))(v33, v36);
    return (*(v71 + 8))(v35, v34);
  }

  if (v69)
  {
    if (v69 == 1)
    {
      v76 = 2;
      sub_1D1963C34();
      v43 = v55;
      v44 = v72;
      v45 = v70;
      sub_1D1E68DFC();
      v47 = v56;
      v46 = v57;
    }

    else
    {
      v80 = 6;
      sub_1D1963AE4();
      v43 = v58;
      v44 = v72;
      v45 = v70;
      sub_1D1E68DFC();
      v47 = v59;
      v46 = v60;
    }

    (*(v47 + 8))(v43, v46);
    return (*(v71 + 8))(v45, v44);
  }

  else
  {
    v75 = 1;
    sub_1D1963C88();
    v49 = v52;
    v50 = v72;
    v51 = v70;
    sub_1D1E68DFC();
    (*(v53 + 8))(v49, v54);
    return (*(v71 + 8))(v51, v50);
  }
}

uint64_t StaticRVCClusterGroup.Command.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1919C00(v4, v1, v2);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.Command.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6475E8, &qword_1D1E85910);
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6475F0, &qword_1D1E85918);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6475F8, &qword_1D1E85920);
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v61 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647600, &qword_1D1E85928);
  v69 = *(v63 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v80 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647608, &qword_1D1E85930);
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v61 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647610, &qword_1D1E85938);
  v65 = *(v66 - 8);
  v18 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647618, &qword_1D1E85940);
  v64 = *(v21 - 8);
  v22 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647620, &unk_1D1E85948);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v61 - v28;
  v30 = a1[3];
  v31 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1D1963A90();
  v32 = v83;
  sub_1D1E692FC();
  if (!v32)
  {
    v33 = v24;
    v61 = v21;
    v62 = v20;
    v34 = v80;
    v35 = v81;
    v83 = v26;
    v36 = v29;
    v37 = sub_1D1E68DDC();
    v38 = (2 * *(v37 + 16)) | 1;
    v84 = v37;
    v85 = v37 + 32;
    v86 = 0;
    v87 = v38;
    v39 = sub_1D18085C4();
    if (v39 != 7 && v86 == v87 >> 1)
    {
      if (v39 <= 2u)
      {
        if (v39)
        {
          if (v39 == 1)
          {
            LOBYTE(v88) = 1;
            sub_1D1963C88();
            v48 = v62;
            sub_1D1E68C4C();
            (*(v65 + 8))(v48, v66);
            (*(v83 + 8))(v36, v25);
            swift_unknownObjectRelease();
            v58 = 0;
            v59 = 4;
          }

          else
          {
            LOBYTE(v88) = 2;
            sub_1D1963C34();
            v55 = v76;
            sub_1D1E68C4C();
            (*(v67 + 8))(v55, v68);
            (*(v83 + 8))(v36, v25);
            swift_unknownObjectRelease();
            v59 = 4;
            v58 = 1;
          }

          goto LABEL_21;
        }

        LOBYTE(v88) = 0;
        sub_1D1963CDC();
        sub_1D1E68C4C();
        v49 = v79;
        v54 = v61;
        v58 = sub_1D1E68D6C();
        (*(v64 + 8))(v33, v54);
        (*(v83 + 8))(v36, v25);
        swift_unknownObjectRelease();
        v59 = 0;
      }

      else
      {
        if (v39 <= 4u)
        {
          v40 = v83;
          if (v39 == 3)
          {
            LOBYTE(v88) = 3;
            sub_1D1963BE0();
            sub_1D1E68C4C();
            v41 = v63;
            v58 = sub_1D1E68D6C();
            (*(v69 + 8))(v34, v41);
            (*(v40 + 8))(v29, v25);
            swift_unknownObjectRelease();
            v59 = 1;
          }

          else
          {
            LOBYTE(v88) = 4;
            sub_1D1963B8C();
            sub_1D1E68C4C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A50, &unk_1D1E910D0);
            sub_1D1963D30(&qword_1EC647628);
            v56 = v70;
            sub_1D1E68D7C();
            (*(v71 + 8))(v35, v56);
            (*(v40 + 8))(v29, v25);
            swift_unknownObjectRelease();
            v58 = v88;
            v59 = 2;
          }

LABEL_21:
          v46 = v82;
          v49 = v79;
          goto LABEL_22;
        }

        v49 = v79;
        v50 = v83;
        v51 = v29;
        if (v39 == 5)
        {
          LOBYTE(v88) = 5;
          sub_1D1963B38();
          v52 = v77;
          sub_1D1E68C4C();
          v53 = v73;
          v60 = sub_1D1E68DBC();
          (*(v72 + 8))(v52, v53);
          (*(v50 + 8))(v51, v25);
          swift_unknownObjectRelease();
          v58 = v60;
          v59 = 3;
        }

        else
        {
          LOBYTE(v88) = 6;
          sub_1D1963AE4();
          v57 = v78;
          sub_1D1E68C4C();
          (*(v74 + 8))(v57, v75);
          (*(v50 + 8))(v36, v25);
          swift_unknownObjectRelease();
          v59 = 4;
          v58 = 2;
        }
      }

      v46 = v82;
LABEL_22:
      *v49 = v58;
      *(v49 + 8) = v59;
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    v42 = sub_1D1E688EC();
    swift_allocError();
    v44 = v43;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v44 = &type metadata for StaticRVCClusterGroup.Command;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v83 + 8))(v36, v25);
    swift_unknownObjectRelease();
  }

  v46 = v82;
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_1D1961734()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    if (*(v0 + 8))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (v1 == 2)
  {
    return 0;
  }

  else if (v1 == 3)
  {
    return 1;
  }

  else
  {
    return *v0 + 3;
  }
}

unint64_t sub_1D1961788()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return StaticRVCClusterGroup.Command.expectedValues.getter();
}

uint64_t StaticRVCClusterGroup.Command.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      sub_1D1E6884C();

      v6[0] = 0xD000000000000013;
      v6[1] = 0x80000001D1EBE850;
    }

    else
    {
      sub_1D1E6884C();

      strcpy(v6, "changeRunMode(");
      HIBYTE(v6[1]) = -18;
    }

    goto LABEL_14;
  }

  if (v2 == 2)
  {
    strcpy(v6, "selectRooms(");
    BYTE5(v6[1]) = 0;
    HIWORD(v6[1]) = -5120;
    v3 = MEMORY[0x1D3891260](v1, MEMORY[0x1E69E7668]);
LABEL_15:
    MEMORY[0x1D3890F70](v3);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v6[0];
  }

  if (v2 == 3)
  {
    strcpy(v6, "skipArea(");
    WORD1(v6[1]) = 0;
    HIDWORD(v6[1]) = -385875968;
LABEL_14:
    v3 = sub_1D1E68FAC();
    goto LABEL_15;
  }

  v4 = 0x656D75736572;
  if (v1 != 1)
  {
    v4 = 0x656D6F486F67;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0x6573756170;
  }
}

uint64_t sub_1D19619B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1919C00(v4, v1, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1961A10()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1919C00(v4, v1, v2);
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.run(command:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 152) = *(a1 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1D1961A88, 0, 0);
}

uint64_t sub_1D1961A88()
{
  v36 = v0;
  v1 = *(v0 + 152);
  if (v1 <= 1)
  {
    if (*(v0 + 152))
    {
      v18 = swift_task_alloc();
      *(v0 + 120) = v18;
      *v18 = v0;
      v18[1] = sub_1D196213C;
      v20 = *(v0 + 64);
      v19 = *(v0 + 72);

      return StaticRVCClusterGroup.changeToCleanMode(index:)(v19);
    }

    else
    {
      v6 = *(v0 + 64);
      StaticRVCClusterGroup.runMode(with:)(*(v0 + 72), v34);
      v7 = v35;
      if (v35)
      {
        v9 = v34[0];
        v8 = v34[1];
        v10 = StaticRVCClusterGroup.RunMode.isIdle.getter();
        sub_1D192F928(v9, v8, v7);
        if (v10)
        {
          v11 = *(v0 + 64);
          sub_1D19539E8(v34);
        }

        else
        {
          v29 = *(v0 + 64);
          StaticRVCClusterGroup.startExpectedValues(with:)(*(v0 + 72), 0, v34);
        }

        v24 = v34[0];
      }

      else
      {
        v21 = *(v0 + 64);
        v22 = *(v0 + 72);
        *(v0 + 40) = &type metadata for StaticRVCClusterGroup.Command;
        *(v0 + 48) = sub_1D18FA450();
        *(v0 + 16) = v22;
        *(v0 + 24) = 0;
        v23 = type metadata accessor for EndpointPath(0);
        v33 = MEMORY[0x1E69E7CC8];
        ExpectedValuesBuilder.addValues(from:in:)((v0 + 16), *(v21 + *(v23 + 24)), v34);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));

        v24 = v33;
      }

      *(v0 + 96) = v24;
      *(v0 + 56) = v24;
      v30 = swift_task_alloc();
      *(v0 + 104) = v30;
      *v30 = v0;
      v30[1] = sub_1D1962000;
      v32 = *(v0 + 64);
      v31 = *(v0 + 72);

      return StaticRVCClusterGroup.changeToRunMode(modeID:expectedValues:)(v31, (v0 + 56));
    }
  }

  else if (v1 == 2)
  {
    v12 = *(v0 + 72);
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_1D17CD838;
    v14 = *(v0 + 64);

    return StaticRVCClusterGroup.select(areaIDs:)(v12);
  }

  else if (v1 == 3)
  {
    v2 = *(v0 + 72);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1D1961F0C;
    v4 = *(v0 + 64);

    return StaticRVCClusterGroup.skipArea(areaToSkip:)(v2);
  }

  else
  {
    v15 = *(v0 + 72);
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = swift_task_alloc();
        *(v0 + 136) = v16;
        *v16 = v0;
        v16[1] = sub_1D1962324;
        v17 = *(v0 + 64);

        return StaticRVCClusterGroup.resume()();
      }

      else
      {
        v27 = swift_task_alloc();
        *(v0 + 144) = v27;
        *v27 = v0;
        v27[1] = sub_1D1962418;
        v28 = *(v0 + 64);

        return StaticRVCClusterGroup.goHome()();
      }
    }

    else
    {
      v25 = swift_task_alloc();
      *(v0 + 128) = v25;
      *v25 = v0;
      v25[1] = sub_1D1962230;
      v26 = *(v0 + 64);

      return StaticRVCClusterGroup.pause()();
    }
  }
}

uint64_t sub_1D1961F0C()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1962000()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D196250C, 0, 0);
  }

  else
  {
    v4 = v3[12];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D196213C()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1962230()
{
  v1 = *(*v0 + 128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1962324()
{
  v1 = *(*v0 + 136);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1962418()
{
  v1 = *(*v0 + 144);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D196250C()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

char *StaticRVCClusterGroup.defaultCommands()()
{
  StaticRVCClusterGroup.firstCleaningRunningMode.getter(&v18);
  if (v20)
  {
    v1 = v18;
    sub_1D192F928(v18, v19, v20);
    v2 = sub_1D177EC74(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1D177EC74((v3 > 1), v4 + 1, 1, v2);
    }

    v6 = 0;
  }

  else
  {
    v2 = sub_1D177EC74(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v7 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v7 >> 1)
    {
      v2 = sub_1D177EC74((v7 > 1), v4 + 1, 1, v2);
    }

    v1 = 0;
    v6 = 4;
  }

  *(v2 + 2) = v5;
  v8 = &v2[16 * v4];
  *(v8 + 4) = v1;
  v8[40] = v6;
  StaticRVCClusterGroup.firstVacuumCleaningMode.getter(&v18);
  if (v20)
  {
    v9 = v18;
    sub_1D192F928(v18, v19, v20);
    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    v12 = v11 + 1;
    if (v11 >= v10 >> 1)
    {
      v2 = sub_1D177EC74((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v12;
    v13 = &v2[16 * v11];
    *(v13 + 4) = v9;
    v13[40] = 1;
    if (*(v0 + *(type metadata accessor for StaticRVCClusterGroup() + 60)))
    {
      v14 = MEMORY[0x1E69E7CC0];
      v15 = *(v2 + 3);
      if ((v11 + 2) > (v15 >> 1))
      {
        v2 = sub_1D177EC74((v15 > 1), v11 + 2, 1, v2);
      }

      *(v2 + 2) = v11 + 2;
      v16 = &v2[16 * v12];
      *(v16 + 4) = v14;
      v16[40] = 2;
    }
  }

  return v2;
}

uint64_t sub_1D196274C(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticRVCClusterGroup.run(command:)(a1);
}

unint64_t _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v34 = *MEMORY[0x1E696F500];
  v33 = *MEMORY[0x1E696F520];

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
LABEL_8:
    while (1)
    {
      v11 = *(a1 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v5))));
      v12 = *v11;
      v13 = *(v11 + 8);
      v37 = sub_1D1E6781C();
      v38 = v14;
      v39 = sub_1D1E6781C();
      v40 = v15;
      sub_1D1741AF8(v12, v13);
      v16 = a2;
      MatterAttributeDataBuilder.dictionary.getter();
      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      v17 = sub_1D1E675DC();

      sub_1D1757AE8(v12, v13);
      v41 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C80, &unk_1D1E8DED0);
      v18 = sub_1D1E68BCC();

      v19 = a2;
      result = sub_1D171D2F0(v37, v38);
      if (v20)
      {
        break;
      }

      *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v18[6] + 16 * result);
      *v21 = v37;
      v21[1] = v38;
      *(v18[7] + 8 * result) = v19;
      v22 = v18[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_21;
      }

      v18[2] = v24;

      v25 = v41;
      result = sub_1D171D2F0(v39, v40);
      if (v26)
      {
        break;
      }

      *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v27 = (v18[6] + 16 * result);
      *v27 = v39;
      v27[1] = v40;
      *(v18[7] + 8 * result) = v25;
      v28 = v18[2];
      v23 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v23)
      {
        goto LABEL_21;
      }

      v18[2] = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647728, &unk_1D1E86830);
      swift_arrayDestroy();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177D31C(0, v9[2] + 1, 1, v9);
        v9 = result;
      }

      v31 = v9[2];
      v30 = v9[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_1D177D31C((v30 > 1), v31 + 1, 1, v9);
        v9 = result;
      }

      v5 &= v5 - 1;
      v9[2] = v31 + 1;
      v9[v31 + 4] = v18;
      if (!v5)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        v32 = sub_1D18F96D8(v9);

        return v32;
      }

      v5 = *(v2 + 8 * v10);
      ++v8;
      if (v5)
      {
        v8 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D1962B38(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(void))
{
  v5 = a3 >> 5;
  if (v5 == 2)
  {
    return a5();
  }

  if (v5 == 1)
  {
    return a4(result, a2, a3 & 0x1F);
  }

  return result;
}

uint64_t sub_1D1962B64(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7CommandO13RoomSelectionO2eeoiySbAG_AGtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(result + 8))
  {
    if (v3 == 1)
    {
      if (v5 == 1)
      {
        sub_1D1771B5C(*result, 1);
        sub_1D1771B5C(v4, 1);
        return v2 == v4;
      }

      goto LABEL_11;
    }

    if (v5 != 2 || v4 != 0)
    {
LABEL_11:
      sub_1D1771B4C(v4, v5);
      sub_1D1771B5C(v2, v3);
      v8 = v4;
      v9 = v5;
LABEL_12:
      sub_1D1771B5C(v8, v9);
      return 0;
    }

    sub_1D1771B5C(*result, 2);
    v10 = 0;
    v11 = 2;
    goto LABEL_21;
  }

  if (*(a2 + 8))
  {
    v6 = *result;

    goto LABEL_11;
  }

  v12 = *(v2 + 16);
  if (v12 != *(v4 + 16))
  {
LABEL_26:
    sub_1D1771B4C(*a2, 0);
    sub_1D1771B4C(v2, 0);
    sub_1D1771B5C(v2, 0);
    v8 = v4;
    v9 = 0;
    goto LABEL_12;
  }

  if (v12)
  {
    v13 = v2 == v4;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_20:
    sub_1D1771B4C(*a2, 0);
    sub_1D1771B4C(v2, 0);
    sub_1D1771B5C(v2, 0);
    v10 = v4;
    v11 = 0;
LABEL_21:
    sub_1D1771B5C(v10, v11);
    return 1;
  }

  v14 = (v2 + 32);
  v15 = (v4 + 32);
  while (v12)
  {
    if (*v14 != *v15)
    {
      goto LABEL_26;
    }

    ++v14;
    ++v15;
    if (!--v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV7CommandO9CleanModeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      v10 = *(a1 + 8);

LABEL_32:
      sub_1D1962B64(v6, v5, v7);
      sub_1D18FB818(v2, v3, v4);
      v16 = v6;
      v17 = v5;
      v18 = v7;
LABEL_33:
      sub_1D18FB818(v16, v17, v18);
      return 0;
    }

    if (v2 == v6)
    {
      if (v3)
      {
        v12 = *a1;
        if (v5)
        {
          sub_1D1962B64(v12, v3, 0);
          sub_1D1962B64(v2, v5, 0);
          sub_1D1962B64(v2, v3, 0);
          v13 = sub_1D17A7B94(v3, v5);
          sub_1D18FB818(v2, v3, 0);
          sub_1D18FB818(v2, v5, 0);
          sub_1D18FB818(v2, v3, 0);
          return (v13 & 1) != 0;
        }

        sub_1D1962B64(v12, 0, 0);
        sub_1D1962B64(v2, 0, 0);
        sub_1D1962B64(v2, v3, 0);
        sub_1D18FB818(v2, v3, 0);
      }

      else
      {
        v20 = *(a2 + 8);

        sub_1D1962B64(v2, v5, 0);
        sub_1D1962B64(v2, 0, 0);
        sub_1D18FB818(v2, 0, 0);
        sub_1D18FB818(v2, v5, 0);
        if (!v5)
        {
          return 1;
        }
      }

      v16 = v2;
    }

    else
    {
      sub_1D1962B64(*a2, *(a2 + 8), 0);
      sub_1D1962B64(v2, v3, 0);
      sub_1D18FB818(v2, v3, 0);
      v16 = v6;
    }

    v17 = v5;
    v18 = 0;
    goto LABEL_33;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      v9 = *a2;
      sub_1D18FB818(*a1, v3, 1);
      sub_1D18FB818(v6, v5, 1);
      if (v8 >> 6)
      {
        if (v8 >> 6 == 1)
        {
          if ((v9 & 0xC0) == 0x40)
          {
LABEL_41:
            if (((v9 ^ v8) & 0x3F) == 0)
            {
              return 1;
            }
          }
        }

        else if ((v9 & 0xC0) == 0x80)
        {
          goto LABEL_41;
        }
      }

      else if (v9 < 0x40 && (v6 & 0x3F) == v2)
      {
        return 1;
      }

      return 0;
    }

    goto LABEL_32;
  }

  if (!(v2 | v3))
  {
    if (v7 != 2 || (v5 | v6) != 0)
    {
      goto LABEL_32;
    }

    sub_1D18FB818(*a1, v3, 2);
    v15 = 0;
LABEL_31:
    sub_1D18FB818(v15, 0, 2);
    return 1;
  }

  if (v2 ^ 1 | v3)
  {
    if (v7 != 2 || v6 != 2 || v5)
    {
      goto LABEL_32;
    }

    sub_1D18FB818(*a1, v3, 2);
    v15 = 2;
    goto LABEL_31;
  }

  if (v7 != 2 || v6 != 1 || v5)
  {
    goto LABEL_32;
  }

  sub_1D18FB818(*a1, v3, 2);
  v11 = 1;
  sub_1D18FB818(1, 0, 2);
  return v11;
}

uint64_t sub_1D1963018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1963080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRVCClusterGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19630E4(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  return result;
}

uint64_t sub_1D19630F8(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1D19630E4(a1, a2);
  }

  return a1;
}

uint64_t sub_1D196310C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV7CommandO8TemplateO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 5;
  if (v4 >> 5 <= 1)
  {
    if (!v8)
    {
      if (v7 < 0x20)
      {
        sub_1D1962B38(*a1, v3, v4, sub_1D18FB818, sub_1D1771B5C);
        sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
        return ((v5 ^ v2) & 1) == 0;
      }

      goto LABEL_31;
    }

    if ((v7 & 0xE0) != 0x20)
    {
      sub_1D1962B64(*a1, v3, v4 & 0x1F);
      goto LABEL_31;
    }

    v16 = *a1;
    v17 = v3;
    v18 = v4 & 0x1F;
    v13 = v5;
    v14 = v6;
    v15 = v7 & 0x1F;
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    v10 = _s13HomeDataModel21StaticRVCClusterGroupV7CommandO9CleanModeO2eeoiySbAG_AGtFZ_0(&v16, &v13);
LABEL_20:
    v9 = v10;
    sub_1D1962B38(v2, v3, v4, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v2, v3, v4, sub_1D18FB818, sub_1D1771B5C);
    return v9;
  }

  if (v8 == 2)
  {
    if ((v7 & 0xE0) != 0x40)
    {
      sub_1D1771B4C(*a1, v3);
      goto LABEL_31;
    }

    v16 = *a1;
    LOBYTE(v17) = v3;
    v13 = v5;
    LOBYTE(v14) = v6;
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D1962B64, sub_1D1771B4C);
    v10 = _s13HomeDataModel21StaticRVCClusterGroupV7CommandO13RoomSelectionO2eeoiySbAG_AGtFZ_0(&v16, &v13);
    goto LABEL_20;
  }

  if (v8 != 3)
  {
    if (!(v3 | v2) && v4 == 128)
    {
      if ((v7 & 0xE0) != 0x80 || v6 | v5 || v7 != 128)
      {
        goto LABEL_31;
      }

      sub_1D1962B38(0, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      v11 = 0;
LABEL_17:
      sub_1D1962B38(v11, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      return 1;
    }

    if (v2 != 1 || v3 || v4 != 128)
    {
      if (v2 == 2 && !v3 && v4 == 128)
      {
        if ((v7 & 0xE0) != 0x80 || v5 != 2 || v6 || v7 != 128)
        {
          goto LABEL_31;
        }

        sub_1D1962B38(2, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        v11 = 2;
      }

      else if (v2 == 3 && !v3 && v4 == 128)
      {
        if ((v7 & 0xE0) != 0x80 || v5 != 3 || v6 || v7 != 128)
        {
          goto LABEL_31;
        }

        sub_1D1962B38(3, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        v11 = 3;
      }

      else
      {
        if ((v7 & 0xE0) != 0x80 || v5 != 4 || v6 || v7 != 128)
        {
          goto LABEL_31;
        }

        sub_1D1962B38(4, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
        v11 = 4;
      }

      goto LABEL_17;
    }

    if ((v7 & 0xE0) == 0x80 && v5 == 1 && !v6 && v7 == 128)
    {
      v9 = 1;
      sub_1D1962B38(1, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      sub_1D1962B38(1, 0, 0x80u, sub_1D18FB818, sub_1D1771B5C);
      return v9;
    }

LABEL_31:
    sub_1D1962B38(v5, v6, v7, sub_1D1962B64, sub_1D1771B4C);
    sub_1D1962B38(v2, v3, v4, sub_1D18FB818, sub_1D1771B5C);
    sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
    return 0;
  }

  if ((v7 & 0xE0) != 0x60)
  {
    goto LABEL_31;
  }

  sub_1D1962B38(*a1, v3, v4, sub_1D18FB818, sub_1D1771B5C);
  sub_1D1962B38(v5, v6, v7, sub_1D18FB818, sub_1D1771B5C);
  return v2 == v5;
}

uint64_t sub_1D19637F0(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  return result;
}

unint64_t sub_1D1963804()
{
  result = qword_1EC647558;
  if (!qword_1EC647558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647558);
  }

  return result;
}

uint64_t _s13HomeDataModel21StaticRVCClusterGroupV7CommandO2eeoiySbAE_AEtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (*(result + 8))
    {
      if (v5 != 1)
      {
        goto LABEL_26;
      }

      sub_1D19630E4(*result, 1);
      v6 = v4;
      v7 = 1;
    }

    else
    {
      if (*(a2 + 8))
      {
        goto LABEL_26;
      }

      sub_1D19630E4(*result, 0);
      v6 = v4;
      v7 = 0;
    }

    sub_1D19630E4(v6, v7);
    return v2 == v4;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      if (v5 == 3)
      {
        sub_1D19630E4(*result, 3);
        sub_1D19630E4(v4, 3);
        return v2 == v4;
      }

      goto LABEL_26;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        if (v5 == 4 && v4 == 1)
        {
          sub_1D19630E4(1, 4);
          sub_1D19630E4(1, 4);
          return v4;
        }

        goto LABEL_26;
      }

      if (v5 == 4 && v4 == 2)
      {
        sub_1D19630E4(2, 4);
        v10 = 2;
        goto LABEL_35;
      }
    }

    else if (v5 == 4 && !v4)
    {
      sub_1D19630E4(0, 4);
      v10 = 0;
LABEL_35:
      v11 = 4;
      goto LABEL_36;
    }

LABEL_26:
    sub_1D19637F0(v4, v5);
    sub_1D19630E4(v2, v3);
    v13 = v4;
    v14 = v5;
LABEL_27:
    sub_1D19630E4(v13, v14);
    return 0;
  }

  if (v5 != 2)
  {
    v12 = *result;

    goto LABEL_26;
  }

  v8 = *(v2 + 16);
  if (v8 != *(v4 + 16))
  {
LABEL_41:
    sub_1D19637F0(*a2, 2);
    sub_1D19637F0(v2, 2);
    sub_1D19630E4(v2, 2);
    v13 = v4;
    v14 = 2;
    goto LABEL_27;
  }

  if (v8)
  {
    v9 = v2 == v4;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_16:
    sub_1D19637F0(*a2, 2);
    sub_1D19637F0(v2, 2);
    sub_1D19630E4(v2, 2);
    v10 = v4;
    v11 = 2;
LABEL_36:
    sub_1D19630E4(v10, v11);
    return 1;
  }

  v15 = (v2 + 32);
  v16 = (v4 + 32);
  while (v8)
  {
    if (*v15 != *v16)
    {
      goto LABEL_41;
    }

    ++v15;
    ++v16;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1963A90()
{
  result = qword_1EC6475A0;
  if (!qword_1EC6475A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475A0);
  }

  return result;
}

unint64_t sub_1D1963AE4()
{
  result = qword_1EC6475A8;
  if (!qword_1EC6475A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475A8);
  }

  return result;
}

unint64_t sub_1D1963B38()
{
  result = qword_1EC6475B0;
  if (!qword_1EC6475B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475B0);
  }

  return result;
}

unint64_t sub_1D1963B8C()
{
  result = qword_1EC6475B8;
  if (!qword_1EC6475B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475B8);
  }

  return result;
}

unint64_t sub_1D1963BE0()
{
  result = qword_1EC6475C8;
  if (!qword_1EC6475C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475C8);
  }

  return result;
}

unint64_t sub_1D1963C34()
{
  result = qword_1EC6475D0;
  if (!qword_1EC6475D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475D0);
  }

  return result;
}

unint64_t sub_1D1963C88()
{
  result = qword_1EC6475D8;
  if (!qword_1EC6475D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475D8);
  }

  return result;
}

unint64_t sub_1D1963CDC()
{
  result = qword_1EC6475E0;
  if (!qword_1EC6475E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6475E0);
  }

  return result;
}

uint64_t sub_1D1963D30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646A50, &unk_1D1E910D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1963DA0()
{
  result = qword_1EC647630;
  if (!qword_1EC647630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647630);
  }

  return result;
}

unint64_t sub_1D1963DF8()
{
  result = qword_1EC647638;
  if (!qword_1EC647638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647638);
  }

  return result;
}

unint64_t sub_1D1963E50()
{
  result = qword_1EC647640;
  if (!qword_1EC647640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647640);
  }

  return result;
}

unint64_t sub_1D1963EA4(uint64_t a1)
{
  result = sub_1D1963ECC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1963ECC()
{
  result = qword_1EC647648;
  if (!qword_1EC647648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647648);
  }

  return result;
}

unint64_t sub_1D1963F24()
{
  result = qword_1EC647650;
  if (!qword_1EC647650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647650);
  }

  return result;
}

unint64_t sub_1D1963F7C()
{
  result = qword_1EC647658;
  if (!qword_1EC647658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647658);
  }

  return result;
}

unint64_t sub_1D1963FD0(uint64_t a1)
{
  result = sub_1D1963FF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1963FF8()
{
  result = qword_1EC647660;
  if (!qword_1EC647660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647660);
  }

  return result;
}

unint64_t sub_1D196404C(uint64_t a1)
{
  result = sub_1D1964074();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1964074()
{
  result = qword_1EC647668;
  if (!qword_1EC647668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647668);
  }

  return result;
}

unint64_t sub_1D19640CC()
{
  result = qword_1EC647670;
  if (!qword_1EC647670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647670);
  }

  return result;
}

unint64_t sub_1D1964120(uint64_t a1)
{
  result = sub_1D1964148();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1964148()
{
  result = qword_1EC647678;
  if (!qword_1EC647678)
  {
    type metadata accessor for StaticRVCClusterGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647678);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1D19641BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1964204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1964248(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO9CleanModeO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO13RoomSelectionO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D19642C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1D1964310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1964354(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel21StaticRVCClusterGroupV7CommandO8TemplateO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1D196439C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 17))
  {
    return (*a1 + 60);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D19643F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *(result + 16) = 0;
    *result = a2 - 60;
    *(result + 8) = 0;
    if (a3 >= 0x3C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1D1964454(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_1D1964524()
{
  result = qword_1EC647680;
  if (!qword_1EC647680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647680);
  }

  return result;
}

unint64_t sub_1D196457C()
{
  result = qword_1EC647688;
  if (!qword_1EC647688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647688);
  }

  return result;
}

unint64_t sub_1D19645D4()
{
  result = qword_1EC647690;
  if (!qword_1EC647690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647690);
  }

  return result;
}

unint64_t sub_1D196462C()
{
  result = qword_1EC647698;
  if (!qword_1EC647698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647698);
  }

  return result;
}

unint64_t sub_1D1964684()
{
  result = qword_1EC6476A0;
  if (!qword_1EC6476A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476A0);
  }

  return result;
}

unint64_t sub_1D19646DC()
{
  result = qword_1EC6476A8;
  if (!qword_1EC6476A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476A8);
  }

  return result;
}

unint64_t sub_1D1964734()
{
  result = qword_1EC6476B0;
  if (!qword_1EC6476B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476B0);
  }

  return result;
}

unint64_t sub_1D196478C()
{
  result = qword_1EC6476B8;
  if (!qword_1EC6476B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476B8);
  }

  return result;
}

unint64_t sub_1D19647E4()
{
  result = qword_1EC6476C0;
  if (!qword_1EC6476C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476C0);
  }

  return result;
}

unint64_t sub_1D196483C()
{
  result = qword_1EC6476C8;
  if (!qword_1EC6476C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476C8);
  }

  return result;
}

unint64_t sub_1D1964894()
{
  result = qword_1EC6476D0;
  if (!qword_1EC6476D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476D0);
  }

  return result;
}

unint64_t sub_1D19648EC()
{
  result = qword_1EC6476D8;
  if (!qword_1EC6476D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476D8);
  }

  return result;
}

unint64_t sub_1D1964944()
{
  result = qword_1EC6476E0;
  if (!qword_1EC6476E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476E0);
  }

  return result;
}

unint64_t sub_1D196499C()
{
  result = qword_1EC6476E8;
  if (!qword_1EC6476E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476E8);
  }

  return result;
}

unint64_t sub_1D19649F4()
{
  result = qword_1EC6476F0;
  if (!qword_1EC6476F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476F0);
  }

  return result;
}

unint64_t sub_1D1964A4C()
{
  result = qword_1EC6476F8;
  if (!qword_1EC6476F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6476F8);
  }

  return result;
}

unint64_t sub_1D1964AA4()
{
  result = qword_1EC647700;
  if (!qword_1EC647700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647700);
  }

  return result;
}

unint64_t sub_1D1964AFC()
{
  result = qword_1EC647708;
  if (!qword_1EC647708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647708);
  }

  return result;
}

unint64_t sub_1D1964B54()
{
  result = qword_1EC647710;
  if (!qword_1EC647710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647710);
  }

  return result;
}

unint64_t sub_1D1964BAC()
{
  result = qword_1EC647718;
  if (!qword_1EC647718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647718);
  }

  return result;
}

unint64_t sub_1D1964C04()
{
  result = qword_1EC647720;
  if (!qword_1EC647720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647720);
  }

  return result;
}

uint64_t sub_1D1964C58(uint64_t a1)
{
  if (a1)
  {
    v1 = a1 + 64;
    v2 = 1 << *(a1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(a1 + 64);
    v5 = (v2 + 63) >> 6;

    v7 = 0;
    for (i = MEMORY[0x1E69E7CC0]; v4; i = v25)
    {
      v25 = i;
      v9 = v7;
LABEL_10:
      v10 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v11 = v10 | (v9 << 6);
      v12 = *(*(a1 + 48) + 8 * v11);
      v13 = *(a1 + 56) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v12;
      v17 = inited + 32;
      *(inited + 40) = v14;
      *(inited + 48) = v15;
      v18 = sub_1D18D6FA8(inited);
      swift_setDeallocating();
      sub_1D1741AF8(v14, v15);
      sub_1D1741A30(v17, &qword_1EC6474E8, &unk_1D1E86820);
      v19 = sub_1D1E692AC();
      v20 = sub_1D1E692CC();
      v21 = sub_1D1E692CC();
      v22 = [objc_opt_self() attributePathWithEndpointID:v19 clusterID:v20 attributeID:v21];

      v23 = _s13HomeDataModel13MatterCommandPAAE15_expectedValues3for19matterAttributePathSaySDySSs8Sendable_pGGSDySo18MTRAttributeIDTypeVAA0djB7BuilderOG_So0mK0CtF_0(v18, v22);

      result = sub_1D17A386C(v23);
    }

    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v5)
      {

        return i;
      }

      v4 = *(v1 + 8 * v9);
      ++v7;
      if (v4)
      {
        v25 = i;
        v7 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D1964E7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x755265676E616863 && a2 == 0xED000065646F4D6ELL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573756170 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D75736572 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBE870 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F527463656C6573 && a2 == 0xEB00000000736D6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6165724170696B73 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D6F486F67 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

void StaticRVCClusterGroup.OperationalErrorState.init(rawValue:)(uint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v3 = a1;
  if (a1 >= 4u)
  {
    v4 = a1;
    StaticRVCClusterGroup.OperationalErrorState.RVC.init(rawValue:)(a1, &v12);
    if (v12 == 15)
    {
      if (v4 >= 0x40u)
      {
        if ((v4 & 0x80) != 0)
        {
          if (v4 <= 0xBFu)
          {
            v3 = v4 | 0x200;
            goto LABEL_21;
          }

          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v11 = sub_1D1E6709C();
          __swift_project_value_buffer(v11, qword_1EE07A0B0);
          v6 = sub_1D1E6707C();
          v7 = sub_1D1E6833C();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_20;
          }

          v8 = swift_slowAlloc();
          *v8 = 16908544;
          v8[4] = v4;
          v9 = "Encountered a value out of range for Operational Error: '%{public}hhu for operational state cluster";
        }

        else
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v10 = sub_1D1E6709C();
          __swift_project_value_buffer(v10, qword_1EE07A0B0);
          v6 = sub_1D1E6707C();
          v7 = sub_1D1E6833C();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_20;
          }

          v8 = swift_slowAlloc();
          *v8 = 16908544;
          v8[4] = v4;
          v9 = "Encountered an unknown value in the range for Cluster Operational Errors: '%{public}hhu for operational state cluster";
        }
      }

      else
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v5 = sub_1D1E6709C();
        __swift_project_value_buffer(v5, qword_1EE07A0B0);
        v6 = sub_1D1E6707C();
        v7 = sub_1D1E6833C();
        if (!os_log_type_enabled(v6, v7))
        {
          goto LABEL_20;
        }

        v8 = swift_slowAlloc();
        *v8 = 16908544;
        v8[4] = v4;
        v9 = "Encountered an unknown value in the range for General Operational Errors: '%{public}hhu for operational state cluster";
      }

      _os_log_impl(&dword_1D16EC000, v6, v7, v9, v8, 5u);
      MEMORY[0x1D3893640](v8, -1, -1);
LABEL_20:

      v3 = -256;
      goto LABEL_21;
    }

    v3 = v12 | 0x100;
  }

LABEL_21:
  *a2 = v3;
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    result = sub_1D196BAF8(result);
    if (result == 10)
    {
      v4 = 266;
    }

    else
    {
      v4 = v2;
    }

    if (result == 9)
    {
      v5 = 265;
    }

    else
    {
      v5 = v4;
    }

    if (result == 7)
    {
      v6 = 263;
    }

    else
    {
      v6 = 264;
    }

    if (result == 6)
    {
      v7 = 262;
    }

    else
    {
      v7 = v6;
    }

    if (result <= 8u)
    {
      v5 = v7;
    }

    if (result == 4)
    {
      v8 = 260;
    }

    else
    {
      v8 = 261;
    }

    if (result == 3)
    {
      v9 = 259;
    }

    else
    {
      v9 = v8;
    }

    if (result == 1)
    {
      v10 = 257;
    }

    else
    {
      v10 = 258;
    }

    if (result)
    {
      v11 = v10;
    }

    else
    {
      v11 = 256;
    }

    if (result > 2u)
    {
      v11 = v9;
    }

    if (result <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  *(a2 + 2) = v2 == 0;
  return result;
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 1u)
  {
    if (!result)
    {
      v3 = 0;
      v2 = 1;
      goto LABEL_13;
    }

    if (result == 1)
    {
      v2 = 0;
      v3 = 256;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0;
    v3 = result;
    goto LABEL_13;
  }

  if (result == 2)
  {
    v2 = 0;
    v3 = 257;
    goto LABEL_13;
  }

  if (result == 3)
  {
    v2 = 0;
    v3 = 258;
    goto LABEL_13;
  }

  if (result != 64)
  {
    goto LABEL_12;
  }

  v2 = 0;
  v3 = 259;
LABEL_13:
  *a2 = v3;
  *(a2 + 2) = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.Common.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if ((result & 0xFC) != 0)
  {
    v2 = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.RVC.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = (result - 64);
  if (v2 >= 0xF)
  {
    LOBYTE(v2) = 15;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D19655E8()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1965660()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.rawValue.getter()
{
  if (v0[1] == 1)
  {
    return *v0 + 64;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1D1965794()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = MEMORY[0x1E69E7CC0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D177EC90(0, *(v0 + 16) + 1, 1, v0);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1D177EC90((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  *&v1[2 * v3 + 32] = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D177EC90(0, *(v1 + 2) + 1, 1, v1);
  }

  v5 = *(v1 + 2);
  v4 = *(v1 + 3);
  if (v5 >= v4 >> 1)
  {
    v1 = sub_1D177EC90((v4 > 1), v5 + 1, 1, v1);
  }

  *(v1 + 2) = v5 + 1;
  *&v1[2 * v5 + 32] = 2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1D177EC90(0, *(v1 + 2) + 1, 1, v1);
  }

  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v1 = sub_1D177EC90((v6 > 1), v7 + 1, 1, v1);
  }

  *(v1 + 2) = v7 + 1;
  *&v1[2 * v7 + 32] = 3;
  sub_1D178D838(0, 15, 0);
  v8 = 0;
  v9 = v0;
  v10 = *(v0 + 16);
  v11 = 2 * v10;
  do
  {
    v12 = byte_1F4D653A8[v8 + 32];
    v17 = v9;
    v13 = *(v9 + 24);
    v14 = v10 + 1;
    if (v10 >= v13 >> 1)
    {
      sub_1D178D838((v13 > 1), v10 + 1, 1);
      v9 = v17;
    }

    ++v8;
    *(v9 + 16) = v14;
    v15 = v9 + v11;
    *(v15 + 32) = v12;
    *(v15 + 33) = 1;
    v11 += 2;
    v10 = v14;
  }

  while (v8 != 15);
  result = sub_1D17A4AF4(v9);
  qword_1EC647730 = v1;
  return result;
}

uint64_t static StaticRVCClusterGroup.OperationalErrorState.knownErrors.getter()
{
  if (qword_1EC642258 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1965A2C()
{
  v1 = 6518386;
  if (*v0 != 1)
  {
    v1 = 0x726F646E6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6D6D6F63;
  }
}

uint64_t sub_1D1965A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D196DED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1965AA0(uint64_t a1)
{
  v2 = sub_1D196BBCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965ADC(uint64_t a1)
{
  v2 = sub_1D196BBCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1965B18(uint64_t a1)
{
  v2 = sub_1D196BD1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965B54(uint64_t a1)
{
  v2 = sub_1D196BD1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1965B90(uint64_t a1)
{
  v2 = sub_1D196BC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965BCC(uint64_t a1)
{
  v2 = sub_1D196BC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1965C08(uint64_t a1)
{
  v2 = sub_1D196BC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1965C44(uint64_t a1)
{
  v2 = sub_1D196BC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647738, &qword_1D1E868C0);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647740, &qword_1D1E868C8);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647748, &qword_1D1E868D0);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647750, &qword_1D1E868D8);
  v15 = *(v35 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v18 = &v27 - v17;
  v34 = *v2;
  v19 = v2[1];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D196BBCC();
  sub_1D1E6930C();
  if (v19)
  {
    if (v19 == 1)
    {
      v39 = 1;
      sub_1D196BC74();
      v21 = v35;
      sub_1D1E68DFC();
      v38 = v34;
      sub_1D196BCC8();
      v22 = v30;
      sub_1D1E68F1C();
      v23 = *(v29 + 8);
      v24 = v10;
    }

    else
    {
      v40 = 2;
      sub_1D196BC20();
      v25 = v31;
      v21 = v35;
      sub_1D1E68DFC();
      v22 = v33;
      sub_1D1E68F3C();
      v23 = *(v32 + 8);
      v24 = v25;
    }

    v23(v24, v22);
  }

  else
  {
    v37 = 0;
    sub_1D196BD1C();
    v21 = v35;
    sub_1D1E68DFC();
    v36 = v34;
    sub_1D196BD70();
    sub_1D1E68F1C();
    (*(v28 + 8))(v14, v11);
  }

  return (*(v15 + 8))(v18, v21);
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.hash(into:)()
{
  v1 = *v0;
  if (!v0[1])
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v2);
    return sub_1D1E6922C();
  }

  if (v0[1] != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  return sub_1D1E6922C();
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647788, &qword_1D1E868E0);
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647790, &qword_1D1E868E8);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647798, &qword_1D1E868F0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477A0, &unk_1D1E868F8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D196BBCC();
  v21 = v54;
  sub_1D1E692FC();
  if (!v21)
  {
    v45 = v10;
    v46 = 0;
    v22 = v51;
    v23 = v52;
    v54 = v15;
    v24 = v53;
    v25 = v18;
    v26 = sub_1D1E68DDC();
    v27 = (2 * *(v26 + 16)) | 1;
    v56 = v26;
    v57 = v26 + 32;
    v58 = 0;
    v59 = v27;
    v28 = sub_1D18085C8();
    if (v28 == 3 || v58 != v59 >> 1)
    {
      v31 = sub_1D1E688EC();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v33 = &type metadata for StaticRVCClusterGroup.OperationalErrorState;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v54 + 8))(v18, v14);
    }

    else
    {
      v60 = v28;
      if (v28)
      {
        if (v28 == 1)
        {
          v61 = 1;
          sub_1D196BC74();
          v29 = v46;
          sub_1D1E68C4C();
          if (!v29)
          {
            sub_1D196BDC4();
            v30 = v48;
            sub_1D1E68D7C();
            (*(v49 + 8))(v9, v30);
            (*(v54 + 8))(v18, v14);
            swift_unknownObjectRelease();
            v43 = v61;
LABEL_17:
            *v24 = v43;
            v24[1] = v60;
            return __swift_destroy_boxed_opaque_existential_1(v55);
          }

          (*(v54 + 8))(v18, v14);
          goto LABEL_10;
        }

        v61 = 2;
        sub_1D196BC20();
        v37 = v18;
        v40 = v46;
        sub_1D1E68C4C();
        if (!v40)
        {
          v41 = sub_1D1E68D9C();
          v42 = v54;
          v43 = v41;
          (*(v50 + 8))(v22, v23);
          (*(v42 + 8))(v18, v14);
          swift_unknownObjectRelease();
          goto LABEL_17;
        }
      }

      else
      {
        v61 = 0;
        sub_1D196BD1C();
        v36 = v13;
        v37 = v25;
        v38 = v46;
        sub_1D1E68C4C();
        if (!v38)
        {
          sub_1D196BE18();
          v39 = v45;
          sub_1D1E68D7C();
          (*(v47 + 8))(v36, v39);
          (*(v54 + 8))(v25, v14);
          swift_unknownObjectRelease();
          v43 = v61;
          goto LABEL_17;
        }
      }

      (*(v54 + 8))(v37, v14);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D1966820()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19668A4()
{
  v1 = *v0;
  if (!v0[1])
  {
    v2 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v2);
    return sub_1D1E6922C();
  }

  if (v0[1] != 1)
  {
    v2 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
  return sub_1D1E6922C();
}

uint64_t sub_1D1966904()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (!v2)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x1D3892850](v3);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1D3892850](1);
LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.rawValue.getter()
{
  if (v0[1] == 1)
  {
    return byte_1D1E8847A[*v0];
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_1D19669E0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    v7 = 0x4C79726574746162;
    if (a1 != 10)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6E61547265746177;
    if (a1 != 6)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x726F707075736E75;
    v2 = 0x6B63757473;
    v3 = 0x4D6E694274737564;
    if (a1 != 4)
    {
      v3 = 0x466E694274737564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x46636972656E6567;
    if (a1 != 1)
    {
      v4 = 0x4964696C61766E69;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1966BB4(uint64_t a1)
{
  v2 = sub_1D196BF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966BF0(uint64_t a1)
{
  v2 = sub_1D196BF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D196DFE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1966C5C(uint64_t a1)
{
  v2 = sub_1D196BE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966C98(uint64_t a1)
{
  v2 = sub_1D196BE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966CD4(uint64_t a1)
{
  v2 = sub_1D196C0B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966D10(uint64_t a1)
{
  v2 = sub_1D196C0B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966D4C(uint64_t a1)
{
  v2 = sub_1D196C10C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966D88(uint64_t a1)
{
  v2 = sub_1D196C10C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966DC4(uint64_t a1)
{
  v2 = sub_1D196C208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966E00(uint64_t a1)
{
  v2 = sub_1D196C208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966E3C(uint64_t a1)
{
  v2 = sub_1D196C1B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966E78(uint64_t a1)
{
  v2 = sub_1D196C1B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966EB4(uint64_t a1)
{
  v2 = sub_1D196BF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966EF0(uint64_t a1)
{
  v2 = sub_1D196BF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966F2C(uint64_t a1)
{
  v2 = sub_1D196C160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966F68(uint64_t a1)
{
  v2 = sub_1D196C160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1966FA4(uint64_t a1)
{
  v2 = sub_1D196BEC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1966FE0(uint64_t a1)
{
  v2 = sub_1D196BEC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196701C(uint64_t a1)
{
  v2 = sub_1D196C25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1967058(uint64_t a1)
{
  v2 = sub_1D196C25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1967094(uint64_t a1)
{
  v2 = sub_1D196C064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19670D0(uint64_t a1)
{
  v2 = sub_1D196C064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196710C(uint64_t a1)
{
  v2 = sub_1D196BFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1967148(uint64_t a1)
{
  v2 = sub_1D196BFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1967184(uint64_t a1)
{
  v2 = sub_1D196C010();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19671C0(uint64_t a1)
{
  v2 = sub_1D196C010();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477B8, &qword_1D1E86908);
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477C0, &qword_1D1E86910);
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477C8, &qword_1D1E86918);
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477D0, &qword_1D1E86920);
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477D8, &qword_1D1E86928);
  v79 = *(v15 - 8);
  v80 = v15;
  v16 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477E0, &qword_1D1E86930);
  v76 = *(v18 - 8);
  v77 = v18;
  v19 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v58 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477E8, &qword_1D1E86938);
  v73 = *(v74 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v58 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477F0, &qword_1D1E86940);
  v70 = *(v71 - 8);
  v23 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v58 - v24;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6477F8, &qword_1D1E86948);
  v67 = *(v68 - 8);
  v25 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v58 - v26;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647800, &qword_1D1E86950);
  v64 = *(v65 - 8);
  v27 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v58 - v28;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647808, &qword_1D1E86958);
  v61 = *(v62 - 8);
  v29 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v58 - v30;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647810, &qword_1D1E86960);
  v58 = *(v59 - 8);
  v31 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v33 = &v58 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647818, &qword_1D1E86968);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v58 - v37;
  v39 = *v1;
  v40 = v1[1];
  v41 = a1;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(v41, v43);
  sub_1D196BE6C();
  sub_1D1E6930C();
  if (v40 != 1)
  {
    v94[7] = 11;
    sub_1D196BEC0();
    v47 = v90;
    sub_1D1E68DFC();
    v48 = v92;
    sub_1D1E68F3C();
    (*(v91 + 8))(v47, v48);
    return (*(v35 + 8))(v38, v34);
  }

  if (v39 <= 4)
  {
    if (v39 <= 1)
    {
      if (v39)
      {
        v93[5] = 1;
        sub_1D196C208();
        v57 = v60;
        sub_1D1E68DFC();
        v51 = *(v61 + 8);
        v52 = v57;
        v53 = v93;
      }

      else
      {
        v93[4] = 0;
        sub_1D196C25C();
        sub_1D1E68DFC();
        v51 = *(v58 + 8);
        v52 = v33;
        v53 = &v91;
      }
    }

    else if (v39 == 2)
    {
      v93[6] = 2;
      sub_1D196C1B4();
      v54 = v63;
      sub_1D1E68DFC();
      v51 = *(v64 + 8);
      v52 = v54;
      v53 = v94;
    }

    else if (v39 == 3)
    {
      v93[7] = 3;
      sub_1D196C160();
      v50 = v66;
      sub_1D1E68DFC();
      v51 = *(v67 + 8);
      v52 = v50;
      v53 = &v95;
    }

    else
    {
      v94[0] = 4;
      sub_1D196C10C();
      v56 = v69;
      sub_1D1E68DFC();
      v51 = *(v70 + 8);
      v52 = v56;
      v53 = &v96;
    }

    v45 = *(v53 - 32);
    goto LABEL_26;
  }

  if (v39 > 7)
  {
    if (v39 == 8)
    {
      v94[4] = 8;
      sub_1D196BFBC();
      v44 = v81;
      sub_1D1E68DFC();
      v46 = v82;
      v45 = v83;
    }

    else if (v39 == 9)
    {
      v94[5] = 9;
      sub_1D196BF68();
      v44 = v84;
      sub_1D1E68DFC();
      v46 = v85;
      v45 = v86;
    }

    else
    {
      v94[6] = 10;
      sub_1D196BF14();
      v44 = v87;
      sub_1D1E68DFC();
      v46 = v88;
      v45 = v89;
    }

    goto LABEL_25;
  }

  if (v39 != 5)
  {
    if (v39 == 6)
    {
      v94[2] = 6;
      sub_1D196C064();
      v44 = v75;
      sub_1D1E68DFC();
      v46 = v76;
      v45 = v77;
    }

    else
    {
      v94[3] = 7;
      sub_1D196C010();
      v44 = v78;
      sub_1D1E68DFC();
      v46 = v79;
      v45 = v80;
    }

LABEL_25:
    v51 = *(v46 + 8);
    v52 = v44;
LABEL_26:
    v51(v52, v45);
    return (*(v35 + 8))(v38, v34);
  }

  v94[1] = 5;
  sub_1D196C0B8();
  v55 = v72;
  sub_1D1E68DFC();
  (*(v73 + 8))(v55, v74);
  return (*(v35 + 8))(v38, v34);
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.hash(into:)()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 <= 4u)
    {
      if (*v0 <= 1u)
      {
        v2 = v1 != 0;
      }

      else if (v1 == 2)
      {
        v2 = 2;
      }

      else if (v1 == 3)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else if (*v0 > 7u)
    {
      if (v1 == 8)
      {
        v2 = 8;
      }

      else if (v1 == 9)
      {
        v2 = 9;
      }

      else
      {
        v2 = 10;
      }
    }

    else if (v1 == 5)
    {
      v2 = 5;
    }

    else if (v1 == 6)
    {
      v2 = 6;
    }

    else
    {
      v2 = 7;
    }

    return MEMORY[0x1D3892850](v2);
  }

  else
  {
    MEMORY[0x1D3892850](11);
    return sub_1D1E6922C();
  }
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1D1E6920C();
  StaticRVCClusterGroup.RunModeCommandError.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v125 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647888, &qword_1D1E86970);
  v4 = *(v3 - 8);
  v113 = v3;
  v114 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v87 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647890, &qword_1D1E86978);
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v119 = &v87 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647898, &qword_1D1E86980);
  v109 = *(v110 - 8);
  v10 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v116 = &v87 - v11;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478A0, &qword_1D1E86988);
  v107 = *(v108 - 8);
  v12 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v118 = &v87 - v13;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478A8, &qword_1D1E86990);
  v105 = *(v106 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v117 = &v87 - v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478B0, &qword_1D1E86998);
  v103 = *(v104 - 8);
  v16 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v124 = &v87 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478B8, &qword_1D1E869A0);
  v102 = *(v101 - 8);
  v18 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v123 = &v87 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478C0, &qword_1D1E869A8);
  v100 = *(v99 - 8);
  v20 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v122 = &v87 - v21;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478C8, &qword_1D1E869B0);
  v97 = *(v98 - 8);
  v22 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v121 = &v87 - v23;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478D0, &qword_1D1E869B8);
  v95 = *(v96 - 8);
  v24 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v115 = &v87 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478D8, &qword_1D1E869C0);
  v93 = *(v94 - 8);
  v26 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v28 = &v87 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478E0, &qword_1D1E869C8);
  v92 = *(v29 - 8);
  v30 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v87 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478E8, &qword_1D1E869D0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v87 - v36;
  v39 = a1[3];
  v38 = a1[4];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D196BE6C();
  v40 = v126;
  sub_1D1E692FC();
  if (!v40)
  {
    v89 = v32;
    v88 = v29;
    v90 = v28;
    v42 = v121;
    v41 = v122;
    v44 = v123;
    v43 = v124;
    v91 = 0;
    v126 = v34;
    v45 = v125;
    v46 = v37;
    v47 = sub_1D1E68DDC();
    v48 = (2 * *(v47 + 16)) | 1;
    v128 = v47;
    v129 = v47 + 32;
    v130 = 0;
    v131 = v48;
    v49 = sub_1D18085C0();
    if (v49 == 12 || v130 != v131 >> 1)
    {
      v54 = v33;
      v55 = sub_1D1E688EC();
      swift_allocError();
      v57 = v56;
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
      *v57 = &type metadata for StaticRVCClusterGroup.RunModeCommandError;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
      swift_willThrow();
      (*(v126 + 8))(v46, v54);
    }

    else
    {
      if (v49 <= 5u)
      {
        if (v49 <= 2u)
        {
          if (v49)
          {
            if (v49 == 1)
            {
              v132 = 1;
              sub_1D196C208();
              v50 = v90;
              v51 = v37;
              v52 = v91;
              sub_1D1E68C4C();
              if (!v52)
              {
                (*(v93 + 8))(v50, v94);
                (*(v126 + 8))(v37, v33);
                swift_unknownObjectRelease();
                v53 = 1;
LABEL_28:
                v67 = 1;
                v61 = v45;
                goto LABEL_46;
              }
            }

            else
            {
              v132 = 2;
              sub_1D196C1B4();
              v80 = v115;
              v51 = v37;
              v81 = v91;
              sub_1D1E68C4C();
              if (!v81)
              {
                (*(v95 + 8))(v80, v96);
                (*(v126 + 8))(v37, v33);
                swift_unknownObjectRelease();
                v67 = 1;
                v53 = 2;
                v61 = v45;
                goto LABEL_46;
              }
            }
          }

          else
          {
            v132 = 0;
            sub_1D196C25C();
            v74 = v89;
            v51 = v37;
            v75 = v91;
            sub_1D1E68C4C();
            if (!v75)
            {
              (*(v92 + 8))(v74, v88);
              (*(v126 + 8))(v37, v33);
              swift_unknownObjectRelease();
              v53 = 0;
              goto LABEL_28;
            }
          }

          (*(v126 + 8))(v51, v33);
          goto LABEL_11;
        }

        v68 = v33;
        v62 = v126;
        if (v49 == 3)
        {
          v132 = 3;
          sub_1D196C160();
          v66 = v68;
          v63 = v37;
          v77 = v91;
          sub_1D1E68C4C();
          if (!v77)
          {
            (*(v97 + 8))(v42, v98);
            (*(v62 + 8))(v37, v68);
            swift_unknownObjectRelease();
            v67 = 1;
            v53 = 3;
            v61 = v125;
            goto LABEL_46;
          }
        }

        else
        {
          v63 = v37;
          if (v49 == 4)
          {
            v132 = 4;
            sub_1D196C10C();
            v66 = v68;
            v69 = v91;
            sub_1D1E68C4C();
            v61 = v125;
            if (!v69)
            {
              (*(v100 + 8))(v41, v99);
              (*(v62 + 8))(v37, v68);
              swift_unknownObjectRelease();
              v67 = 1;
              v53 = 4;
              goto LABEL_46;
            }
          }

          else
          {
            v132 = 5;
            sub_1D196C0B8();
            v66 = v68;
            v83 = v91;
            sub_1D1E68C4C();
            v61 = v125;
            if (!v83)
            {
              (*(v102 + 8))(v44, v101);
              (*(v62 + 8))(v37, v68);
              swift_unknownObjectRelease();
              v67 = 1;
              v53 = 5;
              goto LABEL_46;
            }
          }
        }

LABEL_40:
        (*(v62 + 8))(v63, v66);
        goto LABEL_11;
      }

      if (v49 <= 8u)
      {
        v60 = v33;
        v61 = v45;
        v62 = v126;
        v63 = v37;
        if (v49 == 6)
        {
          v132 = 6;
          sub_1D196C064();
          v66 = v60;
          v76 = v91;
          sub_1D1E68C4C();
          if (!v76)
          {
            (*(v103 + 8))(v43, v104);
            (*(v62 + 8))(v37, v60);
            swift_unknownObjectRelease();
            v67 = 1;
            v53 = 6;
            goto LABEL_46;
          }
        }

        else
        {
          v64 = v91;
          if (v49 == 7)
          {
            v132 = 7;
            sub_1D196C010();
            v65 = v117;
            v66 = v60;
            sub_1D1E68C4C();
            if (!v64)
            {
              (*(v105 + 8))(v65, v106);
              (*(v62 + 8))(v63, v60);
              swift_unknownObjectRelease();
              v67 = 1;
              v53 = 7;
LABEL_46:
              *v61 = v53;
              v61[1] = v67;
              return __swift_destroy_boxed_opaque_existential_1(v127);
            }
          }

          else
          {
            v132 = 8;
            sub_1D196BFBC();
            v82 = v118;
            v66 = v60;
            sub_1D1E68C4C();
            if (!v64)
            {
              (*(v107 + 8))(v82, v108);
              (*(v62 + 8))(v63, v60);
              swift_unknownObjectRelease();
              v67 = 1;
              v53 = 8;
              goto LABEL_46;
            }
          }
        }

        goto LABEL_40;
      }

      v61 = v45;
      v70 = v126;
      v71 = v37;
      if (v49 == 9)
      {
        v132 = 9;
        sub_1D196BF68();
        v78 = v116;
        v79 = v91;
        sub_1D1E68C4C();
        if (!v79)
        {
          (*(v109 + 8))(v78, v110);
          (*(v70 + 8))(v37, v33);
          swift_unknownObjectRelease();
          v67 = 1;
          v53 = 9;
          goto LABEL_46;
        }
      }

      else
      {
        v72 = v91;
        if (v49 == 10)
        {
          v132 = 10;
          sub_1D196BF14();
          v73 = v119;
          sub_1D1E68C4C();
          if (!v72)
          {
            (*(v111 + 8))(v73, v112);
            (*(v70 + 8))(v71, v33);
            swift_unknownObjectRelease();
            v67 = 1;
            v53 = 10;
            goto LABEL_46;
          }
        }

        else
        {
          v132 = 11;
          sub_1D196BEC0();
          v84 = v120;
          sub_1D1E68C4C();
          if (!v72)
          {
            v85 = v33;
            v86 = v113;
            v53 = sub_1D1E68D9C();
            (*(v114 + 8))(v84, v86);
            (*(v70 + 8))(v71, v85);
            swift_unknownObjectRelease();
            v67 = 0;
            goto LABEL_46;
          }
        }
      }

      (*(v70 + 8))(v71, v33);
    }

LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v127);
}

uint64_t sub_1D1968F98()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1D1E6920C();
  StaticRVCClusterGroup.RunModeCommandError.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1968FF0()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1D1E6920C();
  StaticRVCClusterGroup.RunModeCommandError.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.rawValue.getter()
{
  if (v0[1])
  {
    return 0x40030201u >> (8 * *v0);
  }

  else
  {
    return *v0;
  }
}

BOOL static StaticRVCClusterGroup.CleanModeCommandError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      if (*a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = a2[1];
      }

      return (v5 & 1) != 0;
    }

    if (v3 == 1)
    {
      v8 = a2[1];
    }

    else
    {
      v8 = 0;
    }

    return (v8 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v7 = a2[1];
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v3 > 2)
  {
    v9 = a2[1];
  }

  else
  {
    v9 = 0;
  }

  return (v9 & 1) != 0;
}

uint64_t sub_1D1969128(uint64_t a1)
{
  v2 = sub_1D196C358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1969164(uint64_t a1)
{
  v2 = sub_1D196C358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19691A0()
{
  v1 = *v0;
  v2 = 0x726F707075736E75;
  v3 = 0x4964696C61766E69;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x46636972656E6567;
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

uint64_t sub_1D1969264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D196E3E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D196928C(uint64_t a1)
{
  v2 = sub_1D196C2B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19692C8(uint64_t a1)
{
  v2 = sub_1D196C2B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1969304(uint64_t a1)
{
  v2 = sub_1D196C400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1969340(uint64_t a1)
{
  v2 = sub_1D196C400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196937C(uint64_t a1)
{
  v2 = sub_1D196C3AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19693B8(uint64_t a1)
{
  v2 = sub_1D196C3AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19693F4(uint64_t a1)
{
  v2 = sub_1D196C304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1969430(uint64_t a1)
{
  v2 = sub_1D196C304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D196946C(uint64_t a1)
{
  v2 = sub_1D196C454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19694A8(uint64_t a1)
{
  v2 = sub_1D196C454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478F0, &qword_1D1E869D8);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6478F8, &qword_1D1E869E0);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647900, &qword_1D1E869E8);
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647908, &qword_1D1E869F0);
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v35 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647910, &qword_1D1E869F8);
  v36 = *(v16 - 8);
  v37 = v16;
  v17 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647918, &qword_1D1E86A00);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v35 - v23;
  v25 = *v2;
  v26 = v2[1];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D196C2B0();
  sub_1D1E6930C();
  if (v26 != 1)
  {
    v54 = 4;
    sub_1D196C304();
    v29 = v47;
    sub_1D1E68DFC();
    v30 = v49;
    sub_1D1E68F3C();
    (*(v48 + 8))(v29, v30);
    return (*(v21 + 8))(v24, v20);
  }

  v28 = v20;
  if (v25 > 1)
  {
    if (v25 == 2)
    {
      v52 = 2;
      sub_1D196C3AC();
      v32 = v41;
      sub_1D1E68DFC();
      v34 = v42;
      v33 = v43;
    }

    else
    {
      v53 = 3;
      sub_1D196C358();
      v32 = v44;
      sub_1D1E68DFC();
      v34 = v45;
      v33 = v46;
    }

    goto LABEL_10;
  }

  if (v25)
  {
    v51 = 1;
    sub_1D196C400();
    v32 = v38;
    sub_1D1E68DFC();
    v34 = v39;
    v33 = v40;
LABEL_10:
    (*(v34 + 8))(v32, v33);
    return (*(v21 + 8))(v24, v28);
  }

  v50 = 0;
  sub_1D196C454();
  sub_1D1E68DFC();
  (*(v36 + 8))(v19, v37);
  return (*(v21 + 8))(v24, v28);
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.hash(into:)()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = v1 != 0;
    }

    return MEMORY[0x1D3892850](v2);
  }

  else
  {
    MEMORY[0x1D3892850](4);
    return sub_1D1E6922C();
  }
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        MEMORY[0x1D3892850](2);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v1)
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647950, &qword_1D1E86A08);
  v59 = *(v57 - 8);
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v49 - v4;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647958, &qword_1D1E86A10);
  v56 = *(v58 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v49 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647960, &qword_1D1E86A18);
  v52 = *(v55 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647968, &qword_1D1E86A20);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647970, &qword_1D1E86A28);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647978, &qword_1D1E86A30);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D196C2B0();
  v24 = v65;
  sub_1D1E692FC();
  if (!v24)
  {
    v25 = v16;
    v50 = v13;
    v27 = v61;
    v26 = v62;
    v65 = v18;
    v28 = v63;
    v29 = sub_1D1E68DDC();
    v30 = (2 * *(v29 + 16)) | 1;
    v66 = v29;
    v67 = v29 + 32;
    v68 = 0;
    v69 = v30;
    v31 = sub_1D18085CC();
    if (v31 != 5 && v68 == v69 >> 1)
    {
      if (v31 <= 1u)
      {
        if (v31)
        {
          v70 = 1;
          sub_1D196C400();
          sub_1D1E68C4C();
          v45 = v65;
          (*(v53 + 8))(v12, v54);
          (*(v45 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v47 = 1;
        }

        else
        {
          v70 = 0;
          sub_1D196C454();
          v40 = v25;
          sub_1D1E68C4C();
          v41 = v65;
          (*(v51 + 8))(v40, v50);
          (*(v41 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v47 = 0;
        }

        v46 = 1;
      }

      else
      {
        if (v31 != 2)
        {
          if (v31 == 3)
          {
            v70 = 3;
            sub_1D196C358();
            sub_1D1E68C4C();
            v32 = v65;
            (*(v56 + 8))(v26, v58);
            (*(v32 + 8))(v21, v17);
            swift_unknownObjectRelease();
            v46 = 1;
            v47 = 3;
          }

          else
          {
            v70 = 4;
            sub_1D196C304();
            v42 = v60;
            sub_1D1E68C4C();
            v43 = v65;
            v44 = v57;
            v48 = sub_1D1E68D9C();
            (*(v59 + 8))(v42, v44);
            (*(v43 + 8))(v21, v17);
            swift_unknownObjectRelease();
            v47 = v48;
            v46 = 0;
          }

          v28 = v63;
          v38 = v64;
          goto LABEL_19;
        }

        v70 = 2;
        sub_1D196C3AC();
        sub_1D1E68C4C();
        (*(v52 + 8))(v27, v55);
        (*(v65 + 8))(v21, v17);
        swift_unknownObjectRelease();
        v46 = 1;
        v47 = 2;
      }

      v38 = v64;
LABEL_19:
      *v28 = v47;
      v28[1] = v46;
      return __swift_destroy_boxed_opaque_existential_1(v38);
    }

    v33 = sub_1D1E688EC();
    swift_allocError();
    v35 = v34;
    v36 = v21;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v35 = &type metadata for StaticRVCClusterGroup.CleanModeCommandError;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v65 + 8))(v36, v17);
    swift_unknownObjectRelease();
  }

  v38 = v64;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

BOOL sub_1D196A3A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 > 1u)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v8 = a2[1];
      }

      else
      {
        v8 = 0;
      }

      return (v8 & 1) != 0;
    }

    v5 = v3 == 2;
  }

  else if (*a1)
  {
    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

uint64_t sub_1D196A418()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        MEMORY[0x1D3892850](2);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v1)
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D196A4C0()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = v1 != 0;
    }

    return MEMORY[0x1D3892850](v2);
  }

  else
  {
    MEMORY[0x1D3892850](4);
    return sub_1D1E6922C();
  }
}

uint64_t sub_1D196A53C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  if (v2 == 1)
  {
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        MEMORY[0x1D3892850](2);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v1)
    {
      MEMORY[0x1D3892850](1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
    }
  }

  else
  {
    MEMORY[0x1D3892850](4);
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D196A610(uint64_t a1)
{
  v3 = *v1;
  if (v1[1])
  {
    if (v1[1] == 1)
    {
      switch(*v1)
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
          return sub_1D196A9CC(a1);
        case 9u:
          v3 = static String.hfLocalized(_:)(0xD000000000000043, 0x80000001D1EBED00);
          v9 = "MatterCommandError-RVC-OperationalState-CannotReachTargetArea-Description";
          goto LABEL_19;
        case 0xAu:
          v3 = static String.hfLocalized(_:)(0xD000000000000040, 0x80000001D1EBEC60);
          v10 = "erTankFull-Title";
          v11 = 0xD000000000000046;
          break;
        case 0xBu:
          v3 = static String.hfLocalized(_:)(0xD000000000000043, 0x80000001D1EBEBC0);
          v9 = "MatterCommandError-RVC-OperationalState-DirtyWaterTankMissing-Description";
          goto LABEL_19;
        case 0xCu:
          v3 = static String.hfLocalized(_:)(0xD00000000000003ALL, 0x80000001D1EBEB30);
          v10 = "alState-WheelsJammed-Title";
          v11 = 0xD000000000000040;
          break;
        case 0xDu:
          v3 = static String.hfLocalized(_:)(0xD000000000000039, 0x80000001D1EBEAB0);
          v10 = "alState-BrushJammed-Title";
          v11 = 0xD00000000000003FLL;
          break;
        case 0xEu:
          v3 = static String.hfLocalized(_:)(0xD000000000000046, 0x80000001D1EBEA10);
          v4 = "MatterCommandError-RVC-OperationalState-NavigationSensorObscured-Description";
          goto LABEL_15;
        default:
          v3 = static String.hfLocalized(_:)(0xD000000000000046, 0x80000001D1EBEDA0);
          v4 = "MatterCommandError-RVC-OperationalState-FailedToFindChargingDock-Description";
LABEL_15:
          v10 = (v4 - 32);
          v11 = 0xD00000000000004CLL;
          break;
      }

LABEL_20:
      sub_1D1A15B88(v11, v10 | 0x8000000000000000);
      return v3;
    }

    type metadata accessor for MatterCommandError();
    sub_1D196E660();
    v5 = swift_allocError();
    sub_1D196E6B8(a1, v6);
    v7 = sub_1D1A1ECDC(v5, v3 | 0x200);
  }

  else
  {
    if (*v1 <= 1u)
    {
      if (!*v1)
      {
        return v3;
      }

      v3 = static String.hfLocalized(_:)(0xD000000000000043, 0x80000001D1EBEE40);
      v9 = "MatterCommandError-RVC-OperationalState-UnableToStartOrResume-Description";
LABEL_19:
      v10 = (v9 - 32);
      v11 = 0xD000000000000049;
      goto LABEL_20;
    }

    type metadata accessor for MatterCommandError();
    sub_1D196E660();
    v5 = swift_allocError();
    sub_1D196E6B8(a1, v8);
    if (v3 == 2)
    {
      v7 = sub_1D1A1ECDC(v5, 2);
    }

    else
    {
      v7 = sub_1D1A1ECDC(v5, 3);
    }
  }

  v3 = v7;

  return v3;
}

uint64_t sub_1D196A9CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v51 - v15;
  v17 = type metadata accessor for StaticRVCClusterGroup();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[1] != 1)
  {
    goto LABEL_16;
  }

  v23 = *v1;
  if (v23 <= 4)
  {
    if (*v1 > 1u)
    {
      if (v23 != 2)
      {
        if (v23 != 3)
        {
          v24 = static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EBF2D0);
          v25 = "MatterCommandError-RVC-RunMode-DustBinMissing-Description";
          goto LABEL_22;
        }

        v24 = static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EBF350);
        v26 = "or-RVC-RunMode-Stuck-Title";
        v27 = 0xD000000000000030;
        goto LABEL_23;
      }

      v32 = v20;
      v33 = type metadata accessor for MatterCommandError();
      sub_1D1741C08(a1 + *(v33 + 32), v7, &qword_1EC644780, &qword_1D1E91AA0);
      v34 = type metadata accessor for StaticEndpoint();
      if ((*(*(v34 - 8) + 48))(v7, 1, v34) == 1)
      {
        v35 = &qword_1EC644780;
        v36 = &qword_1D1E91AA0;
        v37 = v7;
      }

      else
      {
        sub_1D1741C08(&v7[*(v34 + 40)], v14, &qword_1EC644778, &unk_1D1E75B10);
        sub_1D196E71C(v7, type metadata accessor for StaticEndpoint);
        if ((*(v18 + 48))(v14, 1, v32) != 1)
        {
          v46 = *&v14[*(v32 + 32)];
          sub_1D196E71C(v14, type metadata accessor for StaticRVCClusterGroup);
          v51[6] = v46;
          return sub_1D196A610(a1);
        }

        v35 = &qword_1EC644778;
        v36 = &unk_1D1E75B10;
        v37 = v14;
      }

      sub_1D1741A30(v37, v35, v36);
      sub_1D196E660();
      v28 = swift_allocError();
      sub_1D196E6B8(a1, v44);
      v30 = sub_1D1A1ECE0(v28, 258);
LABEL_32:
      v45 = v30;

      return v45;
    }

    if (!*v1)
    {
      type metadata accessor for MatterCommandError();
      sub_1D196E660();
      v28 = swift_allocError();
      sub_1D196E6B8(a1, v29);
      v30 = sub_1D1A1ECE0(v28, 256);
      goto LABEL_32;
    }

LABEL_16:
    static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
    return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
  }

  if (*v1 <= 7u)
  {
    if (v23 != 5)
    {
      if (v23 == 6)
      {
        v24 = static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EBF1D0);
        v25 = "MatterCommandError-RVC-RunMode-WaterTankEmpty-Description";
LABEL_22:
        v26 = (v25 - 32);
        v27 = 0xD000000000000039;
        goto LABEL_23;
      }

      v24 = static String.hfLocalized(_:)(0xD00000000000002DLL, 0x80000001D1EBF160);
      v38 = "MatterCommandError-RVC-WaterTankMissing-Description";
LABEL_25:
      v39 = (v38 - 32) | 0x8000000000000000;
      v27 = 0xD000000000000033;
      goto LABEL_26;
    }

    v24 = static String.hfLocalized(_:)(0xD000000000000030, 0x80000001D1EBF250);
    v26 = "ustBinFull-Title";
    v27 = 0xD000000000000036;
LABEL_23:
    v39 = v26 | 0x8000000000000000;
LABEL_26:
    sub_1D1A15B88(v27, v39);
    return v24;
  }

  if (v23 == 8)
  {
    v24 = static String.hfLocalized(_:)(0xD00000000000002DLL, 0x80000001D1EBF0F0);
    v38 = "MatterCommandError-RVC-WaterTankLidOpen-Description";
    goto LABEL_25;
  }

  if (v23 == 9)
  {
    v24 = static String.hfLocalized(_:)(0xD000000000000032, 0x80000001D1EBF070);
    v26 = "ngPadMissing-Title";
    v27 = 0xD000000000000038;
    goto LABEL_23;
  }

  v40 = v20;
  v41 = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EBEF40);
  v42 = type metadata accessor for MatterCommandError();
  sub_1D1741C08(a1 + *(v42 + 32), v9, &qword_1EC644780, &qword_1D1E91AA0);
  v43 = type metadata accessor for StaticEndpoint();
  if ((*(*(v43 - 8) + 48))(v9, 1, v43) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
    (*(v18 + 56))(v16, 1, 1, v40);
  }

  else
  {
    sub_1D1741C08(&v9[*(v43 + 40)], v16, &qword_1EC644778, &unk_1D1E75B10);
    sub_1D196E71C(v9, type metadata accessor for StaticEndpoint);
    if ((*(v18 + 48))(v16, 1, v40) != 1)
    {
      sub_1D1963080(v16, v22);
      v47 = v22[*(v40 + 20)];
      if ((v47 - 5) >= 2)
      {
        if (v47 == 3 && (v50 = &v22[*(v40 + 32)], v50[1] == 1) && !*v50)
        {
          v49 = "w-Undocked-Description";
          v48 = 0xD00000000000003ALL;
        }

        else
        {
          v49 = "w-UnknownState-Description";
          v48 = 0xD000000000000036;
        }
      }

      else
      {
        v48 = 0xD000000000000034;
        v49 = "w-CantFindDock-Description";
      }

      sub_1D1A15B88(v48, v49 | 0x8000000000000000);
      sub_1D196E71C(v22, type metadata accessor for StaticRVCClusterGroup);
      return v41;
    }
  }

  sub_1D1741A30(v16, &qword_1EC644778, &unk_1D1E75B10);
  sub_1D1A15B88(0xD00000000000003ALL, 0x80000001D1EBEF70);
  return v41;
}

uint64_t sub_1D196B1D4(uint64_t a1)
{
  if (v1[1] != 1)
  {
    goto LABEL_4;
  }

  if (*v1 <= 1u)
  {
    if (*v1)
    {
LABEL_4:
      static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EBEF10);
      return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EBEEE0);
    }

    goto LABEL_6;
  }

  if (*v1 == 2)
  {
LABEL_6:
    type metadata accessor for MatterCommandError();
    sub_1D196E660();
    v4 = swift_allocError();
    sub_1D196E6B8(a1, v5);
    v6 = sub_1D1A1DE40(v4);

    return v6;
  }

  v7 = static String.hfLocalized(_:)(0xD000000000000039, 0x80000001D1EBF3C0);
  sub_1D1A15B88(0xD00000000000003FLL, 0x80000001D1EBF400);
  return v7;
}

uint64_t StaticRVCClusterGroup.CleanModeCommandError.description.getter()
{
  if (v0[1] == 1)
  {
    v1 = 0x726F707075736E75;
    v2 = 0x4964696C61766E69;
    if (*v0 != 2)
    {
      v2 = 0xD000000000000012;
    }

    if (*v0)
    {
      v1 = 0x46636972656E6567;
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

  else
  {
    v4 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v4);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return 0x286E776F6E6B6E75;
  }
}

uint64_t StaticRVCClusterGroup.RunModeCommandError.description.getter()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 <= 4u)
    {
      v8 = 0x726F707075736E75;
      v9 = 0x4964696C61766E69;
      v10 = 0x6B63757473;
      if (v1 != 3)
      {
        v10 = 0x4D6E694274737564;
      }

      if (v1 != 2)
      {
        v9 = v10;
      }

      if (*v0)
      {
        v8 = 0x46636972656E6567;
      }

      if (*v0 <= 1u)
      {
        return v8;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      v2 = 0xD000000000000010;
      v3 = 0xD000000000000015;
      if (v1 != 9)
      {
        v3 = 0x4C79726574746162;
      }

      if (v1 != 8)
      {
        v2 = v3;
      }

      v4 = 0x466E694274737564;
      v5 = 0x6E61547265746177;
      if (v1 != 6)
      {
        v5 = 0xD000000000000010;
      }

      if (v1 != 5)
      {
        v4 = v5;
      }

      if (*v0 <= 7u)
      {
        return v4;
      }

      else
      {
        return v2;
      }
    }
  }

  else
  {
    v7 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v7);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return 0x286E776F6E6B6E75;
  }
}

uint64_t StaticRVCClusterGroup.OperationalErrorState.description.getter()
{
  if (v0[1])
  {
    if (v0[1] == 1)
    {
      result = 0x6B63757473;
      switch(*v0)
      {
        case 1u:
          return result;
        case 2u:
          result = 0x4D6E694274737564;
          break;
        case 3u:
          result = 0x466E694274737564;
          break;
        case 4u:
          result = 0x6E61547265746177;
          break;
        case 5u:
        case 6u:
          result = 0xD000000000000010;
          break;
        case 7u:
          result = 0xD000000000000015;
          break;
        case 8u:
          result = 0x6574746142776F6CLL;
          break;
        case 9u:
          result = 0xD000000000000015;
          break;
        case 0xAu:
          result = 0xD000000000000012;
          break;
        case 0xBu:
          result = 0xD000000000000015;
          break;
        case 0xCu:
          result = 0x614A736C65656877;
          break;
        case 0xDu:
          result = 0x6D614A6873757262;
          break;
        default:
          result = 0xD000000000000018;
          break;
      }
    }

    else
    {
      v4 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v4);

      return 0x726F646E6576;
    }
  }

  else
  {
    v2 = 0x726F7272456F6ELL;
    v3 = 0xD000000000000019;
    if (*v0 != 2)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
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

  return result;
}

BOOL _s13HomeDataModel21StaticRVCClusterGroupV19RunModeCommandErrorO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 <= 4u)
  {
    if (*a1 <= 1u)
    {
      if (*a1)
      {
        if (v3 != 1)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (*a2)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v3 != 3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 4)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*a1 <= 7u)
  {
    if (v2 == 5)
    {
      if (v3 != 5)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 6)
      {
        if (v3 != 6)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 != 7)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 8)
  {
    if (v3 != 8)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v2 == 9)
  {
    if (v3 != 9)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 <= 9)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

uint64_t sub_1D196BAF8(unsigned __int8 a1)
{
  if (a1 <= 0x42u)
  {
    if (a1 <= 2u)
    {
      if (a1 == 1)
      {
        return 0;
      }

      if (a1 == 2)
      {
        return 1;
      }
    }

    else
    {
      switch(a1)
      {
        case 3u:
          return 2;
        case 0x41u:
          return 3;
        case 0x42u:
          return 4;
      }
    }
  }

  else if (a1 > 0x45u)
  {
    switch(a1)
    {
      case 'F':
        return 8;
      case 'G':
        return 9;
      case 'H':
        return 10;
    }
  }

  else
  {
    switch(a1)
    {
      case 'C':
        return 5;
      case 'D':
        return 6;
      case 'E':
        return 7;
    }
  }

  return 11;
}

unint64_t sub_1D196BBCC()
{
  result = qword_1EC647758;
  if (!qword_1EC647758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647758);
  }

  return result;
}

unint64_t sub_1D196BC20()
{
  result = qword_1EC647760;
  if (!qword_1EC647760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647760);
  }

  return result;
}

unint64_t sub_1D196BC74()
{
  result = qword_1EC647768;
  if (!qword_1EC647768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647768);
  }

  return result;
}

unint64_t sub_1D196BCC8()
{
  result = qword_1EC647770;
  if (!qword_1EC647770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647770);
  }

  return result;
}

unint64_t sub_1D196BD1C()
{
  result = qword_1EC647778;
  if (!qword_1EC647778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647778);
  }

  return result;
}

unint64_t sub_1D196BD70()
{
  result = qword_1EC647780;
  if (!qword_1EC647780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647780);
  }

  return result;
}

unint64_t sub_1D196BDC4()
{
  result = qword_1EC6477A8;
  if (!qword_1EC6477A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6477A8);
  }

  return result;
}

unint64_t sub_1D196BE18()
{
  result = qword_1EC6477B0;
  if (!qword_1EC6477B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6477B0);
  }

  return result;
}

unint64_t sub_1D196BE6C()
{
  result = qword_1EC647820;
  if (!qword_1EC647820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647820);
  }

  return result;
}

unint64_t sub_1D196BEC0()
{
  result = qword_1EC647828;
  if (!qword_1EC647828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647828);
  }

  return result;
}

unint64_t sub_1D196BF14()
{
  result = qword_1EC647830;
  if (!qword_1EC647830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647830);
  }

  return result;
}

unint64_t sub_1D196BF68()
{
  result = qword_1EC647838;
  if (!qword_1EC647838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647838);
  }

  return result;
}

unint64_t sub_1D196BFBC()
{
  result = qword_1EC647840;
  if (!qword_1EC647840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647840);
  }

  return result;
}

unint64_t sub_1D196C010()
{
  result = qword_1EC647848;
  if (!qword_1EC647848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647848);
  }

  return result;
}

unint64_t sub_1D196C064()
{
  result = qword_1EC647850;
  if (!qword_1EC647850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647850);
  }

  return result;
}

unint64_t sub_1D196C0B8()
{
  result = qword_1EC647858;
  if (!qword_1EC647858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647858);
  }

  return result;
}

unint64_t sub_1D196C10C()
{
  result = qword_1EC647860;
  if (!qword_1EC647860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647860);
  }

  return result;
}

unint64_t sub_1D196C160()
{
  result = qword_1EC647868;
  if (!qword_1EC647868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647868);
  }

  return result;
}

unint64_t sub_1D196C1B4()
{
  result = qword_1EC647870;
  if (!qword_1EC647870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647870);
  }

  return result;
}

unint64_t sub_1D196C208()
{
  result = qword_1EC647878;
  if (!qword_1EC647878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647878);
  }

  return result;
}

unint64_t sub_1D196C25C()
{
  result = qword_1EC647880;
  if (!qword_1EC647880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647880);
  }

  return result;
}

unint64_t sub_1D196C2B0()
{
  result = qword_1EC647920;
  if (!qword_1EC647920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647920);
  }

  return result;
}

unint64_t sub_1D196C304()
{
  result = qword_1EC647928;
  if (!qword_1EC647928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647928);
  }

  return result;
}

unint64_t sub_1D196C358()
{
  result = qword_1EC647930;
  if (!qword_1EC647930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647930);
  }

  return result;
}

unint64_t sub_1D196C3AC()
{
  result = qword_1EC647938;
  if (!qword_1EC647938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647938);
  }

  return result;
}

unint64_t sub_1D196C400()
{
  result = qword_1EC647940;
  if (!qword_1EC647940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647940);
  }

  return result;
}

unint64_t sub_1D196C454()
{
  result = qword_1EC647948;
  if (!qword_1EC647948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647948);
  }

  return result;
}

unint64_t sub_1D196C4AC()
{
  result = qword_1EC647980;
  if (!qword_1EC647980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647980);
  }

  return result;
}

unint64_t sub_1D196C534()
{
  result = qword_1EC647998;
  if (!qword_1EC647998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647998);
  }

  return result;
}

unint64_t sub_1D196C5BC()
{
  result = qword_1EC6479B0;
  if (!qword_1EC6479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479B0);
  }

  return result;
}

unint64_t sub_1D196C614()
{
  result = qword_1EC6479B8;
  if (!qword_1EC6479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479B8);
  }

  return result;
}

unint64_t sub_1D196C66C()
{
  result = qword_1EC6479C0;
  if (!qword_1EC6479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479C0);
  }

  return result;
}

uint64_t _s21OperationalErrorStateOwet(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t _s21OperationalErrorStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s21OperationalErrorStateO3RVCOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21OperationalErrorStateO3RVCOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D196C9A4(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *sub_1D196CA28(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_1D196CC4C()
{
  result = qword_1EC6479C8;
  if (!qword_1EC6479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479C8);
  }

  return result;
}

unint64_t sub_1D196CCA4()
{
  result = qword_1EC6479D0;
  if (!qword_1EC6479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479D0);
  }

  return result;
}

unint64_t sub_1D196CCFC()
{
  result = qword_1EC6479D8;
  if (!qword_1EC6479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479D8);
  }

  return result;
}

unint64_t sub_1D196CD54()
{
  result = qword_1EC6479E0;
  if (!qword_1EC6479E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479E0);
  }

  return result;
}

unint64_t sub_1D196CDAC()
{
  result = qword_1EC6479E8;
  if (!qword_1EC6479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479E8);
  }

  return result;
}

unint64_t sub_1D196CE04()
{
  result = qword_1EC6479F0;
  if (!qword_1EC6479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479F0);
  }

  return result;
}

unint64_t sub_1D196CE5C()
{
  result = qword_1EC6479F8;
  if (!qword_1EC6479F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6479F8);
  }

  return result;
}

unint64_t sub_1D196CEB4()
{
  result = qword_1EC647A00;
  if (!qword_1EC647A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A00);
  }

  return result;
}

unint64_t sub_1D196CF0C()
{
  result = qword_1EC647A08;
  if (!qword_1EC647A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A08);
  }

  return result;
}

unint64_t sub_1D196CF64()
{
  result = qword_1EC647A10;
  if (!qword_1EC647A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A10);
  }

  return result;
}

unint64_t sub_1D196CFBC()
{
  result = qword_1EC647A18;
  if (!qword_1EC647A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A18);
  }

  return result;
}

unint64_t sub_1D196D014()
{
  result = qword_1EC647A20;
  if (!qword_1EC647A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A20);
  }

  return result;
}

unint64_t sub_1D196D06C()
{
  result = qword_1EC647A28;
  if (!qword_1EC647A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A28);
  }

  return result;
}

unint64_t sub_1D196D0C4()
{
  result = qword_1EC647A30;
  if (!qword_1EC647A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A30);
  }

  return result;
}

unint64_t sub_1D196D11C()
{
  result = qword_1EC647A38;
  if (!qword_1EC647A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A38);
  }

  return result;
}

unint64_t sub_1D196D174()
{
  result = qword_1EC647A40;
  if (!qword_1EC647A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A40);
  }

  return result;
}

unint64_t sub_1D196D1CC()
{
  result = qword_1EC647A48;
  if (!qword_1EC647A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A48);
  }

  return result;
}

unint64_t sub_1D196D224()
{
  result = qword_1EC647A50;
  if (!qword_1EC647A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A50);
  }

  return result;
}

unint64_t sub_1D196D27C()
{
  result = qword_1EC647A58;
  if (!qword_1EC647A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A58);
  }

  return result;
}

unint64_t sub_1D196D2D4()
{
  result = qword_1EC647A60;
  if (!qword_1EC647A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A60);
  }

  return result;
}

unint64_t sub_1D196D32C()
{
  result = qword_1EC647A68;
  if (!qword_1EC647A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A68);
  }

  return result;
}

unint64_t sub_1D196D384()
{
  result = qword_1EC647A70;
  if (!qword_1EC647A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A70);
  }

  return result;
}

unint64_t sub_1D196D3DC()
{
  result = qword_1EC647A78;
  if (!qword_1EC647A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A78);
  }

  return result;
}

unint64_t sub_1D196D434()
{
  result = qword_1EC647A80;
  if (!qword_1EC647A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A80);
  }

  return result;
}

unint64_t sub_1D196D48C()
{
  result = qword_1EC647A88;
  if (!qword_1EC647A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A88);
  }

  return result;
}

unint64_t sub_1D196D4E4()
{
  result = qword_1EC647A90;
  if (!qword_1EC647A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A90);
  }

  return result;
}

unint64_t sub_1D196D53C()
{
  result = qword_1EC647A98;
  if (!qword_1EC647A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647A98);
  }

  return result;
}

unint64_t sub_1D196D594()
{
  result = qword_1EC647AA0;
  if (!qword_1EC647AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AA0);
  }

  return result;
}

unint64_t sub_1D196D5EC()
{
  result = qword_1EC647AA8;
  if (!qword_1EC647AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AA8);
  }

  return result;
}

unint64_t sub_1D196D644()
{
  result = qword_1EC647AB0;
  if (!qword_1EC647AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AB0);
  }

  return result;
}

unint64_t sub_1D196D69C()
{
  result = qword_1EC647AB8;
  if (!qword_1EC647AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AB8);
  }

  return result;
}

unint64_t sub_1D196D6F4()
{
  result = qword_1EC647AC0;
  if (!qword_1EC647AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AC0);
  }

  return result;
}

unint64_t sub_1D196D74C()
{
  result = qword_1EC647AC8;
  if (!qword_1EC647AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AC8);
  }

  return result;
}

unint64_t sub_1D196D7A4()
{
  result = qword_1EC647AD0;
  if (!qword_1EC647AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AD0);
  }

  return result;
}

unint64_t sub_1D196D7FC()
{
  result = qword_1EC647AD8;
  if (!qword_1EC647AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AD8);
  }

  return result;
}

unint64_t sub_1D196D854()
{
  result = qword_1EC647AE0;
  if (!qword_1EC647AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AE0);
  }

  return result;
}

unint64_t sub_1D196D8AC()
{
  result = qword_1EC647AE8;
  if (!qword_1EC647AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AE8);
  }

  return result;
}

unint64_t sub_1D196D904()
{
  result = qword_1EC647AF0;
  if (!qword_1EC647AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AF0);
  }

  return result;
}

unint64_t sub_1D196D95C()
{
  result = qword_1EC647AF8;
  if (!qword_1EC647AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647AF8);
  }

  return result;
}

unint64_t sub_1D196D9B4()
{
  result = qword_1EC647B00;
  if (!qword_1EC647B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B00);
  }

  return result;
}

unint64_t sub_1D196DA0C()
{
  result = qword_1EC647B08;
  if (!qword_1EC647B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B08);
  }

  return result;
}

unint64_t sub_1D196DA64()
{
  result = qword_1EC647B10;
  if (!qword_1EC647B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B10);
  }

  return result;
}

unint64_t sub_1D196DABC()
{
  result = qword_1EC647B18;
  if (!qword_1EC647B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B18);
  }

  return result;
}

unint64_t sub_1D196DB14()
{
  result = qword_1EC647B20;
  if (!qword_1EC647B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B20);
  }

  return result;
}

unint64_t sub_1D196DB6C()
{
  result = qword_1EC647B28;
  if (!qword_1EC647B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B28);
  }

  return result;
}

unint64_t sub_1D196DBC4()
{
  result = qword_1EC647B30;
  if (!qword_1EC647B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B30);
  }

  return result;
}

unint64_t sub_1D196DC1C()
{
  result = qword_1EC647B38;
  if (!qword_1EC647B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B38);
  }

  return result;
}

unint64_t sub_1D196DC74()
{
  result = qword_1EC647B40;
  if (!qword_1EC647B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B40);
  }

  return result;
}

unint64_t sub_1D196DCCC()
{
  result = qword_1EC647B48;
  if (!qword_1EC647B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B48);
  }

  return result;
}

unint64_t sub_1D196DD24()
{
  result = qword_1EC647B50;
  if (!qword_1EC647B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B50);
  }

  return result;
}

unint64_t sub_1D196DD7C()
{
  result = qword_1EC647B58;
  if (!qword_1EC647B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B58);
  }

  return result;
}

unint64_t sub_1D196DDD4()
{
  result = qword_1EC647B60;
  if (!qword_1EC647B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B60);
  }

  return result;
}

unint64_t sub_1D196DE2C()
{
  result = qword_1EC647B68;
  if (!qword_1EC647B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B68);
  }

  return result;
}

unint64_t sub_1D196DE84()
{
  result = qword_1EC647B70;
  if (!qword_1EC647B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B70);
  }

  return result;
}

uint64_t sub_1D196DED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6518386 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F646E6576 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D196DFE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F707075736E75 && a2 == 0xEF65646F4D646574;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46636972656E6567 && a2 == 0xEE006572756C6961 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4964696C61766E69 && a2 == 0xED000065646F4D6ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B63757473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D6E694274737564 && a2 == 0xEE00676E69737369 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x466E694274737564 && a2 == 0xEB000000006C6C75 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E61547265746177 && a2 == 0xEE007974706D456BLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE8F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE8D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EBE8B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4C79726574746162 && a2 == 0xEA0000000000776FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D196E3E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F707075736E75 && a2 == 0xEF65646F4D646574;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46636972656E6567 && a2 == 0xEE006572756C6961 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4964696C61766E69 && a2 == 0xED000065646F4D6ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBE890 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

unint64_t sub_1D196E5B8()
{
  result = qword_1EC647B78;
  if (!qword_1EC647B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B78);
  }

  return result;
}

unint64_t sub_1D196E60C()
{
  result = qword_1EC647B80;
  if (!qword_1EC647B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647B80);
  }

  return result;
}

unint64_t sub_1D196E660()
{
  result = qword_1EC6474F8;
  if (!qword_1EC6474F8)
  {
    type metadata accessor for MatterCommandError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6474F8);
  }

  return result;
}

uint64_t sub_1D196E6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterCommandError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D196E71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D196E798@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v85 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v80 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v80 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v80 - v20;
  v23 = *a2;
  v22 = a2[1];
  v87 = a1;
  sub_1D197AF6C(a1, &v80 - v20, type metadata accessor for EndpointPath);
  v21[*(v7 + 28)] = 27;
  sub_1D197AF6C(v21, v19, type metadata accessor for ClusterPath);
  v24 = sub_1D192B170(65532, v19, v23, v22);
  sub_1D197AFD4(v19, type metadata accessor for ClusterPath);
  if ((v24 & 0x100000000) != 0)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EE07A0B0);
    sub_1D197AF6C(v21, v16, type metadata accessor for ClusterPath);
    v34 = sub_1D1E6707C();
    v35 = sub_1D1E6833C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v89 = v37;
      *v36 = 136446210;
      v38 = ClusterPath.description.getter();
      v40 = v39;
      sub_1D197AFD4(v16, type metadata accessor for ClusterPath);
      v41 = sub_1D1B1312C(v38, v40, &v89);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1D16EC000, v34, v35, "Couldn't get value for feature map attribute '%{public}s'", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1D3893640](v37, -1, -1);
      MEMORY[0x1D3893640](v36, -1, -1);

LABEL_18:
      v53 = type metadata accessor for EndpointPath;
      v42 = v87;
LABEL_40:
      sub_1D197AFD4(v42, v53);
      sub_1D197AFD4(v21, type metadata accessor for ClusterPath);
      *(a3 + 109) = 0;
      result = 0.0;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    sub_1D197AFD4(v87, type metadata accessor for EndpointPath);
    v42 = v16;
LABEL_39:
    v53 = type metadata accessor for ClusterPath;
    goto LABEL_40;
  }

  v86 = v24 & 2;
  sub_1D197AF6C(v21, v13, type metadata accessor for ClusterPath);
  v25 = sub_1D19C52F0(v13, v23, v22);
  sub_1D197AFD4(v13, type metadata accessor for ClusterPath);
  v26 = v25;
  v27 = *(v25 + 16);
  v28 = 32;
  do
  {
    v29 = v27;
    if (v27-- == 0)
    {
      break;
    }

    v31 = *(v26 + v28);
    v28 += 4;
  }

  while (v31 != 3);

  *&v89 = v23;
  *(&v89 + 1) = v22;
  v32 = sub_1D197264C(v21);
  if (!v32)
  {

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE07A0B0);
    v44 = v85;
    sub_1D197AF6C(v21, v85, type metadata accessor for ClusterPath);
    v45 = sub_1D1E6707C();
    v46 = sub_1D1E6833C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v89 = v48;
      *v47 = 136446210;
      v49 = ClusterPath.description.getter();
      v51 = v50;
      sub_1D197AFD4(v44, type metadata accessor for ClusterPath);
      v52 = sub_1D1B1312C(v49, v51, &v89);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D16EC000, v45, v46, "Failed to fetch supportedAreas %{public}s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1D3893640](v48, -1, -1);
      MEMORY[0x1D3893640](v47, -1, -1);

      goto LABEL_18;
    }

    sub_1D197AFD4(v87, type metadata accessor for EndpointPath);
    v42 = v44;
    goto LABEL_39;
  }

  *&v89 = v32;

  sub_1D197704C(&v89);

  v85 = v89;
  v84 = v24 & 4;
  if ((v24 & 4) != 0)
  {
    *&v89 = v23;
    *(&v89 + 1) = v22;
    v83 = sub_1D1972CD0(v21);
  }

  else
  {
    v83 = 0;
  }

  *&v89 = v23;
  *(&v89 + 1) = v22;
  v54 = sub_1D197321C(v21);
  *&v89 = v23;
  *(&v89 + 1) = v22;
  v55 = sub_1D1973598(v21);
  *&v89 = v23;
  *(&v89 + 1) = v22;
  v82 = sub_1D1973918(v21);
  if (v86)
  {
    *&v89 = v23;
    *(&v89 + 1) = v22;
    v56 = sub_1D1973C98(v21);
  }

  else
  {
    v56 = 0;
  }

  v57 = sub_1D192C254(v21, v23, v22);

  if (v86 && (v55 & 0x100000000) == 0)
  {
    v58 = *(v57 + 16);
    v59 = 32;
    while (v58)
    {
      v60 = *(v57 + v59);
      v59 += 4;
      --v58;
      if (v60 == 2)
      {

        v61 = 1;
        goto LABEL_30;
      }
    }
  }

  v61 = 0;
LABEL_30:
  v62 = v85;
  v63 = sub_1D19743A8(v54, v85);

  v64 = *(v62 + 16);
  if (v64)
  {
    v65 = (v62 + 32);
    while (1)
    {
      v66 = *v65;
      v67 = v65[1];
      *&v90[9] = *(v65 + 25);
      v89 = v66;
      *v90 = v67;
      if ((v55 & 0x100000000) == 0 && v89 == v55)
      {
        break;
      }

      v65 += 3;
      if (!--v64)
      {
        goto LABEL_36;
      }
    }

    v68 = v56;
    v69 = v90[24];
    v70 = *&v90[16];
    v81 = *v90;
    v80 = v89;
    sub_1D18B869C(&v89, v88);
  }

  else
  {
LABEL_36:
    v80 = 0u;
    v81 = xmmword_1D1E88490;
    v68 = v56;
    v70 = 0;
    v69 = 0;
  }

  v71 = v83;
  sub_1D1974504(v63, v83, &v89);
  sub_1D197AFD4(v87, type metadata accessor for EndpointPath);
  sub_1D197AFD4(v21, type metadata accessor for ClusterPath);
  v72 = *v90;
  v73 = v86 >> 1;
  v74 = v89;
  v75 = v82;
  v91 = BYTE4(v82) & 1;
  v76 = v84 >> 2;
  v77 = BYTE4(v82) & 1;
  *a3 = v85;
  *(a3 + 8) = v71;
  *(a3 + 16) = v63;
  *(a3 + 24) = v74;
  *(a3 + 40) = v72;
  v78 = v81;
  result = *&v80;
  *(a3 + 48) = v80;
  *(a3 + 64) = v78;
  *(a3 + 80) = v70;
  *(a3 + 88) = v69;
  *(a3 + 92) = v75;
  *(a3 + 96) = v77;
  *(a3 + 104) = v68;
  *(a3 + 112) = v24 & 1;
  *(a3 + 113) = v73;
  *(a3 + 114) = v76;
  *(a3 + 115) = v29 != 0;
  *(a3 + 116) = v61;
  return result;
}

uint64_t ServiceArea.copyApplying(selectedAreaIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v47 = *(v2 + 3);
  v57 = *(v2 + 1);
  v5 = v2[5];
  v54 = v2[7];
  v55 = v2[6];
  v52 = v2[9];
  v53 = v2[8];
  v51 = v2[10];
  v50 = *(v2 + 88);
  v84 = *(v2 + 89);
  v85 = *(v2 + 91);
  v48 = *(v2 + 23);
  v46 = *(v2 + 96);
  v83 = v46;
  v6 = *(v2 + 97);
  *(v82 + 3) = *(v2 + 25);
  v82[0] = v6;
  v49 = v2[13];
  v45 = *(v2 + 112);
  v81 = v45;
  v44 = *(v2 + 113);
  v80 = v44;
  v43 = *(v2 + 114);
  v79 = v43;
  v42 = *(v2 + 115);
  v7 = v4;
  v8 = *(v4 + 16);

  v58 = v7;
  if (v8)
  {
    v10 = 0;
    v11 = v7 + 32;
    v12 = MEMORY[0x1E69E7CC0];
    v59 = v5;
    while (2)
    {
      v13 = *(v7 + 16);
LABEL_4:
      if (v10 >= v13)
      {
        __break(1u);
        return result;
      }

      v14 = (v11 + 48 * v10);
      v16 = *v14;
      v15 = v14[1];
      *&v60[25] = *(v14 + 25);
      *v60 = v16;
      *&v60[16] = v15;
      ++v10;
      v17 = *(a1 + 16);
      v18 = (a1 + 32);
      do
      {
        if (!v17)
        {
          if (v10 != v8)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

        v19 = *v18++;
        --v17;
      }

      while (v19 != v16);
      sub_1D18B869C(v60, v77);
      result = swift_isUniquelyReferenced_nonNull_native();
      v78 = v12;
      if ((result & 1) == 0)
      {
        result = sub_1D178D634(0, *(v12 + 16) + 1, 1);
        v7 = v58;
        v12 = v78;
      }

      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1D178D634((v20 > 1), v21 + 1, 1);
        v7 = v58;
        v12 = v78;
      }

      *(v12 + 16) = v21 + 1;
      v22 = (v12 + 48 * v21);
      v23 = *v60;
      v24 = *&v60[16];
      *(v22 + 57) = *&v60[25];
      v22[2] = v23;
      v22[3] = v24;
      v5 = v59;
      if (v10 != v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  if (*(v12 + 16) && (*(v12 + 40) & 1) == 0)
  {
    v37 = *(v12 + 36);
    *v60 = v7;
    *&v60[24] = v47;
    *&v60[8] = v57;
    *&v60[40] = v5;
    v30 = v54;
    v29 = v55;
    v61 = v55;
    v62 = v54;
    v32 = v52;
    v31 = v53;
    v63 = v53;
    v64 = v52;
    v33 = v51;
    v65 = v51;
    v34 = v50;
    v66 = v50;
    v67 = v84;
    v68 = v85;
    v36 = v48;
    v69 = v48;
    v70 = v46;
    *&v71[3] = *(v82 + 3);
    *v71 = v82[0];
    v35 = v49;
    v72 = v49;
    v73 = v45;
    v74 = v44;
    v75 = v43;
    v76 = v42;
    ServiceArea.map(for:)(v37, v77);
    v7 = v58;
    v25 = v77[0];
    v26 = v77[1];
    v27 = v77[2];
    v28 = a2;
  }

  else
  {

    v26 = *(&v47 + 1);
    v25 = v47;
    v27 = v5;
    v29 = v55;
    v28 = a2;
    v31 = v53;
    v30 = v54;
    v33 = v51;
    v32 = v52;
    v34 = v50;
    v35 = v49;
    v36 = v48;
  }

  v38 = v83;
  v39 = v81;
  v40 = v80;
  v41 = v79;
  *v28 = v7;
  *(v28 + 8) = v57;
  *(v28 + 16) = v12;
  *(v28 + 24) = v25;
  *(v28 + 32) = v26;
  *(v28 + 40) = v27;
  *(v28 + 48) = v29;
  *(v28 + 56) = v30;
  *(v28 + 64) = v31;
  *(v28 + 72) = v32;
  *(v28 + 80) = v33;
  *(v28 + 88) = v34;
  *(v28 + 92) = v36;
  *(v28 + 96) = v38;
  *(v28 + 104) = v35;
  *(v28 + 112) = v39;
  *(v28 + 113) = v40;
  *(v28 + 114) = v41;
  *(v28 + 115) = 0;

  sub_1D1978DB8(v29, v30, v31, v32);
}

uint64_t ServiceArea.areas(for:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = result;
  v5 = 0;
  v6 = (result + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = *(v2 + 16);
LABEL_4:
    if (v5 < v8)
    {
      v9 = (v2 + 32 + 48 * v5);
      v11 = *v9;
      v10 = v9[1];
      *&v22[9] = *(v9 + 25);
      v21 = v11;
      *v22 = v10;
      ++v5;
      v12 = *(v4 + 16);
      v13 = v6;
      do
      {
        if (!v12)
        {
          if (v5 != v3)
          {
            goto LABEL_4;
          }

          return v7;
        }

        v14 = *v13++;
        --v12;
      }

      while (v14 != v11);
      sub_1D18B869C(&v21, &v20);
      result = swift_isUniquelyReferenced_nonNull_native();
      v23 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1D178D634(0, *(v7 + 16) + 1, 1);
        v7 = v23;
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D178D634((v15 > 1), v16 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v16 + 1;
      v17 = (v7 + 48 * v16);
      v18 = v21;
      v19 = *v22;
      *(v17 + 57) = *&v22[9];
      v17[2] = v18;
      v17[3] = v19;
      if (v5 != v3)
      {
        continue;
      }

      return v7;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t ServiceArea.map(for:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = (v3 + 32);
    v5 = *(v3 + 16) + 1;
    while (--v5)
    {
      v6 = v4 + 6;
      v7 = *v4;
      v4 += 6;
      if (v7 == result)
      {
        v9 = *(v6 - 2);
        v8 = *(v6 - 1);
        *a2 = result;
        a2[1] = v9;
        a2[2] = v8;
      }
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t ServiceArea.supportedAreas(for:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(v2 + 16);
    v7 = (v2 + 32 + 48 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= v6)
      {
        __break(1u);
        return result;
      }

      v10 = *v7;
      v9 = v7[1];
      *&v20[9] = *(v7 + 25);
      v19 = v10;
      *v20 = v9;
      if ((BYTE8(v10) & 1) == 0 && DWORD1(v19) == result)
      {
        break;
      }

      ++v8;
      v7 += 3;
      if (v3 == v8)
      {
        return v5;
      }
    }

    v11 = result;
    sub_1D18B869C(&v19, &v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D178D634(0, *(v5 + 16) + 1, 1);
      v5 = v21;
    }

    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    result = v11;
    if (v14 >= v13 >> 1)
    {
      sub_1D178D634((v13 > 1), v14 + 1, 1);
      result = v11;
      v5 = v21;
    }

    v4 = v8 + 1;
    *(v5 + 16) = v14 + 1;
    v15 = (v5 + 48 * v14);
    v16 = v19;
    v17 = *v20;
    *(v15 + 57) = *&v20[9];
    v15[2] = v16;
    v15[3] = v17;
  }

  while (v3 - 1 != v8);
  return v5;
}

uint64_t StaticRVCClusterGroup.select(areaIDs:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for ClusterPath(0);
  v2[14] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D196F7A4, 0, 0);
}

uint64_t sub_1D196F7A4()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 2;
  v6 = inited + 32;
  *(inited + 40) = v4;
  *(inited + 48) = 3;
  v7 = sub_1D18D6FA8(inited);
  swift_setDeallocating();

  sub_1D1741A30(v6, &qword_1EC6474E8, &unk_1D1E86820);
  v0[16] = sub_1D1951BB0(v7, 0x1Bu);

  v8 = [objc_allocWithZone(MEMORY[0x1E696F6B0]) init];
  v0[17] = v8;
  v9 = sub_1D18F9BB0(v4);
  sub_1D18F9C58(v9);

  v10 = sub_1D1E67BFC();

  [v8 setNewAreas_];

  sub_1D1741B10(0, &qword_1EC647B88, 0x1E696F5D0);
  sub_1D197AF6C(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 27;
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1D196F9A4;
  v12 = v0[15];

  return sub_1D1A092C4(v12);
}

uint64_t sub_1D196F9A4(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 152) = a1;

  sub_1D197AFD4(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D196FAD8, 0, 0);
}

uint64_t sub_1D196FAD8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];
  v4 = swift_allocObject();
  v0[20] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v0[21] = 0x80000001D1EBE710;
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1D196FC38;
  v8 = v0[19];

  return sub_1D1916350(0x72417463656C6573, 0xEB00000000736165, v8, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E884B0, v4);
}

uint64_t sub_1D196FC38()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v2[23] = v0;

  v5 = v2[21];
  if (v0)
  {
    v6 = v2[16];

    v7 = sub_1D196FE14;
  }

  else
  {
    v9 = v2[19];
    v8 = v2[20];
    v10 = v2[16];

    v7 = sub_1D196FD98;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D196FD98()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D196FE14()
{
  v1 = *(v0 + 184);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);

    v5 = *(v0 + 80);
    sub_1D197AF6C(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D197B034(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint();
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D191F714(v3, &v8[v6[5]]);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t StaticRVCClusterGroup.skipArea(areaToSkip:)(int a1)
{
  *(v2 + 88) = v1;
  *(v2 + 184) = a1;
  v3 = *(*(type metadata accessor for EndpointPath(0) - 8) + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  v4 = type metadata accessor for ClusterPath(0);
  *(v2 + 104) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19700C4, 0, 0);
}

uint64_t sub_1D19700C4()
{
  v1 = *(v0 + 88);
  v2 = (v1 + *(type metadata accessor for StaticRVCClusterGroup() + 60));
  v3 = v2[13];
  if (*v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {

    v3 = MEMORY[0x1E69E7CC0];
    v5 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v5)
    {
LABEL_31:

      v7 = MEMORY[0x1E69E7CC0];
      v6 = v37;
      goto LABEL_32;
    }
  }

  else
  {
    v22 = v2[13];

    v5 = *(v3 + 16);
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1D178D674(0, v5, 0);
  v6 = v37;
  v7 = v38;
  v8 = (v3 + 52);
  do
  {
    v9 = *(v6 + 184);
    v10 = *(v8 - 5);
    v11 = v10 == v9;
    if (v10 == v9)
    {
      v12 = *(v6 + 184);
    }

    else
    {
      v12 = *(v8 - 5);
    }

    if (v10 == v9)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(v8 - 16);
    }

    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(v8 - 3);
    }

    if (v11)
    {
      v15 = 1;
    }

    else
    {
      v15 = *(v8 - 8);
    }

    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v8 - 1);
    }

    if (v11)
    {
      v17 = 1;
    }

    else
    {
      v17 = *v8;
    }

    v39 = v7;
    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      v21 = v13;
      v36 = v17;
      sub_1D178D674((v18 > 1), v19 + 1, 1);
      v17 = v36;
      v13 = v21;
      v6 = v37;
      v7 = v39;
    }

    *(v7 + 16) = v19 + 1;
    v20 = v7 + 24 * v19;
    *(v20 + 32) = v12;
    *(v20 + 36) = v13;
    *(v20 + 40) = v14;
    *(v20 + 44) = v15;
    *(v20 + 48) = v16;
    *(v20 + 52) = v17;
    v8 += 24;
    --v5;
  }

  while (v5);

LABEL_32:
  v24 = *(v6 + 104);
  v23 = *(v6 + 112);
  v25 = v6;
  v26 = *(v6 + 88);
  v27 = *(v25 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6474E0, &unk_1D1E8D5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = 5;
  v29 = inited + 32;
  *(inited + 40) = v7;
  *(inited + 48) = 4;
  v30 = sub_1D18D6FA8(inited);
  swift_setDeallocating();
  sub_1D1741A30(v29, &qword_1EC6474E8, &unk_1D1E86820);
  *(v25 + 120) = sub_1D1951BB0(v30, 0x1Bu);

  v31 = [objc_allocWithZone(MEMORY[0x1E696F6C0]) init];
  *(v25 + 128) = v31;
  v32 = sub_1D1E692CC();
  [v31 setSkippedArea_];

  sub_1D1741B10(0, &qword_1EC647B88, 0x1E696F5D0);
  sub_1D197AF6C(v26, v23, type metadata accessor for EndpointPath);
  *(v23 + *(v24 + 20)) = 27;
  v33 = swift_task_alloc();
  *(v25 + 136) = v33;
  *v33 = v25;
  v33[1] = sub_1D1970400;
  v34 = *(v25 + 112);

  return sub_1D1A092C4(v34);
}

uint64_t sub_1D1970400(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 144) = a1;

  sub_1D197AFD4(v3, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1970534, 0, 0);
}

uint64_t sub_1D1970534()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[11];
  v4 = swift_allocObject();
  v0[19] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v0[20] = 0x80000001D1EBE710;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1D197068C;
  v8 = v0[18];

  return sub_1D1916350(0x6165724170696B73, 0xE800000000000000, v8, v1, 0xD000000000000016, 0x80000001D1EBE710, &unk_1D1E884D0, v4);
}

uint64_t sub_1D197068C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  v2[22] = v0;

  v5 = v2[20];
  if (v0)
  {
    v6 = v2[15];

    v7 = sub_1D1970868;
  }

  else
  {
    v9 = v2[18];
    v8 = v2[19];
    v10 = v2[15];

    v7 = sub_1D19707EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D19707EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1970868()
{
  v1 = *(v0 + 176);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);

    v5 = *(v0 + 80);
    sub_1D197AF6C(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError();
    sub_1D197B034(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint();
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D191F714(v3, &v8[v6[5]]);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 128);
  v14 = *(v0 + 112);
  v15 = *(v0 + 96);

  v16 = *(v0 + 8);

  return v16();
}

HomeDataModel::ServiceArea::Progress::OperationalStatus_optional __swiftcall ServiceArea.Progress.OperationalStatus.init(rawValue:)(HomeDataModel::ServiceArea::Progress::OperationalStatus_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = HomeDataModel_ServiceArea_Progress_OperationalStatus_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

double ServiceArea.Progress.currentProgress.getter()
{
  if ((*(v0 + 12) & 1) == 0 && (*(v0 + 20) & 1) == 0)
  {
    return *(v0 + 8) / *(v0 + 16);
  }

  return result;
}

unint64_t sub_1D1970BDC()
{
  v1 = 25705;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x6574616D69747365;
  }

  if (*v0)
  {
    v1 = 0x737574617473;
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

uint64_t sub_1D1970C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D197A750(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1970C80(uint64_t a1)
{
  v2 = sub_1D1979664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1970CBC(uint64_t a1)
{
  v2 = sub_1D1979664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.Progress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647B90, &qword_1D1E884D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v19 = *(v1 + 4);
  v18 = v1[2];
  v17 = *(v1 + 12);
  v16 = v1[4];
  v15 = *(v1 + 20);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979664();
  sub_1D1E6930C();
  v26 = 0;
  sub_1D1E68F5C();
  if (!v2)
  {
    v11 = v17;
    v12 = v15;
    v25 = v19;
    v24 = 1;
    sub_1D19796B8();
    sub_1D1E68F1C();
    v23 = 2;
    v21 = v11;
    sub_1D1E68EAC();
    v22 = 3;
    v20 = v12;
    sub_1D1E68EAC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ServiceArea.Progress.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 12);
  v4 = v0[4];
  v5 = *(v0 + 20);
  v6 = *(v0 + 4);
  sub_1D1E6924C();
  sub_1D1E6922C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (!v5)
    {
LABEL_3:
      sub_1D1E6922C();
      return sub_1D1E6924C();
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  return sub_1D1E6922C();
}

uint64_t ServiceArea.Progress.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 12);
  v4 = v0[4];
  v5 = *(v0 + 20);
  v6 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6922C();
  if (v3 != 1)
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Progress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BA8, &qword_1D1E884E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979664();
  sub_1D1E692FC();
  if (!v2)
  {
    v22 = 0;
    v11 = sub_1D1E68DBC();
    v20 = 1;
    sub_1D197970C();
    sub_1D1E68D7C();
    v12 = v21;
    v19 = 2;
    v17 = sub_1D1E68D0C();
    v18 = 3;
    v14 = sub_1D1E68D0C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 4) = v12;
    v15 = BYTE4(v17);
    *(a2 + 8) = v17;
    *(a2 + 12) = v15 & 1;
    *(a2 + 16) = v14;
    *(a2 + 20) = BYTE4(v14) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19712BC()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 12);
  v4 = v0[4];
  v5 = *(v0 + 20);
  v6 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6922C();
  if (v3 != 1)
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

  sub_1D1E6922C();
  if (v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Area.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

unint64_t sub_1D1971490()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6B72616D646E616CLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x726F6F6C66;
  if (v1 != 3)
  {
    v4 = 0x6570795461657261;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x444970616DLL;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

uint64_t sub_1D197155C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D197A8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1971584(uint64_t a1)
{
  v2 = sub_1D1979760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19715C0(uint64_t a1)
{
  v2 = sub_1D1979760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ServiceArea.Area.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BB8, &qword_1D1E884E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v23 = v1[1];
  v22 = *(v1 + 8);
  v9 = *(v1 + 2);
  v20 = *(v1 + 3);
  v21 = v9;
  LODWORD(v6) = *(v1 + 34);
  v19[6] = *(v1 + 16);
  v19[7] = v6;
  LODWORD(v9) = *(v1 + 35);
  v19[4] = *(v1 + 36);
  v19[5] = v9;
  LODWORD(v9) = *(v1 + 37);
  v19[2] = *(v1 + 38);
  v19[3] = v9;
  v10 = *(v1 + 39);
  v11 = *(v1 + 40);
  v13 = a1[3];
  v12 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1D1979760();
  sub_1D1E6930C();
  v32 = 0;
  v17 = v24;
  sub_1D1E68F5C();
  if (v17)
  {
    return (*(v4 + 8))(v7, v16);
  }

  v31 = 1;
  v29 = v22;
  sub_1D1E68EAC();
  v30 = 2;
  sub_1D1E68E0C();
  v28 = 3;
  sub_1D1E68E6C();
  v27 = 4;
  sub_1D1E68E8C();
  v26 = 5;
  sub_1D1E68E8C();
  v25 = 6;
  sub_1D1E68E8C();
  return (*(v4 + 8))(v7, v16);
}

uint64_t ServiceArea.Area.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = *(v0 + 34);
  v7 = *(v0 + 35);
  v8 = *(v0 + 36);
  v9 = *(v0 + 37);
  v10 = *(v0 + 38);
  v12 = *(v0 + 16);
  v13 = *(v0 + 39);
  v14 = *(v0 + 40);
  sub_1D1E6924C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6924C();
    if (v5)
    {
LABEL_3:
      sub_1D1E6922C();
      sub_1D1E678EC();
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
  if (v6)
  {
LABEL_4:
    sub_1D1E6922C();
    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_8:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v8 & 1) == 0)
  {
LABEL_5:
    sub_1D1E6922C();
  }

LABEL_9:
  sub_1D1E6922C();
  if ((v10 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((v14 & 1) == 0)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t ServiceArea.Area.hashValue.getter()
{
  sub_1D1E6920C();
  ServiceArea.Area.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Area.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647BC8, &qword_1D1E884F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1979760();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_1D1E68DBC();
  LOBYTE(v36[0]) = 1;
  v12 = sub_1D1E68D0C();
  v49 = BYTE4(v12) & 1;
  LOBYTE(v36[0]) = 2;
  v13 = sub_1D1E68C6C();
  v15 = v14;
  v33 = v13;
  LOBYTE(v36[0]) = 3;
  v32 = sub_1D1E68CCC();
  v52 = BYTE2(v32) & 1;
  LOBYTE(v36[0]) = 4;
  v31 = sub_1D1E68CEC();
  v51 = BYTE1(v31) & 1;
  LOBYTE(v36[0]) = 5;
  v30 = sub_1D1E68CEC();
  v50 = BYTE1(v30) & 1;
  v53 = 6;
  v16 = sub_1D1E68CEC();
  v17 = *(v6 + 8);
  v29 = v16;
  v17(v9, v5);
  v18 = (v29 >> 8) & 1;
  v48 = BYTE1(v29) & 1;
  v28 = v11;
  *&v34 = __PAIR64__(v12, v11);
  v27 = v12;
  v26 = v49;
  BYTE8(v34) = v49;
  *v35 = v33;
  *&v35[8] = v15;
  LOBYTE(v12) = v31;
  *&v35[16] = v32;
  v25 = v52;
  v35[18] = v52;
  v35[19] = v31;
  LOBYTE(v11) = v51;
  v35[20] = v51;
  v19 = v30;
  v35[21] = v30;
  v20 = v50;
  v35[22] = v50;
  *&v35[23] = v29 & 0x1FF;
  v21 = v34;
  v22 = *v35;
  *(a2 + 25) = *&v35[9];
  *a2 = v21;
  a2[1] = v22;
  sub_1D18B869C(&v34, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v28;
  v36[1] = v27;
  v37 = v26;
  v38 = v33;
  v39 = v15;
  v40 = v32;
  v41 = v25;
  v42 = v12;
  v43 = v11;
  v44 = v19;
  v45 = v20;
  v46 = v29;
  v47 = v18;
  return sub_1D18B86F8(v36);
}

uint64_t sub_1D1971D84()
{
  sub_1D1E6920C();
  ServiceArea.Area.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t sub_1D1971DC8()
{
  sub_1D1E6920C();
  ServiceArea.Area.hash(into:)();
  return sub_1D1E6926C();
}

uint64_t ServiceArea.Map.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static ServiceArea.Map.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1971EB8()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1D1971EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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