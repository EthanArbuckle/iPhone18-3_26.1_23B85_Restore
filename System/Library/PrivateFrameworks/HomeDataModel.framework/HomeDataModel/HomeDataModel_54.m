void *sub_1D1B7032C(void *result, uint64_t a2, void *a3, int a4, int a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D1B6DEC0(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

void *sub_1D1B703BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v7 = result;
      v8 = a2;
      bzero(result, 8 * a2);
      result = v7;
      a2 = v8;
    }

    v9 = a5(result, a2, a3);

    return v9;
  }

  return result;
}

uint64_t sub_1D1B70478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B704D8(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65[0] = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v65 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v79 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = v65 - v12;
  v77 = type metadata accessor for StaticService(0);
  v73 = *(v77 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D1E66A7C();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v71 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v65 - v22;
  v23 = *(a1 + 64);
  v68 = a1 + 64;
  v24 = -1 << *(a1 + 32);
  v87 = MEMORY[0x1E69E7CD0];
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v65[1] = v24;
  v27 = (63 - v24) >> 6;
  v69 = v15 + 32;
  v70 = v15 + 16;
  v80 = (v8 + 48);
  v81 = (v8 + 56);
  v74 = v15;
  v75 = a1;
  v76 = (v15 + 8);
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v26)
  {
    v30 = v29;
    v31 = v82;
LABEL_15:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v30 << 6);
    v39 = v74;
    v38 = v75;
    v40 = v71;
    v41 = v85;
    (*(v74 + 16))(v71, *(v75 + 48) + *(v74 + 72) * v37, v85);
    v42 = v72;
    sub_1D1B733D4(*(v38 + 56) + *(v73 + 72) * v37, v72, type metadata accessor for StaticService);
    v34 = v84;
    v43 = *(v84 + 48);
    v44 = *(v39 + 32);
    v35 = v83;
    v44(v83, v40, v41);
    sub_1D1B7336C(v42, v35 + v43, type metadata accessor for StaticService);
    v45 = 0;
LABEL_16:
    (*v81)(v35, v45, 1, v34);
    sub_1D1741A90(v35, v31, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v80)(v31, 1, v34) == 1)
    {

      sub_1D1716918();
      v52 = v87;
      v53 = v67;
      v54 = v66;
      sub_1D1B733D4(v67, v66, type metadata accessor for StatusItemLocation);
      v55 = *(v74 + 48);
      v56 = v55(v54, 1, v85);
      sub_1D1B70478(v54, type metadata accessor for StatusItemLocation);
      if (v56 == 1 && *(v52 + 16) == 1)
      {
        v57 = sub_1D1772608(v52);
        if (v58)
        {
          v59 = v57;
          goto LABEL_26;
        }
      }

      v60 = v53;
      v61 = v65[0];
      sub_1D1B733D4(v60, v65[0], type metadata accessor for StatusItemLocation);
      if (v55(v61, 1, v85) == 1)
      {
        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D1E739C0;
        v63 = *(v52 + 16);

        v64 = MEMORY[0x1E69E65A8];
        *(v62 + 56) = MEMORY[0x1E69E6530];
        *(v62 + 64) = v64;
        *(v62 + 32) = v63;
        v59 = sub_1D1E6783C();

LABEL_26:
      }

      else
      {

        v59 = static String.hfLocalized(_:)(0xD00000000000002BLL, 0x80000001D1EC5BE0);
        sub_1D1B70478(v61, type metadata accessor for StatusItemLocation);
      }

      return v59;
    }

    v46 = v78;
    sub_1D1741A90(v31, v78, &qword_1EC642DB0, &unk_1D1E6F360);
    v47 = v79;
    sub_1D1741C08(v46, v79, &qword_1EC642DB0, &unk_1D1E6F360);
    v48 = v47 + *(v34 + 48);
    v49 = (v48 + *(v77 + 80));
    v50 = *v49;
    v51 = v49[1];

    sub_1D1B70478(v48, type metadata accessor for StaticService);
    (*v76)(v47, v85);
    result = sub_1D1741A30(v46, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v51)
    {
      sub_1D1762FC4(&v86, v50, v51);
    }
  }

  if (v27 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32 - 1;
  v35 = v83;
  v34 = v84;
  v31 = v82;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v26 = 0;
      v45 = 1;
      v29 = v33;
      goto LABEL_16;
    }

    v26 = *(v68 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B70C9C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65[0] = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v65 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v79 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = v65 - v12;
  v77 = type metadata accessor for StaticService(0);
  v73 = *(v77 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D1E66A7C();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v71 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v65 - v22;
  v23 = *(a1 + 64);
  v68 = a1 + 64;
  v24 = -1 << *(a1 + 32);
  v87 = MEMORY[0x1E69E7CD0];
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v65[1] = v24;
  v27 = (63 - v24) >> 6;
  v69 = v15 + 32;
  v70 = v15 + 16;
  v80 = (v8 + 48);
  v81 = (v8 + 56);
  v74 = v15;
  v75 = a1;
  v76 = (v15 + 8);
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v26)
  {
    v30 = v29;
    v31 = v82;
LABEL_15:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v30 << 6);
    v39 = v74;
    v38 = v75;
    v40 = v71;
    v41 = v85;
    (*(v74 + 16))(v71, *(v75 + 48) + *(v74 + 72) * v37, v85);
    v42 = v72;
    sub_1D1B733D4(*(v38 + 56) + *(v73 + 72) * v37, v72, type metadata accessor for StaticService);
    v34 = v84;
    v43 = *(v84 + 48);
    v44 = *(v39 + 32);
    v35 = v83;
    v44(v83, v40, v41);
    sub_1D1B7336C(v42, v35 + v43, type metadata accessor for StaticService);
    v45 = 0;
LABEL_16:
    (*v81)(v35, v45, 1, v34);
    sub_1D1741A90(v35, v31, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v80)(v31, 1, v34) == 1)
    {

      sub_1D1716918();
      v52 = v87;
      v53 = v67;
      v54 = v66;
      sub_1D1B733D4(v67, v66, type metadata accessor for StatusItemLocation);
      v55 = *(v74 + 48);
      v56 = v55(v54, 1, v85);
      sub_1D1B70478(v54, type metadata accessor for StatusItemLocation);
      if (v56 == 1 && *(v52 + 16) == 1)
      {
        v57 = sub_1D1772608(v52);
        if (v58)
        {
          v59 = v57;
          goto LABEL_26;
        }
      }

      v60 = v53;
      v61 = v65[0];
      sub_1D1B733D4(v60, v65[0], type metadata accessor for StatusItemLocation);
      if (v55(v61, 1, v85) == 1)
      {
        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D1E739C0;
        v63 = *(v52 + 16);

        v64 = MEMORY[0x1E69E65A8];
        *(v62 + 56) = MEMORY[0x1E69E6530];
        *(v62 + 64) = v64;
        *(v62 + 32) = v63;
        v59 = sub_1D1E6783C();

LABEL_26:
      }

      else
      {

        v59 = static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5C10);
        sub_1D1B70478(v61, type metadata accessor for StatusItemLocation);
      }

      return v59;
    }

    v46 = v78;
    sub_1D1741A90(v31, v78, &qword_1EC642DB0, &unk_1D1E6F360);
    v47 = v79;
    sub_1D1741C08(v46, v79, &qword_1EC642DB0, &unk_1D1E6F360);
    v48 = v47 + *(v34 + 48);
    v49 = (v48 + *(v77 + 80));
    v50 = *v49;
    v51 = v49[1];

    sub_1D1B70478(v48, type metadata accessor for StaticService);
    (*v76)(v47, v85);
    result = sub_1D1741A30(v46, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v51)
    {
      sub_1D1762FC4(&v86, v50, v51);
    }
  }

  if (v27 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32 - 1;
  v35 = v83;
  v34 = v84;
  v31 = v82;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v26 = 0;
      v45 = 1;
      v29 = v33;
      goto LABEL_16;
    }

    v26 = *(v68 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B7145C(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65[0] = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v65 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v79 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = v65 - v12;
  v77 = type metadata accessor for StaticService(0);
  v73 = *(v77 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D1E66A7C();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v71 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v65 - v22;
  v23 = *(a1 + 64);
  v68 = a1 + 64;
  v24 = -1 << *(a1 + 32);
  v87 = MEMORY[0x1E69E7CD0];
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v65[1] = v24;
  v27 = (63 - v24) >> 6;
  v69 = v15 + 32;
  v70 = v15 + 16;
  v80 = (v8 + 48);
  v81 = (v8 + 56);
  v74 = v15;
  v75 = a1;
  v76 = (v15 + 8);
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v26)
  {
    v30 = v29;
    v31 = v82;
LABEL_15:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v30 << 6);
    v39 = v74;
    v38 = v75;
    v40 = v71;
    v41 = v85;
    (*(v74 + 16))(v71, *(v75 + 48) + *(v74 + 72) * v37, v85);
    v42 = v72;
    sub_1D1B733D4(*(v38 + 56) + *(v73 + 72) * v37, v72, type metadata accessor for StaticService);
    v34 = v84;
    v43 = *(v84 + 48);
    v44 = *(v39 + 32);
    v35 = v83;
    v44(v83, v40, v41);
    sub_1D1B7336C(v42, v35 + v43, type metadata accessor for StaticService);
    v45 = 0;
LABEL_16:
    (*v81)(v35, v45, 1, v34);
    sub_1D1741A90(v35, v31, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v80)(v31, 1, v34) == 1)
    {

      sub_1D1716918();
      v52 = v87;
      v53 = v67;
      v54 = v66;
      sub_1D1B733D4(v67, v66, type metadata accessor for StatusItemLocation);
      v55 = *(v74 + 48);
      v56 = v55(v54, 1, v85);
      sub_1D1B70478(v54, type metadata accessor for StatusItemLocation);
      if (v56 == 1 && *(v52 + 16) == 1)
      {
        v57 = sub_1D1772608(v52);
        if (v58)
        {
          v59 = v57;
          goto LABEL_26;
        }
      }

      v60 = v53;
      v61 = v65[0];
      sub_1D1B733D4(v60, v65[0], type metadata accessor for StatusItemLocation);
      if (v55(v61, 1, v85) == 1)
      {
        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D1E739C0;
        v63 = *(v52 + 16);

        v64 = MEMORY[0x1E69E65A8];
        *(v62 + 56) = MEMORY[0x1E69E6530];
        *(v62 + 64) = v64;
        *(v62 + 32) = v63;
        v59 = sub_1D1E6783C();

LABEL_26:
      }

      else
      {

        v59 = static String.hfLocalized(_:)(0xD000000000000027, 0x80000001D1EC5D30);
        sub_1D1B70478(v61, type metadata accessor for StatusItemLocation);
      }

      return v59;
    }

    v46 = v78;
    sub_1D1741A90(v31, v78, &qword_1EC642DB0, &unk_1D1E6F360);
    v47 = v79;
    sub_1D1741C08(v46, v79, &qword_1EC642DB0, &unk_1D1E6F360);
    v48 = v47 + *(v34 + 48);
    v49 = (v48 + *(v77 + 80));
    v50 = *v49;
    v51 = v49[1];

    sub_1D1B70478(v48, type metadata accessor for StaticService);
    (*v76)(v47, v85);
    result = sub_1D1741A30(v46, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v51)
    {
      sub_1D1762FC4(&v86, v50, v51);
    }
  }

  if (v27 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32 - 1;
  v35 = v83;
  v34 = v84;
  v31 = v82;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v26 = 0;
      v45 = 1;
      v29 = v33;
      goto LABEL_16;
    }

    v26 = *(v68 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B71C20(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65[0] = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v65 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v79 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = v65 - v12;
  v77 = type metadata accessor for StaticService(0);
  v73 = *(v77 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D1E66A7C();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v71 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v65 - v22;
  v23 = *(a1 + 64);
  v68 = a1 + 64;
  v24 = -1 << *(a1 + 32);
  v87 = MEMORY[0x1E69E7CD0];
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v65[1] = v24;
  v27 = (63 - v24) >> 6;
  v69 = v15 + 32;
  v70 = v15 + 16;
  v80 = (v8 + 48);
  v81 = (v8 + 56);
  v74 = v15;
  v75 = a1;
  v76 = (v15 + 8);
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v26)
  {
    v30 = v29;
    v31 = v82;
LABEL_15:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v30 << 6);
    v39 = v74;
    v38 = v75;
    v40 = v71;
    v41 = v85;
    (*(v74 + 16))(v71, *(v75 + 48) + *(v74 + 72) * v37, v85);
    v42 = v72;
    sub_1D1B733D4(*(v38 + 56) + *(v73 + 72) * v37, v72, type metadata accessor for StaticService);
    v34 = v84;
    v43 = *(v84 + 48);
    v44 = *(v39 + 32);
    v35 = v83;
    v44(v83, v40, v41);
    sub_1D1B7336C(v42, v35 + v43, type metadata accessor for StaticService);
    v45 = 0;
LABEL_16:
    (*v81)(v35, v45, 1, v34);
    sub_1D1741A90(v35, v31, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v80)(v31, 1, v34) == 1)
    {

      sub_1D1716918();
      v52 = v87;
      v53 = v67;
      v54 = v66;
      sub_1D1B733D4(v67, v66, type metadata accessor for StatusItemLocation);
      v55 = *(v74 + 48);
      v56 = v55(v54, 1, v85);
      sub_1D1B70478(v54, type metadata accessor for StatusItemLocation);
      if (v56 == 1 && *(v52 + 16) == 1)
      {
        v57 = sub_1D1772608(v52);
        if (v58)
        {
          v59 = v57;
          goto LABEL_26;
        }
      }

      v60 = v53;
      v61 = v65[0];
      sub_1D1B733D4(v60, v65[0], type metadata accessor for StatusItemLocation);
      if (v55(v61, 1, v85) == 1)
      {
        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D1E739C0;
        v63 = *(v52 + 16);

        v64 = MEMORY[0x1E69E65A8];
        *(v62 + 56) = MEMORY[0x1E69E6530];
        *(v62 + 64) = v64;
        *(v62 + 32) = v63;
        v59 = sub_1D1E6783C();

LABEL_26:
      }

      else
      {

        v59 = static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC5CE0);
        sub_1D1B70478(v61, type metadata accessor for StatusItemLocation);
      }

      return v59;
    }

    v46 = v78;
    sub_1D1741A90(v31, v78, &qword_1EC642DB0, &unk_1D1E6F360);
    v47 = v79;
    sub_1D1741C08(v46, v79, &qword_1EC642DB0, &unk_1D1E6F360);
    v48 = v47 + *(v34 + 48);
    v49 = (v48 + *(v77 + 80));
    v50 = *v49;
    v51 = v49[1];

    sub_1D1B70478(v48, type metadata accessor for StaticService);
    (*v76)(v47, v85);
    result = sub_1D1741A30(v46, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v51)
    {
      sub_1D1762FC4(&v86, v50, v51);
    }
  }

  if (v27 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32 - 1;
  v35 = v83;
  v34 = v84;
  v31 = v82;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v26 = 0;
      v45 = 1;
      v29 = v33;
      goto LABEL_16;
    }

    v26 = *(v68 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B723E4(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65[0] = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v65 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v79 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = v65 - v12;
  v77 = type metadata accessor for StaticService(0);
  v73 = *(v77 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D1E66A7C();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v71 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v65 - v22;
  v23 = *(a1 + 64);
  v68 = a1 + 64;
  v24 = -1 << *(a1 + 32);
  v87 = MEMORY[0x1E69E7CD0];
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v65[1] = v24;
  v27 = (63 - v24) >> 6;
  v69 = v15 + 32;
  v70 = v15 + 16;
  v80 = (v8 + 48);
  v81 = (v8 + 56);
  v74 = v15;
  v75 = a1;
  v76 = (v15 + 8);
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v26)
  {
    v30 = v29;
    v31 = v82;
LABEL_15:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v30 << 6);
    v39 = v74;
    v38 = v75;
    v40 = v71;
    v41 = v85;
    (*(v74 + 16))(v71, *(v75 + 48) + *(v74 + 72) * v37, v85);
    v42 = v72;
    sub_1D1B733D4(*(v38 + 56) + *(v73 + 72) * v37, v72, type metadata accessor for StaticService);
    v34 = v84;
    v43 = *(v84 + 48);
    v44 = *(v39 + 32);
    v35 = v83;
    v44(v83, v40, v41);
    sub_1D1B7336C(v42, v35 + v43, type metadata accessor for StaticService);
    v45 = 0;
LABEL_16:
    (*v81)(v35, v45, 1, v34);
    sub_1D1741A90(v35, v31, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v80)(v31, 1, v34) == 1)
    {

      sub_1D1716918();
      v52 = v87;
      v53 = v67;
      v54 = v66;
      sub_1D1B733D4(v67, v66, type metadata accessor for StatusItemLocation);
      v55 = *(v74 + 48);
      v56 = v55(v54, 1, v85);
      sub_1D1B70478(v54, type metadata accessor for StatusItemLocation);
      if (v56 == 1 && *(v52 + 16) == 1)
      {
        v57 = sub_1D1772608(v52);
        if (v58)
        {
          v59 = v57;
          goto LABEL_26;
        }
      }

      v60 = v53;
      v61 = v65[0];
      sub_1D1B733D4(v60, v65[0], type metadata accessor for StatusItemLocation);
      if (v55(v61, 1, v85) == 1)
      {
        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D1E739C0;
        v63 = *(v52 + 16);

        v64 = MEMORY[0x1E69E65A8];
        *(v62 + 56) = MEMORY[0x1E69E6530];
        *(v62 + 64) = v64;
        *(v62 + 32) = v63;
        v59 = sub_1D1E6783C();

LABEL_26:
      }

      else
      {

        v59 = static String.hfLocalized(_:)(0xD000000000000024, 0x80000001D1EC5C90);
        sub_1D1B70478(v61, type metadata accessor for StatusItemLocation);
      }

      return v59;
    }

    v46 = v78;
    sub_1D1741A90(v31, v78, &qword_1EC642DB0, &unk_1D1E6F360);
    v47 = v79;
    sub_1D1741C08(v46, v79, &qword_1EC642DB0, &unk_1D1E6F360);
    v48 = v47 + *(v34 + 48);
    v49 = (v48 + *(v77 + 80));
    v50 = *v49;
    v51 = v49[1];

    sub_1D1B70478(v48, type metadata accessor for StaticService);
    (*v76)(v47, v85);
    result = sub_1D1741A30(v46, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v51)
    {
      sub_1D1762FC4(&v86, v50, v51);
    }
  }

  if (v27 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32 - 1;
  v35 = v83;
  v34 = v84;
  v31 = v82;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v26 = 0;
      v45 = 1;
      v29 = v33;
      goto LABEL_16;
    }

    v26 = *(v68 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B72BA8(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for StatusItemLocation(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v65[0] = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = v65 - v7;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v84);
  v79 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = v65 - v12;
  v77 = type metadata accessor for StaticService(0);
  v73 = *(v77 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D1E66A7C();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v71 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v82 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v65 - v22;
  v23 = *(a1 + 64);
  v68 = a1 + 64;
  v24 = -1 << *(a1 + 32);
  v87 = MEMORY[0x1E69E7CD0];
  if (-v24 < 64)
  {
    v25 = ~(-1 << -v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & v23;
  v65[1] = v24;
  v27 = (63 - v24) >> 6;
  v69 = v15 + 32;
  v70 = v15 + 16;
  v80 = (v8 + 48);
  v81 = (v8 + 56);
  v74 = v15;
  v75 = a1;
  v76 = (v15 + 8);
  result = swift_bridgeObjectRetain_n();
  v29 = 0;
  while (v26)
  {
    v30 = v29;
    v31 = v82;
LABEL_15:
    v36 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v37 = v36 | (v30 << 6);
    v39 = v74;
    v38 = v75;
    v40 = v71;
    v41 = v85;
    (*(v74 + 16))(v71, *(v75 + 48) + *(v74 + 72) * v37, v85);
    v42 = v72;
    sub_1D1B733D4(*(v38 + 56) + *(v73 + 72) * v37, v72, type metadata accessor for StaticService);
    v34 = v84;
    v43 = *(v84 + 48);
    v44 = *(v39 + 32);
    v35 = v83;
    v44(v83, v40, v41);
    sub_1D1B7336C(v42, v35 + v43, type metadata accessor for StaticService);
    v45 = 0;
LABEL_16:
    (*v81)(v35, v45, 1, v34);
    sub_1D1741A90(v35, v31, &qword_1EC643C68, &unk_1D1E764C0);
    if ((*v80)(v31, 1, v34) == 1)
    {

      sub_1D1716918();
      v52 = v87;
      v53 = v67;
      v54 = v66;
      sub_1D1B733D4(v67, v66, type metadata accessor for StatusItemLocation);
      v55 = *(v74 + 48);
      v56 = v55(v54, 1, v85);
      sub_1D1B70478(v54, type metadata accessor for StatusItemLocation);
      if (v56 == 1 && *(v52 + 16) == 1)
      {
        v57 = sub_1D1772608(v52);
        if (v58)
        {
          v59 = v57;
          goto LABEL_26;
        }
      }

      v60 = v53;
      v61 = v65[0];
      sub_1D1B733D4(v60, v65[0], type metadata accessor for StatusItemLocation);
      if (v55(v61, 1, v85) == 1)
      {
        static String.hfLocalized(_:)(0xD000000000000028, 0x80000001D1EC5BB0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_1D1E739C0;
        v63 = *(v52 + 16);

        v64 = MEMORY[0x1E69E65A8];
        *(v62 + 56) = MEMORY[0x1E69E6530];
        *(v62 + 64) = v64;
        *(v62 + 32) = v63;
        v59 = sub_1D1E6783C();

LABEL_26:
      }

      else
      {

        v59 = static String.hfLocalized(_:)(0xD000000000000026, 0x80000001D1EC5B80);
        sub_1D1B70478(v61, type metadata accessor for StatusItemLocation);
      }

      return v59;
    }

    v46 = v78;
    sub_1D1741A90(v31, v78, &qword_1EC642DB0, &unk_1D1E6F360);
    v47 = v79;
    sub_1D1741C08(v46, v79, &qword_1EC642DB0, &unk_1D1E6F360);
    v48 = v47 + *(v34 + 48);
    v49 = (v48 + *(v77 + 80));
    v50 = *v49;
    v51 = v49[1];

    sub_1D1B70478(v48, type metadata accessor for StaticService);
    (*v76)(v47, v85);
    result = sub_1D1741A30(v46, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v51)
    {
      sub_1D1762FC4(&v86, v50, v51);
    }
  }

  if (v27 <= v29 + 1)
  {
    v32 = v29 + 1;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32 - 1;
  v35 = v83;
  v34 = v84;
  v31 = v82;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v26 = 0;
      v45 = 1;
      v29 = v33;
      goto LABEL_16;
    }

    v26 = *(v68 + 8 * v30);
    ++v29;
    if (v26)
    {
      v29 = v30;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B7336C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B733D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t UmbrellaCategoryInformation.speakerStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8B0, &unk_1D1E9ADF0);
  v5 = *(v4 - 8);
  v45 = v4 - 8;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B808, &qword_1D1E9AD08);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B800, &qword_1D1E9AD00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for StateSnapshot(0);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v2 + 24);
  sub_1D1B75DE0(a1, v26, type metadata accessor for StateSnapshot);
  v27 = *(a1 + *(v23 + 56));
  v52 = v26;
  v28 = sub_1D1D1D6A8(sub_1D1B73C90, v51, v27);
  v29 = *&v26[*(v23 + 52)];
  v50 = a1;
  v30 = sub_1D1D1D744(sub_1D1B743FC, v49, v29);
  v41 = v21;
  sub_1D1B3C9B0(v28, v30, v21);
  v31 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v48 = a1;
  v32 = sub_1D190104C(v31, sub_1D1B744AC, v47, v43);
  v40 = v14;
  sub_1D1B3E58C(v32, v14);
  v42 = v19;
  sub_1D1741C08(v21, v19, &qword_1EC64B800, &qword_1D1E9AD00);
  v33 = v44;
  sub_1D1741C08(v14, v44, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741C08(v19, v8, &qword_1EC64B800, &qword_1D1E9AD00);
  v34 = v45;
  v35 = *(v45 + 56);
  v36 = v33;
  sub_1D1741C08(v33, &v8[v35], &qword_1EC64B808, &qword_1D1E9AD08);
  v37 = v46;
  sub_1D1741A90(v8, v46, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A90(&v8[v35], v37 + *(v34 + 56), &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v40, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v41, &qword_1EC64B800, &qword_1D1E9AD00);
  sub_1D1741A30(v36, &qword_1EC64B808, &qword_1D1E9AD08);
  sub_1D1741A30(v42, &qword_1EC64B800, &qword_1D1E9AD00);
  return sub_1D1B75E68(v26, type metadata accessor for StateSnapshot);
}

uint64_t sub_1D1B73800(uint64_t a1, uint64_t a2)
{
  v9[1] = *(a2 + *(type metadata accessor for StaticService(0) + 104));
  ServiceKind.umbrellaCategory.getter(v9);
  v2 = "00-8000-0026BB765291";
  v3 = "17-A590-755E1AAC02AE";
  if (v9[0] != 6)
  {
    v3 = "73-8FBD-0E8978A33403";
  }

  v4 = "60-AD68-D91053B75F44";
  if (v9[0] != 4)
  {
    v4 = "7E-BE63-1D00B1500545";
  }

  if (v9[0] > 5u)
  {
    v4 = v3;
  }

  v5 = "73-A058-C5E64BC487B2";
  if (v9[0] != 2)
  {
    v5 = "CE-986D-63B28F62C9E3";
  }

  if (v9[0])
  {
    v2 = "13-AA62-01754F256DD5";
  }

  if (v9[0] > 1u)
  {
    v2 = v5;
  }

  if (v9[0] <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if ((v6 | 0x8000000000000000) == 0x80000001D1EB3730)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D1E6904C();
  }

  return v7 & 1;
}

uint64_t sub_1D1B73928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for StaticAccessory(0);
  v30 = *(v32 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v19 = v5[2];
  v19(&v29 - v17, a1, v4);
  sub_1D1B75DE0(v33, &v18[*(v12 + 56)], type metadata accessor for StaticMediaProfile);
  v20 = *(v34 + *(type metadata accessor for StateSnapshot(0) + 32));
  sub_1D1741C08(v18, v16, &qword_1EC645468, &unk_1D1E995E0);
  v21 = &v16[*(v12 + 56)];
  v22 = type metadata accessor for StaticMediaProfile();
  v19(v8, v21 + *(v22 + 56), v4);
  sub_1D1B75E68(v21, type metadata accessor for StaticMediaProfile);
  if (*(v20 + 16) && (v23 = sub_1D1742188(v8), (v24 & 1) != 0))
  {
    v25 = v31;
    sub_1D1B75DE0(*(v20 + 56) + *(v30 + 72) * v23, v31, type metadata accessor for StaticAccessory);
    v26 = v5[1];
    v26(v8, v4);
    sub_1D1741A30(v18, &qword_1EC645468, &unk_1D1E995E0);
    v27 = *(v25 + *(v32 + 72));
    sub_1D1B75E68(v25, type metadata accessor for StaticAccessory);
  }

  else
  {
    v26 = v5[1];
    v26(v8, v4);
    sub_1D1741A30(v18, &qword_1EC645468, &unk_1D1E995E0);
    v27 = 1;
  }

  v26(v16, v4);
  return v27;
}

uint64_t sub_1D1B73CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v19, a1, v20);
  sub_1D1B75DE0(a2, &v19[*(v13 + 56)], type metadata accessor for StaticMediaSystem);
  v33 = v19;
  sub_1D1741C08(v19, v17, &qword_1EC645478, &qword_1D1E79A08);
  v22 = &v17[*(v13 + 56)];
  v23 = *(v22 + *(type metadata accessor for StaticMediaSystem() + 92));

  sub_1D1B75E68(v22, type metadata accessor for StaticMediaSystem);
  v24 = v35;
  v37 = v34;
  v25 = sub_1D1892E1C(sub_1D1B75E48, v36, v23);
  v35 = v24;

  result = (*(v21 + 8))(v17, v20);
  v27 = *(v25 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    while (v28 < *(v25 + 16))
    {
      sub_1D1741C08(v29 + *(v38 + 72) * v28, v11, &qword_1EC6436C8, &unk_1D1E97C40);
      sub_1D1741A90(v11, v9, &qword_1EC6436C8, &unk_1D1E97C40);
      v30 = type metadata accessor for StaticAccessory(0);
      if ((*(*(v30 - 8) + 48))(v9, 1, v30) == 1)
      {
        result = sub_1D1741A30(v9, &qword_1EC6436C8, &unk_1D1E97C40);
      }

      else
      {
        v31 = v9[*(v30 + 72)];
        result = sub_1D1B75E68(v9, type metadata accessor for StaticAccessory);
        if ((v31 & 1) == 0)
        {
          sub_1D1741A30(v33, &qword_1EC645478, &qword_1D1E79A08);

          return 0;
        }
      }

      if (v27 == ++v28)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_1D1741A30(v33, &qword_1EC645478, &qword_1D1E79A08);
    return 1;
  }

  return result;
}

uint64_t sub_1D1B74084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v5 + 16) && (v6 = sub_1D1742188(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for StaticAccessory(0);
    v11 = *(v10 - 8);
    sub_1D1B75DE0(v9 + *(v11 + 72) * v8, a3, type metadata accessor for StaticAccessory);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for StaticAccessory(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1D1B741C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v14 + 16) && (v15 = sub_1D1742188(a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticService(0);
    v20 = *(v19 - 8);
    sub_1D1B75DE0(v18 + *(v20 + 72) * v17, v8, type metadata accessor for StaticService);
    (*(v20 + 56))(v8, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StaticService(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  return sub_1D1B0D124(v8, v12);
}

void *sub_1D1B7441C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1D1D1ED00(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t _s13HomeDataModel27UmbrellaCategoryInformationV05mediaE18StaticAccessoryIds11accessoriesShy10Foundation4UUIDVGSDyAhA0hI0VG_tFZ_0(uint64_t a1)
{
  v119 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v99 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticService(0);
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v116 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v9 = *(*(v115 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v115);
  v102 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v101 = &v88 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v88 - v16;
  v118 = MEMORY[0x1E69E7CD0];
  v18 = *(a1 + 64);
  v117 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v106 = v3 + 16;
  v108 = v3;
  v114 = v3 + 8;
  v91 = "CE-986D-63B28F62C9E3";
  v110 = 0x80000001D1EB3730;

  v23 = 0;
  v89 = 0;
  v109 = "00-8000-0026BB765291";
  v96 = "73-8FBD-0E8978A33403";
  v98 = "60-AD68-D91053B75F44";
  v92 = "17-A590-755E1AAC02AE";
  v90 = "73-A058-C5E64BC487B2";
  v103 = v22;
  v104 = a1;
  v105 = v2;
  v113 = v17;
  while (1)
  {
LABEL_5:
    if (v21)
    {
      goto LABEL_10;
    }

    do
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
      }

      if (v24 >= v22)
      {

        result = v118;
        v87 = *MEMORY[0x1E69E9840];
        return result;
      }

      v21 = *(v117 + 8 * v24);
      ++v23;
    }

    while (!v21);
    v23 = v24;
LABEL_10:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = v25 | (v23 << 6);
    v27 = v108;
    (*(v108 + 16))(v17, *(a1 + 48) + *(v108 + 72) * v26, v2);
    v28 = v2;
    v29 = *(a1 + 56);
    v30 = type metadata accessor for StaticAccessory(0);
    v31 = v29 + *(*(v30 - 1) + 72) * v26;
    v32 = v115;
    sub_1D1B75DE0(v31, &v17[*(v115 + 48)], type metadata accessor for StaticAccessory);
    v33 = v17;
    v34 = v107;
    sub_1D1741C08(v33, v107, &qword_1EC644B30, &qword_1D1E77280);
    v35 = v34 + *(v32 + 48);
    v36 = v35 + v30[23];
    v37 = *v36;
    v38 = *(v36 + 8);
    sub_1D18EB144(*v36, *(v36 + 8));
    sub_1D1B75E68(v35, type metadata accessor for StaticAccessory);
    v39 = *(v27 + 8);
    v39(v34, v28);
    if (!v38)
    {
      sub_1D18EB2D8(v37, 0);
      v17 = v113;
      goto LABEL_43;
    }

    if (v38 == 255)
    {
      break;
    }

    v17 = v113;
    if (v38 != 2)
    {
      sub_1D18EB2D8(v37, v38);
      goto LABEL_45;
    }

    if ((v37 & 0x100) != 0)
    {
LABEL_45:
      v65 = v102;
      sub_1D1741C08(v17, v102, &qword_1EC644B30, &qword_1D1E77280);
      v66 = v17;
      v67 = v115;
      v68 = &v65[*(v115 + 48)];
      v69 = v39;
      v70 = *(v68 + v30[15]);
      sub_1D1B75E68(v68, type metadata accessor for StaticAccessory);
      v71 = v105;
      v69(v65, v105);
      if (v70)
      {
        sub_1D1741A30(v66, &qword_1EC644B30, &qword_1D1E77280);
        v17 = v66;
      }

      else
      {
        v80 = v66;
        sub_1D1741C08(v66, v65, &qword_1EC644B30, &qword_1D1E77280);
        v81 = *(v67 + 48);
        v82 = v99;
        sub_1D1762CB8(v99, v65);
        v69(v82, v71);
        sub_1D1741A30(v80, &qword_1EC644B30, &qword_1D1E77280);
        sub_1D1B75E68(&v65[v81], type metadata accessor for StaticAccessory);
        v17 = v80;
      }

      v22 = v103;
      a1 = v104;
      v2 = v71;
      continue;
    }

LABEL_43:
    sub_1D1741A30(v17, &qword_1EC644B30, &qword_1D1E77280);
    a1 = v104;
    v2 = v105;
  }

  v94 = v39;
  v17 = v113;
  v40 = v101;
  sub_1D1741C08(v113, v101, &qword_1EC644B30, &qword_1D1E77280);
  v41 = v40 + *(v115 + 48);
  v42 = *(v41 + v30[20]);

  v43 = v41;
  v44 = v42;
  v45 = sub_1D1B75E68(v43, type metadata accessor for StaticAccessory);
  v46 = *(v42 + 32);
  v95 = ((1 << v46) + 63) >> 6;
  if ((v46 & 0x3Fu) <= 0xD)
  {
LABEL_16:
    v93 = &v88;
    MEMORY[0x1EEE9AC00](v45);
    v97 = &v88 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v97, v47);
    v48 = 0;
    v49 = 0;
    v50 = v44 + 64;
    v51 = 1 << *(v44 + 32);
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v53 = v52 & *(v44 + 64);
    v54 = (v51 + 63) >> 6;
    while (1)
    {
      v100 = v48;
      while (2)
      {
        if (v53)
        {
          v55 = __clz(__rbit64(v53));
          v53 &= v53 - 1;
          goto LABEL_28;
        }

        v56 = v49;
        v17 = v113;
        do
        {
          v49 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v49 >= v54)
          {
            v72 = sub_1D188B1C8(v97, v95, v100, v44);
            v2 = v105;
            v22 = v103;
            goto LABEL_49;
          }

          v57 = *(v50 + 8 * v49);
          ++v56;
        }

        while (!v57);
        v55 = __clz(__rbit64(v57));
        v53 = (v57 - 1) & v57;
LABEL_28:
        v58 = v55 | (v49 << 6);
        v59 = v44;
        v60 = *(v44 + 56) + *(v111 + 72) * v58;
        v61 = v116;
        sub_1D1B75DE0(v60, v116, type metadata accessor for StaticService);
        v62 = v109;
        switch(*(v61 + *(v112 + 104)))
        {
          case 3:
          case 4:
          case 0x10:
          case 0x12:
          case 0x14:
          case 0x15:
          case 0x16:
          case 0x24:
          case 0x2D:
          case 0x2E:
          case 0x30:
          case 0x34:
            goto LABEL_35;
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xE:
          case 0xF:
          case 0x13:
          case 0x1D:
          case 0x1E:
          case 0x1F:
          case 0x20:
          case 0x21:
          case 0x23:
          case 0x25:
          case 0x33:
            v63 = &v124;
            goto LABEL_34;
          case 0x11:
          case 0x18:
          case 0x1A:
          case 0x2F:
            v63 = &v122;
            goto LABEL_34;
          case 0x1B:
          case 0x1C:
            v63 = &v120;
            goto LABEL_34;
          case 0x26:
          case 0x2C:
            v63 = &v121;
            goto LABEL_34;
          default:
            v63 = &v123;
LABEL_34:
            v62 = *(v63 - 32);
LABEL_35:
            if ((v62 | 0x8000000000000000) != v110)
            {
              v64 = sub_1D1E6904C();

              sub_1D1B75E68(v116, type metadata accessor for StaticService);
              v44 = v59;
              if (v64)
              {
                goto LABEL_39;
              }

              continue;
            }

            sub_1D1B75E68(v116, type metadata accessor for StaticService);
            v44 = v59;
LABEL_39:
            *&v97[(v58 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v58;
            v48 = v100 + 1;
            if (__OFADD__(v100, 1))
            {
              goto LABEL_61;
            }

            break;
        }

        break;
      }
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    v44 = v42;
    goto LABEL_16;
  }

  v83 = swift_slowAlloc();

  v84 = v89;
  v85 = sub_1D1B7441C(v83, v95, v42, sub_1D1B73800, 0);
  v89 = v84;
  if (!v84)
  {
    v72 = v85;

    MEMORY[0x1D3893640](v83, -1, -1);
    v2 = v105;
LABEL_49:

    v73 = v94;
    v94(v101, v2);
    v74 = *(v72 + 16);

    if (v74)
    {
      v75 = v73;
      v76 = v102;
      sub_1D1741C08(v17, v102, &qword_1EC644B30, &qword_1D1E77280);
      v100 = *(v115 + 48);
      v77 = v2;
      v78 = v99;
      sub_1D1762CB8(v99, v76);
      v79 = v78;
      v2 = v77;
      v75(v79, v77);
      sub_1D1741A30(v17, &qword_1EC644B30, &qword_1D1E77280);
      sub_1D1B75E68(&v76[v100], type metadata accessor for StaticAccessory);
    }

    else
    {
      sub_1D1741A30(v17, &qword_1EC644B30, &qword_1D1E77280);
    }

    a1 = v104;
    goto LABEL_5;
  }

  result = MEMORY[0x1D3893640](v83, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D1B74F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v34 - v6;
  v8 = type metadata accessor for StateSnapshot(0);
  v9 = _s13HomeDataModel27UmbrellaCategoryInformationV05mediaE18StaticAccessoryIds11accessoriesShy10Foundation4UUIDVGSDyAhA0hI0VG_tFZ_0(*(a3 + *(v8 + 32)));
  v10 = sub_1D1719534(a2, v9);

  if (v10)
  {
    v11 = *(a2 + *(type metadata accessor for StaticAccessory(0) + 80));
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = 0x80000001D1EB33D0;
    v35 = 0x80000001D1EB34F0;

    v17 = 0;
    while (1)
    {
      if (!v14)
      {
        while (1)
        {
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v18 >= v15)
          {
            v33 = 0;
            goto LABEL_22;
          }

          v14 = *(v11 + 64 + 8 * v18);
          ++v17;
          if (v14)
          {
            v17 = v18;
            goto LABEL_10;
          }
        }

        __break(1u);
        return result;
      }

LABEL_10:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v17 << 6);
      v21 = *(v11 + 48);
      v22 = sub_1D1E66A7C();
      (*(*(v22 - 8) + 16))(v7, v21 + *(*(v22 - 8) + 72) * v20, v22);
      v23 = *(v11 + 56);
      v24 = (type metadata accessor for StaticService(0) - 8);
      v25 = v23 + *(*v24 + 72) * v20;
      v26 = &v7[*(v36 + 48)];
      sub_1D1B75DE0(v25, v26, type metadata accessor for StaticService);
      v27 = v24[28];
      v38 = *(v26 + v27);
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v35 == v28)
      {
        goto LABEL_12;
      }

      v29 = sub_1D1E6904C();

      if (v29)
      {
        goto LABEL_14;
      }

      v37 = *(v26 + v27);
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v34 == v31)
      {
LABEL_12:

LABEL_14:
        v30 = StaticService.isActivated.getter();
        result = sub_1D1741A30(v7, &qword_1EC642DB0, &unk_1D1E6F360);
        if (v30)
        {
          v33 = 1;
LABEL_22:

          return v33;
        }
      }

      else
      {
        v32 = sub_1D1E6904C();

        if (v32)
        {
          goto LABEL_14;
        }

        result = sub_1D1741A30(v7, &qword_1EC642DB0, &unk_1D1E6F360);
      }
    }
  }

  return 0;
}

uint64_t _s13HomeDataModel27UmbrellaCategoryInformationV16activeMediaCount13stateSnapshotSiAA05StateK0V_tFZ_0(uint64_t a1)
{
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v2 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v121 = v119 - v3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
  v4 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v132 = v119 - v5;
  v133 = type metadata accessor for StatusStrings.Options();
  v6 = *(*(v133 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v133);
  v127 = v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v119 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
  v11 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v13 = v119 - v12;
  v120 = type metadata accessor for StateSnapshot(0);
  v14 = v120[12];
  v128 = a1;
  v15 = *(a1 + v14);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v119[6] = "CapitalizedPlural";
  v119[5] = "ionSpeaker_NotPlaying";
  v119[4] = "StateDescriptionLoading";
  v119[3] = "StateDescriptionInterrupted";
  v119[2] = "StateDescriptionStopped";
  v119[1] = "StateDescriptionPaused";
  v129 = v15;

  v22 = 0;
  v124 = v13;
  v134 = 0;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_8:
      v24 = __clz(__rbit64(v19)) | (v23 << 6);
      v25 = v129;
      v26 = *(v129 + 48);
      v27 = sub_1D1E66A7C();
      (*(*(v27 - 8) + 16))(v13, v26 + *(*(v27 - 8) + 72) * v24, v27);
      v28 = *(v25 + 56);
      v29 = type metadata accessor for StaticMediaProfile();
      v30 = v28 + *(*(v29 - 1) + 72) * v24;
      v31 = &v13[*(v125 + 48)];
      sub_1D1B75DE0(v30, v31, type metadata accessor for StaticMediaProfile);
      v32 = v133;
      v33 = *(v133 + 44);
      v34 = sub_1D1E669FC();
      (*(*(v34 - 8) + 56))(&v10[v33], 1, 1, v34);
      v35 = 0;
      *v10 = 257;
      v10[2] = 1;
      *(v10 + 3) = 0;
      v10[*(v32 + 48)] = 2;
      v36 = &v10[*(v32 + 52)];
      v36[4] = 0;
      *v36 = 2;
      v37 = *(v31 + v29[15]);
      if (*(v31 + v29[23] + 8) == 1 && v37 != 0)
      {
        v35 = *(v31 + v29[16]) ^ 1;
      }

      v39 = *(v31 + v29[26]);
      v40 = *(v31 + v29[19]);
      v126 = v29[19];
      v130 = v39;
      v131 = v35;
      if (v40 <= 2)
      {
        break;
      }

      if (v40 <= 4)
      {
        if (v40 == 3)
        {
          v41 = &v143;
          goto LABEL_22;
        }

        v43 = 0xD00000000000002BLL;
        v44 = &v144;
LABEL_26:
        v42 = *(v44 - 32) | 0x8000000000000000;
        goto LABEL_27;
      }

      if (v40 == 5)
      {
        v41 = &v145;
LABEL_22:
        v42 = *(v41 - 32) | 0x8000000000000000;
        v43 = 0xD000000000000027;
LABEL_27:
        v45 = static String.hfLocalized(_:)(v43, v42);
        v47 = v46;
        goto LABEL_28;
      }

      v45 = 0;
      v47 = 0;
LABEL_28:
      v48 = v29[25];
      LOBYTE(v138) = v10[4];
      v49 = sub_1D1D32844(v31 + v48, &v138);
      if (!v50)
      {
        v51 = *(v31 + v29[24]);
        LOBYTE(v138) = v10[4];
        v49 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v51, &v138);
      }

      LOBYTE(v135) = v37;
      BYTE1(v135) = v130;
      BYTE2(v135) = 2;
      BYTE3(v135) = v131 & 1;
      BYTE4(v135) = 2;
      *(&v135 + 1) = v45;
      *&v136 = v47;
      *(&v136 + 1) = v49;
      v137 = v50;
      StatusStrings.string(for:)(v10);
      v53 = v52;
      v138 = v135;
      v139 = v136;
      v140 = v137;
      sub_1D1A46590(&v138);
      sub_1D1B75E68(v10, type metadata accessor for StatusStrings.Options);
      if (v53)
      {

        v54 = 0;
      }

      else
      {
        v54 = *(v31 + v126) == 1;
      }

      v55 = v134;
      v13 = v124;
      result = sub_1D1741A30(v124, &qword_1EC645468, &unk_1D1E995E0);
      v56 = __OFADD__(v55, v54);
      v57 = v55 + v54;
      if (v56)
      {
        goto LABEL_85;
      }

      v19 &= v19 - 1;
      v22 = v23;
      v134 = v57;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    if (v40)
    {
      if (v40 == 1)
      {
        v41 = &v141;
        goto LABEL_22;
      }

      v43 = 0xD000000000000026;
      v44 = &v142;
    }

    else
    {
      v43 = 0xD000000000000025;
      v44 = &v146;
    }

    goto LABEL_26;
  }

  while (1)
  {
LABEL_5:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  v58 = *(v128 + v120[11]);
  v61 = *(v58 + 64);
  v60 = v58 + 64;
  v59 = v61;
  v62 = 1 << *(*(v128 + v120[11]) + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & v59;
  v65 = (v62 + 63) >> 6;
  v126 = *(v128 + v120[11]);

  v66 = 0;
  v67 = 0;
  for (i = v127; v64; v67 = v69)
  {
    v69 = v67;
LABEL_44:
    v70 = __clz(__rbit64(v64)) | (v69 << 6);
    v71 = v126;
    v72 = *(v126 + 48);
    v73 = sub_1D1E66A7C();
    v74 = v132;
    (*(*(v73 - 8) + 16))(v132, v72 + *(*(v73 - 8) + 72) * v70, v73);
    v75 = *(v71 + 56);
    v76 = type metadata accessor for StaticMediaSystem();
    v77 = v75 + *(*(v76 - 1) + 72) * v70;
    v78 = v74 + *(v123 + 48);
    sub_1D1B75DE0(v77, v78, type metadata accessor for StaticMediaSystem);
    v79 = v133;
    v80 = *(v133 + 44);
    v81 = sub_1D1E669FC();
    (*(*(v81 - 8) + 56))(&i[v80], 1, 1, v81);
    *i = 257;
    i[2] = 1;
    *(i + 3) = 0;
    i[*(v79 + 48)] = 2;
    v82 = &i[*(v79 + 52)];
    v82[4] = 0;
    *v82 = 2;
    v83 = *(v78 + v76[13]);
    v84 = *(v78 + v76[19]);
    v85 = *(v78 + v76[14]);
    v86 = *(v78 + v76[15]);
    v125 = v76[15];
    v130 = v84;
    v131 = v83;
    LODWORD(v129) = v85;
    if (v86 <= 2)
    {
      if (!v86)
      {
        v91 = 0xD000000000000025;
        v92 = &v146;
LABEL_57:
        v90 = *(v92 - 32) | 0x8000000000000000;
        goto LABEL_58;
      }

      if (v86 != 1)
      {
        v91 = 0xD000000000000026;
        v92 = &v142;
        goto LABEL_57;
      }

      v87 = &v141;
    }

    else if (v86 > 4)
    {
      v88 = 0;
      v89 = 0;
      if (v86 != 5)
      {
        goto LABEL_59;
      }

      v87 = &v145;
    }

    else
    {
      if (v86 != 3)
      {
        v91 = 0xD00000000000002BLL;
        v92 = &v144;
        goto LABEL_57;
      }

      v87 = &v143;
    }

    v90 = *(v87 - 32) | 0x8000000000000000;
    v91 = 0xD000000000000027;
LABEL_58:
    v88 = static String.hfLocalized(_:)(v91, v90);
    v89 = v93;
LABEL_59:
    v94 = v76[18];
    v95 = v127;
    LOBYTE(v138) = v127[4];
    v96 = sub_1D1D32844(v78 + v94, &v138);
    if (!v97)
    {
      v98 = *(v78 + v76[17]);
      LOBYTE(v138) = v95[4];
      v96 = _s13HomeDataModel12SymptomErrorO12statusString4with0F7ContextSSSgShyACGSg_AA06StatusI0OtFZ_0(v98, &v138);
    }

    LOBYTE(v135) = v131;
    BYTE1(v135) = v130;
    BYTE2(v135) = 2;
    BYTE3(v135) = v129 ^ 1;
    BYTE4(v135) = 2;
    *(&v135 + 1) = v88;
    *&v136 = v89;
    *(&v136 + 1) = v96;
    v137 = v97;
    StatusStrings.string(for:)(v95);
    v100 = v99;
    v138 = v135;
    v139 = v136;
    v140 = v137;
    sub_1D1A46590(&v138);
    sub_1D1B75E68(v95, type metadata accessor for StatusStrings.Options);
    i = v95;
    if (v100)
    {

      v101 = 0;
    }

    else
    {
      v101 = *(v78 + v125) == 1;
    }

    result = sub_1D1741A30(v132, &qword_1EC645478, &qword_1D1E79A08);
    v56 = __OFADD__(v66, v101);
    v66 += v101;
    if (v56)
    {
      goto LABEL_86;
    }

    v64 &= v64 - 1;
  }

  while (1)
  {
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v69 >= v65)
    {

      if (__OFADD__(v134, v66))
      {
        goto LABEL_87;
      }

      v134 += v66;
      v102 = *(v128 + v120[8]);
      v103 = 1 << *(v102 + 32);
      v104 = -1;
      if (v103 < 64)
      {
        v104 = ~(-1 << v103);
      }

      v105 = v104 & *(v102 + 64);
      v106 = (v103 + 63) >> 6;
      v107 = *(v128 + v120[8]);

      v108 = 0;
      v109 = 0;
      do
      {
        if (!v105)
        {
          while (1)
          {
            v110 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              goto LABEL_84;
            }

            if (v110 >= v106)
            {
              goto LABEL_80;
            }

            v105 = *(v102 + 64 + 8 * v110);
            ++v109;
            if (v105)
            {
              v109 = v110;
              goto LABEL_77;
            }
          }
        }

        v110 = v109;
LABEL_77:
        v111 = __clz(__rbit64(v105));
        v105 &= v105 - 1;
        v112 = v111 | (v110 << 6);
        v113 = *(v102 + 48);
        v114 = sub_1D1E66A7C();
        v115 = v121;
        (*(*(v114 - 8) + 16))(v121, v113 + *(*(v114 - 8) + 72) * v112, v114);
        v116 = *(v102 + 56);
        v117 = v116 + *(*(type metadata accessor for StaticAccessory(0) - 8) + 72) * v112;
        v118 = *(v122 + 48);
        sub_1D1B75DE0(v117, v115 + v118, type metadata accessor for StaticAccessory);
        LOBYTE(v112) = sub_1D1B74F90(v115, v115 + v118, v128);
        result = sub_1D1741A30(v115, &qword_1EC644B30, &qword_1D1E77280);
        v56 = __OFADD__(v108, v112 & 1);
        v108 += v112 & 1;
      }

      while (!v56);
      __break(1u);
LABEL_80:

      result = v134 + v108;
      if (__OFADD__(v134, v108))
      {
        goto LABEL_88;
      }

      return result;
    }

    v64 = *(v60 + 8 * v69);
    ++v67;
    if (v64)
    {
      goto LABEL_44;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_1D1B75DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B75E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UmbrellaCategoryInformation.waterStatus(stateSnapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B820, &qword_1D1E9AD20);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B818, &qword_1D1E9AD18);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v37 - v17;
  v19 = type metadata accessor for StatusItemLocation(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B810, &qword_1D1E9AD10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v37 - v28;
  v30 = *(v3 + 24);
  v31 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
  v40 = a1;
  v32 = sub_1D190104C(v31, sub_1D1B76468, v39, v30);
  v33 = sub_1D1E66A7C();
  (*(*(v33 - 8) + 56))(v22, 1, 1, v33);

  sub_1D1B6AAAC(v34, v22, v29);

  sub_1D1B4BDE4(v35, v18);
  sub_1D1B5A834(v32, v11);
  sub_1D1741C08(v29, v27, &qword_1EC64B810, &qword_1D1E9AD10);
  v41[0] = v27;
  sub_1D1741C08(v18, v16, &qword_1EC64B818, &qword_1D1E9AD18);
  v41[1] = v16;
  sub_1D1741C08(v11, v9, &qword_1EC64B820, &qword_1D1E9AD20);
  v41[2] = v9;
  sub_1D1B5C43C(v41, v38);
  sub_1D1741A30(v11, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v18, &qword_1EC64B818, &qword_1D1E9AD18);
  sub_1D1741A30(v29, &qword_1EC64B810, &qword_1D1E9AD10);
  sub_1D1741A30(v9, &qword_1EC64B820, &qword_1D1E9AD20);
  sub_1D1741A30(v16, &qword_1EC64B818, &qword_1D1E9AD18);
  return sub_1D1741A30(v27, &qword_1EC64B810, &qword_1D1E9AD10);
}

uint64_t sub_1D1B76244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  v14 = *(a3 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v14 + 16) && (v15 = sub_1D1742188(a2), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for StaticService(0);
    v20 = *(v19 - 8);
    sub_1D18DC660(v18 + *(v20 + 72) * v17, v8);
    (*(v20 + 56))(v8, 0, 1, v19);
  }

  else
  {
    v21 = type metadata accessor for StaticService(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  }

  return sub_1D1B0D124(v8, v12);
}

void __swiftcall CharacteristicFetchSpecification.init(loggingName:serviceKinds:associatedServiceKinds:characteristicKinds:)(HomeDataModel::CharacteristicFetchSpecification *__return_ptr retstr, Swift::String loggingName, Swift::OpaquePointer serviceKinds, Swift::OpaquePointer associatedServiceKinds, Swift::OpaquePointer characteristicKinds)
{
  object = loggingName._object;
  countAndFlagsBits = loggingName._countAndFlagsBits;

  retstr->loggingName._countAndFlagsBits = countAndFlagsBits;
  retstr->loggingName._object = object;
  v10 = MEMORY[0x1E69E7CC0];
  retstr->serviceKinds = serviceKinds;
  retstr->associatedServiceKinds._rawValue = v10;
  retstr->characteristicKinds = characteristicKinds;
}

uint64_t CharacteristicFetchSpecification.loggingName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CharacteristicFetchSpecification.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1D1E678EC();
  sub_1D177015C(a1, v5);
  sub_1D177015C(a1, v6);

  return sub_1D1770144(a1, v7);
}

uint64_t CharacteristicFetchSpecification.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D177015C(v7, v3);
  sub_1D177015C(v7, v4);
  sub_1D1770144(v7, v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B766AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D177015C(v7, v3);
  sub_1D177015C(v7, v4);
  sub_1D1770144(v7, v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B76734(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1D1E678EC();
  sub_1D177015C(a1, v5);
  sub_1D177015C(a1, v6);

  return sub_1D1770144(a1, v7);
}

uint64_t sub_1D1B7679C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D177015C(v7, v3);
  sub_1D177015C(v7, v4);
  sub_1D1770144(v7, v5);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel32CharacteristicFetchSpecificationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D1E6904C() & 1) == 0 || (sub_1D17795A8(v2, v6) & 1) == 0 || (sub_1D17795A8(v4, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1D17795C0(v3, v7);
}

unint64_t sub_1D1B768DC()
{
  result = qword_1EC64B8C0;
  if (!qword_1EC64B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B8C0);
  }

  return result;
}

uint64_t RoomSectionByUmbrellaCategory.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static RoomSectionByUmbrellaCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D179F48C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D17796E4(v4, v7);
}

uint64_t RoomSectionByUmbrellaCategory.hash(into:)()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 8);
  v6 = *(v0 + 16);
  v8 = *(v0 + 24);
  *v0;
  *v0;
  *v0;
  sub_1D1E678EC();

  sub_1D1E678EC();
  result = MEMORY[0x1D3892850](*(v8 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v13 = *(v2 + 16);
    v11 = v2 + 16;
    v12 = v13;
    v14 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v1);
      sub_1D17579AC();
      sub_1D1E676EC();
      result = (*(v11 - 8))(v5, v1);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t RoomSectionByUmbrellaCategory.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v8 = v0[1];
  v7 = v0[2];
  v9 = v0[3];
  sub_1D1E6920C();
  sub_1D1E678EC();

  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v2 + 16);
    v11 = v2 + 16;
    v12 = v13;
    v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v1);
      sub_1D17579AC();
      sub_1D1E676EC();
      (*(v11 - 8))(v5, v1);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1B76E64()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v8 = v0[1];
  v7 = v0[2];
  v9 = v0[3];
  sub_1D1E6920C();
  sub_1D1E678EC();

  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v2 + 16);
    v12 = v2 + 16;
    v11 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v11(v5, v14, v1);
      sub_1D17579AC();
      sub_1D1E676EC();
      (*(v12 - 8))(v5, v1);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1B7708C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D179F48C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return sub_1D17796E4(v4, v7);
}

char *static RoomSectionByUmbrellaCategory.sections(for:staticRoom:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D18DB47C(MEMORY[0x1E69E7CC0]);
  v12 = v4;
  v5 = a1 + 32;
  v6 = *(a1 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 40;
    v4 = sub_1D1B77264(&v12, v5);
    v5 = v7;
  }

  v8 = v12;
  MEMORY[0x1EEE9AC00](v4);
  v11[2] = v8;
  v11[3] = a2;

  v9 = sub_1D18FC220(MEMORY[0x1E69E7CC0], sub_1D1B7A758, v11, v8);
  swift_bridgeObjectRelease_n();
  v12 = v9;

  sub_1D1B79D08(&v12);

  return v12;
}

uint64_t sub_1D1B77264(void *a1, uint64_t a2)
{
  v240 = a1;
  v229 = type metadata accessor for StaticEndpoint();
  v3 = *(*(v229 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v229);
  v226 = &v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v227 = &v226 - v6;
  v231 = type metadata accessor for StaticMatterDevice();
  v7 = *(*(v231 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v231);
  v228 = &v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v230 = &v226 - v10;
  v232 = type metadata accessor for StaticServiceGroup();
  v11 = *(*(v232 - 8) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v234 = &v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for StaticService(0);
  v13 = *(*(v235 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v235);
  v233 = &v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v236 = &v226 - v16;
  v17 = type metadata accessor for StaticMediaSystem();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v238 = &v226 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticMediaProfile();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v226 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v226 - v26;
  v28 = type metadata accessor for StaticAccessory(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v237 = &v226 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v226 - v33;
  sub_1D17419CC(a2, v245);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v239 = v34;
  if (swift_dynamicCast())
  {
    sub_1D17419CC(a2, v242 + 1);
    v35 = swift_dynamicCast();
    v36 = *(v29 + 56);
    if ((v35 & 1) == 0)
    {
      v36(v27, 1, 1, v28);
      sub_1D1741A30(v27, &qword_1EC6436C8, &unk_1D1E97C40);
      goto LABEL_38;
    }

    v37 = a2;
    v36(v27, 0, 1, v28);
    v38 = v27;
    v39 = v237;
    sub_1D1B7A8A8(v38, v237, type metadata accessor for StaticAccessory);
    v40 = *(a2 + 24);
    v41 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v40);
    (*(v41 + 112))(v242 + 1, v40, v41);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2CB0 == v42)
    {

LABEL_18:
      v62 = (v39 + *(v28 + 96));
      v63 = v62[1];
      if (v63)
      {
        static RoomSectionByUmbrellaCategory.umbrellaCategory(for:)(*v62, v63, v242);
        a2 = LOBYTE(v242[0]);
        sub_1D17419CC(v37, v242 + 1);
        v17 = v240;
        v64 = *v240;
        LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
        v246 = *v17;
        v45 = v246;
        v65 = sub_1D171D408(a2);
        v67 = v45[2];
        v68 = (v66 & 1) == 0;
        v50 = __OFADD__(v67, v68);
        v69 = v67 + v68;
        if (v50)
        {
          __break(1u);
          goto LABEL_127;
        }

        LOBYTE(v44) = v66;
        if (v45[3] >= v69)
        {
          if ((v23 & 1) == 0)
          {
            v220 = v65;
            sub_1D173D008();
            v65 = v220;
            v45 = v246;
            *v17 = v246;
            if (v44)
            {
LABEL_59:
              a2 = v45[7] + 8 * v65;
              v41 = *a2;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *a2 = v41;
              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_60:
                v130 = *(v41 + 16);
                v129 = *(v41 + 24);
                if (v130 >= v129 >> 1)
                {
                  *a2 = sub_1D177F2B8((v129 > 1), v130 + 1, 1, v41);
                }

                v131 = v243;
                v132 = v244;
                v133 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
                v134 = *(*(v131 - 8) + 64);
                MEMORY[0x1EEE9AC00](v133);
                v136 = &v226 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v137 + 16))(v136);
                sub_1D1D20B74(v130, v136, a2, v131, v132);
                __swift_destroy_boxed_opaque_existential_1((v242 + 1));
                sub_1D1B7A848(v39, type metadata accessor for StaticAccessory);
                v91 = 0;
                v92 = sub_1D1B7A910;
                goto LABEL_74;
              }

LABEL_127:
              v41 = sub_1D177F2B8(0, *(v41 + 16) + 1, 1, v41);
              *a2 = v41;
              goto LABEL_60;
            }

LABEL_58:
            v127 = v65;
            sub_1D19DD7E4(v65, a2, MEMORY[0x1E69E7CC0], v45);
            v65 = v127;
            goto LABEL_59;
          }
        }

        else
        {
          sub_1D172FE6C(v69, v23);
          v45 = v246;
          v65 = sub_1D171D408(a2);
          if ((v44 & 1) != (v70 & 1))
          {
            goto LABEL_112;
          }
        }

        *v17 = v45;
        if (v44)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }

      sub_1D1B7A848(v39, type metadata accessor for StaticAccessory);
LABEL_38:
      v91 = 0;
      v92 = 0;
LABEL_74:
      sub_1D1B7A848(v239, type metadata accessor for StaticAccessory);
      v98 = 0;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      goto LABEL_75;
    }

    v61 = sub_1D1E6904C();

    if (v61)
    {
      goto LABEL_18;
    }

    v99 = v37[3];
    v100 = v37[4];
    __swift_project_boxed_opaque_existential_1(v37, v99);
    (*(v100 + 112))(v242, v99, v100);
    ServiceKind.umbrellaCategory.getter(&v241);
    a2 = v241;
    sub_1D17419CC(v37, v242 + 1);
    v17 = v240;
    v101 = *v240;
    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v246 = *v17;
    v45 = v246;
    v46 = sub_1D171D408(a2);
    v103 = v45[2];
    v104 = (v102 & 1) == 0;
    v50 = __OFADD__(v103, v104);
    v105 = v103 + v104;
    if (!v50)
    {
      LOBYTE(v44) = v102;
      if (v45[3] < v105)
      {
        sub_1D172FE6C(v105, v23);
        v45 = v246;
        v46 = sub_1D171D408(a2);
        if ((v44 & 1) != (v106 & 1))
        {
          goto LABEL_112;
        }

LABEL_67:
        *v17 = v45;
        if (v44)
        {
LABEL_69:
          v140 = (v45[7] + 8 * v46);
          v141 = *v140;
          v142 = swift_isUniquelyReferenced_nonNull_native();
          *v140 = v141;
          if ((v142 & 1) == 0)
          {
            v141 = sub_1D177F2B8(0, v141[2] + 1, 1, v141);
            *v140 = v141;
          }

          v144 = v141[2];
          v143 = v141[3];
          if (v144 >= v143 >> 1)
          {
            *v140 = sub_1D177F2B8((v143 > 1), v144 + 1, 1, v141);
          }

          v145 = v243;
          v146 = v244;
          v147 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
          v148 = *(*(v145 - 8) + 64);
          MEMORY[0x1EEE9AC00](v147);
          v150 = &v226 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v151 + 16))(v150);
          sub_1D1D20B74(v144, v150, v140, v145, v146);
          __swift_destroy_boxed_opaque_existential_1((v242 + 1));
          sub_1D1B7A848(v39, type metadata accessor for StaticAccessory);
          v92 = 0;
          v91 = sub_1D1B7A910;
          goto LABEL_74;
        }

LABEL_68:
        v139 = v46;
        sub_1D19DD7E4(v46, a2, MEMORY[0x1E69E7CC0], v45);
        v46 = v139;
        goto LABEL_69;
      }

      if (v23)
      {
        goto LABEL_67;
      }

LABEL_135:
      v221 = v46;
      sub_1D173D008();
      v46 = v221;
      v45 = v246;
      *v17 = v246;
      if (v44)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_129;
  }

  v239 = a2;
  if (swift_dynamicCast())
  {
    v39 = v23;
    sub_1D17419CC(v239, v242 + 1);
    v23 = v240;
    v43 = *v240;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v246 = *v23;
    v45 = v246;
    v46 = sub_1D171D408(3u);
    v48 = v45[2];
    v49 = (v47 & 1) == 0;
    v50 = __OFADD__(v48, v49);
    v51 = v48 + v49;
    if (v50)
    {
      __break(1u);
      goto LABEL_122;
    }

    a2 = v47;
    if (v45[3] < v51)
    {
      sub_1D172FE6C(v51, v44);
      v45 = v246;
      v46 = sub_1D171D408(3u);
      if ((a2 & 1) != (v52 & 1))
      {
        goto LABEL_112;
      }

LABEL_31:
      *v23 = v45;
      if (a2)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (v44)
    {
      goto LABEL_31;
    }

LABEL_124:
    v218 = v46;
    sub_1D173D008();
    v46 = v218;
    v45 = v246;
    *v23 = v246;
    if (a2)
    {
LABEL_33:
      a2 = v45[7] + 8 * v46;
      v44 = *a2;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v44;
      if (v81)
      {
LABEL_34:
        v83 = *(v44 + 16);
        v82 = *(v44 + 24);
        if (v83 >= v82 >> 1)
        {
          *a2 = sub_1D177F2B8((v82 > 1), v83 + 1, 1, v44);
        }

        v84 = v243;
        v85 = v244;
        v86 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
        v87 = *(*(v84 - 8) + 64);
        MEMORY[0x1EEE9AC00](v86);
        v89 = &v226 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v90 + 16))(v89);
        sub_1D1D20B74(v83, v89, a2, v84, v85);
        __swift_destroy_boxed_opaque_existential_1((v242 + 1));
        sub_1D1B7A848(v39, type metadata accessor for StaticMediaProfile);
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_122:
      v44 = sub_1D177F2B8(0, *(v44 + 16) + 1, 1, v44);
      *a2 = v44;
      goto LABEL_34;
    }

LABEL_32:
    v80 = v46;
    sub_1D19DD7E4(v46, 3, MEMORY[0x1E69E7CC0], v45);
    v46 = v80;
    goto LABEL_33;
  }

  v39 = v238;
  v53 = swift_dynamicCast();
  v54 = v239;
  v17 = v240;
  if (v53)
  {
    sub_1D17419CC(v239, v242 + 1);
    v55 = *v17;
    LOBYTE(v44) = swift_isUniquelyReferenced_nonNull_native();
    v246 = *v17;
    v45 = v246;
    v46 = sub_1D171D408(3u);
    v57 = v45[2];
    v58 = (v56 & 1) == 0;
    v50 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (!v50)
    {
      a2 = v56;
      if (v45[3] >= v59)
      {
        if ((v44 & 1) == 0)
        {
          goto LABEL_130;
        }
      }

      else
      {
        sub_1D172FE6C(v59, v44);
        v45 = v246;
        v46 = sub_1D171D408(3u);
        if ((a2 & 1) != (v60 & 1))
        {
          goto LABEL_112;
        }
      }

      *v17 = v45;
      if (a2)
      {
LABEL_51:
        v115 = (v45[7] + 8 * v46);
        v116 = *v115;
        v117 = swift_isUniquelyReferenced_nonNull_native();
        *v115 = v116;
        if ((v117 & 1) == 0)
        {
          v116 = sub_1D177F2B8(0, v116[2] + 1, 1, v116);
          *v115 = v116;
        }

        v119 = v116[2];
        v118 = v116[3];
        if (v119 >= v118 >> 1)
        {
          *v115 = sub_1D177F2B8((v118 > 1), v119 + 1, 1, v116);
        }

        v120 = v243;
        v121 = v244;
        v122 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
        v123 = *(*(v120 - 8) + 64);
        MEMORY[0x1EEE9AC00](v122);
        v125 = &v226 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v126 + 16))(v125);
        sub_1D1D20B74(v119, v125, v115, v120, v121);
        __swift_destroy_boxed_opaque_existential_1((v242 + 1));
        sub_1D1B7A848(v39, type metadata accessor for StaticMediaSystem);
        v91 = 0;
        v92 = 0;
        v98 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v93 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_50:
      v114 = v46;
      sub_1D19DD7E4(v46, 3, MEMORY[0x1E69E7CC0], v45);
      v46 = v114;
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_124;
  }

  v71 = v235;
  v72 = v236;
  if (swift_dynamicCast())
  {
    sub_1D17419CC(v54, v242 + 1);
    v39 = v233;
    swift_dynamicCast();
    v73 = *(v39 + *(v71 + 112));
    if (v73 == 53)
    {
      LOBYTE(v73) = *(v39 + *(v71 + 104));
    }

    LOBYTE(v242[0]) = v73;
    ServiceKind.umbrellaCategory.getter(&v241);
    a2 = v241;
    sub_1D17419CC(v54, v242 + 1);
    v74 = *v17;
    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v246 = *v17;
    v45 = v246;
    v46 = sub_1D171D408(a2);
    v76 = v45[2];
    v77 = (v75 & 1) == 0;
    v50 = __OFADD__(v76, v77);
    v78 = v76 + v77;
    if (v50)
    {
LABEL_129:
      __break(1u);
LABEL_130:
      v219 = v46;
      sub_1D173D008();
      v46 = v219;
      v45 = v246;
      *v17 = v246;
      if (a2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    LOBYTE(v44) = v75;
    if (v45[3] >= v78)
    {
      if ((v23 & 1) == 0)
      {
        v222 = v46;
        sub_1D173D008();
        v46 = v222;
        v45 = v246;
        *v17 = v246;
        if (v44)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    else
    {
      sub_1D172FE6C(v78, v23);
      v45 = v246;
      v46 = sub_1D171D408(a2);
      if ((v44 & 1) != (v79 & 1))
      {
        goto LABEL_112;
      }
    }

    *v17 = v45;
    if (v44)
    {
LABEL_79:
      v154 = (v45[7] + 8 * v46);
      v155 = *v154;
      v156 = swift_isUniquelyReferenced_nonNull_native();
      *v154 = v155;
      if ((v156 & 1) == 0)
      {
        v155 = sub_1D177F2B8(0, v155[2] + 1, 1, v155);
        *v154 = v155;
      }

      v158 = v155[2];
      v157 = v155[3];
      if (v158 >= v157 >> 1)
      {
        *v154 = sub_1D177F2B8((v157 > 1), v158 + 1, 1, v155);
      }

      v159 = v243;
      v160 = v244;
      v161 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
      v162 = *(*(v159 - 8) + 64);
      MEMORY[0x1EEE9AC00](v161);
      v164 = &v226 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v165 + 16))(v164);
      sub_1D1D20B74(v158, v164, v154, v159, v160);
      __swift_destroy_boxed_opaque_existential_1((v242 + 1));
      sub_1D1B7A848(v39, type metadata accessor for StaticService);
      sub_1D1B7A848(v72, type metadata accessor for StaticService);
      v91 = 0;
      v92 = 0;
      v98 = 0;
      v93 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v94 = sub_1D1B7A910;
      goto LABEL_75;
    }

LABEL_78:
    v153 = v46;
    sub_1D19DD7E4(v46, a2, MEMORY[0x1E69E7CC0], v45);
    v46 = v153;
    goto LABEL_79;
  }

  v39 = v234;
  if (swift_dynamicCast())
  {
    v107 = v54[3];
    v44 = v54[4];
    __swift_project_boxed_opaque_existential_1(v54, v107);
    (*(v44 + 112))(v242, v107, v44);
    ServiceKind.umbrellaCategory.getter(&v241);
    a2 = v241;
    sub_1D17419CC(v54, v242 + 1);
    v108 = *v17;
    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v246 = *v17;
    v45 = v246;
    v46 = sub_1D171D408(a2);
    v110 = v45[2];
    v111 = (v109 & 1) == 0;
    v50 = __OFADD__(v110, v111);
    v112 = v110 + v111;
    if (v50)
    {
      __break(1u);
      goto LABEL_135;
    }

    LOBYTE(v44) = v109;
    if (v45[3] < v112)
    {
      sub_1D172FE6C(v112, v23);
      v45 = v246;
      v46 = sub_1D171D408(a2);
      if ((v44 & 1) != (v113 & 1))
      {
        goto LABEL_112;
      }

LABEL_88:
      *v17 = v45;
      if (v44)
      {
LABEL_90:
        v168 = (v45[7] + 8 * v46);
        v169 = *v168;
        v170 = swift_isUniquelyReferenced_nonNull_native();
        *v168 = v169;
        if ((v170 & 1) == 0)
        {
          v169 = sub_1D177F2B8(0, v169[2] + 1, 1, v169);
          *v168 = v169;
        }

        v172 = v169[2];
        v171 = v169[3];
        if (v172 >= v171 >> 1)
        {
          *v168 = sub_1D177F2B8((v171 > 1), v172 + 1, 1, v169);
        }

        v173 = v243;
        v174 = v244;
        v175 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
        v176 = *(*(v173 - 8) + 64);
        MEMORY[0x1EEE9AC00](v175);
        v178 = &v226 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v179 + 16))(v178);
        sub_1D1D20B74(v172, v178, v168, v173, v174);
        __swift_destroy_boxed_opaque_existential_1((v242 + 1));
        sub_1D1B7A848(v39, type metadata accessor for StaticServiceGroup);
        v91 = 0;
        v92 = 0;
        v98 = 0;
        v93 = 0;
        v94 = 0;
        v96 = 0;
        v97 = 0;
        v95 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_89:
      v167 = v46;
      sub_1D19DD7E4(v46, a2, MEMORY[0x1E69E7CC0], v45);
      v46 = v167;
      goto LABEL_90;
    }

    if (v23)
    {
      goto LABEL_88;
    }

LABEL_140:
    v223 = v46;
    sub_1D173D008();
    v46 = v223;
    v45 = v246;
    *v17 = v246;
    if (v44)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  v44 = v230;
  v138 = v231;
  if (!swift_dynamicCast())
  {
    v166 = v227;
    v91 = 0;
    v92 = 0;
    v98 = 0;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    if (!swift_dynamicCast())
    {
      goto LABEL_75;
    }

    v39 = v226;
    sub_1D1B7A8A8(v166, v226, type metadata accessor for StaticEndpoint);
    static MatterDeviceType.primaryDeviceType(for:)(*(v39 + *(v229 + 32)), v242 + 1);
    v44 = v239;
    v17 = v240;
    if (BYTE1(v242[0]) == 28)
    {
      a2 = 7;
    }

    else
    {
      LOBYTE(v246) = BYTE1(v242[0]);
      MatterDeviceType.umbrellaCategory.getter(v242);
      a2 = LOBYTE(v242[0]);
    }

    sub_1D17419CC(v44, v242 + 1);
    v199 = *v17;
    LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
    v246 = *v17;
    v45 = v246;
    v46 = sub_1D171D408(a2);
    v201 = v45[2];
    v202 = (v200 & 1) == 0;
    v50 = __OFADD__(v201, v202);
    v203 = v201 + v202;
    if (!v50)
    {
      LOBYTE(v44) = v200;
      if (v45[3] >= v203)
      {
        goto LABEL_113;
      }

      sub_1D172FE6C(v203, v23);
      v45 = v246;
      v46 = sub_1D171D408(a2);
      if ((v44 & 1) == (v204 & 1))
      {
        goto LABEL_114;
      }

LABEL_112:
      v46 = sub_1D1E690FC();
      __break(1u);
LABEL_113:
      if ((v23 & 1) == 0)
      {
        v225 = v46;
        sub_1D173D008();
        v46 = v225;
        v45 = v246;
        *v17 = v246;
        if (v44)
        {
          goto LABEL_116;
        }

        goto LABEL_115;
      }

LABEL_114:
      *v17 = v45;
      if (v44)
      {
LABEL_116:
        v206 = (v45[7] + 8 * v46);
        v207 = *v206;
        v208 = swift_isUniquelyReferenced_nonNull_native();
        *v206 = v207;
        if ((v208 & 1) == 0)
        {
          v207 = sub_1D177F2B8(0, v207[2] + 1, 1, v207);
          *v206 = v207;
        }

        v210 = v207[2];
        v209 = v207[3];
        if (v210 >= v209 >> 1)
        {
          *v206 = sub_1D177F2B8((v209 > 1), v210 + 1, 1, v207);
        }

        v211 = v243;
        v212 = v244;
        v213 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
        v214 = *(*(v211 - 8) + 64);
        MEMORY[0x1EEE9AC00](v213);
        v216 = &v226 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v217 + 16))(v216);
        sub_1D1D20B74(v210, v216, v206, v211, v212);
        __swift_destroy_boxed_opaque_existential_1((v242 + 1));
        sub_1D1B7A848(v39, type metadata accessor for StaticEndpoint);
        v91 = 0;
        v92 = 0;
        v98 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v97 = sub_1D1B7A910;
        goto LABEL_75;
      }

LABEL_115:
      v205 = v46;
      sub_1D19DD7E4(v46, a2, MEMORY[0x1E69E7CC0], v45);
      v46 = v205;
      goto LABEL_116;
    }

    __break(1u);
    goto LABEL_143;
  }

  v39 = v228;
  sub_1D1B7A8A8(v44, v228, type metadata accessor for StaticMatterDevice);
  static MatterDeviceType.primaryDeviceType(for:)(*(v39 + *(v138 + 32)), v242 + 1);
  if (BYTE1(v242[0]) == 28)
  {
    a2 = 7;
  }

  else
  {
    LOBYTE(v246) = BYTE1(v242[0]);
    MatterDeviceType.umbrellaCategory.getter(v242);
    a2 = LOBYTE(v242[0]);
  }

  sub_1D17419CC(v54, v242 + 1);
  v180 = *v17;
  LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v17;
  v45 = v246;
  v46 = sub_1D171D408(a2);
  v182 = v45[2];
  v183 = (v181 & 1) == 0;
  v50 = __OFADD__(v182, v183);
  v184 = v182 + v183;
  if (v50)
  {
    __break(1u);
    goto LABEL_140;
  }

  LOBYTE(v44) = v181;
  if (v45[3] >= v184)
  {
    if (v23)
    {
      goto LABEL_101;
    }

LABEL_143:
    v224 = v46;
    sub_1D173D008();
    v46 = v224;
    v45 = v246;
    *v17 = v246;
    if (v44)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  sub_1D172FE6C(v184, v23);
  v45 = v246;
  v46 = sub_1D171D408(a2);
  if ((v44 & 1) != (v185 & 1))
  {
    goto LABEL_112;
  }

LABEL_101:
  *v17 = v45;
  if ((v44 & 1) == 0)
  {
LABEL_102:
    v186 = v46;
    sub_1D19DD7E4(v46, a2, MEMORY[0x1E69E7CC0], v45);
    v46 = v186;
  }

LABEL_103:
  v187 = (v45[7] + 8 * v46);
  v188 = *v187;
  v189 = swift_isUniquelyReferenced_nonNull_native();
  *v187 = v188;
  if ((v189 & 1) == 0)
  {
    v188 = sub_1D177F2B8(0, v188[2] + 1, 1, v188);
    *v187 = v188;
  }

  v191 = v188[2];
  v190 = v188[3];
  if (v191 >= v190 >> 1)
  {
    *v187 = sub_1D177F2B8((v190 > 1), v191 + 1, 1, v188);
  }

  v192 = v243;
  v193 = v244;
  v194 = __swift_mutable_project_boxed_opaque_existential_1(v242 + 1, v243);
  v195 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v197 = &v226 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v198 + 16))(v197);
  sub_1D1D20B74(v191, v197, v187, v192, v193);
  __swift_destroy_boxed_opaque_existential_1((v242 + 1));
  sub_1D1B7A848(v39, type metadata accessor for StaticMatterDevice);
  v91 = 0;
  v92 = 0;
  v98 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v97 = 0;
  v96 = sub_1D1B7A910;
LABEL_75:
  __swift_destroy_boxed_opaque_existential_1(v245);
  sub_1D17169C0(v91);
  sub_1D17169C0(v92);
  sub_1D17169C0(v98);
  sub_1D17169C0(v93);
  sub_1D17169C0(v94);
  sub_1D17169C0(v95);
  sub_1D17169C0(v96);
  return sub_1D17169C0(v97);
}

uint64_t static RoomSectionByUmbrellaCategory.umbrellaCategory(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *MEMORY[0x1E696C940];
  if (sub_1D1E6781C() == a1 && v7 == a2)
  {
    goto LABEL_18;
  }

  v9 = sub_1D1E6904C();

  if (v9)
  {
    goto LABEL_19;
  }

  v11 = *MEMORY[0x1E696C948];
  if (sub_1D1E6781C() == a1 && v12 == a2)
  {
    goto LABEL_18;
  }

  v14 = sub_1D1E6904C();

  if (v14)
  {
    goto LABEL_19;
  }

  v15 = *MEMORY[0x1E696C950];
  if (sub_1D1E6781C() == a1 && v16 == a2)
  {
    goto LABEL_18;
  }

  v18 = sub_1D1E6904C();

  if (v18)
  {
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = *MEMORY[0x1E696C958];
  if (sub_1D1E6781C() == a1 && v20 == a2)
  {
LABEL_18:

    goto LABEL_19;
  }

  v22 = sub_1D1E6904C();

  if (v22)
  {
    goto LABEL_19;
  }

  v23 = *MEMORY[0x1E696C960];
  if (sub_1D1E6781C() == a1 && v24 == a2)
  {
LABEL_24:

    v21 = 3;
    goto LABEL_20;
  }

  v25 = sub_1D1E6904C();

  if (v25)
  {
    goto LABEL_26;
  }

  v26 = *MEMORY[0x1E696C968];
  if (sub_1D1E6781C() == a1 && v27 == a2)
  {
    goto LABEL_18;
  }

  v28 = sub_1D1E6904C();

  if (v28)
  {
    goto LABEL_19;
  }

  v29 = *MEMORY[0x1E696C970];
  if (sub_1D1E6781C() == a1 && v30 == a2)
  {
    goto LABEL_24;
  }

  v31 = sub_1D1E6904C();

  if (v31)
  {
    goto LABEL_26;
  }

  v32 = *MEMORY[0x1E696C978];
  if (sub_1D1E6781C() == a1 && v33 == a2)
  {
    goto LABEL_24;
  }

  v34 = sub_1D1E6904C();

  if (v34)
  {
    goto LABEL_26;
  }

  v35 = *MEMORY[0x1E696C980];
  if (sub_1D1E6781C() == a1 && v36 == a2)
  {
    goto LABEL_38;
  }

  v37 = sub_1D1E6904C();

  if (v37)
  {
LABEL_40:
    v21 = 7;
    goto LABEL_20;
  }

  v38 = *MEMORY[0x1E696C988];
  if (sub_1D1E6781C() == a1 && v39 == a2)
  {
LABEL_43:

    v21 = 4;
    goto LABEL_20;
  }

  v40 = sub_1D1E6904C();

  if (v40)
  {
    goto LABEL_45;
  }

  v41 = *MEMORY[0x1E696C990];
  if (sub_1D1E6781C() == a1 && v42 == a2)
  {
    goto LABEL_43;
  }

  v43 = sub_1D1E6904C();

  if (v43)
  {
    goto LABEL_45;
  }

  v44 = *MEMORY[0x1E696C998];
  if (sub_1D1E6781C() == a1 && v45 == a2)
  {
    goto LABEL_18;
  }

  v46 = sub_1D1E6904C();

  if (v46)
  {
    goto LABEL_19;
  }

  v47 = *MEMORY[0x1E696C9A0];
  if (sub_1D1E6781C() == a1 && v48 == a2)
  {
    goto LABEL_55;
  }

  v49 = sub_1D1E6904C();

  if (v49)
  {
    goto LABEL_57;
  }

  v50 = *MEMORY[0x1E696C9A8];
  if (sub_1D1E6781C() == a1 && v51 == a2)
  {
    goto LABEL_43;
  }

  v52 = sub_1D1E6904C();

  if (v52)
  {
    goto LABEL_45;
  }

  v53 = *MEMORY[0x1E696C9B0];
  if (sub_1D1E6781C() == a1 && v54 == a2)
  {
    goto LABEL_24;
  }

  v55 = sub_1D1E6904C();

  if (v55)
  {
    goto LABEL_26;
  }

  v56 = *MEMORY[0x1E696C9B8];
  if (sub_1D1E6781C() == a1 && v57 == a2)
  {
    goto LABEL_43;
  }

  v58 = sub_1D1E6904C();

  if (v58)
  {
    goto LABEL_45;
  }

  v59 = *MEMORY[0x1E696C9C0];
  if (sub_1D1E6781C() == a1 && v60 == a2)
  {

    v21 = 2;
    goto LABEL_20;
  }

  v61 = sub_1D1E6904C();

  if (v61)
  {
    v21 = 2;
    goto LABEL_20;
  }

  v62 = *MEMORY[0x1E696C9C8];
  if (sub_1D1E6781C() == a1 && v63 == a2)
  {
    goto LABEL_38;
  }

  v64 = sub_1D1E6904C();

  if (v64)
  {
    goto LABEL_40;
  }

  v65 = *MEMORY[0x1E696C9D0];
  if (sub_1D1E6781C() == a1 && v66 == a2)
  {
    goto LABEL_38;
  }

  v67 = sub_1D1E6904C();

  if (v67)
  {
    goto LABEL_40;
  }

  v68 = *MEMORY[0x1E696C9D8];
  if (sub_1D1E6781C() == a1 && v69 == a2)
  {
    goto LABEL_38;
  }

  v70 = sub_1D1E6904C();

  if (v70)
  {
    goto LABEL_40;
  }

  v71 = *MEMORY[0x1E696C9E0];
  if (sub_1D1E6781C() == a1 && v72 == a2)
  {
    goto LABEL_38;
  }

  v73 = sub_1D1E6904C();

  if (v73)
  {
    goto LABEL_40;
  }

  v74 = *MEMORY[0x1E696C9E8];
  if (sub_1D1E6781C() == a1 && v75 == a2)
  {
    goto LABEL_43;
  }

  v76 = sub_1D1E6904C();

  if (v76)
  {
LABEL_45:
    v21 = 4;
    goto LABEL_20;
  }

  v77 = *MEMORY[0x1E696C9F0];
  if (sub_1D1E6781C() == a1 && v78 == a2)
  {
    goto LABEL_38;
  }

  v79 = sub_1D1E6904C();

  if (v79)
  {
    goto LABEL_40;
  }

  v80 = *MEMORY[0x1E696C9F8];
  if (sub_1D1E6781C() == a1 && v81 == a2)
  {
LABEL_55:

    v21 = 6;
    goto LABEL_20;
  }

  v82 = sub_1D1E6904C();

  if (v82)
  {
LABEL_57:
    v21 = 6;
    goto LABEL_20;
  }

  v83 = *MEMORY[0x1E696CA00];
  if (sub_1D1E6781C() == a1 && v84 == a2)
  {
    goto LABEL_24;
  }

  v85 = sub_1D1E6904C();

  if (v85)
  {
    goto LABEL_26;
  }

  v86 = *MEMORY[0x1E696CA08];
  if (sub_1D1E6781C() == a1 && v87 == a2)
  {
    goto LABEL_55;
  }

  v88 = sub_1D1E6904C();

  if (v88)
  {
    goto LABEL_57;
  }

  v89 = *MEMORY[0x1E696CA10];
  if (sub_1D1E6781C() == a1 && v90 == a2)
  {
    goto LABEL_38;
  }

  v91 = sub_1D1E6904C();

  if (v91)
  {
    goto LABEL_40;
  }

  v92 = *MEMORY[0x1E696CA18];
  if (sub_1D1E6781C() == a1 && v93 == a2)
  {
    goto LABEL_38;
  }

  v94 = sub_1D1E6904C();

  if (v94)
  {
    goto LABEL_40;
  }

  v95 = *MEMORY[0x1E696CA20];
  if (sub_1D1E6781C() == a1 && v96 == a2)
  {
    goto LABEL_24;
  }

  v97 = sub_1D1E6904C();

  if (v97)
  {
    goto LABEL_26;
  }

  v98 = *MEMORY[0x1E696CA28];
  if (sub_1D1E6781C() == a1 && v99 == a2)
  {
    goto LABEL_24;
  }

  v100 = sub_1D1E6904C();

  if (v100)
  {
    goto LABEL_26;
  }

  v101 = *MEMORY[0x1E696CA30];
  if (sub_1D1E6781C() == a1 && v102 == a2)
  {
    goto LABEL_24;
  }

  v103 = sub_1D1E6904C();

  if (v103)
  {
LABEL_26:
    v21 = 3;
    goto LABEL_20;
  }

  v104 = *MEMORY[0x1E696CA38];
  if (sub_1D1E6781C() == a1 && v105 == a2)
  {
    goto LABEL_18;
  }

  v106 = sub_1D1E6904C();

  if (v106)
  {
    goto LABEL_19;
  }

  v107 = *MEMORY[0x1E696CA40];
  if (sub_1D1E6781C() == a1 && v108 == a2)
  {
    goto LABEL_43;
  }

  v109 = sub_1D1E6904C();

  if (v109)
  {
    goto LABEL_45;
  }

  v110 = *MEMORY[0x1E696CA48];
  if (sub_1D1E6781C() == a1 && v111 == a2)
  {
LABEL_38:

    v21 = 7;
    goto LABEL_20;
  }

  v112 = sub_1D1E6904C();

  if (v112)
  {
    goto LABEL_40;
  }

  v113 = *MEMORY[0x1E696CA50];
  if (sub_1D1E6781C() == a1 && v114 == a2)
  {
    goto LABEL_43;
  }

  v115 = sub_1D1E6904C();

  if (v115)
  {
    goto LABEL_45;
  }

  v116 = *MEMORY[0x1E696CA58];
  if (sub_1D1E6781C() == a1 && v117 == a2)
  {
    goto LABEL_43;
  }

  v118 = sub_1D1E6904C();

  if (v118)
  {
    v21 = 4;
  }

  else
  {
    v21 = 7;
  }

LABEL_20:
  *a3 = v21;
  return result;
}

uint64_t sub_1D1B797F0(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v48 = sub_1D1E66A7C();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v43 - v16;
  if (!*(a3 + 16))
  {
    return result;
  }

  v18 = *a2;
  result = sub_1D171D408(v18);
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v47 = a1;
  v20 = *(*(a3 + 56) + 8 * result);
  sub_1D1B7A7D8(a4, v17);
  v21 = type metadata accessor for StaticRoom(0);
  if ((*(*(v21 - 8) + 48))(v17, 1, v21) == 1)
  {

    sub_1D1741A30(v17, &qword_1EC643878, &qword_1D1E72030);
LABEL_9:
    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v22 = *&v17[*(v21 + 76)];

  sub_1D1B7A848(v17, type metadata accessor for StaticRoom);
  if (!*(v22 + 16) || (v23 = sub_1D171D408(v18), (v24 & 1) == 0))
  {

    goto LABEL_9;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

LABEL_10:
  v26 = sub_1D1D07DC4(v25, v20);

  v51 = v18;
  v52 = v18;
  v27 = UmbrellaCategory.localizedDescription.getter();
  v28 = v27;
  v46 = v29;
  v30 = *(v26 + 16);
  if (v30)
  {
    v44 = v27;
    v45 = v4;
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v30, 0);
    v31 = v50;
    v43 = v26;
    v32 = v26 + 32;
    do
    {
      sub_1D17419CC(v32, v49);
      v33 = v49[4];
      __swift_project_boxed_opaque_existential_1(v49, v49[3]);
      v34 = *(v33 + 48);
      sub_1D1E6886C();
      __swift_destroy_boxed_opaque_existential_1(v49);
      v50 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1D178CEFC(v35 > 1, v36 + 1, 1);
        v31 = v50;
      }

      *(v31 + 16) = v36 + 1;
      (*(v9 + 32))(v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36, v12, v48);
      v32 += 40;
      --v30;
    }

    while (v30);

    v28 = v44;
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
  }

  v37 = v47;
  v38 = *v47;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D177F858(0, *(v38 + 16) + 1, 1, v38);
    v38 = result;
  }

  v40 = *(v38 + 16);
  v39 = *(v38 + 24);
  if (v40 >= v39 >> 1)
  {
    result = sub_1D177F858((v39 > 1), v40 + 1, 1, v38);
    v38 = result;
  }

  *(v38 + 16) = v40 + 1;
  v41 = v38 + 32 * v40;
  *(v41 + 32) = v51;
  v42 = v46;
  *(v41 + 40) = v28;
  *(v41 + 48) = v42;
  *(v41 + 56) = v31;
  *v37 = v38;
  return result;
}

uint64_t static RoomSectionByUmbrellaCategory.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1B79C18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1B79C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1B79C90(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1B79CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1B79D08(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C0F8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D1B79D74(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D1B79D74(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D1B79F48(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D1B79E6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1B79E6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 32 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 8) && v10 == *(v12 + 16);
      if (v13 || (result = sub_1D1E6904C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      result = *(v12 + 40);
      v15 = *(v12 + 48);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = v14;
      *(v12 + 8) = result;
      *(v12 + 16) = v15;
      v10 = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B79F48(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v96;
    if (!*v96)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1D1E0BE44(v7);
      v7 = result;
    }

    v87 = v7 + 16;
    v88 = *(v7 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v7[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1D1B7A530((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v8);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_129;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_130;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_131;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + 32 * v6;
      result = *(v9 + 8);
      v10 = *a3 + 32 * v8;
      if (result == *(v10 + 8) && *(v9 + 16) == *(v10 + 16))
      {
        v12 = 0;
      }

      else
      {
        result = sub_1D1E6904C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 80);
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 5) && *v13 == *(v13 - 4))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D1E6904C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 4;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = 32 * v6 - 16;
          v16 = 32 * v8;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v25 + v16);
              v20 = (v25 + v15);
              v21 = *v19;
              v22 = *(v19 + 1);
              v23 = *(v19 + 1);
              v24 = *v20;
              *v19 = *(v20 - 1);
              *(v19 + 1) = v24;
              *(v20 - 16) = v21;
              *(v20 - 1) = v22;
              *v20 = v23;
            }

            ++v18;
            v15 -= 32;
            v16 += 32;
          }

          while (v18 < v17);
        }
      }
    }

    v26 = a3[1];
    if (v6 < v26)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = (v8 + a4);
        }

        if (v27 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v27)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1D177D070((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v43;
    v44 = &v7[16 * v42];
    *(v44 + 4) = v8;
    *(v44 + 5) = v6;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v7[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v7[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v84 = *&v7[16 * v8 + 32];
        v85 = *&v7[16 * v46 + 40];
        sub_1D1B7A530((*a3 + 32 * v84), (*a3 + 32 * *&v7[16 * v46 + 32]), (*a3 + 32 * v85), v45);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D1E0BE44(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v86 = &v7[16 * v8];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_1D1E0BDB8(v46);
        v43 = *(v7 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v7[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v7[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v6 - 32;
  v94 = v8;
  v30 = (v8 - v6);
LABEL_43:
  v31 = v28 + 32 * v6;
  v32 = *(v31 + 8);
  v33 = *(v31 + 16);
  v34 = v30;
  v35 = v29;
  while (1)
  {
    v36 = v32 == *(v35 + 8) && v33 == *(v35 + 16);
    if (v36 || (result = sub_1D1E6904C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v29 += 32;
      --v30;
      if (v6 != v27)
      {
        goto LABEL_43;
      }

      v6 = v27;
      v8 = v94;
      goto LABEL_54;
    }

    if (!v28)
    {
      break;
    }

    v37 = *(v35 + 32);
    v32 = *(v35 + 40);
    v38 = *(v35 + 48);
    v39 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v39;
    *v35 = v37;
    *(v35 + 8) = v32;
    *(v35 + 16) = v38;
    v33 = v38;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1D1B7A530(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v17 && (sub_1D1E6904C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v5 -= 32;
    do
    {
      v18 = *(v14 - 3) == *(v6 - 3) && *(v14 - 2) == *(v6 - 2);
      if (!v18 && (sub_1D1E6904C() & 1) != 0)
      {
        v21 = v6 - 32;
        if (v5 + 32 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v19 = v14 - 32;
      if (v5 + 32 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

unint64_t sub_1D1B7A774()
{
  result = qword_1EC64B8C8;
  if (!qword_1EC64B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B8C8);
  }

  return result;
}

uint64_t sub_1D1B7A7D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B7A848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B7A8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B7A918(uint64_t a1)
{
  v3 = type metadata accessor for StaticAccessory(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v30[1] = v1;
  v41 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  sub_1D178CF40(0, v8, 0);
  v9 = v41;
  v10 = v32 + 64;
  v11 = -1 << *(v32 + 32);
  result = sub_1D1E6869C();
  v13 = result;
  v14 = v32;
  v15 = 0;
  v31 = v32 + 72;
  v33 = v8;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v37 = *(v14 + 36);
    sub_1D1B89120(*(v14 + 56) + *(v35 + 72) * v13, v7, type metadata accessor for StaticAccessory);
    v41 = v9;
    v18 = v7;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D178CF40((v19 > 1), v20 + 1, 1);
      v9 = v41;
    }

    v39 = v36;
    v40 = sub_1D1B891E8(&qword_1EC64BA18, type metadata accessor for StaticAccessory);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    sub_1D1B89120(v18, boxed_opaque_existential_1, type metadata accessor for StaticAccessory);
    *(v9 + 16) = v20 + 1;
    sub_1D16EEE20(&v38, v9 + 40 * v20 + 32);
    result = sub_1D1B89188(v18, type metadata accessor for StaticAccessory);
    v16 = 1 << *(v14 + 32);
    if (v13 >= v16)
    {
      goto LABEL_23;
    }

    v7 = v18;
    v10 = v34;
    v22 = *(v34 + 8 * v17);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v7;
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D1716920(v13, v37, 0);
          v14 = v32;
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v13, v37, 0);
      v14 = v32;
LABEL_19:
      v7 = v24;
    }

    ++v15;
    v13 = v16;
    if (v15 == v33)
    {
      return v9;
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
  return result;
}

uint64_t sub_1D1B7AC88(uint64_t a1)
{
  v3 = type metadata accessor for StaticService(0);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v30[1] = v1;
  v41 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  sub_1D178CF40(0, v8, 0);
  v9 = v41;
  v10 = v32 + 64;
  v11 = -1 << *(v32 + 32);
  result = sub_1D1E6869C();
  v13 = result;
  v14 = v32;
  v15 = 0;
  v31 = v32 + 72;
  v33 = v8;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v37 = *(v14 + 36);
    sub_1D1B89120(*(v14 + 56) + *(v35 + 72) * v13, v7, type metadata accessor for StaticService);
    v41 = v9;
    v18 = v7;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D178CF40((v19 > 1), v20 + 1, 1);
      v9 = v41;
    }

    v39 = v36;
    v40 = sub_1D1B891E8(&qword_1EC646AF0, type metadata accessor for StaticService);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    sub_1D1B89120(v18, boxed_opaque_existential_1, type metadata accessor for StaticService);
    *(v9 + 16) = v20 + 1;
    sub_1D16EEE20(&v38, v9 + 40 * v20 + 32);
    result = sub_1D1B89188(v18, type metadata accessor for StaticService);
    v16 = 1 << *(v14 + 32);
    if (v13 >= v16)
    {
      goto LABEL_23;
    }

    v7 = v18;
    v10 = v34;
    v22 = *(v34 + 8 * v17);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v7;
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D1716920(v13, v37, 0);
          v14 = v32;
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v13, v37, 0);
      v14 = v32;
LABEL_19:
      v7 = v24;
    }

    ++v15;
    v13 = v16;
    if (v15 == v33)
    {
      return v9;
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
  return result;
}

uint64_t sub_1D1B7AFF8(uint64_t a1)
{
  v3 = type metadata accessor for StaticServiceGroup();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v30[1] = v1;
  v41 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  sub_1D178CF40(0, v8, 0);
  v9 = v41;
  v10 = v32 + 64;
  v11 = -1 << *(v32 + 32);
  result = sub_1D1E6869C();
  v13 = result;
  v14 = v32;
  v15 = 0;
  v31 = v32 + 72;
  v33 = v8;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v37 = *(v14 + 36);
    sub_1D1B89120(*(v14 + 56) + *(v35 + 72) * v13, v7, type metadata accessor for StaticServiceGroup);
    v41 = v9;
    v18 = v7;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D178CF40((v19 > 1), v20 + 1, 1);
      v9 = v41;
    }

    v39 = v36;
    v40 = sub_1D1B891E8(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    sub_1D1B89120(v18, boxed_opaque_existential_1, type metadata accessor for StaticServiceGroup);
    *(v9 + 16) = v20 + 1;
    sub_1D16EEE20(&v38, v9 + 40 * v20 + 32);
    result = sub_1D1B89188(v18, type metadata accessor for StaticServiceGroup);
    v16 = 1 << *(v14 + 32);
    if (v13 >= v16)
    {
      goto LABEL_23;
    }

    v7 = v18;
    v10 = v34;
    v22 = *(v34 + 8 * v17);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v7;
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D1716920(v13, v37, 0);
          v14 = v32;
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v13, v37, 0);
      v14 = v32;
LABEL_19:
      v7 = v24;
    }

    ++v15;
    v13 = v16;
    if (v15 == v33)
    {
      return v9;
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
  return result;
}

uint64_t sub_1D1B7B368(uint64_t a1)
{
  v3 = type metadata accessor for StaticMatterDevice();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v30[1] = v1;
  v41 = MEMORY[0x1E69E7CC0];
  v32 = v5;
  sub_1D178CF40(0, v8, 0);
  v9 = v41;
  v10 = v32 + 64;
  v11 = -1 << *(v32 + 32);
  result = sub_1D1E6869C();
  v13 = result;
  v14 = v32;
  v15 = 0;
  v31 = v32 + 72;
  v33 = v8;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v14 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v10 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    v37 = *(v14 + 36);
    sub_1D1B89120(*(v14 + 56) + *(v35 + 72) * v13, v7, type metadata accessor for StaticMatterDevice);
    v41 = v9;
    v18 = v7;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D178CF40((v19 > 1), v20 + 1, 1);
      v9 = v41;
    }

    v39 = v36;
    v40 = sub_1D1B891E8(&qword_1EC649258, type metadata accessor for StaticMatterDevice);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    sub_1D1B89120(v18, boxed_opaque_existential_1, type metadata accessor for StaticMatterDevice);
    *(v9 + 16) = v20 + 1;
    sub_1D16EEE20(&v38, v9 + 40 * v20 + 32);
    result = sub_1D1B89188(v18, type metadata accessor for StaticMatterDevice);
    v16 = 1 << *(v14 + 32);
    if (v13 >= v16)
    {
      goto LABEL_23;
    }

    v7 = v18;
    v10 = v34;
    v22 = *(v34 + 8 * v17);
    if ((v22 & (1 << v13)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(v14 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v13 & 0x3F));
    if (v23)
    {
      v16 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v7;
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D1716920(v13, v37, 0);
          v14 = v32;
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_1D1716920(v13, v37, 0);
      v14 = v32;
LABEL_19:
      v7 = v24;
    }

    ++v15;
    v13 = v16;
    if (v15 == v33)
    {
      return v9;
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
  return result;
}

uint64_t StaticCameraProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCameraProfile.name.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticCameraProfile() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for StaticCameraProfile()
{
  result = qword_1EE07D488;
  if (!qword_1EE07D488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticCameraProfile.roomIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticCameraProfile() + 24));
}

uint64_t StaticCameraProfile.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticCameraProfile() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t StaticCameraProfile.staticAccessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticCameraProfile() + 32);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticCameraProfile.staticServiceIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticCameraProfile() + 36));
}

uint64_t StaticCameraProfile.currentAccessMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticCameraProfile();
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t StaticCameraProfile.shouldShowInDashboard.setter(char a1)
{
  result = type metadata accessor for StaticCameraProfile();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t StaticCameraProfile.isFavorite.setter(char a1)
{
  result = type metadata accessor for StaticCameraProfile();
  *(v1 + *(result + 60)) = a1;
  return result;
}

unint64_t sub_1D1B7BB80(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7364496D6F6F72;
      break;
    case 3:
      result = 0x656D614E6D6F6F72;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6168636165527369;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x746F687370616E73;
      break;
    case 9:
      result = 0x6F436D6165727473;
      break;
    case 10:
    case 12:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x69726F7661467369;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1B7BD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1B88B2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1B7BD4C(uint64_t a1)
{
  v2 = sub_1D1B8682C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B7BD88(uint64_t a1)
{
  v2 = sub_1D1B8682C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8F0, &qword_1D1E9B048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8682C();
  sub_1D1E6930C();
  LOBYTE(v35) = 0;
  sub_1D1E66A7C();
  sub_1D1B891E8(&qword_1EE07B258, MEMORY[0x1E69695A8]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = type metadata accessor for StaticCameraProfile();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v35) = 1;
    sub_1D1E68ECC();
    v32 = v3;
    v33 = v11;
    v35 = *(v3 + *(v11 + 24));
    v34 = 2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    v16 = sub_1D1B868D4(&qword_1EC646B10, &qword_1EE07B258);
    sub_1D1E68F1C();
    v31[1] = v16;
    v31[2] = v15;
    v17 = v32;
    v18 = (v32 + v33[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v35) = 3;
    sub_1D1E68E0C();
    v21 = v33[8];
    LOBYTE(v35) = 4;
    sub_1D1E68F1C();
    v35 = *(v17 + v33[9]);
    v34 = 5;
    sub_1D1E68F1C();
    v22 = v33;
    v23 = *(v17 + v33[10]);
    LOBYTE(v35) = 6;
    sub_1D1E68EDC();
    LOBYTE(v35) = *(v17 + v22[11]);
    v34 = 7;
    sub_1D1B86880();
    sub_1D1E68F1C();
    v24 = v22[12];
    LOBYTE(v35) = 8;
    type metadata accessor for StaticCameraSnapshotControl();
    sub_1D1B891E8(&qword_1EC64B908, type metadata accessor for StaticCameraSnapshotControl);
    sub_1D1E68E5C();
    v25 = v33[13];
    LOBYTE(v35) = 9;
    type metadata accessor for StaticCameraStreamControl();
    sub_1D1B891E8(&qword_1EC64B910, type metadata accessor for StaticCameraStreamControl);
    sub_1D1E68E5C();
    v26 = *(v17 + v33[14]);
    LOBYTE(v35) = 10;
    sub_1D1E68EDC();
    v27 = *(v32 + v33[15]);
    LOBYTE(v35) = 11;
    sub_1D1E68EDC();
    v28 = v33[16];
    LOBYTE(v35) = 12;
    type metadata accessor for StaticCameraRecordingEventManager();
    sub_1D1B891E8(&qword_1EC64B918, type metadata accessor for StaticCameraRecordingEventManager);
    sub_1D1E68E5C();
    v29 = *(v32 + v33[17]);
    LOBYTE(v35) = 13;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticCameraProfile.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v64 = type metadata accessor for StaticCameraRecordingEventManager();
  v62 = *(v64 - 8);
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v66 = &v54 - v8;
  v67 = type metadata accessor for StaticCameraStreamControl();
  v65 = *(v67 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E669FC();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v63 = &v54 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v56 = &v54 - v19;
  v61 = type metadata accessor for StaticCameraSnapshotControl();
  v20 = *(v61 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v54 - v26;
  v28 = sub_1D1E66A7C();
  v68 = sub_1D1B891E8(qword_1EE07DD78, MEMORY[0x1E69695A8]);
  v69 = v28;
  sub_1D1E676EC();
  v29 = type metadata accessor for StaticCameraProfile();
  v30 = (v1 + v29[5]);
  v31 = *v30;
  v32 = v30[1];
  sub_1D1E678EC();
  sub_1D176D4E8(a1, *(v1 + v29[6]));
  v33 = (v1 + v29[7]);
  if (v33[1])
  {
    v34 = v23;
    v35 = *v33;
    sub_1D1E6922C();
    v23 = v34;
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v36 = v1 + v29[8];
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v2 + v29[9]));
  v37 = *(v2 + v29[10]);
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v2 + v29[11]));
  sub_1D1741C08(v2 + v29[12], v27, &qword_1EC64B8D8, &qword_1D1E9B030);
  v38 = v61;
  if ((*(v20 + 48))(v27, 1, v61) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1B89F40(v27, v23, type metadata accessor for StaticCameraSnapshotControl);
    v39 = v38;
    sub_1D1E6922C();
    sub_1D1E676EC();
    v40 = v56;
    sub_1D1741C08(&v23[*(v39 + 20)], v56, &qword_1EC642570, &qword_1D1E6C6A0);
    v42 = v58;
    v41 = v59;
    if ((*(v58 + 48))(v40, 1, v59) == 1)
    {
      sub_1D1E6922C();
      v43 = v23;
    }

    else
    {
      v44 = v23;
      v45 = v55;
      (*(v42 + 32))(v55, v40, v41);
      sub_1D1E6922C();
      sub_1D1B891E8(&qword_1EC642A50, MEMORY[0x1E6969530]);
      sub_1D1E676EC();
      (*(v42 + 8))(v45, v41);
      v43 = v44;
    }

    sub_1D1B89188(v43, type metadata accessor for StaticCameraSnapshotControl);
  }

  v46 = v63;
  sub_1D1741C08(v2 + v29[13], v63, &qword_1EC64B8E0, &qword_1D1E9B038);
  if ((*(v65 + 48))(v46, 1, v67) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v47 = v60;
    sub_1D1B89F40(v46, v60, type metadata accessor for StaticCameraStreamControl);
    sub_1D1E6922C();
    sub_1D1E676EC();
    MEMORY[0x1D3892850](*(v47 + *(v67 + 20)));
    sub_1D1B89188(v47, type metadata accessor for StaticCameraStreamControl);
  }

  v48 = *(v2 + v29[14]);
  sub_1D1E6922C();
  v49 = *(v2 + v29[15]);
  sub_1D1E6922C();
  v50 = v66;
  sub_1D1741C08(v2 + v29[16], v66, &qword_1EC64B8E8, &qword_1D1E9B040);
  if ((*(v62 + 48))(v50, 1, v64) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v51 = v57;
    sub_1D1B89F40(v66, v57, type metadata accessor for StaticCameraRecordingEventManager);
    sub_1D1E6922C();
    sub_1D1E676EC();
    sub_1D1B89188(v51, type metadata accessor for StaticCameraRecordingEventManager);
  }

  v52 = *(v2 + v29[17]);
  return sub_1D1E6922C();
}

uint64_t StaticCameraProfile.hashValue.getter()
{
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E8, &qword_1D1E9B040);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = v46 - v11;
  v12 = sub_1D1E66A7C();
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = (v46 - v17);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B920, &qword_1D1E9B050);
  v55 = *(v57 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v20 = v46 - v19;
  v21 = type metadata accessor for StaticCameraProfile();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8682C();
  v58 = v20;
  v26 = v59;
  sub_1D1E692FC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = v16;
  v48 = v21;
  v59 = a1;
  v49 = v24;
  LOBYTE(v61) = 0;
  sub_1D1B891E8(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  sub_1D1E68D7C();
  v27 = v12;
  v28 = *(v54 + 32);
  v29 = v49;
  v28(v49, v56, v27);
  LOBYTE(v61) = 1;
  v30 = sub_1D1E68D2C();
  v46[3] = v27;
  v56 = v28;
  v31 = &v29[v48[5]];
  *v31 = v30;
  v31[1] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v60 = 2;
  v33 = sub_1D1B868D4(&qword_1EC646B78, &qword_1EC644B20);
  v46[2] = 0;
  sub_1D1E68D7C();
  v46[1] = v33;
  v34 = v48;
  *&v29[v48[6]] = v61;
  LOBYTE(v61) = 3;
  v35 = sub_1D1E68C6C();
  v36 = &v29[v34[7]];
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v61) = 4;
  v38 = v47;
  sub_1D1E68D7C();
  v56(&v49[v34[8]], v38, v27);
  v60 = 5;
  sub_1D1E68D7C();
  v39 = v49;
  *&v49[v34[9]] = v61;
  LOBYTE(v61) = 6;
  v39[v34[10]] = sub_1D1E68D3C() & 1;
  v60 = 7;
  sub_1D1B86970();
  sub_1D1E68D7C();
  v39[v34[11]] = v61;
  type metadata accessor for StaticCameraSnapshotControl();
  LOBYTE(v61) = 8;
  sub_1D1B891E8(&qword_1EC64B930, type metadata accessor for StaticCameraSnapshotControl);
  v40 = v53;
  sub_1D1E68CBC();
  sub_1D1741A90(v40, &v49[v48[12]], &qword_1EC64B8D8, &qword_1D1E9B030);
  type metadata accessor for StaticCameraStreamControl();
  LOBYTE(v61) = 9;
  sub_1D1B891E8(&qword_1EC64B938, type metadata accessor for StaticCameraStreamControl);
  sub_1D1E68CBC();
  sub_1D1741A90(v52, &v49[v48[13]], &qword_1EC64B8E0, &qword_1D1E9B038);
  LOBYTE(v61) = 10;
  v49[v48[14]] = sub_1D1E68D3C() & 1;
  LOBYTE(v61) = 11;
  v49[v48[15]] = sub_1D1E68D3C() & 1;
  type metadata accessor for StaticCameraRecordingEventManager();
  LOBYTE(v61) = 12;
  sub_1D1B891E8(&qword_1EC64B940, type metadata accessor for StaticCameraRecordingEventManager);
  sub_1D1E68CBC();
  sub_1D1741A90(v51, &v49[v48[16]], &qword_1EC64B8E8, &qword_1D1E9B040);
  LOBYTE(v61) = 13;
  v41 = sub_1D1E68D3C();
  (*(v55 + 8))(v58, v57);
  v42 = v41 & 1;
  v44 = v49;
  v43 = v50;
  v49[v48[17]] = v42;
  sub_1D1B89120(v44, v43, type metadata accessor for StaticCameraProfile);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_1D1B89188(v44, type metadata accessor for StaticCameraProfile);
}

uint64_t sub_1D1B7D73C()
{
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B7D780()
{
  sub_1D1E6920C();
  StaticCameraProfile.hash(into:)(v1);
  return sub_1D1E6926C();
}

void StaticCameraProfile.tileIcon.getter(HomeDataModel::Icon *a1@<X8>)
{
  v1._countAndFlagsBits = 0x69662E6F65646976;
  v1._object = 0xEA00000000006C6CLL;
  Icon.init(customIconName:)(a1, v1);
}

uint64_t StaticCameraProfile.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D1E669FC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

BOOL StaticCameraProfile.isActivated.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for StaticCameraProfile();
  sub_1D1741C08(v0 + *(v5 + 52), v4, &qword_1EC64B8E0, &qword_1D1E9B038);
  v6 = type metadata accessor for StaticCameraStreamControl();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC64B8E0, &qword_1D1E9B038);
    return 0;
  }

  else
  {
    v8 = v4[*(v6 + 20)];
    sub_1D1B89188(v4, type metadata accessor for StaticCameraStreamControl);
    return v8 == 2;
  }
}

BOOL StaticCameraProfile.isTransitioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for StaticCameraProfile() + 52);
  sub_1D1741C08(v0 + v8, v7, &qword_1EC64B8E0, &qword_1D1E9B038);
  v9 = type metadata accessor for StaticCameraStreamControl();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC64B8E0, &qword_1D1E9B038);
  }

  else
  {
    v11 = v7[*(v9 + 20)];
    sub_1D1B89188(v7, type metadata accessor for StaticCameraStreamControl);
    if (v11 == 1)
    {
      return 1;
    }
  }

  sub_1D1741C08(v0 + v8, v5, &qword_1EC64B8E0, &qword_1D1E9B038);
  if (v10(v5, 1, v9) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC64B8E0, &qword_1D1E9B038);
    return 0;
  }

  else
  {
    v13 = v5[*(v9 + 20)];
    sub_1D1B89188(v5, type metadata accessor for StaticCameraStreamControl);
    return v13 == 3;
  }
}

void sub_1D1B7DC04(HomeDataModel::Icon *a1@<X8>)
{
  v1._countAndFlagsBits = 0x69662E6F65646976;
  v1._object = 0xEA00000000006C6CLL;
  Icon.init(customIconName:)(a1, v1);
}

uint64_t sub_1D1B7DC5C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D1B7DCCC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643798, &qword_1D1E71EF0);
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA38, &qword_1D1E9B650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v48 - v11;
  v54 = type metadata accessor for StaticCameraProfile();
  v50 = *(v54 - 8);
  v13 = *(v50 + 64);
  v14 = MEMORY[0x1EEE9AC00](v54);
  v49 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v48 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v48 - v18;
  v55 = a1;
  v19 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v20 = sub_1D1E67C1C();

  if (v20 >> 62)
  {
    goto LABEL_42;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v21)
  {
    v22 = 0;
    v57 = v20 & 0xC000000000000001;
    v51 = (v50 + 48);
    v52 = v12;
    v56 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v57)
      {
        v23 = MEMORY[0x1D3891EF0](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v21 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v26 = [v23 cameraProfiles];
      if (v26)
      {
        v27 = v26;
        sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
        v12 = sub_1D1E67C1C();

        if (v12 >> 62)
        {
          if (!sub_1D1E6873C())
          {
LABEL_26:

            goto LABEL_6;
          }
        }

        else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1D3891EF0](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v28 = *(v12 + 32);
        }

        v29 = v28;

        v30 = v55;
        v12 = v52;
        sub_1D1B7E394(v29, a3, v30, v52);

        if ((*v51)(v12, 1, v54) == 1)
        {
          sub_1D1741A30(v12, &qword_1EC64BA38, &qword_1D1E9B650);
        }

        else
        {
          v31 = v12;
          v32 = v49;
          sub_1D1B89F40(v31, v49, type metadata accessor for StaticCameraProfile);
          v33 = v32;
          v34 = v48;
          sub_1D1B89F40(v33, v48, type metadata accessor for StaticCameraProfile);
          sub_1D1B89F40(v34, v53, type metadata accessor for StaticCameraProfile);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v56 = sub_1D177D77C(0, v56[2] + 1, 1, v56);
          }

          v12 = v56[2];
          v35 = v56[3];
          if (v12 >= v35 >> 1)
          {
            v56 = sub_1D177D77C(v35 > 1, v12 + 1, 1, v56);
          }

          v36 = v56;
          v56[2] = v12 + 1;
          sub_1D1B89F40(v53, v36 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v12, type metadata accessor for StaticCameraProfile);
        }
      }

      else
      {
      }

LABEL_6:
      ++v22;
      if (v25 == v21)
      {
        goto LABEL_29;
      }
    }
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_29:

  v37 = v56;
  v38 = v56[2];
  if (v38)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1D178D114(0, v38, 0);
    v39 = v60;
    v40 = v37 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v41 = *(v50 + 72);
    do
    {
      v42 = *(v59 + 48);
      sub_1D1B89120(v40, &v8[v42], type metadata accessor for StaticCameraProfile);
      v43 = sub_1D1E66A7C();
      (*(*(v43 - 8) + 16))(v8, &v8[v42], v43);
      v60 = v39;
      v45 = *(v39 + 16);
      v44 = *(v39 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D178D114(v44 > 1, v45 + 1, 1);
        v39 = v60;
      }

      *(v39 + 16) = v45 + 1;
      sub_1D1741A90(v8, v39 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v45, &qword_1EC643798, &qword_1D1E71EF0);
      v40 += v41;
      --v38;
    }

    while (v38);

    if (*(v39 + 16))
    {
      goto LABEL_35;
    }

LABEL_37:
    v46 = MEMORY[0x1E69E7CC8];
    goto LABEL_38;
  }

  v39 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_37;
  }

LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B30, &qword_1D1E6E878);
  v46 = sub_1D1E68BCC();
LABEL_38:
  v60 = v46;
  sub_1D1B8703C(v39, 1, &v60);

  return v60;
}

size_t sub_1D1B7E394@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a4;
  v7 = type metadata accessor for StaticCameraRecordingEventManager();
  v142 = *(v7 - 8);
  v8 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v141 = v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v140 = v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v139 = v130 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v130 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v130 - v20;
  v22 = sub_1D1E66A7C();
  v149 = *(v22 - 8);
  v150 = v22;
  v23 = *(v149 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v130 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v146 = v130 - v30;
  v31 = type metadata accessor for StaticCameraProfile();
  v144 = *(v31 - 8);
  v32 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v148 = v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = a1;
  v34 = [v147 accessory];
  if (!v34)
  {
    goto LABEL_6;
  }

  v35 = v34;
  v36 = [v34 home];
  if (!v36)
  {

LABEL_6:

    v46 = v147;
    v47 = v145;
    v48 = *(v144 + 56);

    return v48(v47, 1, 1, v31);
  }

  v135 = a3;
  v136 = v36;
  v133 = v7;
  v37 = [v147 accessory];
  v38 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (v37)
  {
    v39 = v35;
    v40 = v37;
    v41 = [v37 uniqueIdentifier];

    sub_1D1E66A5C();
    v42 = v149;
    v43 = *(v149 + 32);
    v44 = v29;
    v45 = v150;
    v43(v21, v44, v150);
    (*(v42 + 56))(v21, 0, 1, v45);
    v43(v146, v21, v45);
    v35 = v39;
    v38 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  }

  else
  {
    v51 = v149;
    v50 = v150;
    (*(v149 + 56))(v21, 1, 1, v150);
    sub_1D1E66A6C();
    if ((*(v51 + 48))(v21, 1, v50) != 1)
    {
      sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    }
  }

  if (*(a2 + 16) && (v52 = sub_1D1742188(v146), (v53 & 1) != 0))
  {
    v54 = v52;
    v55 = *(a2 + 56);
    v56 = v35;
    v57 = type metadata accessor for StaticAccessory(0);
    v58 = *(v57 - 8);
    sub_1D1B89120(v55 + *(v58 + 72) * v54, v17, type metadata accessor for StaticAccessory);

    v59 = v57;
    v35 = v56;
    (*(v58 + 56))(v17, 0, 1, v59);
  }

  else
  {

    v60 = type metadata accessor for StaticAccessory(0);
    (*(*(v60 - 8) + 56))(v17, 1, 1, v60);
  }

  v61 = [v35 room];
  if (!v61)
  {
    v61 = [v136 roomForEntireHome];
  }

  v137 = v61;
  v134 = v35;
  v62 = [v35 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v63 = sub_1D1E67C1C();

  if (v63 >> 62)
  {
    v64 = sub_1D1E6873C();
  }

  else
  {
    v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v138 = v31;
  v143 = v17;
  if (!v64)
  {

    v66 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v151 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v64 & ~(v64 >> 63), 0);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v65 = 0;
    v66 = v151;
    do
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x1D3891EF0](v65, v63);
      }

      else
      {
        v67 = *(v63 + 8 * v65 + 32);
      }

      v68 = v67;
      v69 = [v67 uniqueIdentifier];
      sub_1D1E66A5C();

      v151 = v66;
      v71 = *(v66 + 16);
      v70 = *(v66 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1D178CEFC(v70 > 1, v71 + 1, 1);
        v66 = v151;
      }

      ++v65;
      *(v66 + 16) = v71 + 1;
      (*(v149 + 32))(v66 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v71, v26, v150);
    }

    while (v64 != v65);

    v17 = v143;
    v38 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_30:
    v72 = sub_1D17841EC(v66);

    v73 = [v147 v38[61]];
    v74 = v148;
    sub_1D1E66A5C();

    v75 = v139;
    sub_1D1741C08(v17, v139, &qword_1EC6436C8, &unk_1D1E97C40);
    v76 = type metadata accessor for StaticAccessory(0);
    v77 = *(v76 - 8);
    v78 = *(v77 + 48);
    v79 = v77 + 48;
    v80 = v78(v75, 1, v76);
    v131 = v78;
    v132 = v72;
    v130[1] = v79;
    if (v80 == 1)
    {
      sub_1D1741A30(v75, &qword_1EC6436C8, &unk_1D1E97C40);
      v81 = v137;
      v82 = [v137 name];
      v83 = sub_1D1E6781C();
      v85 = v84;
    }

    else
    {
      v86 = &v75[*(v76 + 28)];
      v83 = *v86;
      v85 = v86[1];

      sub_1D1B89188(v75, type metadata accessor for StaticAccessory);
      v81 = v137;
    }

    v87 = v138;
    v88 = &v74[v138[5]];
    *v88 = v83;
    v88[1] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v89 = v149;
    v90 = *(v149 + 72);
    v91 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1D1E739C0;
    v93 = [v81 v38[61]];
    sub_1D1E66A5C();

    v94 = sub_1D179BE14(v92);
    swift_setDeallocating();
    v95 = v150;
    v139 = *(v89 + 8);
    (v139)(v92 + v91, v150);
    swift_deallocClassInstance();
    *&v148[v87[6]] = v94;
    v96 = [v81 name];
    v97 = sub_1D1E6781C();
    v99 = v98;

    v100 = &v148[v87[7]];
    *v100 = v97;
    v100[1] = v99;
    v101 = v95;
    v102 = v148;
    (*(v89 + 16))(&v148[v87[8]], v146, v101);
    *(v102 + v87[9]) = v132;
    v103 = v140;
    sub_1D1741C08(v143, v140, &qword_1EC6436C8, &unk_1D1E97C40);
    if (v131(v103, 1, v76) == 1)
    {
      sub_1D1741A30(v103, &qword_1EC6436C8, &unk_1D1E97C40);
      v104 = 0;
    }

    else
    {
      v104 = *(v103 + *(v76 + 124));
      sub_1D1B89188(v103, type metadata accessor for StaticAccessory);
    }

    v106 = v141;
    v105 = v142;
    v107 = v138;
    *(v102 + v138[10]) = v104;
    v108 = v147;
    v109 = [v108 userSettings];
    v110 = v143;
    if (v109)
    {
      v111 = v109;
      v112 = [v109 currentAccessMode];

      v113 = v145;
      if (v112 > 3)
      {
        LOBYTE(v114) = 0;
      }

      else
      {
        v114 = 0x2040301u >> (8 * v112);
      }
    }

    else
    {

      LOBYTE(v114) = 0;
      v113 = v145;
    }

    *(v102 + v107[11]) = v114;
    v115 = v107[12];
    v116 = v108;
    sub_1D1B8CDB4(v116, v102 + v115);
    v117 = v107[13];
    v118 = v116;
    sub_1D1B8F078(v118, v102 + v117);
    v119 = [v118 accessory];
    if (v119)
    {
      v120 = v119;
      v121 = HMAccessory.shouldShowInDashboard.getter();
    }

    else
    {
      v121 = 0;
    }

    *(v102 + v107[14]) = v121 & 1;
    v122 = [v118 accessory];
    if (v122)
    {
      v123 = v122;
      v124 = HMAccessory.isFavorite.getter();
    }

    else
    {
      v124 = 0;
    }

    *(v102 + v107[15]) = v124 & 1;
    v125 = v107[16];
    v126 = [v118 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1B89F40(v106, v102 + v125, type metadata accessor for StaticCameraRecordingEventManager);
    (*(v105 + 56))(v102 + v125, 0, 1, v133);
    v127 = [v118 speakerControl];
    if (v127)
    {

      v128 = [v118 microphoneControl];
      sub_1D1741A30(v110, &qword_1EC6436C8, &unk_1D1E97C40);
      (v139)(v146, v150);
      if (v128)
      {

        v129 = 1;
LABEL_52:
        *(v102 + v107[17]) = v129;
        sub_1D1B89F40(v102, v113, type metadata accessor for StaticCameraProfile);
        return (*(v144 + 56))(v113, 0, 1, v107);
      }
    }

    else
    {

      sub_1D1741A30(v110, &qword_1EC6436C8, &unk_1D1E97C40);
      (v139)(v146, v150);
    }

    v129 = 0;
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t StaticCameraProfile.firstRoomID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticCameraProfile() + 24));

  return sub_1D17721A0(v3, a1);
}

uint64_t StaticCameraProfile.controller.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v24 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642150 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC644258;
  swift_getKeyPath();
  v24[3] = v11;
  sub_1D1B891E8(&qword_1EC644268, type metadata accessor for CamerasModel);
  sub_1D1E66CAC();

  v12 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D1741C08(v11 + v12, v5, &qword_1EC642590, qword_1D1E71260);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    swift_getKeyPath();
    v24[0] = v11;
    sub_1D1E66CAC();

    v13 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v14 = *(v11 + v13);
    if (*(v14 + 16))
    {
      v15 = *(v11 + v13);

      v16 = sub_1D1742188(v10);
      if (v17)
      {
        v18 = *(*(v14 + 56) + 8 * v16);

        if (*(v18 + 16))
        {
          v19 = sub_1D1742188(v1);
          if (v20)
          {
            v21 = *(*(v18 + 56) + 8 * v19);
            v22 = *(v7 + 8);

            v22(v10, v6);

            return v21;
          }
        }
      }
    }

    (*(v7 + 8))(v10, v6);
  }

  return 0;
}

uint64_t Array<A>.controllers.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticCameraProfile();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1E69E7CC0];
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v42 = (v7 + 48);
    v38 = (v7 + 32);
    v41 = *(v12 + 72);
    v36 = MEMORY[0x1E69E7CC0];
    v37 = (v7 + 8);
    v39 = v5;
    v43 = v6;
    while (1)
    {
      sub_1D1B89120(v16, v14, type metadata accessor for StaticCameraProfile);
      if (qword_1EC642150 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC644258;
      swift_getKeyPath();
      v44 = v17;
      sub_1D1B891E8(&qword_1EC644268, type metadata accessor for CamerasModel);
      sub_1D1E66CAC();

      v18 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
      swift_beginAccess();
      sub_1D1741C08(v17 + v18, v5, &qword_1EC642590, qword_1D1E71260);
      v19 = v43;
      if ((*v42)(v5, 1, v43) != 1)
      {
        break;
      }

      sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
LABEL_17:
      sub_1D1B89188(v14, type metadata accessor for StaticCameraProfile);
LABEL_18:
      v16 += v41;
      if (!--v15)
      {
        return v36;
      }
    }

    v20 = v5;
    v21 = v14;
    v22 = v40;
    (*v38)(v40, v20, v19);
    swift_getKeyPath();
    v44 = v17;
    sub_1D1E66CAC();

    v23 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v24 = *(v17 + v23);
    if (*(v24 + 16))
    {
      v25 = *(v17 + v23);

      v26 = sub_1D1742188(v22);
      if (v27)
      {
        v28 = *(*(v24 + 56) + 8 * v26);

        if (*(v28 + 16))
        {
          v14 = v21;
          v29 = sub_1D1742188(v21);
          v30 = v43;
          if (v31)
          {
            v32 = *(*(v28 + 56) + 8 * v29);
            v33 = *v37;

            v33(v40, v30);
            v14 = v21;

            v34 = sub_1D1B89188(v21, type metadata accessor for StaticCameraProfile);
            MEMORY[0x1D3891220](v34);
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D1E67C5C();
            }

            sub_1D1E67CAC();
            v36 = v45;
            v5 = v39;
            goto LABEL_18;
          }

          (*v37)(v40, v30);
          goto LABEL_16;
        }
      }
    }

    (*v37)(v22, v43);
    v14 = v21;
LABEL_16:
    v5 = v39;
    goto LABEL_17;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t ArraySlice<A>.controllers.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v42 - v9;
  v50 = sub_1D1E66A7C();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticCameraProfile();
  v15 = *(*(v14 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  v20 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
    return v43;
  }

  if ((a4 >> 1) > a3)
  {
    v21 = (v11 + 48);
    v22 = *(v17 + 72);
    v45 = (v11 + 8);
    v46 = (v11 + 32);
    v43 = MEMORY[0x1E69E7CC0];
    v44 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v22;
    v23 = a2 + v22 * a3;
    v47 = v10;
    while (1)
    {
      v51 = v20;
      v24 = v21;
      v25 = v19;
      sub_1D1B89120(v23, v19, type metadata accessor for StaticCameraProfile);
      if (qword_1EC642150 != -1)
      {
        swift_once();
      }

      v26 = qword_1EC644258;
      swift_getKeyPath();
      v52 = v26;
      sub_1D1B891E8(&qword_1EC644268, type metadata accessor for CamerasModel);
      sub_1D1E66CAC();

      v27 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
      swift_beginAccess();
      sub_1D1741C08(v26 + v27, v10, &qword_1EC642590, qword_1D1E71260);
      v28 = v50;
      if ((*v21)(v10, 1, v50) != 1)
      {
        break;
      }

      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
      v19 = v25;
LABEL_19:
      sub_1D1B89188(v19, type metadata accessor for StaticCameraProfile);
LABEL_20:
      v23 += v49;
      v20 = v51 - 1;
      if (v51 == 1)
      {
        return v43;
      }
    }

    v29 = v48;
    (*v46)(v48, v10, v28);
    swift_getKeyPath();
    v52 = v26;
    sub_1D1E66CAC();
    v30 = v29;

    v31 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
    swift_beginAccess();
    v32 = *(v26 + v31);
    if (*(v32 + 16))
    {
      v33 = *(v26 + v31);

      v34 = sub_1D1742188(v29);
      if (v35)
      {
        v36 = *(*(v32 + 56) + 8 * v34);

        if (*(v36 + 16))
        {
          v19 = v44;
          v37 = sub_1D1742188(v44);
          v21 = v24;
          if (v38)
          {
            v39 = *(*(v36 + 56) + 8 * v37);
            v40 = *v45;

            v40(v30, v50);

            v41 = sub_1D1B89188(v19, type metadata accessor for StaticCameraProfile);
            MEMORY[0x1D3891220](v41);
            v10 = v47;
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D1E67C5C();
            }

            sub_1D1E67CAC();
            v43 = v53;
            goto LABEL_20;
          }

          (*v45)(v30, v50);
          goto LABEL_18;
        }
      }
    }

    (*v45)(v29, v50);
    v21 = v24;
    v19 = v44;
LABEL_18:
    v10 = v47;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B7FF30()
{
  v1 = 0x726F737365636361;
  v2 = 0x4765636976726573;
  if (*v0 != 2)
  {
    v2 = 0x654472657474616DLL;
  }

  if (*v0)
  {
    v1 = 0x7365636976726573;
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

uint64_t sub_1D1B7FFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1B88FA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1B7FFF4(uint64_t a1)
{
  v2 = sub_1D1B86A60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B80030(uint64_t a1)
{
  v2 = sub_1D1B86A60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraProfile.NearbyStaticItems.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B948, &qword_1D1E9B0C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v17 = v1[2];
  v18 = v9;
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B86A60();

  sub_1D1E6930C();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  sub_1D1B86AB4();
  sub_1D1E68F1C();

  if (!v2)
  {
    v13 = v16;
    v14 = v17;
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    v20 = v14;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B86BA0();
    sub_1D1E68F1C();
    v20 = v13;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B978, &qword_1D1EA2E10);
    sub_1D1B86C8C();
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t StaticCameraProfile.NearbyStaticItems.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1D1859F70(a1, v3);
  sub_1D18599F4(a1, v4);
  sub_1D1859478(a1, v6);

  return sub_1D1858EFC(a1, v5);
}

uint64_t StaticCameraProfile.NearbyStaticItems.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D1859F70(v6, v1);
  sub_1D18599F4(v6, v2);
  sub_1D1859478(v6, v4);
  sub_1D1858EFC(v6, v3);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.NearbyStaticItems.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B988, &unk_1D1E9B0F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B86A60();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  v19 = 0;
  sub_1D1B86D78();
  sub_1D1E68D7C();
  v11 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v19 = 1;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  v18 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
  v19 = 2;
  sub_1D1B86E64();
  sub_1D1E68D7C();
  v17 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B978, &qword_1D1EA2E10);
  v19 = 3;
  sub_1D1B86F50();
  sub_1D1E68D7C();
  (*(v6 + 8))(v9, v5);
  v13 = v20;
  v15 = v17;
  v14 = v18;
  *a2 = v11;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1B8075C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D1859F70(v6, v1);
  sub_1D18599F4(v6, v2);
  sub_1D1859478(v6, v4);
  sub_1D1858EFC(v6, v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B807D4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1D1859F70(a1, v3);
  sub_1D18599F4(a1, v4);
  sub_1D1859478(a1, v6);

  return sub_1D1858EFC(a1, v5);
}

uint64_t sub_1D1B80838()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D1859F70(v6, v1);
  sub_1D18599F4(v6, v2);
  sub_1D1859478(v6, v4);
  sub_1D1858EFC(v6, v3);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.nearbyItems(using:and:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v77 = a2;
  v81 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v73 - v8;
  v10 = sub_1D1E66A7C();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v73 - v16;
  v17 = type metadata accessor for StaticAccessory(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v73 - v23;
  v25 = type metadata accessor for StateSnapshot(0);
  v26 = *(v25 + 32);
  v76 = a1;
  v27 = *(a1 + v26);
  if (!*(v27 + 16))
  {
    goto LABEL_5;
  }

  v28 = v25;
  v29 = type metadata accessor for StaticCameraProfile();
  v30 = *(v29 + 32);
  v31 = sub_1D1742188(v4 + v30);
  if ((v32 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1D1B89120(*(v27 + 56) + *(v18 + 72) * v31, v22, type metadata accessor for StaticAccessory);
  v33 = v22;
  v34 = v24;
  sub_1D1B89F40(v33, v24, type metadata accessor for StaticAccessory);
  v35 = &v24[*(v17 + 92)];
  if (v35[8])
  {
    sub_1D1B89188(v24, type metadata accessor for StaticAccessory);
LABEL_5:
    v36 = MEMORY[0x1E69E7CC0];
    v37 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
    v38 = sub_1D18D5D90(v36);
    v39 = sub_1D18D5B74(v36);
    result = sub_1D18D5FAC(v36);
    v41 = v81;
    *v81 = v37;
    v41[1] = v38;
    v41[2] = v39;
    v41[3] = result;
    return result;
  }

  v42 = *v35;
  v43 = *(v4 + *(v29 + 24));
  sub_1D1771B4C(*v35, 0);
  sub_1D17721A0(v43, v9);
  v44 = v79;
  v45 = v80;
  if ((*(v79 + 48))(v9, 1, v80) == 1)
  {
    sub_1D1B89188(v34, type metadata accessor for StaticAccessory);
    sub_1D18EB2D8(v42, 0);
    sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
    goto LABEL_5;
  }

  v46 = v42;
  v47 = v78;
  (*(v44 + 32))(v78, v9, v45);
  v73 = v46;
  if (v46)
  {
    v48 = v47;
    if (*(v73 + 16))
    {
      v49 = v34;
      v50 = *(v76 + *(v28 + 60));
      v51 = *(v76 + *(v28 + 56));
      v52 = v44;
      v53 = *(v77 + *(type metadata accessor for MatterStateSnapshot() + 24));
      v54 = MEMORY[0x1E69E7CC0];
      v85 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
      v84 = sub_1D18D5D90(v54);
      v83 = sub_1D18D5B74(v54);
      v82 = sub_1D18D5FAC(v54);

      v55 = v73;
      sub_1D1B87440(v73, v27, v53, &v82, &v85, v50, &v84, v51, &v83);

      sub_1D18EB2D8(v55, 0);
      (*(v52 + 8))(v48, v45);
      result = sub_1D1B89188(v49, type metadata accessor for StaticAccessory);
      v56 = v84;
      v58 = v82;
      v57 = v83;
      v59 = v81;
      *v81 = v85;
      v59[1] = v56;
      v59[2] = v57;
      v59[3] = v58;
    }

    else
    {
      v67 = MEMORY[0x1E69E7CC0];
      v68 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
      v69 = sub_1D18D5D90(v67);
      v70 = sub_1D18D5B74(v67);
      v71 = sub_1D18D5FAC(v67);
      sub_1D18EB2D8(v73, 0);
      (*(v44 + 8))(v47, v45);
      result = sub_1D1B89188(v34, type metadata accessor for StaticAccessory);
      v72 = v81;
      *v81 = v68;
      v72[1] = v69;
      v72[2] = v70;
      v72[3] = v71;
    }
  }

  else
  {
    v60 = *(v44 + 16);
    v61 = v4 + v30;
    v62 = v74;
    v60(v74, v61, v45);
    v63 = v75;
    v60(v75, v47, v45);
    v64 = *(v76 + *(v28 + 60));
    v65 = *(v76 + *(v28 + 56));
    v66 = *(v77 + *(type metadata accessor for MatterStateSnapshot() + 24));

    sub_1D1B80F40(v62, v63, v27, v64, v65, v66, 0, v81);
    (*(v44 + 8))(v47, v45);
    return sub_1D1B89188(v34, type metadata accessor for StaticAccessory);
  }

  return result;
}

uint64_t sub_1D1B80F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v154 = a6;
  v155 = a7;
  v156 = a5;
  v139 = a4;
  v162 = a3;
  v144 = a2;
  v153 = a1;
  v140 = a8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v146 = v132 - v10;
  v11 = type metadata accessor for StaticAccessory(0);
  v160 = *(v11 - 8);
  v161 = v11;
  v12 = *(v160 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v158 = v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v159 = v132 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v145 = v132 - v17;
  v18 = type metadata accessor for StaticMatterDevice();
  v150 = *(v18 - 8);
  v19 = *(v150 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v133 = v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v157 = v132 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v23 = *(*(v149 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v149);
  v147 = (v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v27 = v132 - v26;
  v28 = type metadata accessor for StaticService(0);
  v152 = *(v28 - 8);
  v29 = *(v152 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = v132 - v33;
  v35 = type metadata accessor for StaticServiceGroup();
  v148 = *(v35 - 8);
  v36 = *(v148 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v41 = v132 - v40;
  v42 = MEMORY[0x1E69E7CC0];
  v43 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v168 = v43;
  v44 = sub_1D18D5D90(v42);
  v167 = v44;
  v45 = sub_1D18D5B74(v42);
  v166 = v45;
  v46 = sub_1D18D5FAC(v42);
  v165 = v46;
  if (v155)
  {
    v47 = v155;
    v48 = v162;

    v49 = v154;

    v50 = v139;

    v51 = v156;

    sub_1D1B87440(v47, v48, v49, &v165, &v168, v50, &v167, v51, &v166);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v52 = sub_1D1E66A7C();
    (*(*(v52 - 8) + 8))(v153, v52);
    v53 = v166;
    v54 = v144;
LABEL_53:
    v128 = v167;
    v129 = v165;
    v130 = v140;
    *v140 = v168;
    v130[1] = v128;
    v130[2] = v53;
    v130[3] = v129;
    sub_1D1E66A7C();
    return (*(*(v52 - 8) + 8))(v54, v52);
  }

  else
  {
    v151 = v39;
    v135 = v35;
    v132[1] = v46;
    v155 = v27;
    v141 = v43;
    v164 = MEMORY[0x1E69E7CD0];
    v55 = v156;
    v56 = *(v156 + 64);
    v143 = v156 + 64;
    v57 = 1 << *(v156 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v56;
    v142 = (v57 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v61 = 0;
    v62 = v162;
    v63 = v55;
    v132[3] = v45;
    v132[2] = v44;
    v134 = v41;
    while (1)
    {
      v64 = v154;
      if (!v59)
      {
        break;
      }

LABEL_12:
      sub_1D1B89120(*(v63 + 56) + *(v148 + 72) * (__clz(__rbit64(v59)) | (v61 << 6)), v41, type metadata accessor for StaticServiceGroup);
      v66 = v41;
      v67 = v151;
      sub_1D1B89120(v66, v151, type metadata accessor for StaticServiceGroup);
      v68 = *&v67[*(v135 + 56)];
      v69 = v68[2];
      if (v69)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
        v70 = *(v152 + 72);
        v71 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v72 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v72);
        if (!v70)
        {
          goto LABEL_57;
        }

        if (result - v71 == 0x8000000000000000 && v70 == -1)
        {
          goto LABEL_59;
        }

        v72[2] = v69;
        v72[3] = 2 * ((result - v71) / v70);
        v138 = sub_1D1804A58(v163, v72 + v71, v69, v68);
        v137 = v163[1];
        v136 = v163[3];

        result = sub_1D1716918();
        if (v138 != v69)
        {
          goto LABEL_58;
        }

        v62 = v162;
        v67 = v151;
      }

      else
      {
        v72 = MEMORY[0x1E69E7CC0];
      }

      sub_1D1B89188(v67, type metadata accessor for StaticServiceGroup);
      v74 = v72[2];
      if (v74)
      {
        v75 = v72 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
        v76 = *(v152 + 72);
        do
        {
          sub_1D1B89120(v75, v34, type metadata accessor for StaticService);
          sub_1D17625F8(v32, v34);
          sub_1D1B89188(v32, type metadata accessor for StaticService);
          v75 += v76;
          --v74;
        }

        while (v74);
      }

      v59 &= v59 - 1;
      v41 = v134;
      sub_1D1B89188(v134, type metadata accessor for StaticServiceGroup);

      v63 = v156;
    }

    while (1)
    {
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_55;
      }

      if (v65 >= v142)
      {
        break;
      }

      v59 = *(v143 + 8 * v65);
      ++v61;
      if (v59)
      {
        v61 = v65;
        goto LABEL_12;
      }
    }

    v143 = v164;
    v77 = sub_1D1B83638(v64, sub_1D1B85974, sub_1D1B85974);

    MEMORY[0x1EEE9AC00](v78);
    v131 = v144;
    v79 = sub_1D1D1DCD8(sub_1D1B89230, &v132[-4], v77);
    v142 = 0;

    v80 = v79 + 64;
    v81 = 1 << *(v79 + 32);
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v83 = v82 & *(v79 + 64);
    v84 = (v81 + 63) >> 6;
    v85 = v62 + 64;
    v151 = (v160 + 56);
    v152 = v160 + 48;
    v154 = v79;

    v86 = 0;
    v148 = MEMORY[0x1E69E7CC8];
    v87 = v153;
    v88 = v159;
LABEL_29:
    v89 = v86;
    if (v83)
    {
      v90 = v155;
LABEL_35:
      v91 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v92 = v91 | (v86 << 6);
      v93 = *(*(v154 + 48) + 8 * v92);
      v94 = v149;
      v95 = v90;
      sub_1D1B89120(*(v154 + 56) + *(v150 + 72) * v92, v90 + *(v149 + 48), type metadata accessor for StaticMatterDevice);
      *v95 = v93;
      v96 = v95;
      v97 = v147;
      sub_1D1741C08(v96, v147, &qword_1EC645428, &qword_1D1E96C40);
      v98 = *v97;
      sub_1D1B89F40(v97 + *(v94 + 48), v157, type metadata accessor for StaticMatterDevice);
      v99 = 1 << *(v62 + 32);
      if (v99 < 64)
      {
        v100 = ~(-1 << v99);
      }

      else
      {
        v100 = -1;
      }

      v101 = v100 & *(v62 + 64);
      v102 = (v99 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v103 = 0;
      while (v101)
      {
LABEL_45:
        sub_1D1B89120(*(v162 + 56) + *(v160 + 72) * (__clz(__rbit64(v101)) | (v103 << 6)), v88, type metadata accessor for StaticAccessory);
        v105 = v88;
        v106 = v158;
        sub_1D1B89F40(v105, v158, type metadata accessor for StaticAccessory);
        v107 = v106 + *(v161 + 144);
        if ((*(v107 + 8) & 1) == 0 && *v107 == v98)
        {
          v62 = v162;

          v108 = v146;
          sub_1D1B89F40(v106, v146, type metadata accessor for StaticAccessory);
          v109 = v161;
          (*v151)(v108, 0, 1, v161);
          v88 = v159;
LABEL_49:

          v110 = (*v152)(v108, 1, v109);
          v87 = v153;
          v111 = v145;
          if (v110 == 1)
          {
            sub_1D1B89188(v157, type metadata accessor for StaticMatterDevice);
            sub_1D1741A30(v155, &qword_1EC645428, &qword_1D1E96C40);
            result = sub_1D1741A30(v108, &qword_1EC6436C8, &unk_1D1E97C40);
          }

          else
          {
            sub_1D1B89F40(v108, v145, type metadata accessor for StaticAccessory);
            sub_1D1B89120(v157, v133, type metadata accessor for StaticMatterDevice);
            v112 = v148;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v163[0] = v112;
            sub_1D1755F18(v133, v111, isUniquelyReferenced_nonNull_native);
            sub_1D1B89188(v111, type metadata accessor for StaticAccessory);
            sub_1D1B89188(v157, type metadata accessor for StaticMatterDevice);
            result = sub_1D1741A30(v155, &qword_1EC645428, &qword_1D1E96C40);
            v148 = v163[0];
          }

          goto LABEL_29;
        }

        v101 &= v101 - 1;
        result = sub_1D1B89188(v106, type metadata accessor for StaticAccessory);
        v88 = v159;
      }

      while (1)
      {
        v104 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          break;
        }

        if (v104 >= v102)
        {
          v62 = v162;

          v108 = v146;
          v109 = v161;
          (*v151)(v146, 1, 1, v161);
          goto LABEL_49;
        }

        v101 = *(v85 + 8 * v104);
        ++v103;
        if (v101)
        {
          v103 = v104;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v90 = v155;
    while (1)
    {
      v86 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        break;
      }

      if (v86 >= v84)
      {

        v165 = v148;

        v115 = sub_1D1B837A8(v114, &v165);

        v116 = sub_1D1B83638(v115, sub_1D1B848F8, sub_1D1B848F8);

        v117 = sub_1D1B83638(v116, sub_1D1B843CC, sub_1D1B843CC);

        MEMORY[0x1EEE9AC00](v118);
        v54 = v144;
        v119 = sub_1D1D1DA74(sub_1D1B89250, &v132[-4], v117);

        v168 = v119;
        v120 = sub_1D1B83638(v139, sub_1D1B83914, sub_1D1B83914);

        v121 = sub_1D1B89D30(v120, v62, sub_1D1B89270, sub_1D1B89270);

        swift_bridgeObjectRelease_n();
        v122 = v143;

        v123 = sub_1D1B89D30(v121, v122, sub_1D1B897EC, sub_1D1B897EC);

        v124 = swift_bridgeObjectRelease_n();
        MEMORY[0x1EEE9AC00](v124);
        v125 = sub_1D1D1D438(sub_1D1B89F00, &v132[-4], v123);

        v167 = v125;
        v126 = sub_1D1B83638(v156, sub_1D1B83F60, sub_1D1B83F60);

        MEMORY[0x1EEE9AC00](v127);
        v131 = v54;
        v53 = sub_1D1D1D60C(sub_1D1B89F20, &v132[-4], v126);

        v52 = sub_1D1E66A7C();
        (*(*(v52 - 8) + 8))(v87, v52);

        goto LABEL_53;
      }

      v83 = *(v80 + 8 * v86);
      ++v89;
      if (v83)
      {
        goto LABEL_35;
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B82064(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  *(&v23 - v12) = *a1;
  sub_1D1B89120(a2, &v23 + *(v7 + 56) - v12, type metadata accessor for StaticMatterDevice);
  sub_1D1741C08(v13, v11, &qword_1EC645428, &qword_1D1E96C40);
  v14 = &v11[*(v7 + 56)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D1E739C0;
  v20 = type metadata accessor for StaticMatterDevice();
  (*(v16 + 16))(v19 + v18, v14 + *(v20 + 40), v15);
  v21 = sub_1D179BE14(v19);
  swift_setDeallocating();
  (*(v16 + 8))(v19 + v18, v15);
  swift_deallocClassInstance();
  sub_1D1B89188(v14, type metadata accessor for StaticMatterDevice);
  LOBYTE(a3) = sub_1D1719534(a3, v21);

  sub_1D1741A30(v13, &qword_1EC645428, &qword_1D1E96C40);
  return a3 & 1;
}

uint64_t sub_1D1B822C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a1, v19);
  sub_1D1B89120(a2, &v18[*(v9 + 48)], type metadata accessor for StaticAccessory);
  sub_1D1741C08(v18, v16, &qword_1EC644B30, &qword_1D1E77280);
  v21 = &v16[*(v9 + 48)];
  v22 = *(v21 + *(type metadata accessor for StaticAccessory(0) + 52));

  sub_1D1B89188(v21, type metadata accessor for StaticAccessory);
  LOBYTE(v21) = sub_1D1719534(v31, v22);

  v23 = *(v20 + 8);
  v23(v16, v19);
  if (v21)
  {
    sub_1D1741A30(v18, &qword_1EC644B30, &qword_1D1E77280);
    v24 = 1;
  }

  else
  {
    v25 = v23;
    sub_1D1741C08(v18, v13, &qword_1EC644B30, &qword_1D1E77280);
    v26 = *(v9 + 48);
    StaticAccessory.primaryStaticService.getter(v8);
    v27 = type metadata accessor for StaticService(0);
    if ((*(*(v27 - 8) + 48))(v8, 1, v27) == 1)
    {
      sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);
      v28 = 0;
    }

    else
    {
      v28 = v8[*(v27 + 104)];
      sub_1D1B89188(v8, type metadata accessor for StaticService);
    }

    sub_1D1B89188(&v13[v26], type metadata accessor for StaticAccessory);
    v32 = v28;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v29)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_1D1E6904C();
    }

    sub_1D1741A30(v18, &qword_1EC644B30, &qword_1D1E77280);
    v25(v13, v19);
  }

  return v24 & 1;
}

uint64_t sub_1D1B82688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a1, v15);
  sub_1D1B89120(a2, &v14[*(v6 + 48)], type metadata accessor for StaticService);
  sub_1D1741C08(v14, v12, &qword_1EC642DB0, &unk_1D1E6F360);
  v17 = &v12[*(v6 + 48)];
  v18 = type metadata accessor for StaticService(0);
  v19 = *(v17 + *(v18 + 76));

  sub_1D1B89188(v17, type metadata accessor for StaticService);
  LOBYTE(a3) = sub_1D1719534(a3, v19);

  v20 = *(v16 + 8);
  v20(v12, v15);
  if (a3)
  {
    sub_1D1741A30(v14, &qword_1EC642DB0, &unk_1D1E6F360);
    v21 = 1;
  }

  else
  {
    v22 = v27;
    sub_1D1741C08(v14, v27, &qword_1EC642DB0, &unk_1D1E6F360);
    v23 = v22 + *(v6 + 48);
    v24 = *(v23 + *(v18 + 104));
    sub_1D1B89188(v23, type metadata accessor for StaticService);
    v28 = v24;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v25)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_1D1E6904C();
    }

    sub_1D1741A30(v14, &qword_1EC642DB0, &unk_1D1E6F360);
    v20(v22, v15);
  }

  return v21 & 1;
}

uint64_t sub_1D1B8297C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - v11;
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  sub_1D1B89120(a2, &v12[*(v6 + 56)], type metadata accessor for StaticServiceGroup);
  sub_1D1741C08(v12, v10, &qword_1EC645458, &qword_1D1E799E8);
  v15 = &v10[*(v6 + 56)];
  v16 = *(v15 + *(type metadata accessor for StaticServiceGroup() + 36));

  sub_1D1B89188(v15, type metadata accessor for StaticServiceGroup);
  LOBYTE(v15) = sub_1D1719534(v19, v16);

  sub_1D1741A30(v12, &qword_1EC645458, &qword_1D1E799E8);
  (*(v14 + 8))(v10, v13);
  return v15 & 1;
}

uint64_t StaticCameraProfile.NearbyStaticItems.orderedVisibleTileInfos.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  v6 = sub_1D1B7A918(v5);

  v7 = sub_1D1B7AC88(v2);
  v8 = sub_1D1B7AFF8(v4);
  v9 = sub_1D1B7B368(v3);
  sub_1D17A53D0(v7);
  sub_1D17A53D0(v8);
  sub_1D17A53D0(v9);
  v10 = sub_1D1D07DC4(MEMORY[0x1E69E7CC0], v6);

  return v10;
}

uint64_t sub_1D1B82C24()
{
  if (qword_1EC6423A0 != -1)
  {
    swift_once();
  }

  off_1EC64B8D0 = qword_1EC6BE1B8;
}

uint64_t static StaticCameraProfile.test(name:isReachable:currentAccessMode:snapshotControl:streamControl:shouldShowInDashboard:recordingEventManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = *a4;
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v15 = sub_1D179BE14(v14);
  swift_setDeallocating();
  v16 = *(v11 + 8);
  v16(v14 + v13, v10);
  swift_deallocClassInstance();
  v17 = type metadata accessor for StaticCameraProfile();
  v18 = a9 + v17[8];
  sub_1D1E66A6C();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v20 = sub_1D179BE14(v19);
  swift_setDeallocating();
  v16(v19 + v13, v10);
  swift_deallocClassInstance();
  sub_1D1741C08(a5, a9 + v17[12], &qword_1EC64B8D8, &qword_1D1E9B030);
  sub_1D1741C08(a6, a9 + v17[13], &qword_1EC64B8E0, &qword_1D1E9B038);
  sub_1D1741C08(a8, a9 + v17[16], &qword_1EC64B8E8, &qword_1D1E9B040);
  v21 = (a9 + v17[5]);
  *v21 = a1;
  v21[1] = a2;
  *(a9 + v17[6]) = v15;
  v22 = (a9 + v17[7]);
  *v22 = 0;
  v22[1] = 0;
  *(a9 + v17[9]) = v20;
  *(a9 + v17[10]) = a3;
  *(a9 + v17[11]) = v29;
  *(a9 + v17[14]) = a7;
  *(a9 + v17[15]) = 0;
  *(a9 + v17[17]) = 1;
}

uint64_t static StaticCameraProfile.test(cameraProfile:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticCameraRecordingEventManager();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 accessory];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 name];

    v12 = sub_1D1E6781C();
    v43 = v13;
    v44 = v12;
  }

  else
  {
    v43 = 0xE000000000000000;
    v44 = 0;
  }

  v14 = [a1 accessory];
  if (v14)
  {
    v15 = v14;
    v42 = [v14 isReachable];
  }

  else
  {
    v42 = 0;
  }

  v16 = [a1 userSettings];
  if (v16 && (v17 = v16, v18 = [v16 currentAccessMode], v17, v18 <= 3))
  {
    v41 = 0x2040301u >> (8 * v18);
  }

  else
  {
    v41 = 0;
  }

  v19 = type metadata accessor for StaticCameraProfile();
  v20 = v19[12];
  v21 = a1;
  sub_1D1B8CDB4(v21, a2 + v20);
  v22 = v19[13];
  v23 = v21;
  sub_1D1B8F078(v23, a2 + v22);
  v24 = [v23 uniqueIdentifier];
  sub_1D1E66A5C();

  v25 = v19[16];
  sub_1D1B89F40(v8, a2 + v25, type metadata accessor for StaticCameraRecordingEventManager);
  (*(v5 + 56))(a2 + v25, 0, 1, v4);
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v26 = sub_1D1E66A7C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  v39 = xmmword_1D1E739C0;
  *(v30 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v40 = sub_1D179BE14(v30);
  swift_setDeallocating();
  v31 = *(v27 + 8);
  v31(v30 + v29, v26);
  swift_deallocClassInstance();
  v32 = a2 + v19[8];
  sub_1D1E66A6C();
  v33 = swift_allocObject();
  *(v33 + 16) = v39;
  sub_1D1E66A6C();
  v34 = sub_1D179BE14(v33);
  swift_setDeallocating();
  v31(v33 + v29, v26);
  result = swift_deallocClassInstance();
  v36 = (a2 + v19[5]);
  v37 = v43;
  *v36 = v44;
  v36[1] = v37;
  *(a2 + v19[6]) = v40;
  v38 = (a2 + v19[7]);
  *v38 = 0;
  v38[1] = 0;
  *(a2 + v19[9]) = v34;
  LOBYTE(v37) = v41;
  *(a2 + v19[10]) = v42;
  *(a2 + v19[11]) = v37;
  *(a2 + v19[14]) = 1;
  *(a2 + v19[15]) = 0;
  *(a2 + v19[17]) = 1;
  return result;
}

uint64_t static StaticCameraProfile.demo()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticCameraProfile();
  v3 = v2[12];
  v4 = type metadata accessor for StaticCameraSnapshotControl();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = a1 + v2[13];
  sub_1D1E66A6C();
  v6 = type metadata accessor for StaticCameraStreamControl();
  *(v5 + *(v6 + 20)) = 2;
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = v2[16];
  v8 = type metadata accessor for StaticCameraRecordingEventManager();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  sub_1D1E66A6C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v21 = sub_1D179BE14(v13);
  swift_setDeallocating();
  v14 = *(v10 + 8);
  v14(v13 + v12, v9);
  swift_deallocClassInstance();
  v15 = a1 + v2[8];
  sub_1D1E66A6C();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D1E739C0;
  sub_1D1E66A6C();
  v17 = sub_1D179BE14(v16);
  swift_setDeallocating();
  v14(v16 + v12, v9);
  result = swift_deallocClassInstance();
  v19 = (a1 + v2[5]);
  *v19 = 0x6D6143206F6D6544;
  v19[1] = 0xEB00000000617265;
  *(a1 + v2[6]) = v21;
  v20 = (a1 + v2[7]);
  *v20 = 0;
  v20[1] = 0;
  *(a1 + v2[9]) = v17;
  *(a1 + v2[10]) = 1;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[14]) = 1;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[17]) = 1;
  return result;
}

uint64_t sub_1D1B83600(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D1B83638(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1D1B85D5C(v13, v7, v5, a3);
  result = MEMORY[0x1D3893640](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B837A8(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D1B85374(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1D1B85CD4(v11, v6, v4, a2);
  result = MEMORY[0x1D3893640](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D1B83914(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v54 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = *(*(v60 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v60);
  v70 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - v7;
  v55 = type metadata accessor for StaticService(0);
  v59 = *(v55 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v69 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v17 = 0;
  v67 = a3;
  v18 = *(a3 + 64);
  v53 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v57 = v15 + 16;
  v58 = v15;
  v61 = (v15 + 8);
  v62 = v22;
  v64 = v11;
  v65 = v8;
  v63 = result;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v68 = (v21 - 1) & v21;
LABEL_13:
    v27 = v24 | (v17 << 6);
    v28 = v67;
    v29 = *(v58 + 16);
    v30 = v69;
    v29(v69, v67[6] + *(v58 + 72) * v27, v12);
    v31 = v28[7];
    v32 = *(v59 + 72);
    v66 = v27;
    sub_1D1B89120(v31 + v32 * v27, v11, type metadata accessor for StaticService);
    v29(v8, v30, v12);
    v33 = v60;
    sub_1D1B89120(v11, &v8[*(v60 + 48)], type metadata accessor for StaticService);
    v34 = v70;
    sub_1D1741C08(v8, v70, &qword_1EC642DB0, &unk_1D1E6F360);
    v35 = *(v33 + 48);
    if (qword_1EC642368 != -1)
    {
      swift_once();
    }

    v71 = v34 + v35;
    v36 = off_1EC64B8D0;
    if (!*(off_1EC64B8D0 + 2))
    {
      goto LABEL_5;
    }

    v37 = *(v71 + *(v55 + 104));
    v38 = *(off_1EC64B8D0 + 5);
    sub_1D1E6920C();
    v73 = v37;
    ServiceKind.rawValue.getter();
    sub_1D1E678EC();

    v39 = sub_1D1E6926C();
    v40 = -1 << v36[32];
    v41 = v39 & ~v40;
    if ((*&v36[((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v41))
    {
      v42 = ~v40;
      while (1)
      {
        v72 = *(*(v36 + 6) + v41);
        v73 = v37;
        v43 = ServiceKind.rawValue.getter();
        v45 = v44;
        if (v43 == ServiceKind.rawValue.getter() && v45 == v46)
        {
          break;
        }

        v48 = sub_1D1E6904C();

        if (v48)
        {
          goto LABEL_26;
        }

        v41 = (v41 + 1) & v42;
        if (((*&v36[((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v41) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_26:
      v8 = v65;
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B89188(v71, type metadata accessor for StaticService);
      v49 = *v61;
      v12 = v63;
      (*v61)(v70, v63);
      v11 = v64;
      sub_1D1B89188(v64, type metadata accessor for StaticService);
      result = (v49)(v69, v12);
      *(v54 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      v50 = __OFADD__(v56++, 1);
      v22 = v62;
      v21 = v68;
      if (v50)
      {
        goto LABEL_31;
      }
    }

    else
    {
LABEL_5:
      v8 = v65;
      sub_1D1741A30(v65, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B89188(v71, type metadata accessor for StaticService);
      v23 = *v61;
      v12 = v63;
      (*v61)(v70, v63);
      v11 = v64;
      sub_1D1B89188(v64, type metadata accessor for StaticService);
      result = (v23)(v69, v12);
      v22 = v62;
      v21 = v68;
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      return sub_1D188B1C8(v54, v52, v56, v67);
    }

    v26 = *(v53 + 8 * v17);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v68 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D1B83F60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
  v4 = *(*(v56 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v44 - v7;
  v8 = type metadata accessor for StaticServiceGroup();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E66A7C();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v57 = a3;
  v19 = *(a3 + 64);
  v49 = a3 + 64;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v47 = 0;
  v48 = (v20 + 63) >> 6;
  v52 = v15 + 16;
  v53 = v15;
  v51 = (v15 + 8);
  v60 = v11;
  while (1)
  {
    v23 = v17;
    if (!v22)
    {
      break;
    }

    v59 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
    v25 = v58;
LABEL_11:
    v28 = v57;
    v29 = *(v53 + 16);
    v30 = v24;
    v29(v17, v57[6] + *(v53 + 72) * v24, v12);
    v31 = v28[7];
    v32 = *(v54 + 72);
    v50 = v30;
    v33 = v31 + v32 * v30;
    v34 = v60;
    sub_1D1B89120(v33, v60, type metadata accessor for StaticServiceGroup);
    v29(v25, v23, v12);
    v35 = v56;
    sub_1D1B89120(v34, v25 + *(v56 + 48), type metadata accessor for StaticServiceGroup);
    v36 = v55;
    sub_1D1741C08(v25, v55, &qword_1EC645458, &qword_1D1E799E8);
    v37 = *(v35 + 48);
    v38 = v25;
    if (qword_1EC642368 != -1)
    {
      swift_once();
    }

    v39 = off_1EC64B8D0;
    v40 = v36;
    StaticServiceGroup.displayAsServiceKind.getter(&v61);
    v41 = sub_1D171951C(v61, v39);
    sub_1D1741A30(v38, &qword_1EC645458, &qword_1D1E799E8);
    sub_1D1B89188(v40 + v37, type metadata accessor for StaticServiceGroup);
    v42 = *v51;
    (*v51)(v40, v12);
    sub_1D1B89188(v60, type metadata accessor for StaticServiceGroup);
    result = v42(v23, v12);
    v17 = v23;
    v22 = v59;
    if (v41)
    {
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v47++, 1))
      {
        goto LABEL_19;
      }
    }
  }

  v26 = v18;
  v25 = v58;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v48)
    {
      return sub_1D188B630(v46, v45, v47, v57);
    }

    v27 = *(v49 + 8 * v18);
    ++v26;
    if (v27)
    {
      v59 = (v27 - 1) & v27;
      v24 = __clz(__rbit64(v27)) | (v18 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D1B843CC(unint64_t *a1, uint64_t a2, void *a3)
{
  v47 = a2;
  v48 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v4 = *(*(v56 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v56);
  v64 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v47 - v7;
  v58 = type metadata accessor for StaticAccessory(0);
  v55 = *(v58 - 1);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v63 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D1E66A7C();
  v10 = *(*(v61 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v14 = 0;
  v57 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v53 = v12 + 16;
  v54 = v12;
  v51 = (v12 + 8);
  v52 = v21;
  while (v20)
  {
    v24 = __clz(__rbit64(v20));
    v59 = (v20 - 1) & v20;
LABEL_12:
    v27 = v24 | (v14 << 6);
    v28 = v57;
    v29 = *(v54 + 16);
    v30 = v60;
    v31 = v61;
    v29(v60, v57[6] + *(v54 + 72) * v27, v61);
    v32 = v28[7];
    v33 = *(v55 + 72);
    v50 = v27;
    v34 = v32 + v33 * v27;
    v35 = v63;
    sub_1D1B89120(v34, v63, type metadata accessor for StaticAccessory);
    v36 = v62;
    v29(v62, v30, v31);
    v37 = v56;
    sub_1D1B89120(v35, v36 + *(v56 + 48), type metadata accessor for StaticAccessory);
    v38 = v64;
    sub_1D1741C08(v36, v64, &qword_1EC644B30, &qword_1D1E77280);
    v39 = v38 + *(v37 + 48);
    if ((*(v39 + v58[19]) & 1) != 0 || (*(v39 + v58[27]) & 1) == 0)
    {
      sub_1D1741A30(v62, &qword_1EC644B30, &qword_1D1E77280);
      sub_1D1B89188(v39, type metadata accessor for StaticAccessory);
      v22 = *v51;
      v23 = v61;
      (*v51)(v64, v61);
      sub_1D1B89188(v63, type metadata accessor for StaticAccessory);
      result = (v22)(v60, v23);
      v21 = v52;
      v20 = v59;
    }

    else
    {
      v40 = StaticAccessory.hasVisibleServices(minCount:)(2);
      sub_1D1741A30(v62, &qword_1EC644B30, &qword_1D1E77280);
      v21 = v52;
      if (v40)
      {
        sub_1D1B89188(v39, type metadata accessor for StaticAccessory);
        v44 = *v51;
        v45 = v61;
        (*v51)(v64, v61);
        sub_1D1B89188(v63, type metadata accessor for StaticAccessory);
        result = (v44)(v60, v45);
        v20 = v59;
LABEL_18:
        *(v48 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        if (__OFADD__(v49++, 1))
        {
          __break(1u);
          return sub_1D188CC38(v48, v47, v49, v57);
        }
      }

      else
      {
        v41 = *(v39 + v58[37]);
        sub_1D1B89188(v39, type metadata accessor for StaticAccessory);
        v42 = *v51;
        v43 = v61;
        (*v51)(v64, v61);
        sub_1D1B89188(v63, type metadata accessor for StaticAccessory);
        result = (v42)(v60, v43);
        v20 = v59;
        if (v41 == 1)
        {
          goto LABEL_18;
        }
      }
    }
  }

  v25 = v14;
  while (1)
  {
    v14 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v14 >= v21)
    {
      return sub_1D188CC38(v48, v47, v49, v57);
    }

    v26 = v16[v14];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v59 = (v26 - 1) & v26;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B848F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v83[0] = a2;
  v87 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v83 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v83 - v10;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v12 = *(*(v95 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v95);
  v108 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v83 - v15;
  v101 = type metadata accessor for StaticAccessory(0);
  v93 = *(v101 - 8);
  v17 = *(v93 + 64);
  v18 = MEMORY[0x1EEE9AC00](v101);
  v107 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v106 = v83 - v20;
  v105 = sub_1D1E66A7C();
  v21 = *(*(v105 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v105);
  v91 = v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v22);
  v104 = v83 - v26;
  v88 = 0;
  v27 = 0;
  v99 = a3;
  v28 = *(a3 + 64);
  v85 = a3 + 64;
  v29 = 1 << *(a3 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & v28;
  v84 = (v29 + 63) >> 6;
  v90 = v25 + 16;
  v89 = (v25 + 48);
  v86 = (v25 + 32);
  v92 = v25;
  v100 = (v25 + 8);
  v96 = v7;
  v97 = v11;
  v94 = v16;
  while (v31)
  {
    v35 = __clz(__rbit64(v31));
    v103 = (v31 - 1) & v31;
LABEL_13:
    v38 = v35 | (v27 << 6);
    v39 = v99;
    v40 = *(v92 + 16);
    v42 = v104;
    v41 = v105;
    v40(v104, v99[6] + *(v92 + 72) * v38, v105);
    v43 = v39[7];
    v44 = *(v93 + 72);
    v98 = v38;
    v45 = v43 + v44 * v38;
    v46 = v106;
    sub_1D1B89120(v45, v106, type metadata accessor for StaticAccessory);
    v40(v16, v42, v41);
    v47 = v95;
    sub_1D1B89120(v46, &v16[*(v95 + 48)], type metadata accessor for StaticAccessory);
    v48 = v16;
    v49 = v108;
    sub_1D1741C08(v48, v108, &qword_1EC644B30, &qword_1D1E77280);
    v50 = v49 + *(v47 + 48);
    sub_1D1B89120(v50, v107, type metadata accessor for StaticAccessory);
    if (qword_1EC642368 != -1)
    {
      swift_once();
    }

    v109 = off_1EC64B8D0;
    v51 = v101;
    v52 = v96;
    sub_1D1741C08(v50 + *(v101 + 88), v96, &qword_1EC642590, qword_1D1E71260);
    v53 = (*v89)(v52, 1, v41);
    v54 = v91;
    v102 = v50;
    if (v53 == 1)
    {
      sub_1D1741A30(v52, &qword_1EC642590, qword_1D1E71260);
      v55 = type metadata accessor for StaticService(0);
      v56 = v97;
      (*(*(v55 - 8) + 56))(v97, 1, 1, v55);
      goto LABEL_23;
    }

    (*v86)(v91, v52, v41);
    v57 = *(v50 + *(v51 + 80));
    if (*(v57 + 16))
    {
      v58 = *(v50 + *(v51 + 80));

      v59 = sub_1D1742188(v54);
      if (v60)
      {
        v61 = v59;
        v62 = *(v57 + 56);
        v63 = type metadata accessor for StaticService(0);
        v64 = *(v63 - 8);
        v65 = v62 + *(v64 + 72) * v61;
        v56 = v97;
        sub_1D1B89120(v65, v97, type metadata accessor for StaticService);
        (*v100)(v54, v41);

        (*(v64 + 56))(v56, 0, 1, v63);
        goto LABEL_22;
      }
    }

    (*v100)(v54, v41);
    v63 = type metadata accessor for StaticService(0);
    v56 = v97;
    (*(*(v63 - 8) + 56))(v97, 1, 1, v63);
LABEL_22:
    type metadata accessor for StaticService(0);
    if ((*(*(v63 - 8) + 48))(v56, 1, v63) != 1)
    {
      v66 = *(v56 + *(v63 + 104));
      sub_1D1B89188(v56, type metadata accessor for StaticService);
      goto LABEL_25;
    }

LABEL_23:
    sub_1D1741A30(v56, &qword_1EC6436F0, &qword_1D1E99BC0);
    v66 = 0;
LABEL_25:
    if (v109[2])
    {
      v67 = v109;
      v68 = v109[5];
      sub_1D1E6920C();
      v111 = v66;
      ServiceKind.rawValue.getter();
      sub_1D1E678EC();

      v69 = sub_1D1E6926C();
      v70 = v67 + 7;
      v71 = -1 << *(v67 + 32);
      v72 = v69 & ~v71;
      if ((*(v67 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v72))
      {
        v73 = ~v71;
        while (1)
        {
          v110 = *(v109[6] + v72);
          v111 = v66;
          v74 = ServiceKind.rawValue.getter();
          v76 = v75;
          if (v74 == ServiceKind.rawValue.getter() && v76 == v77)
          {
            break;
          }

          v79 = sub_1D1E6904C();

          if (v79)
          {
            goto LABEL_36;
          }

          v72 = (v72 + 1) & v73;
          if (((*(v70 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

LABEL_36:
        sub_1D1B89188(v107, type metadata accessor for StaticAccessory);
        v16 = v94;
        sub_1D1741A30(v94, &qword_1EC644B30, &qword_1D1E77280);
        sub_1D1B89188(v102, type metadata accessor for StaticAccessory);
        v80 = *v100;
        v81 = v105;
        (*v100)(v108, v105);
        sub_1D1B89188(v106, type metadata accessor for StaticAccessory);
        result = (v80)(v104, v81);
        v31 = v103;
        goto LABEL_37;
      }
    }

LABEL_5:
    v32 = *(v107 + *(v101 + 148));
    sub_1D1B89188(v107, type metadata accessor for StaticAccessory);
    v16 = v94;
    sub_1D1741A30(v94, &qword_1EC644B30, &qword_1D1E77280);
    sub_1D1B89188(v102, type metadata accessor for StaticAccessory);
    v33 = *v100;
    v34 = v105;
    (*v100)(v108, v105);
    sub_1D1B89188(v106, type metadata accessor for StaticAccessory);
    result = (v33)(v104, v34);
    v31 = v103;
    if (v32)
    {
LABEL_37:
      *(v87 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v98;
      if (__OFADD__(v88++, 1))
      {
        goto LABEL_42;
      }
    }
  }

  v36 = v27;
  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v84)
    {
      return sub_1D188CC38(v87, v83[0], v88, v99);
    }

    v37 = *(v85 + 8 * v27);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v103 = (v37 - 1) & v37;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D1B85374(unint64_t *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v62 = a2;
  v69 = a4;
  v63 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v61 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v8 = *(*(v77 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v77);
  v80 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v61 - v11;
  v12 = type metadata accessor for StaticAccessory(0);
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D1E66A7C();
  v15 = *(*(v76 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v76);
  v75 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 0;
  v19 = 0;
  v73 = a3;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v66 = v17 + 16;
  v67 = v17;
  v70 = (v17 + 8);
  v71 = v26;
  while (v25)
  {
    v27 = __clz(__rbit64(v25));
    v74 = (v25 - 1) & v25;
LABEL_11:
    v30 = v27 | (v19 << 6);
    v31 = v73;
    v32 = *(v67 + 16);
    v34 = v75;
    v33 = v76;
    v32(v75, v73[6] + *(v67 + 72) * v30, v76);
    v35 = v31[7];
    v36 = *(v68 + 72);
    v65 = v30;
    v37 = v78;
    sub_1D1B89120(v35 + v36 * v30, v78, type metadata accessor for StaticAccessory);
    v38 = v79;
    v32(v79, v34, v33);
    sub_1D1B89120(v37, v38 + *(v77 + 48), type metadata accessor for StaticAccessory);
    sub_1D1741C08(v38, v80, &qword_1EC644B30, &qword_1D1E77280);
    v39 = *v69;
    if (*(*v69 + 16) && (v40 = sub_1D1742188(v80), (v41 & 1) != 0))
    {
      v42 = v40;
      v43 = *(v39 + 56);
      v44 = type metadata accessor for StaticMatterDevice();
      v45 = *(v44 - 8);
      v46 = v43 + *(v45 + 72) * v42;
      v47 = v72;
      sub_1D1B89120(v46, v72, type metadata accessor for StaticMatterDevice);
      sub_1D1741A30(v79, &qword_1EC644B30, &qword_1D1E77280);
      (*(v45 + 56))(v47, 0, 1, v44);
      v48 = v80;
      v49 = *(v77 + 48);
      sub_1D1741A30(v47, &qword_1EC643650, &qword_1D1E71D40);
      sub_1D1B89188(v48 + v49, type metadata accessor for StaticAccessory);
      v50 = *v70;
      v51 = v48;
      v52 = v76;
      (*v70)(v51, v76);
      sub_1D1B89188(v78, type metadata accessor for StaticAccessory);
      result = (v50)(v75, v52);
      v26 = v71;
      v25 = v74;
    }

    else
    {
      sub_1D1741A30(v79, &qword_1EC644B30, &qword_1D1E77280);
      v53 = type metadata accessor for StaticMatterDevice();
      v54 = v72;
      (*(*(v53 - 8) + 56))(v72, 1, 1, v53);
      v55 = *(v77 + 48);
      sub_1D1741A30(v54, &qword_1EC643650, &qword_1D1E71D40);
      v56 = v80;
      sub_1D1B89188(v80 + v55, type metadata accessor for StaticAccessory);
      v57 = *v70;
      v58 = v56;
      v59 = v76;
      (*v70)(v58, v76);
      sub_1D1B89188(v78, type metadata accessor for StaticAccessory);
      result = (v57)(v75, v59);
      *(v63 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      v60 = __OFADD__(v64++, 1);
      v26 = v71;
      v25 = v74;
      if (v60)
      {
        __break(1u);
        return sub_1D188CC38(v63, v62, v64, v73);
      }
    }
  }

  v28 = v19;
  while (1)
  {
    v19 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v19 >= v26)
    {
      return sub_1D188CC38(v63, v62, v64, v73);
    }

    v29 = v21[v19];
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v74 = (v29 - 1) & v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B85974(unint64_t *a1, uint64_t a2, void *a3)
{
  v32 = a2;
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v4 = *(*(v37 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = (&v31 - v7);
  v8 = type metadata accessor for StaticMatterDevice();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0;
  v39 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v40 = v12;
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_11:
    v24 = v21 | (v13 << 6);
    v25 = *(v39[6] + 8 * v24);
    v26 = v33;
    sub_1D1B89120(v39[7] + *(v34 + 72) * v24, v33, type metadata accessor for StaticMatterDevice);
    v27 = v35;
    *v35 = v25;
    v28 = v37;
    sub_1D1B89120(v26, v27 + *(v37 + 48), type metadata accessor for StaticMatterDevice);
    v29 = v27;
    v30 = v36;
    sub_1D1741A90(v29, v36, &qword_1EC645428, &qword_1D1E96C40);
    sub_1D1B89188(v30 + *(v28 + 48), type metadata accessor for StaticMatterDevice);
    result = sub_1D1B89188(v26, type metadata accessor for StaticMatterDevice);
    *(v38 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v12 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return sub_1D188D804(v38, v32, v12, v39);
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_1D188D804(v38, v32, v12, v39);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v40 = v12;
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B85C30(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_1D1B85CD4(void *result, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D1B85374(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D1B85D5C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}